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
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C010
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C002
import Seq.B006.C000
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
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
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A033400: a(n) = floor(80/n).

The programs for A033400, the canonical program `A033400.P1374756453438959724` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033400 has offset 1).

The definition of A033400 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A033400.P1374756453438959724

`floor(80/(n+1))`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A033400

/-- `floor(80/(n+1))` -/
def P1374756453438959724.Spec : Prop :=
  ∀ n, P1374756453438959724.a n = A033400 (n + 1)

theorem P1374756453438959724.correct : P1374756453438959724.Spec := by
  intro n
  simp only [A033400, Nat.add_sub_cancel]

end A033400

/-!
# A033401: a(n) = floor(81/n).

The programs for A033401, the canonical program `A033401.P12785736277287193217` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033401 has offset 1).

The definition of A033401 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A033401.P12785736277287193217

`floor(81/(n+1))`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A033401

/-- `floor(81/(n+1))` -/
def P12785736277287193217.Spec : Prop :=
  ∀ n, P12785736277287193217.a n = A033401 (n + 1)

theorem P12785736277287193217.correct : P12785736277287193217.Spec := by
  intro n
  simp only [A033401, Nat.add_sub_cancel]

end A033401

/-!
# A033402: a(n) = floor(82/n).

The programs for A033402, the canonical program `A033402.P12072399048491452576` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033402 has offset 1).

The definition of A033402 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A033402.P12072399048491452576

`floor(82/(n+1))`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A033402

/-- `floor(82/(n+1))` -/
def P12072399048491452576.Spec : Prop :=
  ∀ n, P12072399048491452576.a n = A033402 (n + 1)

theorem P12072399048491452576.correct : P12072399048491452576.Spec := by
  intro n
  simp only [A033402, Nat.add_sub_cancel]

end A033402

/-!
# A033403: a(n) = floor(83/n).

The programs for A033403, the canonical program `A033403.P8474353633910649880` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033403 has offset 1).

The definition of A033403 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A033403.P8474353633910649880

`floor(83/(n+1))`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A033403

/-- `floor(83/(n+1))` -/
def P8474353633910649880.Spec : Prop :=
  ∀ n, P8474353633910649880.a n = A033403 (n + 1)

theorem P8474353633910649880.correct : P8474353633910649880.Spec := by
  intro n
  simp only [A033403, Nat.add_sub_cancel]

end A033403

/-!
# A033404: a(n) = floor(84/n).

The programs for A033404, the canonical program `A033404.P11315608977751410637` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033404 has offset 1).

The definition of A033404 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A033404.P11315608977751410637

`floor(84/(n+1))`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A033404

/-- `floor(84/(n+1))` -/
def P11315608977751410637.Spec : Prop :=
  ∀ n, P11315608977751410637.a n = A033404 (n + 1)

theorem P11315608977751410637.correct : P11315608977751410637.Spec := by
  intro n
  simp only [A033404, Nat.add_sub_cancel]

end A033404

/-!
# A033405: a(n) = floor(85/n).

The programs for A033405, the canonical program `A033405.P7286800455569152319` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033405 has offset 1).

The definition of A033405 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A033405.P7286800455569152319

`floor(85/(n+1))`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A033405

/-- `floor(85/(n+1))` -/
def P7286800455569152319.Spec : Prop :=
  ∀ n, P7286800455569152319.a n = A033405 (n + 1)

theorem P7286800455569152319.correct : P7286800455569152319.Spec := by
  intro n
  simp only [A033405, Nat.add_sub_cancel]

end A033405

/-!
# A033406: a(n) = floor(86/n).

The programs for A033406, the canonical program `A033406.P2991139025342697146` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033406 has offset 1).

The definition of A033406 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A033406.P2991139025342697146

`floor(86/(n+1))`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A033406

/-- `floor(86/(n+1))` -/
def P2991139025342697146.Spec : Prop :=
  ∀ n, P2991139025342697146.a n = A033406 (n + 1)

theorem P2991139025342697146.correct : P2991139025342697146.Spec := by
  intro n
  simp only [A033406, Nat.add_sub_cancel]

end A033406

/-!
# A033407: a(n) = floor(87/n).

The programs for A033407, the canonical program `A033407.P9346855552353291192` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033407 has offset 1).

The definition of A033407 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A033407.P9346855552353291192

`floor(87/(n+1))`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A033407

/-- `floor(87/(n+1))` -/
def P9346855552353291192.Spec : Prop :=
  ∀ n, P9346855552353291192.a n = A033407 (n + 1)

theorem P9346855552353291192.correct : P9346855552353291192.Spec := by
  intro n
  simp only [A033407, Nat.add_sub_cancel]

end A033407

/-!
# A033408: a(n) = floor(88/n).

The programs for A033408, the canonical program `A033408.P5169971108226613416` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033408 has offset 1).

The definition of A033408 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A033408.P5169971108226613416

`floor(88/(n+1))`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A033408

/-- `floor(88/(n+1))` -/
def P5169971108226613416.Spec : Prop :=
  ∀ n, P5169971108226613416.a n = A033408 (n + 1)

theorem P5169971108226613416.correct : P5169971108226613416.Spec := by
  intro n
  simp only [A033408, Nat.add_sub_cancel]

end A033408

/-!
# A033409: a(n) = floor(89/n).

The programs for A033409, the canonical program `A033409.P13085784333668503575` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033409 has offset 1).

The definition of A033409 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A033409.P13085784333668503575

`floor(89/(n+1))`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A033409

/-- `floor(89/(n+1))` -/
def P13085784333668503575.Spec : Prop :=
  ∀ n, P13085784333668503575.a n = A033409 (n + 1)

theorem P13085784333668503575.correct : P13085784333668503575.Spec := by
  intro n
  simp only [A033409, Nat.add_sub_cancel]

end A033409

/-!
# A033410: a(n) = floor(90/n).

The programs for A033410, the canonical program `A033410.P12869823087076602420` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033410 has offset 1).

The definition of A033410 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A033410.P12869823087076602420

`floor(90/(n+1))`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A033410

/-- `floor(90/(n+1))` -/
def P12869823087076602420.Spec : Prop :=
  ∀ n, P12869823087076602420.a n = A033410 (n + 1)

theorem P12869823087076602420.correct : P12869823087076602420.Spec := by
  intro n
  simp only [A033410, Nat.add_sub_cancel]

end A033410

/-!
# A033411: a(n) = floor(91/n).

The programs for A033411, the canonical program `A033411.P15781716300828723086` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033411 has offset 1).

The definition of A033411 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A033411.P15781716300828723086

`floor(91/(n+1))`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A033411

/-- `floor(91/(n+1))` -/
def P15781716300828723086.Spec : Prop :=
  ∀ n, P15781716300828723086.a n = A033411 (n + 1)

theorem P15781716300828723086.correct : P15781716300828723086.Spec := by
  intro n
  simp only [A033411, Nat.add_sub_cancel]

end A033411

/-!
# A033412: a(n) = floor(92/n).

The programs for A033412, the canonical program `A033412.P8274681524289622672` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033412 has offset 1).

The definition of A033412 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A033412.P8274681524289622672

`floor(92/(n+1))`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A033412

/-- `floor(92/(n+1))` -/
def P8274681524289622672.Spec : Prop :=
  ∀ n, P8274681524289622672.a n = A033412 (n + 1)

theorem P8274681524289622672.correct : P8274681524289622672.Spec := by
  intro n
  simp only [A033412, Nat.add_sub_cancel]

end A033412

/-!
# A033413: a(n) = floor(93/n).

The programs for A033413, the canonical program `A033413.P14917426118285071357` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033413 has offset 1).

The definition of A033413 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A033413.P14917426118285071357

`floor(93/(n+1))`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A033413

/-- `floor(93/(n+1))` -/
def P14917426118285071357.Spec : Prop :=
  ∀ n, P14917426118285071357.a n = A033413 (n + 1)

theorem P14917426118285071357.correct : P14917426118285071357.Spec := by
  intro n
  simp only [A033413, Nat.add_sub_cancel]

end A033413

/-!
# A033414: a(n) = floor(94/n).

The programs for A033414, the canonical program `A033414.P7893045457314910663` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033414 has offset 1).

The definition of A033414 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A033414.P7893045457314910663

`floor(94/(n+1))`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A033414

/-- `floor(94/(n+1))` -/
def P7893045457314910663.Spec : Prop :=
  ∀ n, P7893045457314910663.a n = A033414 (n + 1)

theorem P7893045457314910663.correct : P7893045457314910663.Spec := by
  intro n
  simp only [A033414, Nat.add_sub_cancel]

end A033414

/-!
# A033415: a(n) = floor(95/n).

The programs for A033415, the canonical program `A033415.P15969612658415409331` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033415 has offset 1).

The definition of A033415 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A033415.P15969612658415409331

`floor(95/(n+1))`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A033415

/-- `floor(95/(n+1))` -/
def P15969612658415409331.Spec : Prop :=
  ∀ n, P15969612658415409331.a n = A033415 (n + 1)

theorem P15969612658415409331.correct : P15969612658415409331.Spec := by
  intro n
  simp only [A033415, Nat.add_sub_cancel]

end A033415

/-!
# A033416: a(n) = floor(96/n).

The programs for A033416, the canonical program `A033416.P16813400956638980933` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033416 has offset 1).

The definition of A033416 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A033416.P16813400956638980933

`floor(96/(n+1))`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A033416

/-- `floor(96/(n+1))` -/
def P16813400956638980933.Spec : Prop :=
  ∀ n, P16813400956638980933.a n = A033416 (n + 1)

theorem P16813400956638980933.correct : P16813400956638980933.Spec := by
  intro n
  simp only [A033416, Nat.add_sub_cancel]

end A033416

/-!
# A033417: a(n) = floor(97/n).

The programs for A033417, the canonical program `A033417.P4257166697694358217` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033417 has offset 1).

The definition of A033417 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A033417.P4257166697694358217

`floor(97/(n+1))`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A033417

/-- `floor(97/(n+1))` -/
def P4257166697694358217.Spec : Prop :=
  ∀ n, P4257166697694358217.a n = A033417 (n + 1)

theorem P4257166697694358217.correct : P4257166697694358217.Spec := by
  intro n
  simp only [A033417, Nat.add_sub_cancel]

end A033417

/-!
# A033418: a(n) = floor(98/n).

The programs for A033418, the canonical program `A033418.P7473609855666910781` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033418 has offset 1).

The definition of A033418 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A033418.P7473609855666910781

`floor(98/(n+1))`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A033418

/-- `floor(98/(n+1))` -/
def P7473609855666910781.Spec : Prop :=
  ∀ n, P7473609855666910781.a n = A033418 (n + 1)

theorem P7473609855666910781.correct : P7473609855666910781.Spec := by
  intro n
  simp only [A033418, Nat.add_sub_cancel]

end A033418

/-!
# A033419: a(n) = floor(99/n).

The programs for A033419, the canonical program `A033419.P8954691230903850015` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033419 has offset 1).

The definition of A033419 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A033419.P8954691230903850015

`floor(99/(n+1))`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A033419

/-- `floor(99/(n+1))` -/
def P8954691230903850015.Spec : Prop :=
  ∀ n, P8954691230903850015.a n = A033419 (n + 1)

theorem P8954691230903850015.correct : P8954691230903850015.Spec := by
  intro n
  simp only [A033419, Nat.add_sub_cancel]

end A033419

/-!
# A033420: a(n) = floor(100/n).

The programs for A033420, the canonical program `A033420.P12921464162048996599` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033420 has offset 1).

The definition of A033420 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A033420.P12921464162048996599

`floor(10*10/(n+1))`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A033420

/-- `floor(10*10/(n+1))` -/
def P12921464162048996599.Spec : Prop :=
  ∀ n, P12921464162048996599.a n = A033420 (n + 1)

theorem P12921464162048996599.correct : P12921464162048996599.Spec := by
  intro n
  simp only [A033420, Nat.add_sub_cancel]

end A033420

/-!
# A033421: a(n) = floor(1000/n).

The programs for A033421, the canonical program `A033421.P9884256580243270089` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033421 has offset 1).

The definition of A033421 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A033421.P9884256580243270089

`floor(1000/(n+1))`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A033421

/-- `floor(1000/(n+1))` -/
def P9884256580243270089.Spec : Prop :=
  ∀ n, P9884256580243270089.a n = A033421 (n + 1)

theorem P9884256580243270089.correct : P9884256580243270089.Spec := by
  intro n
  simp only [A033421, Nat.add_sub_cancel]

end A033421

/-!
# A033422: a(n) = floor(10000/n).

The programs for A033422, the canonical program `A033422.P2227709605450584536` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033422 has offset 1).

The definition of A033422 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A033422.P2227709605450584536

`floor(root(10, 1/4)/(n+1))`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A033422

/-- `floor(root(10, 1/4)/(n+1))` -/
def P2227709605450584536.Spec : Prop :=
  ∀ n, P2227709605450584536.a n = A033422 (n + 1)

theorem P2227709605450584536.correct : P2227709605450584536.Spec := by
  intro n
  simp only [A033422, Nat.add_sub_cancel]

end A033422

/-! ## A033422.P1823603507084262736

`A033427(5*2*(n+1))`
-/

namespace A033422.P1823603507084262736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033427 (5 * (2 * (n + 1)))

end

end A033422.P1823603507084262736

namespace A033422

/-- `A033427(5*2*(n+1))` -/
def P1823603507084262736.Spec : Prop :=
  ∀ n, P1823603507084262736.a n = A033422 (n + 1)

end A033422

/-! ## A033422.P3634195660889054317

`A033433((n+1)²)`
-/

namespace A033422.P3634195660889054317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033433 ((n + 1) ^ 2)

end

end A033422.P3634195660889054317

namespace A033422

/-- `A033433((n+1)²)` -/
def P3634195660889054317.Spec : Prop :=
  ∀ n, P3634195660889054317.a n = A033422 (n + 1)

end A033422

/-! ## A033422.P16632755182186311241

`A033426(20*5*(n+1))`
-/

namespace A033422.P16632755182186311241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033426 (20 * (5 * (n + 1)))

end

end A033422.P16632755182186311241

namespace A033422

/-- `A033426(20*5*(n+1))` -/
def P16632755182186311241.Spec : Prop :=
  ∀ n, P16632755182186311241.a n = A033422 (n + 1)

end A033422

/-! ## A033422.P12237087931494640166

`xor(1, xor(1, A033433(∑[2*n+1])))`
-/

namespace A033422.P12237087931494640166
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (Int.xor 1 (A033433 (∑ j ∈ Finset.range (n + 1), f1 j)))

end

end A033422.P12237087931494640166

namespace A033422

/-- `xor(1, xor(1, A033433(∑[2*n+1])))` -/
def P12237087931494640166.Spec : Prop :=
  ∀ n, P12237087931494640166.a n = A033422 (n + 1)

end A033422

/-! ## A033422.P15238228730190968146

`A000027(A033433(∑[2*n+1]))`
-/

namespace A033422.P15238228730190968146
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A033433 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A033422.P15238228730190968146

namespace A033422

/-- `A000027(A033433(∑[2*n+1]))` -/
def P15238228730190968146.Spec : Prop :=
  ∀ n, P15238228730190968146.a n = A033422 (n + 1)

end A033422

/-! ## A033422.P4964357749693983728

`A000034(12*n)*A033433(∑[2*n+1])`
-/

namespace A033422.P4964357749693983728
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (12 * n) * A033433 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A033422.P4964357749693983728

namespace A033422

/-- `A000034(12*n)*A033433(∑[2*n+1])` -/
def P4964357749693983728.Spec : Prop :=
  ∀ n, P4964357749693983728.a n = A033422 (n + 1)

end A033422

/-! ## A033422.P16214336536178592047

`A001511(2*n+1)*A033433(∑[2*n+1])`
-/

namespace A033422.P16214336536178592047
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (2 * n + 1) * A033433 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A033422.P16214336536178592047

namespace A033422

/-- `A001511(2*n+1)*A033433(∑[2*n+1])` -/
def P16214336536178592047.Spec : Prop :=
  ∀ n, P16214336536178592047.a n = A033422 (n + 1)

end A033422

/-!
# A033423: a(n) = floor(10^9/n).

The programs for A033423, the canonical program `A033423.P16005701686632830815` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033423 has offset 1).

The definition of A033423 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A033423.P16005701686632830815

`floor(root(10, 1/9)/(n+1))`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A033423

/-- `floor(root(10, 1/9)/(n+1))` -/
def P16005701686632830815.Spec : Prop :=
  ∀ n, P16005701686632830815.a n = A033423 (n + 1)

theorem P16005701686632830815.correct : P16005701686632830815.Spec := by
  intro n
  simp only [A033423, Nat.add_sub_cancel]

end A033423

/-! ## A033423.P2580905538540226839

`A057072(10*(n+1))`
-/

namespace A033423.P2580905538540226839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057072 (10 * (n + 1))

end

end A033423.P2580905538540226839

namespace A033423

/-- `A057072(10*(n+1))` -/
def P2580905538540226839.Spec : Prop :=
  ∀ n, P2580905538540226839.a n = A033423 (n + 1)

end A033423

/-!
# A033424: a(n) = floor(10^8/n).

The programs for A033424, the canonical program `A033424.P5499363210445852872` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033424 has offset 1).

The definition of A033424 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A033424.P5499363210445852872

`floor(root(10, 1/8)/(n+1))`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A033424

/-- `floor(root(10, 1/8)/(n+1))` -/
def P5499363210445852872.Spec : Prop :=
  ∀ n, P5499363210445852872.a n = A033424 (n + 1)

theorem P5499363210445852872.correct : P5499363210445852872.Spec := by
  intro n
  simp only [A033424, Nat.add_sub_cancel]

end A033424

/-! ## A033424.P13597587164777852080

`∏{e}[A000040(n+1), floor(A033829(#)²/(n+1))]`
-/

namespace A033424.P13597587164777852080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, ⌊(A033829 (Nat.factorization (f1 n).natAbs p) ^ 2 : ℚ) / (n + 1 : ℚ)⌋

end

end A033424.P13597587164777852080

namespace A033424

/-- `∏{e}[A000040(n+1), floor(A033829(#)²/(n+1))]` -/
def P13597587164777852080.Spec : Prop :=
  ∀ n, P13597587164777852080.a n = A033424 (n + 1)

end A033424

/-! ## A033424.P7258473619329445999

`A033423(5*2*(n+1))`
-/

namespace A033424.P7258473619329445999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033423 (5 * (2 * (n + 1)))

end

end A033424.P7258473619329445999

namespace A033424

/-- `A033423(5*2*(n+1))` -/
def P7258473619329445999.Spec : Prop :=
  ∀ n, P7258473619329445999.a n = A033424 (n + 1)

end A033424

/-! ## A033424.P4424988500664202543

`A057072(xor(1, 10*10*(n+1)+1))`
-/

namespace A033424.P4424988500664202543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057072 (Nat.xor 1 (10 * (10 * (n + 1)) + 1))

end

end A033424.P4424988500664202543

namespace A033424

/-- `A057072(xor(1, 10*10*(n+1)+1))` -/
def P4424988500664202543.Spec : Prop :=
  ∀ n, P4424988500664202543.a n = A033424 (n + 1)

end A033424

/-! ## A033424.P17641850138403939243

`A057072(A044332(n+1))`
-/

namespace A033424.P17641850138403939243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057072 (A044332 (n + 1)).toNat

end

end A033424.P17641850138403939243

namespace A033424

/-- `A057072(A044332(n+1))` -/
def P17641850138403939243.Spec : Prop :=
  ∀ n, P17641850138403939243.a n = A033424 (n + 1)

end A033424

/-! ## A033424.P11286676853064710524

`A057072(A102439(n)+96)`
-/

namespace A033424.P11286676853064710524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057072 (A102439 n + 96).toNat

end

end A033424.P11286676853064710524

namespace A033424

/-- `A057072(A102439(n)+96)` -/
def P11286676853064710524.Spec : Prop :=
  ∀ n, P11286676853064710524.a n = A033424 (n + 1)

end A033424

/-!
# A033425: a(n) = floor(10^7/n).

The programs for A033425, the canonical program `A033425.P1851077437487757364` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033425 has offset 1).

The definition of A033425 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A033425.P1851077437487757364

`floor(root(10, 1/7)/(n+1))`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A033425

/-- `floor(root(10, 1/7)/(n+1))` -/
def P1851077437487757364.Spec : Prop :=
  ∀ n, P1851077437487757364.a n = A033425 (n + 1)

theorem P1851077437487757364.correct : P1851077437487757364.Spec := by
  intro n
  simp only [A033425, Nat.add_sub_cancel]

end A033425

/-! ## A033425.P1762343955188556025

`A033424(10*(n+1))`
-/

namespace A033425.P1762343955188556025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033424 (10 * (n + 1))

end

end A033425.P1762343955188556025

namespace A033425

/-- `A033424(10*(n+1))` -/
def P1762343955188556025.Spec : Prop :=
  ∀ n, P1762343955188556025.a n = A033425 (n + 1)

end A033425

/-! ## A033425.P11463980750899292887

`A033423(xor(1, 10*10*(n+1)+1))`
-/

namespace A033425.P11463980750899292887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033423 (Nat.xor 1 (10 * (10 * (n + 1)) + 1))

end

end A033425.P11463980750899292887

namespace A033425

/-- `A033423(xor(1, 10*10*(n+1)+1))` -/
def P11463980750899292887.Spec : Prop :=
  ∀ n, P11463980750899292887.a n = A033425 (n + 1)

end A033425

/-! ## A033425.P10866399505939660860

`A033423(and(10*10*(n+1)+1, -2))`
-/

namespace A033425.P10866399505939660860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033423 (Int.land (10 * (10 * (n + 1)) + 1 : ℤ) (-2)).toNat

end

end A033425.P10866399505939660860

namespace A033425

/-- `A033423(and(10*10*(n+1)+1, -2))` -/
def P10866399505939660860.Spec : Prop :=
  ∀ n, P10866399505939660860.a n = A033425 (n + 1)

end A033425

/-! ## A033425.P9419080157757411804

`A033423(A044332(n+1))`
-/

namespace A033425.P9419080157757411804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033423 (A044332 (n + 1)).toNat

end

end A033425.P9419080157757411804

namespace A033425

/-- `A033423(A044332(n+1))` -/
def P9419080157757411804.Spec : Prop :=
  ∀ n, P9419080157757411804.a n = A033425 (n + 1)

end A033425

/-! ## A033425.P11342908932631674760

`A033423(A102439(n)+96)`
-/

namespace A033425.P11342908932631674760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033423 (A102439 n + 96).toNat

end

end A033425.P11342908932631674760

namespace A033425

/-- `A033423(A102439(n)+96)` -/
def P11342908932631674760.Spec : Prop :=
  ∀ n, P11342908932631674760.a n = A033425 (n + 1)

end A033425

/-! ## A033425.P9101347772346018848

`A033423(A158128(n+1)-1)`
-/

namespace A033425.P9101347772346018848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033423 (A158128 (n + 1) - 1).toNat

end

end A033425.P9101347772346018848

namespace A033425

/-- `A033423(A158128(n+1)-1)` -/
def P9101347772346018848.Spec : Prop :=
  ∀ n, P9101347772346018848.a n = A033425 (n + 1)

end A033425

/-! ## A033425.P1875640465769355341

`A033423(5*A005843(10*(n+1)))`
-/

namespace A033425.P1875640465769355341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033423 (5 * A005843 (10 * (n + 1))).toNat

end

end A033425.P1875640465769355341

namespace A033425

/-- `A033423(5*A005843(10*(n+1)))` -/
def P1875640465769355341.Spec : Prop :=
  ∀ n, P1875640465769355341.a n = A033425 (n + 1)

end A033425

/-!
# A033426: a(n) = floor(10^6/n).

The programs for A033426, the canonical program `A033426.P16968836947933501912` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033426 has offset 1).

The definition of A033426 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A033426.P16968836947933501912

`floor(root(10, 1/6)/(n+1))`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A033426

/-- `floor(root(10, 1/6)/(n+1))` -/
def P16968836947933501912.Spec : Prop :=
  ∀ n, P16968836947933501912.a n = A033426 (n + 1)

theorem P16968836947933501912.correct : P16968836947933501912.Spec := by
  intro n
  simp only [A033426, Nat.add_sub_cancel]

end A033426

/-! ## A033426.P4753339380251278047

`A033425(10*(n+1))`
-/

namespace A033426.P4753339380251278047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033425 (10 * (n + 1))

end

end A033426.P4753339380251278047

namespace A033426

/-- `A033425(10*(n+1))` -/
def P4753339380251278047.Spec : Prop :=
  ∀ n, P4753339380251278047.a n = A033426 (n + 1)

end A033426

/-! ## A033426.P1376552920314818776

`A033424(xor(1, 10*10*(n+1)+1))`
-/

namespace A033426.P1376552920314818776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033424 (Nat.xor 1 (10 * (10 * (n + 1)) + 1))

end

end A033426.P1376552920314818776

namespace A033426

/-- `A033424(xor(1, 10*10*(n+1)+1))` -/
def P1376552920314818776.Spec : Prop :=
  ∀ n, P1376552920314818776.a n = A033426 (n + 1)

end A033426

/-! ## A033426.P8568299050034081893

`A033424(and(10*10*(n+1)+1, -2))`
-/

namespace A033426.P8568299050034081893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033424 (Int.land (10 * (10 * (n + 1)) + 1 : ℤ) (-2)).toNat

end

end A033426.P8568299050034081893

namespace A033426

/-- `A033424(and(10*10*(n+1)+1, -2))` -/
def P8568299050034081893.Spec : Prop :=
  ∀ n, P8568299050034081893.a n = A033426 (n + 1)

end A033426

/-! ## A033426.P17310916189493281260

`A033424(A044332(n+1))`
-/

namespace A033426.P17310916189493281260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033424 (A044332 (n + 1)).toNat

end

end A033426.P17310916189493281260

namespace A033426

/-- `A033424(A044332(n+1))` -/
def P17310916189493281260.Spec : Prop :=
  ∀ n, P17310916189493281260.a n = A033426 (n + 1)

end A033426

/-! ## A033426.P13789454261243665869

`A033424(A102439(n)+96)`
-/

namespace A033426.P13789454261243665869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033424 (A102439 n + 96).toNat

end

end A033426.P13789454261243665869

namespace A033426

/-- `A033424(A102439(n)+96)` -/
def P13789454261243665869.Spec : Prop :=
  ∀ n, P13789454261243665869.a n = A033426 (n + 1)

end A033426

/-! ## A033426.P12607190160652535161

`A033424(A158128(n+1)-1)`
-/

namespace A033426.P12607190160652535161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033424 (A158128 (n + 1) - 1).toNat

end

end A033426.P12607190160652535161

namespace A033426

/-- `A033424(A158128(n+1)-1)` -/
def P12607190160652535161.Spec : Prop :=
  ∀ n, P12607190160652535161.a n = A033426 (n + 1)

end A033426

/-! ## A033426.P4603785337209487463

`A033424(5*A005843(10*(n+1)))`
-/

namespace A033426.P4603785337209487463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033424 (5 * A005843 (10 * (n + 1))).toNat

end

end A033426.P4603785337209487463

namespace A033426

/-- `A033424(5*A005843(10*(n+1)))` -/
def P4603785337209487463.Spec : Prop :=
  ∀ n, P4603785337209487463.a n = A033426 (n + 1)

end A033426

/-!
# A033427: a(n) = floor(10^5/n).

The programs for A033427, the canonical program `A033427.P3448884608879783294` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033427 has offset 1).

The definition of A033427 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A033427.P10380921733957404426

`floor(root(10, 1/5)/(n+1))`
-/

namespace A033427.P10380921733957404426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(10 : ℝ) ^ (1 / ((1 : ℚ) / 5 : ℝ)) / (n + 1 : ℝ)⌋

end

end A033427.P10380921733957404426

namespace A033427

/-- `floor(root(10, 1/5)/(n+1))` -/
def P10380921733957404426.Spec : Prop :=
  ∀ n, P10380921733957404426.a n = A033427 (n + 1)

end A033427

/-! ## A033427.P3448884608879783294

`round((floor(A033426(n+1)/2)-2)/5)`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A033427

/-- `round((floor(A033426(n+1)/2)-2)/5)` -/
def P3448884608879783294.Spec : Prop :=
  ∀ n, P3448884608879783294.a n = A033427 (n + 1)

theorem P3448884608879783294.correct : P3448884608879783294.Spec := by
  intro n
  simp only [A033427, Nat.add_sub_cancel]

end A033427

/-! ## A033427.P5094831800257891246

`A033426(5*2*(n+1))`
-/

namespace A033427.P5094831800257891246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033426 (5 * (2 * (n + 1)))

end

end A033427.P5094831800257891246

namespace A033427

/-- `A033426(5*2*(n+1))` -/
def P5094831800257891246.Spec : Prop :=
  ∀ n, P5094831800257891246.a n = A033427 (n + 1)

end A033427

/-! ## A033427.P17228607164547017884

`A033425(xor(1, 10*10*(n+1)+1))`
-/

namespace A033427.P17228607164547017884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033425 (Nat.xor 1 (10 * (10 * (n + 1)) + 1))

end

end A033427.P17228607164547017884

namespace A033427

/-- `A033425(xor(1, 10*10*(n+1)+1))` -/
def P17228607164547017884.Spec : Prop :=
  ∀ n, P17228607164547017884.a n = A033427 (n + 1)

end A033427

/-! ## A033427.P17613432756509618156

`A033425(A044332(n+1))`
-/

namespace A033427.P17613432756509618156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033425 (A044332 (n + 1)).toNat

end

end A033427.P17613432756509618156

namespace A033427

/-- `A033425(A044332(n+1))` -/
def P17613432756509618156.Spec : Prop :=
  ∀ n, P17613432756509618156.a n = A033427 (n + 1)

end A033427

/-! ## A033427.P14371932998864248755

`A033425(A102439(n)+96)`
-/

namespace A033427.P14371932998864248755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033425 (A102439 n + 96).toNat

end

end A033427.P14371932998864248755

namespace A033427

/-- `A033425(A102439(n)+96)` -/
def P14371932998864248755.Spec : Prop :=
  ∀ n, P14371932998864248755.a n = A033427 (n + 1)

end A033427

/-! ## A033427.P7676885598938741262

`A033425(A158128(n+1)-1)`
-/

namespace A033427.P7676885598938741262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033425 (A158128 (n + 1) - 1).toNat

end

end A033427.P7676885598938741262

namespace A033427

/-- `A033425(A158128(n+1)-1)` -/
def P7676885598938741262.Spec : Prop :=
  ∀ n, P7676885598938741262.a n = A033427 (n + 1)

end A033427

/-! ## A033427.P10029542695731356912

`A033425(5*A005843(10*(n+1)))`
-/

namespace A033427.P10029542695731356912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033425 (5 * A005843 (10 * (n + 1))).toNat

end

end A033427.P10029542695731356912

namespace A033427

/-- `A033425(5*A005843(10*(n+1)))` -/
def P10029542695731356912.Spec : Prop :=
  ∀ n, P10029542695731356912.a n = A033427 (n + 1)

end A033427

/-!
# A033428: a(n) = 3*n^2.

The programs for A033428, the canonical program `A033428.P10473664201403486648` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033428 has offset 0).

The definition of A033428 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*n²` (program `A033428.P10473664201403486648`, by `A033428.P10473664201403486648.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A033428.P10473664201403486648

`3*n²`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A033428

/-- `3*n²` -/
def P10473664201403486648.Spec : Prop :=
  ∀ n, (P10473664201403486648.a n : ℤ) = A033428 n

theorem P10473664201403486648.correct : P10473664201403486648.Spec := by
  intro n
  simp only [A033428]

end A033428

/-!
# A033429: a(n) = 5*n^2.

The programs for A033429, the canonical program `A033429.P6959806467874002675` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033429 has offset 0).

