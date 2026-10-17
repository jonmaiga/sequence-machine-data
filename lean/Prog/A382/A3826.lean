import SequenceMachineLib
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
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
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
import Seq.B001.C009
import Seq.B001.C010
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
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
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
import Seq.Opaque.C013
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
# A382605: Number of distinct solutions to the problem of folding in half a chain of linked rods of length 1, ..., n.

The programs for A382605, there is no canonical definition to state claims against.
-/

/-! ## A382605.P4134411634854981377

`A144940(n+1)%A158572(n+2)`
-/

namespace A382605.P4134411634854981377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A144940 (n + 1)) (A158572 (n + 2))

end

end A382605.P4134411634854981377

/-! ## A382605.P7459017841975742297

`A345021(A058377(n+1))`
-/

namespace A382605.P7459017841975742297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345021 (A058377 (n + 1)).toNat

end

end A382605.P7459017841975742297

/-! ## A382605.P2806316277126565908

`A007814(∑[∑[A039505(n+1)+2]+2])`
-/

namespace A382605.P2806316277126565908
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039505 (n + 1) + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A382605.P2806316277126565908

/-! ## A382605.P12992538401371929975

`A302110(A264853(n+1))`
-/

namespace A382605.P12992538401371929975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302110 (A264853 (n + 1)).toNat

end

end A382605.P12992538401371929975

/-!
# A382608: Long leg of the unique primitive Pythagorean triple whose inradius is A000045(n) and such that its long leg and its hypotenuse are consecutive natural numbers.

The programs for A382608, the canonical program `A382608.P10117561399595849934` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A382608 has offset 0).

The definition of A382608 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A033192, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A382608.P10117561399595849934

`4*A033192(n)`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A382608

/-- `4*A033192(n)` -/
def P10117561399595849934.Spec : Prop :=
  ∀ n, P10117561399595849934.a n = A382608 n

theorem P10117561399595849934.correct : P10117561399595849934.Spec := by
  intro n
  simp only [A382608]

end A382608

/-! ## A382608.P4727092264623662294

`2*A059727(n)`
-/

namespace A382608.P4727092264623662294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A059727 n

end

end A382608.P4727092264623662294

namespace A382608

/-- `2*A059727(n)` -/
def P4727092264623662294.Spec : Prop :=
  ∀ n, P4727092264623662294.a n = A382608 n

end A382608

/-! ## A382608.P6447841148867818741

`4*(A032441(n)-1)`
-/

namespace A382608.P6447841148867818741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (A032441 n - 1)

end

end A382608.P6447841148867818741

namespace A382608

/-- `4*(A032441(n)-1)` -/
def P6447841148867818741.Spec : Prop :=
  ∀ n, P6447841148867818741.a n = A382608 n

end A382608

/-! ## A382608.P10243283152869879830

`A095122(n)+A022086(n)`
-/

namespace A382608.P10243283152869879830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095122 n + A022086 n

end

end A382608.P10243283152869879830

namespace A382608

/-- `A095122(n)+A022086(n)` -/
def P10243283152869879830.Spec : Prop :=
  ∀ n, P10243283152869879830.a n = A382608 n

end A382608

/-! ## A382608.P4475309642074993194

`A229912(n)+A000045(n)`
-/

namespace A382608.P4475309642074993194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229912 n + A000045 n

end

end A382608.P4475309642074993194

namespace A382608

/-- `A229912(n)+A000045(n)` -/
def P4475309642074993194.Spec : Prop :=
  ∀ n, P4475309642074993194.a n = A382608 n

end A382608

/-! ## A382608.P13523528072269909957

`A382845(n)+A001588(n)`
-/

namespace A382608.P13523528072269909957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382845 n + A001588 n

end

end A382608.P13523528072269909957

namespace A382608

/-- `A382845(n)+A001588(n)` -/
def P13523528072269909957.Spec : Prop :=
  ∀ n, P13523528072269909957.a n = A382608 n

end A382608

/-! ## A382608.P1536695820690881965

`A382843(n)+A022087(n)`
-/

namespace A382608.P1536695820690881965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382843 n + A022087 n

end

end A382608.P1536695820690881965

namespace A382608

/-- `A382843(n)+A022087(n)` -/
def P1536695820690881965.Spec : Prop :=
  ∀ n, P1536695820690881965.a n = A382608 n

end A382608

/-! ## A382608.P6320933176186036204

`A382308(n)-A001588(n)`
-/

namespace A382608.P6320933176186036204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382308 n - A001588 n

end

end A382608.P6320933176186036204

namespace A382608

/-- `A382308(n)-A001588(n)` -/
def P6320933176186036204.Spec : Prop :=
  ∀ n, P6320933176186036204.a n = A382608 n

end A382608

/-! ## A382608.P10054129723990090316

`A382609(n)-A001611(n)`
-/

namespace A382608.P10054129723990090316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382609 n - A001611 n

end

end A382608.P10054129723990090316

namespace A382608

/-- `A382609(n)-A001611(n)` -/
def P10054129723990090316.Spec : Prop :=
  ∀ n, P10054129723990090316.a n = A382608 n

end A382608

/-! ## A382608.P3698445121349005351

`A001611(n)*A006355(n+1)`
-/

namespace A382608.P3698445121349005351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001611 n * A006355 (n + 1)

end

end A382608.P3698445121349005351

namespace A382608

/-- `A001611(n)*A006355(n+1)` -/
def P3698445121349005351.Spec : Prop :=
  ∀ n, P3698445121349005351.a n = A382608 n

end A382608

/-! ## A382608.P13258854319212652979

`2*A000045(n)*A001611(n)`
-/

namespace A382608.P13258854319212652979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000045 n * A001611 n

end

end A382608.P13258854319212652979

namespace A382608

/-- `2*A000045(n)*A001611(n)` -/
def P13258854319212652979.Spec : Prop :=
  ∀ n, P13258854319212652979.a n = A382608 n

end A382608

/-! ## A382608.P15463211302123561116

`A000045(n)+A059727(n)+A007598(n)`
-/

namespace A382608.P15463211302123561116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n + (A059727 n + A007598 n)

end

end A382608.P15463211302123561116

namespace A382608

/-- `A000045(n)+A059727(n)+A007598(n)` -/
def P15463211302123561116.Spec : Prop :=
  ∀ n, P15463211302123561116.a n = A382608 n

end A382608

/-! ## A382608.P15015843293386817549

`A000045(n)+A175395(n)+A000045(n)`
-/

namespace A382608.P15015843293386817549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n + (A175395 n + A000045 n)

end

end A382608.P15015843293386817549

namespace A382608

/-- `A000045(n)+A175395(n)+A000045(n)` -/
def P15015843293386817549.Spec : Prop :=
  ∀ n, P15015843293386817549.a n = A382608 n

end A382608

/-! ## A382608.P18202068487514835388

`A000045(n)+A000045(n)*A001588(n)`
-/

namespace A382608.P18202068487514835388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n + A000045 n * A001588 n

end

end A382608.P18202068487514835388

namespace A382608

/-- `A000045(n)+A000045(n)*A001588(n)` -/
def P18202068487514835388.Spec : Prop :=
  ∀ n, P18202068487514835388.a n = A382608 n

end A382608

/-! ## A382608.P5017704384565941322

`(A065220(n)+A002062(n))*A001611(n)`
-/

namespace A382608.P5017704384565941322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A065220 n + A002062 n) * A001611 n

end

end A382608.P5017704384565941322

namespace A382608

/-- `(A065220(n)+A002062(n))*A001611(n)` -/
def P5017704384565941322.Spec : Prop :=
  ∀ n, P5017704384565941322.a n = A382608 n

end A382608

/-! ## A382608.P10608632691716335980

`(A157725(n)+A000045(n))*A000045(n)`
-/

namespace A382608.P10608632691716335980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A157725 n + A000045 n) * A000045 n

end

end A382608.P10608632691716335980

namespace A382608

/-- `(A157725(n)+A000045(n))*A000045(n)` -/
def P10608632691716335980.Spec : Prop :=
  ∀ n, P10608632691716335980.a n = A382608 n

end A382608

/-! ## A382608.P9784564606781878036

`A001588(n)*A001611(n)-A001611(n)`
-/

namespace A382608.P9784564606781878036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001588 n * A001611 n - A001611 n

end

end A382608.P9784564606781878036

namespace A382608

/-- `A001588(n)*A001611(n)-A001611(n)` -/
def P9784564606781878036.Spec : Prop :=
  ∀ n, P9784564606781878036.a n = A382608 n

end A382608

/-! ## A382608.P15032097996908751285

`(A187893(n)-A001611(n))*A001611(n)`
-/

namespace A382608.P15032097996908751285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A187893 n - A001611 n) * A001611 n

end

end A382608.P15032097996908751285

namespace A382608

/-- `(A187893(n)-A001611(n))*A001611(n)` -/
def P15032097996908751285.Spec : Prop :=
  ∀ n, P15032097996908751285.a n = A382608 n

end A382608

/-! ## A382608.P10762742010416090220

`(A117591(n)-A099036(n))*A001611(n)`
-/

namespace A382608.P10762742010416090220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A117591 n - A099036 n) * A001611 n

end

end A382608.P10762742010416090220

namespace A382608

/-- `(A117591(n)-A099036(n))*A001611(n)` -/
def P10762742010416090220.Spec : Prop :=
  ∀ n, P10762742010416090220.a n = A382608 n

end A382608

/-! ## A382608.P16696968966866893976

`A382609(n)-A382609(n)/A001588(n)`
-/

namespace A382608.P16696968966866893976
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A382609 n : ℚ) - (A382609 n : ℚ) / (A001588 n : ℚ)

end

end A382608.P16696968966866893976

namespace A382608

/-- `A382609(n)-A382609(n)/A001588(n)` -/
def P16696968966866893976.Spec : Prop :=
  ∀ n, P16696968966866893976.a n = (A382608 n : ℚ)

end A382608

/-!
# A382609: Semiperimeter of the unique primitive Pythagorean triple whose inradius is A000045(n) and such that its long leg and its hypotenuse are consecutive natural numbers.

The programs for A382609, the canonical program `A382609.P2195616595347439028` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A382609 has offset 0).

The definition of A382609 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 241 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A382609.P2195616595347439028

`A229912(n)+A001588(n)`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A382609

/-- `A229912(n)+A001588(n)` -/
def P2195616595347439028.Spec : Prop :=
  ∀ n, P2195616595347439028.a n = A382609 n

theorem P2195616595347439028.correct : P2195616595347439028.Spec := by
  intro n
  simp only [A382609]

end A382609

/-! ## A382609.P2566282098493034121

`A187893(n)+A175395(n)`
-/

namespace A382609.P2566282098493034121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187893 n + A175395 n

end

end A382609.P2566282098493034121

namespace A382609

/-- `A187893(n)+A175395(n)` -/
def P2566282098493034121.Spec : Prop :=
  ∀ n, P2566282098493034121.a n = A382609 n

end A382609

/-! ## A382609.P18403540483273163706

`A382608(n)+A001611(n)`
-/

namespace A382609.P18403540483273163706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382608 n + A001611 n

end

end A382609.P18403540483273163706

namespace A382609

/-- `A382608(n)+A001611(n)` -/
def P18403540483273163706.Spec : Prop :=
  ∀ n, P18403540483273163706.a n = A382609 n

end A382609

/-! ## A382609.P468126946046673992

`A382308(n)-A000045(n)`
-/

namespace A382609.P468126946046673992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382308 n - A000045 n

end

end A382609.P468126946046673992

namespace A382609

/-- `A382308(n)-A000045(n)` -/
def P468126946046673992.Spec : Prop :=
  ∀ n, P468126946046673992.a n = A382609 n

end A382609

/-! ## A382609.P512404226550158014

`A001588(n)*A001611(n)`
-/

namespace A382609.P512404226550158014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001588 n * A001611 n

end

end A382609.P512404226550158014

namespace A382609

/-- `A001588(n)*A001611(n)` -/
def P512404226550158014.Spec : Prop :=
  ∀ n, P512404226550158014.a n = A382609 n

end A382609

/-! ## A382609.P8094853055026833396

`A392415(n+1)+A022086(n)`
-/

namespace A382609.P8094853055026833396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392415 (n + 1) + A022086 n

end

end A382609.P8094853055026833396

namespace A382609

/-- `A392415(n+1)+A022086(n)` -/
def P8094853055026833396.Spec : Prop :=
  ∀ n, P8094853055026833396.a n = A382609 n

end A382609

/-! ## A382609.P13147431082398140296

`A001588(n)+A382608(n)-A000045(n)`
-/

namespace A382609.P13147431082398140296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001588 n + (A382608 n - A000045 n)

end

end A382609.P13147431082398140296

namespace A382609

/-- `A001588(n)+A382608(n)-A000045(n)` -/
def P13147431082398140296.Spec : Prop :=
  ∀ n, P13147431082398140296.a n = A382609 n

end A382609

/-! ## A382609.P961926476651827221

`(A001611(n)+A000045(n))*A001611(n)`
-/

namespace A382609.P961926476651827221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001611 n + A000045 n) * A001611 n

end

end A382609.P961926476651827221

namespace A382609

/-- `(A001611(n)+A000045(n))*A001611(n)` -/
def P961926476651827221.Spec : Prop :=
  ∀ n, P961926476651827221.a n = A382609 n

end A382609

/-! ## A382609.P8524854593575615412

`(A187893(n)-A000045(n))*A001611(n)`
-/

namespace A382609.P8524854593575615412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A187893 n - A000045 n) * A001611 n

end

end A382609.P8524854593575615412

namespace A382609

/-- `(A187893(n)-A000045(n))*A001611(n)` -/
def P8524854593575615412.Spec : Prop :=
  ∀ n, P8524854593575615412.a n = A382609 n

end A382609

/-! ## A382609.P18281071781887652364

`A001611(n)+A001611(n)*A006355(n+1)`
-/

namespace A382609.P18281071781887652364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001611 n + A001611 n * A006355 (n + 1)

end

end A382609.P18281071781887652364

namespace A382609

/-- `A001611(n)+A001611(n)*A006355(n+1)` -/
def P18281071781887652364.Spec : Prop :=
  ∀ n, P18281071781887652364.a n = A382609 n

end A382609

/-! ## A382609.P4509127548803425986

`(A212804(n+1)+A001611(n))*A001611(n)`
-/

namespace A382609.P4509127548803425986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A212804 (n + 1) + A001611 n) * A001611 n

end

end A382609.P4509127548803425986

namespace A382609

/-- `(A212804(n+1)+A001611(n))*A001611(n)` -/
def P4509127548803425986.Spec : Prop :=
  ∀ n, P4509127548803425986.a n = A382609 n

end A382609

/-! ## A382609.P6077931936317551511

`C(A006355(n+1)+2, 2)`
-/

namespace A382609.P6077931936317551511
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A006355 (n + 1) + 2).toNat 2

end

end A382609.P6077931936317551511

namespace A382609

/-- `C(A006355(n+1)+2, 2)` -/
def P6077931936317551511.Spec : Prop :=
  ∀ n, (P6077931936317551511.a n : ℤ) = A382609 n

end A382609

/-!
# A382610: Area of the unique primitive Pythagorean triple whose inradius is A000045(n) and such that its long leg and its hypotenuse are consecutive natural numbers.

The programs for A382610, the canonical program `A382610.P10627127839713340362` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A382610 has offset 0).

The definition of A382610 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 161 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A382610.P10627127839713340362

`A001588(n)*A059727(n)`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A382610