The definition of A033429 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `5*n²` (program `A033429.P6959806467874002675`, by `A033429.P6959806467874002675.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A033429.P6959806467874002675

`5*n²`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A033429

/-- `5*n²` -/
def P6959806467874002675.Spec : Prop :=
  ∀ n, (P6959806467874002675.a n : ℤ) = A033429 n

theorem P6959806467874002675.correct : P6959806467874002675.Spec := by
  intro n
  simp only [A033429]

end A033429

/-!
# A033430: a(n) = 4*n^3.

The programs for A033430, the canonical program `A033430.P5214425656551841819` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033430 has offset 0).

The definition of A033430 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*n^3` (program `A033430.P5214425656551841819`, by `A033430.P5214425656551841819.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A033430.P5214425656551841819

`4*n^3`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A033430

/-- `4*n^3` -/
def P5214425656551841819.Spec : Prop :=
  ∀ n, (P5214425656551841819.a n : ℤ) = A033430 n

theorem P5214425656551841819.correct : P5214425656551841819.Spec := by
  intro n
  simp only [A033430]

end A033430

/-!
# A033431: a(n) = 2*n^3.

The programs for A033431, the canonical program `A033431.P14261726496554658204` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033431 has offset 0).

The definition of A033431 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*n^3` (program `A033431.P14261726496554658204`, by `A033431.P14261726496554658204.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A033431.P14261726496554658204

`2*n^3`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A033431

/-- `2*n^3` -/
def P14261726496554658204.Spec : Prop :=
  ∀ n, (P14261726496554658204.a n : ℤ) = A033431 n

theorem P14261726496554658204.correct : P14261726496554658204.Spec := by
  intro n
  simp only [A033431]

end A033431

/-!
# A033432: a(n) = floor(1000/sqrt(n)).

The programs for A033432, the canonical program `A033432.P9229856978527233770` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033432 has offset 1).

The definition of A033432 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A033432.P3396163187011891970

`floor(sqrt(floor(root(10, 1/6)/(n+1))))`
-/

namespace A033432.P3396163187011891970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt ⌊(10 : ℝ) ^ (1 / ((1 : ℚ) / 6 : ℝ)) / (n + 1 : ℝ)⌋

end

end A033432.P3396163187011891970

namespace A033432

/-- `floor(sqrt(floor(root(10, 1/6)/(n+1))))` -/
def P3396163187011891970.Spec : Prop :=
  ∀ n, P3396163187011891970.a n = A033432 (n + 1)

end A033432

/-! ## A033432.P9229856978527233770

`A000027(floor(sqrt(A033426(n+1))))`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A033432

/-- `A000027(floor(sqrt(A033426(n+1))))` -/
def P9229856978527233770.Spec : Prop :=
  ∀ n, P9229856978527233770.a n = A033432 (n + 1)

theorem P9229856978527233770.correct : P9229856978527233770.Spec := by
  intro n
  simp only [A033432, Nat.add_sub_cancel]

end A033432

/-! ## A033432.P16825412355728317898

`A028310(floor(sqrt(A033426(n+1))))`
-/

namespace A033432.P16825412355728317898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (Int.sqrt (A033426 (n + 1))).toNat

end

end A033432.P16825412355728317898

namespace A033432

/-- `A028310(floor(sqrt(A033426(n+1))))` -/
def P16825412355728317898.Spec : Prop :=
  ∀ n, P16825412355728317898.a n = A033432 (n + 1)

end A033432

/-! ## A033432.P825233881266368738

`A000038(n+1)+floor(sqrt(A033426(n+1)))`
-/

namespace A033432.P825233881266368738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (n + 1) + Int.sqrt (A033426 (n + 1))

end

end A033432.P825233881266368738

namespace A033432

/-- `A000038(n+1)+floor(sqrt(A033426(n+1)))` -/
def P825233881266368738.Spec : Prop :=
  ∀ n, P825233881266368738.a n = A033432 (n + 1)

end A033432

/-! ## A033432.P17504350131603801566

`floor(sqrt(A033426(n+1)))%A069281(n+1)`
-/

namespace A033432.P17504350131603801566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.sqrt (A033426 (n + 1))) (A069281 (n + 1))

end

end A033432.P17504350131603801566

namespace A033432

/-- `floor(sqrt(A033426(n+1)))%A069281(n+1)` -/
def P17504350131603801566.Spec : Prop :=
  ∀ n, P17504350131603801566.a n = A033432 (n + 1)

end A033432

/-! ## A033432.P12187667363953467381

`(A001221(n+2)%2)!*floor(sqrt(A033426(n+1)))`
-/

namespace A033432.P12187667363953467381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (Int.tmod (A001221 (n + 2)) 2).toNat : ℤ) * Int.sqrt (A033426 (n + 1))

end

end A033432.P12187667363953467381

namespace A033432

/-- `(A001221(n+2)%2)!*floor(sqrt(A033426(n+1)))` -/
def P12187667363953467381.Spec : Prop :=
  ∀ n, P12187667363953467381.a n = A033432 (n + 1)

end A033432

/-! ## A033432.P12630994835774745869

`A000007(n+1)+floor(sqrt(A033426(n+1)))`
-/

namespace A033432.P12630994835774745869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) + Int.sqrt (A033426 (n + 1))

end

end A033432.P12630994835774745869

namespace A033432

/-- `A000007(n+1)+floor(sqrt(A033426(n+1)))` -/
def P12630994835774745869.Spec : Prop :=
  ∀ n, P12630994835774745869.a n = A033432 (n + 1)

end A033432

/-! ## A033432.P11585859856579784924

`A010673(2*n)+floor(sqrt(A033426(n+1)))`
-/

namespace A033432.P11585859856579784924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010673 (2 * n) + Int.sqrt (A033426 (n + 1))

end

end A033432.P11585859856579784924

namespace A033432

/-- `A010673(2*n)+floor(sqrt(A033426(n+1)))` -/
def P11585859856579784924.Spec : Prop :=
  ∀ n, P11585859856579784924.a n = A033432 (n + 1)

end A033432

/-! ## A033432.P685422212886935210

`A033433(50*2*(n+1))`
-/

namespace A033432.P685422212886935210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033433 (50 * (2 * (n + 1)))

end

end A033432.P685422212886935210

namespace A033432

/-- `A033433(50*2*(n+1))` -/
def P685422212886935210.Spec : Prop :=
  ∀ n, P685422212886935210.a n = A033432 (n + 1)

end A033432

/-! ## A033432.P1984566183392593145

`A033426(A027662(n+1))`
-/

namespace A033432.P1984566183392593145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033426 (A027662 (n + 1)).toNat

end

end A033432.P1984566183392593145

namespace A033432

/-- `A033426(A027662(n+1))` -/
def P1984566183392593145.Spec : Prop :=
  ∀ n, P1984566183392593145.a n = A033432 (n + 1)

end A033432

/-!
# A033433: a(n) = floor(10000/sqrt(n)).

The programs for A033433, the canonical program `A033433.P13586556351946608921` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033433 has offset 1).

The definition of A033433 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A033433.P12640579201796165105

`floor((20/2)²²/sqrt(n+1))`
-/

namespace A033433.P12640579201796165105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((((20 : ℚ) / 2) ^ 2) ^ 2 : ℝ) / Real.sqrt (n + 1 : ℝ)⌋

end

end A033433.P12640579201796165105

namespace A033433

/-- `floor((20/2)²²/sqrt(n+1))` -/
def P12640579201796165105.Spec : Prop :=
  ∀ n, P12640579201796165105.a n = A033433 (n + 1)

end A033433

/-! ## A033433.P13586556351946608921

`A000027(floor(sqrt(A033424(n+1))))`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A033433

/-- `A000027(floor(sqrt(A033424(n+1))))` -/
def P13586556351946608921.Spec : Prop :=
  ∀ n, P13586556351946608921.a n = A033433 (n + 1)

theorem P13586556351946608921.correct : P13586556351946608921.Spec := by
  intro n
  simp only [A033433, Nat.add_sub_cancel]

end A033433

/-! ## A033433.P17700472654139389754

`A184985(floor(sqrt(A033424(n+1))))`
-/

namespace A033433.P17700472654139389754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184985 (Int.sqrt (A033424 (n + 1))).toNat

end

end A033433.P17700472654139389754

namespace A033433

/-- `A184985(floor(sqrt(A033424(n+1))))` -/
def P17700472654139389754.Spec : Prop :=
  ∀ n, P17700472654139389754.a n = A033433 (n + 1)

end A033433

/-! ## A033433.P11134205484135736197

`(1-2*A000035(n))²*floor(sqrt(A033424(n+1)))`
-/

namespace A033433.P11134205484135736197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - 2 * A000035 n) ^ 2 * Int.sqrt (A033424 (n + 1))

end

end A033433.P11134205484135736197

namespace A033433

/-- `(1-2*A000035(n))²*floor(sqrt(A033424(n+1)))` -/
def P11134205484135736197.Spec : Prop :=
  ∀ n, P11134205484135736197.a n = A033433 (n + 1)

end A033433

/-! ## A033433.P3703333709628938309

`A000007(n+1)+floor(sqrt(A033424(n+1)))`
-/

namespace A033433.P3703333709628938309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) + Int.sqrt (A033424 (n + 1))

end

end A033433.P3703333709628938309

namespace A033433

/-- `A000007(n+1)+floor(sqrt(A033424(n+1)))` -/
def P3703333709628938309.Spec : Prop :=
  ∀ n, P3703333709628938309.a n = A033433 (n + 1)

end A033433

/-! ## A033433.P17663716718894260603

`A010892(3*n)²*floor(sqrt(A033424(n+1)))`
-/

namespace A033433.P17663716718894260603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 (3 * n) ^ 2 * Int.sqrt (A033424 (n + 1))

end

end A033433.P17663716718894260603

namespace A033433

/-- `A010892(3*n)²*floor(sqrt(A033424(n+1)))` -/
def P17663716718894260603.Spec : Prop :=
  ∀ n, P17663716718894260603.a n = A033433 (n + 1)

end A033433

/-! ## A033433.P8167304072655652687

`floor(sqrt(A033424(n+1)))*A181157(10*n+5)`
-/

namespace A033433.P8167304072655652687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A033424 (n + 1)) * A181157 (10 * n + 5)

end

end A033433.P8167304072655652687

namespace A033433

/-- `floor(sqrt(A033424(n+1)))*A181157(10*n+5)` -/
def P8167304072655652687.Spec : Prop :=
  ∀ n, P8167304072655652687.a n = A033433 (n + 1)

end A033433

/-!
# A033434: Third differences of Catalan numbers A000108.

The programs for A033434, the canonical program `A033434.P16108752292041278544` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033434 has offset 0).

The definition of A033434 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 170 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A033434.P16108752292041278544

`Δ[A026012(n)]`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A033434

/-- `Δ[A026012(n)]` -/
def P16108752292041278544.Spec : Prop :=
  ∀ n, P16108752292041278544.a n = A033434 n

theorem P16108752292041278544.correct : P16108752292041278544.Spec := by
  intro n
  simp only [A033434]

end A033434

/-! ## A033434.P17819928767387628650

`Δ[Δ[A000245(n)]]`
-/

namespace A033434.P17819928767387628650
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000245 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A033434.P17819928767387628650

namespace A033434

/-- `Δ[Δ[A000245(n)]]` -/
def P17819928767387628650.Spec : Prop :=
  ∀ n, P17819928767387628650.a n = A033434 n

end A033434

/-! ## A033434.P6835852538266875960

`Δ[A071738(n+1)]`
-/

namespace A033434.P6835852538266875960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071738 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A033434.P6835852538266875960

namespace A033434

/-- `Δ[A071738(n+1)]` -/
def P6835852538266875960.Spec : Prop :=
  ∀ n, P6835852538266875960.a n = A033434 n

end A033434

/-! ## A033434.P11572475692478168757

`Δ[A026021(2*n)]`
-/

namespace A033434.P11572475692478168757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026021 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A033434.P11572475692478168757

namespace A033434

/-- `Δ[A026021(2*n)]` -/
def P11572475692478168757.Spec : Prop :=
  ∀ n, P11572475692478168757.a n = A033434 n

end A033434

/-! ## A033434.P3770075010609185514

`Δ[Δ[Δ[A000108(n)]]]`
-/

namespace A033434.P3770075010609185514
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A033434.P3770075010609185514

namespace A033434

/-- `Δ[Δ[Δ[A000108(n)]]]` -/
def P3770075010609185514.Spec : Prop :=
  ∀ n, P3770075010609185514.a n = A033434 n

end A033434

/-! ## A033434.P18117694026693858975

`Δ[Δ[A289598(n+1)]]`
-/

namespace A033434.P18117694026693858975
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289598 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A033434.P18117694026693858975

namespace A033434

/-- `Δ[Δ[A289598(n+1)]]` -/
def P18117694026693858975.Spec : Prop :=
  ∀ n, P18117694026693858975.a n = A033434 n

end A033434

/-! ## A033434.P4969521307056961615

`Δ[Δ[Δ[A120588(n+1)]]]`
-/

namespace A033434.P4969521307056961615
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120588 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A033434.P4969521307056961615

namespace A033434

/-- `Δ[Δ[Δ[A120588(n+1)]]]` -/
def P4969521307056961615.Spec : Prop :=
  ∀ n, P4969521307056961615.a n = A033434 n

end A033434

/-! ## A033434.P1120106998998621174

`Δ[Δ[Δ[A126120(2*n)]]]`
-/

namespace A033434.P1120106998998621174
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126120 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A033434.P1120106998998621174

namespace A033434

/-- `Δ[Δ[Δ[A126120(2*n)]]]` -/
def P1120106998998621174.Spec : Prop :=
  ∀ n, P1120106998998621174.a n = A033434 n

end A033434

/-! ## A033434.P3748535763354566086

`A228339(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A033434.P3748535763354566086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A228339 (n - 1) + a (n - 1)

end

end A033434.P3748535763354566086

namespace A033434

/-- `A228339(n-1)+a(n-1)` -/
def P3748535763354566086.Spec : Prop :=
  ∀ n, P3748535763354566086.a n = A033434 n

end A033434

/-! ## A033434.P11532218085752068010

`A070031(n)+A000588(n)`
-/

namespace A033434.P11532218085752068010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070031 n + A000588 n

end

end A033434.P11532218085752068010

namespace A033434

/-- `A070031(n)+A000588(n)` -/
def P11532218085752068010.Spec : Prop :=
  ∀ n, P11532218085752068010.a n = A033434 n

end A033434

/-! ## A033434.P17746801626566620208

`A099376(n)+A071740(n)`
-/

namespace A033434.P17746801626566620208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099376 n + A071740 n

end

end A033434.P17746801626566620208

namespace A033434

/-- `A099376(n)+A071740(n)` -/
def P17746801626566620208.Spec : Prop :=
  ∀ n, P17746801626566620208.a n = A033434 n

end A033434

/-! ## A033434.P10395415447934904448

`A067324(n)-A071722(n)`
-/

namespace A033434.P10395415447934904448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067324 n - A071722 n

end

end A033434.P10395415447934904448

namespace A033434

/-- `A067324(n)-A071722(n)` -/
def P10395415447934904448.Spec : Prop :=
  ∀ n, P10395415447934904448.a n = A033434 n

end A033434

/-! ## A033434.P15851256282011189760

`Δ[A120304(n)+A099376(n)]`
-/

namespace A033434.P15851256282011189760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120304 n + A099376 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A033434.P15851256282011189760

namespace A033434

/-- `Δ[A120304(n)+A099376(n)]` -/
def P15851256282011189760.Spec : Prop :=
  ∀ n, P15851256282011189760.a n = A033434 n

end A033434

/-! ## A033434.P16951651759375208905

`A002057(n)-Δ[A143955(n)]`
-/

namespace A033434.P16951651759375208905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143955 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002057 n - (f1 (n + 1) - f1 n)

end

end A033434.P16951651759375208905

namespace A033434

/-- `A002057(n)-Δ[A143955(n)]` -/
def P16951651759375208905.Spec : Prop :=
  ∀ n, P16951651759375208905.a n = A033434 n

end A033434

/-! ## A033434.P3844671999373879536

`A026016(n+1)+A000245(n)`
-/

namespace A033434.P3844671999373879536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026016 (n + 1) + A000245 n

end

end A033434.P3844671999373879536

namespace A033434

/-- `A026016(n+1)+A000245(n)` -/
def P3844671999373879536.Spec : Prop :=
  ∀ n, P3844671999373879536.a n = A033434 n

end A033434

/-! ## A033434.P15073216712567020646

`A071725(n+1)+A000245(n)`
-/

namespace A033434.P15073216712567020646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071725 (n + 1) + A000245 n

end

end A033434.P15073216712567020646

namespace A033434

/-- `A071725(n+1)+A000245(n)` -/
def P15073216712567020646.Spec : Prop :=
  ∀ n, P15073216712567020646.a n = A033434 n

end A033434

/-! ## A033434.P14676005946015040657

`A026012(n+1)-A026012(n)`
-/

namespace A033434.P14676005946015040657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026012 (n + 1) - A026012 n

end

end A033434.P14676005946015040657

namespace A033434

/-- `A026012(n+1)-A026012(n)` -/
def P14676005946015040657.Spec : Prop :=
  ∀ n, P14676005946015040657.a n = A033434 n

theorem P14676005946015040657.correct : P14676005946015040657.Spec := by
  intro n
  simp only [A033434, Nat.add_sub_cancel, A033434.P14676005946015040657.a, A033434.P16108752292041278544.f1, A033434.P16108752292041278544.a, SequenceMachineLib.memo_apply]

end A033434

/-! ## A033434.P3045115288192456374

`A071739(n+1)-A000108(n)`
-/

namespace A033434.P3045115288192456374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071739 (n + 1) - A000108 n

end

end A033434.P3045115288192456374

namespace A033434

/-- `A071739(n+1)-A000108(n)` -/
def P3045115288192456374.Spec : Prop :=
  ∀ n, P3045115288192456374.a n = A033434 n

end A033434

/-! ## A033434.P13085029109254456414

`A115144(n+3)+A002057(n)`
-/

namespace A033434.P13085029109254456414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115144 (n + 3) + A002057 n

end

end A033434.P13085029109254456414

namespace A033434

/-- `A115144(n+3)+A002057(n)` -/
def P13085029109254456414.Spec : Prop :=
  ∀ n, P13085029109254456414.a n = A033434 n

end A033434

/-! ## A033434.P17993069416681772232

`A070859(n)+2*A000245(n)`
-/

namespace A033434.P17993069416681772232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070859 n + 2 * A000245 n

end

end A033434.P17993069416681772232

namespace A033434

/-- `A070859(n)+2*A000245(n)` -/
def P17993069416681772232.Spec : Prop :=
  ∀ n, P17993069416681772232.a n = A033434 n

end A033434

/-!
# A033436: a(n) = ceiling( (3*n^2 - 4)/8 ).

The programs for A033436, the canonical program `A033436.P8743930386069734192` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033436 has offset 0).

The definition of A033436 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A033436.P8743930386069734192

`floor(3*n²/8)`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A033436

/-- `floor(3*n²/8)` -/
def P8743930386069734192.Spec : Prop :=
  ∀ n, P8743930386069734192.a n = A033436 n

theorem P8743930386069734192.correct : P8743930386069734192.Spec := by
  intro n
  simp only [A033436]

end A033436

/-! ## A033436.P295310384248823061

`2*a(n-1)-a(n-2)+a(n-4)-2*a(n-5)+a(n-6)` with `a(0)=0, a(1)=0, a(2)=1, a(3)=3, a(4)=6, a(5)=9`
-/

namespace A033436.P295310384248823061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 1, 3, 6, 9] fun n a =>
  2 * a (n - 1) - a (n - 2) + a (n - 4) - 2 * a (n - 5) + a (n - 6)

end

end A033436.P295310384248823061

namespace A033436

/-- `2*a(n-1)-a(n-2)+a(n-4)-2*a(n-5)+a(n-6)` -/
def P295310384248823061.Spec : Prop :=
  ∀ n, P295310384248823061.a n = A033436 n

end A033436

/-! ## A033436.P12401371496596878064

`∑[n-∑[∑[∑[n]]%2]]`
-/

namespace A033436.P12401371496596878064
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f3 j) % 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033436.P12401371496596878064

namespace A033436

/-- `∑[n-∑[∑[∑[n]]%2]]` -/
def P12401371496596878064.Spec : Prop :=
  ∀ n, P12401371496596878064.a n = A033436 n

end A033436

/-! ## A033436.P5870508083919159155

`∑[floor(∑[gcd(2, n)/2])-1]`
-/

namespace A033436.P5870508083919159155
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 2 n : ℚ) / 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f2 j⌋ - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033436.P5870508083919159155

namespace A033436

/-- `∑[floor(∑[gcd(2, n)/2])-1]` -/
def P5870508083919159155.Spec : Prop :=
  ∀ n, P5870508083919159155.a n = A033436 n

end A033436

/-! ## A033436.P11498922064435749749

`n²-∑[record[lcm(5, n)/5]]`
-/

namespace A033436.P11498922064435749749
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 5 n : ℚ) / 5

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℚ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033436.P11498922064435749749

namespace A033436

/-- `n²-∑[record[lcm(5, n)/5]]` -/
def P11498922064435749749.Spec : Prop :=
  ∀ n, P11498922064435749749.a n = (A033436 n : ℚ)

end A033436

/-! ## A033436.P6186154934281424918

`∑[and(n, -2)]-round(n²/8)`
-/

namespace A033436.P6186154934281424918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - SequenceMachineLib.roundAway ((n ^ 2 : ℚ) / 8)

end

end A033436.P6186154934281424918

namespace A033436

/-- `∑[and(n, -2)]-round(n²/8)` -/
def P6186154934281424918.Spec : Prop :=
  ∀ n, P6186154934281424918.a n = A033436 n

end A033436

/-! ## A033436.P7783947699867042140

`∑[a(n-4)+3]` with `a(0)=0, a(1)=0, a(2)=1, a(3)=2`
-/

namespace A033436.P7783947699867042140
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 1, 2] fun n f1 =>
  f1 (n - 4) + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033436.P7783947699867042140

namespace A033436

/-- `∑[a(n-4)+3]` -/
def P7783947699867042140.Spec : Prop :=
  ∀ n, (P7783947699867042140.a n : ℤ) = A033436 n

end A033436

/-! ## A033436.P4777218691920814279

`∑[∑[a(n-4)²]]` with `a(0)=0, a(1)=0, a(2)=1, a(3)=1, a(4)=1`
-/

namespace A033436.P4777218691920814279
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 1, 1, 1] fun n f2 =>
  f2 (n - 4) ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033436.P4777218691920814279

namespace A033436

/-- `∑[∑[a(n-4)²]]` -/
def P4777218691920814279.Spec : Prop :=
  ∀ n, (P4777218691920814279.a n : ℤ) = A033436 n

end A033436

/-! ## A033436.P10028709578966305271

`∑[∑[floor(a(n-4))]]` with `a(0)=0, a(1)=0, a(2)=1, a(3)=1, a(4)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A033436.P10028709578966305271
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 1, 1, 1] fun n f2 =>
  f2 (n - 4)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033436.P10028709578966305271

namespace A033436

/-- `∑[∑[floor(a(n-4))]]` -/
def P10028709578966305271.Spec : Prop :=
  ∀ n, (P10028709578966305271.a n : ℤ) = A033436 n

end A033436

/-! ## A033436.P4463702410876356970

`a(n-1)+floor(3*n/4)` with `a(0)=0`
-/

namespace A033436.P4463702410876356970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + ⌊3 * ((n : ℚ) / 4)⌋

end

end A033436.P4463702410876356970

namespace A033436

/-- `a(n-1)+floor(3*n/4)` -/
def P4463702410876356970.Spec : Prop :=
  ∀ n, P4463702410876356970.a n = A033436 n

end A033436

/-! ## A033436.P12450575232224696925

`floor(a(n-1)-n/4)+n` with `a(0)=0`
-/

namespace A033436.P12450575232224696925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ⌊(a (n - 1) : ℚ) - (n : ℚ) / 4⌋ + (n : ℤ)

end

end A033436.P12450575232224696925

namespace A033436

/-- `floor(a(n-1)-n/4)+n` -/
def P12450575232224696925.Spec : Prop :=
  ∀ n, P12450575232224696925.a n = A033436 n

end A033436

/-! ## A033436.P9618823959277105081

`∑[∑[((∑[n]+1)%(n+1))%2]]`
-/

namespace A033436.P9618823959277105081
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f3 j + 1) % (n + 1) % 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033436.P9618823959277105081

namespace A033436

/-- `∑[∑[((∑[n]+1)%(n+1))%2]]` -/
def P9618823959277105081.Spec : Prop :=
  ∀ n, (P9618823959277105081.a n : ℤ) = A033436 n

end A033436

/-! ## A033436.P5466116420399915021

`∑[∑[a(n-4)^3]]` with `a(0)=0, a(1)=0, a(2)=1, a(3)=1, a(4)=1`
-/

namespace A033436.P5466116420399915021
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 1, 1, 1] fun n f2 =>
  f2 (n - 4) ^ 3

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033436.P5466116420399915021

namespace A033436

/-- `∑[∑[a(n-4)^3]]` -/
def P5466116420399915021.Spec : Prop :=
  ∀ n, (P5466116420399915021.a n : ℤ) = A033436 n

end A033436

/-! ## A033436.P16590580162438598599

`∑[A057353(n)]`
-/

namespace A033436.P16590580162438598599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057353 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033436.P16590580162438598599

namespace A033436

/-- `∑[A057353(n)]` -/
def P16590580162438598599.Spec : Prop :=
  ∀ n, P16590580162438598599.a n = A033436 n

end A033436

/-! ## A033436.P12260168703758113786

`∑[A037915(n)-1]`
-/

namespace A033436.P12260168703758113786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037915 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033436.P12260168703758113786

namespace A033436

/-- `∑[A037915(n)-1]` -/
def P12260168703758113786.Spec : Prop :=
  ∀ n, P12260168703758113786.a n = A033436 n

end A033436

/-! ## A033436.P5647003299116660103

`n²-A330133(n)`
-/

namespace A033436.P5647003299116660103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - A330133 n

end

end A033436.P5647003299116660103

namespace A033436

/-- `n²-A330133(n)` -/
def P5647003299116660103.Spec : Prop :=
  ∀ n, P5647003299116660103.a n = A033436 n

end A033436

/-! ## A033436.P17660148634748714790

`∑[n-A110655(n)]`
-/

namespace A033436.P17660148634748714790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A110655 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033436.P17660148634748714790

namespace A033436

/-- `∑[n-A110655(n)]` -/
def P17660148634748714790.Spec : Prop :=
  ∀ n, P17660148634748714790.a n = A033436 n

end A033436

/-! ## A033436.P18077403243552059042

`∑[floor(A032766(n)/2)]`
-/

namespace A033436.P18077403243552059042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A032766 n : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033436.P18077403243552059042

namespace A033436

/-- `∑[floor(A032766(n)/2)]` -/
def P18077403243552059042.Spec : Prop :=
  ∀ n, P18077403243552059042.a n = A033436 n

end A033436

/-! ## A033436.P6425017841622818476

`ceil(A084684(n)/2)-1`
-/

namespace A033436.P6425017841622818476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A084684 n : ℚ) / 2⌉ - 1

end

end A033436.P6425017841622818476

namespace A033436

/-- `ceil(A084684(n)/2)-1` -/
def P6425017841622818476.Spec : Prop :=
  ∀ n, P6425017841622818476.a n = A033436 n

end A033436

/-! ## A033436.P16597128776059889838

`(n²-A008811(n))/2`
-/

namespace A033436.P16597128776059889838
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n ^ 2 : ℤ) - A008811 n : ℚ) / 2

end

end A033436.P16597128776059889838

namespace A033436

/-- `(n²-A008811(n))/2` -/
def P16597128776059889838.Spec : Prop :=
  ∀ n, P16597128776059889838.a n = (A033436 n : ℚ)

end A033436

/-!
# A033437: Number of edges in 5-partite Turán graph of order n.

The programs for A033437, the canonical program `A033437.P12589064537367004141` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033437 has offset 0).

The definition of A033437 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A033437.P12589064537367004141

`floor(2*n²/5)`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A033437

/-- `floor(2*n²/5)` -/
def P12589064537367004141.Spec : Prop :=
  ∀ n, P12589064537367004141.a n = A033437 n

theorem P12589064537367004141.correct : P12589064537367004141.Spec := by
  intro n
  simp only [A033437]

end A033437

/-! ## A033437.P1950923645743244352

`2*a(n-1)-a(n-2)+a(n-5)-2*a(n-6)+a(n-7)` with `a(0)=0, a(1)=0, a(2)=1, a(3)=3, a(4)=6, a(5)=10, a(6)=14`
-/

namespace A033437.P1950923645743244352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 1, 3, 6, 10, 14] fun n a =>
  2 * a (n - 1) - a (n - 2) + a (n - 5) - 2 * a (n - 6) + a (n - 7)

end

end A033437.P1950923645743244352

namespace A033437

/-- `2*a(n-1)-a(n-2)+a(n-5)-2*a(n-6)+a(n-7)` -/
def P1950923645743244352.Spec : Prop :=
  ∀ n, P1950923645743244352.a n = A033437 n

end A033437

/-! ## A033437.P4055786391125602783

`∑[floor(n/cosh(log(2)))]`
-/

namespace A033437.P4055786391125602783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) / Real.cosh (Real.log (2 : ℝ))⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033437.P4055786391125602783

namespace A033437

/-- `∑[floor(n/cosh(log(2)))]` -/
def P4055786391125602783.Spec : Prop :=
  ∀ n, P4055786391125602783.a n = A033437 n

end A033437

/-! ## A033437.P5937678256018405036

`∑[floor(n*tanh(log(3)))]`
-/

namespace A033437.P5937678256018405036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.tanh (Real.log (3 : ℝ))⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033437.P5937678256018405036

namespace A033437

/-- `∑[floor(n*tanh(log(3)))]` -/
def P5937678256018405036.Spec : Prop :=
  ∀ n, P5937678256018405036.a n = A033437 n

end A033437

/-! ## A033437.P15437003269779016580

`∑[round(record[lcm(2, n)/5])]`
-/

namespace A033437.P15437003269779016580
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 2 n : ℚ) / 5

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033437.P15437003269779016580

namespace A033437

/-- `∑[round(record[lcm(2, n)/5])]` -/
def P15437003269779016580.Spec : Prop :=
  ∀ n, P15437003269779016580.a n = A033437 n

end A033437

/-! ## A033437.P13329066566905145893

`and(∑[floor(4*n/5)], -1)`
-/

namespace A033437.P13329066566905145893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊4 * ((n : ℚ) / 5)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (∑ j ∈ Finset.range (n + 1), f1 j) (-1)

end

end A033437.P13329066566905145893

namespace A033437

/-- `and(∑[floor(4*n/5)], -1)` -/
def P13329066566905145893.Spec : Prop :=
  ∀ n, P13329066566905145893.a n = A033437 n

end A033437

/-! ## A033437.P53377323603292341

`∑[∑[ceil((n-1)%5/4)]]`
-/

namespace A033437.P53377323603292341
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Int.tmod ((n : ℤ) - 1) 5 : ℚ) / 4⌉

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033437.P53377323603292341

namespace A033437

/-- `∑[∑[ceil((n-1)%5/4)]]` -/
def P53377323603292341.Spec : Prop :=
  ∀ n, P53377323603292341.a n = A033437 n

end A033437

/-! ## A033437.P11671025931712557435

`∑[a(n-5)+4]` with `a(0)=0, a(1)=0, a(2)=1, a(3)=2, a(4)=3`
-/

namespace A033437.P11671025931712557435
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 1, 2, 3] fun n f1 =>
  f1 (n - 5) + 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033437.P11671025931712557435

namespace A033437

/-- `∑[a(n-5)+4]` -/
def P11671025931712557435.Spec : Prop :=
  ∀ n, (P11671025931712557435.a n : ℤ) = A033437 n

end A033437

/-! ## A033437.P12603134357665775376

`round((C(2*n, 2)+n-1)/5)`
-/

namespace A033437.P12603134357665775376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((Nat.choose (2 * n) 2 : ℤ) + ((n : ℤ) - 1) : ℚ) / 5)

end

end A033437.P12603134357665775376

namespace A033437

/-- `round((C(2*n, 2)+n-1)/5)` -/
def P12603134357665775376.Spec : Prop :=
  ∀ n, P12603134357665775376.a n = A033437 n

end A033437

/-! ## A033437.P1713012366852194543

`ceil((C(2*n, 2)+n-3)/5)`
-/

namespace A033437.P1713012366852194543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((Nat.choose (2 * n) 2 : ℤ) + ((n : ℤ) - 3) : ℚ) / 5⌉

end

end A033437.P1713012366852194543

namespace A033437

/-- `ceil((C(2*n, 2)+n-3)/5)` -/
def P1713012366852194543.Spec : Prop :=
  ∀ n, P1713012366852194543.a n = A033437 n

end A033437

/-! ## A033437.P2618716147924974840

`a(n-1)+floor(4*n/5)` with `a(0)=0`
-/

namespace A033437.P2618716147924974840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + ⌊4 * ((n : ℚ) / 5)⌋

end

end A033437.P2618716147924974840

namespace A033437

/-- `a(n-1)+floor(4*n/5)` -/
def P2618716147924974840.Spec : Prop :=
  ∀ n, P2618716147924974840.a n = A033437 n

end A033437

/-! ## A033437.P17851040005989706957

`floor(a(n-1)-n/5)+n` with `a(0)=0`
-/

namespace A033437.P17851040005989706957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ⌊(a (n - 1) : ℚ) - (n : ℚ) / 5⌋ + (n : ℤ)

end

end A033437.P17851040005989706957

namespace A033437

/-- `floor(a(n-1)-n/5)+n` -/
def P17851040005989706957.Spec : Prop :=
  ∀ n, P17851040005989706957.a n = A033437 n

end A033437

/-! ## A033437.P8908811360349373563

`∑[∑[a(n-5)²]]` with `a(0)=0, a(1)=0, a(2)=1, a(3)=1, a(4)=1, a(5)=1`
-/

namespace A033437.P8908811360349373563
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 1, 1, 1, 1] fun n f2 =>
  f2 (n - 5) ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033437.P8908811360349373563

namespace A033437

/-- `∑[∑[a(n-5)²]]` -/
def P8908811360349373563.Spec : Prop :=
  ∀ n, (P8908811360349373563.a n : ℤ) = A033437 n

end A033437

/-! ## A033437.P12778075098732472079

`∑[∑[floor(a(n-5))]]` with `a(0)=0, a(1)=0, a(2)=1, a(3)=1, a(4)=1, a(5)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A033437.P12778075098732472079
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 1, 1, 1, 1] fun n f2 =>
  f2 (n - 5)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033437.P12778075098732472079

namespace A033437

/-- `∑[∑[floor(a(n-5))]]` -/
def P12778075098732472079.Spec : Prop :=
  ∀ n, (P12778075098732472079.a n : ℤ) = A033437 n

end A033437

/-! ## A033437.P7457481051278999896

`∑[∑[a(n-5)^a(n-4)]]` with `a(0)=0, a(1)=0, a(2)=1, a(3)=1, a(4)=1`
-/

namespace A033437.P7457481051278999896
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 1, 1, 1] fun n f2 =>
  f2 (n - 5) ^ f2 (n - 4)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033437.P7457481051278999896

namespace A033437

/-- `∑[∑[a(n-5)^a(n-4)]]` -/
def P7457481051278999896.Spec : Prop :=
  ∀ n, (P7457481051278999896.a n : ℤ) = A033437 n

end A033437

/-! ## A033437.P2150538142674324269

`∑[A090223(n)]`
-/

namespace A033437.P2150538142674324269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090223 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033437.P2150538142674324269

namespace A033437

/-- `∑[A090223(n)]` -/
def P2150538142674324269.Spec : Prop :=
  ∀ n, P2150538142674324269.a n = A033437 n

end A033437

/-! ## A033437.P4168541722963360410

`∑[A187318(n)-n]`
-/

namespace A033437.P4168541722963360410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187318 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033437.P4168541722963360410

namespace A033437

/-- `∑[A187318(n)-n]` -/
def P4168541722963360410.Spec : Prop :=
  ∀ n, P4168541722963360410.a n = A033437 n

end A033437

/-! ## A033437.P9090133436298045727

`A398052(n)-∑[n]`
-/

namespace A033437.P9090133436298045727
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398052 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A033437.P9090133436298045727

namespace A033437

/-- `A398052(n)-∑[n]` -/
def P9090133436298045727.Spec : Prop :=
  ∀ n, P9090133436298045727.a n = A033437 n

end A033437

/-! ## A033437.P4757963155308993000

`∑[n-sqrt(A287392(n))]`
-/

namespace A033437.P4757963155308993000
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n : ℝ) - Real.sqrt (A287392 n : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033437.P4757963155308993000

namespace A033437

/-- `∑[n-sqrt(A287392(n))]` -/
def P4757963155308993000.Spec : Prop :=
  ∀ n, P4757963155308993000.a n = (A033437 n : ℝ)

end A033437

/-! ## A033437.P16836573962448079651

`∑[∑[char[A047203(n+2)]]]`
-/

namespace A033437.P16836573962448079651
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047203 (n + 2)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033437.P16836573962448079651

namespace A033437

/-- `∑[∑[char[A047203(n+2)]]]` -/
def P16836573962448079651.Spec : Prop :=
  ∀ n, (P16836573962448079651.a n : ℤ) = A033437 n

end A033437

/-!
# A033438: Number of edges in 6-partite Turán graph of order n.

The programs for A033438, the canonical program `A033438.P5943560703643571516` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033438 has offset 0).

The definition of A033438 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A033438.P5943560703643571516

`floor(5*n²/12)`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A033438

/-- `floor(5*n²/12)` -/
def P5943560703643571516.Spec : Prop :=
  ∀ n, P5943560703643571516.a n = A033438 n

theorem P5943560703643571516.correct : P5943560703643571516.Spec := by
  intro n
  simp only [A033438]

end A033438

/-! ## A033438.P2327380343417618265

`2*a(n-1)-a(n-2)+a(n-6)-2*a(n-7)+a(n-8)` with `a(0)=0, a(1)=0, a(2)=1, a(3)=3, a(4)=6, a(5)=10, a(6)=15, a(7)=20`
-/

namespace A033438.P2327380343417618265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 1, 3, 6, 10, 15, 20] fun n a =>
  2 * a (n - 1) - a (n - 2) + a (n - 6) - 2 * a (n - 7) + a (n - 8)

end

end A033438.P2327380343417618265

namespace A033438

/-- `2*a(n-1)-a(n-2)+a(n-6)-2*a(n-7)+a(n-8)` -/
def P2327380343417618265.Spec : Prop :=
  ∀ n, P2327380343417618265.a n = A033438 n

end A033438

/-! ## A033438.P2790804193132883554

`∑[floor(xor(1, 5*n)/6)]`
-/

namespace A033438.P2790804193132883554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.xor 1 (5 * n) : ℚ) / 6⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033438.P2790804193132883554

namespace A033438

/-- `∑[floor(xor(1, 5*n)/6)]` -/
def P2790804193132883554.Spec : Prop :=
  ∀ n, P2790804193132883554.a n = A033438 n

end A033438

/-! ## A033438.P13277307500590359902

`a(n-1)+floor(5*n/6)` with `a(0)=0`
-/

namespace A033438.P13277307500590359902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + ⌊5 * ((n : ℚ) / 6)⌋

end

end A033438.P13277307500590359902

namespace A033438

/-- `a(n-1)+floor(5*n/6)` -/
def P13277307500590359902.Spec : Prop :=
  ∀ n, P13277307500590359902.a n = A033438 n

end A033438

/-! ## A033438.P11718582624683542670

`floor(a(n-1)-n/6)+n` with `a(0)=0`
-/

namespace A033438.P11718582624683542670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ⌊(a (n - 1) : ℚ) - (n : ℚ) / 6⌋ + (n : ℤ)

end

end A033438.P11718582624683542670

namespace A033438

/-- `floor(a(n-1)-n/6)+n` -/
def P11718582624683542670.Spec : Prop :=
  ∀ n, P11718582624683542670.a n = A033438 n

end A033438

/-! ## A033438.P1613835574335205598

`∑[floor(∑[5-a(n-1)]/3)]` with `a(0)=0, a(1)=2`
-/

namespace A033438.P1613835574335205598
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n f2 =>
  5 - f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ) / 3⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033438.P1613835574335205598

namespace A033438

/-- `∑[floor(∑[5-a(n-1)]/3)]` -/
def P1613835574335205598.Spec : Prop :=
  ∀ n, P1613835574335205598.a n = A033438 n

end A033438

/-! ## A033438.P14366690680351239499

`∑[A272915(n)-n]`
-/

namespace A033438.P14366690680351239499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272915 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033438.P14366690680351239499

namespace A033438

/-- `∑[A272915(n)-n]` -/
def P14366690680351239499.Spec : Prop :=
  ∀ n, P14366690680351239499.a n = A033438 n

end A033438

/-! ## A033438.P9192245664267603170

`∑[n]+1-A275673(n+1)`
-/

namespace A033438.P9192245664267603170
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + (1 - A275673 (n + 1))

end

end A033438.P9192245664267603170

namespace A033438

/-- `∑[n]+1-A275673(n+1)` -/
def P9192245664267603170.Spec : Prop :=
  ∀ n, P9192245664267603170.a n = A033438 n

end A033438

/-! ## A033438.P16622353634702686667

`∑[2*n-A047306(n+1)]`
-/

namespace A033438.P16622353634702686667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - A047306 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033438.P16622353634702686667

namespace A033438

/-- `∑[2*n-A047306(n+1)]` -/
def P16622353634702686667.Spec : Prop :=
  ∀ n, P16622353634702686667.a n = A033438 n

end A033438

/-! ## A033438.P10684117964700126413

`∑[A004526(n)]+floor(n²/6)`
-/

namespace A033438.P10684117964700126413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ⌊(n ^ 2 : ℚ) / 6⌋

end

end A033438.P10684117964700126413

namespace A033438

/-- `∑[A004526(n)]+floor(n²/6)` -/
def P10684117964700126413.Spec : Prop :=
  ∀ n, P10684117964700126413.a n = A033438 n

end A033438

/-! ## A033438.P9121956212429609771

`A002579(n+1)-(2*n+3)`
-/

namespace A033438.P9121956212429609771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002579 (n + 1) - (2 * n + 3 : ℤ)

end

end A033438.P9121956212429609771

namespace A033438

/-- `A002579(n+1)-(2*n+3)` -/
def P9121956212429609771.Spec : Prop :=
  ∀ n, P9121956212429609771.a n = A033438 n

end A033438

/-! ## A033438.P7103334205313957993

`A008724(n)+A000212(n)`
-/

namespace A033438.P7103334205313957993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008724 n + A000212 n

end

end A033438.P7103334205313957993

namespace A033438

/-- `A008724(n)+A000212(n)` -/
def P7103334205313957993.Spec : Prop :=
  ∀ n, P7103334205313957993.a n = A033438 n

end A033438

/-! ## A033438.P5713685282779028188

`A056827(n)+A002620(n)`
-/

namespace A033438.P5713685282779028188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056827 n + A002620 n

end

end A033438.P5713685282779028188

namespace A033438

/-- `A056827(n)+A002620(n)` -/
def P5713685282779028188.Spec : Prop :=
  ∀ n, P5713685282779028188.a n = A033438 n

end A033438

/-! ## A033438.P2335833057207768713

`A309689(n)+A033436(n)`
-/

namespace A033438.P2335833057207768713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309689 n + A033436 n

end

end A033438.P2335833057207768713

namespace A033438

/-- `A309689(n)+A033436(n)` -/
def P2335833057207768713.Spec : Prop :=
  ∀ n, P2335833057207768713.a n = A033438 n

end A033438

/-! ## A033438.P5687791131391300731

`A011934(n)-A390566(n)`
-/

namespace A033438.P5687791131391300731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011934 n - A390566 n

end

end A033438.P5687791131391300731

namespace A033438

/-- `A011934(n)-A390566(n)` -/
def P5687791131391300731.Spec : Prop :=
  ∀ n, P5687791131391300731.a n = A033438 n

end A033438

/-! ## A033438.P8547865574280980514

`∑[n-A103221(A004442(n))]`
-/

namespace A033438.P8547865574280980514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A103221 (A004442 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033438.P8547865574280980514

namespace A033438

/-- `∑[n-A103221(A004442(n))]` -/
def P8547865574280980514.Spec : Prop :=
  ∀ n, P8547865574280980514.a n = A033438 n

end A033438

/-! ## A033438.P6700033859698761060

`∑[n-A110655(A004396(n))]`
-/

namespace A033438.P6700033859698761060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A110655 (A004396 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033438.P6700033859698761060

namespace A033438

/-- `∑[n-A110655(A004396(n))]` -/
def P6700033859698761060.Spec : Prop :=
  ∀ n, P6700033859698761060.a n = A033438 n

end A033438

/-! ## A033438.P1656972258543276253

`A174709(n+1)+A171662(n)`
-/

namespace A033438.P1656972258543276253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174709 (n + 1) + A171662 n

end

end A033438.P1656972258543276253

namespace A033438

/-- `A174709(n+1)+A171662(n)` -/
def P1656972258543276253.Spec : Prop :=
  ∀ n, P1656972258543276253.a n = A033438 n

end A033438

/-! ## A033438.P8830172072356112192

`A000124(n)-A275673(n+1)`
-/

namespace A033438.P8830172072356112192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 n - A275673 (n + 1)

end

end A033438.P8830172072356112192

namespace A033438

/-- `A000124(n)-A275673(n+1)` -/
def P8830172072356112192.Spec : Prop :=
  ∀ n, P8830172072356112192.a n = A033438 n

end A033438

/-! ## A033438.P14833854470804076066

`A056827(n)+A007590(n)/2`
-/

namespace A033438.P14833854470804076066
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056827 n : ℚ) + (A007590 n : ℚ) / 2

end

end A033438.P14833854470804076066

namespace A033438

/-- `A056827(n)+A007590(n)/2` -/
def P14833854470804076066.Spec : Prop :=
  ∀ n, P14833854470804076066.a n = (A033438 n : ℚ)

end A033438

/-!
# A033439: Number of edges in 7-partite Turán graph of order n.

The programs for A033439, the canonical program `A033439.P7131018055808666326` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033439 has offset 0).

The definition of A033439 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A033439.P7131018055808666326

`floor(3*n²/7)`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A033439

/-- `floor(3*n²/7)` -/
def P7131018055808666326.Spec : Prop :=
  ∀ n, P7131018055808666326.a n = A033439 n

theorem P7131018055808666326.correct : P7131018055808666326.Spec := by
  intro n
  simp only [A033439]

end A033439

/-! ## A033439.P15710138998628533394

`2*a(n-1)-a(n-2)+a(n-7)-2*a(n-8)+a(n-9)` with `a(0)=0, a(1)=0, a(2)=1, a(3)=3, a(4)=6, a(5)=10, a(6)=15, a(7)=21, a(8)=27`
-/

namespace A033439.P15710138998628533394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 1, 3, 6, 10, 15, 21, 27] fun n a =>
  2 * a (n - 1) - a (n - 2) + a (n - 7) - 2 * a (n - 8) + a (n - 9)

end

end A033439.P15710138998628533394

namespace A033439

/-- `2*a(n-1)-a(n-2)+a(n-7)-2*a(n-8)+a(n-9)` -/
def P15710138998628533394.Spec : Prop :=
  ∀ n, P15710138998628533394.a n = A033439 n

end A033439

/-! ## A033439.P12808248818759301932

`∑[∑[char[gcd(7, n)+n]]]`
-/

namespace A033439.P12808248818759301932
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 7 n + n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033439.P12808248818759301932

namespace A033439

/-- `∑[∑[char[gcd(7, n)+n]]]` -/
def P12808248818759301932.Spec : Prop :=
  ∀ n, (P12808248818759301932.a n : ℤ) = A033439 n

end A033439

/-! ## A033439.P10845295457237376646

`a(n-1)+floor(6*n/7)` with `a(0)=0`
-/

namespace A033439.P10845295457237376646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + ⌊6 * ((n : ℚ) / 7)⌋

end

end A033439.P10845295457237376646

namespace A033439

/-- `a(n-1)+floor(6*n/7)` -/
def P10845295457237376646.Spec : Prop :=
  ∀ n, P10845295457237376646.a n = A033439 n

end A033439

/-! ## A033439.P12285159065117442341

`floor(a(n-1)-n/7)+n` with `a(0)=0`
-/

namespace A033439.P12285159065117442341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ⌊(a (n - 1) : ℚ) - (n : ℚ) / 7⌋ + (n : ℤ)

end

end A033439.P12285159065117442341

namespace A033439

/-- `floor(a(n-1)-n/7)+n` -/
def P12285159065117442341.Spec : Prop :=
  ∀ n, P12285159065117442341.a n = A033439 n

end A033439

/-! ## A033439.P16672448582801382799

`∑[floor(A008588(n)/7)]`
-/

namespace A033439.P16672448582801382799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A008588 n : ℚ) / 7⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033439.P16672448582801382799

namespace A033439

/-- `∑[floor(A008588(n)/7)]` -/
def P16672448582801382799.Spec : Prop :=
  ∀ n, P16672448582801382799.a n = A033439 n

end A033439

/-! ## A033439.P15470201919170434894

`A191275(n)+a(n-2)` with `a(0)=0, a(1)=0`
-/

namespace A033439.P15470201919170434894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n a =>
  A191275 n + a (n - 2)

end

end A033439.P15470201919170434894

namespace A033439

/-- `A191275(n)+a(n-2)` -/
def P15470201919170434894.Spec : Prop :=
  ∀ n, P15470201919170434894.a n = A033439 n

end A033439

/-! ## A033439.P4994304853500193843

`∑[2*n-A047594(n+1)]`
-/

namespace A033439.P4994304853500193843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - A047594 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033439.P4994304853500193843

namespace A033439

/-- `∑[2*n-A047594(n+1)]` -/
def P4994304853500193843.Spec : Prop :=
  ∀ n, P4994304853500193843.a n = A033439 n

end A033439

/-! ## A033439.P16928163481109191693

`A145569(n-1)+a(n-1)` with `a(0)=0`
-/

namespace A033439.P16928163481109191693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A145569 (n - 1) + a (n - 1)

end

end A033439.P16928163481109191693

namespace A033439

/-- `A145569(n-1)+a(n-1)` -/
def P16928163481109191693.Spec : Prop :=
  ∀ n, P16928163481109191693.a n = A033439 n

end A033439

/-! ## A033439.P14850920739384622793

`A000290(n)-∑[comp[8*(n+1)]]`
-/

namespace A033439.P14850920739384622793
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A033439.P14850920739384622793

namespace A033439

/-- `A000290(n)-∑[comp[8*(n+1)]]` -/
def P14850920739384622793.Spec : Prop :=
  ∀ n, P14850920739384622793.a n = A033439 n

end A033439

/-! ## A033439.P7912641306843229092

`n²-∑[comp[A004277(4*(n+1))]]`
-/

namespace A033439.P7912641306843229092
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (4 * (n + 1))

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A033439.P7912641306843229092

namespace A033439

/-- `n²-∑[comp[A004277(4*(n+1))]]` -/
def P7912641306843229092.Spec : Prop :=
  ∀ n, P7912641306843229092.a n = A033439 n

end A033439

/-! ## A033439.P2379910731751915279

`∑[A145569(A028310(n)-1)]`
-/

namespace A033439.P2379910731751915279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145569 (A028310 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033439.P2379910731751915279

namespace A033439

/-- `∑[A145569(A028310(n)-1)]` -/
def P2379910731751915279.Spec : Prop :=
  ∀ n, P2379910731751915279.a n = A033439 n

end A033439

/-! ## A033439.P9548319589240557349

`∑[A145569(n)]-A145569(n)`
-/

namespace A033439.P9548319589240557349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145569 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A145569 n

end

end A033439.P9548319589240557349

namespace A033439

/-- `∑[A145569(n)]-A145569(n)` -/
def P9548319589240557349.Spec : Prop :=
  ∀ n, P9548319589240557349.a n = A033439 n

end A033439

/-! ## A033439.P8864659088766843151

`∑[∑[A109720(n)]-A109720(n)]`
-/

namespace A033439.P8864659088766843151
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109720 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A109720 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033439.P8864659088766843151

namespace A033439

/-- `∑[∑[A109720(n)]-A109720(n)]` -/
def P8864659088766843151.Spec : Prop :=
  ∀ n, P8864659088766843151.a n = A033439 n

end A033439

/-! ## A033439.P5564623445433521396

`(n+1)²-∑[A047565(n+2)]`
-/

namespace A033439.P5564623445433521396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047565 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033439.P5564623445433521396

namespace A033439

/-- `(n+1)²-∑[A047565(n+2)]` -/
def P5564623445433521396.Spec : Prop :=
  ∀ n, P5564623445433521396.a n = A033439 n

end A033439

/-! ## A033439.P4285285445573951635

`∑[A057357(n+1)+A057357(n)]`
-/

namespace A033439.P4285285445573951635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057357 (n + 1) + A057357 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033439.P4285285445573951635

namespace A033439

/-- `∑[A057357(n+1)+A057357(n)]` -/
def P4285285445573951635.Spec : Prop :=
  ∀ n, P4285285445573951635.a n = A033439 n

end A033439

/-! ## A033439.P14984423570819141071

`A011896(n+2)-A055610(n)`
-/

namespace A033439.P14984423570819141071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011896 (n + 2) - A055610 n

end

end A033439.P14984423570819141071

namespace A033439

/-- `A011896(n+2)-A055610(n)` -/
def P14984423570819141071.Spec : Prop :=
  ∀ n, P14984423570819141071.a n = A033439 n

end A033439

/-! ## A033439.P7463134159890531408

`∑[A004523(A057356(n+1)+n)]`
-/

namespace A033439.P7463134159890531408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004523 (A057356 (n + 1) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033439.P7463134159890531408

namespace A033439

/-- `∑[A004523(A057356(n+1)+n)]` -/
def P7463134159890531408.Spec : Prop :=
  ∀ n, P7463134159890531408.a n = A033439 n

end A033439

/-! ## A033439.P14951835934710400396

`∑[A004526(A082977(n+1))]`
-/

namespace A033439.P14951835934710400396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A082977 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033439.P14951835934710400396

namespace A033439

/-- `∑[A004526(A082977(n+1))]` -/
def P14951835934710400396.Spec : Prop :=
  ∀ n, P14951835934710400396.a n = A033439 n

end A033439

/-! ## A033439.P14202308862082589143

`∑[A004526(A057359(n)+n)]`
-/

namespace A033439.P14202308862082589143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A057359 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033439.P14202308862082589143

namespace A033439

/-- `∑[A004526(A057359(n)+n)]` -/
def P14202308862082589143.Spec : Prop :=
  ∀ n, P14202308862082589143.a n = A033439 n

end A033439

/-!
# A033440: Number of edges in 8-partite Turán graph of order n.

The programs for A033440, the canonical program `A033440.P767056204837865368` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033440 has offset 0).

The definition of A033440 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A033440.P767056204837865368

`∑[floor(7*n/8)]`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A033440

/-- `∑[floor(7*n/8)]` -/
def P767056204837865368.Spec : Prop :=
  ∀ n, P767056204837865368.a n = A033440 n

theorem P767056204837865368.correct : P767056204837865368.Spec := by
  intro n
  simp only [A033440]

end A033440

/-! ## A033440.P15443364402804157345

`floor(a(n-1)+7*n/8)` with `a(0)=0`
-/

namespace A033440.P15443364402804157345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ⌊(a (n - 1) : ℚ) + 7 * ((n : ℚ) / 8)⌋

end

end A033440.P15443364402804157345

namespace A033440

/-- `floor(a(n-1)+7*n/8)` -/
def P15443364402804157345.Spec : Prop :=
  ∀ n, P15443364402804157345.a n = A033440 n

end A033440

/-! ## A033440.P5136093524164015455

`floor(a(n-1)-n/8+n)` with `a(0)=0`
-/

namespace A033440.P5136093524164015455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ⌊(a (n - 1) : ℚ) - (n : ℚ) / 8 + (n : ℚ)⌋

end

end A033440.P5136093524164015455

namespace A033440

/-- `floor(a(n-1)-n/8+n)` -/
def P5136093524164015455.Spec : Prop :=
  ∀ n, P5136093524164015455.a n = A033440 n

end A033440

/-! ## A033440.P14186660296478312170

`floor(n-(n/8-a(n-1)))` with `a(0)=0`
-/

namespace A033440.P14186660296478312170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ⌊(n : ℚ) - ((n : ℚ) / 8 - (a (n - 1) : ℚ))⌋

end

end A033440.P14186660296478312170

namespace A033440

/-- `floor(n-(n/8-a(n-1)))` -/
def P14186660296478312170.Spec : Prop :=
  ∀ n, P14186660296478312170.a n = A033440 n

end A033440

/-! ## A033440.P1518122914298829855

`A000217(n)-∑[ceil(n/8)]`
-/

namespace A033440.P1518122914298829855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) / 8⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033440.P1518122914298829855

namespace A033440

/-- `A000217(n)-∑[ceil(n/8)]` -/
def P1518122914298829855.Spec : Prop :=
  ∀ n, P1518122914298829855.a n = A033440 n

end A033440

/-! ## A033440.P14717771505710209795

`a(n-1)+n-A110656(n)` with `a(0)=0`
-/

namespace A033440.P14717771505710209795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + ((n : ℤ) - A110656 n)

end

end A033440.P14717771505710209795

namespace A033440

/-- `a(n-1)+n-A110656(n)` -/
def P14717771505710209795.Spec : Prop :=
  ∀ n, P14717771505710209795.a n = A033440 n

end A033440

/-! ## A033440.P15382944142577764919

`A194221(n+1)+A011848(n)`
-/

namespace A033440.P15382944142577764919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194221 (n + 1) + A011848 n

end

end A033440.P15382944142577764919

namespace A033440

/-- `A194221(n+1)+A011848(n)` -/
def P15382944142577764919.Spec : Prop :=
  ∀ n, P15382944142577764919.a n = A033440 n

end A033440

/-! ## A033440.P16784482021190526636

`A000124(n)-A357745(n+1)`
-/

namespace A033440.P16784482021190526636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 n - A357745 (n + 1)

end

end A033440.P16784482021190526636

namespace A033440

/-- `A000124(n)-A357745(n+1)` -/
def P16784482021190526636.Spec : Prop :=
  ∀ n, P16784482021190526636.a n = A033440 n

end A033440

/-! ## A033440.P13683202516414450997

`A039823(n+1)+A011848(n)-A357745(n+1)`
-/

namespace A033440.P13683202516414450997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039823 (n + 1) + (A011848 n - A357745 (n + 1))

end

end A033440.P13683202516414450997

namespace A033440

/-- `A039823(n+1)+A011848(n)-A357745(n+1)` -/
def P13683202516414450997.Spec : Prop :=
  ∀ n, P13683202516414450997.a n = A033440 n

end A033440

/-! ## A033440.P18280014513626899835

`∑[∑[A029579(A029579(n+1))%2]]-(n+1)`
-/

namespace A033440.P18280014513626899835
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A029579 (A029579 (n + 1)).toNat) 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n + 1 : ℤ)

end

end A033440.P18280014513626899835

namespace A033440

/-- `∑[∑[A029579(A029579(n+1))%2]]-(n+1)` -/
def P18280014513626899835.Spec : Prop :=
  ∀ n, P18280014513626899835.a n = A033440 n

end A033440

/-! ## A033440.P15690787057206910583

`A025784(7*n)-(n+1)`
-/

namespace A033440.P15690787057206910583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025784 (7 * n) - (n + 1 : ℤ)

end

end A033440.P15690787057206910583

namespace A033440

/-- `A025784(7*n)-(n+1)` -/
def P15690787057206910583.Spec : Prop :=
  ∀ n, P15690787057206910583.a n = A033440 n

end A033440

/-!
# A033441: Number of edges in 9-partite Turán graph of order n.

The programs for A033441, the canonical program `A033441.P7002426787994454619` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033441 has offset 0).

The definition of A033441 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A033441.P14039823134515779350

`∑[∑[floor(atan(dr(n)))]]`
-/

namespace A033441.P14039823134515779350
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.arctan (SequenceMachineLib.digitalRoot (n : ℤ) : ℝ)⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033441.P14039823134515779350

namespace A033441

/-- `∑[∑[floor(atan(dr(n)))]]` -/
def P14039823134515779350.Spec : Prop :=
  ∀ n, P14039823134515779350.a n = A033441 n

end A033441

/-! ## A033441.P7002426787994454619

`∑[floor(8*n/9)]`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A033441

/-- `∑[floor(8*n/9)]` -/
def P7002426787994454619.Spec : Prop :=
  ∀ n, P7002426787994454619.a n = A033441 n

theorem P7002426787994454619.correct : P7002426787994454619.Spec := by
  intro n
  simp only [A033441]

end A033441

/-! ## A033441.P8957028468003013293

`n²-∑[A342851(n+1)]`
-/

namespace A033441.P8957028468003013293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342851 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033441.P8957028468003013293

namespace A033441

/-- `n²-∑[A342851(n+1)]` -/
def P8957028468003013293.Spec : Prop :=
  ∀ n, P8957028468003013293.a n = A033441 n

end A033441

/-! ## A033441.P16508160606677937566

`A000217(n)-∑[ceil(n/9)]`
-/

namespace A033441.P16508160606677937566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) / 9⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033441.P16508160606677937566

namespace A033441

/-- `A000217(n)-∑[ceil(n/9)]` -/
def P16508160606677937566.Spec : Prop :=
  ∀ n, P16508160606677937566.a n = A033441 n

end A033441

/-! ## A033441.P17783737837696951664

`n²-∑[comp[A008592(n+1)]]`
-/

namespace A033441.P17783737837696951664
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008592 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A033441.P17783737837696951664

namespace A033441

/-- `n²-∑[comp[A008592(n+1)]]` -/
def P17783737837696951664.Spec : Prop :=
  ∀ n, P17783737837696951664.a n = A033441 n

end A033441

/-! ## A033441.P5257842471857079984

`∑[n]-∑[comp[A017281(n)]-n]`
-/

namespace A033441.P5257842471857079984
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017281 n

open Classical in
def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ∑ j ∈ Finset.range (n + 1), f2 j

end

end A033441.P5257842471857079984

namespace A033441

/-- `∑[n]-∑[comp[A017281(n)]-n]` -/
def P5257842471857079984.Spec : Prop :=
  ∀ n, P5257842471857079984.a n = A033441 n

end A033441

/-! ## A033441.P9394318544518860193

`n²-∑[record[A004086(A004086(n))]]`
-/

namespace A033441.P9394318544518860193
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (A004086 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033441.P9394318544518860193

namespace A033441

/-- `n²-∑[record[A004086(A004086(n))]]` -/
def P9394318544518860193.Spec : Prop :=
  ∀ n, P9394318544518860193.a n = A033441 n

end A033441

/-! ## A033441.P8207206760953413829

`∑[n]%A263345(n+1)-∑[ceil(n/9)]`
-/

namespace A033441.P8207206760953413829
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) / 9⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (A263345 (n + 1)) - ∑ j ∈ Finset.range (n + 1), f2 j

end

end A033441.P8207206760953413829

namespace A033441

/-- `∑[n]%A263345(n+1)-∑[ceil(n/9)]` -/
def P8207206760953413829.Spec : Prop :=
  ∀ n, P8207206760953413829.a n = A033441 n