/-- `A001588(n)*A059727(n)` -/
def P10627127839713340362.Spec : Prop :=
  ∀ n, P10627127839713340362.a n = A382610 n

theorem P10627127839713340362.correct : P10627127839713340362.Spec := by
  intro n
  simp only [A382610]

end A382610

/-! ## A382610.P16466925755072563350

`A001611(n)*A229912(n)`
-/

namespace A382610.P16466925755072563350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001611 n * A229912 n

end

end A382610.P16466925755072563350

namespace A382610

/-- `A001611(n)*A229912(n)` -/
def P16466925755072563350.Spec : Prop :=
  ∀ n, P16466925755072563350.a n = A382610 n

end A382610

/-! ## A382610.P11302264518395077126

`A000045(n)*A382609(n)`
-/

namespace A382610.P11302264518395077126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n * A382609 n

end

end A382610.P11302264518395077126

namespace A382610

/-- `A000045(n)*A382609(n)` -/
def P11302264518395077126.Spec : Prop :=
  ∀ n, P11302264518395077126.a n = A382610 n

end A382610

/-! ## A382610.P17416806981543894145

`2*A001588(n)*A033192(n)`
-/

namespace A382610.P17416806981543894145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001588 n * A033192 n

end

end A382610.P17416806981543894145

namespace A382610

/-- `2*A001588(n)*A033192(n)` -/
def P17416806981543894145.Spec : Prop :=
  ∀ n, P17416806981543894145.a n = A382610 n

end A382610

/-! ## A382610.P9338195763401332247

`(A382608(n)+A001611(n))*A000045(n)`
-/

namespace A382610.P9338195763401332247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A382608 n + A001611 n) * A000045 n

end

end A382610.P9338195763401332247

namespace A382610

/-- `(A382608(n)+A001611(n))*A000045(n)` -/
def P9338195763401332247.Spec : Prop :=
  ∀ n, P9338195763401332247.a n = A382610 n

end A382610

/-! ## A382610.P4662123528190082980

`A229912(n)+A000045(n)*A229912(n)`
-/

namespace A382610.P4662123528190082980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229912 n + A000045 n * A229912 n

end

end A382610.P4662123528190082980

namespace A382610

/-- `A229912(n)+A000045(n)*A229912(n)` -/
def P4662123528190082980.Spec : Prop :=
  ∀ n, P4662123528190082980.a n = A382610 n

end A382610

/-! ## A382610.P877788907391776211

`(A382308(n)-A000045(n))*A000045(n)`
-/

namespace A382610.P877788907391776211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A382308 n - A000045 n) * A000045 n

end

end A382610.P877788907391776211

namespace A382610

/-- `(A382308(n)-A000045(n))*A000045(n)` -/
def P877788907391776211.Spec : Prop :=
  ∀ n, P877788907391776211.a n = A382610 n

end A382610

/-! ## A382610.P4733816467077684961

`(A382308(n)-A382609(n))*A382609(n)`
-/

namespace A382610.P4733816467077684961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A382308 n - A382609 n) * A382609 n

end

end A382610.P4733816467077684961

namespace A382610

/-- `(A382308(n)-A382609(n))*A382609(n)` -/
def P4733816467077684961.Spec : Prop :=
  ∀ n, P4733816467077684961.a n = A382610 n

end A382610

/-! ## A382610.P3952733440092036044

`A000045(n)*A001588(n)*A001611(n)`
-/

namespace A382610.P3952733440092036044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n * A001588 n * A001611 n

end

end A382610.P3952733440092036044

namespace A382610

/-- `A000045(n)*A001588(n)*A001611(n)` -/
def P3952733440092036044.Spec : Prop :=
  ∀ n, P3952733440092036044.a n = A382610 n

end A382610

/-!
# A382612: a(n) = n^3 * (n^2 - n + 1).

The programs for A382612, the canonical program `A382612.P13299018877976581064` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A382612 has offset 0).

The definition of A382612 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A382612.P13299018877976581064

`((1-n)²+n)*n^3`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A382612

/-- `((1-n)²+n)*n^3` -/
def P13299018877976581064.Spec : Prop :=
  ∀ n, P13299018877976581064.a n = A382612 n

theorem P13299018877976581064.correct : P13299018877976581064.Spec := by
  intro n
  simp only [A382612]

end A382612

/-! ## A382612.P13094781815096273441

`lcm((1-n)²+n, n^3)`
-/

namespace A382612.P13094781815096273441
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((1 - (n : ℤ)) ^ 2 + (n : ℤ)) (n ^ 3 : ℤ)

end

end A382612.P13094781815096273441

namespace A382612

/-- `lcm((1-n)²+n, n^3)` -/
def P13094781815096273441.Spec : Prop :=
  ∀ n, (P13094781815096273441.a n : ℤ) = A382612 n

end A382612

/-! ## A382612.P11158311268882597168

`(Δ[C(n, 2)²]+Δ[C(n, 2)²]²)/(n+1)`
-/

namespace A382612.P11158311268882597168
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2 ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2 ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + ((f2 (n + 1) : ℤ) - (f2 n : ℤ)) ^ 2 : ℚ) / (n + 1 : ℚ)

end

end A382612.P11158311268882597168

namespace A382612

/-- `(Δ[C(n, 2)²]+Δ[C(n, 2)²]²)/(n+1)` -/
def P11158311268882597168.Spec : Prop :=
  ∀ n, P11158311268882597168.a n = (A382612 n : ℚ)

end A382612

/-! ## A382612.P326072655951700872

`A037250(n)+n²`
-/

namespace A382612.P326072655951700872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037250 n + (n ^ 2 : ℤ)

end

end A382612.P326072655951700872

namespace A382612

/-- `A037250(n)+n²` -/
def P326072655951700872.Spec : Prop :=
  ∀ n, P326072655951700872.a n = A382612 n

end A382612

/-! ## A382612.P14732471085699063035

`A085538(n)+n^3`
-/

namespace A382612.P14732471085699063035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085538 n + (n ^ 3 : ℤ)

end

end A382612.P14732471085699063035

namespace A382612

/-- `A085538(n)+n^3` -/
def P14732471085699063035.Spec : Prop :=
  ∀ n, P14732471085699063035.a n = A382612 n

end A382612

/-! ## A382612.P6334421445542160779

`A155977(n)-n²²`
-/

namespace A382612.P6334421445542160779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155977 n - ((n ^ 2) ^ 2 : ℤ)

end

end A382612.P6334421445542160779

namespace A382612

/-- `A155977(n)-n²²` -/
def P6334421445542160779.Spec : Prop :=
  ∀ n, P6334421445542160779.a n = A382612 n

end A382612

/-! ## A382612.P13612873354754655973

`(A060883(n)-1)/(n+1)`
-/

namespace A382612.P13612873354754655973
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060883 n - 1 : ℚ) / (n + 1 : ℚ)

end

end A382612.P13612873354754655973

namespace A382612

/-- `(A060883(n)-1)/(n+1)` -/
def P13612873354754655973.Spec : Prop :=
  ∀ n, P13612873354754655973.a n = (A382612 n : ℚ)

end A382612

/-! ## A382612.P13344741843098268916

`A062159(n)+A002061(n)`
-/

namespace A382612.P13344741843098268916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062159 n + A002061 n

end

end A382612.P13344741843098268916

namespace A382612

/-- `A062159(n)+A002061(n)` -/
def P13344741843098268916.Spec : Prop :=
  ∀ n, P13344741843098268916.a n = A382612 n

end A382612

/-! ## A382612.P12716855016563397355

`A000584(n)-A085537(n)`
-/

namespace A382612.P12716855016563397355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000584 n - A085537 n

end

end A382612.P12716855016563397355

namespace A382612

/-- `A000584(n)-A085537(n)` -/
def P12716855016563397355.Spec : Prop :=
  ∀ n, P12716855016563397355.a n = A382612 n

end A382612

/-! ## A382612.P16628033213928585584

`A133073(n)-A071253(n)`
-/

namespace A382612.P16628033213928585584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133073 n - A071253 n

end

end A382612.P16628033213928585584

namespace A382612

/-- `A133073(n)-A071253(n)` -/
def P16628033213928585584.Spec : Prop :=
  ∀ n, P16628033213928585584.a n = A382612 n

end A382612

/-! ## A382612.P3353174926798986569

`A135497(n)-A132998(n)`
-/

namespace A382612.P3353174926798986569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135497 n - A132998 n

end

end A382612.P3353174926798986569

namespace A382612

/-- `A135497(n)-A132998(n)` -/
def P3353174926798986569.Spec : Prop :=
  ∀ n, P3353174926798986569.a n = A382612 n

end A382612

/-! ## A382612.P2694526874498426797

`A272162(n)-A138849(n+1)`
-/

namespace A382612.P2694526874498426797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272162 n - A138849 (n + 1)

end

end A382612.P2694526874498426797

namespace A382612

/-- `A272162(n)-A138849(n+1)` -/
def P2694526874498426797.Spec : Prop :=
  ∀ n, P2694526874498426797.a n = A382612 n

end A382612

/-! ## A382612.P11764408709840672314

`A000578(n)+n²*A045991(n)`
-/

namespace A382612.P11764408709840672314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 n + (n ^ 2 : ℤ) * A045991 n

end

end A382612.P11764408709840672314

namespace A382612

/-- `A000578(n)+n²*A045991(n)` -/
def P11764408709840672314.Spec : Prop :=
  ∀ n, P11764408709840672314.a n = A382612 n

end A382612

/-! ## A382612.P1901516048547369266

`n²+A002522(n)*A045991(n)`
-/

namespace A382612.P1901516048547369266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) + A002522 n * A045991 n

end

end A382612.P1901516048547369266

namespace A382612

/-- `n²+A002522(n)*A045991(n)` -/
def P1901516048547369266.Spec : Prop :=
  ∀ n, P1901516048547369266.a n = A382612 n

end A382612

/-! ## A382612.P14182962673568400919

`A005843(n)+A242135(n)+A085538(n)`
-/

namespace A382612.P14182962673568400919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n + (A242135 n + A085538 n)

end

end A382612.P14182962673568400919

namespace A382612

/-- `A005843(n)+A242135(n)+A085538(n)` -/
def P14182962673568400919.Spec : Prop :=
  ∀ n, P14182962673568400919.a n = A382612 n

end A382612

/-! ## A382612.P3117139012368672361

`A000578(n)+A133073(n)-A100019(n)`
-/

namespace A382612.P3117139012368672361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 n + (A133073 n - A100019 n)

end

end A382612.P3117139012368672361

namespace A382612

/-- `A000578(n)+A133073(n)-A100019(n)` -/
def P3117139012368672361.Spec : Prop :=
  ∀ n, P3117139012368672361.a n = A382612 n

end A382612

/-! ## A382612.P7097507650785440473

`A168178(n)+A168178(n)-A000583(n)`
-/

namespace A382612.P7097507650785440473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168178 n + (A168178 n - A000583 n)

end

end A382612.P7097507650785440473

namespace A382612

/-- `A168178(n)+A168178(n)-A000583(n)` -/
def P7097507650785440473.Spec : Prop :=
  ∀ n, P7097507650785440473.a n = A382612 n

end A382612

/-! ## A382612.P1982400288356384405

`A002061(n)-A002061(n)*A024001(n)`
-/

namespace A382612.P1982400288356384405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002061 n - A002061 n * A024001 n

end

end A382612.P1982400288356384405

namespace A382612

/-- `A002061(n)-A002061(n)*A024001(n)` -/
def P1982400288356384405.Spec : Prop :=
  ∀ n, P1982400288356384405.a n = A382612 n

end A382612

/-! ## A382612.P17469349248340155215

`A000584(n)+A242135(n)-A246767(n+1)`
-/

namespace A382612.P17469349248340155215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000584 n + (A242135 n - A246767 (n + 1))

end

end A382612.P17469349248340155215

namespace A382612

/-- `A000584(n)+A242135(n)-A246767(n+1)` -/
def P17469349248340155215.Spec : Prop :=
  ∀ n, P17469349248340155215.a n = A382612 n

end A382612

/-!
# A382613: Expansion of 1/(1 - x*(1 + x)^3)^2.

The programs for A382613, there is no canonical definition to state claims against.
-/

/-! ## A382613.P6185461018866001289

`A256132(A032199(n+2))`
-/

namespace A382613.P6185461018866001289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256132 (A032199 (n + 2)).toNat

end

end A382613.P6185461018866001289

/-! ## A382613.P8556959996257163254

`A005232(n)*A316844(A390686(n))`
-/

namespace A382613.P8556959996257163254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005232 n * A316844 (A390686 n).toNat

end

end A382613.P8556959996257163254

/-!
# A382614: Expansion of 1/(1 - x*(1 + x)^3)^3.

The programs for A382614, there is no canonical definition to state claims against.
-/

/-! ## A382614.P8905881341400823557

`A362125(eq[3, A025581(n)])`
-/

namespace A382614.P8905881341400823557
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362125 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A382614.P8905881341400823557

/-! ## A382614.P11002401721519126806

`A362125(eq[4, A004736(n+1)])`
-/

namespace A382614.P11002401721519126806
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362125 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A382614.P11002401721519126806

/-! ## A382614.P17360220770032524678

`A362125(eq[4, sqrt(A055461(n+1))])`
-/

namespace A382614.P17360220770032524678
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A055461 (n + 1) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362125 (SequenceMachineLib.nth (fun j => (f1 j : ℝ) = f2 j) n)

end

end A382614.P17360220770032524678

/-! ## A382614.P16711792353250152107

`A362125(eq[4, log2(A090988(n+1))])`
-/

namespace A382614.P16711792353250152107
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A090988 (n + 1) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362125 (SequenceMachineLib.nth (fun j => (f1 j : ℝ) = f2 j) n)

end

end A382614.P16711792353250152107

/-! ## A382614.P1491301817369622476

`A362125(eq[4, 1-∑[A167407(n)]])`
-/

namespace A382614.P1491301817369622476
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167407 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ∑ j ∈ Finset.range (n + 1), f3 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362125 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A382614.P1491301817369622476

/-! ## A382614.P14161643979670711688

`A362125(eq[4, A212012(n+1)/2])`
-/

namespace A382614.P14161643979670711688
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A212012 (n + 1) : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362125 (SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n)

end

end A382614.P14161643979670711688

/-!
# A382615: Expansion of 1/(1 - x/(1 - x)^3)^3.

The programs for A382615, there is no canonical definition to state claims against.
-/

/-! ## A382615.P11856748840906387530

`A104321(a(n-1))-3` with `a(0)=1, a(1)=3`
-/

namespace A382615.P11856748840906387530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  A104321 (a (n - 1)).toNat - 3

end

end A382615.P11856748840906387530

/-!
# A382616: Expansion of 1/(1 - x/(1 - x)^3)^2.

The programs for A382616, there is no canonical definition to state claims against.
-/

/-! ## A382616.P12546137567223199015

`A090379(A138156(n+1))`
-/

namespace A382616.P12546137567223199015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090379 (A138156 (n + 1)).toNat

end

end A382616.P12546137567223199015

/-! ## A382616.P15799363149493990734

`A137588(A290689(3*n+5))-A137588(n+1)`
-/

namespace A382616.P15799363149493990734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137588 (A290689 (3 * n + 5)).toNat - A137588 (n + 1)

end

end A382616.P15799363149493990734

/-!
# A382617: Numbers k such that k = m*(m^2 + 1) where m^2 + 1 is prime.

The programs for A382617, the canonical program `A382617.P9446645730098561292` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A382617 has offset 1).

The definition of A382617 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002496, A005574, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A382617.P9446645730098561292