end A033441

/-! ## A033441.P16769702501602196822

`n²-∑[record[A051162(A091703(n))]]`
-/

namespace A033441.P16769702501602196822
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051162 (A091703 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033441.P16769702501602196822

namespace A033441

/-- `n²-∑[record[A051162(A091703(n))]]` -/
def P16769702501602196822.Spec : Prop :=
  ∀ n, P16769702501602196822.a n = A033441 n

end A033441

/-! ## A033441.P17880384322705940151

`n²-A114540(A266782(n))`
-/

namespace A033441.P17880384322705940151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - A114540 (A266782 n).toNat

end

end A033441.P17880384322705940151

namespace A033441

/-- `n²-A114540(A266782(n))` -/
def P17880384322705940151.Spec : Prop :=
  ∀ n, P17880384322705940151.a n = A033441 n

end A033441

/-!
# A033442: Number of edges in 10-partite Turán graph of order n.

The programs for A033442, the canonical program `A033442.P1665598957934506230` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033442 has offset 0).

The definition of A033442 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A033442.P1665598957934506230

`∑[floor(9*n/10)]`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A033442

/-- `∑[floor(9*n/10)]` -/
def P1665598957934506230.Spec : Prop :=
  ∀ n, P1665598957934506230.a n = A033442 n

theorem P1665598957934506230.correct : P1665598957934506230.Spec := by
  intro n
  simp only [A033442]

end A033442

/-! ## A033442.P3981594596715678518

`A081600(n-1)+a(n-1)` with `a(0)=0`
-/

namespace A033442.P3981594596715678518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A081600 (n - 1) + a (n - 1)

end

end A033442.P3981594596715678518

namespace A033442

/-- `A081600(n-1)+a(n-1)` -/
def P3981594596715678518.Spec : Prop :=
  ∀ n, P3981594596715678518.a n = A033442 n

end A033442

/-! ## A033442.P13014594743051010122

`∑[A081600(n)]-A081600(n)`
-/

namespace A033442.P13014594743051010122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081600 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A081600 n

end

end A033442.P13014594743051010122

namespace A033442

/-- `∑[A081600(n)]-A081600(n)` -/
def P13014594743051010122.Spec : Prop :=
  ∀ n, P13014594743051010122.a n = A033442 n

end A033442

/-! ## A033442.P570463345079218986

`∑[n-A059995(n)]+A059995(n)-n`
-/

namespace A033442.P570463345079218986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A059995 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (A059995 n - (n : ℤ))

end

end A033442.P570463345079218986

namespace A033442

/-- `∑[n-A059995(n)]+A059995(n)-n` -/
def P570463345079218986.Spec : Prop :=
  ∀ n, P570463345079218986.a n = A033442 n

end A033442

/-! ## A033442.P13194668919297604733

`n²-∑[record[A106612(n)]]`
-/

namespace A033442.P13194668919297604733
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106612 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033442.P13194668919297604733

namespace A033442

/-- `n²-∑[record[A106612(n)]]` -/
def P13194668919297604733.Spec : Prop :=
  ∀ n, P13194668919297604733.a n = A033442 n

end A033442

/-! ## A033442.P4391836243102413672

`∑[A008619(A090223(n)+n)]-(n+1)`
-/

namespace A033442.P4391836243102413672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A090223 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n + 1 : ℤ)

end

end A033442.P4391836243102413672

namespace A033442

/-- `∑[A008619(A090223(n)+n)]-(n+1)` -/
def P4391836243102413672.Spec : Prop :=
  ∀ n, P4391836243102413672.a n = A033442 n

end A033442

/-! ## A033442.P8848330150283637044

`∑[A008619(A057355(3*n))]-(n+1)`
-/

namespace A033442.P8848330150283637044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A057355 (3 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n + 1 : ℤ)

end

end A033442.P8848330150283637044

namespace A033442

/-- `∑[A008619(A057355(3*n))]-(n+1)` -/
def P8848330150283637044.Spec : Prop :=
  ∀ n, P8848330150283637044.a n = A033442 n

end A033442

/-! ## A033442.P5155906010492648461

`A055264(A008738(n))`
-/

namespace A033442.P5155906010492648461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055264 (A008738 n).toNat

end

end A033442.P5155906010492648461

namespace A033442

/-- `A055264(A008738(n))` -/
def P5155906010492648461.Spec : Prop :=
  ∀ n, P5155906010492648461.a n = A033442 n

end A033442

/-! ## A033442.P2583499604338333537

`A057353(A239492(∑[A052928(n)]))`
-/

namespace A033442.P2583499604338333537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052928 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057353 (A239492 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A033442.P2583499604338333537

namespace A033442

/-- `A057353(A239492(∑[A052928(n)]))` -/
def P2583499604338333537.Spec : Prop :=
  ∀ n, P2583499604338333537.a n = A033442 n

end A033442

/-! ## A033442.P14552744128346548646

`A057353(∑[A090223(A057353(2*n))])`
-/

namespace A033442.P14552744128346548646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090223 (A057353 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057353 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A033442.P14552744128346548646

namespace A033442

/-- `A057353(∑[A090223(A057353(2*n))])` -/
def P14552744128346548646.Spec : Prop :=
  ∀ n, P14552744128346548646.a n = A033442 n

end A033442

/-! ## A033442.P4758562945301886055

`A004526(∑[A239492(A057353(2*n))])`
-/

namespace A033442.P4758562945301886055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239492 (A057353 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A033442.P4758562945301886055

namespace A033442

/-- `A004526(∑[A239492(A057353(2*n))])` -/
def P4758562945301886055.Spec : Prop :=
  ∀ n, P4758562945301886055.a n = A033442 n

end A033442

/-! ## A033442.P9623989012852891429

`A057353(A090223(A057353(n²)))`
-/

namespace A033442.P9623989012852891429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057353 (A090223 (A057353 (n ^ 2)).toNat).toNat

end

end A033442.P9623989012852891429

namespace A033442

/-- `A057353(A090223(A057353(n²)))` -/
def P9623989012852891429.Spec : Prop :=
  ∀ n, P9623989012852891429.a n = A033442 n

end A033442

/-! ## A033442.P17829494374171964199

`A032766(A057355(A004526(n²)))`
-/

namespace A033442.P17829494374171964199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 (A057355 (A004526 (n ^ 2)).toNat).toNat

end

end A033442.P17829494374171964199

namespace A033442

/-- `A032766(A057355(A004526(n²)))` -/
def P17829494374171964199.Spec : Prop :=
  ∀ n, P17829494374171964199.a n = A033442 n

end A033442

/-! ## A033442.P4076372541556248928

`A057355(A187322(A057355(n²)))`
-/

namespace A033442.P4076372541556248928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057355 (A187322 (A057355 (n ^ 2)).toNat).toNat

end

end A033442.P4076372541556248928

namespace A033442

/-- `A057355(A187322(A057355(n²)))` -/
def P4076372541556248928.Spec : Prop :=
  ∀ n, P4076372541556248928.a n = A033442 n

end A033442

/-! ## A033442.P3423455109064590187

`A004526(A008585(A327440(n²)))`
-/

namespace A033442.P3423455109064590187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A008585 (A327440 (n ^ 2)).toNat).toNat

end

end A033442.P3423455109064590187

namespace A033442

/-- `A004526(A008585(A327440(n²)))` -/
def P3423455109064590187.Spec : Prop :=
  ∀ n, P3423455109064590187.a n = A033442 n

end A033442

/-!
# A033443: Number of edges in 11-partite Turán graph of order n.

The programs for A033443, the canonical program `A033443.P2962011147976457901` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033443 has offset 0).

The definition of A033443 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A033443.P2962011147976457901

`∑[floor(10*n/11)]`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A033443

/-- `∑[floor(10*n/11)]` -/
def P2962011147976457901.Spec : Prop :=
  ∀ n, P2962011147976457901.a n = A033443 n

theorem P2962011147976457901.correct : P2962011147976457901.Spec := by
  intro n
  simp only [A033443]

end A033443

/-! ## A033443.P6125883724358051911

`A168186(n+1)+n²-∑[A168186(n+1)]`
-/

namespace A033443.P6125883724358051911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168186 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168186 (n + 1) + ((n ^ 2 : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A033443.P6125883724358051911

namespace A033443

/-- `A168186(n+1)+n²-∑[A168186(n+1)]` -/
def P6125883724358051911.Spec : Prop :=
  ∀ n, P6125883724358051911.a n = A033443 n

end A033443

/-! ## A033443.P17981952367947994716

`A000217(n)-A008723(2*n+9)`
-/

namespace A033443.P17981952367947994716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n - A008723 (2 * n + 9)

end

end A033443.P17981952367947994716

namespace A033443

/-- `A000217(n)-A008723(2*n+9)` -/
def P17981952367947994716.Spec : Prop :=
  ∀ n, P17981952367947994716.a n = A033443 n

end A033443

/-! ## A033443.P2060091126583692078

`A000217(n)-record[A008723(n)-A028242(n)]`
-/

namespace A033443.P2060091126583692078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008723 n - A028242 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A033443.P2060091126583692078

namespace A033443

/-- `A000217(n)-record[A008723(n)-A028242(n)]` -/
def P2060091126583692078.Spec : Prop :=
  ∀ n, P2060091126583692078.a n = A033443 n

end A033443

/-! ## A033443.P3233114977376935699

`A000217(n)-record[A008723(A028242(n))]`
-/

namespace A033443.P3233114977376935699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008723 (A028242 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A033443.P3233114977376935699

namespace A033443

/-- `A000217(n)-record[A008723(A028242(n))]` -/
def P3233114977376935699.Spec : Prop :=
  ∀ n, P3233114977376935699.a n = A033443 n

end A033443

/-!
# A033444: Number of edges in 12-partite Turán graph of order n.

The programs for A033444, the canonical program `A033444.P13416078589530799631` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033444 has offset 0).

The definition of A033444 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A033444.P13416078589530799631

`∑[floor(11*n/12)]`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A033444

/-- `∑[floor(11*n/12)]` -/
def P13416078589530799631.Spec : Prop :=
  ∀ n, P13416078589530799631.a n = A033444 n

theorem P13416078589530799631.correct : P13416078589530799631.Spec := by
  intro n
  simp only [A033444]

end A033444

/-! ## A033444.P795237896350208094

`A000217(n)-∑[ceil(n/12)]`
-/

namespace A033444.P795237896350208094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) / 12⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033444.P795237896350208094

namespace A033444

/-- `A000217(n)-∑[ceil(n/12)]` -/
def P795237896350208094.Spec : Prop :=
  ∀ n, P795237896350208094.a n = A033444 n

end A033444

/-! ## A033444.P14776048444649563846

`∑[n-A342696(n)]-(n-A342696(n))`
-/

namespace A033444.P14776048444649563846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A342696 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - ((n : ℤ) - A342696 n)

end

end A033444.P14776048444649563846

namespace A033444

/-- `∑[n-A342696(n)]-(n-A342696(n))` -/
def P14776048444649563846.Spec : Prop :=
  ∀ n, P14776048444649563846.a n = A033444 n

end A033444

/-! ## A033444.P3509037337818467792

`n²-∑[record[A106614(n)]]`
-/

namespace A033444.P3509037337818467792
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106614 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033444.P3509037337818467792

namespace A033444

/-- `n²-∑[record[A106614(n)]]` -/
def P3509037337818467792.Spec : Prop :=
  ∀ n, P3509037337818467792.a n = A033444 n

end A033444

/-! ## A033444.P14861921219470140672

`A025794(A008593(n))-(n+1)`
-/

namespace A033444.P14861921219470140672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025794 (A008593 n).toNat - (n + 1 : ℤ)

end

end A033444.P14861921219470140672

namespace A033444

/-- `A025794(A008593(n))-(n+1)` -/
def P14861921219470140672.Spec : Prop :=
  ∀ n, P14861921219470140672.a n = A033444 n

end A033444

/-!
# A033445: a(n) = (n - 1)*(n^2 + n - 1).

The programs for A033445, the canonical program `A033445.P10276223466319853339` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033445 has offset 0).

The definition of A033445 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A033445.P10276223466319853339

`1-2*n+n^3`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A033445

/-- `1-2*n+n^3` -/
def P10276223466319853339.Spec : Prop :=
  ∀ n, P10276223466319853339.a n = A033445 n

theorem P10276223466319853339.correct : P10276223466319853339.Spec := by
  intro n
  simp only [A033445]

end A033445

/-! ## A033445.P12922527674181358968

`Δ[(1-C(n, 2))²+n]`
-/

namespace A033445.P12922527674181358968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (Nat.choose n 2 : ℤ)) ^ 2 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A033445.P12922527674181358968

namespace A033445

/-- `Δ[(1-C(n, 2))²+n]` -/
def P12922527674181358968.Spec : Prop :=
  ∀ n, P12922527674181358968.a n = A033445 n

end A033445

/-! ## A033445.P5215068316681307852

`lcm(1-∑[2*n], 1-n)`
-/

namespace A033445.P5215068316681307852
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (1 - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)) (1 - (n : ℤ))

end

end A033445.P5215068316681307852

namespace A033445

/-- `lcm(1-∑[2*n], 1-n)` -/
def P5215068316681307852.Spec : Prop :=
  ∀ n, (P5215068316681307852.a n : ℤ) = A033445 n

end A033445

/-! ## A033445.P6644111509516368448

`abs(or(1, n^3-n)-n)`
-/

namespace A033445.P6644111509516368448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.lor 1 ((n ^ 3 : ℤ) - (n : ℤ)) - (n : ℤ)|

end

end A033445.P6644111509516368448

namespace A033445

/-- `abs(or(1, n^3-n)-n)` -/
def P6644111509516368448.Spec : Prop :=
  ∀ n, P6644111509516368448.a n = A033445 n

end A033445

/-! ## A033445.P2312049854700957152

`Δ[C(n, 2)²-(1-n)²]`
-/

namespace A033445.P2312049854700957152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose n 2 ^ 2 : ℤ) - (1 - (n : ℤ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A033445.P2312049854700957152

namespace A033445

/-- `Δ[C(n, 2)²-(1-n)²]` -/
def P2312049854700957152.Spec : Prop :=
  ∀ n, P2312049854700957152.a n = A033445 n

end A033445

/-! ## A033445.P14211375435270302210

`(1-lcm(n, n+1))*(1-n)`
-/

namespace A033445.P14211375435270302210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (Nat.lcm n (n + 1) : ℤ)) * (1 - (n : ℤ))

end

end A033445.P14211375435270302210

namespace A033445

/-- `(1-lcm(n, n+1))*(1-n)` -/
def P14211375435270302210.Spec : Prop :=
  ∀ n, P14211375435270302210.a n = A033445 n

end A033445

/-! ## A033445.P13436322564169669398

`(n-1)*or(1, ∑[2*n]-1)`
-/

namespace A033445.P13436322564169669398
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * Int.lor 1 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1)

end

end A033445.P13436322564169669398

namespace A033445

/-- `(n-1)*or(1, ∑[2*n]-1)` -/
def P13436322564169669398.Spec : Prop :=
  ∀ n, P13436322564169669398.a n = A033445 n

end A033445

/-! ## A033445.P2699043291572131534

`(xor(1, ∑[2*n])-2)*(n-1)`
-/

namespace A033445.P2699043291572131534
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.xor 1 (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ) - 2) * ((n : ℤ) - 1)

end

end A033445.P2699043291572131534

namespace A033445

/-- `(xor(1, ∑[2*n])-2)*(n-1)` -/
def P2699043291572131534.Spec : Prop :=
  ∀ n, P2699043291572131534.a n = A033445 n

end A033445

/-! ## A033445.P14239355510283225948

`(2*C(n+1, 2)-1)*(n-1)`
-/

namespace A033445.P14239355510283225948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * Nat.choose (n + 1) 2 : ℤ) - 1) * ((n : ℤ) - 1)

end

end A033445.P14239355510283225948

namespace A033445

/-- `(2*C(n+1, 2)-1)*(n-1)` -/
def P14239355510283225948.Spec : Prop :=
  ∀ n, P14239355510283225948.a n = A033445 n

end A033445

/-! ## A033445.P14216914569550198173

`(n-1)*xor(1, (n+2)*(n-1))`
-/

namespace A033445.P14216914569550198173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * Int.xor 1 ((n + 2 : ℤ) * ((n : ℤ) - 1))

end

end A033445.P14216914569550198173

namespace A033445

/-- `(n-1)*xor(1, (n+2)*(n-1))` -/
def P14216914569550198173.Spec : Prop :=
  ∀ n, P14216914569550198173.a n = A033445 n

end A033445

/-! ## A033445.P18000401618978651266

`(n-1)*(∑[a(n-1)+2]-1)` with `a(0)=0`
-/

namespace A033445.P18000401618978651266
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 (n - 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1)

end

end A033445.P18000401618978651266

namespace A033445

/-- `(n-1)*(∑[a(n-1)+2]-1)` -/
def P18000401618978651266.Spec : Prop :=
  ∀ n, P18000401618978651266.a n = A033445 n

end A033445

/-! ## A033445.P5927525960645250529

`(C(2*n, 2)-(1-n)²)*(n-1)`
-/

namespace A033445.P5927525960645250529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.choose (2 * n) 2 : ℤ) - (1 - (n : ℤ)) ^ 2) * ((n : ℤ) - 1)

end

end A033445.P5927525960645250529

namespace A033445

/-- `(C(2*n, 2)-(1-n)²)*(n-1)` -/
def P5927525960645250529.Spec : Prop :=
  ∀ n, P5927525960645250529.a n = A033445 n

end A033445

/-! ## A033445.P18179650858282364509

`(n-1)*(n-∑[a(n-1)-2])` with `a(0)=1`
-/

namespace A033445.P18179650858282364509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * ((n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A033445.P18179650858282364509

namespace A033445

/-- `(n-1)*(n-∑[a(n-1)-2])` -/
def P18179650858282364509.Spec : Prop :=
  ∀ n, P18179650858282364509.a n = A033445 n

end A033445

/-! ## A033445.P5882687930637276500

`(∑[2*n]-gcd(n, n+1))*(n-1)`
-/

namespace A033445.P5882687930637276500
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (Nat.gcd n (n + 1) : ℤ)) * ((n : ℤ) - 1)

end

end A033445.P5882687930637276500

namespace A033445

/-- `(∑[2*n]-gcd(n, n+1))*(n-1)` -/
def P5882687930637276500.Spec : Prop :=
  ∀ n, P5882687930637276500.a n = A033445 n

end A033445

/-! ## A033445.P5112065634842560094

`(n-1)*∑[2*n-C(n, 2*n)]`
-/

namespace A033445.P5112065634842560094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - (Nat.choose n (2 * n) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A033445.P5112065634842560094

namespace A033445

/-- `(n-1)*∑[2*n-C(n, 2*n)]` -/
def P5112065634842560094.Spec : Prop :=
  ∀ n, P5112065634842560094.a n = A033445 n

end A033445

/-! ## A033445.P18309068467593757591

`floor(a(n-1)-∑[a(n-1)-6])` with `a(0)=1, a(1)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A033445.P18309068467593757591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n f1 =>
  f1 (n - 1) - 6

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  a (n - 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033445.P18309068467593757591

namespace A033445

/-- `floor(a(n-1)-∑[a(n-1)-6])` -/
def P18309068467593757591.Spec : Prop :=
  ∀ n, P18309068467593757591.a n = A033445 n

end A033445

/-! ## A033445.P11899520016237687918

`(n-1)*(∑[2*n]-gcd(n-1, n²))`
-/

namespace A033445.P11899520016237687918
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (Int.gcd ((n : ℤ) - 1) (n ^ 2 : ℤ) : ℤ))

end

end A033445.P11899520016237687918

namespace A033445

/-- `(n-1)*(∑[2*n]-gcd(n-1, n²))` -/
def P11899520016237687918.Spec : Prop :=
  ∀ n, P11899520016237687918.a n = A033445 n

end A033445

/-! ## A033445.P14894924916866081670

`(∑[and(2*n+1, 2*n)]-1)*(n-1)`
-/

namespace A033445.P14894924916866081670
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land (2 * n + 1) (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1) * ((n : ℤ) - 1)

end

end A033445.P14894924916866081670

namespace A033445

/-- `(∑[and(2*n+1, 2*n)]-1)*(n-1)` -/
def P14894924916866081670.Spec : Prop :=
  ∀ n, P14894924916866081670.a n = A033445 n

end A033445

/-! ## A033445.P1168546236895674327

`(n-1)*(n²+n-and(1, 2*n+1))`
-/

namespace A033445.P1168546236895674327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * ((n ^ 2 + n : ℤ) - (Nat.land 1 (2 * n + 1) : ℤ))

end

end A033445.P1168546236895674327

namespace A033445

/-- `(n-1)*(n²+n-and(1, 2*n+1))` -/
def P1168546236895674327.Spec : Prop :=
  ∀ n, P1168546236895674327.a n = A033445 n

theorem P1168546236895674327.correct : P1168546236895674327.Spec := by
  intro n
  simp only [A033445, Nat.add_sub_cancel, A033445.P1168546236895674327.a, A033445.P10276223466319853339.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A033445

/-! ## A033445.P11237106949753243486

`(gcd(n+3, n+2)+(n+2)*(n-1))*(n-1)`
-/

namespace A033445.P11237106949753243486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.gcd (n + 3) (n + 2) : ℤ) + (n + 2 : ℤ) * ((n : ℤ) - 1)) * ((n : ℤ) - 1)

end

end A033445.P11237106949753243486

namespace A033445

/-- `(gcd(n+3, n+2)+(n+2)*(n-1))*(n-1)` -/
def P11237106949753243486.Spec : Prop :=
  ∀ n, P11237106949753243486.a n = A033445 n

end A033445

/-!
# A033447: Initial prime in set of 4 consecutive primes with common difference 12.

The programs for A033447, there is no canonical definition to state claims against.
-/

/-! ## A033447.P14044845436156925004

`A033446(4*n+1)`
-/

namespace A033447.P14044845436156925004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033446 (4 * n + 1)

end

end A033447.P14044845436156925004

/-! ## A033447.P6632842538803932889

`A033446(A016825(n))-12`
-/

namespace A033447.P6632842538803932889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033446 (A016825 n).toNat - 12

end

end A033447.P6632842538803932889

/-! ## A033447.P14968292627388041515

`or(1, A033446(A016813(n)))`
-/

namespace A033447.P14968292627388041515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A033446 (A016813 n).toNat)

end

end A033447.P14968292627388041515

/-! ## A033447.P8606286225058018861

`A033446(A008586(n)+2)-12`
-/

namespace A033447.P8606286225058018861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033446 (A008586 n + 2).toNat - 12

end

end A033447.P8606286225058018861

/-! ## A033447.P2654588878722604260

`record[A033446(A038608(n)+1+n)]`
-/

namespace A033447.P2654588878722604260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033446 (A038608 n + 1 + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A033447.P2654588878722604260

/-! ## A033447.P12818140706651942223

`∩[A033446(n+1), A248085(n+1)]`
-/

namespace A033447.P12818140706651942223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033446 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248085 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033447.P12818140706651942223

/-! ## A033447.P17654021038607132135

`record[A033446(n+1)/A055975(n+1)]`
-/

namespace A033447.P17654021038607132135
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033446 (n + 1) : ℚ) / (A055975 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A033447.P17654021038607132135

/-! ## A033447.P12983164829699479271

`∩[A054800(n+1), A248085(n+1)]`
-/

namespace A033447.P12983164829699479271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054800 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248085 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033447.P12983164829699479271

/-! ## A033447.P14081613087142540520

`A033446(A016813(n))%A053078(n+1)`
-/

namespace A033447.P14081613087142540520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A033446 (A016813 n).toNat) (A053078 (n + 1))

end

end A033447.P14081613087142540520

/-!
# A033448: Initial prime in set of 4 consecutive primes in arithmetic progression with common difference 18.

The programs for A033448, there is no canonical definition to state claims against.
-/

/-! ## A033448.P6192640141036097772

`A033450(4*n+1)`
-/

namespace A033448.P6192640141036097772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033450 (4 * n + 1)

end

end A033448.P6192640141036097772

/-! ## A033448.P4052720528381219898

`or(1, A033450(A016813(n)))`
-/

namespace A033448.P4052720528381219898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A033450 (A016813 n).toNat)

end

end A033448.P4052720528381219898

/-! ## A033448.P4975505636908674182

`A033450(A016813(n))^A071919(A127773(n+1))`
-/

namespace A033448.P4975505636908674182
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033450 (A016813 n).toNat : ℚ) ^ (A071919 (A127773 (n + 1)).toNat : ℤ)

end

end A033448.P4975505636908674182

/-! ## A033448.P17757592893006329877

`A033450(A016813(n))*A071919(n-A002262(n))`
-/

namespace A033448.P17757592893006329877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033450 (A016813 n).toNat * A071919 ((n : ℤ) - A002262 n).toNat

end

end A033448.P17757592893006329877

/-! ## A033448.P4706987047370121490

`A033450(A016813(n))*A172453(n-A002262(n))`
-/

namespace A033448.P4706987047370121490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033450 (A016813 n).toNat * A172453 ((n : ℤ) - A002262 n).toNat

end

end A033448.P4706987047370121490

/-! ## A033448.P9917557179985902794

`A033450(A016813(n))%A052242(n+1)`
-/

namespace A033448.P9917557179985902794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A033450 (A016813 n).toNat) (A052242 (n + 1))

end

end A033448.P9917557179985902794

/-! ## A033448.P6104036398331410312

`∩[A033450(n+1), A054800(n+1)]`
-/

namespace A033448.P6104036398331410312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033450 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054800 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033448.P6104036398331410312

/-! ## A033448.P6389587861100345875

`∩[A052189(n+1), A054800(n+1)]`
-/

namespace A033448.P6389587861100345875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052189 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054800 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033448.P6389587861100345875

/-!
# A033451: Initial prime in set of 4 consecutive primes with common difference 6.

The programs for A033451, there is no canonical definition to state claims against.
-/

/-! ## A033451.P17055126868699850604

`A173892(n+1)-6`
-/

namespace A033451.P17055126868699850604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173892 (n + 1) - 6

end

end A033451.P17055126868699850604

/-! ## A033451.P10520397659645235705

`∩[A023271(n+1), A054800(n+1)]`
-/

namespace A033451.P10520397659645235705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023271 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054800 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033451.P10520397659645235705

/-! ## A033451.P7501721235409488611

`A033449(4*n+1)`
-/

namespace A033451.P7501721235409488611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033449 (4 * n + 1)

end

end A033451.P7501721235409488611

/-! ## A033451.P12204554907494044252

`A033449(A016825(n))-6`
-/

namespace A033451.P12204554907494044252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033449 (A016825 n).toNat - 6

end

end A033451.P12204554907494044252

/-! ## A033451.P352288103861269814

`A033449(A004767(n))-12`
-/

namespace A033451.P352288103861269814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033449 (A004767 n).toNat - 12

end

end A033451.P352288103861269814

/-! ## A033451.P8530688032536342306

`∩[A023271(n+1), A033449(n+1)]`
-/

namespace A033451.P8530688032536342306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023271 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033449 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033451.P8530688032536342306

/-! ## A033451.P8260529924110691612

`∩[A033449(n+1), A054800(n+1)]`
-/

namespace A033451.P8260529924110691612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033449 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054800 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033451.P8260529924110691612

/-! ## A033451.P7534144021226153051

`∩[A023271(n+1), A354284(n+1)]`
-/

namespace A033451.P7534144021226153051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023271 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354284 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033451.P7534144021226153051

/-! ## A033451.P7501847947814593698

`∩[A047948(n+1), A054800(n+1)]`
-/

namespace A033451.P7501847947814593698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047948 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054800 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033451.P7501847947814593698

/-! ## A033451.P4712303742201429397

`∩[A047948(n+1), A354284(n+1)]`
-/

namespace A033451.P4712303742201429397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047948 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354284 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033451.P4712303742201429397

/-! ## A033451.P16528666845674016034

`∩[A023271(n+1), A215607(n+1)]`
-/

namespace A033451.P16528666845674016034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023271 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215607 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033451.P16528666845674016034

/-! ## A033451.P14427066900160556810

`∩[A033449(n+1), A215607(n+1)]`
-/

namespace A033451.P14427066900160556810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033449 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215607 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033451.P14427066900160556810

/-! ## A033451.P15359044355696654252

`∩[A023241(n+1), A054800(n+1)]`
-/

namespace A033451.P15359044355696654252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023241 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054800 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033451.P15359044355696654252

/-! ## A033451.P15509914954311094376

`∩[A023241(n+1), A354284(n+1)]`
-/

namespace A033451.P15509914954311094376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023241 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354284 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033451.P15509914954311094376

/-! ## A033451.P8180328355458570376

`∩[A215607(n+1), A354284(n+1)]`
-/

namespace A033451.P8180328355458570376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215607 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354284 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033451.P8180328355458570376

/-! ## A033451.P9111656966836903809

`∩[A054800(n+1), A275682(n+1)]`
-/

namespace A033451.P9111656966836903809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054800 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275682 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033451.P9111656966836903809

/-! ## A033451.P12612673629575724873

`∩[A215607(n+1), A275682(n+1)]`
-/

namespace A033451.P12612673629575724873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215607 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275682 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033451.P12612673629575724873

/-! ## A033451.P2831191675828474665

`∩[A022885(n+1), A047948(n+1)]`
-/

namespace A033451.P2831191675828474665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022885 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047948 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033451.P2831191675828474665

/-! ## A033451.P6023001974305763752

`∩[A031924(n+1), A054800(n+1)]`
-/

namespace A033451.P6023001974305763752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031924 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054800 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033451.P6023001974305763752

/-! ## A033451.P13699369976761471724

`∩[A030430(n+1), A033449(n+1)]`
-/

namespace A033451.P13699369976761471724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030430 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033449 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033451.P13699369976761471724

/-!
# A033452: "STIRLING" transform of squares A000290.

The programs for A033452, there is no canonical definition to state claims against.
-/

/-! ## A033452.P9141642302586145014

`A005493(n)-A000110(n+1)`
-/

namespace A033452.P9141642302586145014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005493 n - A000110 (n + 1)

end

end A033452.P9141642302586145014

/-! ## A033452.P16316634183954406023

`Δ[A171859(n+1)]`
-/

namespace A033452.P16316634183954406023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171859 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A033452.P16316634183954406023

/-! ## A033452.P13151792204499287590

`A108458(A034856(n+2))`
-/

namespace A033452.P13151792204499287590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108458 (A034856 (n + 2)).toNat

end

end A033452.P13151792204499287590

/-! ## A033452.P17218010692150847093

`A059606(n)+A003128(n)`
-/

namespace A033452.P17218010692150847093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059606 n + A003128 n

end

end A033452.P17218010692150847093

/-! ## A033452.P18183927434844013113

`A011965(n)-A000110(n)`
-/

namespace A033452.P18183927434844013113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011965 n - A000110 n

end

end A033452.P18183927434844013113

/-! ## A033452.P13017433992328885569

`A011965(n)-abs(A292935(n))`
-/

namespace A033452.P13017433992328885569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011965 n - |A292935 n|

end

end A033452.P13017433992328885569

/-! ## A033452.P3073445992208905448

`A005493(n)-A011972(∑[n])`
-/

namespace A033452.P3073445992208905448
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005493 n - A011972 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A033452.P3073445992208905448

/-! ## A033452.P3891917359851083404

`A011965(n)-A011971(∑[n])`
-/

namespace A033452.P3891917359851083404
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011965 n - A011971 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A033452.P3891917359851083404

/-! ## A033452.P1707436956627501180

`A011965(n)-A095149(∑[n])`
-/

namespace A033452.P1707436956627501180
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011965 n - A095149 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A033452.P1707436956627501180

/-! ## A033452.P16347867026415776570

`A005493(n)-A123346(∑[n])`
-/

namespace A033452.P16347867026415776570
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005493 n - A123346 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A033452.P16347867026415776570

/-!
# A033453: "INVERT" transform of squares A000290.

The programs for A033453, the canonical program `A033453.P7575375721372795349` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033453 has offset 0).

The definition of A033453 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A033453.P7575375721372795349

`4*a(n-1)-2*a(n-2)+a(n-3)` with `a(0)=1, a(1)=5, a(2)=18`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A033453

/-- `4*a(n-1)-2*a(n-2)+a(n-3)` -/
def P7575375721372795349.Spec : Prop :=
  ∀ n, P7575375721372795349.a n = A033453 n

theorem P7575375721372795349.correct : P7575375721372795349.Spec := by
  intro n
  simp only [A033453]

end A033453

/-! ## A033453.P13980886808192902649

`A082679(A065475(n+1))-A082679(n)`
-/

namespace A033453.P13980886808192902649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082679 (A065475 (n + 1)).toNat - A082679 n

end

end A033453.P13980886808192902649

namespace A033453

/-- `A082679(A065475(n+1))-A082679(n)` -/
def P13980886808192902649.Spec : Prop :=
  ∀ n, P13980886808192902649.a n = A033453 n

end A033453

/-! ## A033453.P10912150775744559592

`A082679(n+2)-A082679(A028310(n))`
-/

namespace A033453.P10912150775744559592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082679 (n + 2) - A082679 (A028310 n).toNat

end

end A033453.P10912150775744559592

namespace A033453

/-- `A082679(n+2)-A082679(A028310(n))` -/
def P10912150775744559592.Spec : Prop :=
  ∀ n, P10912150775744559592.a n = A033453 n

end A033453

/-! ## A033453.P2618090194709544570

`A082679(A184985(n+2))-A082679(n)`
-/

namespace A033453.P2618090194709544570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082679 (A184985 (n + 2)).toNat - A082679 n

end

end A033453.P2618090194709544570

namespace A033453

/-- `A082679(A184985(n+2))-A082679(n)` -/
def P2618090194709544570.Spec : Prop :=
  ∀ n, P2618090194709544570.a n = A033453 n

end A033453

/-! ## A033453.P3595085474663113448

`Δ[A082679(n+1)+A082679(A028310(n))]`
-/

namespace A033453.P3595085474663113448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082679 (n + 1) + A082679 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A033453.P3595085474663113448

namespace A033453

/-- `Δ[A082679(n+1)+A082679(A028310(n))]` -/
def P3595085474663113448.Spec : Prop :=
  ∀ n, P3595085474663113448.a n = A033453 n

end A033453

/-!
# A033455: Convolution of nonzero squares A000290 with themselves.

The programs for A033455, the canonical program `A033455.P16533884470613736095` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033455 has offset 1).

The definition of A033455 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A033455.P16533884470613736095

`∑[∑[∑[∑[4*n]+1]]]`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A033455

/-- `∑[∑[∑[∑[4*n]+1]]]` -/
def P16533884470613736095.Spec : Prop :=
  ∀ n, (P16533884470613736095.a n : ℤ) = A033455 (n + 1)

theorem P16533884470613736095.correct : P16533884470613736095.Spec := by
  intro n
  simp only [A033455, Nat.add_sub_cancel]

end A033455

/-! ## A033455.P14295997106084047444

`floor(∑[∑[∑[∑[a(n-1)+4]]]])` with `a(0)=1, a(1)=4`

`floor` is left out, it is the identity on integers.
-/

namespace A033455.P14295997106084047444
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.rec [1, 4] fun n f4 =>
  f4 (n - 1) + 4

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033455.P14295997106084047444

namespace A033455

/-- `floor(∑[∑[∑[∑[a(n-1)+4]]]])` -/
def P14295997106084047444.Spec : Prop :=
  ∀ n, (P14295997106084047444.a n : ℤ) = A033455 (n + 1)

end A033455

/-! ## A033455.P2444684459697265656

`∑[∑[(n+1)²+n²]]+a(n-1)` with `a(0)=1`
-/

namespace A033455.P2444684459697265656
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2 + n ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j + a (n - 1)

end

end A033455.P2444684459697265656

namespace A033455

/-- `∑[∑[(n+1)²+n²]]+a(n-1)` -/
def P2444684459697265656.Spec : Prop :=
  ∀ n, (P2444684459697265656.a n : ℤ) = A033455 (n + 1)

end A033455

/-! ## A033455.P16898469925484580979

`2*A213547(n+1)/(n+2)`
-/

namespace A033455.P16898469925484580979
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * ((A213547 (n + 1) : ℚ) / (n + 2 : ℚ))

end

end A033455.P16898469925484580979

namespace A033455

/-- `2*A213547(n+1)/(n+2)` -/
def P16898469925484580979.Spec : Prop :=
  ∀ n, P16898469925484580979.a n = (A033455 (n + 1) : ℚ)

end A033455

/-! ## A033455.P6750347022583204899

`A034263(n)-∑[A000292(n)]`
-/

namespace A033455.P6750347022583204899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034263 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033455.P6750347022583204899

namespace A033455

/-- `A034263(n)-∑[A000292(n)]` -/
def P6750347022583204899.Spec : Prop :=
  ∀ n, P6750347022583204899.a n = A033455 (n + 1)

end A033455

/-! ## A033455.P4286935903230330555

`A095166(n+1)-A051843(n)`
-/

namespace A033455.P4286935903230330555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095166 (n + 1) - A051843 n

end

end A033455.P4286935903230330555

namespace A033455

/-- `A095166(n+1)-A051843(n)` -/
def P4286935903230330555.Spec : Prop :=
  ∀ n, P4286935903230330555.a n = A033455 (n + 1)

end A033455

/-! ## A033455.P10783197025631377982

`A053132(n+5)-A086755(n)`
-/

namespace A033455.P10783197025631377982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053132 (n + 5) - A086755 n

end

end A033455.P10783197025631377982

namespace A033455

/-- `A053132(n+5)-A086755(n)` -/
def P10783197025631377982.Spec : Prop :=
  ∀ n, P10783197025631377982.a n = A033455 (n + 1)

end A033455

/-! ## A033455.P4072902561440651498

`(A271663(n)+A005585(n+1))/2`
-/

namespace A033455.P4072902561440651498
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A271663 n + A005585 (n + 1) : ℚ) / 2

end

end A033455.P4072902561440651498

namespace A033455

/-- `(A271663(n)+A005585(n+1))/2` -/
def P4072902561440651498.Spec : Prop :=
  ∀ n, P4072902561440651498.a n = (A033455 (n + 1) : ℚ)

end A033455

/-! ## A033455.P11568650862983794895

`A002419(n+1)+A034263(n)-A051740(n)`
-/

namespace A033455.P11568650862983794895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002419 (n + 1) + (A034263 n - A051740 n)

end

end A033455.P11568650862983794895

namespace A033455

/-- `A002419(n+1)+A034263(n)-A051740(n)` -/
def P11568650862983794895.Spec : Prop :=
  ∀ n, P11568650862983794895.a n = A033455 (n + 1)

end A033455

/-! ## A033455.P15684485612344140088

`A000292(n+1)+A277935(n+1)+A277935(n+1)`
-/

namespace A033455.P15684485612344140088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (n + 1) + (A277935 (n + 1) + A277935 (n + 1))

end

end A033455.P15684485612344140088

namespace A033455

/-- `A000292(n+1)+A277935(n+1)+A277935(n+1)` -/
def P15684485612344140088.Spec : Prop :=
  ∀ n, P15684485612344140088.a n = A033455 (n + 1)

end A033455

/-! ## A033455.P6817701825971658802

`Δ[A259181(n)]`
-/

namespace A033455.P6817701825971658802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259181 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A033455.P6817701825971658802

namespace A033455

/-- `Δ[A259181(n)]` -/
def P6817701825971658802.Spec : Prop :=
  ∀ n, P6817701825971658802.a n = A033455 (n + 1)

end A033455

/-! ## A033455.P18309406512488248949

`A164938(n+2)/3`
-/

namespace A033455.P18309406512488248949
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A164938 (n + 2) : ℚ) / 3

end

end A033455.P18309406512488248949

namespace A033455

/-- `A164938(n+2)/3` -/
def P18309406512488248949.Spec : Prop :=
  ∀ n, P18309406512488248949.a n = (A033455 (n + 1) : ℚ)

end A033455

/-! ## A033455.P7184122624079282604

`Δ[A108648(n)-A108649(n)]`
-/

namespace A033455.P7184122624079282604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108648 n - A108649 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A033455.P7184122624079282604

namespace A033455

/-- `Δ[A108648(n)-A108649(n)]` -/
def P7184122624079282604.Spec : Prop :=
  ∀ n, P7184122624079282604.a n = A033455 (n + 1)

end A033455

/-! ## A033455.P14615601672676322547

`A259181(n+1)-A259181(n)`
-/

namespace A033455.P14615601672676322547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259181 (n + 1) - A259181 n

end

end A033455.P14615601672676322547

namespace A033455

/-- `A259181(n+1)-A259181(n)` -/
def P14615601672676322547.Spec : Prop :=
  ∀ n, P14615601672676322547.a n = A033455 (n + 1)

end A033455

/-! ## A033455.P4591775406664679771

`A061927(n+1)-∑[A006325(n+1)]`
-/

namespace A033455.P4591775406664679771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006325 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061927 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033455.P4591775406664679771

namespace A033455

/-- `A061927(n+1)-∑[A006325(n+1)]` -/
def P4591775406664679771.Spec : Prop :=
  ∀ n, P4591775406664679771.a n = A033455 (n + 1)

end A033455

/-! ## A033455.P8604401546755875462

`2*A081282(n+1)-A000292(n+1)`
-/

namespace A033455.P8604401546755875462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A081282 (n + 1) - A000292 (n + 1)

end

end A033455.P8604401546755875462

namespace A033455

/-- `2*A081282(n+1)-A000292(n+1)` -/
def P8604401546755875462.Spec : Prop :=
  ∀ n, P8604401546755875462.a n = A033455 (n + 1)

end A033455

/-! ## A033455.P16246198782826068364

`A002415(n+1)+A081282(n+1)+A081282(n)`
-/

namespace A033455.P16246198782826068364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002415 (n + 1) + (A081282 (n + 1) + A081282 n)

end

end A033455.P16246198782826068364

namespace A033455

/-- `A002415(n+1)+A081282(n+1)+A081282(n)` -/
def P16246198782826068364.Spec : Prop :=
  ∀ n, P16246198782826068364.a n = A033455 (n + 1)

end A033455

/-! ## A033455.P9048255532619520372

`A131211(n+2)+1`
-/

namespace A033455.P9048255532619520372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131211 (n + 2) + 1

end

end A033455.P9048255532619520372

namespace A033455

/-- `A131211(n+2)+1` -/
def P9048255532619520372.Spec : Prop :=
  ∀ n, P9048255532619520372.a n = A033455 (n + 1)

end A033455

/-! ## A033455.P17454045614020152340

`A208536(n+3)/6`
-/

namespace A033455.P17454045614020152340
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A208536 (n + 3) : ℚ) / 6

end

end A033455.P17454045614020152340

namespace A033455

/-- `A208536(n+3)/6` -/
def P17454045614020152340.Spec : Prop :=
  ∀ n, P17454045614020152340.a n = (A033455 (n + 1) : ℚ)

end A033455

/-! ## A033455.P7368459362896526437

`(A131176(n+2)+1)/3`
-/

namespace A033455.P7368459362896526437
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A131176 (n + 2) + 1 : ℚ) / 3

end

end A033455.P7368459362896526437

namespace A033455

/-- `(A131176(n+2)+1)/3` -/
def P7368459362896526437.Spec : Prop :=
  ∀ n, P7368459362896526437.a n = (A033455 (n + 1) : ℚ)

end A033455

/-!
# A033457: GCD-convolution of squares A000290 with themselves.

The programs for A033457, the canonical program `A033457.P6058291552115705490` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033457 has offset 0).

The definition of A033457 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A069097, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A033457.P6058291552115705490

`A069097(n+2)-(n+2)²`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A033457

/-- `A069097(n+2)-(n+2)²` -/
def P6058291552115705490.Spec : Prop :=
  ∀ n, P6058291552115705490.a n = A033457 n

theorem P6058291552115705490.correct : P6058291552115705490.Spec := by
  intro n
  simp only [A033457]

end A033457

/-! ## A033457.P15242255973107189260

`Δ[∑[A069097(n+1)]%∑[(n+1)²]]`
-/

namespace A033457.P15242255973107189260
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069097 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f2 j) ((∑ j ∈ Finset.range (n + 1), f3 j : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A033457.P15242255973107189260

namespace A033457

/-- `Δ[∑[A069097(n+1)]%∑[(n+1)²]]` -/
def P15242255973107189260.Spec : Prop :=
  ∀ n, P15242255973107189260.a n = A033457 n

end A033457

/-! ## A033457.P14343103189559632697

`abs(A000290(n+2)-A069097(n+2))`
-/

namespace A033457.P14343103189559632697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000290 (n + 2) - A069097 (n + 2)|

end

end A033457.P14343103189559632697

namespace A033457

/-- `abs(A000290(n+2)-A069097(n+2))` -/
def P14343103189559632697.Spec : Prop :=
  ∀ n, P14343103189559632697.a n = A033457 n

end A033457

/-! ## A033457.P11293517061889926369

`A069097(A241919(2^n)+n+1)%(n+2)²`
-/

namespace A033457.P11293517061889926369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A069097 (A241919 (2 ^ n) + (n + 1 : ℤ)).toNat) ((n + 2) ^ 2 : ℤ)

end

end A033457.P11293517061889926369

namespace A033457

/-- `A069097(A241919(2^n)+n+1)%(n+2)²` -/
def P11293517061889926369.Spec : Prop :=
  ∀ n, P11293517061889926369.a n = A033457 n

end A033457

/-!
# A033458: AND-convolution of squares A000290 with themselves.

The programs for A033458, there is no canonical definition to state claims against.
-/

/-! ## A033458.P16096512214809255619

`A033459(n)-A033460(n)`
-/

namespace A033458.P16096512214809255619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033459 n - A033460 n

end

end A033458.P16096512214809255619

/-! ## A033458.P17239935637563612383

`A033459(n)%A033460(A028310(n))`
-/

namespace A033458.P17239935637563612383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A033459 n) (A033460 (A028310 n).toNat)

end

end A033458.P17239935637563612383

/-! ## A033458.P11535221004753221760

`Δ[A008911(n+1)]-A033459(n)`
-/

namespace A033458.P11535221004753221760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008911 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A033459 n

end

end A033458.P11535221004753221760

/-! ## A033458.P2223187556034989021

`A023856(2*n+1)-A033459(n)`
-/

namespace A033458.P2223187556034989021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023856 (2 * n + 1) - A033459 n

end

end A033458.P2223187556034989021

/-! ## A033458.P13958683088940800082

`∑[A005843((n+1)²)]-A033459(n)`
-/

namespace A033458.P13958683088940800082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 ((n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A033459 n

end

end A033458.P13958683088940800082

/-!
# A033459: OR-convolution of squares A000290 with themselves.

The programs for A033459, there is no canonical definition to state claims against.
-/

/-! ## A033459.P4245914974459806886

`A033460(n)+A033458(n)`
-/

namespace A033459.P4245914974459806886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033460 n + A033458 n

end

end A033459.P4245914974459806886

/-! ## A033459.P11937549628518063249

`Δ[A008911(n+1)]-A033458(n)`
-/

namespace A033459.P11937549628518063249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008911 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A033458 n

end

end A033459.P11937549628518063249

/-! ## A033459.P16607854067076378462

`∑[A005843((n+1)²)]-A033458(n)`
-/

namespace A033459.P16607854067076378462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 ((n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A033458 n

end

end A033459.P16607854067076378462

/-!
# A033460: XOR-convolution of squares A000290 with themselves.

The programs for A033460, there is no canonical definition to state claims against.
-/

/-! ## A033460.P10155215701248078616

`A033459(n)-A033458(n)`
-/

namespace A033460.P10155215701248078616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033459 n - A033458 n

end

end A033460.P10155215701248078616

/-! ## A033460.P8433693303966269045

`Δ[A008911(n+1)]-A033458(n)-A033458(n)`
-/

namespace A033460.P8433693303966269045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008911 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A033458 n - A033458 n

end

end A033460.P8433693303966269045

/-! ## A033460.P5972803641639868638

`A033459(n)-(Δ[A008911(n+1)]-A033459(n))`
-/

namespace A033460.P5972803641639868638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008911 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033459 n - (f1 (n + 1) - f1 n - A033459 n)

end

end A033460.P5972803641639868638

/-! ## A033460.P5581927121523472025

`A033459(n)-(A023856(2*n+1)-A033459(n))`
-/

namespace A033460.P5581927121523472025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033459 n - (A023856 (2 * n + 1) - A033459 n)

end

end A033460.P5581927121523472025

/-! ## A033460.P7674470244745214912

`A033459(n)+A033458(n)*A033999(2*n+3)`
-/

namespace A033460.P7674470244745214912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033459 n + A033458 n * A033999 (2 * n + 3)

end

end A033460.P7674470244745214912

/-! ## A033460.P9312575426357028454

`∑[A005843((n+1)²)]-A033458(n)-A033458(n)`
-/

namespace A033460.P9312575426357028454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 ((n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A033458 n - A033458 n

end

end A033460.P9312575426357028454

/-! ## A033460.P17989062149142762757

`A033459(n)-(∑[A005843((n+1)²)]-A033459(n))`
-/

namespace A033460.P17989062149142762757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 ((n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033459 n - (∑ j ∈ Finset.range (n + 1), f1 j - A033459 n)

end

end A033460.P17989062149142762757

/-!
# A033461: Number of partitions of n into distinct squares.

The programs for A033461, there is no canonical definition to state claims against.
-/

/-! ## A033461.P113991992123706172

`A339367(n)+A339366(n)`
-/

namespace A033461.P113991992123706172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339367 n + A339366 n

end

end A033461.P113991992123706172

/-! ## A033461.P8124840786462508723

`A276516(n)+2*A339367(n)`
-/

namespace A033461.P8124840786462508723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276516 n + 2 * A339367 n

end

end A033461.P8124840786462508723

/-! ## A033461.P7377112399697168528

`2*A339366(n)-A276516(n)`
-/

namespace A033461.P7377112399697168528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A339366 n - A276516 n

end

end A033461.P7377112399697168528

/-! ## A033461.P17734325998105191607

`A280129(abs(1-n))+A280129(n)`
-/

namespace A033461.P17734325998105191607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280129 |1 - (n : ℤ)|.toNat + A280129 n

end

end A033461.P17734325998105191607

/-! ## A033461.P6831055572934312508

`A033985(A028310(n))+A010052(n)`
-/

namespace A033461.P6831055572934312508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033985 (A028310 n).toNat + A010052 n

end

end A033461.P6831055572934312508

/-! ## A033461.P8156511027242353447

`A034968(A331844(n))%A065608(A028263(n))`
-/

namespace A033461.P8156511027242353447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A034968 (A331844 n).toNat) (A065608 (A028263 n).toNat)

end

end A033461.P8156511027242353447

/-! ## A033461.P16382402764617399986

`A034968(A331844(n)^A178334(A207376(n+1)))`
-/

namespace A033461.P16382402764617399986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034968 (SequenceMachineLib.roundAway ((A331844 n : ℚ) ^ (A178334 (A207376 (n + 1)).toNat : ℤ))).toNat

end

end A033461.P16382402764617399986

/-! ## A033461.P8306711187123484634

`A034968(A331844(n)%A039938(n+1))`
-/

namespace A033461.P8306711187123484634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034968 (Int.tmod (A331844 n) (A039938 (n + 1))).toNat

end

end A033461.P8306711187123484634

/-! ## A033461.P18136517547174406948

`A034968(A331844(n^A178334(n)))`
-/

namespace A033461.P18136517547174406948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034968 (A331844 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A178334 n : ℤ))).toNat).toNat

end

end A033461.P18136517547174406948

/-! ## A033461.P13119432607786248525

`A034968(A331844(n)%A198277(n))`
-/

namespace A033461.P13119432607786248525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034968 (Int.tmod (A331844 n) (A198277 n)).toNat

end

end A033461.P13119432607786248525

/-! ## A033461.P7059968248994130408

`A001222(A276076(A331844(n)))`
-/

namespace A033461.P7059968248994130408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A276076 (A331844 n).toNat).toNat

end

end A033461.P7059968248994130408

/-!
# A033462: Exponential (or "EXP") transform of squares A000290.

The programs for A033462, there is no canonical definition to state claims against.
-/

/-! ## A033462.P12632111437778262219

`A279636(∑[n+3])`
-/

namespace A033462.P12632111437778262219
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279636 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A033462.P12632111437778262219

/-! ## A033462.P4789091553404753095

`A000010(gcd(n-1, 2*n))*A279636(A027379(n+1))`
-/

namespace A033462.P4789091553404753095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (Int.gcd ((n : ℤ) - 1) (2 * n : ℤ)) * A279636 (A027379 (n + 1)).toNat

end

end A033462.P4789091553404753095

/-! ## A033462.P16244923602558231550

`A007814(A017089(n))*A279636(A027379(n+1))`
-/

namespace A033462.P16244923602558231550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A017089 n).toNat * A279636 (A027379 (n + 1)).toNat

end

end A033462.P16244923602558231550

/-! ## A033462.P15377006918132035361

`A070887(A000124(n))*A279636(A027379(n+1))`
-/

namespace A033462.P15377006918132035361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070887 (A000124 n).toNat * A279636 (A027379 (n + 1)).toNat

end

end A033462.P15377006918132035361

/-! ## A033462.P16395966432715993866

`A279636(A027379(n+1))+A007814(A123036(n+1))`
-/

namespace A033462.P16395966432715993866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279636 (A027379 (n + 1)).toNat + A007814 (A123036 (n + 1)).toNat

end

end A033462.P16395966432715993866

/-!
# A033463: EXPCONV of squares A000290 with themselves.

The programs for A033463, the canonical program `A033463.P1361250914318151423` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033463 has offset 0).

The definition of A033463 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A033463.P1361250914318151423

`2^(n-4)*(n^4+6*n^3+19*n²+22*n+16)`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A033463

/-- `2^(n-4)*(n^4+6*n^3+19*n²+22*n+16)` -/
def P1361250914318151423.Spec : Prop :=
  ∀ n, P1361250914318151423.a n = (A033463 n : ℚ)

end A033463

/-! ## A033463.P12002066888952713306

`(A167614(A000124(n)+n)-(n+4))*2^n/2`
-/

namespace A033463.P12002066888952713306
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A167614 (A000124 n + (n : ℤ)).toNat - (n + 4 : ℤ)) * (2 ^ n : ℤ) : ℚ) / 2

end

end A033463.P12002066888952713306

namespace A033463

/-- `(A167614(A000124(n)+n)-(n+4))*2^n/2` -/
def P12002066888952713306.Spec : Prop :=
  ∀ n, P12002066888952713306.a n = (A033463 n : ℚ)

end A033463

/-!
# A033464: Logarithmic (or "LOG") transform of squares A000290.

The programs for A033464, there is no canonical definition to state claims against.
-/

/-! ## A033464.P9357559864250754793

`A308484(∑[n+3]+1)`
-/

namespace A033464.P9357559864250754793
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308484 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A033464.P9357559864250754793

/-!
# A033465: Numerators of the first differences of 1/(n^2 + 1).

The programs for A033465, the canonical program `A033465.P18252613577082881642` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033465 has offset 0).

The definition of A033465 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A033465.P12835606629861714789

`lcm(25, 2*n+1)/25`
-/

namespace A033465.P12835606629861714789
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 25 (2 * n + 1) : ℚ) / 25

end

end A033465.P12835606629861714789

namespace A033465

/-- `lcm(25, 2*n+1)/25` -/
def P12835606629861714789.Spec : Prop :=
  ∀ n, P12835606629861714789.a n = (A033465 n : ℚ)

end A033465

/-! ## A033465.P14709630536093281754

`Δ[n²]/gcd(25, 12-n)`
-/

namespace A033465.P14709630536093281754
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℚ) / (Int.gcd 25 (12 - (n : ℤ)) : ℚ)

end

end A033465.P14709630536093281754

namespace A033465

/-- `Δ[n²]/gcd(25, 12-n)` -/
def P14709630536093281754.Spec : Prop :=
  ∀ n, P14709630536093281754.a n = (A033465 n : ℚ)

end A033465

/-! ## A033465.P18252613577082881642

`A096431((A096431(n+1)+1)/2)`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A033465

/-- `A096431((A096431(n+1)+1)/2)` -/
def P18252613577082881642.Spec : Prop :=
  ∀ n, P18252613577082881642.a n = A033465 n

theorem P18252613577082881642.correct : P18252613577082881642.Spec := by
  intro n
  simp only [A033465]

end A033465

/-! ## A033465.P5624079227954370384

`gcd(2*n+1, A146975(2*n+1))`
-/

namespace A033465.P5624079227954370384
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (2 * n + 1 : ℤ) (A146975 (2 * n + 1))

end

end A033465.P5624079227954370384

namespace A033465

/-- `gcd(2*n+1, A146975(2*n+1))` -/
def P5624079227954370384.Spec : Prop :=
  ∀ n, (P5624079227954370384.a n : ℤ) = A033465 n

end A033465

/-! ## A033465.P18040368731289469328

`A060791(A096431(n+1))`
-/

namespace A033465.P18040368731289469328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060791 (A096431 (n + 1)).toNat

end

end A033465.P18040368731289469328

namespace A033465

/-- `A060791(A096431(n+1))` -/
def P18040368731289469328.Spec : Prop :=
  ∀ n, P18040368731289469328.a n = A033465 n

end A033465

/-! ## A033465.P14015522143772226433

`A060791(A060791(Δ[n²]))`
-/

namespace A033465.P14015522143772226433
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060791 (A060791 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat

end

end A033465.P14015522143772226433

namespace A033465

/-- `A060791(A060791(Δ[n²]))` -/
def P14015522143772226433.Spec : Prop :=
  ∀ n, P14015522143772226433.a n = A033465 n

end A033465

/-! ## A033465.P13369647500907337590

`A106611(A106611(Δ[n²]))`
-/

namespace A033465.P13369647500907337590
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106611 (A106611 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat

end

end A033465.P13369647500907337590

namespace A033465

/-- `A106611(A106611(Δ[n²]))` -/
def P13369647500907337590.Spec : Prop :=
  ∀ n, P13369647500907337590.a n = A033465 n

end A033465

/-! ## A033465.P15345145365703367060

`A106621(A106621(Δ[n²]))`
-/

namespace A033465.P15345145365703367060
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106621 (A106621 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat

end

end A033465.P15345145365703367060

namespace A033465

/-- `A106621(A106621(Δ[n²]))` -/
def P15345145365703367060.Spec : Prop :=
  ∀ n, P15345145365703367060.a n = A033465 n

end A033465

/-! ## A033465.P2412803525273771801

`A106611(A060791(2*n+1))`
-/

namespace A033465.P2412803525273771801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106611 (A060791 (2 * n + 1)).toNat

end

end A033465.P2412803525273771801

namespace A033465

/-- `A106611(A060791(2*n+1))` -/
def P2412803525273771801.Spec : Prop :=
  ∀ n, P2412803525273771801.a n = A033465 n

end A033465

/-! ## A033465.P15692789933816078574

`A060791(A106621(2*n+1))`
-/

namespace A033465.P15692789933816078574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060791 (A106621 (2 * n + 1)).toNat

end

end A033465.P15692789933816078574

namespace A033465

/-- `A060791(A106621(2*n+1))` -/
def P15692789933816078574.Spec : Prop :=
  ∀ n, P15692789933816078574.a n = A033465 n

end A033465

/-! ## A033465.P16652377496402867269

`A106621(A106611(2*n+1))`
-/

namespace A033465.P16652377496402867269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106621 (A106611 (2 * n + 1)).toNat

end

end A033465.P16652377496402867269

namespace A033465

/-- `A106621(A106611(2*n+1))` -/
def P16652377496402867269.Spec : Prop :=
  ∀ n, P16652377496402867269.a n = A033465 n

end A033465

/-! ## A033465.P2419469238408918424

`A106611(A060819(A106611(n+1+n)))`
-/

namespace A033465.P2419469238408918424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106611 (A060819 (A106611 (n + 1 + n)).toNat).toNat

end

end A033465.P2419469238408918424

namespace A033465

/-- `A106611(A060819(A106611(n+1+n)))` -/
def P2419469238408918424.Spec : Prop :=
  ∀ n, P2419469238408918424.a n = A033465 n

end A033465

/-! ## A033465.P13442126540262953048

`A106611(2*A096431(n+1))`
-/

namespace A033465.P13442126540262953048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106611 (2 * A096431 (n + 1)).toNat

end

end A033465.P13442126540262953048

namespace A033465

/-- `A106611(2*A096431(n+1))` -/
def P13442126540262953048.Spec : Prop :=
  ∀ n, P13442126540262953048.a n = A033465 n

end A033465

/-! ## A033465.P2149324047205800915

`A106611(2*A106611(2*n+1))`
-/

namespace A033465.P2149324047205800915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106611 (2 * A106611 (2 * n + 1)).toNat

end

end A033465.P2149324047205800915

namespace A033465

/-- `A106611(2*A106611(2*n+1))` -/
def P2149324047205800915.Spec : Prop :=
  ∀ n, P2149324047205800915.a n = A033465 n

end A033465

/-! ## A033465.P13107662069226147599

`A106621(2*A106621(2*n+1))`
-/

namespace A033465.P13107662069226147599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106621 (2 * A106621 (2 * n + 1)).toNat

end

end A033465.P13107662069226147599

namespace A033465

/-- `A106621(2*A106621(2*n+1))` -/
def P13107662069226147599.Spec : Prop :=
  ∀ n, P13107662069226147599.a n = A033465 n

end A033465

/-! ## A033465.P16858129095549502829

`A106611(A070291(2*n+1))`
-/

namespace A033465.P16858129095549502829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106611 (A070291 (2 * n + 1)).toNat

end

end A033465.P16858129095549502829

namespace A033465

/-- `A106611(A070291(2*n+1))` -/
def P16858129095549502829.Spec : Prop :=
  ∀ n, P16858129095549502829.a n = A033465 n

end A033465

/-! ## A033465.P3586117307274443569

`A106611(A106621(A109051(n+1+n)))`
-/

namespace A033465.P3586117307274443569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106611 (A106621 (A109051 (n + 1 + n)).toNat).toNat

end

end A033465.P3586117307274443569

namespace A033465

/-- `A106611(A106621(A109051(n+1+n)))` -/
def P3586117307274443569.Spec : Prop :=
  ∀ n, P3586117307274443569.a n = A033465 n

end A033465

/-!
# A033466: Denominators of the first differences of 1/(n^2 + 1).

The programs for A033466, there is no canonical definition to state claims against.
-/

/-! ## A033466.P2142536508021231193

`lcm(record[A163254(n+1)], A002522(n))`
-/

namespace A033466.P2142536508021231193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163254 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A002522 n)

end

end A033466.P2142536508021231193

/-! ## A033466.P5990070223001325650

`A302032(lcm(A005893(n+1), A005893(n)))`
-/

namespace A033466.P5990070223001325650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302032 (Int.lcm (A005893 (n + 1)) (A005893 n))

end

end A033466.P5990070223001325650

/-! ## A033466.P16822138260418300570

`A059029(lcm(A002522(n), A322008(n)))`
-/

namespace A033466.P16822138260418300570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059029 (Int.lcm (A002522 n) (A322008 n))

end

end A033466.P16822138260418300570

/-! ## A033466.P17548799817776472174

`A225650(A002522(n+1)*A002522(n))`
-/

namespace A033466.P17548799817776472174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225650 (A002522 (n + 1) * A002522 n).toNat

end

end A033466.P17548799817776472174

/-!
# A033467: Partial sums of sequence {1/(i^2+1): i=0..n} (numerators).

The programs for A033467, there is no canonical definition to state claims against.
-/

/-! ## A033467.P16762558320370905175

`A225395(A144263(n)+3)`
-/

namespace A033467.P16762558320370905175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225395 (A144263 n + 3).toNat

end

end A033467.P16762558320370905175

/-!
# A033468: Partial sums of sequence {1/(i^2+1): i=0..n} (denominators).

The programs for A033468, there is no canonical definition to state claims against.
-/

/-! ## A033468.P4769924105573721013

`A083346(∏[n²+1])`
-/

namespace A033468.P4769924105573721013
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083346 (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A033468.P4769924105573721013

/-! ## A033468.P8386015704459781407

`A007913(∏[∑[3^floor(n/2)]])`
-/

namespace A033468.P8386015704459781407
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (SequenceMachineLib.roundAway (∏ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A033468.P8386015704459781407

/-!
# A033469: Denominator of Bernoulli(2n,1/2).

The programs for A033469, the canonical program `A033469.P2277892960336040949` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033469 has offset 0).

The definition of A033469 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002445, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A033469.P2277892960336040949

`A081294(n)*A002445(n)`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A033469

/-- `A081294(n)*A002445(n)` -/
def P2277892960336040949.Spec : Prop :=
  ∀ n, P2277892960336040949.a n = A033469 n

theorem P2277892960336040949.correct : P2277892960336040949.Spec := by
  intro n
  simp only [A033469]

end A033469

/-! ## A033469.P15649097873358671495

`A157780(2*n)`
-/

namespace A033469.P15649097873358671495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157780 (2 * n)

end

end A033469.P15649097873358671495

namespace A033469

/-- `A157780(2*n)` -/
def P15649097873358671495.Spec : Prop :=
  ∀ n, P15649097873358671495.a n = A033469 n

end A033469

/-! ## A033469.P15700729017479605832

`A157782(2*n)`
-/

namespace A033469.P15700729017479605832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157782 (2 * n)

end

end A033469.P15700729017479605832

namespace A033469

/-- `A157782(2*n)` -/
def P15700729017479605832.Spec : Prop :=
  ∀ n, P15700729017479605832.a n = A033469 n

end A033469

/-! ## A033469.P7636994505897476609

`4^n*A001897(n)`
-/

namespace A033469.P7636994505897476609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 ^ n : ℤ) * A001897 n

end

end A033469.P7636994505897476609

namespace A033469

/-- `4^n*A001897(n)` -/
def P7636994505897476609.Spec : Prop :=
  ∀ n, P7636994505897476609.a n = A033469 n

end A033469

/-! ## A033469.P10849820559868232070

`ceil(4^n/2)*A141056(2*n)`
-/

namespace A033469.P10849820559868232070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(4 ^ n : ℚ) / 2⌉ * A141056 (2 * n)

end

end A033469.P10849820559868232070

namespace A033469

/-- `ceil(4^n/2)*A141056(2*n)` -/
def P10849820559868232070.Spec : Prop :=
  ∀ n, P10849820559868232070.a n = A033469 n

end A033469

/-! ## A033469.P17796511137337381116

`A164908(n)*A277087(n)`
-/

namespace A033469.P17796511137337381116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164908 n * A277087 n

end

end A033469.P17796511137337381116

namespace A033469

/-- `A164908(n)*A277087(n)` -/
def P17796511137337381116.Spec : Prop :=
  ∀ n, P17796511137337381116.a n = A033469 n

end A033469

/-! ## A033469.P2273944710686214661

`lcm(A000302(n), A001897(n))`
-/

namespace A033469.P2273944710686214661
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000302 n) (A001897 n)

end

end A033469.P2273944710686214661

namespace A033469

/-- `lcm(A000302(n), A001897(n))` -/
def P2273944710686214661.Spec : Prop :=
  ∀ n, (P2273944710686214661.a n : ℤ) = A033469 n

end A033469

/-! ## A033469.P13493869780953440256

`lcm(A002445(n), A262710(n))`
-/

namespace A033469.P13493869780953440256
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A002445 n) (A262710 n)

end

end A033469.P13493869780953440256

namespace A033469

/-- `lcm(A002445(n), A262710(n))` -/
def P13493869780953440256.Spec : Prop :=
  ∀ n, (P13493869780953440256.a n : ℤ) = A033469 n

end A033469

/-! ## A033469.P14730549454104626883

`Δ[A081294(n)]*A277087(n)`
-/

namespace A033469.P14730549454104626883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081294 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A277087 n

end

end A033469.P14730549454104626883

namespace A033469

/-- `Δ[A081294(n)]*A277087(n)` -/
def P14730549454104626883.Spec : Prop :=
  ∀ n, P14730549454104626883.a n = A033469 n

end A033469

/-! ## A033469.P14337483706324718310

`A027642(2*n)*A081294(n)`
-/

namespace A033469.P14337483706324718310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027642 (2 * n) * A081294 n

end

end A033469.P14337483706324718310

namespace A033469

/-- `A027642(2*n)*A081294(n)` -/
def P14337483706324718310.Spec : Prop :=
  ∀ n, P14337483706324718310.a n = A033469 n

end A033469

/-! ## A033469.P7809828199582029695

`A000302(n)*A141459(2*n)`
-/

namespace A033469.P7809828199582029695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000302 n * A141459 (2 * n)

end

end A033469.P7809828199582029695

namespace A033469

/-- `A000302(n)*A141459(2*n)` -/
def P7809828199582029695.Spec : Prop :=
  ∀ n, P7809828199582029695.a n = A033469 n

end A033469

/-! ## A033469.P13058071201615915063

`A002445(n)*A383608(2*n)`
-/

namespace A033469.P13058071201615915063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002445 n * A383608 (2 * n)

end

end A033469.P13058071201615915063

namespace A033469

/-- `A002445(n)*A383608(2*n)` -/
def P13058071201615915063.Spec : Prop :=
  ∀ n, P13058071201615915063.a n = A033469 n

end A033469

/-! ## A033469.P13024363314127436496

`A000079(n)²*A141459(2*n)`
-/

namespace A033469.P13024363314127436496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n ^ 2 * A141459 (2 * n)

end

end A033469.P13024363314127436496

namespace A033469

/-- `A000079(n)²*A141459(2*n)` -/
def P13024363314127436496.Spec : Prop :=
  ∀ n, P13024363314127436496.a n = A033469 n

end A033469

/-! ## A033469.P4185823224682208549

`lcm(A000079(n)², A027642(2*n))`
-/

namespace A033469.P4185823224682208549
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000079 n ^ 2) (A027642 (2 * n))

end

end A033469.P4185823224682208549

namespace A033469

/-- `lcm(A000079(n)², A027642(2*n))` -/
def P4185823224682208549.Spec : Prop :=
  ∀ n, (P4185823224682208549.a n : ℤ) = A033469 n

end A033469

/-! ## A033469.P11902339184237455191

`A000079(2*n)*A141459(2*n)`
-/

namespace A033469.P11902339184237455191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (2 * n) * A141459 (2 * n)

end

end A033469.P11902339184237455191

namespace A033469

/-- `A000079(2*n)*A141459(2*n)` -/
def P11902339184237455191.Spec : Prop :=
  ∀ n, P11902339184237455191.a n = A033469 n

end A033469

/-! ## A033469.P2829536533710622284

`A027642(2*n)*A158302(2*n)`
-/

namespace A033469.P2829536533710622284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027642 (2 * n) * A158302 (2 * n)

end

end A033469.P2829536533710622284

namespace A033469

/-- `A027642(2*n)*A158302(2*n)` -/
def P2829536533710622284.Spec : Prop :=
  ∀ n, P2829536533710622284.a n = A033469 n

end A033469

/-! ## A033469.P7467969100507552433

`A011782(2*n)*A176289(2*n)`
-/

namespace A033469.P7467969100507552433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (2 * n) * A176289 (2 * n)

end

end A033469.P7467969100507552433

namespace A033469

/-- `A011782(2*n)*A176289(2*n)` -/
def P7467969100507552433.Spec : Prop :=
  ∀ n, P7467969100507552433.a n = A033469 n

end A033469

/-! ## A033469.P15302784567913495165

`A141459(2*n)*A213173(2*n)`
-/

namespace A033469.P15302784567913495165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141459 (2 * n) * A213173 (2 * n)

end

end A033469.P15302784567913495165

namespace A033469

/-- `A141459(2*n)*A213173(2*n)` -/
def P15302784567913495165.Spec : Prop :=
  ∀ n, P15302784567913495165.a n = A033469 n

end A033469

/-! ## A033469.P1035979287012120628

`A141459(2*n)*A224783(2*n)`
-/

namespace A033469.P1035979287012120628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141459 (2 * n) * A224783 (2 * n)

end

end A033469.P1035979287012120628

namespace A033469

/-- `A141459(2*n)*A224783(2*n)` -/
def P1035979287012120628.Spec : Prop :=
  ∀ n, P1035979287012120628.a n = A033469 n

end A033469

/-! ## A033469.P4575467646424209765

`lcm(A141459(2*n), A164111(2*n))`
-/

namespace A033469.P4575467646424209765
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A141459 (2 * n)) (A164111 (2 * n))

end

end A033469.P4575467646424209765

namespace A033469

/-- `lcm(A141459(2*n), A164111(2*n))` -/
def P4575467646424209765.Spec : Prop :=
  ∀ n, (P4575467646424209765.a n : ℤ) = A033469 n

end A033469

/-!
# A033470: Numerator of Bernoulli(2n,1/3).

The programs for A033470, there is no canonical definition to state claims against.
-/

/-! ## A033470.P7452550603353117208

`A157799(2*n)`
-/

namespace A033470.P7452550603353117208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157799 (2 * n)

end

end A033470.P7452550603353117208

/-! ## A033470.P12573711142532862760

`or(1, A157799(A005843(n)))`
-/

namespace A033470.P12573711142532862760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A157799 (A005843 n).toNat)

end

end A033470.P12573711142532862760

/-! ## A033470.P18400462912590915371

`A157799(A004277(n))+A000038(n)`
-/

namespace A033470.P18400462912590915371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157799 (A004277 n).toNat + A000038 n

end

end A033470.P18400462912590915371

/-! ## A033470.P1672889859964077115

`A157799(A005843(n))/A158388(n)²`
-/

namespace A033470.P1672889859964077115
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A157799 (A005843 n).toNat : ℚ) / (A158388 n ^ 2 : ℚ)

end

end A033470.P1672889859964077115

/-! ## A033470.P12599529898152022505

`A157799(A005843(n))/A160357(n)²`
-/

namespace A033470.P12599529898152022505
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A157799 (A005843 n).toNat : ℚ) / (A160357 n ^ 2 : ℚ)

end

end A033470.P12599529898152022505

/-!
# A033471: Denominator of Bernoulli(2n,1/3).

The programs for A033471, there is no canonical definition to state claims against.
-/

/-! ## A033471.P12851183522881684965

`A157800(2*n)`
-/

namespace A033471.P12851183522881684965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157800 (2 * n)

end

end A033471.P12851183522881684965

/-! ## A033471.P15975180063908200764

`lcm(9^n, A002445(n))`
-/

namespace A033471.P15975180063908200764
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (9 ^ n : ℤ) (A002445 n)

end

end A033471.P15975180063908200764

/-! ## A033471.P15075676708279091048

`9^n*A285068(2*n)`
-/

namespace A033471.P15075676708279091048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (9 ^ n : ℤ) * A285068 (2 * n)

end

end A033471.P15075676708279091048

/-! ## A033471.P11054747168803275057

`A000244(n)²*A277087(n)`
-/

namespace A033471.P11054747168803275057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 n ^ 2 * A277087 n

end

end A033471.P11054747168803275057

/-! ## A033471.P3135177034930872054

`A027642(2*n)*A102518(n)`
-/

namespace A033471.P3135177034930872054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027642 (2 * n) * A102518 n

end

end A033471.P3135177034930872054

/-! ## A033471.P3295880478465080547

`A002445(n)*A133494(2*n)`
-/

namespace A033471.P3295880478465080547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002445 n * A133494 (2 * n)

end

end A033471.P3295880478465080547

/-! ## A033471.P13674279024329583262

`A000244(2*n)*A277087(n)`
-/

namespace A033471.P13674279024329583262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 (2 * n) * A277087 n

end

end A033471.P13674279024329583262

/-! ## A033471.P6394607687533282219

`lcm(A027642(2*n), A158808(n))`
-/

namespace A033471.P6394607687533282219
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A027642 (2 * n)) (A158808 n)

end

end A033471.P6394607687533282219

/-! ## A033471.P6514234279320160927

`A285068(2*n)*A352779(n)²`
-/

namespace A033471.P6514234279320160927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285068 (2 * n) * A352779 n ^ 2

end

end A033471.P6514234279320160927

/-! ## A033471.P3921783408373386519

`A285068(2*n)*A352779(2*n)`
-/

namespace A033471.P3921783408373386519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285068 (2 * n) * A352779 (2 * n)

end

end A033471.P3921783408373386519

/-!
# A033472: Number of n-vertex labeled graphs that are gracefully labeled trees.

The programs for A033472, there is no canonical definition to state claims against.
-/

/-! ## A033472.P7568357998195516580

`A020639(A016116(n))*A337274(n+1)`
-/

namespace A033472.P7568357998195516580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A016116 n).toNat * A337274 (n + 1)

end

end A033472.P7568357998195516580

/-! ## A033472.P11994283762729535427

`A001221(A001747(n+1))*A337274(n+1)`
-/

namespace A033472.P11994283762729535427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A001747 (n + 1)).toNat * A337274 (n + 1)

end

end A033472.P11994283762729535427

/-! ## A033472.P10195831610797846003

`A020639(A000010(n+1))*A337274(n+1)`
-/

namespace A033472.P10195831610797846003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A000010 (n + 1)).toNat * A337274 (n + 1)

end

end A033472.P10195831610797846003

/-! ## A033472.P2779596095408363948

`A020639(A245517(n+4))*A337274(n+1)`
-/

namespace A033472.P2779596095408363948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A245517 (n + 4)).toNat * A337274 (n + 1)

end

end A033472.P2779596095408363948

/-!
# A033475: Denominator of Bernoulli(2n,1/4).

The programs for A033475, there is no canonical definition to state claims against.
-/

/-! ## A033475.P4355692966085036192

`A157818(2*n)`
-/

namespace A033475.P4355692966085036192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157818 (2 * n)

end

end A033475.P4355692966085036192

/-! ## A033475.P16288070981710692658

`lcm(16^n, A002445(n))`
-/

namespace A033475.P16288070981710692658
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (16 ^ n : ℤ) (A002445 n)

end

end A033475.P16288070981710692658

/-! ## A033475.P11716502114877144118

`A000302(n)*A033469(n)`
-/

namespace A033475.P11716502114877144118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000302 n * A033469 n

end

end A033475.P11716502114877144118

/-! ## A033475.P547122084909605011

`A000302(n)²*A001897(n)`
-/

namespace A033475.P547122084909605011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000302 n ^ 2 * A001897 n

end

end A033475.P547122084909605011

/-! ## A033475.P6384087588117928279

`record[A009117(n)]*A002445(n)`
-/

namespace A033475.P6384087588117928279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009117 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A002445 n

end

end A033475.P6384087588117928279

/-! ## A033475.P9227568400621238627

`A000302(2*n)*A001897(n)`
-/

namespace A033475.P9227568400621238627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000302 (2 * n) * A001897 n

end

end A033475.P9227568400621238627

/-! ## A033475.P16215720840596847555

`A002445(n)*A009117(2*n)`
-/

namespace A033475.P16215720840596847555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002445 n * A009117 (2 * n)

end

end A033475.P16215720840596847555

/-! ## A033475.P5891250807822224136

`A002445(n)*A081294(2*n)`
-/

namespace A033475.P5891250807822224136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002445 n * A081294 (2 * n)

end

end A033475.P5891250807822224136

/-! ## A033475.P15220815456293429420

`A033469(n)*A224783(2*n)`
-/

namespace A033475.P15220815456293429420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033469 n * A224783 (2 * n)

end

end A033475.P15220815456293429420

/-! ## A033475.P14478238065137304413

`A164908(2*n)*A277087(n)`
-/

namespace A033475.P14478238065137304413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164908 (2 * n) * A277087 n

end

end A033475.P14478238065137304413

/-!
# A033476: Squares of primes or products of pairs of consecutive primes.

The programs for A033476, the canonical program `A033476.P2904069221429248030` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033476 has offset 0).

The definition of A033476 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A033476.P2904069221429248030

`A000040(ceil(n/2)+1)*p?[ceil(n/2)+1]`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A033476

/-- `A000040(ceil(n/2)+1)*p?[ceil(n/2)+1]` -/
def P2904069221429248030.Spec : Prop :=
  ∀ n, P2904069221429248030.a n = A033476 n

theorem P2904069221429248030.correct : P2904069221429248030.Spec := by
  intro n
  simp only [A033476]

end A033476

/-! ## A033476.P15199343872233279915

`∪[A001248(n+1), A006094(n+1)]`
-/

namespace A033476.P15199343872233279915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006094 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A033476.P15199343872233279915

namespace A033476

/-- `∪[A001248(n+1), A006094(n+1)]` -/
def P15199343872233279915.Spec : Prop :=
  ∀ n, (P15199343872233279915.a n : ℤ) = A033476 n

end A033476

/-! ## A033476.P17188604069114620322

`∪[A000040(n+1)², A006094(n+1)]`
-/

namespace A033476.P17188604069114620322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006094 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A033476.P17188604069114620322

namespace A033476

/-- `∪[A000040(n+1)², A006094(n+1)]` -/
def P17188604069114620322.Spec : Prop :=
  ∀ n, (P17188604069114620322.a n : ℤ) = A033476 n

end A033476

/-! ## A033476.P8265126898296951747

`∪[A006094(n+1), record[A259153(n+2)²]]`
-/

namespace A033476.P8265126898296951747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006094 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259153 (n + 2) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A033476.P8265126898296951747

namespace A033476

/-- `∪[A006094(n+1), record[A259153(n+2)²]]` -/
def P8265126898296951747.Spec : Prop :=
  ∀ n, (P8265126898296951747.a n : ℤ) = A033476 n

end A033476

/-! ## A033476.P8249888996471923353

`∪[A006094(n+1), (A086801(n+1)+3)²]`
-/

namespace A033476.P8249888996471923353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006094 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A086801 (n + 1) + 3) ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A033476.P8249888996471923353

namespace A033476

/-- `∪[A006094(n+1), (A086801(n+1)+3)²]` -/
def P8249888996471923353.Spec : Prop :=
  ∀ n, (P8249888996471923353.a n : ℤ) = A033476 n

end A033476

/-! ## A033476.P17611130767872626082

`∪[A006094(n+1), (A014688(n+1)-(n+1))²]`
-/

namespace A033476.P17611130767872626082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006094 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A014688 (n + 1) - (n + 1 : ℤ)) ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A033476.P17611130767872626082

namespace A033476

/-- `∪[A006094(n+1), (A014688(n+1)-(n+1))²]` -/
def P17611130767872626082.Spec : Prop :=
  ∀ n, (P17611130767872626082.a n : ℤ) = A033476 n

end A033476

/-! ## A033476.P5861046527831942459

`A000040(round(n/2)+1)*A000040(A008619(n))`
-/

namespace A033476.P5861046527831942459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.roundAway ((n : ℚ) / 2) + 1).toNat * A000040 (A008619 n).toNat

end

end A033476.P5861046527831942459

namespace A033476

/-- `A000040(round(n/2)+1)*A000040(A008619(n))` -/
def P5861046527831942459.Spec : Prop :=
  ∀ n, P5861046527831942459.a n = A033476 n

end A033476

/-! ## A033476.P9931385599390932300

`A000040(A008619(n))*A000040(A080513(n))`
-/

namespace A033476.P9931385599390932300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A008619 n).toNat * A000040 (A080513 n).toNat

end

end A033476.P9931385599390932300

namespace A033476

/-- `A000040(A008619(n))*A000040(A080513(n))` -/
def P9931385599390932300.Spec : Prop :=
  ∀ n, P9931385599390932300.a n = A033476 n

end A033476

/-! ## A033476.P12523751525827236559

`A057602(n+2)`
-/

namespace A033476.P12523751525827236559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057602 (n + 2)

end

end A033476.P12523751525827236559

namespace A033476

/-- `A057602(n+2)` -/
def P12523751525827236559.Spec : Prop :=
  ∀ n, P12523751525827236559.a n = A033476 n

end A033476

/-! ## A033476.P5933305051402557978

`record[A057602(n%a(n-1))]` with `a(0)=4, a(1)=3`
-/

namespace A033476.P5933305051402557978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [4, 3] fun n f1 =>
  A057602 (Int.tmod (n : ℤ) (f1 (n - 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A033476.P5933305051402557978

namespace A033476

/-- `record[A057602(n%a(n-1))]` -/
def P5933305051402557978.Spec : Prop :=
  ∀ n, P5933305051402557978.a n = A033476 n

end A033476

/-! ## A033476.P10279536170726701551

`A109763(n+1)*A109763(n+2)`
-/

namespace A033476.P10279536170726701551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109763 (n + 1) * A109763 (n + 2)

end

end A033476.P10279536170726701551

namespace A033476

/-- `A109763(n+1)*A109763(n+2)` -/
def P10279536170726701551.Spec : Prop :=
  ∀ n, P10279536170726701551.a n = A033476 n

end A033476

/-! ## A033476.P9048824389259404915

`A171645(n+3)/2`
-/

namespace A033476.P9048824389259404915
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A171645 (n + 3) : ℚ) / 2

end

end A033476.P9048824389259404915

namespace A033476

/-- `A171645(n+3)/2` -/
def P9048824389259404915.Spec : Prop :=
  ∀ n, P9048824389259404915.a n = (A033476 n : ℚ)

end A033476

/-! ## A033476.P14575349923256472669

`p?[A004396(n)]*p?[A004526(n)]`
-/

namespace A033476.P14575349923256472669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) * f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

end

end A033476.P14575349923256472669

namespace A033476

/-- `p?[A004396(n)]*p?[A004526(n)]` -/
def P14575349923256472669.Spec : Prop :=
  ∀ n, P14575349923256472669.a n = A033476 n

end A033476

/-! ## A033476.P14884834420888276837

`p?[A004396(n)]*p?[A008619(n)]`
-/

namespace A033476.P14884834420888276837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) * f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

end

end A033476.P14884834420888276837

namespace A033476

/-- `p?[A004396(n)]*p?[A008619(n)]` -/
def P14884834420888276837.Spec : Prop :=
  ∀ n, P14884834420888276837.a n = A033476 n

end A033476

/-! ## A033476.P8053011634699611822

`p?[A004396(n)]*p?[A123108(n)]`
-/

namespace A033476.P8053011634699611822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) * f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

end

end A033476.P8053011634699611822

namespace A033476

/-- `p?[A004396(n)]*p?[A123108(n)]` -/
def P8053011634699611822.Spec : Prop :=
  ∀ n, P8053011634699611822.a n = A033476 n

end A033476

/-! ## A033476.P4809245670807047845

`∩[A156759(n+1), A036441(n+2)]`
-/

namespace A033476.P4809245670807047845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156759 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036441 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033476.P4809245670807047845

namespace A033476

/-- `∩[A156759(n+1), A036441(n+2)]` -/
def P4809245670807047845.Spec : Prop :=
  ∀ n, (P4809245670807047845.a n : ℤ) = A033476 n

end A033476

/-! ## A033476.P10629930485252462652

`p?[round(n/2)]*p?[A186421(n)]`
-/

namespace A033476.P10629930485252462652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℚ) / 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186421 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) * f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

end

end A033476.P10629930485252462652

namespace A033476

/-- `p?[round(n/2)]*p?[A186421(n)]` -/
def P10629930485252462652.Spec : Prop :=
  ∀ n, P10629930485252462652.a n = A033476 n

end A033476

/-! ## A033476.P4059536419435177994

`∩[A076271(n+1), A156759(n+2)]`
-/

namespace A033476.P4059536419435177994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076271 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156759 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033476.P4059536419435177994

namespace A033476

/-- `∩[A076271(n+1), A156759(n+2)]` -/
def P4059536419435177994.Spec : Prop :=
  ∀ n, (P4059536419435177994.a n : ℤ) = A033476 n

end A033476

/-! ## A033476.P16418492934196378561

`∩[A143145(n+1), A156759(n+2)]`
-/

namespace A033476.P16418492934196378561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143145 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156759 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033476.P16418492934196378561

namespace A033476

/-- `∩[A143145(n+1), A156759(n+2)]` -/
def P16418492934196378561.Spec : Prop :=
  ∀ n, (P16418492934196378561.a n : ℤ) = A033476 n

end A033476

/-!
# A033477: Products p^3 or p^2*q, where {p,q} are consecutive primes.

The programs for A033477, there is no canonical definition to state claims against.
-/

/-! ## A033477.P2681990207911827995

`∩[A066311(n+1), A285508(n+1)]`
-/

namespace A033477.P2681990207911827995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066311 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285508 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033477.P2681990207911827995

/-! ## A033477.P16852779314821801724

`∩[A073491(n+1), A285508(n+1)]`
-/

namespace A033477.P16852779314821801724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073491 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285508 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033477.P16852779314821801724

/-! ## A033477.P6470149504983073698

`filter[A285508(n+1), A137794(#)]`
-/

namespace A033477.P6470149504983073698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285508 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A137794 (f1 j).toNat = 1) n)

end

end A033477.P6470149504983073698

/-! ## A033477.P16254955440920981354

`A233570(a(n-1))` with `a(0)=8`
-/

namespace A033477.P16254955440920981354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [8] fun n a =>
  A233570 (a (n - 1)).toNat

end

end A033477.P16254955440920981354

/-! ## A033477.P5886935726768368097

`∩[A046369(n+1), A069899(n+1)]`
-/

namespace A033477.P5886935726768368097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046369 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069899 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033477.P5886935726768368097

/-!
# A033478: 3x+1 sequence beginning at 3.

The programs for A033478, the canonical program `A033478.P5669988240406963583` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033478 has offset 0).

The definition of A033478 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A033478.P5669988240406963583

`a(n-3)` with `a(0)=3, a(1)=10, a(2)=5, a(3)=16, a(4)=8, a(5)=4, a(6)=2, a(7)=1`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A033478

/-- `a(n-3)` -/
def P5669988240406963583.Spec : Prop :=
  ∀ n, (P5669988240406963583.a n : ℤ) = A033478 n

theorem P5669988240406963583.correct : P5669988240406963583.Spec := by
  intro n
  simp only [A033478]

end A033478

/-!
# A033479: 3x+1 sequence beginning at 9.

The programs for A033479, the canonical program `A033479.P2080773585822601974` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033479 has offset 0).