`A005574(n+1)*A002496(n+1)`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A382617

/-- `A005574(n+1)*A002496(n+1)` -/
def P9446645730098561292.Spec : Prop :=
  ∀ n, P9446645730098561292.a n = A382617 (n + 1)

theorem P9446645730098561292.correct : P9446645730098561292.Spec := by
  intro n
  simp only [A382617, Nat.add_sub_cancel]

end A382617

/-! ## A382617.P2370709097874111599

`floor(sqrt(A394683(n+1)))`
-/

namespace A382617.P2370709097874111599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A394683 (n + 1))

end

end A382617.P2370709097874111599

namespace A382617

/-- `floor(sqrt(A394683(n+1)))` -/
def P2370709097874111599.Spec : Prop :=
  ∀ n, P2370709097874111599.a n = A382617 (n + 1)

end A382617

/-! ## A382617.P8006212670574108146

`A059793(n)/2*A002496(n+1)`
-/

namespace A382617.P8006212670574108146
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059793 n : ℚ) / 2 * (A002496 (n + 1) : ℚ)

end

end A382617.P8006212670574108146

namespace A382617

/-- `A059793(n)/2*A002496(n+1)` -/
def P8006212670574108146.Spec : Prop :=
  ∀ n, P8006212670574108146.a n = (A382617 (n + 1) : ℚ)

end A382617

/-! ## A382617.P789839428040955503

`A002496(n+1)+A002496(n+1)*A089593(n+1)`
-/

namespace A382617.P789839428040955503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002496 (n + 1) + A002496 (n + 1) * A089593 (n + 1)

end

end A382617.P789839428040955503

namespace A382617

/-- `A002496(n+1)+A002496(n+1)*A089593(n+1)` -/
def P789839428040955503.Spec : Prop :=
  ∀ n, P789839428040955503.a n = A382617 (n + 1)

end A382617

/-! ## A382617.P12677703901052261797

`A002496(n+1)*A090693(n+1)-A002496(n+1)`
-/

namespace A382617.P12677703901052261797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002496 (n + 1) * A090693 (n + 1) - A002496 (n + 1)

end

end A382617.P12677703901052261797

namespace A382617

/-- `A002496(n+1)*A090693(n+1)-A002496(n+1)` -/
def P12677703901052261797.Spec : Prop :=
  ∀ n, P12677703901052261797.a n = A382617 (n + 1)

end A382617

/-! ## A382617.P11078912341360307691

`record[(n+1)*A089120(n+1)]`
-/

namespace A382617.P11078912341360307691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A089120 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A382617.P11078912341360307691

namespace A382617

/-- `record[(n+1)*A089120(n+1)]` -/
def P11078912341360307691.Spec : Prop :=
  ∀ n, P11078912341360307691.a n = A382617 (n + 1)

end A382617

/-! ## A382617.P13706903625300536806

`A034262(A005574(n+1))`
-/

namespace A382617.P13706903625300536806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034262 (A005574 (n + 1)).toNat

end

end A382617.P13706903625300536806

namespace A382617

/-- `A034262(A005574(n+1))` -/
def P13706903625300536806.Spec : Prop :=
  ∀ n, P13706903625300536806.a n = A382617 (n + 1)

end A382617

/-! ## A382617.P958209258437512996

`eq[1, A053000(n)]*A002496(n+1)`
-/

namespace A382617.P958209258437512996
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053000 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) * A002496 (n + 1)

end

end A382617.P958209258437512996

namespace A382617

/-- `eq[1, A053000(n)]*A002496(n+1)` -/
def P958209258437512996.Spec : Prop :=
  ∀ n, P958209258437512996.a n = A382617 (n + 1)

end A382617

/-! ## A382617.P13590770790026961117

`A005574(n+1)*A160457(A090693(n+1))`
-/

namespace A382617.P13590770790026961117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005574 (n + 1) * A160457 (A090693 (n + 1)).toNat

end

end A382617.P13590770790026961117

namespace A382617

/-- `A005574(n+1)*A160457(A090693(n+1))` -/
def P13590770790026961117.Spec : Prop :=
  ∀ n, P13590770790026961117.a n = A382617 (n + 1)

end A382617

/-! ## A382617.P9986619681087763034

`A000040(A062325(n+1))*A005574(n+1)`
-/

namespace A382617.P9986619681087763034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A062325 (n + 1)).toNat * A005574 (n + 1)

end

end A382617.P9986619681087763034

namespace A382617

/-- `A000040(A062325(n+1))*A005574(n+1)` -/
def P9986619681087763034.Spec : Prop :=
  ∀ n, P9986619681087763034.a n = A382617 (n + 1)

end A382617

/-!
# A382618: a(n) = 3^(n-2)*(binomial(n,2) + 3*n + 9).

The programs for A382618, the canonical program `A382618.P9245698915621952104` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A382618 has offset 0).

The definition of A382618 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A382618.P9245698915621952104

`3^(n-2)*(C(n, 2)+3*n+9)`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A382618

/-- `3^(n-2)*(C(n, 2)+3*n+9)` -/
def P9245698915621952104.Spec : Prop :=
  ∀ n, P9245698915621952104.a n = (A382618 n : ℚ)

end A382618

/-! ## A382618.P2268691828761465059

`3^(n-2)*(n²+5*n+18)/2`
-/

namespace A382618.P2268691828761465059
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ ((n : ℤ) - 2 : ℤ) * ((n ^ 2 + 5 * n + 18 : ℚ) / 2)

end

end A382618.P2268691828761465059

namespace A382618

/-- `3^(n-2)*(n²+5*n+18)/2` -/
def P2268691828761465059.Spec : Prop :=
  ∀ n, P2268691828761465059.a n = (A382618 n : ℚ)

end A382618

/-! ## A382618.P43521766506403709

`A081909(n)+A027471(n+1)`
-/

namespace A382618.P43521766506403709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081909 n + A027471 (n + 1)

end

end A382618.P43521766506403709

namespace A382618

/-- `A081909(n)+A027471(n+1)` -/
def P43521766506403709.Spec : Prop :=
  ∀ n, P43521766506403709.a n = A382618 n

end A382618

/-! ## A382618.P4384452139836134332

`A081892(n)-A027471(n+1)`
-/

namespace A382618.P4384452139836134332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081892 n - A027471 (n + 1)

end

end A382618.P4384452139836134332

namespace A382618

/-- `A081892(n)-A027471(n+1)` -/
def P4384452139836134332.Spec : Prop :=
  ∀ n, P4384452139836134332.a n = A382618 n

end A382618

/-! ## A382618.P6081671710013371771

`A081909(n+1)-2*A081909(n)`
-/

namespace A382618.P6081671710013371771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081909 (n + 1) - 2 * A081909 n

end

end A382618.P6081671710013371771

namespace A382618

/-- `A081909(n+1)-2*A081909(n)` -/
def P6081671710013371771.Spec : Prop :=
  ∀ n, P6081671710013371771.a n = A382618 n

end A382618

/-! ## A382618.P1115233664905993809

`A000302(n)-A384415(n)`
-/

namespace A382618.P1115233664905993809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000302 n - A384415 n

end

end A382618.P1115233664905993809

namespace A382618

/-- `A000302(n)-A384415(n)` -/
def P1115233664905993809.Spec : Prop :=
  ∀ n, P1115233664905993809.a n = A382618 n

end A382618

/-! ## A382618.P9110839232262347496

`A027471(n+1)+A000302(n)-A380024(n)`
-/

namespace A382618.P9110839232262347496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027471 (n + 1) + (A000302 n - A380024 n)

end

end A382618.P9110839232262347496

namespace A382618

/-- `A027471(n+1)+A000302(n)-A380024(n)` -/
def P9110839232262347496.Spec : Prop :=
  ∀ n, P9110839232262347496.a n = A382618 n

end A382618

/-!
# A382621: Lexicographically earliest sequence of distinct positive integers such that if a digit d in the digit stream (ignoring commas) is even, the previous digit is > d.

The programs for A382621, there is no canonical definition to state claims against.
-/

/-! ## A382621.P8840203524244812632

`A382622(n)+a(n-1)` with `a(0)=1`
-/

namespace A382621.P8840203524244812632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A382622 n + a (n - 1)

end

end A382621.P8840203524244812632

/-! ## A382621.P9461107752792410503

`xor(n+1, A075743(A127400(n+4)))`
-/

namespace A382621.P9461107752792410503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n + 1 : ℤ) (A075743 (A127400 (n + 4)).toNat)

end

end A382621.P9461107752792410503

/-! ## A382621.P15100799340030996759

`xor(n+1, A188967(A183517(3*n+4)))`
-/

namespace A382621.P15100799340030996759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n + 1 : ℤ) (A188967 (A183517 (3 * n + 4)).toNat)

end

end A382621.P15100799340030996759

/-! ## A382621.P14086893730987639832

`xor(A014378(A014378(n)), A072774(n+1))`
-/

namespace A382621.P14086893730987639832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A014378 (A014378 n).toNat) (A072774 (n + 1))

end

end A382621.P14086893730987639832

/-! ## A382621.P6802578503606749599

`xor(A014378(A014378(n)), A299702(n+1))`
-/

namespace A382621.P6802578503606749599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A014378 (A014378 n).toNat) (A299702 (n + 1))

end

end A382621.P6802578503606749599

/-!
# A382622: First differences of A382621.

The programs for A382622, there is no canonical definition to state claims against.
-/

/-! ## A382622.P10132987303050920433

`A382621(n+2)-A382621(n+1)`
-/

namespace A382622.P10132987303050920433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382621 (n + 2) - A382621 (n + 1)

end

end A382622.P10132987303050920433

/-! ## A382622.P14077266918002172062

`Δ[A382621(n+1)]`
-/

namespace A382622.P14077266918002172062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382621 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A382622.P14077266918002172062

/-!
# A382623: Positive integers that contain an even digit d immediately preceded by a digit <= d.

The programs for A382623, there is no canonical definition to state claims against.
-/

/-! ## A382623.P11326388911337568014

`comp[A382624(n+1)-1]+1`
-/

namespace A382623.P11326388911337568014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382624 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A382623.P11326388911337568014

/-! ## A382623.P11681785023439559295

`eq[A037808(n+1), A087256(n+1)]`
-/

namespace A382623.P11681785023439559295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037808 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087256 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A382623.P11681785023439559295

/-! ## A382623.P17383414893192620504

`eq[A037808(n+1), A131456(n+1)]`
-/

namespace A382623.P17383414893192620504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037808 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131456 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A382623.P17383414893192620504

/-! ## A382623.P7800788808270798133

`lt[A135517(n), A285706(A213217(n))]`
-/

namespace A382623.P7800788808270798133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135517 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285706 (A213217 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A382623.P7800788808270798133

/-! ## A382623.P9678476039150052522

`eq[A037808(n+1), A157334(n)]`
-/

namespace A382623.P9678476039150052522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037808 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157334 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A382623.P9678476039150052522

/-!
# A382624: Positive integers such that every even digit except the leftmost is immediately preceded by a larger digit.

The programs for A382624, there is no canonical definition to state claims against.
-/

/-! ## A382624.P16665172883410188758

`eq[1, char[A382621(n+1)]]`
-/

namespace A382624.P16665172883410188758
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382621 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A382624.P16665172883410188758

/-! ## A382624.P4092995419115913727

`eq[floor(1/(n+1)), char[A382623(n+1)]]`
-/

namespace A382624.P4092995419115913727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊1 / (n + 1 : ℚ)⌋

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382623 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℤ)) n

end

end A382624.P4092995419115913727

/-! ## A382624.P10273309764020019656

`∑[A143589(A025162(n+1)²)]`
-/

namespace A382624.P10273309764020019656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143589 (A025162 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A382624.P10273309764020019656

/-! ## A382624.P7886632441772454357

`lt[A000010(A156247(2*(n+2))), A158251(n+1)]`
-/

namespace A382624.P7886632441772454357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A156247 (2 * (n + 2))).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158251 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A382624.P7886632441772454357

/-! ## A382624.P12253478478581573305

`lt[A075124(n+1), A369748(A156247(2*(n+2)))]`
-/

namespace A382624.P12253478478581573305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075124 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369748 (A156247 (2 * (n + 2))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A382624.P12253478478581573305

/-!
# A382628: Centered hexagonal numbers that are sphenic numbers.

The programs for A382628, the canonical program `A382628.P14994600880805004209` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A382628 has offset 1).

The definition of A382628 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 129 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A382628.P14994600880805004209

`∩[A154729(n+1), A003215(n)]`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A382628

/-- `∩[A154729(n+1), A003215(n)]` -/
def P14994600880805004209.Spec : Prop :=
  ∀ n, (P14994600880805004209.a n : ℤ) = A382628 (n + 1)

theorem P14994600880805004209.correct : P14994600880805004209.Spec := by
  intro n
  simp only [A382628, Nat.add_sub_cancel]

end A382628

/-! ## A382628.P13262734178019279831

`∩[A154729(n+1), A007980(n)]`
-/

namespace A382628.P13262734178019279831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154729 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007980 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A382628.P13262734178019279831

namespace A382628

/-- `∩[A154729(n+1), A007980(n)]` -/
def P13262734178019279831.Spec : Prop :=
  ∀ n, (P13262734178019279831.a n : ℤ) = A382628 (n + 1)

end A382628

/-! ## A382628.P17477096448880679518

`∩[A154729(n+1), A077043(n)]`
-/

namespace A382628.P17477096448880679518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154729 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077043 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A382628.P17477096448880679518

namespace A382628

/-- `∩[A154729(n+1), A077043(n)]` -/
def P17477096448880679518.Spec : Prop :=
  ∀ n, (P17477096448880679518.a n : ℤ) = A382628 (n + 1)

end A382628

/-! ## A382628.P3115448477930339806

`∩[A154729(n+1), A354343(n)]`
-/

namespace A382628.P3115448477930339806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154729 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354343 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A382628.P3115448477930339806

namespace A382628

/-- `∩[A154729(n+1), A354343(n)]` -/
def P3115448477930339806.Spec : Prop :=
  ∀ n, (P3115448477930339806.a n : ℤ) = A382628 (n + 1)

end A382628

/-! ## A382628.P3546385148519307961

`∩[A154729(n+1), A159961(n+1)]`
-/

namespace A382628.P3546385148519307961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154729 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159961 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A382628.P3546385148519307961

namespace A382628

/-- `∩[A154729(n+1), A159961(n+1)]` -/
def P3546385148519307961.Spec : Prop :=
  ∀ n, (P3546385148519307961.a n : ℤ) = A382628 (n + 1)

end A382628

/-! ## A382628.P12617241455858568631

`∩[A154729(n+1), A298125(n+1)]`
-/

namespace A382628.P12617241455858568631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154729 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298125 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A382628.P12617241455858568631

namespace A382628

/-- `∩[A154729(n+1), A298125(n+1)]` -/
def P12617241455858568631.Spec : Prop :=
  ∀ n, (P12617241455858568631.a n : ℤ) = A382628 (n + 1)

end A382628

/-! ## A382628.P7271630119701156392

`∩[A154729(n+1), A309805(n+1)]`
-/

namespace A382628.P7271630119701156392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154729 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309805 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A382628.P7271630119701156392

namespace A382628

/-- `∩[A154729(n+1), A309805(n+1)]` -/
def P7271630119701156392.Spec : Prop :=
  ∀ n, (P7271630119701156392.a n : ℤ) = A382628 (n + 1)

end A382628

/-! ## A382628.P9377900427640806448

`∩[A154729(n+1), A352243(n+1)]`
-/

namespace A382628.P9377900427640806448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154729 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352243 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A382628.P9377900427640806448

namespace A382628

/-- `∩[A154729(n+1), A352243(n+1)]` -/
def P9377900427640806448.Spec : Prop :=
  ∀ n, (P9377900427640806448.a n : ℤ) = A382628 (n + 1)

end A382628

/-! ## A382628.P12098268792330705750

`∩[A154729(n+1), A092094(n+4)]`
-/

namespace A382628.P12098268792330705750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154729 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092094 (n + 4)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A382628.P12098268792330705750

namespace A382628

/-- `∩[A154729(n+1), A092094(n+4)]` -/
def P12098268792330705750.Spec : Prop :=
  ∀ n, (P12098268792330705750.a n : ℤ) = A382628 (n + 1)

end A382628

/-!
# A382629: Triangle T(n,k), n >= 0, 0 <= k <= n, read by rows, where T(n,k) = (n-k)*T(n-1,k-1) + 2*(k+1)*T(n-1,k) + A102365(n,k) with T(n,k) = 0 if k < 0 or k > n.

The programs for A382629, there is no canonical definition to state claims against.
-/

/-! ## A382629.P11343828543169557642

`A249421(A325233(n+1))+A062253(n)`
-/

namespace A382629.P11343828543169557642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249421 (A325233 (n + 1)).toNat + A062253 n

end

end A382629.P11343828543169557642

/-!
# A382630: a(n) is the number of ways that n can be written as b+c*d, where b, c and d are positive integers and b < c < d.

The programs for A382630, the canonical program `A382630.P1089145758881786009` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A382630 has offset 0).

The definition of A382630 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A382630.P1089145758881786009

`floor(A078152(A028310(n))/2)`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A382630

/-- `floor(A078152(A028310(n))/2)` -/
def P1089145758881786009.Spec : Prop :=
  ∀ n, P1089145758881786009.a n = A382630 n

theorem P1089145758881786009.correct : P1089145758881786009.Spec := by
  intro n
  simp only [A382630]

end A382630

/-! ## A382630.P14157995488098679823

`A333382(A375035(n+1))`
-/

namespace A382630.P14157995488098679823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333382 (A375035 (n + 1)).toNat

end

end A382630.P14157995488098679823

namespace A382630

/-- `A333382(A375035(n+1))` -/
def P14157995488098679823.Spec : Prop :=
  ∀ n, P14157995488098679823.a n = A382630 n

end A382630

/-! ## A382630.P6714609330617457175

`A257994(A243881(n)+A099308(n+1))`
-/

namespace A382630.P6714609330617457175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257994 (A243881 n + A099308 (n + 1)).toNat

end

end A382630.P6714609330617457175

namespace A382630

/-- `A257994(A243881(n)+A099308(n+1))` -/
def P6714609330617457175.Spec : Prop :=
  ∀ n, P6714609330617457175.a n = A382630 n

end A382630

/-! ## A382630.P6345294609951516914

`A007837(n)%A007413(A247981(2*n+3))`
-/

namespace A382630.P6345294609951516914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007837 n) (A007413 (A247981 (2 * n + 3)).toNat)

end

end A382630.P6345294609951516914

namespace A382630

/-- `A007837(n)%A007413(A247981(2*n+3))` -/
def P6345294609951516914.Spec : Prop :=
  ∀ n, P6345294609951516914.a n = A382630 n

end A382630

/-! ## A382630.P9472402284929162483

`A351982(C(A291709(n), A371172(n)))`
-/

namespace A382630.P9472402284929162483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351982 (Nat.choose (A291709 n).toNat (A371172 n).toNat)

end

end A382630.P9472402284929162483

namespace A382630

/-- `A351982(C(A291709(n), A371172(n)))` -/
def P9472402284929162483.Spec : Prop :=
  ∀ n, P9472402284929162483.a n = A382630 n

end A382630

/-!
# A382631: Integers whose binary representation contains exactly four 1's, no two 1's being adjacent.

The programs for A382631, there is no canonical definition to state claims against.
-/

/-! ## A382631.P18017004038421114847

`A048678(A014312(n+1))`
-/

namespace A382631.P18017004038421114847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048678 (A014312 (n + 1)).toNat

end

end A382631.P18017004038421114847

/-! ## A382631.P14099112926025503923

`A003714(A179244(n+1))`
-/

namespace A382631.P14099112926025503923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003714 (A179244 (n + 1)).toNat

end

end A382631.P14099112926025503923

/-! ## A382631.P7086972236993307451

`A379657(A038466(n+1))`
-/

namespace A382631.P7086972236993307451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379657 (A038466 (n + 1)).toNat

end

end A382631.P7086972236993307451

/-! ## A382631.P4064868908274233275

`A003714(eq[4, A007895(n)])`
-/

namespace A382631.P4064868908274233275
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007895 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003714 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A382631.P4064868908274233275

/-! ## A382631.P4164582065554320625

`A048678(eq[4, A000120(n)])`
-/

namespace A382631.P4164582065554320625
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048678 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A382631.P4164582065554320625

/-! ## A382631.P16787565830565743276

`filter[A014312(n+1), A085357(#)]`
-/

namespace A382631.P16787565830565743276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014312 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A085357 (f1 j).toNat = 1) n)

end

end A382631.P16787565830565743276

/-! ## A382631.P9228614235425674646

`filter[A043684(n+1), A085357(#)]`
-/

namespace A382631.P9228614235425674646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043684 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A085357 (f1 j).toNat = 1) n)

end

end A382631.P9228614235425674646

/-! ## A382631.P14483005794967263849

`filter[A238248(n+1), A085357(#)]`
-/

namespace A382631.P14483005794967263849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238248 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A085357 (f1 j).toNat = 1) n)

end

end A382631.P14483005794967263849

/-! ## A382631.P9780742649130565528

`∩[A014312(n+1), A003714(n)]`
-/

namespace A382631.P9780742649130565528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014312 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003714 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A382631.P9780742649130565528

/-! ## A382631.P668270232939242315

`∩[A043684(n+1), A003714(n)]`
-/

namespace A382631.P668270232939242315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043684 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003714 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A382631.P668270232939242315

/-!
# A382640: a(n) = 90*binomial(n,6) + 90*binomial(n,5) + 54*binomial(n,4) + 24*binomial(n,3) + 9*binomial(n,2) + 3*n + 1.

The programs for A382640, there is no canonical definition to state claims against.
-/

/-! ## A382640.P1510217620022131292

`A239993(A001444(n))`
-/

namespace A382640.P1510217620022131292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239993 (A001444 n).toNat

end

end A382640.P1510217620022131292

/-!
# A382641: a(n) = round(c^n), where c is the supergolden ratio A092526.

The programs for A382641, the canonical program `A382641.P13885099359187499510` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A382641 has offset 0).

The definition of A382641 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A382641.P13885099359187499510

`a(n-1)+a(n-3)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=3, a(4)=5, a(5)=7, a(6)=10, a(7)=15, a(8)=21`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A382641

/-- `a(n-1)+a(n-3)` -/
def P13885099359187499510.Spec : Prop :=
  ∀ n, (P13885099359187499510.a n : ℤ) = A382641 n

theorem P13885099359187499510.correct : P13885099359187499510.Spec := by
  intro n
  simp only [A382641]

end A382641

/-! ## A382641.P10661561288621862099

`floor(A077868(2*n)/A077868(n))`
-/

namespace A382641.P10661561288621862099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A077868 (2 * n) : ℚ) / (A077868 n : ℚ)⌋

end

end A382641.P10661561288621862099

namespace A382641

/-- `floor(A077868(2*n)/A077868(n))` -/
def P10661561288621862099.Spec : Prop :=
  ∀ n, P10661561288621862099.a n = A382641 n

end A382641

/-! ## A382641.P13396676683463751782

`A000194(A327764(n+1))`
-/

namespace A382641.P13396676683463751782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A327764 (n + 1)).toNat

end

end A382641.P13396676683463751782

namespace A382641

/-- `A000194(A327764(n+1))` -/
def P13396676683463751782.Spec : Prop :=
  ∀ n, P13396676683463751782.a n = A382641 n

end A382641

/-! ## A382641.P1136307771391781009

`A130148(A097596(n+2))`
-/

namespace A382641.P1136307771391781009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130148 (A097596 (n + 2)).toNat

end

end A382641.P1136307771391781009

namespace A382641

/-- `A130148(A097596(n+2))` -/
def P1136307771391781009.Spec : Prop :=
  ∀ n, P1136307771391781009.a n = A382641 n

end A382641

/-! ## A382641.P6817508362516435842

`A002024(or(A151861(n), A320650(n)))`
-/

namespace A382641.P6817508362516435842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (Int.lor (A151861 n) (A320650 n)).toNat

end

end A382641.P6817508362516435842

namespace A382641

/-- `A002024(or(A151861(n), A320650(n)))` -/
def P6817508362516435842.Spec : Prop :=
  ∀ n, P6817508362516435842.a n = A382641 n

end A382641

/-!
# A382643: Expansion of e.g.f. exp( x/(1-3*x)^(4/3) ).

The programs for A382643, there is no canonical definition to state claims against.
-/

/-! ## A382643.P3542428508135418107

`A328066((2*n+1)^(n-1))`
-/

namespace A382643.P3542428508135418107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328066 (SequenceMachineLib.roundAway ((2 * n + 1 : ℚ) ^ ((n : ℤ) - 1 : ℤ))).toNat

end

end A382643.P3542428508135418107

/-!
# A382644: Number of king permutations on n elements not beginning with the smallest element.

The programs for A382644, the canonical program `A382644.P6872854875972776054` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A382644 has offset 0).

The definition of A382644 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A382644.P6872854875972776054

`(n+1)*a(n-1)-(n-3)*(a(n-2)+a(n-3))+(n-2)*a(n-4)` with `a(0)=1, a(1)=0, a(2)=0, a(3)=0`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A382644

/-- `(n+1)*a(n-1)-(n-3)*(a(n-2)+a(n-3))+(n-2)*a(n-4)` -/
def P6872854875972776054.Spec : Prop :=
  ∀ n, P6872854875972776054.a n = A382644 n

theorem P6872854875972776054.correct : P6872854875972776054.Spec := by
  intro n
  simp only [A382644]

end A382644

/-! ## A382644.P7420802194390856834

`A002464(n)-a(n-1)` with `a(0)=1`
-/

namespace A382644.P7420802194390856834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A002464 n - a (n - 1)

end

end A382644.P7420802194390856834

namespace A382644

/-- `A002464(n)-a(n-1)` -/
def P7420802194390856834.Spec : Prop :=
  ∀ n, P7420802194390856834.a n = A382644 n

end A382644

/-! ## A382644.P12173321841631146827

`A338526(lt[A113413(n), 2])-a(n-1)` with `a(0)=1`
-/

namespace A382644.P12173321841631146827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113413 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A338526 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n) - a (n - 1)

end

end A382644.P12173321841631146827

namespace A382644

/-- `A338526(lt[A113413(n), 2])-a(n-1)` -/
def P12173321841631146827.Spec : Prop :=
  ∀ n, P12173321841631146827.a n = A382644 n

end A382644

/-! ## A382644.P11104176437026614642

`A383040(n)-A010058(A383039(n))`
-/

namespace A382644.P11104176437026614642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383040 n - A010058 (A383039 n).toNat

end

end A382644.P11104176437026614642

namespace A382644

/-- `A383040(n)-A010058(A383039(n))` -/
def P11104176437026614642.Spec : Prop :=
  ∀ n, P11104176437026614642.a n = A382644 n

end A382644

/-! ## A382644.P1008596362277999806

`A383040(n)-A242240(A242240(n))`
-/

namespace A382644.P1008596362277999806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383040 n - A242240 (A242240 n).toNat

end

end A382644.P1008596362277999806

namespace A382644

/-- `A383040(n)-A242240(A242240(n))` -/
def P1008596362277999806.Spec : Prop :=
  ∀ n, P1008596362277999806.a n = A382644 n

end A382644

/-!
# A382645: Number of king permutations on n elements not beginning with the smallest element and not ending with the largest element.

The programs for A382645, there is no canonical definition to state claims against.
-/

/-! ## A382645.P18258162462751016781

`A382644(n)-a(n-1)` with `a(0)=1, a(1)=0`
-/

namespace A382645.P18258162462751016781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A382644 n - a (n - 1)

end

end A382645.P18258162462751016781

/-! ## A382645.P17394066972970061249

`A382651(n^((n+1)/∑{digits}[n+1, #]))`
-/

namespace A382645.P17394066972970061249
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382651 (SequenceMachineLib.roundAway ((n : ℝ) ^ ((n + 1 : ℚ) / ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum : ℕ) : ℚ) : ℝ))).toNat

end

end A382645.P17394066972970061249

/-! ## A382645.P11693214664216001027

`A065599(A382651(n))`
-/

namespace A382645.P11693214664216001027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065599 (A382651 n).toNat

end

end A382645.P11693214664216001027

/-! ## A382645.P6346613024885925631

`A029578(A382651(n)+1)`
-/

namespace A382645.P6346613024885925631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029578 (A382651 n + 1).toNat

end

end A382645.P6346613024885925631

/-! ## A382645.P15754835734721449715

`A382651(A029965(n+1))`
-/

namespace A382645.P15754835734721449715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382651 (A029965 (n + 1)).toNat

end

end A382645.P15754835734721449715

/-!
# A382648: Expansion of 1/(1 - x*(1 + 4*x)^(1/2))^3.

The programs for A382648, there is no canonical definition to state claims against.
-/

/-! ## A382648.P7201470262876144019

`A353716(A374244(n+1))`
-/

namespace A382648.P7201470262876144019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353716 (A374244 (n + 1)).toNat

end

end A382648.P7201470262876144019

/-!
# A382649: Expansion of 1/(1 - x*(1 + 4*x)^(3/2))^2.

The programs for A382649, there is no canonical definition to state claims against.
-/

/-! ## A382649.P17398502571028809518

`A178953(A214836(n+2))`
-/

namespace A382649.P17398502571028809518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178953 (A214836 (n + 2)).toNat

end

end A382649.P17398502571028809518

/-! ## A382649.P3779398996385526295

`A089052(A035006(2*(n+1))*A109449(2*n))`
-/

namespace A382649.P3779398996385526295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089052 (A035006 (2 * (n + 1)) * A109449 (2 * n)).toNat

end

end A382649.P3779398996385526295

/-!
# A382650: Expansion of 1/(1 - x*(1 + 4*x)^(3/2))^3.

The programs for A382650, there is no canonical definition to state claims against.
-/

/-! ## A382650.P10495155472093864998

`A329313(A046165(n))+A298817(2*n+1)`
-/

namespace A382650.P10495155472093864998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329313 (A046165 n).toNat + A298817 (2 * n + 1)

end

end A382650.P10495155472093864998

/-!
# A382651: Number of king permutations on n elements without strict fixed points.

The programs for A382651, there is no canonical definition to state claims against.
-/

/-! ## A382651.P1910576853785315504

`A383040(n)-a(n-1)` with `a(0)=1`
-/

namespace A382651.P1910576853785315504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A383040 n - a (n - 1)

end

end A382651.P1910576853785315504

/-!
# A382652: Expansion of e.g.f. exp( x/(1-3*x)^(5/3) ).

The programs for A382652, there is no canonical definition to state claims against.
-/

/-! ## A382652.P9770966276014692256

`A065199(A365976(n))+A059968(n)`
-/

namespace A382652.P9770966276014692256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065199 (A365976 n).toNat + A059968 n