The definition of A033479 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A033479.P2080773585822601974

`A006370(a(n-1))` with `a(0)=9`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A033479

/-- `A006370(a(n-1))` -/
def P2080773585822601974.Spec : Prop :=
  ∀ n, P2080773585822601974.a n = A033479 n

theorem P2080773585822601974.correct : P2080773585822601974.Spec := by
  intro n
  simp only [A033479]

end A033479

/-!
# A033480: 3x + 1 sequence beginning at 15.

The programs for A033480, the canonical program `A033480.P17591135087933876095` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033480 has offset 0).

The definition of A033480 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A033480.P17591135087933876095

`A006370(a(n-1))` with `a(0)=15`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A033480

/-- `A006370(a(n-1))` -/
def P17591135087933876095.Spec : Prop :=
  ∀ n, P17591135087933876095.a n = A033480 n

theorem P17591135087933876095.correct : P17591135087933876095.Spec := by
  intro n
  simp only [A033480]

end A033480

/-!
# A033481: 3x+1 sequence beginning at 21.

The programs for A033481, the canonical program `A033481.P803915225457547627` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033481 has offset 0).

The definition of A033481 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A033481.P803915225457547627

`a(n-3)` with `a(0)=21, a(1)=64, a(2)=32, a(3)=16, a(4)=8, a(5)=4, a(6)=2, a(7)=1`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A033481

/-- `a(n-3)` -/
def P803915225457547627.Spec : Prop :=
  ∀ n, (P803915225457547627.a n : ℤ) = A033481 n

theorem P803915225457547627.correct : P803915225457547627.Spec := by
  intro n
  simp only [A033481]

end A033481

/-!
# A033482: Expansion of (1+2*x-3*x^2-4*x^3+x^4)/(1-8*x^2+11*x^4).

The programs for A033482, there is no canonical definition to state claims against.
-/

/-! ## A033482.P12547751105519215608

`A054341(n)-A257510(A001470(n))`
-/

namespace A033482.P12547751105519215608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054341 n - A257510 (A001470 n).toNat

end

end A033482.P12547751105519215608

/-!
# A033483: Number of disconnected 4-valent (or quartic) graphs with n nodes.

The programs for A033483, there is no canonical definition to state claims against.
-/

/-! ## A033483.P12037429195253805904

`A033301(n)-A006820(n)`
-/

namespace A033483.P12037429195253805904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033301 n - A006820 n

end

end A033483.P12037429195253805904

/-! ## A033483.P11584281815780021048

`A185044(n)+A185043(n)`
-/

namespace A033483.P11584281815780021048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185044 n + A185043 n

end

end A033483.P11584281815780021048

/-! ## A033483.P1986359625666080345

`A185043(n)-(A185245(n)-A185044(n))`
-/

namespace A033483.P1986359625666080345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185043 n - (A185245 n - A185044 n)

end

end A033483.P1986359625666080345

/-! ## A033483.P12563463854419128133

`A185043(n)-(A185246(n)-A185044(n))`
-/

namespace A033483.P12563463854419128133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185043 n - (A185246 n - A185044 n)

end

end A033483.P12563463854419128133

/-! ## A033483.P13018848057650976868

`A185043(n)-(A185284(n)-A185044(n))`
-/

namespace A033483.P13018848057650976868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185043 n - (A185284 n - A185044 n)

end

end A033483.P13018848057650976868

/-!
# A033484: a(n) = 3*2^n - 2.

The programs for A033484, the canonical program `A033484.P10856640375789116383` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033484 has offset 0).

The definition of A033484 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*2^n-2` (program `A033484.P10856640375789116383`, by `A033484.P10856640375789116383.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A033484.P10856640375789116383

`3*2^n-2`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A033484

/-- `3*2^n-2` -/
def P10856640375789116383.Spec : Prop :=
  ∀ n, P10856640375789116383.a n = A033484 n

theorem P10856640375789116383.correct : P10856640375789116383.Spec := by
  intro n
  simp only [A033484]

end A033484

/-! ## A033484.P8005152911536838948

`2*(a(n-1)+1)` with `a(0)=1`
-/

namespace A033484.P8005152911536838948
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  2 * (a (n - 1) + 1)

end

end A033484.P8005152911536838948

namespace A033484

/-- `2*(a(n-1)+1)` -/
def P8005152911536838948.Spec : Prop :=
  ∀ n, (P8005152911536838948.a n : ℤ) = A033484 n

end A033484

/-! ## A033484.P16862149493747406563

`abs(2-lcm(3, 2^n))`
-/

namespace A033484.P16862149493747406563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - (Nat.lcm 3 (2 ^ n) : ℤ)|

end

end A033484.P16862149493747406563

namespace A033484

/-- `abs(2-lcm(3, 2^n))` -/
def P16862149493747406563.Spec : Prop :=
  ∀ n, P16862149493747406563.a n = A033484 n

end A033484

/-! ## A033484.P5268503202617864510

`∑[2*a(n-1)]` with `a(0)=1, a(1)=3`
-/

namespace A033484.P5268503202617864510
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 3] fun n f1 =>
  2 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033484.P5268503202617864510

namespace A033484

/-- `∑[2*a(n-1)]` -/
def P5268503202617864510.Spec : Prop :=
  ∀ n, (P5268503202617864510.a n : ℤ) = A033484 n

end A033484

/-! ## A033484.P2089495809907469424

`lcm(2, a(n-1)+1)` with `a(0)=1, a(1)=4`
-/

namespace A033484.P2089495809907469424
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 4] fun n a =>
  Nat.lcm 2 (a (n - 1) + 1)

end

end A033484.P2089495809907469424

namespace A033484

/-- `lcm(2, a(n-1)+1)` -/
def P2089495809907469424.Spec : Prop :=
  ∀ n, (P2089495809907469424.a n : ℤ) = A033484 n

end A033484

/-! ## A033484.P9625367708428734673

`2*or(1, a(n-1))` with `a(0)=1, a(1)=4`
-/

namespace A033484.P9625367708428734673
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 4] fun n a =>
  2 * Nat.lor 1 (a (n - 1))

end

end A033484.P9625367708428734673

namespace A033484

/-- `2*or(1, a(n-1))` -/
def P9625367708428734673.Spec : Prop :=
  ∀ n, (P9625367708428734673.a n : ℤ) = A033484 n

end A033484

/-! ## A033484.P4147301593311013521

`2*xor(1, a(n-1))` with `a(0)=1, a(1)=4`
-/

namespace A033484.P4147301593311013521
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 4] fun n a =>
  2 * Nat.xor 1 (a (n - 1))

end

end A033484.P4147301593311013521

namespace A033484

/-- `2*xor(1, a(n-1))` -/
def P4147301593311013521.Spec : Prop :=
  ∀ n, (P4147301593311013521.a n : ℤ) = A033484 n

end A033484

/-! ## A033484.P9101990710023122397

`2*(1-floor(-a(n-1)))` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A033484.P9101990710023122397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * (1 - (-a (n - 1)))

end

end A033484.P9101990710023122397

namespace A033484

/-- `2*(1-floor(-a(n-1)))` -/
def P9101990710023122397.Spec : Prop :=
  ∀ n, P9101990710023122397.a n = A033484 n

end A033484

/-! ## A033484.P12895809646762409056

`2*(1-ceil(-a(n-1)))` with `a(0)=1`

`ceil` is left out, it is the identity on integers.
-/

namespace A033484.P12895809646762409056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * (1 - (-a (n - 1)))

end

end A033484.P12895809646762409056

namespace A033484

/-- `2*(1-ceil(-a(n-1)))` -/
def P12895809646762409056.Spec : Prop :=
  ∀ n, P12895809646762409056.a n = A033484 n

end A033484

/-! ## A033484.P200286923808214861

`2*(1-round(-a(n-1)))` with `a(0)=1`

`round` is left out, it is the identity on integers.
-/

namespace A033484.P200286923808214861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * (1 - (-a (n - 1)))

end

end A033484.P200286923808214861

namespace A033484

/-- `2*(1-round(-a(n-1)))` -/
def P200286923808214861.Spec : Prop :=
  ∀ n, P200286923808214861.a n = A033484 n

end A033484

/-! ## A033484.P11413222172333668171

`∑[or(2^n, floor(2^(n-1)))]`
-/

namespace A033484.P11413222172333668171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (2 ^ n : ℤ) ⌊(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033484.P11413222172333668171

namespace A033484

/-- `∑[or(2^n, floor(2^(n-1)))]` -/
def P11413222172333668171.Spec : Prop :=
  ∀ n, P11413222172333668171.a n = A033484 n

end A033484

/-! ## A033484.P16805899614476939249

`2*(2-floor(ϕ-a(n-1)))` with `a(0)=1`
-/

namespace A033484.P16805899614476939249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * (2 - ⌊Real.goldenRatio - (a (n - 1) : ℝ)⌋)

end

end A033484.P16805899614476939249

namespace A033484

/-- `2*(2-floor(ϕ-a(n-1)))` -/
def P16805899614476939249.Spec : Prop :=
  ∀ n, P16805899614476939249.a n = A033484 n

end A033484

/-! ## A033484.P17343462771095595790

`2*(ϕ²-(ϕ-a(n-1)))` with `a(0)=1`
-/

namespace A033484.P17343462771095595790
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [1] fun n a =>
  2 * (Real.goldenRatio ^ 2 - (Real.goldenRatio - a (n - 1)))

end

end A033484.P17343462771095595790

namespace A033484

/-- `2*(ϕ²-(ϕ-a(n-1)))` -/
def P17343462771095595790.Spec : Prop :=
  ∀ n, P17343462771095595790.a n = (A033484 n : ℝ)

end A033484

/-! ## A033484.P9439537721489709881

`(a(n-1)+1)/(1-1/2)` with `a(0)=1`
-/

namespace A033484.P9439537721489709881
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (a (n - 1) + 1) / (1 - (1 : ℚ) / 2)

end

end A033484.P9439537721489709881

namespace A033484

/-- `(a(n-1)+1)/(1-1/2)` -/
def P9439537721489709881.Spec : Prop :=
  ∀ n, P9439537721489709881.a n = (A033484 n : ℚ)

end A033484

/-! ## A033484.P1377531774499522763

`4*(1-(1-a(n-1))/2)` with `a(0)=1`
-/

namespace A033484.P1377531774499522763
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  4 * (1 - (1 - a (n - 1)) / 2)

end

end A033484.P1377531774499522763

namespace A033484

/-- `4*(1-(1-a(n-1))/2)` -/
def P1377531774499522763.Spec : Prop :=
  ∀ n, P1377531774499522763.a n = (A033484 n : ℚ)

end A033484

/-! ## A033484.P11490350935534869080

`∑[a(n-1)/(1-1/2)]` with `a(0)=1, a(1)=3`
-/

namespace A033484.P11490350935534869080
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 3] fun n f1 =>
  f1 (n - 1) / (1 - (1 : ℚ) / 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033484.P11490350935534869080

namespace A033484

/-- `∑[a(n-1)/(1-1/2)]` -/
def P11490350935534869080.Spec : Prop :=
  ∀ n, P11490350935534869080.a n = (A033484 n : ℚ)

end A033484

/-! ## A033484.P3061710326268416687

`abs(a(n-1)+a(n-1)+2)` with `a(0)=1`
-/

namespace A033484.P3061710326268416687
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (a (n - 1) + 2)

end

end A033484.P3061710326268416687

namespace A033484

/-- `abs(a(n-1)+a(n-1)+2)` -/
def P3061710326268416687.Spec : Prop :=
  ∀ n, (P3061710326268416687.a n : ℤ) = A033484 n

end A033484

/-! ## A033484.P1225498500457248299

`floor(a(n-1)+a(n-1)+2)` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A033484.P1225498500457248299
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (a (n - 1) + 2)

end

end A033484.P1225498500457248299

namespace A033484

/-- `floor(a(n-1)+a(n-1)+2)` -/
def P1225498500457248299.Spec : Prop :=
  ∀ n, (P1225498500457248299.a n : ℤ) = A033484 n

end A033484

/-! ## A033484.P3995699037803895899

`ceil(a(n-1)+a(n-1)+2)` with `a(0)=1`

`ceil` is left out, it is the identity on integers.
-/

namespace A033484.P3995699037803895899
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (a (n - 1) + 2)

end

end A033484.P3995699037803895899

namespace A033484

/-- `ceil(a(n-1)+a(n-1)+2)` -/
def P3995699037803895899.Spec : Prop :=
  ∀ n, (P3995699037803895899.a n : ℤ) = A033484 n

end A033484

/-!
# A033485: a(n) = a(n-1) + a(floor(n/2)), a(1) = 1.

The programs for A033485, the canonical program `A033485.P7428668165629442739` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033485 has offset 1).

The definition of A033485 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A033485.P7428668165629442739

`a(floor((n-1)/2))+a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A033485

/-- `a(floor((n-1)/2))+a(n-1)` -/
def P7428668165629442739.Spec : Prop :=
  ∀ n, (P7428668165629442739.a n : ℤ) = A033485 (n + 1)

theorem P7428668165629442739.correct : P7428668165629442739.Spec := by
  intro n
  simp only [A033485, Nat.add_sub_cancel]

end A033485

/-! ## A033485.P11327826180423467080

`A102379(n+1)+1`
-/

namespace A033485.P11327826180423467080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102379 (n + 1) + 1

end

end A033485.P11327826180423467080

namespace A033485

/-- `A102379(n+1)+1` -/
def P11327826180423467080.Spec : Prop :=
  ∀ n, P11327826180423467080.a n = A033485 (n + 1)

end A033485

/-! ## A033485.P11372171623155460839

`A000123(n+1)/2`
-/

namespace A033485.P11372171623155460839
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000123 (n + 1) : ℚ) / 2

end

end A033485.P11372171623155460839

namespace A033485

/-- `A000123(n+1)/2` -/
def P11372171623155460839.Spec : Prop :=
  ∀ n, P11372171623155460839.a n = (A033485 (n + 1) : ℚ)

end A033485

/-! ## A033485.P13655528746468213432

`∑[A040039(abs(1-n))]`
-/

namespace A033485.P13655528746468213432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040039 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033485.P13655528746468213432

namespace A033485

/-- `∑[A040039(abs(1-n))]` -/
def P13655528746468213432.Spec : Prop :=
  ∀ n, P13655528746468213432.a n = A033485 (n + 1)

end A033485

/-! ## A033485.P8600675166793577370

`∑[ceil(Δ[A000123(n)/2])]`
-/

namespace A033485.P8600675166793577370
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000123 n : ℚ) / 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈f2 (n + 1) - f2 n⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033485.P8600675166793577370

namespace A033485

/-- `∑[ceil(Δ[A000123(n)/2])]` -/
def P8600675166793577370.Spec : Prop :=
  ∀ n, P8600675166793577370.a n = A033485 (n + 1)

end A033485

/-! ## A033485.P496059189162175227

`(A102378(n+1)+1)/2`
-/

namespace A033485.P496059189162175227
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A102378 (n + 1) + 1 : ℚ) / 2

end

end A033485.P496059189162175227

namespace A033485

/-- `(A102378(n+1)+1)/2` -/
def P496059189162175227.Spec : Prop :=
  ∀ n, P496059189162175227.a n = (A033485 (n + 1) : ℚ)

end A033485

/-! ## A033485.P5400497231301683716

`A040039(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A033485.P5400497231301683716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A040039 (n - 1) + a (n - 1)

end

end A033485.P5400497231301683716

namespace A033485

/-- `A040039(n-1)+a(n-1)` -/
def P5400497231301683716.Spec : Prop :=
  ∀ n, P5400497231301683716.a n = A033485 (n + 1)

end A033485

/-! ## A033485.P3942216628454993888

`A075535(n+1)+A062188(n)`
-/

namespace A033485.P3942216628454993888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075535 (n + 1) + A062188 n

end

end A033485.P3942216628454993888

namespace A033485

/-- `A075535(n+1)+A062188(n)` -/
def P3942216628454993888.Spec : Prop :=
  ∀ n, P3942216628454993888.a n = A033485 (n + 1)

end A033485

/-! ## A033485.P8155060497340169218

`∑[A040039(n)]+1-A040039(n)`
-/

namespace A033485.P8155060497340169218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040039 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A040039 n)

end

end A033485.P8155060497340169218

namespace A033485

/-- `∑[A040039(n)]+1-A040039(n)` -/
def P8155060497340169218.Spec : Prop :=
  ∀ n, P8155060497340169218.a n = A033485 (n + 1)

end A033485

/-! ## A033485.P474129932033870366

`Δ[∑[A000123(n)]/2]`
-/

namespace A033485.P474129932033870366
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000123 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A033485.P474129932033870366

namespace A033485

/-- `Δ[∑[A000123(n)]/2]` -/
def P474129932033870366.Spec : Prop :=
  ∀ n, P474129932033870366.a n = (A033485 (n + 1) : ℚ)

end A033485

/-! ## A033485.P3154890346760990413

`Δ[A131205(n+1)/2]`
-/

namespace A033485.P3154890346760990413
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A131205 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A033485.P3154890346760990413

namespace A033485

/-- `Δ[A131205(n+1)/2]` -/
def P3154890346760990413.Spec : Prop :=
  ∀ n, P3154890346760990413.a n = (A033485 (n + 1) : ℚ)

end A033485

/-! ## A033485.P9248141182860759723

`Δ[A022905(n+1)/3]`
-/

namespace A033485.P9248141182860759723
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A022905 (n + 1) : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A033485.P9248141182860759723

namespace A033485

/-- `Δ[A022905(n+1)/3]` -/
def P9248141182860759723.Spec : Prop :=
  ∀ n, P9248141182860759723.a n = (A033485 (n + 1) : ℚ)

end A033485

/-! ## A033485.P16359076555351105414

`(A022907(n+2)+1)/3`
-/

namespace A033485.P16359076555351105414
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A022907 (n + 2) + 1 : ℚ) / 3

end

end A033485.P16359076555351105414

namespace A033485

/-- `(A022907(n+2)+1)/3` -/
def P16359076555351105414.Spec : Prop :=
  ∀ n, P16359076555351105414.a n = (A033485 (n + 1) : ℚ)

end A033485

/-! ## A033485.P16374015907865120674

`A022907(n+2)-A102378(n+1)`
-/

namespace A033485.P16374015907865120674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022907 (n + 2) - A102378 (n + 1)

end

end A033485.P16374015907865120674

namespace A033485

/-- `A022907(n+2)-A102378(n+1)` -/
def P16374015907865120674.Spec : Prop :=
  ∀ n, P16374015907865120674.a n = A033485 (n + 1)

end A033485

/-! ## A033485.P14792298791550997272

`A346912(n+1)-A022907(n+2)`
-/

namespace A033485.P14792298791550997272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346912 (n + 1) - A022907 (n + 2)

end

end A033485.P14792298791550997272

namespace A033485

/-- `A346912(n+1)-A022907(n+2)` -/
def P14792298791550997272.Spec : Prop :=
  ∀ n, P14792298791550997272.a n = A033485 (n + 1)

end A033485

/-! ## A033485.P7055901260431665828

`A022907(n+2)+1-A000123(n+1)`
-/

namespace A033485.P7055901260431665828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022907 (n + 2) + (1 - A000123 (n + 1))

end

end A033485.P7055901260431665828

namespace A033485

/-- `A022907(n+2)+1-A000123(n+1)` -/
def P7055901260431665828.Spec : Prop :=
  ∀ n, P7055901260431665828.a n = A033485 (n + 1)

end A033485

/-! ## A033485.P714661049293444143

`A268128(n+1)+A001316(n+1)/2`
-/

namespace A033485.P714661049293444143
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A268128 (n + 1) : ℚ) + (A001316 (n + 1) : ℚ) / 2

end

end A033485.P714661049293444143

namespace A033485

/-- `A268128(n+1)+A001316(n+1)/2` -/
def P714661049293444143.Spec : Prop :=
  ∀ n, P714661049293444143.a n = (A033485 (n + 1) : ℚ)

end A033485

/-! ## A033485.P16716039462702812850

`A022905(n+2)-(A022905(n+1)+A000123(n+1))`
-/

namespace A033485.P16716039462702812850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022905 (n + 2) - (A022905 (n + 1) + A000123 (n + 1))

end

end A033485.P16716039462702812850

namespace A033485

/-- `A022905(n+2)-(A022905(n+1)+A000123(n+1))` -/
def P16716039462702812850.Spec : Prop :=
  ∀ n, P16716039462702812850.a n = A033485 (n + 1)

end A033485

/-! ## A033485.P16431460487230254361

`Δ[A022908(n+2)/3]`
-/

namespace A033485.P16431460487230254361
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A022908 (n + 2) : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A033485.P16431460487230254361

namespace A033485

/-- `Δ[A022908(n+2)/3]` -/
def P16431460487230254361.Spec : Prop :=
  ∀ n, P16431460487230254361.a n = (A033485 (n + 1) : ℚ)

end A033485

/-! ## A033485.P16732975888223256768

`Δ[A022908(n+2)]-A000123(n+1)`
-/

namespace A033485.P16732975888223256768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022908 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A000123 (n + 1)

end

end A033485.P16732975888223256768

namespace A033485

/-- `Δ[A022908(n+2)]-A000123(n+1)` -/
def P16732975888223256768.Spec : Prop :=
  ∀ n, P16732975888223256768.a n = A033485 (n + 1)

end A033485

/-!
# A033486: a(n) = n*(n + 1)*(n + 2)*(n + 3)/2.

The programs for A033486, the canonical program `A033486.P8350480419729936038` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033486 has offset 0).

The definition of A033486 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A033486.P8775526992587007420

`n*(n+1)*(n+2)*(n+3)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A033486.P8775526992587007420
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) * ((n + 1 : ℚ) * ((n + 2 : ℚ) * ((n + 3 : ℚ) / 2)))

end

end A033486.P8775526992587007420

namespace A033486

/-- `n*(n+1)*(n+2)*(n+3)/2` -/
def P8775526992587007420.Spec : Prop :=
  ∀ n, P8775526992587007420.a n = (A033486 n : ℚ)

end A033486

/-! ## A033486.P8350480419729936038

`5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` with `a(0)=0, a(1)=12, a(2)=60, a(3)=180, a(4)=420`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A033486

/-- `5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` -/
def P8350480419729936038.Spec : Prop :=
  ∀ n, P8350480419729936038.a n = A033486 n

theorem P8350480419729936038.correct : P8350480419729936038.Spec := by
  intro n
  simp only [A033486]

end A033486

/-! ## A033486.P4381866093905330151

`C(∑[n+1], 2)/(1/2)²`
-/

namespace A033486.P4381866093905330151
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℚ) / ((1 : ℚ) / 2) ^ 2

end

end A033486.P4381866093905330151

namespace A033486

/-- `C(∑[n+1], 2)/(1/2)²` -/
def P4381866093905330151.Spec : Prop :=
  ∀ n, P4381866093905330151.a n = (A033486 n : ℚ)

end A033486

/-! ## A033486.P10420692078145030283

`lcm(2, ∑[n]/Δ[1/(n+2)])`
-/

namespace A033486.P10420692078145030283
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (n + 2 : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (SequenceMachineLib.roundAway (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / (f2 (n + 1) - f2 n)))

end

end A033486.P10420692078145030283

namespace A033486

/-- `lcm(2, ∑[n]/Δ[1/(n+2)])` -/
def P10420692078145030283.Spec : Prop :=
  ∀ n, (P10420692078145030283.a n : ℤ) = A033486 n

end A033486

/-! ## A033486.P14853077058456856889

`floor(∑[a(n-1)+2]²/2)` with `a(0)=1, a(1)=4`
-/

namespace A033486.P14853077058456856889
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 4] fun n f1 =>
  f1 (n - 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℚ) / 2⌋

end

end A033486.P14853077058456856889

namespace A033486

/-- `floor(∑[a(n-1)+2]²/2)` -/
def P14853077058456856889.Spec : Prop :=
  ∀ n, P14853077058456856889.a n = A033486 n

end A033486

/-! ## A033486.P9393301373237185525

`floor((1-lcm(n+1, n+2))²/2)`
-/

namespace A033486.P9393301373237185525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((1 - (Nat.lcm (n + 1) (n + 2) : ℤ)) ^ 2 : ℚ) / 2⌋

end

end A033486.P9393301373237185525

namespace A033486

/-- `floor((1-lcm(n+1, n+2))²/2)` -/
def P9393301373237185525.Spec : Prop :=
  ∀ n, P9393301373237185525.a n = A033486 n

end A033486

/-! ## A033486.P5306361621950236786

`C(∑[2*(n+1)], 2)-∑[n+1]`
-/

namespace A033486.P5306361621950236786
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A033486.P5306361621950236786

namespace A033486

/-- `C(∑[2*(n+1)], 2)-∑[n+1]` -/
def P5306361621950236786.Spec : Prop :=
  ∀ n, P5306361621950236786.a n = A033486 n

end A033486

/-! ## A033486.P12390382723853821202

`n/∑[∑[a(n-1)+3]]^(-1)` with `a(0)=3`
-/

namespace A033486.P12390382723853821202
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [3] fun n f2 =>
  f2 (n - 1) + 3

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) ^ (-1 : ℤ)

end

end A033486.P12390382723853821202

namespace A033486

/-- `n/∑[∑[a(n-1)+3]]^(-1)` -/
def P12390382723853821202.Spec : Prop :=
  ∀ n, P12390382723853821202.a n = (A033486 n : ℚ)

end A033486

/-! ## A033486.P12371325786161056385

`(n+1)^4-(a(n-1)+(n+1)²)` with `a(0)=0`
-/

namespace A033486.P12371325786161056385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ((n + 1) ^ 4 : ℤ) - (a (n - 1) + ((n + 1) ^ 2 : ℤ))

end

end A033486.P12371325786161056385

namespace A033486

/-- `(n+1)^4-(a(n-1)+(n+1)²)` -/
def P12371325786161056385.Spec : Prop :=
  ∀ n, P12371325786161056385.a n = A033486 n

end A033486

/-! ## A033486.P462938643151727624

`(n+2)*n*(n+1)²-a(n-1)` with `a(0)=0`
-/

namespace A033486.P462938643151727624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ((n + 2) * (n * (n + 1) ^ 2) : ℤ) - a (n - 1)

end

end A033486.P462938643151727624

namespace A033486

/-- `(n+2)*n*(n+1)²-a(n-1)` -/
def P462938643151727624.Spec : Prop :=
  ∀ n, P462938643151727624.a n = A033486 n

end A033486

/-! ## A033486.P9709181088810989485

`a(n-1)+2*((n+1)^3-(n+1))` with `a(0)=0`
-/

namespace A033486.P9709181088810989485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + 2 * (((n + 1) ^ 3 : ℤ) - (n + 1 : ℤ))

end

end A033486.P9709181088810989485

namespace A033486

/-- `a(n-1)+2*((n+1)^3-(n+1))` -/
def P9709181088810989485.Spec : Prop :=
  ∀ n, P9709181088810989485.a n = A033486 n

end A033486

/-! ## A033486.P17227787069835110307

`floor(a(n-1)+2*n*(n+1)*(n+2))` with `a(0)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A033486.P17227787069835110307
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + 2 * n * ((n + 1) * (n + 2))

end

end A033486.P17227787069835110307

namespace A033486

/-- `floor(a(n-1)+2*n*(n+1)*(n+2))` -/
def P17227787069835110307.Spec : Prop :=
  ∀ n, (P17227787069835110307.a n : ℤ) = A033486 n

end A033486

/-! ## A033486.P12257998122852403101

`∑[∑[A049598(n)]]`
-/

namespace A033486.P12257998122852403101
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049598 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033486.P12257998122852403101

namespace A033486

/-- `∑[∑[A049598(n)]]` -/
def P12257998122852403101.Spec : Prop :=
  ∀ n, P12257998122852403101.a n = A033486 n

end A033486

/-! ## A033486.P12347712111280566936

`floor(A062938(n)/2)`
-/

namespace A033486.P12347712111280566936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A062938 n : ℚ) / 2⌋

end

end A033486.P12347712111280566936

namespace A033486

/-- `floor(A062938(n)/2)` -/
def P12347712111280566936.Spec : Prop :=
  ∀ n, P12347712111280566936.a n = A033486 n

end A033486

/-! ## A033486.P13221998676407793602

`∑[3*A210440(n)]`
-/

namespace A033486.P13221998676407793602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A210440 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033486.P13221998676407793602

namespace A033486

/-- `∑[3*A210440(n)]` -/
def P13221998676407793602.Spec : Prop :=
  ∀ n, P13221998676407793602.a n = A033486 n

end A033486

/-! ## A033486.P2946816372948560623

`∑[4*A027480(n)]`
-/

namespace A033486.P2946816372948560623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A027480 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033486.P2946816372948560623

namespace A033486

/-- `∑[4*A027480(n)]` -/
def P2946816372948560623.Spec : Prop :=
  ∀ n, P2946816372948560623.a n = A033486 n

end A033486

/-! ## A033486.P2309596558391101622

`A293615(n)/(n+4)`
-/

namespace A033486.P2309596558391101622
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A293615 n : ℚ) / (n + 4 : ℚ)

end

end A033486.P2309596558391101622

namespace A033486

/-- `A293615(n)/(n+4)` -/
def P2309596558391101622.Spec : Prop :=
  ∀ n, P2309596558391101622.a n = (A033486 n : ℚ)

end A033486

/-! ## A033486.P9976131836639238919

`floor(A028387(n)²/2)`
-/

namespace A033486.P9976131836639238919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A028387 n ^ 2 : ℚ) / 2⌋

end

end A033486.P9976131836639238919

namespace A033486

/-- `floor(A028387(n)²/2)` -/
def P9976131836639238919.Spec : Prop :=
  ∀ n, P9976131836639238919.a n = A033486 n

end A033486

/-! ## A033486.P14745980495434989680

`A162668(n)+A033488(n)`
-/

namespace A033486.P14745980495434989680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162668 n + A033488 n

end

end A033486.P14745980495434989680

namespace A033486

/-- `A162668(n)+A033488(n)` -/
def P14745980495434989680.Spec : Prop :=
  ∀ n, P14745980495434989680.a n = A033486 n

end A033486

/-! ## A033486.P13365526726293122977

`A163815(n)+A163102(n)`
-/

namespace A033486.P13365526726293122977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163815 n + A163102 n

end

end A033486.P13365526726293122977

namespace A033486

/-- `A163815(n)+A163102(n)` -/
def P13365526726293122977.Spec : Prop :=
  ∀ n, P13365526726293122977.a n = A033486 n

end A033486

/-!
# A033487: a(n) = n*(n+1)*(n+2)*(n+3)/4.

The programs for A033487, the canonical program `A033487.P10121530377608577329` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033487 has offset 0).

The definition of A033487 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A033487.P10121530377608577329

`n*(n+1)*(n+2)*(n+3)/4`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A033487

/-- `n*(n+1)*(n+2)*(n+3)/4` -/
def P10121530377608577329.Spec : Prop :=
  ∀ n, P10121530377608577329.a n = (A033487 n : ℚ)

end A033487

/-! ## A033487.P11883807559162359252

`lcm(∑[n]+n, ∑[n+1])`
-/

namespace A033487.P11883807559162359252
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (∑ j ∈ Finset.range (n + 1), f1 j + n) (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A033487.P11883807559162359252

namespace A033487

/-- `lcm(∑[n]+n, ∑[n+1])` -/
def P11883807559162359252.Spec : Prop :=
  ∀ n, (P11883807559162359252.a n : ℤ) = A033487 n

end A033487

/-! ## A033487.P2282324694943778173

`∑[∑[∑[a(n-1)+6]]]` with `a(0)=0`
-/

namespace A033487.P2282324694943778173
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f3 =>
  f3 (n - 1) + 6

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033487.P2282324694943778173

namespace A033487

/-- `∑[∑[∑[a(n-1)+6]]]` -/
def P2282324694943778173.Spec : Prop :=
  ∀ n, (P2282324694943778173.a n : ℤ) = A033487 n

end A033487

/-! ## A033487.P11627239903250699504

`floor((1/2-C(n+2, 2))²)`
-/

namespace A033487.P11627239903250699504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((1 : ℚ) / 2 - (Nat.choose (n + 2) 2 : ℚ)) ^ 2⌋

end

end A033487.P11627239903250699504

namespace A033487

/-- `floor((1/2-C(n+2, 2))²)` -/
def P11627239903250699504.Spec : Prop :=
  ∀ n, P11627239903250699504.a n = A033487 n

end A033487

/-! ## A033487.P11461999020549441924

`∑[n+1]²-C(n+2, 2)`
-/

namespace A033487.P11461999020549441924
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) - (Nat.choose (n + 2) 2 : ℤ)

end

end A033487.P11461999020549441924

namespace A033487

/-- `∑[n+1]²-C(n+2, 2)` -/
def P11461999020549441924.Spec : Prop :=
  ∀ n, P11461999020549441924.a n = A033487 n

end A033487

/-! ## A033487.P8583733850338367409

`C((n+1)², 2)-a(n-1)` with `a(0)=0`
-/

namespace A033487.P8583733850338367409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (Nat.choose ((n + 1) ^ 2) 2 : ℤ) - a (n - 1)

end

end A033487.P8583733850338367409

namespace A033487

/-- `C((n+1)², 2)-a(n-1)` -/
def P8583733850338367409.Spec : Prop :=
  ∀ n, P8583733850338367409.a n = A033487 n

end A033487

/-! ## A033487.P11814794634287838759

`floor(((1-lcm(n+1, n+2))/2)²)`
-/

namespace A033487.P11814794634287838759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((1 - (Nat.lcm (n + 1) (n + 2) : ℤ) : ℚ) / 2) ^ 2⌋

end

end A033487.P11814794634287838759

namespace A033487

/-- `floor(((1-lcm(n+1, n+2))/2)²)` -/
def P11814794634287838759.Spec : Prop :=
  ∀ n, P11814794634287838759.a n = A033487 n

end A033487

/-! ## A033487.P4525389398379164363

`C(n+1, 2)/∏[(n+1)/(n+3)]`
-/

namespace A033487.P4525389398379164363
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (n + 3 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 1) 2 : ℚ) / (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A033487.P4525389398379164363

namespace A033487

/-- `C(n+1, 2)/∏[(n+1)/(n+3)]` -/
def P4525389398379164363.Spec : Prop :=
  ∀ n, P4525389398379164363.a n = (A033487 n : ℚ)

end A033487

/-! ## A033487.P7230828929423576196

`a(n-1)-n/Δ[1/(n+1)]` with `a(0)=0`
-/

namespace A033487.P7230828929423576196
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) - (n : ℚ) / (f1 (n + 1) - f1 n)

end

end A033487.P7230828929423576196

namespace A033487

/-- `a(n-1)-n/Δ[1/(n+1)]` -/
def P7230828929423576196.Spec : Prop :=
  ∀ n, P7230828929423576196.a n = (A033487 n : ℚ)

end A033487

/-! ## A033487.P2063000721001629364

`∑[n+1]²-∑[(n+1)%(n+2)]`
-/