end

end A382652.P9770966276014692256

/-!
# A382653: Numbers k such that a regular k-gon (k>=3) cannot be constructed with a compass, straightedge and an angle quinsector.

The programs for A382653, there is no canonical definition to state claims against.
-/

/-! ## A382653.P10980198188497777899

`lt[10, A005352(A080400(n+1))]+1`
-/

namespace A382653.P10980198188497777899
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005352 (A080400 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A382653.P10980198188497777899

/-! ## A382653.P208904802795624344

`lt[A062279(A116883(2*n+1)), A062293(n)]`
-/

namespace A382653.P208904802795624344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062279 (A116883 (2 * n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062293 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A382653.P208904802795624344

/-!
# A382656: a(n) = L(2*n+1)+4*n+2.

The programs for A382656, the canonical program `A382656.P1214037163921368664` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A382656 has offset 0).

The definition of A382656 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A382656.P1214037163921368664

`5*a(n-1)-8*a(n-2)+5*a(n-3)-a(n-4)` with `a(0)=3, a(1)=10, a(2)=21, a(3)=43`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A382656

/-- `5*a(n-1)-8*a(n-2)+5*a(n-3)-a(n-4)` -/
def P1214037163921368664.Spec : Prop :=
  ∀ n, P1214037163921368664.a n = A382656 n

theorem P1214037163921368664.correct : P1214037163921368664.Spec := by
  intro n
  simp only [A382656]

end A382656

/-! ## A382656.P12193960215677338263

`A002878(n)+A016825(n)`
-/

namespace A382656.P12193960215677338263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002878 n + A016825 n

end

end A382656.P12193960215677338263

namespace A382656

/-- `A002878(n)+A016825(n)` -/
def P12193960215677338263.Spec : Prop :=
  ∀ n, P12193960215677338263.a n = A382656 n

end A382656

/-! ## A382656.P3776875179940529895

`A162483(n)+4*n`
-/

namespace A382656.P3776875179940529895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162483 n + (4 * n : ℤ)

end

end A382656.P3776875179940529895

namespace A382656

/-- `A162483(n)+4*n` -/
def P3776875179940529895.Spec : Prop :=
  ∀ n, P3776875179940529895.a n = A382656 n

end A382656

/-! ## A382656.P2593224703439858919

`A248924(2*n+1)+2*n+1`
-/

namespace A382656.P2593224703439858919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248924 (2 * n + 1) + (2 * n + 1 : ℤ)

end

end A382656.P2593224703439858919

namespace A382656

/-- `A248924(2*n+1)+2*n+1` -/
def P2593224703439858919.Spec : Prop :=
  ∀ n, P2593224703439858919.a n = A382656 n

end A382656

/-! ## A382656.P935418545274631203

`A054963(n)+A016873(n)`
-/

namespace A382656.P935418545274631203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054963 n + A016873 n

end

end A382656.P935418545274631203

namespace A382656

/-- `A054963(n)+A016873(n)` -/
def P935418545274631203.Spec : Prop :=
  ∀ n, P935418545274631203.a n = A382656 n

end A382656

/-! ## A382656.P2888327853091390376

`A188378(n)+A016813(n)`
-/

namespace A382656.P2888327853091390376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188378 n + A016813 n

end

end A382656.P2888327853091390376

namespace A382656

/-- `A188378(n)+A016813(n)` -/
def P2888327853091390376.Spec : Prop :=
  ∀ n, P2888327853091390376.a n = A382656 n

end A382656

/-! ## A382656.P17997076697222667986

`A215602(n)+A047522(n+1)`
-/

namespace A382656.P17997076697222667986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215602 n + A047522 (n + 1)

end

end A382656.P17997076697222667986

namespace A382656

/-- `A215602(n)+A047522(n+1)` -/
def P17997076697222667986.Spec : Prop :=
  ∀ n, P17997076697222667986.a n = A382656 n

end A382656

/-! ## A382656.P2933567697227524845

`A256233(n)+A059558(n+1)`
-/

namespace A382656.P2933567697227524845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256233 n + A059558 (n + 1)

end

end A382656.P2933567697227524845

namespace A382656

/-- `A256233(n)+A059558(n+1)` -/
def P2933567697227524845.Spec : Prop :=
  ∀ n, P2933567697227524845.a n = A382656 n

end A382656

/-! ## A382656.P11864953955014489924

`A004767(n)+A001610(2*n)`
-/

namespace A382656.P11864953955014489924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004767 n + A001610 (2 * n)

end

end A382656.P11864953955014489924

namespace A382656

/-- `A004767(n)+A001610(2*n)` -/
def P11864953955014489924.Spec : Prop :=
  ∀ n, P11864953955014489924.a n = A382656 n

end A382656

/-! ## A382656.P5710850616797244850

`A004277(2*n+1)+A002878(n)`
-/

namespace A382656.P5710850616797244850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (2 * n + 1) + A002878 n

end

end A382656.P5710850616797244850

namespace A382656

/-- `A004277(2*n+1)+A002878(n)` -/
def P5710850616797244850.Spec : Prop :=
  ∀ n, P5710850616797244850.a n = A382656 n

end A382656

/-! ## A382656.P4713219928299360597

`A016825(n)+A000032(2*n+1)`
-/

namespace A382656.P4713219928299360597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016825 n + A000032 (2 * n + 1)

end

end A382656.P4713219928299360597

namespace A382656

/-- `A016825(n)+A000032(2*n+1)` -/
def P4713219928299360597.Spec : Prop :=
  ∀ n, P4713219928299360597.a n = A382656 n

end A382656

/-! ## A382656.P14518881362846469129

`A016825(n)+A000204(2*n+1)`
-/

namespace A382656.P14518881362846469129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016825 n + A000204 (2 * n + 1)

end

end A382656.P14518881362846469129

namespace A382656

/-- `A016825(n)+A000204(2*n+1)` -/
def P14518881362846469129.Spec : Prop :=
  ∀ n, P14518881362846469129.a n = A382656 n

end A382656

/-! ## A382656.P17088313740849943714

`A016825(n)+A014217(2*n+1)`
-/

namespace A382656.P17088313740849943714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016825 n + A014217 (2 * n + 1)

end

end A382656.P17088313740849943714

namespace A382656

/-- `A016825(n)+A014217(2*n+1)` -/
def P17088313740849943714.Spec : Prop :=
  ∀ n, P17088313740849943714.a n = A382656 n

end A382656

/-! ## A382656.P7574653458375775799

`A129728(2*(n+1))+A000045(2*n)`
-/

namespace A382656.P7574653458375775799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129728 (2 * (n + 1)) + A000045 (2 * n)

end

end A382656.P7574653458375775799

namespace A382656

/-- `A129728(2*(n+1))+A000045(2*n)` -/
def P7574653458375775799.Spec : Prop :=
  ∀ n, P7574653458375775799.a n = A382656 n

end A382656

/-! ## A382656.P11005747216916996492

`A171734(2*n)+A000032(2*n+1)`
-/

namespace A382656.P11005747216916996492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171734 (2 * n) + A000032 (2 * n + 1)

end

end A382656.P11005747216916996492

namespace A382656

/-- `A171734(2*n)+A000032(2*n+1)` -/
def P11005747216916996492.Spec : Prop :=
  ∀ n, P11005747216916996492.a n = A382656 n

end A382656

/-! ## A382656.P2519733577984564390

`A004277(2*n+1)+A000032(2*n+1)`
-/

namespace A382656.P2519733577984564390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (2 * n + 1) + A000032 (2 * n + 1)

end

end A382656.P2519733577984564390

namespace A382656

/-- `A004277(2*n+1)+A000032(2*n+1)` -/
def P2519733577984564390.Spec : Prop :=
  ∀ n, P2519733577984564390.a n = A382656 n

end A382656

/-! ## A382656.P3923998114576438893

`A004277(2*n+1)+A000204(2*n+1)`
-/

namespace A382656.P3923998114576438893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (2 * n + 1) + A000204 (2 * n + 1)

end

end A382656.P3923998114576438893

namespace A382656

/-- `A004277(2*n+1)+A000204(2*n+1)` -/
def P3923998114576438893.Spec : Prop :=
  ∀ n, P3923998114576438893.a n = A382656 n

end A382656

/-! ## A382656.P17335168382001545393

`A005843(2*n+1)+A000032(2*n+1)`
-/

namespace A382656.P17335168382001545393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (2 * n + 1) + A000032 (2 * n + 1)

end

end A382656.P17335168382001545393

namespace A382656

/-- `A005843(2*n+1)+A000032(2*n+1)` -/
def P17335168382001545393.Spec : Prop :=
  ∀ n, P17335168382001545393.a n = A382656 n

end A382656

/-! ## A382656.P14127225175920865183

`A005013(2*n+1)+A004277(2*n+1)`
-/

namespace A382656.P14127225175920865183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005013 (2 * n + 1) + A004277 (2 * n + 1)

end

end A382656.P14127225175920865183

namespace A382656

/-- `A005013(2*n+1)+A004277(2*n+1)` -/
def P14127225175920865183.Spec : Prop :=
  ∀ n, P14127225175920865183.a n = A382656 n

end A382656

/-! ## A382656.P9523053617659263871

`A014217(2*n+1)+A004277(2*n+1)`
-/

namespace A382656.P9523053617659263871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014217 (2 * n + 1) + A004277 (2 * n + 1)

end

end A382656.P9523053617659263871

namespace A382656

/-- `A014217(2*n+1)+A004277(2*n+1)` -/
def P9523053617659263871.Spec : Prop :=
  ∀ n, P9523053617659263871.a n = A382656 n

end A382656

/-!
# A382659: Numbers k such that k < A053669(k)^2 * A380539(k), i.e., k < A382248(k).

The programs for A382659, there is no canonical definition to state claims against.
-/

/-! ## A382659.P17959128947725476507

`lt[n, A382248(n+1)]+1`
-/

namespace A382659.P17959128947725476507
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382248 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A382659.P17959128947725476507

/-! ## A382659.P17800475828996358574

`lt[∑[n+1], A322056(n)]`
-/

namespace A382659.P17800475828996358574
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322056 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f3 j) n

end

end A382659.P17800475828996358574

/-! ## A382659.P17629112292587353562

`lt[A353860(n), A353867(n+1)]+1`
-/

namespace A382659.P17629112292587353562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353860 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353867 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A382659.P17629112292587353562

/-! ## A382659.P12835809840424966015

`lt[A321451(n), A186891(A047966(n+1))]`
-/

namespace A382659.P12835809840424966015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321451 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186891 (A047966 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A382659.P12835809840424966015

/-! ## A382659.P10057144926634018107

`lt[A054640(A271484(n)), A271508(n+1)]`
-/

namespace A382659.P10057144926634018107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054640 (A271484 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271508 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A382659.P10057144926634018107

/-!
# A382660: The unitary totient function applied to the exponentially odd numbers (A268335).

The programs for A382660, the canonical program `A382660.P13276603593670196303` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A382660 has offset 1).

The definition of A382660 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7055 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A382660.P4447698207325751120

`A382661(n+1)/A366535(n+1)`
-/

namespace A382660.P4447698207325751120
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A382661 (n + 1) : ℚ) / (A366535 (n + 1) : ℚ)

end

end A382660.P4447698207325751120

namespace A382660

/-- `A382661(n+1)/A366535(n+1)` -/
def P4447698207325751120.Spec : Prop :=
  ∀ n, P4447698207325751120.a n = (A382660 (n + 1) : ℚ)

end A382660

/-! ## A382660.P13276603593670196303

`A047994(A268335(n+1))`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A382660

/-- `A047994(A268335(n+1))` -/
def P13276603593670196303.Spec : Prop :=
  ∀ n, P13276603593670196303.a n = A382660 (n + 1)

theorem P13276603593670196303.correct : P13276603593670196303.Spec := by
  intro n
  simp only [A382660, Nat.add_sub_cancel]

end A382660

/-! ## A382660.P5624050416377062162

`A384052(A268335(2*n+1-n))`
-/

namespace A382660.P5624050416377062162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384052 (A268335 (2 * n + 1 - n)).toNat

end

end A382660.P5624050416377062162

namespace A382660

/-- `A384052(A268335(2*n+1-n))` -/
def P5624050416377062162.Spec : Prop :=
  ∀ n, P5624050416377062162.a n = A382660 (n + 1)

end A382660

/-! ## A382660.P3062923031914903899

`A382661(n+1)/A358346(A268335(n+1))`
-/

namespace A382660.P3062923031914903899
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A382661 (n + 1) : ℚ) / (A358346 (A268335 (n + 1)).toNat : ℚ)

end

end A382660.P3062923031914903899

namespace A382660

/-- `A382661(n+1)/A358346(A268335(n+1))` -/
def P3062923031914903899.Spec : Prop :=
  ∀ n, P3062923031914903899.a n = (A382660 (n + 1) : ℚ)

end A382660

/-! ## A382660.P14347291612401502631

`A307037(A268335(n+1)%A000040(n+1))`
-/

namespace A382660.P14347291612401502631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307037 (Int.tmod (A268335 (n + 1)) (A000040 (n + 1))).toNat

end

end A382660.P14347291612401502631

namespace A382660

/-- `A307037(A268335(n+1)%A000040(n+1))` -/
def P14347291612401502631.Spec : Prop :=
  ∀ n, P14347291612401502631.a n = A382660 (n + 1)

end A382660

/-! ## A382660.P16445865357333613909

`A392085(A374458(n+1))`
-/

namespace A382660.P16445865357333613909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392085 (A374458 (n + 1)).toNat

end

end A382660.P16445865357333613909

namespace A382660

/-- `A392085(A374458(n+1))` -/
def P16445865357333613909.Spec : Prop :=
  ∀ n, P16445865357333613909.a n = A382660 (n + 1)

end A382660

/-!
# A382661: The unitary Jordan totient function applied to the exponentially odd numbers (A268335).

The programs for A382661, the canonical program `A382661.P7475283618975773470` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A382661 has offset 1).

The definition of A382661 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A382661.P7475283618975773470

`A366535(n+1)*A382660(n+1)`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A382661

/-- `A366535(n+1)*A382660(n+1)` -/
def P7475283618975773470.Spec : Prop :=
  ∀ n, P7475283618975773470.a n = A382661 (n + 1)

theorem P7475283618975773470.correct : P7475283618975773470.Spec := by
  intro n
  simp only [A382661, Nat.add_sub_cancel]

end A382661

/-! ## A382661.P8563438829571950820

`A191414(A268335(n+1))`
-/

namespace A382661.P8563438829571950820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191414 (A268335 (n + 1)).toNat

end

end A382661.P8563438829571950820

namespace A382661

/-- `A191414(A268335(n+1))` -/
def P8563438829571950820.Spec : Prop :=
  ∀ n, P8563438829571950820.a n = A382661 (n + 1)

end A382661

/-! ## A382661.P7177508019408692203

`A191414(∪[A002035(n+1), A001779(n)])`
-/

namespace A382661.P7177508019408692203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002035 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001779 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191414 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A382661.P7177508019408692203

namespace A382661

/-- `A191414(∪[A002035(n+1), A001779(n)])` -/
def P7177508019408692203.Spec : Prop :=
  ∀ n, P7177508019408692203.a n = A382661 (n + 1)

end A382661

/-! ## A382661.P8294299465094525972

`A191414(A367407(n+1)*A367419(n+1))`
-/

namespace A382661.P8294299465094525972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191414 (A367407 (n + 1) * A367419 (n + 1)).toNat

end

end A382661.P8294299465094525972

namespace A382661