namespace A033487.P2063000721001629364
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) % (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A033487.P2063000721001629364

namespace A033487

/-- `∑[n+1]²-∑[(n+1)%(n+2)]` -/
def P2063000721001629364.Spec : Prop :=
  ∀ n, P2063000721001629364.a n = A033487 n

end A033487

/-! ## A033487.P4576234258752845973

`(n+1)^3+a(n-1)-(n+1)` with `a(0)=0`
-/

namespace A033487.P4576234258752845973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ((n + 1) ^ 3 : ℤ) + (a (n - 1) - (n + 1 : ℤ))

end

end A033487.P4576234258752845973

namespace A033487

/-- `(n+1)^3+a(n-1)-(n+1)` -/
def P4576234258752845973.Spec : Prop :=
  ∀ n, P4576234258752845973.a n = A033487 n

end A033487

/-! ## A033487.P384333801817206379

`floor(a(n-1)+(n+2)*(n²+n))` with `a(0)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A033487.P384333801817206379
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + (n + 2) * (n ^ 2 + n)

end

end A033487.P384333801817206379

namespace A033487

/-- `floor(a(n-1)+(n+2)*(n²+n))` -/
def P384333801817206379.Spec : Prop :=
  ∀ n, (P384333801817206379.a n : ℤ) = A033487 n

end A033487

/-! ## A033487.P990208652715426571

`a(n-1)+(n+1)*(n+1)²-(n+1)` with `a(0)=0`
-/

namespace A033487.P990208652715426571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + ((n + 1) * (n + 1) ^ 2 : ℤ) - (n + 1 : ℤ)

end

end A033487.P990208652715426571

namespace A033487

/-- `a(n-1)+(n+1)*(n+1)²-(n+1)` -/
def P990208652715426571.Spec : Prop :=
  ∀ n, P990208652715426571.a n = A033487 n

end A033487

/-! ## A033487.P12511601095777699655

`A033486(n)/2`
-/

namespace A033487.P12511601095777699655
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033486 n : ℚ) / 2

end

end A033487.P12511601095777699655

namespace A033487

/-- `A033486(n)/2` -/
def P12511601095777699655.Spec : Prop :=
  ∀ n, P12511601095777699655.a n = (A033487 n : ℚ)

end A033487

/-! ## A033487.P16021486827856785992

`∑[sqrt(A099764(n))]`
-/

namespace A033487.P16021486827856785992
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A099764 n : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033487.P16021486827856785992

namespace A033487

/-- `∑[sqrt(A099764(n))]` -/
def P16021486827856785992.Spec : Prop :=
  ∀ n, P16021486827856785992.a n = (A033487 n : ℝ)

end A033487

/-! ## A033487.P5199451255174513739

`∑[∑[A028896(n)]]`
-/

namespace A033487.P5199451255174513739
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028896 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033487.P5199451255174513739

namespace A033487

/-- `∑[∑[A028896(n)]]` -/
def P5199451255174513739.Spec : Prop :=
  ∀ n, P5199451255174513739.a n = A033487 n

end A033487

/-! ## A033487.P15685502958489039594

`(A062938(n)-1)/4`
-/

namespace A033487.P15685502958489039594
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062938 n - 1 : ℚ) / 4

end

end A033487.P15685502958489039594

namespace A033487

/-- `(A062938(n)-1)/4` -/
def P15685502958489039594.Spec : Prop :=
  ∀ n, P15685502958489039594.a n = (A033487 n : ℚ)

end A033487

/-! ## A033487.P647292246633487925

`A071910(n)/∑[n+1]`
-/

namespace A033487.P647292246633487925
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A071910 n : ℚ) / ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ)

end

end A033487.P647292246633487925

namespace A033487

/-- `A071910(n)/∑[n+1]` -/
def P647292246633487925.Spec : Prop :=
  ∀ n, P647292246633487925.a n = (A033487 n : ℚ)

end A033487

/-! ## A033487.P13846529912195420117

`∑[A126420(n+1)]+n+1`
-/

namespace A033487.P13846529912195420117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126420 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n + 1 : ℤ)

end

end A033487.P13846529912195420117

namespace A033487

/-- `∑[A126420(n+1)]+n+1` -/
def P13846529912195420117.Spec : Prop :=
  ∀ n, P13846529912195420117.a n = A033487 n

end A033487

/-!
# A033488: a(n) = n*(n+1)*(n+2)*(n+3)/6.

The programs for A033488, the canonical program `A033488.P6964508228551824834` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033488 has offset 0).

The definition of A033488 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A033488.P6964508228551824834

`n*(n+1)*(n+2)*(n+3)/6`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A033488

/-- `n*(n+1)*(n+2)*(n+3)/6` -/
def P6964508228551824834.Spec : Prop :=
  ∀ n, P6964508228551824834.a n = (A033488 n : ℚ)

end A033488

/-! ## A033488.P5655151024018487818

`floor(n/acot(∑[∑[n+1]]))`
-/

namespace A033488.P5655151024018487818
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) / SequenceMachineLib.acot ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ)⌋

end

end A033488.P5655151024018487818

namespace A033488

/-- `floor(n/acot(∑[∑[n+1]]))` -/
def P5655151024018487818.Spec : Prop :=
  ∀ n, P5655151024018487818.a n = A033488 n

end A033488

/-! ## A033488.P8807509112832787122

`round(n/acot(∑[∑[n+1]]))`
-/

namespace A033488.P8807509112832787122
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℝ) / SequenceMachineLib.acot ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ))

end

end A033488.P8807509112832787122

namespace A033488

/-- `round(n/acot(∑[∑[n+1]]))` -/
def P8807509112832787122.Spec : Prop :=
  ∀ n, P8807509112832787122.a n = A033488 n

end A033488

/-! ## A033488.P6617058057063048071

`n/tan(acot(∑[∑[n+1]]))`
-/

namespace A033488.P6617058057063048071
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n : ℝ) / Real.tan (SequenceMachineLib.acot ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ))

end

end A033488.P6617058057063048071

namespace A033488

/-- `n/tan(acot(∑[∑[n+1]]))` -/
def P6617058057063048071.Spec : Prop :=
  ∀ n, P6617058057063048071.a n = (A033488 n : ℝ)

end A033488

/-! ## A033488.P15339561046466487305

`C(n+3, 4)/(1/2)²`
-/

namespace A033488.P15339561046466487305
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 3) 4 : ℚ) / ((1 : ℚ) / 2) ^ 2

end

end A033488.P15339561046466487305

namespace A033488

/-- `C(n+3, 4)/(1/2)²` -/
def P15339561046466487305.Spec : Prop :=
  ∀ n, P15339561046466487305.a n = (A033488 n : ℚ)

end A033488

/-! ## A033488.P15343414314812946660

`n/C(n+3, 3)^-1`
-/

namespace A033488.P15343414314812946660
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (Nat.choose (n + 3) 3 : ℚ) ^ (-1 : ℤ)

end

end A033488.P15343414314812946660

namespace A033488

/-- `n/C(n+3, 3)^-1` -/
def P15343414314812946660.Spec : Prop :=
  ∀ n, P15343414314812946660.a n = (A033488 n : ℚ)

end A033488

/-! ## A033488.P16991578119282480295

`∑[∑[∑[lcm(2, 2*2*n)]]]`
-/

namespace A033488.P16991578119282480295
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 (2 * (2 * n))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033488.P16991578119282480295

namespace A033488

/-- `∑[∑[∑[lcm(2, 2*2*n)]]]` -/
def P16991578119282480295.Spec : Prop :=
  ∀ n, (P16991578119282480295.a n : ℤ) = A033488 n

end A033488

/-! ## A033488.P6064626767637715462

`∑[∑[∑[a(n-1)+4]]]` with `a(0)=0`
-/

namespace A033488.P6064626767637715462
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f3 =>
  f3 (n - 1) + 4

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033488.P6064626767637715462

namespace A033488

/-- `∑[∑[∑[a(n-1)+4]]]` -/
def P6064626767637715462.Spec : Prop :=
  ∀ n, (P6064626767637715462.a n : ℤ) = A033488 n

end A033488

/-! ## A033488.P3389949257539791553

`∑[∑[∑[lt[n+1, xor(3, n)]]]]`
-/

namespace A033488.P3389949257539791553
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f4 j < f5 j) n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033488.P3389949257539791553

namespace A033488

/-- `∑[∑[∑[lt[n+1, xor(3, n)]]]]` -/
def P3389949257539791553.Spec : Prop :=
  ∀ n, (P3389949257539791553.a n : ℤ) = A033488 n

end A033488

/-! ## A033488.P16311508343642959305

`∑[∑[∑[∩[4*n, 2*n]]]]`
-/

namespace A033488.P16311508343642959305
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f4 j = x) ∧ ∃ j, f5 j = x) n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033488.P16311508343642959305

namespace A033488

/-- `∑[∑[∑[∩[4*n, 2*n]]]]` -/
def P16311508343642959305.Spec : Prop :=
  ∀ n, (P16311508343642959305.a n : ℤ) = A033488 n

end A033488

/-! ## A033488.P12820506656388176547

`∑[∑[(2*n)²-a(n-1)]]` with `a(0)=0`
-/

namespace A033488.P12820506656388176547
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f2 =>
  ((2 * n) ^ 2 : ℤ) - f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033488.P12820506656388176547

namespace A033488

/-- `∑[∑[(2*n)²-a(n-1)]]` -/
def P12820506656388176547.Spec : Prop :=
  ∀ n, P12820506656388176547.a n = A033488 n

end A033488

/-! ## A033488.P4671955873164844974

`∑[∑[gcd(2, 2*n)*∑[2*n]]]`
-/

namespace A033488.P4671955873164844974
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 (2 * n) * (∑ j ∈ Finset.range (n + 1), f3 j)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033488.P4671955873164844974

namespace A033488

/-- `∑[∑[gcd(2, 2*n)*∑[2*n]]]` -/
def P4671955873164844974.Spec : Prop :=
  ∀ n, (P4671955873164844974.a n : ℤ) = A033488 n

end A033488

/-! ## A033488.P1166183678918363046

`a(n-1)/(1-4/(n+3))` with `a(0)=0, a(1)=4`
-/

namespace A033488.P1166183678918363046
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 4] fun n a =>
  a (n - 1) / (1 - 4 / (n + 3 : ℚ))

end

end A033488.P1166183678918363046

namespace A033488

/-- `a(n-1)/(1-4/(n+3))` -/
def P1166183678918363046.Spec : Prop :=
  ∀ n, P1166183678918363046.a n = (A033488 n : ℚ)

end A033488

/-! ## A033488.P5135483090921166600

`a(n-1)-∑[∑[a(n-1)-4]]` with `a(0)=0`
-/

namespace A033488.P5135483090921166600
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f2 =>
  f2 (n - 1) - 4

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033488.P5135483090921166600

namespace A033488

/-- `a(n-1)-∑[∑[a(n-1)-4]]` -/
def P5135483090921166600.Spec : Prop :=
  ∀ n, P5135483090921166600.a n = A033488 n

end A033488

/-! ## A033488.P16581709896443810896

`a(n-1)-4/(1-n)*a(n-1)` with `a(0)=0, a(1)=4`
-/

namespace A033488.P16581709896443810896
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 4] fun n a =>
  a (n - 1) - 4 / (1 - (n : ℤ) : ℚ) * a (n - 1)

end

end A033488.P16581709896443810896

namespace A033488

/-- `a(n-1)-4/(1-n)*a(n-1)` -/
def P16581709896443810896.Spec : Prop :=
  ∀ n, P16581709896443810896.a n = (A033488 n : ℚ)

end A033488

/-! ## A033488.P15057520469159358522

`∑[A210440(n)]`
-/

namespace A033488.P15057520469159358522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210440 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033488.P15057520469159358522

namespace A033488

/-- `∑[A210440(n)]` -/
def P15057520469159358522.Spec : Prop :=
  ∀ n, P15057520469159358522.a n = A033488 n

end A033488

/-! ## A033488.P16403614995097415470

`A162668(n)/2`
-/

namespace A033488.P16403614995097415470
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A162668 n : ℚ) / 2

end

end A033488.P16403614995097415470

namespace A033488

/-- `A162668(n)/2` -/
def P16403614995097415470.Spec : Prop :=
  ∀ n, P16403614995097415470.a n = (A033488 n : ℚ)

end A033488

/-! ## A033488.P3845385866615401935

`A033486(n)/3`
-/

namespace A033488.P3845385866615401935
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033486 n : ℚ) / 3

end

end A033488.P3845385866615401935

namespace A033488

/-- `A033486(n)/3` -/
def P3845385866615401935.Spec : Prop :=
  ∀ n, P3845385866615401935.a n = (A033488 n : ℚ)

end A033488

/-! ## A033488.P15392202628752664977

`∑[∑[A046092(n)]]`
-/

namespace A033488.P15392202628752664977
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046092 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033488.P15392202628752664977

namespace A033488

/-- `∑[∑[A046092(n)]]` -/
def P15392202628752664977.Spec : Prop :=
  ∀ n, P15392202628752664977.a n = A033488 n

end A033488

/-!
# A033489: a(1) = 1, a(n) = 2*a(n-1) + a([n/2]).

The programs for A033489, the canonical program `A033489.P3833060840150487728` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033489 has offset 1).

The definition of A033489 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A033489.P3833060840150487728

`a(floor((n-1)/2))+2*a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A033489

/-- `a(floor((n-1)/2))+2*a(n-1)` -/
def P3833060840150487728.Spec : Prop :=
  ∀ n, (P3833060840150487728.a n : ℤ) = A033489 (n + 1)

theorem P3833060840150487728.correct : P3833060840150487728.Spec := by
  intro n
  simp only [A033489, Nat.add_sub_cancel]

end A033489

/-! ## A033489.P11127393351889790005

`a(n-1)+a(floor((n-1)/2))+a(n-1)` with `a(0)=1`
-/

namespace A033489.P11127393351889790005
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (a ⌊((n : ℤ) - 1 : ℚ) / 2⌋.toNat + a (n - 1))

end

end A033489.P11127393351889790005

namespace A033489

/-- `a(n-1)+a(floor((n-1)/2))+a(n-1)` -/
def P11127393351889790005.Spec : Prop :=
  ∀ n, (P11127393351889790005.a n : ℤ) = A033489 (n + 1)

end A033489

/-! ## A033489.P3642573469117819938

`a(A004526(n-1))+lcm(2, a(n-1))` with `a(0)=1`
-/

namespace A033489.P3642573469117819938
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (A004526 (n - 1)).toNat + Nat.lcm 2 (a (n - 1))

end

end A033489.P3642573469117819938

namespace A033489

/-- `a(A004526(n-1))+lcm(2, a(n-1))` -/
def P3642573469117819938.Spec : Prop :=
  ∀ n, (P3642573469117819938.a n : ℤ) = A033489 (n + 1)

end A033489

/-! ## A033489.P5058311241591028697

`a(A001651(n)-n)+or(2, 2*a(n-1))` with `a(0)=1`
-/

namespace A033489.P5058311241591028697
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (A001651 n - (n : ℤ)).toNat + Nat.lor 2 (2 * a (n - 1))

end

end A033489.P5058311241591028697

namespace A033489

/-- `a(A001651(n)-n)+or(2, 2*a(n-1))` -/
def P5058311241591028697.Spec : Prop :=
  ∀ n, (P5058311241591028697.a n : ℤ) = A033489 (n + 1)

end A033489

/-! ## A033489.P11704684084447549678

`Δ[∑[∑[A309728(n)]]/3]`
-/

namespace A033489.P11704684084447549678
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309728 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A033489.P11704684084447549678

namespace A033489

/-- `Δ[∑[∑[A309728(n)]]/3]` -/
def P11704684084447549678.Spec : Prop :=
  ∀ n, P11704684084447549678.a n = (A033489 (n + 1) : ℚ)

end A033489

/-!
# A033490: a(n) = 2*a(n-1) + a(floor(n/2)), with a(1) = 1, a(2) = 2.

The programs for A033490, the canonical program `A033490.P5741188407014204125` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033490 has offset 1).

The definition of A033490 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A033490.P5741188407014204125

`a(floor((n-1)/2))+2*a(n-1)` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A033490

/-- `a(floor((n-1)/2))+2*a(n-1)` -/
def P5741188407014204125.Spec : Prop :=
  ∀ n, (P5741188407014204125.a n : ℤ) = A033490 (n + 1)

theorem P5741188407014204125.correct : P5741188407014204125.Spec := by
  intro n
  simp only [A033490, Nat.add_sub_cancel]

end A033490

/-! ## A033490.P12974075962183625041

`2*a(n-1)-floor(-a(ceil(n/2)-1))` with `a(0)=1, a(1)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A033490.P12974075962183625041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  2 * a (n - 1) - (-a (⌈(n : ℚ) / 2⌉ - 1).toNat)

end

end A033490.P12974075962183625041

namespace A033490

/-- `2*a(n-1)-floor(-a(ceil(n/2)-1))` -/
def P12974075962183625041.Spec : Prop :=
  ∀ n, P12974075962183625041.a n = A033490 (n + 1)

end A033490

/-! ## A033490.P15645726561336845494

`a(n-1)+a(floor((n-1)/2))+a(n-1)` with `a(0)=1, a(1)=2`
-/

namespace A033490.P15645726561336845494
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 1) + (a ⌊((n : ℤ) - 1 : ℚ) / 2⌋.toNat + a (n - 1))

end

end A033490.P15645726561336845494

namespace A033490

/-- `a(n-1)+a(floor((n-1)/2))+a(n-1)` -/
def P15645726561336845494.Spec : Prop :=
  ∀ n, (P15645726561336845494.a n : ℤ) = A033490 (n + 1)

end A033490

/-! ## A033490.P11698792241155175499

`A033489(n+1)-floor(A033497(n+1)/2)`
-/

namespace A033490.P11698792241155175499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033489 (n + 1) - ⌊(A033497 (n + 1) : ℚ) / 2⌋

end

end A033490.P11698792241155175499

namespace A033490

/-- `A033489(n+1)-floor(A033497(n+1)/2)` -/
def P11698792241155175499.Spec : Prop :=
  ∀ n, P11698792241155175499.a n = A033490 (n + 1)

end A033490

/-! ## A033490.P12582498556263015036

`A033489(n+1)-A004526(A033497(n+1))`
-/

namespace A033490.P12582498556263015036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033489 (n + 1) - A004526 (A033497 (n + 1)).toNat

end

end A033490.P12582498556263015036

namespace A033490

/-- `A033489(n+1)-A004526(A033497(n+1))` -/
def P12582498556263015036.Spec : Prop :=
  ∀ n, P12582498556263015036.a n = A033490 (n + 1)

end A033490

/-!
# A033491: a(n) is the smallest integer that takes n halving and tripling steps to reach 1 in the 3x+1 problem.

The programs for A033491, there is no canonical definition to state claims against.
-/

/-! ## A033491.P9784925988736629799

`A127824(∑[A005186(n)]-A005186(n))`
-/

namespace A033491.P9784925988736629799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005186 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127824 (∑ j ∈ Finset.range (n + 1), f1 j - A005186 n).toNat

end

end A033491.P9784925988736629799

/-! ## A033491.P8816941332750857157

`A088975(eq[1, A337144(A088975(n))])`
-/

namespace A033491.P8816941332750857157
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337144 (A088975 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088975 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A033491.P8816941332750857157

/-! ## A033491.P8372824055311694208

`A127824(eq[1, A337144(A127824(n))])`
-/

namespace A033491.P8372824055311694208
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337144 (A127824 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127824 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A033491.P8372824055311694208

/-! ## A033491.P12077540374308903305

`A127824(eq[A088976(n), A221467(n+1)])`
-/

namespace A033491.P12077540374308903305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088976 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221467 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127824 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A033491.P12077540374308903305

/-! ## A033491.P5872748789480068645

`A101229(A004907(n+1)+4)%79`
-/

namespace A033491.P5872748789480068645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A101229 (A004907 (n + 1) + 4).toNat) 79

end

end A033491.P5872748789480068645

/-!
# A033492: Record number of steps to reach 1 in '3x+1' problem, corresponding to starting values in A006877 (same as A006878 except here we start counting at 1 instead of 0).

The programs for A033492, there is no canonical definition to state claims against.
-/

/-! ## A033492.P1454651611169102125

`A006878(n+1)+1`
-/

namespace A033492.P1454651611169102125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006878 (n + 1) + 1

end

end A033492.P1454651611169102125

/-! ## A033492.P17589448732849294146

`∑[A288493(ceil(abs(γ-n)))]`
-/

namespace A033492.P17589448732849294146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288493 ⌈|Real.eulerMascheroniConstant - (n : ℝ)|⌉.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033492.P17589448732849294146

/-! ## A033492.P12618583146791106381

`A288493(n)+a(n-1)` with `a(0)=1`
-/

namespace A033492.P12618583146791106381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A288493 n + a (n - 1)

end

end A033492.P12618583146791106381

/-! ## A033492.P275345092052265124

`∑[A288493(abs(2-n)+2)]-7`
-/

namespace A033492.P275345092052265124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288493 (|2 - (n : ℤ)| + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 7

end

end A033492.P275345092052265124

/-! ## A033492.P11904892335725664269

`abs(∑[A288493(A028310(n))]-1)+1`
-/

namespace A033492.P11904892335725664269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288493 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j - 1| + 1

end

end A033492.P11904892335725664269

/-! ## A033492.P12517785385700856209

`record[A337150(n+1)+1]`
-/

namespace A033492.P12517785385700856209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337150 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A033492.P12517785385700856209

/-!
# A033493: Sum of the numbers in the trajectory of n for the 3x+1 problem.

The programs for A033493, there is no canonical definition to state claims against.
-/

/-! ## A033493.P2277282886509166816

`A270814(2*(n+1))`
-/

namespace A033493.P2277282886509166816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270814 (2 * (n + 1))

end

end A033493.P2277282886509166816

/-! ## A033493.P10970071520422553678

`A270814(n+1)+1+n`
-/

namespace A033493.P10970071520422553678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270814 (n + 1) + 1 + (n : ℤ)

end

end A033493.P10970071520422553678

/-! ## A033493.P1602834585410800875

`A049074(n+1)%A058795(n)`
-/

namespace A033493.P1602834585410800875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A049074 (n + 1)) (A058795 n)

end

end A033493.P1602834585410800875

/-! ## A033493.P4982268958635517860

`A213916(n+1)+A213909(n+1)`
-/

namespace A033493.P4982268958635517860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213916 (n + 1) + A213909 (n + 1)

end

end A033493.P4982268958635517860

/-! ## A033493.P13899783754159914546

`A213917(n+1)+2*A213916(n+1)`
-/

namespace A033493.P13899783754159914546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213917 (n + 1) + 2 * A213916 (n + 1)

end

end A033493.P13899783754159914546

/-! ## A033493.P17668411263971071270

`2*A213909(n+1)-A213917(n+1)`
-/

namespace A033493.P17668411263971071270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A213909 (n + 1) - A213917 (n + 1)

end

end A033493.P17668411263971071270

/-! ## A033493.P14370028638724063686

`gcd(A049074(n+1), A049084(A049111(n+1)))`
-/

namespace A033493.P14370028638724063686
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A049074 (n + 1)) (A049084 (A049111 (n + 1)).toNat)

end

end A033493.P14370028638724063686

/-!
# A033494: Record sum of numbers in trajectory of 3x+1 problem.

The programs for A033494, there is no canonical definition to state claims against.
-/

/-! ## A033494.P17880288099262564904

`record[A270814(n+1)+1+n]`
-/

namespace A033494.P17880288099262564904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270814 (n + 1) + 1 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A033494.P17880288099262564904

/-! ## A033494.P1357647153129542900

`A270814(A033495(n))+A033495(n)`
-/

namespace A033494.P1357647153129542900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270814 (A033495 n).toNat + A033495 n

end

end A033494.P1357647153129542900

/-! ## A033494.P10503224751333750660

`record[A033493(n+1)]`
-/

namespace A033494.P10503224751333750660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033493 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A033494.P10503224751333750660

/-! ## A033494.P17486691607717542472

`record[A270814(2*(n+1))]`
-/

namespace A033494.P17486691607717542472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270814 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A033494.P17486691607717542472

/-! ## A033494.P13289889737983960656

`A033493(A033495(n))`
-/

namespace A033494.P13289889737983960656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033493 (A033495 n).toNat

end

end A033494.P13289889737983960656

/-!
# A033495: Initial number for record sum of numbers in trajectory of 3x+1 problem.

The programs for A033495, there is no canonical definition to state claims against.
-/

/-! ## A033495.P1961169261248615219

`A033494(n)-record[A270814(n+1)]`
-/

namespace A033495.P1961169261248615219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270814 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033494 n - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A033495.P1961169261248615219

/-! ## A033495.P5391494867675366479

`record[A033493(n+1)]-record[A270814(n+1)]`
-/

namespace A033495.P5391494867675366479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033493 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270814 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

end

end A033495.P5391494867675366479

/-! ## A033495.P16757835909680808571

`record[A270814(2*(n+1))]-record[A270814(n+1)]`
-/

namespace A033495.P16757835909680808571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270814 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270814 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

end

end A033495.P16757835909680808571

/-! ## A033495.P11482679098816371632

`A261702(record[A261715(n+1)]%A261414(2*(n+2)))`
-/

namespace A033495.P11482679098816371632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261715 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261702 (Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A261414 (2 * (n + 2)))).toNat

end

end A033495.P11482679098816371632

/-!
# A033496: Numbers m that are the largest number in their Collatz (3x+1) trajectory.

The programs for A033496, there is no canonical definition to state claims against.
-/

/-! ## A033496.P14249803251448966373

`record[A261702(n+1)]`
-/

namespace A033496.P14249803251448966373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261702 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A033496.P14249803251448966373

/-! ## A033496.P1496091869694364210

`record[A087258(n+1)]`
-/

namespace A033496.P1496091869694364210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087258 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A033496.P1496091869694364210

/-! ## A033496.P3668520337313566236

`eq[1, A213204(n+1)]+1`
-/

namespace A033496.P3668520337313566236
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213204 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A033496.P3668520337313566236

/-! ## A033496.P10856325288447691428

`lt[A220421(n+1), 1]+1`
-/

namespace A033496.P10856325288447691428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220421 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A033496.P10856325288447691428

/-! ## A033496.P1683803264900150093

`lt[A222597(n+1), 1]+1`
-/

namespace A033496.P1683803264900150093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222597 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A033496.P1683803264900150093

/-! ## A033496.P3482442639968432894

`lt[A087225(n+1), 2]+1`
-/

namespace A033496.P3482442639968432894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087225 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A033496.P3482442639968432894

/-! ## A033496.P4920210058765359063

`record[gcd(n+1, A025586(n+1))]`
-/

namespace A033496.P4920210058765359063
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A025586 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A033496.P4920210058765359063

/-! ## A033496.P12677257928229911425

`record[gcd(A025586(n+1), A131738(n))]`
-/

namespace A033496.P12677257928229911425
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A025586 (n + 1)) (A131738 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A033496.P12677257928229911425

/-! ## A033496.P1025607867691503028

`A025586(eq[n+1, A025586(n+1)]+1)`
-/

namespace A033496.P1025607867691503028
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025586 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025586 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A033496.P1025607867691503028

/-! ## A033496.P11592532208739709902

`A025586(record[2*n+1-A025586(n+1)]+1)`
-/

namespace A033496.P11592532208739709902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) - A025586 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025586 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1).toNat

end

end A033496.P11592532208739709902

/-! ## A033496.P9372756049398636467

`eq[A028310(A087255(n+1)), A087255(n+1)]+1`
-/

namespace A033496.P9372756049398636467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A087255 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087255 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A033496.P9372756049398636467

/-! ## A033496.P1166940699278551449

`lt[0, char[A025586(n+1)]]`
-/

namespace A033496.P1166940699278551449
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025586 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A033496.P1166940699278551449

/-! ## A033496.P18271851093937061805

`record[A213330(n+2)]`
-/

namespace A033496.P18271851093937061805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213330 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A033496.P18271851093937061805

/-! ## A033496.P15819731369410001326

`record[2-A270570(n+2)+n]`
-/

namespace A033496.P15819731369410001326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A270570 (n + 2) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A033496.P15819731369410001326

/-!
# A033497: a(n) = 2*a(n-1) + a(floor(n/2)), with a(1) = 1, a(2) = 2, a(3) = 4.

The programs for A033497, the canonical program `A033497.P6813935852033117476` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033497 has offset 1).

The definition of A033497 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A033497.P6813935852033117476

`a(floor((n-1)/2))+2*a(n-1)` with `a(0)=1, a(1)=2, a(2)=4`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A033497

/-- `a(floor((n-1)/2))+2*a(n-1)` -/
def P6813935852033117476.Spec : Prop :=
  ∀ n, (P6813935852033117476.a n : ℤ) = A033497 (n + 1)

theorem P6813935852033117476.correct : P6813935852033117476.Spec := by
  intro n
  simp only [A033497, Nat.add_sub_cancel]

end A033497

/-! ## A033497.P18013147757361717272

`2*a(n-1)-floor(-a(ceil(n/2)-1))` with `a(0)=1, a(1)=2, a(2)=4`

`floor` is left out, it is the identity on integers.
-/

namespace A033497.P18013147757361717272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 4] fun n a =>
  2 * a (n - 1) - (-a (⌈(n : ℚ) / 2⌉ - 1).toNat)

end

end A033497.P18013147757361717272

namespace A033497

/-- `2*a(n-1)-floor(-a(ceil(n/2)-1))` -/
def P18013147757361717272.Spec : Prop :=
  ∀ n, P18013147757361717272.a n = A033497 (n + 1)

end A033497

/-! ## A033497.P12515674324283569598

`a(n-1)+a(floor((n-1)/2))+a(n-1)` with `a(0)=1, a(1)=2, a(2)=4`
-/

namespace A033497.P12515674324283569598
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 4] fun n a =>
  a (n - 1) + (a ⌊((n : ℤ) - 1 : ℚ) / 2⌋.toNat + a (n - 1))

end

end A033497.P12515674324283569598

namespace A033497

/-- `a(n-1)+a(floor((n-1)/2))+a(n-1)` -/
def P12515674324283569598.Spec : Prop :=
  ∀ n, (P12515674324283569598.a n : ℤ) = A033497 (n + 1)

end A033497

/-! ## A033497.P2260964294860926319

`A033489(n+1)-(2*A033490(n+1))%A033489(n+1)`
-/

namespace A033497.P2260964294860926319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033489 (n + 1) - Int.tmod (2 * A033490 (n + 1)) (A033489 (n + 1))

end

end A033497.P2260964294860926319

namespace A033497

/-- `A033489(n+1)-(2*A033490(n+1))%A033489(n+1)` -/
def P2260964294860926319.Spec : Prop :=
  ∀ n, P2260964294860926319.a n = A033497 (n + 1)

end A033497

/-!
# A033498: a(n) = a(n-1)+ a(round(2*(n-1)/3)) +a(round((n-1)/3)) starting a(1)=1.

The programs for A033498, there is no canonical definition to state claims against.
-/

/-! ## A033498.P1206850532206949750

`2*A033500(n+1)-A033499(n+1)`
-/

namespace A033498.P1206850532206949750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A033500 (n + 1) - A033499 (n + 1)

end

end A033498.P1206850532206949750

/-! ## A033498.P9342326993117097210

`A004277(A033500(n+1))-A033499(n+1)`
-/

namespace A033498.P9342326993117097210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A033500 (n + 1)).toNat - A033499 (n + 1)

end

end A033498.P9342326993117097210

/-! ## A033498.P18066626791180587758

`A004277(A033500(n+1))-A325129(A003114(2*n))`
-/

namespace A033498.P18066626791180587758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A033500 (n + 1)).toNat - A325129 (A003114 (2 * n)).toNat

end

end A033498.P18066626791180587758

/-! ## A033498.P10575841462743138748

`A004277(A033500(n+1))-(2*A098745(A084628(n))-1)`
-/

namespace A033498.P10575841462743138748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A033500 (n + 1)).toNat - (2 * A098745 (A084628 n).toNat - 1)

end

end A033498.P10575841462743138748

/-! ## A033498.P6907552407173429388

`A004277(A033500(n+1))-(2*A121900(A182819(n))-1)`
-/

namespace A033498.P6907552407173429388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A033500 (n + 1)).toNat - (2 * A121900 (A182819 n).toNat - 1)

end

end A033498.P6907552407173429388

/-!
# A033499: a(n) = a(n-1) + a(round(2*(n-1)/3)) + a(round((n-1)/3)) with a(1)=a(2)=1.

The programs for A033499, there is no canonical definition to state claims against.
-/

/-! ## A033499.P9780839766931468366

`2*A033500(n+1)-A033498(n+1)`
-/

namespace A033499.P9780839766931468366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A033500 (n + 1) - A033498 (n + 1)

end

end A033499.P9780839766931468366

/-! ## A033499.P9370108139200864230

`A004277(A033500(n+1))-A033498(n+1)`
-/

namespace A033499.P9370108139200864230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A033500 (n + 1)).toNat - A033498 (n + 1)

end

end A033499.P9370108139200864230

/-! ## A033499.P114868981697942184

`A325129(A003114(2*n))`
-/

namespace A033499.P114868981697942184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325129 (A003114 (2 * n)).toNat

end

end A033499.P114868981697942184

/-! ## A033499.P17609483758619954720

`2*A098745(A084628(n))-1`
-/

namespace A033499.P17609483758619954720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A098745 (A084628 n).toNat - 1

end

end A033499.P17609483758619954720

/-! ## A033499.P6588810144014330745

`2*A121900(A182819(n))-1`
-/

namespace A033499.P6588810144014330745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A121900 (A182819 n).toNat - 1

end

end A033499.P6588810144014330745