/-- `A191414(A367407(n+1)*A367419(n+1))` -/
def P8294299465094525972.Spec : Prop :=
  ∀ n, P8294299465094525972.a n = A382661 (n + 1)

end A382661

/-! ## A382661.P7505946240453488233

`A047994(A374458(n+1))`
-/

namespace A382661.P7505946240453488233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047994 (A374458 (n + 1)).toNat

end

end A382661.P7505946240453488233

namespace A382661

/-- `A047994(A374458(n+1))` -/
def P7505946240453488233.Spec : Prop :=
  ∀ n, P7505946240453488233.a n = A382661 (n + 1)

end A382661

/-! ## A382661.P18118785170933292633

`A047994(A268335(n+1)²)`
-/

namespace A382661.P18118785170933292633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047994 (A268335 (n + 1) ^ 2).toNat

end

end A382661.P18118785170933292633

namespace A382661

/-- `A047994(A268335(n+1)²)` -/
def P18118785170933292633.Spec : Prop :=
  ∀ n, P18118785170933292633.a n = A382661 (n + 1)

end A382661

/-! ## A382661.P10757563664056407652

`A384048(A268335(n+1)²)`
-/

namespace A382661.P10757563664056407652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384048 (A268335 (n + 1) ^ 2).toNat

end

end A382661.P10757563664056407652

namespace A382661

/-- `A384048(A268335(n+1)²)` -/
def P10757563664056407652.Spec : Prop :=
  ∀ n, P10757563664056407652.a n = A382661 (n + 1)

end A382661

/-! ## A382661.P18098087554141224037

`A384054(A268335(n+1)²)`
-/

namespace A382661.P18098087554141224037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384054 (A268335 (n + 1) ^ 2).toNat

end

end A382661.P18098087554141224037

namespace A382661

/-- `A384054(A268335(n+1)²)` -/
def P18098087554141224037.Spec : Prop :=
  ∀ n, P18098087554141224037.a n = A382661 (n + 1)

end A382661

/-! ## A382661.P17727413774193350454

`A385195(A268335(n+1)²)`
-/

namespace A382661.P17727413774193350454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385195 (A268335 (n + 1) ^ 2).toNat

end

end A382661.P17727413774193350454

namespace A382661

/-- `A385195(A268335(n+1)²)` -/
def P17727413774193350454.Spec : Prop :=
  ∀ n, P17727413774193350454.a n = A382661 (n + 1)

end A382661

/-! ## A382661.P11200791162870330437

`A385197(A268335(n+1)²)`
-/

namespace A382661.P11200791162870330437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385197 (A268335 (n + 1) ^ 2).toNat

end

end A382661.P11200791162870330437

namespace A382661

/-- `A385197(A268335(n+1)²)` -/
def P11200791162870330437.Spec : Prop :=
  ∀ n, P11200791162870330437.a n = A382661 (n + 1)

end A382661

/-!
# A382662: The unitary totient function applied to the cubefree numbers (A004709).

The programs for A382662, the canonical program `A382662.P17606153397219342384` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A382662 has offset 1).

The definition of A382662 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8319 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A382662.P446572854601734568

`A091732(eq[1, A295657(n+1)]+1)`
-/

namespace A382662.P446572854601734568
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295657 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091732 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A382662.P446572854601734568

namespace A382662

/-- `A091732(eq[1, A295657(n+1)]+1)` -/
def P446572854601734568.Spec : Prop :=
  ∀ n, P446572854601734568.a n = A382662 (n + 1)

end A382662

/-! ## A382662.P1864163106950118983

`A091732(eq[1, A317941(n+1)]+1)`
-/

namespace A382662.P1864163106950118983
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317941 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091732 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A382662.P1864163106950118983

namespace A382662

/-- `A091732(eq[1, A317941(n+1)]+1)` -/
def P1864163106950118983.Spec : Prop :=
  ∀ n, P1864163106950118983.a n = A382662 (n + 1)

end A382662

/-! ## A382662.P12912890055642170514

`A382663(n+1)/A366537(n+1)`
-/

namespace A382662.P12912890055642170514
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A382663 (n + 1) : ℚ) / (A366537 (n + 1) : ℚ)

end

end A382662.P12912890055642170514

namespace A382662

/-- `A382663(n+1)/A366537(n+1)` -/
def P12912890055642170514.Spec : Prop :=
  ∀ n, P12912890055642170514.a n = (A382662 (n + 1) : ℚ)

end A382662

/-! ## A382662.P5001446097230765680

`A091732(A160813(n+1)-A005117(n+1))`
-/

namespace A382662.P5001446097230765680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091732 (A160813 (n + 1) - A005117 (n + 1)).toNat

end

end A382662.P5001446097230765680

namespace A382662

/-- `A091732(A160813(n+1)-A005117(n+1))` -/
def P5001446097230765680.Spec : Prop :=
  ∀ n, P5001446097230765680.a n = A382662 (n + 1)

end A382662

/-! ## A382662.P15921761211157665855

`A091732(record[A382902(n+1)])`
-/

namespace A382662.P15921761211157665855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382902 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091732 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A382662.P15921761211157665855

namespace A382662

/-- `A091732(record[A382902(n+1)])` -/
def P15921761211157665855.Spec : Prop :=
  ∀ n, P15921761211157665855.a n = A382662 (n + 1)

end A382662

/-! ## A382662.P17606153397219342384

`A047994(A004709(n+1))`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A382662

/-- `A047994(A004709(n+1))` -/
def P17606153397219342384.Spec : Prop :=
  ∀ n, P17606153397219342384.a n = A382662 (n + 1)

theorem P17606153397219342384.correct : P17606153397219342384.Spec := by
  intro n
  simp only [A382662, Nat.add_sub_cancel]

end A382662

/-! ## A382662.P8274841921831782618

`A091732(record[A050985(n+1)])`
-/

namespace A382662.P8274841921831782618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050985 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091732 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A382662.P8274841921831782618

namespace A382662

/-- `A091732(record[A050985(n+1)])` -/
def P8274841921831782618.Spec : Prop :=
  ∀ n, P8274841921831782618.a n = A382662 (n + 1)

end A382662

/-! ## A382662.P17005424419790719671

`A392085(A392365(n+1))`
-/

namespace A382662.P17005424419790719671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392085 (A392365 (n + 1)).toNat

end

end A382662.P17005424419790719671

namespace A382662

/-- `A392085(A392365(n+1))` -/
def P17005424419790719671.Spec : Prop :=
  ∀ n, P17005424419790719671.a n = A382662 (n + 1)

end A382662

/-!
# A382663: The unitary Jordan totient function applied to the cubefree numbers (A004709).

The programs for A382663, the canonical program `A382663.P15887194253345116133` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A382663 has offset 1).

The definition of A382663 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A382663.P15887194253345116133

`A366537(n+1)*A382662(n+1)`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A382663

/-- `A366537(n+1)*A382662(n+1)` -/
def P15887194253345116133.Spec : Prop :=
  ∀ n, P15887194253345116133.a n = A382663 (n + 1)

theorem P15887194253345116133.correct : P15887194253345116133.Spec := by
  intro n
  simp only [A382663, Nat.add_sub_cancel]

end A382663

/-! ## A382663.P5371014751236149270

`A191414(A004709(n+1))`
-/

namespace A382663.P5371014751236149270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191414 (A004709 (n + 1)).toNat

end

end A382663.P5371014751236149270

namespace A382663

/-- `A191414(A004709(n+1))` -/
def P5371014751236149270.Spec : Prop :=
  ∀ n, P5371014751236149270.a n = A382663 (n + 1)

end A382663

/-! ## A382663.P12866910451731801445

`A047994(A004709(n+1))*A366537(n+1)`
-/

namespace A382663.P12866910451731801445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047994 (A004709 (n + 1)).toNat * A366537 (n + 1)

end

end A382663.P12866910451731801445

namespace A382663

/-- `A047994(A004709(n+1))*A366537(n+1)` -/
def P12866910451731801445.Spec : Prop :=
  ∀ n, P12866910451731801445.a n = A382663 (n + 1)

end A382663

/-! ## A382663.P1480461902156002622

`A091732(A004709(n+1)²)`
-/

namespace A382663.P1480461902156002622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091732 (A004709 (n + 1) ^ 2).toNat

end

end A382663.P1480461902156002622

namespace A382663

/-- `A091732(A004709(n+1)²)` -/
def P1480461902156002622.Spec : Prop :=
  ∀ n, P1480461902156002622.a n = A382663 (n + 1)

end A382663

/-! ## A382663.P11879094313105302917

`A091732(A004709(n+1)^2)`
-/

namespace A382663.P11879094313105302917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091732 (A004709 (n + 1) ^ 2).toNat

end

end A382663.P11879094313105302917

namespace A382663

/-- `A091732(A004709(n+1)^2)` -/
def P11879094313105302917.Spec : Prop :=
  ∀ n, P11879094313105302917.a n = A382663 (n + 1)

end A382663

/-! ## A382663.P6070579438716736957

`A091732(record[A050985(n+1)²])`
-/

namespace A382663.P6070579438716736957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050985 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091732 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A382663.P6070579438716736957

namespace A382663

/-- `A091732(record[A050985(n+1)²])` -/
def P6070579438716736957.Spec : Prop :=
  ∀ n, P6070579438716736957.a n = A382663 (n + 1)

end A382663

/-! ## A382663.P9548363090068071182

`A091732(record[A382902(n+1)²])`
-/

namespace A382663.P9548363090068071182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382902 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091732 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A382663.P9548363090068071182

namespace A382663

/-- `A091732(record[A382902(n+1)²])` -/
def P9548363090068071182.Spec : Prop :=
  ∀ n, P9548363090068071182.a n = A382663 (n + 1)

end A382663

/-! ## A382663.P7402406524410420429

`A091732((eq[1, A295657(n+1)]+1)²)`
-/

namespace A382663.P7402406524410420429
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295657 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091732 ((SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1) ^ 2)

end

end A382663.P7402406524410420429

namespace A382663

/-- `A091732((eq[1, A295657(n+1)]+1)²)` -/
def P7402406524410420429.Spec : Prop :=
  ∀ n, P7402406524410420429.a n = A382663 (n + 1)

end A382663

/-! ## A382663.P17974513544796568677

`A091732((eq[1, A317941(n+1)]+1)²)`
-/

namespace A382663.P17974513544796568677
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317941 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091732 ((SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1) ^ 2)

end

end A382663.P17974513544796568677

namespace A382663

/-- `A091732((eq[1, A317941(n+1)]+1)²)` -/
def P17974513544796568677.Spec : Prop :=
  ∀ n, P17974513544796568677.a n = A382663 (n + 1)

end A382663

/-! ## A382663.P1346808211937551140

`A091732((A160813(n+1)-A005117(n+1))²)`
-/

namespace A382663.P1346808211937551140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091732 ((A160813 (n + 1) - A005117 (n + 1)) ^ 2).toNat

end

end A382663.P1346808211937551140

namespace A382663

/-- `A091732((A160813(n+1)-A005117(n+1))²)` -/
def P1346808211937551140.Spec : Prop :=
  ∀ n, P1346808211937551140.a n = A382663 (n + 1)

end A382663

/-!
# A382664: Partial sums of the exponentially odd numbers (A268335).

The programs for A382664, the canonical program `A382664.P9972389899537758138` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A382664 has offset 1).

The definition of A382664 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A382664.P9972389899537758138

`∑[A268335(n+1)]`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A382664

/-- `∑[A268335(n+1)]` -/
def P9972389899537758138.Spec : Prop :=
  ∀ n, P9972389899537758138.a n = A382664 (n + 1)

theorem P9972389899537758138.correct : P9972389899537758138.Spec := by
  intro n
  simp only [A382664, Nat.add_sub_cancel]

end A382664

/-! ## A382664.P14810726641159587392

`∑[sqrt(A374458(n+1))]`
-/

namespace A382664.P14810726641159587392
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A374458 (n + 1) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A382664.P14810726641159587392

namespace A382664

/-- `∑[sqrt(A374458(n+1))]` -/
def P14810726641159587392.Spec : Prop :=
  ∀ n, P14810726641159587392.a n = (A382664 (n + 1) : ℝ)

end A382664

/-! ## A382664.P8317932617687389759

`∑[record[A331737(n+1)]]`
-/

namespace A382664.P8317932617687389759
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331737 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A382664.P8317932617687389759

namespace A382664

/-- `∑[record[A331737(n+1)]]` -/
def P8317932617687389759.Spec : Prop :=
  ∀ n, P8317932617687389759.a n = A382664 (n + 1)

end A382664

/-! ## A382664.P18372333102722706897

`A002035(n)+a(n-1)` with `a(0)=1`
-/

namespace A382664.P18372333102722706897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A002035 n + a (n - 1)

end

end A382664.P18372333102722706897

namespace A382664

/-- `A002035(n)+a(n-1)` -/
def P18372333102722706897.Spec : Prop :=
  ∀ n, P18372333102722706897.a n = A382664 (n + 1)

end A382664

/-! ## A382664.P17965635657025762687

`∑[record[A350389(n+1)]]`
-/

namespace A382664.P17965635657025762687
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350389 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A382664.P17965635657025762687

namespace A382664

/-- `∑[record[A350389(n+1)]]` -/
def P17965635657025762687.Spec : Prop :=
  ∀ n, P17965635657025762687.a n = A382664 (n + 1)

end A382664

/-! ## A382664.P11255264578105503505

`∑[record[A350390(n+1)]]`
-/

namespace A382664.P11255264578105503505
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350390 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A382664.P11255264578105503505

namespace A382664

/-- `∑[record[A350390(n+1)]]` -/
def P11255264578105503505.Spec : Prop :=
  ∀ n, P11255264578105503505.a n = A382664 (n + 1)

end A382664

/-! ## A382664.P10419585620627262238

`∑[record[A390371(n+1)]]`
-/

namespace A382664.P10419585620627262238
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390371 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A382664.P10419585620627262238

namespace A382664

/-- `∑[record[A390371(n+1)]]` -/
def P10419585620627262238.Spec : Prop :=
  ∀ n, P10419585620627262238.a n = A382664 (n + 1)

end A382664

/-! ## A382664.P6848525326092791359

`∑[record[A390867(n+1)]]`
-/

namespace A382664.P6848525326092791359
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390867 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A382664.P6848525326092791359

namespace A382664

/-- `∑[record[A390867(n+1)]]` -/
def P6848525326092791359.Spec : Prop :=
  ∀ n, P6848525326092791359.a n = A382664 (n + 1)

end A382664

/-!
# A382665: Number of distinct degree sequences among all connected simple graphs with n vertices whose degrees are consecutive integers.

The programs for A382665, there is no canonical definition to state claims against.
-/

/-! ## A382665.P9357336664572218038

`A032539(A148437(n))`
-/

namespace A382665.P9357336664572218038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032539 (A148437 n).toNat

end

end A382665.P9357336664572218038

/-!
# A382667: Position of the first instance of prime(n), in base 2, in the binary representation of Pi after the binary point.

The programs for A382667, there is no canonical definition to state claims against.
-/

/-! ## A382667.P9424057945191074144

`A178707(A000040(n+1))`
-/

namespace A382667.P9424057945191074144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178707 (A000040 (n + 1)).toNat

end

end A382667.P9424057945191074144

/-! ## A382667.P15887702204054166476

`A178707(Δ[A007504(n)])`
-/

namespace A382667.P15887702204054166476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178707 (f1 (n + 1) - f1 n).toNat

end

end A382667.P15887702204054166476

/-! ## A382667.P12087724686759799392

`A178707(A006005(n+1))`
-/

namespace A382667.P12087724686759799392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178707 (A006005 (n + 1)).toNat

end

end A382667.P12087724686759799392

/-! ## A382667.P3601468242171940130

`A178707(A176997(n+1))`
-/

namespace A382667.P3601468242171940130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178707 (A176997 (n + 1)).toNat

end

end A382667.P3601468242171940130

/-! ## A382667.P12512043872411742624

`A178707(A216883(n+1))`
-/

namespace A382667.P12512043872411742624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178707 (A216883 (n + 1)).toNat

end

end A382667.P12512043872411742624

/-! ## A382667.P10933068258837610636

`A178707(A216884(n+1))`
-/

namespace A382667.P10933068258837610636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178707 (A216884 (n + 1)).toNat

end

end A382667.P10933068258837610636

/-! ## A382667.P10189913167090828378

`A178707(A216885(n+1))`
-/

namespace A382667.P10189913167090828378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178707 (A216885 (n + 1)).toNat

end

end A382667.P10189913167090828378

/-! ## A382667.P15758922926689451703

`A178707(A385492(n+1))`
-/

namespace A382667.P15758922926689451703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178707 (A385492 (n + 1)).toNat

end

end A382667.P15758922926689451703

/-! ## A382667.P8827778405074992648

`A178707(A008578(n+2))`
-/

namespace A382667.P8827778405074992648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178707 (A008578 (n + 2)).toNat

end

end A382667.P8827778405074992648

/-!
# A382668: a(n) = C(n+1) - C(n-1) - 2*C(n-2) where C(n) = A000108(n) are the Catalan numbers.

The programs for A382668, the canonical program `A382668.P9934936757865442400` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A382668 has offset 2).

The definition of A382668 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 170 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A382668.P16090619132109174360

`A071718(n+1)+A000245(n)-A000108(n)`
-/

namespace A382668.P16090619132109174360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071718 (n + 1) + (A000245 n - A000108 n)

end

end A382668.P16090619132109174360

namespace A382668

/-- `A071718(n+1)+A000245(n)-A000108(n)` -/
def P16090619132109174360.Spec : Prop :=
  ∀ n, P16090619132109174360.a n = A382668 (n + 2)

end A382668

/-! ## A382668.P9934936757865442400

`A280891(n+2)-A000108(n)-A000108(n)`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A382668

/-- `A280891(n+2)-A000108(n)-A000108(n)` -/
def P9934936757865442400.Spec : Prop :=
  ∀ n, P9934936757865442400.a n = A382668 (n + 2)

theorem P9934936757865442400.correct : P9934936757865442400.Spec := by
  intro n
  simp only [A382668, Nat.add_sub_cancel]

end A382668

/-! ## A382668.P11876726269412483497

`A005807(n+2)-A067294(n)`
-/

namespace A382668.P11876726269412483497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005807 (n + 2) - A067294 n

end

end A382668.P11876726269412483497

namespace A382668

/-- `A005807(n+2)-A067294(n)` -/
def P11876726269412483497.Spec : Prop :=
  ∀ n, P11876726269412483497.a n = A382668 (n + 2)

end A382668

/-!
# A382670: Numbers k such that a regular k-gon (k>=3) can be constructed with a compass, straightedge and an angle quinsector.

The programs for A382670, there is no canonical definition to state claims against.
-/

/-! ## A382670.P1048380162670825852

`A070994(A077342(n+2))`
-/

namespace A382670.P1048380162670825852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070994 (A077342 (n + 2)).toNat

end

end A382670.P1048380162670825852

/-! ## A382670.P7443307195837660448

`A070994(A242474(n+2))`
-/

namespace A382670.P7443307195837660448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070994 (A242474 (n + 2)).toNat

end

end A382670.P7443307195837660448

/-! ## A382670.P10221933873375403545

`A070994(A351374(n+2))`
-/

namespace A382670.P10221933873375403545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070994 (A351374 (n + 2)).toNat

end

end A382670.P10221933873375403545

/-! ## A382670.P5889470103426773628

`A070994(A151764(n+2))`
-/

namespace A382670.P5889470103426773628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070994 (A151764 (n + 2)).toNat

end

end A382670.P5889470103426773628

/-!
# A382673: Square array A(n,k), n >= 0, k >= 0, read by antidiagonals downwards, where A(n,k) = n! * k! * [x^n * y^k] exp(x+y) / (exp(x) + exp(y) - exp(x+y))^3.

The programs for A382673, there is no canonical definition to state claims against.
-/

/-! ## A382673.P15392685295581958040

`A035936(A359313(n))`
-/

namespace A382673.P15392685295581958040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035936 (A359313 n).toNat

end

end A382673.P15392685295581958040

/-! ## A382673.P2020224644294881738

`A279385(A174526(n))`
-/

namespace A382673.P2020224644294881738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279385 (A174526 n).toNat

end

end A382673.P2020224644294881738

/-! ## A382673.P17538276320027753472

`A061266(A022166(n)²)`
-/

namespace A382673.P17538276320027753472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061266 (A022166 n ^ 2).toNat

end

end A382673.P17538276320027753472

/-! ## A382673.P4165933477273782495

`A127260(A022166(n)+1)`
-/

namespace A382673.P4165933477273782495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127260 (A022166 n + 1).toNat

end

end A382673.P4165933477273782495

/-! ## A382673.P10078896017596142217

`A279385(A285357(n+1))`
-/

namespace A382673.P10078896017596142217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279385 (A285357 (n + 1)).toNat

end

end A382673.P10078896017596142217

/-!
# A382674: Square array A(n,k), n >= 0, k >= 0, read by antidiagonals downwards, where A(n,k) = n! * k! * [x^n * y^k] exp(x+y) / (exp(x) + exp(y) - exp(x+y))^4.

The programs for A382674, there is no canonical definition to state claims against.
-/

/-! ## A382674.P3590066544285212790

`A299485(A176487(n))+A176487(n)`
-/

namespace A382674.P3590066544285212790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299485 (A176487 n).toNat + A176487 n

end

end A382674.P3590066544285212790

/-! ## A382674.P1710867540803028753

`A157177(n)-A165656(A126770(n))`
-/

namespace A382674.P1710867540803028753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157177 n - A165656 (A126770 n).toNat

end

end A382674.P1710867540803028753

/-! ## A382674.P3737172245277730494

`A157177(n)-A151755(A176420(n))`
-/

namespace A382674.P3737172245277730494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157177 n - A151755 (A176420 n).toNat

end

end A382674.P3737172245277730494

/-! ## A382674.P9727804195504738562

`or(A165656(A126770(n)), A272644(n+2))`
-/

namespace A382674.P9727804195504738562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A165656 (A126770 n).toNat) (A272644 (n + 2))

end

end A382674.P9727804195504738562

/-! ## A382674.P16164751738173314692

`or(A151755(A176420(n)), A272644(n+2))`
-/

namespace A382674.P16164751738173314692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A151755 (A176420 n).toNat) (A272644 (n + 2))

end

end A382674.P16164751738173314692

/-!
# A382675: a(n) = 4 - 15 * 2^n + 12 * 3^n.

The programs for A382675, the canonical program `A382675.P17791523391848259414` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A382675 has offset 0).

The definition of A382675 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4-15*2^n+12*3^n` (program `A382675.P17791523391848259414`, by `A382675.P17791523391848259414.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A382675.P17791523391848259414

`4-15*2^n+12*3^n`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A382675

/-- `4-15*2^n+12*3^n` -/
def P17791523391848259414.Spec : Prop :=
  ∀ n, P17791523391848259414.a n = A382675 n

theorem P17791523391848259414.correct : P17791523391848259414.Spec := by
  intro n
  simp only [A382675]

end A382675

/-! ## A382675.P2498226222806273187

`∑[A281773(n+2)-A281773(n)]`
-/

namespace A382675.P2498226222806273187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281773 (n + 2) - A281773 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A382675.P2498226222806273187

namespace A382675

/-- `∑[A281773(n+2)-A281773(n)]` -/
def P2498226222806273187.Spec : Prop :=
  ∀ n, P2498226222806273187.a n = A382675 n

end A382675

/-! ## A382675.P16612773019401217422

`∑[A003063(n+3)-A064686(n+1)]`
-/

namespace A382675.P16612773019401217422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003063 (n + 3) - A064686 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A382675.P16612773019401217422

namespace A382675

/-- `∑[A003063(n+3)-A064686(n+1)]` -/
def P16612773019401217422.Spec : Prop :=
  ∀ n, P16612773019401217422.a n = A382675 n

end A382675

/-! ## A382675.P7792792538525082861

`A295560(∑[2^n])`
-/

namespace A382675.P7792792538525082861
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295560 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A382675.P7792792538525082861

namespace A382675

/-- `A295560(∑[2^n])` -/
def P7792792538525082861.Spec : Prop :=
  ∀ n, P7792792538525082861.a n = A382675 n

end A382675

/-!
# A382676: a(n) = Sum_{k=0..n} (k!)^2 * binomial(k+2,2) * Stirling2(n+1,k+1)^2.

The programs for A382676, there is no canonical definition to state claims against.
-/

/-! ## A382676.P3327525810678476268

`A382673(∑[4*n])`
-/

namespace A382676.P3327525810678476268
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382673 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A382676.P3327525810678476268

/-!
# A382677: a(n) = 9 - 28 * 2^n + 20 * 3^n.

The programs for A382677, the canonical program `A382677.P169409270269891668` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A382677 has offset 0).

The definition of A382677 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `9-28*2^n+20*3^n` (program `A382677.P169409270269891668`, by `A382677.P169409270269891668.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A382677.P169409270269891668

`9-28*2^n+20*3^n`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A382677

/-- `9-28*2^n+20*3^n` -/
def P169409270269891668.Spec : Prop :=
  ∀ n, P169409270269891668.a n = A382677 n

theorem P169409270269891668.correct : P169409270269891668.Spec := by
  intro n
  simp only [A382677]

end A382677

/-! ## A382677.P18168541059479448876

`A382674(∑[n+3])`
-/

namespace A382677.P18168541059479448876
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382674 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A382677.P18168541059479448876

namespace A382677

/-- `A382674(∑[n+3])` -/
def P18168541059479448876.Spec : Prop :=
  ∀ n, P18168541059479448876.a n = A382677 n

end A382677

/-!
# A382678: a(n) = Sum_{k=0..n} (k!)^2 * binomial(k+3,3) * Stirling2(n+1,k+1)^2.

The programs for A382678, there is no canonical definition to state claims against.
-/

/-! ## A382678.P17192281648925645028

`A382674(∑[4*n])`
-/

namespace A382678.P17192281648925645028
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382674 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A382678.P17192281648925645028

/-!
# A382679: a(n) = A381968(A380817(n)).

The programs for A382679, there is no canonical definition to state claims against.
-/

/-! ## A382679.P4150402132682232192

`A056023(A383419(n+1))`
-/

namespace A382679.P4150402132682232192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056023 (A383419 (n + 1)).toNat

end

end A382679.P4150402132682232192

/-! ## A382679.P11995129954989203357

`A383590(A056023(n+1))`
-/

namespace A382679.P11995129954989203357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383590 (A056023 (n + 1)).toNat

end

end A382679.P11995129954989203357

/-! ## A382679.P10223872832324029194

`A381968(A376214(n+1))`
-/

namespace A382679.P10223872832324029194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381968 (A376214 (n + 1)).toNat

end

end A382679.P10223872832324029194

/-! ## A382679.P5501339848630364262

`A376214(A382499(n+1))`
-/

namespace A382679.P5501339848630364262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376214 (A382499 (n + 1)).toNat

end

end A382679.P5501339848630364262

/-! ## A382679.P1513246835671280884

`A383724(A378762(n+1))`
-/

namespace A382679.P1513246835671280884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383724 (A378762 (n + 1)).toNat

end

end A382679.P1513246835671280884

/-! ## A382679.P8478291591486266935

`A380817(A381968(n+1))`
-/

namespace A382679.P8478291591486266935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380817 (A381968 (n + 1)).toNat

end

end A382679.P8478291591486266935

/-! ## A382679.P3993573943734271237

`A382499(A380817(n+1))`
-/

namespace A382679.P3993573943734271237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382499 (A380817 (n + 1)).toNat

end

end A382679.P3993573943734271237

/-! ## A382679.P3099326581947935738

`A382680(A381662(n+1))`
-/

namespace A382679.P3099326581947935738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382680 (A381662 (n + 1)).toNat

end

end A382679.P3099326581947935738

/-! ## A382679.P5585417100322745364

`A383419(A383723(n+1))`
-/

namespace A382679.P5585417100322745364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383419 (A383723 (n + 1)).toNat

end

end A382679.P5585417100322745364

/-! ## A382679.P14169680130773390949

`A383722(A383589(n+1))`
-/

namespace A382679.P14169680130773390949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383722 (A383589 (n + 1)).toNat

end

end A382679.P14169680130773390949

/-! ## A382679.P4525302040510304180

`A383723(A383590(n+1))`
-/

namespace A382679.P4525302040510304180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383723 (A383590 (n + 1)).toNat

end

end A382679.P4525302040510304180

/-! ## A382679.P8186594207625404589

`A376214(A056023(A383722(n+1)))`
-/

namespace A382679.P8186594207625404589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376214 (A056023 (A383722 (n + 1)).toNat).toNat

end

end A382679.P8186594207625404589

/-! ## A382679.P14657483582495924854

`A383723(A056023(A382680(n+1)))`
-/

namespace A382679.P14657483582495924854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383723 (A056023 (A382680 (n + 1)).toNat).toNat

end

end A382679.P14657483582495924854

/-! ## A382679.P15070255320032572463

`A378200(A382499(A378200(n+1)))`
-/

namespace A382679.P15070255320032572463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378200 (A382499 (A378200 (n + 1)).toNat).toNat

end

end A382679.P15070255320032572463

/-! ## A382679.P17137462347114124602

`A378684(A381968(A378684(n+1)))`
-/

namespace A382679.P17137462347114124602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378684 (A381968 (A378684 (n + 1)).toNat).toNat

end

end A382679.P17137462347114124602

/-! ## A382679.P15938703597001419916

`A378705(A381968(A378705(n+1)))`
-/

namespace A382679.P15938703597001419916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378705 (A381968 (A378705 (n + 1)).toNat).toNat

end

end A382679.P15938703597001419916

/-! ## A382679.P9590957752731151455

`A378684(A382499(A379343(n+1)))`
-/

namespace A382679.P9590957752731151455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378684 (A382499 (A379343 (n + 1)).toNat).toNat

end

end A382679.P9590957752731151455

/-! ## A382679.P16919119243258248688

`A379342(A382499(A379342(n+1)))`
-/

namespace A382679.P16919119243258248688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379342 (A382499 (A379342 (n + 1)).toNat).toNat

end

end A382679.P16919119243258248688

/-! ## A382679.P122432274490987882

`A382680(A378684(A380200(n+1)))`
-/

namespace A382679.P122432274490987882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382680 (A378684 (A380200 (n + 1)).toNat).toNat

end

end A382679.P122432274490987882

/-! ## A382679.P2943665882470400819

`A382499(A378684(A380815(n+1)))`
-/

namespace A382679.P2943665882470400819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382499 (A378684 (A380815 (n + 1)).toNat).toNat

end

end A382679.P2943665882470400819

/-!
# A382680: a(n) = A382499(A380817(n)).

The programs for A382680, there is no canonical definition to state claims against.
-/

/-! ## A382680.P12543702668022098302

`A383419(A056023(n+1))`
-/

namespace A382680.P12543702668022098302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383419 (A056023 (n + 1)).toNat

end

end A382680.P12543702668022098302

/-! ## A382680.P12141564475806905081

`A056023(A383590(n+1))`
-/

namespace A382680.P12141564475806905081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056023 (A383590 (n + 1)).toNat

end

end A382680.P12141564475806905081

/-! ## A382680.P3754546224034496181

`A376214(A381968(n+1))`
-/

namespace A382680.P3754546224034496181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376214 (A381968 (n + 1)).toNat

end

end A382680.P3754546224034496181

/-! ## A382680.P6095224558731600558

`A382499(A376214(n+1))`
-/

namespace A382680.P6095224558731600558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382499 (A376214 (n + 1)).toNat

end

end A382680.P6095224558731600558

/-! ## A382680.P17541936095540124285

`A383722(A378762(n+1))`
-/

namespace A382680.P17541936095540124285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383722 (A378762 (n + 1)).toNat

end

end A382680.P17541936095540124285

/-! ## A382680.P1741550533476987840

`A381968(A380817(n+1))`
-/

namespace A382680.P1741550533476987840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381968 (A380817 (n + 1)).toNat

end

end A382680.P1741550533476987840

/-! ## A382680.P17798678729664749751

`A380817(A382499(n+1))`
-/

namespace A382680.P17798678729664749751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380817 (A382499 (n + 1)).toNat

end

end A382680.P17798678729664749751

/-! ## A382680.P13518893470267740058

`A382679(A381662(n+1))`
-/

namespace A382680.P13518893470267740058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382679 (A381662 (n + 1)).toNat

end

end A382680.P13518893470267740058

/-! ## A382680.P3577915557638071169

`A383723(A383419(n+1))`
-/

namespace A382680.P3577915557638071169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383723 (A383419 (n + 1)).toNat

end

end A382680.P3577915557638071169

/-! ## A382680.P18399286089399394273

`A383724(A383589(n+1))`
-/

namespace A382680.P18399286089399394273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383724 (A383589 (n + 1)).toNat

end

end A382680.P18399286089399394273

/-! ## A382680.P4482602957598865853

`A383590(A383723(n+1))`
-/

namespace A382680.P4482602957598865853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383590 (A383723 (n + 1)).toNat

end

end A382680.P4482602957598865853

/-! ## A382680.P11154912559654800149

`A380817(A376214(A382679(n+1)))`
-/

namespace A382680.P11154912559654800149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380817 (A376214 (A382679 (n + 1)).toNat).toNat

end

end A382680.P11154912559654800149

/-! ## A382680.P6140873128167649926

`A379343(A381968(A378684(n+1)))`
-/

namespace A382680.P6140873128167649926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379343 (A381968 (A378684 (n + 1)).toNat).toNat

end

end A382680.P6140873128167649926

/-! ## A382680.P3392499328382944391

`A378684(A382679(A379343(n+1)))`
-/

namespace A382680.P3392499328382944391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378684 (A382679 (A379343 (n + 1)).toNat).toNat

end

end A382680.P3392499328382944391

/-! ## A382680.P2274108292495030739

`A382679(A379343(A379342(n+1)))`
-/

namespace A382680.P2274108292495030739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382679 (A379343 (A379342 (n + 1)).toNat).toNat

end

end A382680.P2274108292495030739

/-! ## A382680.P9347605125443475112

`A382499(A378684(A380245(n+1)))`
-/

namespace A382680.P9347605125443475112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382499 (A378684 (A380245 (n + 1)).toNat).toNat

end

end A382680.P9347605125443475112

/-! ## A382680.P16171310386163131531

`A381968(A378684(A380815(n+1)))`
-/

namespace A382680.P16171310386163131531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381968 (A378684 (A380815 (n + 1)).toNat).toNat

end

end A382680.P16171310386163131531

/-! ## A382680.P4323358555592698429

`A382679(A378684(A380200(n+1)))`
-/

namespace A382680.P4323358555592698429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382679 (A378684 (A380200 (n + 1)).toNat).toNat

end

end A382680.P4323358555592698429

/-! ## A382680.P6123424289701205296

`A380200(A383724(A378200(n+1)))`
-/

namespace A382680.P6123424289701205296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380200 (A383724 (A378200 (n + 1)).toNat).toNat

end

end A382680.P6123424289701205296

/-! ## A382680.P6153748091951494041

`A378684(A381968(A381663(n+1)))`
-/

namespace A382680.P6153748091951494041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378684 (A381968 (A381663 (n + 1)).toNat).toNat

end

end A382680.P6153748091951494041

/-!
# A382682: Number of integer partitions of n with origin-to-boundary graph-distance equal to 3.

The programs for A382682, there is no canonical definition to state claims against.
-/

/-! ## A382682.P270739764701427553

`∑[∑[A173920(A147210(n+1))]]`
-/

namespace A382682.P270739764701427553
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173920 (A147210 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A382682.P270739764701427553

/-!
# A382683: Expansion of (1-x^2) / (1-x-3*x^2+x^3).

The programs for A382683, the canonical program `A382683.P17701514449120339941` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A382683 has offset 0).

The definition of A382683 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 298 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A382683.P17701514449120339941

`3*a(n-2)+a(n-1)-a(n-3)` with `a(0)=1, a(1)=1, a(2)=3`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A382683

/-- `3*a(n-2)+a(n-1)-a(n-3)` -/
def P17701514449120339941.Spec : Prop :=
  ∀ n, P17701514449120339941.a n = A382683 n

theorem P17701514449120339941.correct : P17701514449120339941.Spec := by
  intro n
  simp only [A382683]

end A382683

/-! ## A382683.P6144690946797957210

`a(n-1)-(a(n-3)-3*a(n-2))` with `a(0)=1, a(1)=1, a(2)=3`
-/

namespace A382683.P6144690946797957210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 3] fun n a =>
  a (n - 1) - (a (n - 3) - 3 * a (n - 2))

end

end A382683.P6144690946797957210

namespace A382683

/-- `a(n-1)-(a(n-3)-3*a(n-2))` -/
def P6144690946797957210.Spec : Prop :=
  ∀ n, P6144690946797957210.a n = A382683 n

end A382683

/-! ## A382683.P12352498160450513482

`A052973(n)+A087955(n)-A087640(n)`
-/

namespace A382683.P12352498160450513482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052973 n + (A087955 n - A087640 n)

end

end A382683.P12352498160450513482

namespace A382683

/-- `A052973(n)+A087955(n)-A087640(n)` -/
def P12352498160450513482.Spec : Prop :=
  ∀ n, P12352498160450513482.a n = A382683 n

end A382683

/-! ## A382683.P18434992203423743006

`A052973(n)+A087956(n)-A087955(n)`
-/

namespace A382683.P18434992203423743006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052973 n + (A087956 n - A087955 n)

end

end A382683.P18434992203423743006

namespace A382683

/-- `A052973(n)+A087956(n)-A087955(n)` -/
def P18434992203423743006.Spec : Prop :=
  ∀ n, P18434992203423743006.a n = A382683 n

end A382683

/-! ## A382683.P3374769504217659279

`A052973(n)+A087957(n)-A087956(n)`
-/

namespace A382683.P3374769504217659279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052973 n + (A087957 n - A087956 n)

end

end A382683.P3374769504217659279

namespace A382683

/-- `A052973(n)+A087957(n)-A087956(n)` -/
def P3374769504217659279.Spec : Prop :=
  ∀ n, P3374769504217659279.a n = A382683 n

end A382683

/-! ## A382683.P4542418429165637674

`A052973(n)+A087958(n)-A087957(n)`
-/

namespace A382683.P4542418429165637674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052973 n + (A087958 n - A087957 n)

end

end A382683.P4542418429165637674

namespace A382683

/-- `A052973(n)+A087958(n)-A087957(n)` -/
def P4542418429165637674.Spec : Prop :=
  ∀ n, P4542418429165637674.a n = A382683 n

end A382683

/-! ## A382683.P7399084570578663901

`A307464(n+1)+A052973(n)-A125691(n)`
-/

namespace A382683.P7399084570578663901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307464 (n + 1) + (A052973 n - A125691 n)

end

end A382683.P7399084570578663901

namespace A382683

/-- `A307464(n+1)+A052973(n)-A125691(n)` -/
def P7399084570578663901.Spec : Prop :=
  ∀ n, P7399084570578663901.a n = A382683 n

end A382683

/-! ## A382683.P8925311708898057315

`Δ[Δ[A307464(n)]]`
-/

namespace A382683.P8925311708898057315
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307464 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A382683.P8925311708898057315

namespace A382683

/-- `Δ[Δ[A307464(n)]]` -/
def P8925311708898057315.Spec : Prop :=
  ∀ n, P8925311708898057315.a n = A382683 n

end A382683

/-!
# A382685: a(n) is the least integer k requiring any combination of at least n 1's or 2's to build using + and *.

The programs for A382685, there is no canonical definition to state claims against.
-/

/-! ## A382685.P1062587260629141472

`A319975(A137507(n))`
-/

namespace A382685.P1062587260629141472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319975 (A137507 n).toNat

end

end A382685.P1062587260629141472

/-! ## A382685.P16273193705894184972

`A319975(A061808(n+1))`
-/

namespace A382685.P16273193705894184972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319975 (A061808 (n + 1)).toNat

end

end A382685.P16273193705894184972

/-! ## A382685.P10126058518586643424

`A319975(A242474(2*n+1))`
-/

namespace A382685.P10126058518586643424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319975 (A242474 (2 * n + 1)).toNat

end

end A382685.P10126058518586643424

/-! ## A382685.P4335376980464238767

`A319975(lt[A319973(3*n), A319974(n+1)])`
-/

namespace A382685.P4335376980464238767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319973 (3 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319974 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319975 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A382685.P4335376980464238767

/-! ## A382685.P7776541467076292743

`A319975(2*n+1)+A000007(A277806(n+3))`
-/

namespace A382685.P7776541467076292743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319975 (2 * n + 1) + A000007 (A277806 (n + 3)).toNat

end

end A382685.P7776541467076292743

/-!
# A382691: Alternating sum of the characteristic functions of k-th powers, with k >= 2: characteristic function of squares - c.f. of cubes + c.f. of 4th powers - ... .

The programs for A382691, there is no canonical definition to state claims against.
-/

/-! ## A382691.P10352534390931785360

`Δ[A381042(n)]`
-/

namespace A382691.P10352534390931785360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381042 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A382691.P10352534390931785360

/-! ## A382691.P6192334491994715018

`A381042(n+1)-A381042(n)`
-/

namespace A382691.P6192334491994715018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381042 (n + 1) - A381042 n

end

end A382691.P6192334491994715018

/-! ## A382691.P2107636470907801685

`A357458(gcd(A052409(n+1), A321895(n+1)))`
-/

namespace A382691.P2107636470907801685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357458 (Int.gcd (A052409 (n + 1)) (A321895 (n + 1)))

end

end A382691.P2107636470907801685

/-! ## A382691.P418395291685580431

`A110246(n)%A294338(n+1)`
-/

namespace A382691.P418395291685580431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A110246 n) (A294338 (n + 1))

end

end A382691.P418395291685580431

/-! ## A382691.P4447068057378278659

`A324692(A007716(round(n*∏{e}[n+1, #/n])))`
-/

namespace A382691.P4447068057378278659
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324692 (A007716 (SequenceMachineLib.roundAway ((n : ℚ) * (∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p : ℚ) / (n : ℚ)))).toNat).toNat

end

end A382691.P4447068057378278659

/-!
# A382692: a(n) = floor of alternating sum of k-th roots of n, with k >= 2.

The programs for A382692, there is no canonical definition to state claims against.
-/

/-! ## A382692.P15000799968628218602

`∑[char[A293410(n+2)]]`
-/

namespace A382692.P15000799968628218602
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293410 (n + 2)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A382692.P15000799968628218602

/-! ## A382692.P14275263200983635316

`∑[char[∑[A284796(n+3)]]]`
-/

namespace A382692.P14275263200983635316
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284796 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A382692.P14275263200983635316

/-! ## A382692.P8310956937659752433

`∑[char[∑[A282107(n+1)+2]]]`
-/

namespace A382692.P8310956937659752433
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282107 (n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A382692.P8310956937659752433

/-! ## A382692.P5046625789813009233

`∑[char[∑[A229785(2*n+5)]]]`
-/

namespace A382692.P5046625789813009233
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229785 (2 * n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A382692.P5046625789813009233

/-! ## A382692.P1870219627987323070

`∑[char[∑[A066343(n+1)+3]+1]]`
-/

namespace A382692.P1870219627987323070
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066343 (n + 1) + 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j + 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A382692.P1870219627987323070

/-! ## A382692.P11844354071793068773

`∑[char[∑[A000201(2*(n+2))]+1]]`
-/

namespace A382692.P11844354071793068773
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000201 (2 * (n + 2))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j + 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A382692.P11844354071793068773

/-! ## A382692.P2573575864320439044

`∑[char[∑[A216345(2*(n+2))+1]]]`
-/

namespace A382692.P2573575864320439044
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216345 (2 * (n + 2)) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A382692.P2573575864320439044

/-! ## A382692.P18233168801593682518

`comp[∑[A022342(2*(n+2))+2]]-n`
-/

namespace A382692.P18233168801593682518
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022342 (2 * (n + 2)) + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

end

end A382692.P18233168801593682518

/-! ## A382692.P15634777464461073501

`comp[∑[∑[A327502(n+1)+2]+4]]-n`
-/

namespace A382692.P15634777464461073501
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327502 (n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j + 4

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

end

end A382692.P15634777464461073501

/-!
# A382693: Number of dense symmetric binary relations on {1,...,n}.

The programs for A382693, there is no canonical definition to state claims against.
-/

/-! ## A382693.P2014138314648279151

`A005250(A041503(n))`
-/

namespace A382693.P2014138314648279151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005250 (A041503 n).toNat

end

end A382693.P2014138314648279151

/-!
# A382696: Centered pentagonal numbers that are abundant.

The programs for A382696, there is no canonical definition to state claims against.
-/

/-! ## A382696.P1751270375557690178

`filter[A005891(n+2), A294936(#)]`
-/

namespace A382696.P1751270375557690178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005891 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A294936 (f1 j).toNat = 1) n)

end

end A382696.P1751270375557690178

/-! ## A382696.P10246768048634244094

`filter[A005891(n), A294937(#)]`
-/

namespace A382696.P10246768048634244094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005891 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A294937 (f1 j).toNat = 1) n)

end

end A382696.P10246768048634244094

/-! ## A382696.P6410466739302557984

`filter[A087099(2*n+1), A294937(#)]`
-/

namespace A382696.P6410466739302557984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087099 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A294937 (f1 j).toNat = 1) n)

end

end A382696.P6410466739302557984

/-! ## A382696.P1386293281291315327

`filter[A111712(2*n+1), A294937(#)]`
-/

namespace A382696.P1386293281291315327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111712 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A294937 (f1 j).toNat = 1) n)

end

end A382696.P1386293281291315327

/-!
# A382699: First member of the least set of 4 consecutive primes such that the sum of each pair of consecutive primes in this set is a multiple of n.

The programs for A382699, there is no canonical definition to state claims against.
-/

/-! ## A382699.P13005919504709911571

`A133261(a(n-1))` with `a(0)=2, a(1)=3, a(2)=5`
-/

namespace A382699.P13005919504709911571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 3, 5] fun n a =>
  A133261 (a (n - 1)).toNat

end

end A382699.P13005919504709911571

