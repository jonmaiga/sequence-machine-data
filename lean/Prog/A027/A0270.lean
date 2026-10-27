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
import Seq.B001.C011
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B004.C000
import Seq.B004.C002
import Seq.B005.C000
import Seq.B006.C000
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B011.C000
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A027000: a(n) = Lucas(2*n+3) - (6*n+4).

The programs for A027000, the canonical program `A027000.P15625834422737920073` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A027000 has offset 1).

The definition of A027000 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000032(2*(n+1)+3)-(6*(n+1)+4)` (program `A027000.P15625834422737920073`, by `A027000.P15625834422737920073.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A027000.P15625834422737920073

`A000032(2*(n+1)+3)-(6*(n+1)+4)`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A027000

/-- `A000032(2*(n+1)+3)-(6*(n+1)+4)` -/
def P15625834422737920073.Spec : Prop :=
  ∀ n, P15625834422737920073.a n = A027000 (n + 1)

theorem P15625834422737920073.correct : P15625834422737920073.Spec := by
  intro n
  simp only [A027000, Nat.add_sub_cancel]

end A027000

/-! ## A027000.P1655792892888305943

`4*A000045(2*(n+1)-1)+7*A000045(2*(n+1))-6*(n+1)-4`
-/

namespace A027000.P1655792892888305943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A000045 (2 * (n + 1) - 1) + 7 * A000045 (2 * (n + 1)) - (6 * (n + 1) : ℤ) - 4

end

end A027000.P1655792892888305943

namespace A027000

/-- `4*A000045(2*(n+1)-1)+7*A000045(2*(n+1))-6*(n+1)-4` -/
def P1655792892888305943.Spec : Prop :=
  ∀ n, P1655792892888305943.a n = A027000 (n + 1)

end A027000

/-! ## A027000.P2484262285146570115

`∑[floor((ϕ^(n+2))²)-5]`
-/

namespace A027000.P2484262285146570115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Real.goldenRatio ^ (n + 2)) ^ 2⌋ - 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027000.P2484262285146570115

namespace A027000

/-- `∑[floor((ϕ^(n+2))²)-5]` -/
def P2484262285146570115.Spec : Prop :=
  ∀ n, P2484262285146570115.a n = A027000 (n + 1)

end A027000

/-! ## A027000.P1838960676425186856

`A023537(Δ[n²])`
-/

namespace A027000.P1838960676425186856
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023537 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A027000.P1838960676425186856

namespace A027000

/-- `A023537(Δ[n²])` -/
def P1838960676425186856.Spec : Prop :=
  ∀ n, P1838960676425186856.a n = A027000 (n + 1)

end A027000

/-! ## A027000.P12365559833906799121

`A192978(2*n)+(2*n+1)²`
-/

namespace A027000.P12365559833906799121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192978 (2 * n) + ((2 * n + 1) ^ 2 : ℤ)

end

end A027000.P12365559833906799121

namespace A027000

/-- `A192978(2*n)+(2*n+1)²` -/
def P12365559833906799121.Spec : Prop :=
  ∀ n, P12365559833906799121.a n = A027000 (n + 1)

end A027000

/-! ## A027000.P9807178641461405184

`A023550(2*n+1)-(2*n+1)`
-/

namespace A027000.P9807178641461405184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023550 (2 * n + 1) - (2 * n + 1 : ℤ)

end

end A027000.P9807178641461405184

namespace A027000

/-- `A023550(2*n+1)-(2*n+1)` -/
def P9807178641461405184.Spec : Prop :=
  ∀ n, P9807178641461405184.a n = A027000 (n + 1)

end A027000

/-! ## A027000.P12650663162019266406

`A027181(2*n+1)-2*(n+1)`
-/

namespace A027000.P12650663162019266406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027181 (2 * n + 1) - (2 * (n + 1) : ℤ)

end

end A027000.P12650663162019266406

namespace A027000

/-- `A027181(2*n+1)-2*(n+1)` -/
def P12650663162019266406.Spec : Prop :=
  ∀ n, P12650663162019266406.a n = A027000 (n + 1)

theorem P12650663162019266406.correct : P12650663162019266406.Spec := by
  intro n
  simp only [A027000, Nat.add_sub_cancel, A027000.P12650663162019266406.a, A027000.P15625834422737920073.a, A000032, A000032.P8352177345629330861.a, A027181, A027181.P222487844041274355.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A027000

/-! ## A027000.P14693997535356069103

`A188378(n+2)-A016969(n+1)`
-/

namespace A027000.P14693997535356069103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188378 (n + 2) - A016969 (n + 1)

end

end A027000.P14693997535356069103

namespace A027000

/-- `A188378(n+2)-A016969(n+1)` -/
def P14693997535356069103.Spec : Prop :=
  ∀ n, P14693997535356069103.a n = A027000 (n + 1)

end A027000

/-! ## A027000.P6684568624687805877

`A001924(2*n)+A001891(2*n+1)`
-/

namespace A027000.P6684568624687805877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001924 (2 * n) + A001891 (2 * n + 1)

end

end A027000.P6684568624687805877

namespace A027000

/-- `A001924(2*n)+A001891(2*n+1)` -/
def P6684568624687805877.Spec : Prop :=
  ∀ n, P6684568624687805877.a n = A027000 (n + 1)

end A027000

/-! ## A027000.P18260595842112481939

`A192973(2*n+1)+A002062(2*n)`
-/

namespace A027000.P18260595842112481939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192973 (2 * n + 1) + A002062 (2 * n)

end

end A027000.P18260595842112481939

namespace A027000

/-- `A192973(2*n+1)+A002062(2*n)` -/
def P18260595842112481939.Spec : Prop :=
  ∀ n, P18260595842112481939.a n = A027000 (n + 1)

end A027000

/-! ## A027000.P15610507634817988422

`A192389(2*n)+A132922(2*n+1)`
-/

namespace A027000.P15610507634817988422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192389 (2 * n) + A132922 (2 * n + 1)

end

end A027000.P15610507634817988422

namespace A027000

/-- `A192389(2*n)+A132922(2*n+1)` -/
def P15610507634817988422.Spec : Prop :=
  ∀ n, P15610507634817988422.a n = A027000 (n + 1)

end A027000

/-! ## A027000.P364574867464623472

`A192749(2*n+1)-A001924(2*n)`
-/

namespace A027000.P364574867464623472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192749 (2 * n + 1) - A001924 (2 * n)

end

end A027000.P364574867464623472

namespace A027000

/-- `A192749(2*n+1)-A001924(2*n)` -/
def P364574867464623472.Spec : Prop :=
  ∀ n, P364574867464623472.a n = A027000 (n + 1)

end A027000

/-! ## A027000.P1505638390502361436

`A121262(2*n+1)+A023537(2*n+1)`
-/

namespace A027000.P1505638390502361436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121262 (2 * n + 1) + A023537 (2 * n + 1)

end

end A027000.P1505638390502361436

namespace A027000

/-- `A121262(2*n+1)+A023537(2*n+1)` -/
def P1505638390502361436.Spec : Prop :=
  ∀ n, P1505638390502361436.a n = A027000 (n + 1)

end A027000

/-! ## A027000.P2958263495964441924

`A142150(2*n+1)+A023537(2*n+1)`
-/

namespace A027000.P2958263495964441924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 (2 * n + 1) + A023537 (2 * n + 1)

end

end A027000.P2958263495964441924

namespace A027000

/-- `A142150(2*n+1)+A023537(2*n+1)` -/
def P2958263495964441924.Spec : Prop :=
  ∀ n, P2958263495964441924.a n = A027000 (n + 1)

end A027000

/-! ## A027000.P12433338321904833954

`A192951(2*n+1)+A019274(2*(n+1))`
-/

namespace A027000.P12433338321904833954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192951 (2 * n + 1) + A019274 (2 * (n + 1))

end

end A027000.P12433338321904833954

namespace A027000

/-- `A192951(2*n+1)+A019274(2*(n+1))` -/
def P12433338321904833954.Spec : Prop :=
  ∀ n, P12433338321904833954.a n = A027000 (n + 1)

end A027000

/-! ## A027000.P17116836838977647391

`A023537(2*(n+1))-A027961(2*(n+1))`
-/

namespace A027000.P17116836838977647391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023537 (2 * (n + 1)) - A027961 (2 * (n + 1))

end

end A027000.P17116836838977647391

namespace A027000

/-- `A023537(2*(n+1))-A027961(2*(n+1))` -/
def P17116836838977647391.Spec : Prop :=
  ∀ n, P17116836838977647391.a n = A027000 (n + 1)

end A027000

/-! ## A027000.P12699256429113418819

`A023549(2*n+1)-A027961(2*n+1)`
-/

namespace A027000.P12699256429113418819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023549 (2 * n + 1) - A027961 (2 * n + 1)

end

end A027000.P12699256429113418819

namespace A027000

/-- `A023549(2*n+1)-A027961(2*n+1)` -/
def P12699256429113418819.Spec : Prop :=
  ∀ n, P12699256429113418819.a n = A027000 (n + 1)

end A027000

/-! ## A027000.P15478095163616449692

`A033811(2*n+1)-A023548(2*n+1)`
-/

namespace A027000.P15478095163616449692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033811 (2 * n + 1) - A023548 (2 * n + 1)

end

end A027000.P15478095163616449692

namespace A027000

/-- `A033811(2*n+1)-A023548(2*n+1)` -/
def P15478095163616449692.Spec : Prop :=
  ∀ n, P15478095163616449692.a n = A027000 (n + 1)

end A027000

/-! ## A027000.P6511470137581187957

`A192951(2*(n+1))-A000071(2*(n+2))`
-/

namespace A027000.P6511470137581187957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192951 (2 * (n + 1)) - A000071 (2 * (n + 2))

end

end A027000.P6511470137581187957

namespace A027000

/-- `A192951(2*(n+1))-A000071(2*(n+2))` -/
def P6511470137581187957.Spec : Prop :=
  ∀ n, P6511470137581187957.a n = A027000 (n + 1)

end A027000

/-! ## A027000.P4674820513994268580

`A001924(2*n+1)+2*A001924(2*n)`
-/

namespace A027000.P4674820513994268580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001924 (2 * n + 1) + 2 * A001924 (2 * n)

end

end A027000.P4674820513994268580

namespace A027000

/-- `A001924(2*n+1)+2*A001924(2*n)` -/
def P4674820513994268580.Spec : Prop :=
  ∀ n, P4674820513994268580.a n = A027000 (n + 1)

end A027000

/-!
# A027001: a(n) = T(2*n, n+2), T given by A026998.

The programs for A027001, the canonical program `A027001.P16724065789884585761` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A027001 has offset 2).

The definition of A027001 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A027001.P16724065789884585761

`A000032(2*(n+2)+5)-(4*(n+3)^3-10*(n+2)²+7)`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A027001

/-- `A000032(2*(n+2)+5)-(4*(n+3)^3-10*(n+2)²+7)` -/
def P16724065789884585761.Spec : Prop :=
  ∀ n, P16724065789884585761.a n = A027001 (n + 2)

theorem P16724065789884585761.correct : P16724065789884585761.Spec := by
  intro n
  simp only [A027001, Nat.add_sub_cancel]

end A027001

/-! ## A027001.P2112992853668389431

`A027964(2*(n+2))`
-/

namespace A027001.P2112992853668389431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027964 (2 * (n + 2))

end

end A027001.P2112992853668389431

namespace A027001

/-- `A027964(2*(n+2))` -/
def P2112992853668389431.Spec : Prop :=
  ∀ n, P2112992853668389431.a n = A027001 (n + 2)

end A027001

/-! ## A027001.P11210377828191680127

`record[A027964(A085624(n+2)-n)]`
-/

namespace A027001.P11210377828191680127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027964 (A085624 (n + 2) - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027001.P11210377828191680127

namespace A027001

/-- `record[A027964(A085624(n+2)-n)]` -/
def P11210377828191680127.Spec : Prop :=
  ∀ n, P11210377828191680127.a n = A027001 (n + 2)

end A027001

/-! ## A027001.P15651738617745567988

`record[A027964(n+4)/A033999(n)]`
-/

namespace A027001.P15651738617745567988
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027964 (n + 4) : ℚ) / (A033999 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027001.P15651738617745567988

namespace A027001

/-- `record[A027964(n+4)/A033999(n)]` -/
def P15651738617745567988.Spec : Prop :=
  ∀ n, P15651738617745567988.a n = (A027001 (n + 2) : ℚ)

end A027001

/-! ## A027001.P3993242102461076750

`A027017(n+2)-A027012(n+2)`
-/

namespace A027001.P3993242102461076750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027017 (n + 2) - A027012 (n + 2)

end

end A027001.P3993242102461076750

namespace A027001

/-- `A027017(n+2)-A027012(n+2)` -/
def P3993242102461076750.Spec : Prop :=
  ∀ n, P3993242102461076750.a n = A027001 (n + 2)

end A027001

/-! ## A027001.P12321041632557779128

`A053809(2*n)+A014166(2*n)`
-/

namespace A027001.P12321041632557779128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053809 (2 * n) + A014166 (2 * n)

end

end A027001.P12321041632557779128

namespace A027001

/-- `A053809(2*n)+A014166(2*n)` -/
def P12321041632557779128.Spec : Prop :=
  ∀ n, P12321041632557779128.a n = A027001 (n + 2)

end A027001

/-! ## A027001.P5290381122858349360

`record[gcd(A027964(n+4), A142150(n+1))]`
-/

namespace A027001.P5290381122858349360
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A027964 (n + 4)) (A142150 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027001.P5290381122858349360

namespace A027001

/-- `record[gcd(A027964(n+4), A142150(n+1))]` -/
def P5290381122858349360.Spec : Prop :=
  ∀ n, (P5290381122858349360.a n : ℤ) = A027001 (n + 2)

end A027001

/-! ## A027001.P13060456442486487640

`record[A027964(n+4)/A001511(n+1)²²]`
-/

namespace A027001.P13060456442486487640
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027964 (n + 4) : ℚ) / ((A001511 (n + 1) ^ 2) ^ 2 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027001.P13060456442486487640

namespace A027001

/-- `record[A027964(n+4)/A001511(n+1)²²]` -/
def P13060456442486487640.Spec : Prop :=
  ∀ n, P13060456442486487640.a n = (A027001 (n + 2) : ℚ)

end A027001

/-! ## A027001.P13683913453746311344

`A014166(2*n+1)+2*A014166(2*n)`
-/

namespace A027001.P13683913453746311344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014166 (2 * n + 1) + 2 * A014166 (2 * n)

end

end A027001.P13683913453746311344

namespace A027001

/-- `A014166(2*n+1)+2*A014166(2*n)` -/
def P13683913453746311344.Spec : Prop :=
  ∀ n, P13683913453746311344.a n = A027001 (n + 2)

end A027001

/-! ## A027001.P18362537246536312542

`(A213570(2*n+1)+A053808(2*n))/2`
-/

namespace A027001.P18362537246536312542
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A213570 (2 * n + 1) + A053808 (2 * n) : ℚ) / 2

end

end A027001.P18362537246536312542

namespace A027001

/-- `(A213570(2*n+1)+A053808(2*n))/2` -/
def P18362537246536312542.Spec : Prop :=
  ∀ n, P18362537246536312542.a n = (A027001 (n + 2) : ℚ)

end A027001

/-! ## A027001.P12239005058640096308

`record[A027964(n+4)/A343325(A001511(n+1))]`
-/

namespace A027001.P12239005058640096308
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027964 (n + 4) : ℚ) / (A343325 (A001511 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027001.P12239005058640096308

namespace A027001

/-- `record[A027964(n+4)/A343325(A001511(n+1))]` -/
def P12239005058640096308.Spec : Prop :=
  ∀ n, P12239005058640096308.a n = (A027001 (n + 2) : ℚ)

end A027001

/-! ## A027001.P12398949209571785005

`A053298(2*n+1)-(A053298(2*n)+A027963(2*(n+2)))`
-/

namespace A027001.P12398949209571785005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053298 (2 * n + 1) - (A053298 (2 * n) + A027963 (2 * (n + 2)))

end

end A027001.P12398949209571785005

namespace A027001

/-- `A053298(2*n+1)-(A053298(2*n)+A027963(2*(n+2)))` -/
def P12398949209571785005.Spec : Prop :=
  ∀ n, P12398949209571785005.a n = A027001 (n + 2)

end A027001

/-!
# A027002: a(n) = T(2*n, n+3), T given by A026998.

The programs for A027002, the canonical program `A027002.P3205094287480197912` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A027002 has offset 3).

The definition of A027002 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 233 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A027002.P3205094287480197912

`record[∑[A053298(n)]^((n+1)%2)]`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A027002

/-- `record[∑[A053298(n)]^((n+1)%2)]` -/
def P3205094287480197912.Spec : Prop :=
  ∀ n, P3205094287480197912.a n = A027002 (n + 3)

theorem P3205094287480197912.correct : P3205094287480197912.Spec := by
  intro n
  simp only [A027002, Nat.add_sub_cancel]

end A027002

/-! ## A027002.P11938444140796578143

`A027018(n+3)-A027013(n+3)`
-/

namespace A027002.P11938444140796578143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027018 (n + 3) - A027013 (n + 3)

end

end A027002.P11938444140796578143

namespace A027002

/-- `A027018(n+3)-A027013(n+3)` -/
def P11938444140796578143.Spec : Prop :=
  ∀ n, P11938444140796578143.a n = A027002 (n + 3)

end A027002

/-! ## A027002.P13112071814237517976

`A027018(n+3)-A053298(2*n+1)`
-/

namespace A027002.P13112071814237517976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027018 (n + 3) - A053298 (2 * n + 1)

end

end A027002.P13112071814237517976

namespace A027002

/-- `A027018(n+3)-A053298(2*n+1)` -/
def P13112071814237517976.Spec : Prop :=
  ∀ n, P13112071814237517976.a n = A027002 (n + 3)

end A027002

/-! ## A027002.P7807704795005308911

`A027006(n+2)+A027018(n+2)%A027014(n+3)`
-/

namespace A027002.P7807704795005308911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027006 (n + 2) + Int.tmod (A027018 (n + 2)) (A027014 (n + 3))

end

end A027002.P7807704795005308911

namespace A027002

/-- `A027006(n+2)+A027018(n+2)%A027014(n+3)` -/
def P7807704795005308911.Spec : Prop :=
  ∀ n, P7807704795005308911.a n = A027002 (n + 3)

end A027002

/-! ## A027002.P11206252099639642326

`A027007(n+3)-A027014(n+3)*A057427(n)`
-/

namespace A027002.P11206252099639642326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027007 (n + 3) - A027014 (n + 3) * A057427 n

end

end A027002.P11206252099639642326

namespace A027002

/-- `A027007(n+3)-A027014(n+3)*A057427(n)` -/
def P11206252099639642326.Spec : Prop :=
  ∀ n, P11206252099639642326.a n = A027002 (n + 3)

end A027002

/-! ## A027002.P17862644301356752580

`A027018(n+2)+A027006(n+2)%A027003(n+4)`
-/

namespace A027002.P17862644301356752580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027018 (n + 2) + Int.tmod (A027006 (n + 2)) (A027003 (n + 4))

end

end A027002.P17862644301356752580

namespace A027002

/-- `A027018(n+2)+A027006(n+2)%A027003(n+4)` -/
def P17862644301356752580.Spec : Prop :=
  ∀ n, P17862644301356752580.a n = A027002 (n + 3)

end A027002

/-!
# A027003: a(n) = A026998(2*n, n+4).

The programs for A027003, there is no canonical definition to state claims against.
-/

/-! ## A027003.P15896846096897852373

`A027019(n+4)-A027014(n+4)`
-/

namespace A027003.P15896846096897852373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027019 (n + 4) - A027014 (n + 4)

end

end A027003.P15896846096897852373

/-! ## A027003.P17961650055280132946

`A027007(n+3)+A027019(n+3)*A057427(n)`
-/

namespace A027003.P17961650055280132946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027007 (n + 3) + A027019 (n + 3) * A057427 n

end

end A027003.P17961650055280132946

/-! ## A027003.P16220165717394543036

`(A027019(n+3)+A027007(n+3))/A054977(n)`
-/

namespace A027003.P16220165717394543036
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027019 (n + 3) + A027007 (n + 3) : ℚ) / (A054977 n : ℚ)

end

end A027003.P16220165717394543036

/-! ## A027003.P14316496158464259384

`A027007(n+3)+A027019(n+3)%A027015(n+4)`
-/

namespace A027003.P14316496158464259384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027007 (n + 3) + Int.tmod (A027019 (n + 3)) (A027015 (n + 4))

end

end A027003.P14316496158464259384

/-! ## A027003.P12634396079820753429

`A027960((2*n+9)²-(2*n+1))`
-/

namespace A027003.P12634396079820753429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027960 ((2 * n + 9) ^ 2 - (2 * n + 1))

end

end A027003.P12634396079820753429

/-!
# A027004: a(n) = T(2*n+1,n+1), T given by A026998.

The programs for A027004, the canonical program `A027004.P2885035886780062549` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A027004 has offset 0).

The definition of A027004 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A027004.P2885035886780062549

`4*a(n-1)-4*a(n-2)+a(n-3)` with `a(0)=1, a(1)=8, a(2)=26`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A027004

/-- `4*a(n-1)-4*a(n-2)+a(n-3)` -/
def P2885035886780062549.Spec : Prop :=
  ∀ n, P2885035886780062549.a n = A027004 n

theorem P2885035886780062549.correct : P2885035886780062549.Spec := by
  intro n
  simp only [A027004]

end A027004

/-! ## A027004.P2647021940832262751

`A002878(n+1)-3`
-/

namespace A027004.P2647021940832262751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002878 (n + 1) - 3

end

end A027004.P2647021940832262751

namespace A027004

/-- `A002878(n+1)-3` -/
def P2647021940832262751.Spec : Prop :=
  ∀ n, P2647021940832262751.a n = A027004 n

end A027004

/-! ## A027004.P3163301741713112

`A000032(2*n+3)-3`
-/

namespace A027004.P3163301741713112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (2 * n + 3) - 3

end

end A027004.P3163301741713112

namespace A027004

/-- `A000032(2*n+3)-3` -/
def P3163301741713112.Spec : Prop :=
  ∀ n, P3163301741713112.a n = A027004 n

end A027004

/-! ## A027004.P13316675489162955024

`A000045(2*n+3)+2*A000045(2*n+2)-3`
-/

namespace A027004.P13316675489162955024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (2 * n + 3) + 2 * A000045 (2 * n + 2) - 3

end

end A027004.P13316675489162955024

namespace A027004

/-- `A000045(2*n+3)+2*A000045(2*n+2)-3` -/
def P13316675489162955024.Spec : Prop :=
  ∀ n, P13316675489162955024.a n = A027004 n

end A027004

/-! ## A027004.P221889805611610456

`2^-n*((2-sqrt(5))*(3-sqrt(5))^n+(2+sqrt(5))*(3+sqrt(5))^n)-3`
-/

namespace A027004.P221889805611610456
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((2 : ℚ) ^ (-(n : ℤ) : ℤ) : ℝ) * ((2 - Real.sqrt (5 : ℝ)) * (3 - Real.sqrt (5 : ℝ)) ^ n + (2 + Real.sqrt (5 : ℝ)) * (3 + Real.sqrt (5 : ℝ)) ^ n) - 3

end

end A027004.P221889805611610456

namespace A027004

/-- `2^-n*((2-sqrt(5))*(3-sqrt(5))^n+(2+sqrt(5))*(3+sqrt(5))^n)-3` -/
def P221889805611610456.Spec : Prop :=
  ∀ n, P221889805611610456.a n = (A027004 n : ℝ)

end A027004

/-! ## A027004.P8188834827033477257

`∑[ogf((1+4x-2x^2)/(1-3x+x^2))]`
-/

namespace A027004.P8188834827033477257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 4, -2] [1, -3, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027004.P8188834827033477257

namespace A027004

/-- `∑[ogf((1+4x-2x^2)/(1-3x+x^2))]` -/
def P8188834827033477257.Spec : Prop :=
  ∀ n, P8188834827033477257.a n = A027004 n

end A027004

/-! ## A027004.P4408511696795879975

`ogf((1+4x-2x^2)/(1-4x+4x^2-x^3))`
-/

namespace A027004.P4408511696795879975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 4, -2] [1, -4, 4, -1] n

end

end A027004.P4408511696795879975

namespace A027004

/-- `ogf((1+4x-2x^2)/(1-4x+4x^2-x^3))` -/
def P4408511696795879975.Spec : Prop :=
  ∀ n, P4408511696795879975.a n = A027004 n

end A027004

/-! ## A027004.P7842127352720303454

`round((a(n-1)+2)*ϕ²)` with `a(0)=1`
-/

namespace A027004.P7842127352720303454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.roundAway ((a (n - 1) + 2 : ℝ) * Real.goldenRatio ^ 2)

end

end A027004.P7842127352720303454

namespace A027004

/-- `round((a(n-1)+2)*ϕ²)` -/
def P7842127352720303454.Spec : Prop :=
  ∀ n, P7842127352720303454.a n = A027004 n

end A027004

/-! ## A027004.P9732977308269338395

`ceil(a(n-1)+(ϕ^(n+1))²)` with `a(0)=1`
-/

namespace A027004.P9732977308269338395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌈(a (n - 1) : ℝ) + (Real.goldenRatio ^ (n + 1)) ^ 2⌉

end

end A027004.P9732977308269338395

namespace A027004

/-- `ceil(a(n-1)+(ϕ^(n+1))²)` -/
def P9732977308269338395.Spec : Prop :=
  ∀ n, P9732977308269338395.a n = A027004 n

end A027004

/-! ## A027004.P13565455664324640580

`round(a(n-1)+(ϕ^(n+1))²)` with `a(0)=1`
-/

namespace A027004.P13565455664324640580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.roundAway ((a (n - 1) : ℝ) + (Real.goldenRatio ^ (n + 1)) ^ 2)

end

end A027004.P13565455664324640580

namespace A027004

/-- `round(a(n-1)+(ϕ^(n+1))²)` -/
def P13565455664324640580.Spec : Prop :=
  ∀ n, P13565455664324640580.a n = A027004 n

end A027004

/-! ## A027004.P14768714217811693808

`A027961(Δ[n²])`
-/

namespace A027004.P14768714217811693808
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027961 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A027004.P14768714217811693808

namespace A027004

/-- `A027961(Δ[n²])` -/
def P14768714217811693808.Spec : Prop :=
  ∀ n, P14768714217811693808.a n = A027004 n

end A027004

/-! ## A027004.P9193469818343019441

`∑[A000032((n+1)%(n+1)²+n+1)]`
-/

namespace A027004.P9193469818343019441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 ((n + 1) % (n + 1) ^ 2 + (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027004.P9193469818343019441

namespace A027004

/-- `∑[A000032((n+1)%(n+1)²+n+1)]` -/
def P9193469818343019441.Spec : Prop :=
  ∀ n, P9193469818343019441.a n = A027004 n

end A027004

/-! ## A027004.P6318136748801994626

`∑[A000032(A103517(n))]`
-/

namespace A027004.P6318136748801994626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (A103517 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027004.P6318136748801994626

namespace A027004

/-- `∑[A000032(A103517(n))]` -/
def P6318136748801994626.Spec : Prop :=
  ∀ n, P6318136748801994626.a n = A027004 n

end A027004

/-! ## A027004.P9575927885236334681

`∑[A000032(A265283(2*n))]`
-/

namespace A027004.P9575927885236334681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (A265283 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027004.P9575927885236334681

namespace A027004

/-- `∑[A000032(A265283(2*n))]` -/
def P9575927885236334681.Spec : Prop :=
  ∀ n, P9575927885236334681.a n = A027004 n

end A027004

/-! ## A027004.P12990182959036258207

`∑[A000032(comp[A004277(n)]+1)]`
-/

namespace A027004.P12990182959036258207
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027004.P12990182959036258207

namespace A027004

/-- `∑[A000032(comp[A004277(n)]+1)]` -/
def P12990182959036258207.Spec : Prop :=
  ∀ n, P12990182959036258207.a n = A027004 n

end A027004

/-! ## A027004.P15423968396626049329

`∑[A000032(A130773(n+1)-1)]`
-/

namespace A027004.P15423968396626049329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (A130773 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027004.P15423968396626049329

namespace A027004

/-- `∑[A000032(A130773(n+1)-1)]` -/
def P15423968396626049329.Spec : Prop :=
  ∀ n, P15423968396626049329.a n = A027004 n

end A027004

/-! ## A027004.P14630920906065127572

`∑[A000032(A065475(2*n+1))]`
-/

namespace A027004.P14630920906065127572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (A065475 (2 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027004.P14630920906065127572

namespace A027004

/-- `∑[A000032(A065475(2*n+1))]` -/
def P14630920906065127572.Spec : Prop :=
  ∀ n, P14630920906065127572.a n = A027004 n

end A027004

/-! ## A027004.P17832246486754714291

`∑[A000032(A114112(2*n+1))]`
-/

namespace A027004.P17832246486754714291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (A114112 (2 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027004.P17832246486754714291

namespace A027004

/-- `∑[A000032(A114112(2*n+1))]` -/
def P17832246486754714291.Spec : Prop :=
  ∀ n, P17832246486754714291.a n = A027004 n

end A027004

/-! ## A027004.P9314051000469118014

`∑[A000032(A326178(2*n+1))]`
-/

namespace A027004.P9314051000469118014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (A326178 (2 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027004.P9314051000469118014

namespace A027004

/-- `∑[A000032(A326178(2*n+1))]` -/
def P9314051000469118014.Spec : Prop :=
  ∀ n, P9314051000469118014.a n = A027004 n

end A027004

/-! ## A027004.P11586044420044544739

`∑[A000032(A065475(n+1)+n)]`
-/

namespace A027004.P11586044420044544739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (A065475 (n + 1) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027004.P11586044420044544739

namespace A027004

/-- `∑[A000032(A065475(n+1)+n)]` -/
def P11586044420044544739.Spec : Prop :=
  ∀ n, P11586044420044544739.a n = A027004 n

end A027004

/-!
# A027005: a(n) = T(2*n+1,n+2), T given by A026998.

The programs for A027005, the canonical program `A027005.P2366989849793539143` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A027005 has offset 1).

The definition of A027005 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A027005.P2366989849793539143

`A000032(2*(n+1)+5)-(6*(n+1)²+11*(n+1)+11)`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A027005

/-- `A000032(2*(n+1)+5)-(6*(n+1)²+11*(n+1)+11)` -/
def P2366989849793539143.Spec : Prop :=
  ∀ n, P2366989849793539143.a n = A027005 (n + 1)

theorem P2366989849793539143.correct : P2366989849793539143.Spec := by
  intro n
  simp only [A027005, Nat.add_sub_cancel]

end A027005

/-! ## A027005.P15535912414846024220

`A027963(2*n+3)`
-/

namespace A027005.P15535912414846024220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027963 (2 * n + 3)

end

end A027005.P15535912414846024220

namespace A027005

/-- `A027963(2*n+3)` -/
def P15535912414846024220.Spec : Prop :=
  ∀ n, P15535912414846024220.a n = A027005 (n + 1)

end A027005

/-! ## A027005.P2362742707060237463

`∑[A023620(2*n+1)]`
-/

namespace A027005.P2362742707060237463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023620 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027005.P2362742707060237463

namespace A027005

/-- `∑[A023620(2*n+1)]` -/
def P2362742707060237463.Spec : Prop :=
  ∀ n, P2362742707060237463.a n = A027005 (n + 1)

end A027005

/-! ## A027005.P11478961009524725380

`record[A027963(A026741(n+1)+2)]`
-/

namespace A027005.P11478961009524725380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027963 (A026741 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027005.P11478961009524725380

namespace A027005

/-- `record[A027963(A026741(n+1)+2)]` -/
def P11478961009524725380.Spec : Prop :=
  ∀ n, P11478961009524725380.a n = A027005 (n + 1)

end A027005

/-! ## A027005.P6170666984763777795

`record[A027963(n+3)^A033999(n)]`
-/

namespace A027005.P6170666984763777795
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027963 (n + 3) : ℚ) ^ (A033999 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027005.P6170666984763777795

namespace A027005

/-- `record[A027963(n+3)^A033999(n)]` -/
def P6170666984763777795.Spec : Prop :=
  ∀ n, P6170666984763777795.a n = (A027005 (n + 1) : ℚ)

end A027005

/-! ## A027005.P4716376454692234084

`A027012(n+2)-A027016(n+1)`
-/

namespace A027005.P4716376454692234084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027012 (n + 2) - A027016 (n + 1)

end

end A027005.P4716376454692234084

namespace A027005

/-- `A027012(n+2)-A027016(n+1)` -/
def P4716376454692234084.Spec : Prop :=
  ∀ n, P4716376454692234084.a n = A027005 (n + 1)

end A027005

/-! ## A027005.P8326065357305463710

`A053808(2*n)+A014162(2*n)`
-/

namespace A027005.P8326065357305463710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053808 (2 * n) + A014162 (2 * n)

end

end A027005.P8326065357305463710

namespace A027005

/-- `A053808(2*n)+A014162(2*n)` -/
def P8326065357305463710.Spec : Prop :=
  ∀ n, P8326065357305463710.a n = A027005 (n + 1)

end A027005

/-! ## A027005.P58106292544272813

`A213770(2*n+1)-A014162(2*n)`
-/

namespace A027005.P58106292544272813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213770 (2 * n + 1) - A014162 (2 * n)

end

end A027005.P58106292544272813

namespace A027005

/-- `A213770(2*n+1)-A014162(2*n)` -/
def P58106292544272813.Spec : Prop :=
  ∀ n, P58106292544272813.a n = A027005 (n + 1)

end A027005

/-! ## A027005.P1380455095063216076

`A213770(2*n+1)-∑[A001891(2*n)]`
-/

namespace A027005.P1380455095063216076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001891 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213770 (2 * n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027005.P1380455095063216076

namespace A027005

/-- `A213770(2*n+1)-∑[A001891(2*n)]` -/
def P1380455095063216076.Spec : Prop :=
  ∀ n, P1380455095063216076.a n = A027005 (n + 1)

end A027005

/-! ## A027005.P4306034458548148906

`A014162(2*n+1)+2*A014162(2*n)`
-/

namespace A027005.P4306034458548148906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014162 (2 * n + 1) + 2 * A014162 (2 * n)

end

end A027005.P4306034458548148906

namespace A027005

/-- `A014162(2*n+1)+2*A014162(2*n)` -/
def P4306034458548148906.Spec : Prop :=
  ∀ n, P4306034458548148906.a n = A027005 (n + 1)

end A027005

/-! ## A027005.P8088936124511917974

`A192978(2*n+1)+A192978(2*n)+A000217(2*n)`
-/

namespace A027005.P8088936124511917974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192978 (2 * n + 1) + (A192978 (2 * n) + A000217 (2 * n))

end

end A027005.P8088936124511917974

namespace A027005

/-- `A192978(2*n+1)+A192978(2*n)+A000217(2*n)` -/
def P8088936124511917974.Spec : Prop :=
  ∀ n, P8088936124511917974.a n = A027005 (n + 1)

end A027005

/-! ## A027005.P221951017151569343

`A027964(2*n+5)-(A027964(2*(n+2))+A023537(2*(n+1)))`
-/

namespace A027005.P221951017151569343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027964 (2 * n + 5) - (A027964 (2 * (n + 2)) + A023537 (2 * (n + 1)))

end

end A027005.P221951017151569343

namespace A027005

/-- `A027964(2*n+5)-(A027964(2*(n+2))+A023537(2*(n+1)))` -/
def P221951017151569343.Spec : Prop :=
  ∀ n, P221951017151569343.a n = A027005 (n + 1)

end A027005

/-!
# A027006: a(n) = T(2*n+1, n+3), T given by A026998.

The programs for A027006, the canonical program `A027006.P8228902580112164373` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A027006 has offset 2).

The definition of A027006 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A027006.P8228902580112164373

`A000032(2*(n+2)+7)-(12*(n+2)^4+20*(n+2)^3+81*(n+2)²+169*(n+2)+174)/6`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A027006

/-- `A000032(2*(n+2)+7)-(12*(n+2)^4+20*(n+2)^3+81*(n+2)²+169*(n+2)+174)/6` -/
def P8228902580112164373.Spec : Prop :=
  ∀ n, P8228902580112164373.a n = (A027006 (n + 2) : ℚ)

end A027006

/-! ## A027006.P14400941336620739843

`A053298(2*n)`
-/

namespace A027006.P14400941336620739843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053298 (2 * n)

end

end A027006.P14400941336620739843

namespace A027006

/-- `A053298(2*n)` -/
def P14400941336620739843.Spec : Prop :=
  ∀ n, P14400941336620739843.a n = A027006 (n + 2)

end A027006

/-! ## A027006.P1137005263402564289

`record[A053298(n%4+n)]`
-/

namespace A027006.P1137005263402564289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053298 (n % 4 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027006.P1137005263402564289

namespace A027006

/-- `record[A053298(n%4+n)]` -/
def P1137005263402564289.Spec : Prop :=
  ∀ n, P1137005263402564289.a n = A027006 (n + 2)

end A027006

/-! ## A027006.P10940580281580267892

`record[A053298(and(n, n+1))]`
-/

namespace A027006.P10940580281580267892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053298 (Nat.land n (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027006.P10940580281580267892

namespace A027006

/-- `record[A053298(and(n, n+1))]` -/
def P10940580281580267892.Spec : Prop :=
  ∀ n, P10940580281580267892.a n = A027006 (n + 2)

end A027006

/-! ## A027006.P3886884792752900378

`record[A053298(lcm(n, A056594(n)))]`
-/

namespace A027006.P3886884792752900378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053298 (Int.lcm (n : ℤ) (A056594 n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027006.P3886884792752900378

namespace A027006

/-- `record[A053298(lcm(n, A056594(n)))]` -/
def P3886884792752900378.Spec : Prop :=
  ∀ n, P3886884792752900378.a n = A027006 (n + 2)

end A027006

/-! ## A027006.P10074026396062096635

`record[A053298(A065190(n+1)-1)]`
-/

namespace A027006.P10074026396062096635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053298 (A065190 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027006.P10074026396062096635

namespace A027006

/-- `record[A053298(A065190(n+1)-1)]` -/
def P10074026396062096635.Spec : Prop :=
  ∀ n, P10074026396062096635.a n = A027006 (n + 2)

end A027006

/-! ## A027006.P6680032563637268388

`A027013(n+3)-A027017(n+2)`
-/

namespace A027006.P6680032563637268388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027013 (n + 3) - A027017 (n + 2)

end

end A027006.P6680032563637268388

namespace A027006

/-- `A027013(n+3)-A027017(n+2)` -/
def P6680032563637268388.Spec : Prop :=
  ∀ n, P6680032563637268388.a n = A027006 (n + 2)

end A027006

/-! ## A027006.P3285666885597703243

`record[A053298(n+1-A020639(n+1))]`
-/

namespace A027006.P3285666885597703243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053298 ((n + 1 : ℤ) - A020639 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027006.P3285666885597703243

namespace A027006

/-- `record[A053298(n+1-A020639(n+1))]` -/
def P3285666885597703243.Spec : Prop :=
  ∀ n, P3285666885597703243.a n = A027006 (n + 2)

end A027006

/-!
# A027007: a(n) = A026998(2n+1, n+4).

The programs for A027007, there is no canonical definition to state claims against.
-/

/-! ## A027007.P6654151011675117280

`A027014(n+4)-A027018(n+3)`
-/

namespace A027007.P6654151011675117280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027014 (n + 4) - A027018 (n + 3)

end

end A027007.P6654151011675117280

/-! ## A027007.P14445997518262260946

`A027002(n+3)+A027014(n+3)*A057427(n)`
-/

namespace A027007.P14445997518262260946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027002 (n + 3) + A027014 (n + 3) * A057427 n

end

end A027007.P14445997518262260946

/-! ## A027007.P8262182110297008562

`(A027014(n+3)+A027002(n+3))/A054977(n)`
-/

namespace A027007.P8262182110297008562
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027014 (n + 3) + A027002 (n + 3) : ℚ) / (A054977 n : ℚ)

end

end A027007.P8262182110297008562

/-! ## A027007.P11721303344922205727

`A027003(n+4)-A027019(n+3)*A057427(n)`
-/

namespace A027007.P11721303344922205727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027003 (n + 4) - A027019 (n + 3) * A057427 n

end

end A027007.P11721303344922205727

/-! ## A027007.P9572552887229243565

`A027002(n+3)+A027014(n+3)%A027003(n+4)`
-/

namespace A027007.P9572552887229243565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027002 (n + 3) + Int.tmod (A027014 (n + 3)) (A027003 (n + 4))

end

end A027007.P9572552887229243565

/-!
# A027008: a(n) = greatest number in row n of array T given by A026998.

The programs for A027008, there is no canonical definition to state claims against.
-/

/-! ## A027008.P8398531911840879121

`A267097(n+1)+A227133(A117791(n))`
-/

namespace A027008.P8398531911840879121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267097 (n + 1) + A227133 (A117791 n).toNat

end

end A027008.P8398531911840879121

/-! ## A027008.P11297394975105060046

`A003056(A143592(3*n+4))-A234017(n+1)`
-/

namespace A027008.P11297394975105060046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A143592 (3 * n + 4)).toNat - A234017 (n + 1)

end

end A027008.P11297394975105060046

/-!
# A027009: a(n) = Sum_{k=floor((n+2)/2)..n} T(n, k), T given by A026998.

The programs for A027009, the canonical program `A027009.P12814591207878433143` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A027009 has offset 1).

The definition of A027009 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A027009.P12814591207878433143

`2^(n+2)-(A000032(n+4)+(-1)^(n+1)*A000032(n+1))/2`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A027009

/-- `2^(n+2)-(A000032(n+4)+(-1)^(n+1)*A000032(n+1))/2` -/
def P12814591207878433143.Spec : Prop :=
  ∀ n, P12814591207878433143.a n = (A027009 (n + 1) : ℚ)

end A027009

/-! ## A027009.P17895087619225187856

`A020707(n)-A005248(A080513(n))`
-/

namespace A027009.P17895087619225187856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020707 n - A005248 (A080513 n).toNat

end

end A027009.P17895087619225187856

namespace A027009

/-- `A020707(n)-A005248(A080513(n))` -/
def P17895087619225187856.Spec : Prop :=
  ∀ n, P17895087619225187856.a n = A027009 (n + 1)

end A027009

/-! ## A027009.P11576780725950666552

`A020737(n)-(A005248(A080513(n))+1)`
-/

namespace A027009.P11576780725950666552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020737 n - (A005248 (A080513 n).toNat + 1)

end

end A027009.P11576780725950666552

namespace A027009

/-- `A020737(n)-(A005248(A080513(n))+1)` -/
def P11576780725950666552.Spec : Prop :=
  ∀ n, P11576780725950666552.a n = A027009 (n + 1)

end A027009

/-! ## A027009.P8549474799033926780

`A000079(n+2)-A005248(A080513(n))`
-/

namespace A027009.P8549474799033926780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (n + 2) - A005248 (A080513 n).toNat

end

end A027009.P8549474799033926780

namespace A027009

/-- `A000079(n+2)-A005248(A080513(n))` -/
def P8549474799033926780.Spec : Prop :=
  ∀ n, P8549474799033926780.a n = A027009 (n + 1)

end A027009

/-! ## A027009.P1002080160119052730

`A000079(n+2)-A000032(A052928(n+3))`
-/

namespace A027009.P1002080160119052730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (n + 2) - A000032 (A052928 (n + 3)).toNat

end

end A027009.P1002080160119052730

namespace A027009

/-- `A000079(n+2)-A000032(A052928(n+3))` -/
def P1002080160119052730.Spec : Prop :=
  ∀ n, P1002080160119052730.a n = A027009 (n + 1)

end A027009

/-! ## A027009.P4114344674571308675

`A016116(2*(n+2))-A005248(A080513(n))`
-/

namespace A027009.P4114344674571308675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 (2 * (n + 2)) - A005248 (A080513 n).toNat

end

end A027009.P4114344674571308675

namespace A027009

/-- `A016116(2*(n+2))-A005248(A080513(n))` -/
def P4114344674571308675.Spec : Prop :=
  ∀ n, P4114344674571308675.a n = A027009 (n + 1)

end A027009

/-! ## A027009.P4993974230932409027

`Δ[A020737(n)]-A005248(A080513(n))`
-/

namespace A027009.P4993974230932409027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020737 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A005248 (A080513 n).toNat

end

end A027009.P4993974230932409027

namespace A027009

/-- `Δ[A020737(n)]-A005248(A080513(n))` -/
def P4993974230932409027.Spec : Prop :=
  ∀ n, P4993974230932409027.a n = A027009 (n + 1)

end A027009

/-! ## A027009.P3047681210782404006

`Δ[A028399(n+2)]-A005248(A080513(n))`
-/

namespace A027009.P3047681210782404006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028399 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A005248 (A080513 n).toNat

end

end A027009.P3047681210782404006

namespace A027009

/-- `Δ[A028399(n+2)]-A005248(A080513(n))` -/
def P3047681210782404006.Spec : Prop :=
  ∀ n, P3047681210782404006.a n = A027009 (n + 1)

end A027009

/-!
# A027010: a(n) = Sum_{k=floor((n+1)/2)..n} T(k,n-k); i.e., a(n) is the n-th diagonal sum of left-justified array T given by A026998.

The programs for A027010, there is no canonical definition to state claims against.
-/

/-! ## A027010.P7340988775648193700

`∑[A127838(2*n+1)+A008585(A127838(2*(n+1)))]`
-/

namespace A027010.P7340988775648193700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127838 (2 * n + 1) + A008585 (A127838 (2 * (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027010.P7340988775648193700

/-! ## A027010.P16734793789074820631

`A037800(A018041(n))+A017985(n)`
-/

namespace A027010.P16734793789074820631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037800 (A018041 n).toNat + A017985 n

end

end A027010.P16734793789074820631

/-! ## A027010.P12445235024474003514

`A179868(A000110(n))+A130578(n+1)`
-/

namespace A027010.P12445235024474003514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179868 (A000110 n).toNat + A130578 (n + 1)

end

end A027010.P12445235024474003514

/-! ## A027010.P15710985786775788450

`A004525(A359999(n+2)-A360025(n))`
-/

namespace A027010.P15710985786775788450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A359999 (n + 2) - A360025 n).toNat

end

end A027010.P15710985786775788450

/-! ## A027010.P1384999802118368527

`A072089(A112088(n+1)-A139421(n+1))`
-/

namespace A027010.P1384999802118368527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072089 (A112088 (n + 1) - A139421 (n + 1)).toNat

end

end A027010.P1384999802118368527

/-!
# A027011: Triangular array T read by rows: T(n,k) = t(n, 2k+1) for 0 <= k <= floor((2n-1)/2), t given by A027960, n >= 0.

The programs for A027011, there is no canonical definition to state claims against.
-/

/-! ## A027011.P12953464427446419253

`A210216(n+1)+2*A027935(n)`
-/

namespace A027011.P12953464427446419253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210216 (n + 1) + 2 * A027935 n

end

end A027011.P12953464427446419253

/-! ## A027011.P9159185458231848

`A210215(n+1)+A210873(n+1)+A210872(n+1)`
-/

namespace A027011.P9159185458231848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210215 (n + 1) + (A210873 (n + 1) + A210872 (n + 1))

end

end A027011.P9159185458231848

/-! ## A027011.P3469651569608706140

`A210873(comp[∑[n]]+1)+A210215(n+1)`
-/

namespace A027011.P3469651569608706140
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210873 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1) + A210215 (n + 1)

end

end A027011.P3469651569608706140

/-! ## A027011.P9685833667890179038

`A027960(∑[char[∑[n+1]]+2])`
-/

namespace A027011.P9685833667890179038
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = n then 1 else 0) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027960 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A027011.P9685833667890179038

/-! ## A027011.P8980204383412957120

`A027960(comp[∑[n]]+n)+A007814(2*n+1)`
-/

namespace A027011.P8980204383412957120
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027960 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + n) + A007814 (2 * n + 1)

end

end A027011.P8980204383412957120

/-! ## A027011.P16525055314226434761

`A214264(3*n+1)+A027960(comp[∑[n]]+n)`
-/

namespace A027011.P16525055314226434761
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214264 (3 * n + 1) + A027960 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + n)

end

end A027011.P16525055314226434761

/-! ## A027011.P15539000977906283890

`A210216(n+1)+A004277(A027935(n))`
-/

namespace A027011.P15539000977906283890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210216 (n + 1) + A004277 (A027935 n).toNat

end

end A027011.P15539000977906283890

/-!
# A027012: a(n) = T(2*n, n+1), T given by A027011.

The programs for A027012, the canonical program `A027012.P9178525586700888906` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A027012 has offset 1).

The definition of A027012 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 237 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A027012.P9178525586700888906

`A027963(record[gcd(n, ∑[n])+3])`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A027012

/-- `A027963(record[gcd(n, ∑[n])+3])` -/
def P9178525586700888906.Spec : Prop :=
  ∀ n, P9178525586700888906.a n = A027012 (n + 1)

theorem P9178525586700888906.correct : P9178525586700888906.Spec := by
  intro n
  simp only [A027012, Nat.add_sub_cancel]

end A027012

/-! ## A027012.P3516447929901793819

`A027963(A051755(n+2))`
-/

namespace A027012.P3516447929901793819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027963 (A051755 (n + 2)).toNat

end

end A027012.P3516447929901793819

namespace A027012

/-- `A027963(A051755(n+2))` -/
def P3516447929901793819.Spec : Prop :=
  ∀ n, P3516447929901793819.a n = A027012 (n + 1)

end A027012

/-! ## A027012.P15310074042262912728

`A027963(A004273(n)+3)`
-/

namespace A027012.P15310074042262912728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027963 (A004273 n + 3).toNat

end

end A027012.P15310074042262912728

namespace A027012

/-- `A027963(A004273(n)+3)` -/
def P15310074042262912728.Spec : Prop :=
  ∀ n, P15310074042262912728.a n = A027012 (n + 1)

end A027012

/-! ## A027012.P3214276367300063698

`A027963(record[A026741(n)+3])`
-/

namespace A027012.P3214276367300063698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027963 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A027012.P3214276367300063698

namespace A027012

/-- `A027963(record[A026741(n)+3])` -/
def P3214276367300063698.Spec : Prop :=
  ∀ n, P3214276367300063698.a n = A027012 (n + 1)

end A027012

/-! ## A027012.P2603709452903872226

`A027963(eq[n, A026741(n)]+3)`
-/

namespace A027012.P2603709452903872226
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027963 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 3)

end

end A027012.P2603709452903872226

namespace A027012

/-- `A027963(eq[n, A026741(n)]+3)` -/
def P2603709452903872226.Spec : Prop :=
  ∀ n, P2603709452903872226.a n = A027012 (n + 1)

end A027012

/-! ## A027012.P16964249297651532861

`A027963(record[xor(a(n-1), A000720(n+1))]+3)` with `a(0)=0`
-/

namespace A027012.P16964249297651532861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  Int.xor (f1 (n - 1)) (A000720 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027963 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 3).toNat

end

end A027012.P16964249297651532861

namespace A027012

/-- `A027963(record[xor(a(n-1), A000720(n+1))]+3)` -/
def P16964249297651532861.Spec : Prop :=
  ∀ n, P16964249297651532861.a n = A027012 (n + 1)

end A027012

/-! ## A027012.P3446986740199537240

`A027963(A038730(∑[n]+2)+2)`
-/

namespace A027012.P3446986740199537240
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027963 (A038730 (∑ j ∈ Finset.range (n + 1), f1 j + 2) + 2).toNat

end

end A027012.P3446986740199537240

namespace A027012

/-- `A027963(A038730(∑[n]+2)+2)` -/
def P3446986740199537240.Spec : Prop :=
  ∀ n, P3446986740199537240.a n = A027012 (n + 1)

end A027012

/-!
# A027013: a(n) = T(2*n, n+2), T given by A027011.

The programs for A027013, the canonical program `A027013.P15876608691452300831` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A027013 has offset 2).

The definition of A027013 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 235 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A027013.P15876608691452300831

`A053298(record[lcm(2, n)/2])`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A027013

/-- `A053298(record[lcm(2, n)/2])` -/
def P15876608691452300831.Spec : Prop :=
  ∀ n, P15876608691452300831.a n = A027013 (n + 2)

theorem P15876608691452300831.correct : P15876608691452300831.Spec := by
  intro n
  simp only [A027013, Nat.add_sub_cancel]

end A027013

/-! ## A027013.P12463140798359551854

`A053298(record[n*n%2])`
-/

namespace A027013.P12463140798359551854
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (n % 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053298 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A027013.P12463140798359551854

namespace A027013

/-- `A053298(record[n*n%2])` -/
def P12463140798359551854.Spec : Prop :=
  ∀ n, P12463140798359551854.a n = A027013 (n + 2)

end A027013

/-! ## A027013.P4977675658883213108

`A053298(record[or(1, n)%(n+1)])`
-/

namespace A027013.P4977675658883213108
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n % (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053298 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A027013.P4977675658883213108

namespace A027013

/-- `A053298(record[or(1, n)%(n+1)])` -/
def P4977675658883213108.Spec : Prop :=
  ∀ n, P4977675658883213108.a n = A027013 (n + 2)

end A027013

/-! ## A027013.P4097703008509013079

`A053298(n-(1-n)%(n+1))`
-/

namespace A027013.P4097703008509013079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053298 ((n : ℤ) - Int.tmod (1 - (n : ℤ)) (n + 1 : ℤ)).toNat

end

end A027013.P4097703008509013079

namespace A027013

/-- `A053298(n-(1-n)%(n+1))` -/
def P4097703008509013079.Spec : Prop :=
  ∀ n, P4097703008509013079.a n = A027013 (n + 2)

end A027013

/-! ## A027013.P9724809375659167041

`A053298(eq[1, (n+1)^((n+1)%2)])`
-/

namespace A027013.P9724809375659167041
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ ((n + 1) % 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053298 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A027013.P9724809375659167041

namespace A027013

/-- `A053298(eq[1, (n+1)^((n+1)%2)])` -/
def P9724809375659167041.Spec : Prop :=
  ∀ n, P9724809375659167041.a n = A027013 (n + 2)

end A027013

/-! ## A027013.P4160308093929853127

`A053298(A004273(n))`
-/

namespace A027013.P4160308093929853127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053298 (A004273 n).toNat

end

end A027013.P4160308093929853127

namespace A027013

/-- `A053298(A004273(n))` -/
def P4160308093929853127.Spec : Prop :=
  ∀ n, P4160308093929853127.a n = A027013 (n + 2)

end A027013

/-! ## A027013.P8367520412621241217

`A053298(record[gcd(n, A000217(n))])`
-/

namespace A027013.P8367520412621241217
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A000217 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053298 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A027013.P8367520412621241217

namespace A027013

/-- `A053298(record[gcd(n, A000217(n))])` -/
def P8367520412621241217.Spec : Prop :=
  ∀ n, P8367520412621241217.a n = A027013 (n + 2)

end A027013

/-! ## A027013.P3452540126769230976

`record[and(A009001(2*n), A053298(n))]`
-/

namespace A027013.P3452540126769230976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A009001 (2 * n)) (A053298 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027013.P3452540126769230976

namespace A027013

/-- `record[and(A009001(2*n), A053298(n))]` -/
def P3452540126769230976.Spec : Prop :=
  ∀ n, P3452540126769230976.a n = A027013 (n + 2)

end A027013

/-! ## A027013.P8186923660238929080

`A053298(A065190(2*n+1)-1)`
-/

namespace A027013.P8186923660238929080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053298 (A065190 (2 * n + 1) - 1).toNat

end

end A027013.P8186923660238929080

namespace A027013

/-- `A053298(A065190(2*n+1)-1)` -/
def P8186923660238929080.Spec : Prop :=
  ∀ n, P8186923660238929080.a n = A027013 (n + 2)

end A027013

/-! ## A027013.P8399391170689803322

`A053298(eq[A000007(n), A166586(n+1)])`
-/

namespace A027013.P8399391170689803322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166586 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053298 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A027013.P8399391170689803322

namespace A027013

/-- `A053298(eq[A000007(n), A166586(n+1)])` -/
def P8399391170689803322.Spec : Prop :=
  ∀ n, P8399391170689803322.a n = A027013 (n + 2)

end A027013

/-!
# A027014: a(n) = T(2*n, n+3), T given by A027011.

The programs for A027014, there is no canonical definition to state claims against.
-/

/-! ## A027014.P324743381007034215

`A027007(n+3)*A054977(n)-A027002(n+3)`
-/

namespace A027014.P324743381007034215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027007 (n + 3) * A054977 n - A027002 (n + 3)

end

end A027014.P324743381007034215

/-! ## A027014.P11595594199854223504

`A027007(n+3)-A027002(n+3)*A057427(n)`
-/

namespace A027014.P11595594199854223504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027007 (n + 3) - A027002 (n + 3) * A057427 n

end

end A027014.P11595594199854223504

/-! ## A027014.P5956564978806563071

`A027003(n+4)%(A027019(n+3)+A027002(n+3))`
-/

namespace A027014.P5956564978806563071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A027003 (n + 4)) (A027019 (n + 3) + A027002 (n + 3))

end

end A027014.P5956564978806563071

/-! ## A027014.P6241804699948068067

`A027007(n+3)-A027002(n+3)%A027003(n+4)`
-/

namespace A027014.P6241804699948068067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027007 (n + 3) - Int.tmod (A027002 (n + 3)) (A027003 (n + 4))

end

end A027014.P6241804699948068067

/-! ## A027014.P16624878983511993995

`A027960(A000096(2*(n+1))+A000096(2*(n+4)))`
-/

namespace A027014.P16624878983511993995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027960 (A000096 (2 * (n + 1)) + A000096 (2 * (n + 4))).toNat

end

end A027014.P16624878983511993995

/-!
# A027016: T(2n+1,n+1), T given by A027011.

The programs for A027016, the canonical program `A027016.P5924827626398537741` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A027016 has offset 0).

The definition of A027016 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A027016.P5924827626398537741

`5*a(n-1)-8*a(n-2)+5*a(n-3)-a(n-4)` with `a(0)=1, a(1)=5, a(2)=28, a(3)=98, a(4)=291`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A027016

/-- `5*a(n-1)-8*a(n-2)+5*a(n-3)-a(n-4)` -/
def P5924827626398537741.Spec : Prop :=
  ∀ n, P5924827626398537741.a n = A027016 n

theorem P5924827626398537741.correct : P5924827626398537741.Spec := by
  intro n
  simp only [A027016]

end A027016

/-! ## A027016.P7397975492576321543

`A023537(comp[2*(n+1)]+1)`
-/

namespace A027016.P7397975492576321543
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023537 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1)

end

end A027016.P7397975492576321543

namespace A027016

/-- `A023537(comp[2*(n+1)]+1)` -/
def P7397975492576321543.Spec : Prop :=
  ∀ n, P7397975492576321543.a n = A027016 n

end A027016

/-! ## A027016.P10625566388763387903

`record[gcd(A023537(n+1), A142150(n))]`
-/

namespace A027016.P10625566388763387903
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A023537 (n + 1)) (A142150 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027016.P10625566388763387903

namespace A027016

/-- `record[gcd(A023537(n+1), A142150(n))]` -/
def P10625566388763387903.Spec : Prop :=
  ∀ n, (P10625566388763387903.a n : ℤ) = A027016 n

end A027016

/-! ## A027016.P7070965185908460256

`A027181(2*n)-A087156(2*n+1)`
-/

namespace A027016.P7070965185908460256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027181 (2 * n) - A087156 (2 * n + 1)

end

end A027016.P7070965185908460256

namespace A027016

/-- `A027181(2*n)-A087156(2*n+1)` -/
def P7070965185908460256.Spec : Prop :=
  ∀ n, P7070965185908460256.a n = A027016 n

end A027016

/-! ## A027016.P1649935019671305566

`record[A000032(2*n)-record[A087507(2*n)]]`
-/

namespace A027016.P1649935019671305566
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087507 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (2 * n) - f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027016.P1649935019671305566

namespace A027016

/-- `record[A000032(2*n)-record[A087507(2*n)]]` -/
def P1649935019671305566.Spec : Prop :=
  ∀ n, P1649935019671305566.a n = A027016 n

end A027016

/-! ## A027016.P17624820728215511205

`record[A000032(2*n)-record[A302773(2*n)]]`
-/

namespace A027016.P17624820728215511205
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302773 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (2 * n) - f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027016.P17624820728215511205

namespace A027016

/-- `record[A000032(2*n)-record[A302773(2*n)]]` -/
def P17624820728215511205.Spec : Prop :=
  ∀ n, P17624820728215511205.a n = A027016 n

end A027016

/-! ## A027016.P16784973638626691276

`A104793(A130883(n))`
-/

namespace A027016.P16784973638626691276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104793 (A130883 n).toNat

end

end A027016.P16784973638626691276

namespace A027016

/-- `A104793(A130883(n))` -/
def P16784973638626691276.Spec : Prop :=
  ∀ n, P16784973638626691276.a n = A027016 n

end A027016

/-! ## A027016.P16758938899609138535

`A104793(A133263(2*n))`
-/

namespace A027016.P16758938899609138535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104793 (A133263 (2 * n)).toNat

end

end A027016.P16758938899609138535

namespace A027016

/-- `A104793(A133263(2*n))` -/
def P16758938899609138535.Spec : Prop :=
  ∀ n, P16758938899609138535.a n = A027016 n

end A027016

/-! ## A027016.P15035177699229708126

`A104793(A084849(n)-2*n)`
-/

namespace A027016.P15035177699229708126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104793 (A084849 n - (2 * n : ℤ)).toNat

end

end A027016.P15035177699229708126

namespace A027016

/-- `A104793(A084849(n)-2*n)` -/
def P15035177699229708126.Spec : Prop :=
  ∀ n, P15035177699229708126.a n = A027016 n

end A027016

/-! ## A027016.P1765550108548760810

`A104793(A084849(n)-n-n)`
-/

namespace A027016.P1765550108548760810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104793 (A084849 n - (n : ℤ) - (n : ℤ)).toNat

end

end A027016.P1765550108548760810

namespace A027016

/-- `A104793(A084849(n)-n-n)` -/
def P1765550108548760810.Spec : Prop :=
  ∀ n, P1765550108548760810.a n = A027016 n

end A027016

/-!
# A027017: a(n) = T(2*n+1, n+2), T given by A027011.

The programs for A027017, the canonical program `A027017.P7096318943231998565` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A027017 has offset 1).

The definition of A027017 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 236 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A027017.P76365245325273198

`record[A027964(n+4)^(n%2)]`
-/

namespace A027017.P76365245325273198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027964 (n + 4) ^ (n % 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027017.P76365245325273198

namespace A027017

/-- `record[A027964(n+4)^(n%2)]` -/
def P76365245325273198.Spec : Prop :=
  ∀ n, P76365245325273198.a n = A027017 (n + 1)

end A027017

/-! ## A027017.P6270017566151091316

`A027964(ceil(record[abs(π-n)])+n)`
-/

namespace A027017.P6270017566151091316
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  |Real.pi - (n : ℝ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027964 (⌈f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)⌉ + (n : ℤ)).toNat

end

end A027017.P6270017566151091316

namespace A027017

/-- `A027964(ceil(record[abs(π-n)])+n)` -/
def P6270017566151091316.Spec : Prop :=
  ∀ n, P6270017566151091316.a n = A027017 (n + 1)

end A027017

/-! ## A027017.P7096318943231998565

`A027964(n-(1-n)%(n+1)+4)`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A027017

/-- `A027964(n-(1-n)%(n+1)+4)` -/
def P7096318943231998565.Spec : Prop :=
  ∀ n, P7096318943231998565.a n = A027017 (n + 1)

theorem P7096318943231998565.correct : P7096318943231998565.Spec := by
  intro n
  simp only [A027017, Nat.add_sub_cancel]

end A027017

/-! ## A027017.P10970363805572080305

`A027964(A223134(n+1))`
-/

namespace A027017.P10970363805572080305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027964 (A223134 (n + 1)).toNat

end

end A027017.P10970363805572080305

namespace A027017

/-- `A027964(A223134(n+1))` -/
def P10970363805572080305.Spec : Prop :=
  ∀ n, P10970363805572080305.a n = A027017 (n + 1)

end A027017

/-! ## A027017.P5487594005074368841

`A027964(A004277(n)+3)`
-/

namespace A027017.P5487594005074368841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027964 (A004277 n + 3).toNat

end

end A027017.P5487594005074368841

namespace A027017

/-- `A027964(A004277(n)+3)` -/
def P5487594005074368841.Spec : Prop :=
  ∀ n, P5487594005074368841.a n = A027017 (n + 1)

end A027017

/-! ## A027017.P17545292295898121958

`A027964(A004273(n)+4)`
-/

namespace A027017.P17545292295898121958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027964 (A004273 n + 4).toNat

end

end A027017.P17545292295898121958

namespace A027017

/-- `A027964(A004273(n)+4)` -/
def P17545292295898121958.Spec : Prop :=
  ∀ n, P17545292295898121958.a n = A027017 (n + 1)

end A027017

/-! ## A027017.P9865396930646173317

`A027964(A051755(n+2)+1)`
-/

namespace A027017.P9865396930646173317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027964 (A051755 (n + 2) + 1).toNat

end

end A027017.P9865396930646173317

namespace A027017

/-- `A027964(A051755(n+2)+1)` -/
def P9865396930646173317.Spec : Prop :=
  ∀ n, P9865396930646173317.a n = A027017 (n + 1)

end A027017

/-! ## A027017.P16501742969303311849

`record[gcd(A027964(n+4), A142150(n))]`
-/

namespace A027017.P16501742969303311849
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A027964 (n + 4)) (A142150 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027017.P16501742969303311849

namespace A027017

/-- `record[gcd(A027964(n+4), A142150(n))]` -/
def P16501742969303311849.Spec : Prop :=
  ∀ n, (P16501742969303311849.a n : ℤ) = A027017 (n + 1)

end A027017

/-! ## A027017.P9735609419543466933

`record[lcm(A027964(n+4), A117569(n))]`
-/

namespace A027017.P9735609419543466933
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A027964 (n + 4)) (A117569 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027017.P9735609419543466933

namespace A027017

/-- `record[lcm(A027964(n+4), A117569(n))]` -/
def P9735609419543466933.Spec : Prop :=
  ∀ n, (P9735609419543466933.a n : ℤ) = A027017 (n + 1)

end A027017

/-! ## A027017.P16637003681817790857

`A027964(record[n*A034947(2*n+3)]+4)`
-/

namespace A027017.P16637003681817790857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A034947 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027964 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 4).toNat

end

end A027017.P16637003681817790857

namespace A027017

/-- `A027964(record[n*A034947(2*n+3)]+4)` -/
def P16637003681817790857.Spec : Prop :=
  ∀ n, P16637003681817790857.a n = A027017 (n + 1)

end A027017

/-! ## A027017.P9924871357819154113

`A027964(A038730(∑[n]+2)+3)`
-/

namespace A027017.P9924871357819154113
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027964 (A038730 (∑ j ∈ Finset.range (n + 1), f1 j + 2) + 3).toNat

end

end A027017.P9924871357819154113

namespace A027017

/-- `A027964(A038730(∑[n]+2)+3)` -/
def P9924871357819154113.Spec : Prop :=
  ∀ n, P9924871357819154113.a n = A027017 (n + 1)

end A027017

/-!
# A027018: a(n) = T(2*n+1, n+3), T given by A027011.

The programs for A027018, the canonical program `A027018.P13029960018609639703` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A027018 has offset 2).

The definition of A027018 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 234 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A027018.P13029960018609639703

`record[∑[A053298(n)]^(n%2)]`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A027018

/-- `record[∑[A053298(n)]^(n%2)]` -/
def P13029960018609639703.Spec : Prop :=
  ∀ n, P13029960018609639703.a n = A027018 (n + 2)

theorem P13029960018609639703.correct : P13029960018609639703.Spec := by
  intro n
  simp only [A027018, Nat.add_sub_cancel]

end A027018

/-! ## A027018.P13867665444139448379

`A027002(n+3)*A054977(n)-A027006(n+2)`
-/

namespace A027018.P13867665444139448379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027002 (n + 3) * A054977 n - A027006 (n + 2)

end

end A027018.P13867665444139448379

namespace A027018

/-- `A027002(n+3)*A054977(n)-A027006(n+2)` -/
def P13867665444139448379.Spec : Prop :=
  ∀ n, P13867665444139448379.a n = A027018 (n + 2)

end A027018

/-! ## A027018.P13791144341837738380

`A027007(n+3)%(A027014(n+3)+A027006(n+2))`
-/

namespace A027018.P13791144341837738380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A027007 (n + 3)) (A027014 (n + 3) + A027006 (n + 2))

end

end A027018.P13791144341837738380

namespace A027018

/-- `A027007(n+3)%(A027014(n+3)+A027006(n+2))` -/
def P13791144341837738380.Spec : Prop :=
  ∀ n, P13791144341837738380.a n = A027018 (n + 2)

end A027018

/-! ## A027018.P15571074088716322539

`A027960(A027688(2*n+5)+3)`
-/

namespace A027018.P15571074088716322539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027960 (A027688 (2 * n + 5) + 3).toNat

end

end A027018.P15571074088716322539

namespace A027018

/-- `A027960(A027688(2*n+5)+3)` -/
def P15571074088716322539.Spec : Prop :=
  ∀ n, P15571074088716322539.a n = A027018 (n + 2)

end A027018

/-! ## A027018.P2683543972512026544

`A027960(A000124(2*n+3)+A000124(2*n+7))`
-/

namespace A027018.P2683543972512026544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027960 (A000124 (2 * n + 3) + A000124 (2 * n + 7)).toNat

end

end A027018.P2683543972512026544

namespace A027018

/-- `A027960(A000124(2*n+3)+A000124(2*n+7))` -/
def P2683543972512026544.Spec : Prop :=
  ∀ n, P2683543972512026544.a n = A027018 (n + 2)

end A027018

/-!
# A027019: a(n) = A027011(2n+1, n+4).

The programs for A027019, there is no canonical definition to state claims against.
-/

/-! ## A027019.P3756084544642127584

`A027003(n+4)*A054977(n)-A027007(n+3)`
-/

namespace A027019.P3756084544642127584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027003 (n + 4) * A054977 n - A027007 (n + 3)

end

end A027019.P3756084544642127584

/-! ## A027019.P14880012260215445670

`A027003(n+4)-A027007(n+3)*A057427(n)`
-/

namespace A027019.P14880012260215445670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027003 (n + 4) - A027007 (n + 3) * A057427 n

end

end A027019.P14880012260215445670

/-! ## A027019.P14000094617509647934

`A027960(A020744(n)²-A005843(n))`
-/

namespace A027019.P14000094617509647934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027960 (A020744 n ^ 2 - A005843 n).toNat

end

end A027019.P14000094617509647934

/-! ## A027019.P14757472843961319908

`A027960(A000217(2*(n+2))+A000096(2*n+9))`
-/

namespace A027019.P14757472843961319908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027960 (A000217 (2 * (n + 2)) + A000096 (2 * n + 9)).toNat

end

end A027019.P14757472843961319908

/-! ## A027019.P4693111876435306217

`A027960((2*n+9)²-(2*n+1))-A027007(n+3)%A027003(n+4)`
-/

namespace A027019.P4693111876435306217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027960 ((2 * n + 9) ^ 2 - (2 * n + 1)) - Int.tmod (A027007 (n + 3)) (A027003 (n + 4))

end

end A027019.P4693111876435306217

/-!
# A027022: a(n) = Sum_{k=floor((n+1)/2)..n} T(k,n-k); i.e., a(n) is n-th diagonal sum of left-justified array T given by A027011.

The programs for A027022, there is no canonical definition to state claims against.
-/

/-! ## A027022.P16676079636352375027

`A342522(A000041(n+2)-A288318(n))`
-/

namespace A027022.P16676079636352375027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342522 (A000041 (n + 2) - A288318 n).toNat

end

end A027022.P16676079636352375027

/-! ## A027022.P537062742027109647

`A319635(n+2)-A285229(n)`
-/

namespace A027022.P537062742027109647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319635 (n + 2) - A285229 n

end

end A027022.P537062742027109647

/-! ## A027022.P13427832568060104920

`A319769(n+2)-A084938(n)²`
-/

namespace A027022.P13427832568060104920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319769 (n + 2) - A084938 n ^ 2

end

end A027022.P13427832568060104920

/-! ## A027022.P12140334946441678544

`A319635(n+2)-A318758(n+1)`
-/

namespace A027022.P12140334946441678544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319635 (n + 2) - A318758 (n + 1)

end

end A027022.P12140334946441678544

/-!
# A027023: Tribonacci array: triangular array T read by rows: T(n,0)=1 for n >= 0, T(n,1) = T(n,2n) = 1 for n >= 1, T(n,2)=1 for n >= 2 and for n >= 3, T(n,k) = T(n-1,k-3) + T(n-1,k-2) + T(n-1,k-1) for 3 <= k <= 2n-1.

The programs for A027023, there is no canonical definition to state claims against.
-/

/-! ## A027023.P16568720568413759282

`A168056(A027052(n)^A008835(n+1))`
-/

namespace A027023.P16568720568413759282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168056 (SequenceMachineLib.roundAway ((A027052 n : ℚ) ^ (A008835 (n + 1) : ℤ))).toNat

end

end A027023.P16568720568413759282

/-! ## A027023.P14635072377265961299

`A168056(A027052(n)^A034567(n+1)!)`
-/

namespace A027023.P14635072377265961299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168056 (A027052 n ^ Nat.factorial (A034567 (n + 1)).toNat).toNat

end

end A027023.P14635072377265961299

/-! ## A027023.P9445017744076260250

`A168056(A027052(n))^A014963(A226320(n+1))`
-/

namespace A027023.P9445017744076260250
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A168056 (A027052 n).toNat : ℚ) ^ (A014963 (A226320 (n + 1)).toNat : ℤ)

end

end A027023.P9445017744076260250

/-!
# A027024: a(n) = T(n,n+2), T given by A027023.

The programs for A027024, the canonical program `A027024.P14253858266487641379` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A027024 has offset 2).

The definition of A027024 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A027024.P14253858266487641379

`2*a(n-1)-a(n-4)` with `a(0)=1, a(1)=5, a(2)=13, a(3)=27`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A027024

/-- `2*a(n-1)-a(n-4)` -/
def P14253858266487641379.Spec : Prop :=
  ∀ n, P14253858266487641379.a n = A027024 (n + 2)

theorem P14253858266487641379.correct : P14253858266487641379.Spec := by
  intro n
  simp only [A027024, Nat.add_sub_cancel]

end A027024

/-! ## A027024.P17769452628918264955

`a(n-1)+a(n-2)+a(n-3)+8` with `a(0)=1, a(1)=5, a(2)=13`
-/

namespace A027024.P17769452628918264955
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 5, 13] fun n a =>
  a (n - 1) + a (n - 2) + a (n - 3) + 8

end

end A027024.P17769452628918264955

namespace A027024

/-- `a(n-1)+a(n-2)+a(n-3)+8` -/
def P17769452628918264955.Spec : Prop :=
  ∀ n, (P17769452628918264955.a n : ℤ) = A027024 (n + 2)

end A027024

/-! ## A027024.P16872307891969472566

`A000213(n+4)-4`
-/

namespace A027024.P16872307891969472566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000213 (n + 4) - 4

end

end A027024.P16872307891969472566

namespace A027024

/-- `A000213(n+4)-4` -/
def P16872307891969472566.Spec : Prop :=
  ∀ n, P16872307891969472566.a n = A027024 (n + 2)

end A027024

/-! ## A027024.P14362298961640234184

`ogf((1+3x+3x^2+x^3)/(1-2x+x^4))`
-/

namespace A027024.P14362298961640234184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 3, 3, 1] [1, -2, 0, 0, 1] n

end

end A027024.P14362298961640234184

namespace A027024

/-- `ogf((1+3x+3x^2+x^3)/(1-2x+x^4))` -/
def P14362298961640234184.Spec : Prop :=
  ∀ n, P14362298961640234184.a n = A027024 (n + 2)

end A027024

/-! ## A027024.P1552414304965142051

`A027083(n+2)-1`
-/

namespace A027024.P1552414304965142051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027083 (n + 2) - 1

end

end A027024.P1552414304965142051

namespace A027024

/-- `A027083(n+2)-1` -/
def P1552414304965142051.Spec : Prop :=
  ∀ n, P1552414304965142051.a n = A027024 (n + 2)

theorem P1552414304965142051.correct : P1552414304965142051.Spec := by
  intro n
  simp only [A027024, Nat.add_sub_cancel, A027024.P1552414304965142051.a, A027024.P14253858266487641379.a, A027083, A027083.P7887810092018352263.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A027024

/-! ## A027024.P14800814895748496129

`A054668(n+3)-3`
-/

namespace A027024.P14800814895748496129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054668 (n + 3) - 3

end

end A027024.P14800814895748496129

namespace A027024

/-- `A054668(n+3)-3` -/
def P14800814895748496129.Spec : Prop :=
  ∀ n, P14800814895748496129.a n = A027024 (n + 2)

end A027024

/-! ## A027024.P11626571977383568648

`A288465(n+2)-5`
-/

namespace A027024.P11626571977383568648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288465 (n + 2) - 5

end

end A027024.P11626571977383568648

namespace A027024

/-- `A288465(n+2)-5` -/
def P11626571977383568648.Spec : Prop :=
  ∀ n, P11626571977383568648.a n = A027024 (n + 2)

end A027024

/-! ## A027024.P1226057940963945052

`∑[A135491(n+1)]-1`
-/

namespace A027024.P1226057940963945052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135491 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A027024.P1226057940963945052

namespace A027024

/-- `∑[A135491(n+1)]-1` -/
def P1226057940963945052.Spec : Prop :=
  ∀ n, P1226057940963945052.a n = A027024 (n + 2)

end A027024

/-! ## A027024.P793081461726388820

`2*A027084(n+2)-1`
-/

namespace A027024.P793081461726388820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A027084 (n + 2) - 1

end

end A027024.P793081461726388820

namespace A027024

/-- `2*A027084(n+2)-1` -/
def P793081461726388820.Spec : Prop :=
  ∀ n, P793081461726388820.a n = A027024 (n + 2)

end A027024

/-! ## A027024.P12756969723699568783

`2*A008937(n+2)-3`
-/

namespace A027024.P12756969723699568783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008937 (n + 2) - 3

end

end A027024.P12756969723699568783

namespace A027024

/-- `2*A008937(n+2)-3` -/
def P12756969723699568783.Spec : Prop :=
  ∀ n, P12756969723699568783.a n = A027024 (n + 2)

end A027024

/-! ## A027024.P14282384479402324861

`A116734(n+2)-1+n`
-/

namespace A027024.P14282384479402324861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116734 (n + 2) - 1 + (n : ℤ)

end

end A027024.P14282384479402324861

namespace A027024

/-- `A116734(n+2)-1+n` -/
def P14282384479402324861.Spec : Prop :=
  ∀ n, P14282384479402324861.a n = A027024 (n + 2)

end A027024

/-! ## A027024.P14892226911183600665

`∑[∑[A196700(n+1)]]+n`
-/

namespace A027024.P14892226911183600665
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196700 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A027024.P14892226911183600665

namespace A027024

/-- `∑[∑[A196700(n+1)]]+n` -/
def P14892226911183600665.Spec : Prop :=
  ∀ n, P14892226911183600665.a n = A027024 (n + 2)

end A027024

/-! ## A027024.P9180380432428340856

`2*∑[A000073(n+3)]-1`
-/

namespace A027024.P9180380432428340856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000073 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j) - 1

end

end A027024.P9180380432428340856

namespace A027024

/-- `2*∑[A000073(n+3)]-1` -/
def P9180380432428340856.Spec : Prop :=
  ∀ n, P9180380432428340856.a n = A027024 (n + 2)

end A027024

/-! ## A027024.P12972704976057901965

`2*∑[record[Δ[A308189(n+1)]]]-1`
-/

namespace A027024.P12972704976057901965
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308189 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j) - 1

end

end A027024.P12972704976057901965

namespace A027024

/-- `2*∑[record[Δ[A308189(n+1)]]]-1` -/
def P12972704976057901965.Spec : Prop :=
  ∀ n, P12972704976057901965.a n = A027024 (n + 2)

end A027024

/-! ## A027024.P14480174164214928798

`∑[A086192(n+1)]-A000073(n)`
-/

namespace A027024.P14480174164214928798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086192 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A000073 n

end

end A027024.P14480174164214928798

namespace A027024

/-- `∑[A086192(n+1)]-A000073(n)` -/
def P14480174164214928798.Spec : Prop :=
  ∀ n, P14480174164214928798.a n = A027024 (n + 2)

end A027024

/-! ## A027024.P6411015599162015485

`Δ[A180668(n)]+∑[A000213(n+2)]`
-/

namespace A027024.P6411015599162015485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180668 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000213 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + ∑ j ∈ Finset.range (n + 1), f2 j

end

end A027024.P6411015599162015485

namespace A027024

/-- `Δ[A180668(n)]+∑[A000213(n+2)]` -/
def P6411015599162015485.Spec : Prop :=
  ∀ n, P6411015599162015485.a n = A027024 (n + 2)

end A027024

/-! ## A027024.P16784138633790135158

`A089068(n+1)+A089068(n)+A027053(n+2)`
-/

namespace A027024.P16784138633790135158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089068 (n + 1) + (A089068 n + A027053 (n + 2))

end

end A027024.P16784138633790135158

namespace A027024

/-- `A089068(n+1)+A089068(n)+A027053(n+2)` -/
def P16784138633790135158.Spec : Prop :=
  ∀ n, P16784138633790135158.a n = A027024 (n + 2)

end A027024

/-! ## A027024.P14251744691883902208

`A180668(n+2)-A180668(n)`
-/

namespace A027024.P14251744691883902208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180668 (n + 2) - A180668 n

end

end A027024.P14251744691883902208

namespace A027024

/-- `A180668(n+2)-A180668(n)` -/
def P14251744691883902208.Spec : Prop :=
  ∀ n, P14251744691883902208.a n = A027024 (n + 2)

end A027024

/-! ## A027024.P3879870338539876699

`A116576(n+4)-A007800(n+1)`
-/

namespace A027024.P3879870338539876699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116576 (n + 4) - A007800 (n + 1)

end

end A027024.P3879870338539876699

namespace A027024

/-- `A116576(n+4)-A007800(n+1)` -/
def P3879870338539876699.Spec : Prop :=
  ∀ n, P3879870338539876699.a n = A027024 (n + 2)

end A027024

/-! ## A027024.P12306070457375419574

`Δ[2*A356619(n)]-1`
-/

namespace A027024.P12306070457375419574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A356619 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A027024.P12306070457375419574

namespace A027024

/-- `Δ[2*A356619(n)]-1` -/
def P12306070457375419574.Spec : Prop :=
  ∀ n, P12306070457375419574.a n = A027024 (n + 2)

end A027024

/-!
# A027025: a(n) = T(n,n+3), T given by A027023.

The programs for A027025, the canonical program `A027025.P7805011120157075200` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A027025 has offset 3).

The definition of A027025 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A027025.P16212233495818482500

`A000213(n+6)-4*(n+4)`
-/

namespace A027025.P16212233495818482500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000213 (n + 6) - (4 * (n + 4) : ℤ)

end

end A027025.P16212233495818482500

namespace A027025

/-- `A000213(n+6)-4*(n+4)` -/
def P16212233495818482500.Spec : Prop :=
  ∀ n, P16212233495818482500.a n = A027025 (n + 3)

end A027025

/-! ## A027025.P7805011120157075200

`3*a(n-1)-2*a(n-2)-a(n-4)+a(n-5)` with `a(0)=1, a(1)=11, a(2)=33, a(3)=77, a(4)=161`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A027025

/-- `3*a(n-1)-2*a(n-2)-a(n-4)+a(n-5)` -/
def P7805011120157075200.Spec : Prop :=
  ∀ n, P7805011120157075200.a n = A027025 (n + 3)

theorem P7805011120157075200.correct : P7805011120157075200.Spec := by
  intro n
  simp only [A027025, Nat.add_sub_cancel]

end A027025

/-! ## A027025.P5239982918454226418

`A027085(n)-(n+4)`
-/

namespace A027025.P5239982918454226418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027085 n - (n + 4 : ℤ)

end

end A027025.P5239982918454226418

namespace A027025

/-- `A027085(n)-(n+4)` -/
def P5239982918454226418.Spec : Prop :=
  ∀ n, P5239982918454226418.a n = A027025 (n + 3)

end A027025

/-! ## A027025.P9422720913112465840

`∑[∑[A196700(n+3)]]-3`
-/

namespace A027025.P9422720913112465840
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196700 (n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 3

end

end A027025.P9422720913112465840

namespace A027025

/-- `∑[∑[A196700(n+3)]]-3` -/
def P9422720913112465840.Spec : Prop :=
  ∀ n, P9422720913112465840.a n = A027025 (n + 3)

end A027025

/-! ## A027025.P3271907032342946103

`record[A000213(n+2)-4*n]`
-/

namespace A027025.P3271907032342946103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000213 (n + 2) - (4 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027025.P3271907032342946103

namespace A027025

/-- `record[A000213(n+2)-4*n]` -/
def P3271907032342946103.Spec : Prop :=
  ∀ n, P3271907032342946103.a n = A027025 (n + 3)

end A027025

/-! ## A027025.P261319536412157208

`record[A288465(n)-A016813(n)]`
-/

namespace A027025.P261319536412157208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288465 n - A016813 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027025.P261319536412157208

namespace A027025

/-- `record[A288465(n)-A016813(n)]` -/
def P261319536412157208.Spec : Prop :=
  ∀ n, P261319536412157208.a n = A027025 (n + 3)

end A027025

/-! ## A027025.P10584050740644957535

`record[A288465(n)-A005408(2*n)]`
-/

namespace A027025.P10584050740644957535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288465 n - A005408 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027025.P10584050740644957535

namespace A027025

/-- `record[A288465(n)-A005408(2*n)]` -/
def P10584050740644957535.Spec : Prop :=
  ∀ n, P10584050740644957535.a n = A027025 (n + 3)

end A027025

/-! ## A027025.P14293761604755632142

`record[A288465(n)-(A016777(n)+n)]`
-/

namespace A027025.P14293761604755632142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288465 n - (A016777 n + (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027025.P14293761604755632142

namespace A027025

/-- `record[A288465(n)-(A016777(n)+n)]` -/
def P14293761604755632142.Spec : Prop :=
  ∀ n, P14293761604755632142.a n = A027025 (n + 3)

end A027025

/-! ## A027025.P6430027411251688109

`A027054(n+3)+A027054(n+3)-A027024(n+2)`
-/

namespace A027025.P6430027411251688109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027054 (n + 3) + (A027054 (n + 3) - A027024 (n + 2))

end

end A027025.P6430027411251688109

namespace A027025

/-- `A027054(n+3)+A027054(n+3)-A027024(n+2)` -/
def P6430027411251688109.Spec : Prop :=
  ∀ n, P6430027411251688109.a n = A027025 (n + 3)

end A027025

/-! ## A027025.P4030258028128376419

`2*A027054(n+3)-A027024(n+2)`
-/

namespace A027025.P4030258028128376419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A027054 (n + 3) - A027024 (n + 2)

end

end A027025.P4030258028128376419

namespace A027025

/-- `2*A027054(n+3)-A027024(n+2)` -/
def P4030258028128376419.Spec : Prop :=
  ∀ n, P4030258028128376419.a n = A027025 (n + 3)

end A027025

/-! ## A027025.P6367425116902648057

`A027055(n+4)+A027055(n+4)-A027026(n+4)`
-/

namespace A027025.P6367425116902648057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027055 (n + 4) + (A027055 (n + 4) - A027026 (n + 4))

end

end A027025.P6367425116902648057

namespace A027025

/-- `A027055(n+4)+A027055(n+4)-A027026(n+4)` -/
def P6367425116902648057.Spec : Prop :=
  ∀ n, P6367425116902648057.a n = A027025 (n + 3)

end A027025

/-! ## A027025.P621282238649458987

`2*A027055(n+4)-A027026(n+4)`
-/

namespace A027025.P621282238649458987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A027055 (n + 4) - A027026 (n + 4)

end

end A027025.P621282238649458987

namespace A027025

/-- `2*A027055(n+4)-A027026(n+4)` -/
def P621282238649458987.Spec : Prop :=
  ∀ n, P621282238649458987.a n = A027025 (n + 3)

end A027025

/-!
# A027026: a(n) = T(n,n+4), T given by A027023.

The programs for A027026, the canonical program `A027026.P7963093991431539523` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A027026 has offset 4).

The definition of A027026 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A027026.P7963093991431539523

`A000213(n+8)-2*(n+4)*(n+7)`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A027026

/-- `A000213(n+8)-2*(n+4)*(n+7)` -/
def P7963093991431539523.Spec : Prop :=
  ∀ n, P7963093991431539523.a n = A027026 (n + 4)

theorem P7963093991431539523.correct : P7963093991431539523.Spec := by
  intro n
  simp only [A027026, Nat.add_sub_cancel]

end A027026

/-! ## A027026.P7971983884605433491

`A027086(n+4)-A052905(n+2)`
-/

namespace A027026.P7971983884605433491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027086 (n + 4) - A052905 (n + 2)

end

end A027026.P7971983884605433491

namespace A027026

/-- `A027086(n+4)-A052905(n+2)` -/
def P7971983884605433491.Spec : Prop :=
  ∀ n, P7971983884605433491.a n = A027026 (n + 4)

end A027026

/-! ## A027026.P14455368453165249557

`A027055(n+4)+A027055(n+4)-A027025(n+3)`
-/

namespace A027026.P14455368453165249557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027055 (n + 4) + (A027055 (n + 4) - A027025 (n + 3))

end

end A027026.P14455368453165249557

namespace A027026

/-- `A027055(n+4)+A027055(n+4)-A027025(n+3)` -/
def P14455368453165249557.Spec : Prop :=
  ∀ n, P14455368453165249557.a n = A027026 (n + 4)

end A027026

/-! ## A027026.P18286592807525234032

`2*A027055(n+4)-A027025(n+3)`
-/

namespace A027026.P18286592807525234032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A027055 (n + 4) - A027025 (n + 3)

end

end A027026.P18286592807525234032

namespace A027026

/-- `2*A027055(n+4)-A027025(n+3)` -/
def P18286592807525234032.Spec : Prop :=
  ∀ n, P18286592807525234032.a n = A027026 (n + 4)

end A027026

/-! ## A027026.P4348046398843759806

`A027086(n+4)-A007401(A055998(n+2))`
-/

namespace A027026.P4348046398843759806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027086 (n + 4) - A007401 (A055998 (n + 2)).toNat

end

end A027026.P4348046398843759806

namespace A027026

/-- `A027086(n+4)-A007401(A055998(n+2))` -/
def P4348046398843759806.Spec : Prop :=
  ∀ n, P4348046398843759806.a n = A027026 (n + 4)

end A027026

/-! ## A027026.P12348718045489227318

`A027023(A027689(n+4))`
-/

namespace A027026.P12348718045489227318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027023 (A027689 (n + 4)).toNat

end

end A027026.P12348718045489227318

namespace A027026

/-- `A027023(A027689(n+4))` -/
def P12348718045489227318.Spec : Prop :=
  ∀ n, P12348718045489227318.a n = A027026 (n + 4)

end A027026

/-!
# A027027: a(n) = T(n, 2n-3), T given by A027023.

The programs for A027027, there is no canonical definition to state claims against.
-/

/-! ## A027027.P13278349453633157429

`Δ[A027051(n+2)]-A027050(n+2)`
-/

namespace A027027.P13278349453633157429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027051 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A027050 (n + 2)

end

end A027027.P13278349453633157429

/-! ## A027027.P17933923791024950483

`Δ[A027050(n+3)]-A027050(n+3)`
-/

namespace A027027.P17933923791024950483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027050 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A027050 (n + 3)

end

end A027027.P17933923791024950483

/-! ## A027027.P15075672458783383795

`A027051(n+3)-(A027051(n+2)+A027050(n+2))`
-/

namespace A027027.P15075672458783383795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027051 (n + 3) - (A027051 (n + 2) + A027050 (n + 2))

end

end A027027.P15075672458783383795

/-! ## A027027.P4189847615296421020

`A027023((n+3)²-4)`
-/

namespace A027027.P4189847615296421020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027023 ((n + 3) ^ 2 - 4)

end

end A027027.P4189847615296421020

/-! ## A027027.P198732476090893961

`record[A027023(∑[A052938(n+1)])]`
-/

namespace A027027.P198732476090893961
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052938 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027023 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027027.P198732476090893961

/-! ## A027027.P8711366286274037468

`record[A027023(∑[A052938(n)]-1)]`
-/

namespace A027027.P8711366286274037468
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052938 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027023 (∑ j ∈ Finset.range (n + 1), f2 j - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027027.P8711366286274037468

/-! ## A027027.P14490615920700325379

`record[A027023(∑[A008619(n+3)])]`
-/

namespace A027027.P14490615920700325379
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027023 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027027.P14490615920700325379

/-!
# A027028: a(n) = T(n,2n-4), T given by A027023.

The programs for A027028, there is no canonical definition to state claims against.
-/

/-! ## A027028.P2535539032718193676

`2*A027060(n+2)-a(n-1)` with `a(0)=1`
-/

namespace A027028.P2535539032718193676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * A027060 (n + 2) - a (n - 1)

end

end A027028.P2535539032718193676

/-! ## A027028.P14793758869265044459

`Δ[A027027(n+2)]-A027051(n+2)`
-/

namespace A027028.P14793758869265044459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027027 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A027051 (n + 2)

end

end A027028.P14793758869265044459

/-! ## A027028.P12371377413672377760

`A027027(n+3)-(A027051(n+2)+A027027(n+2))`
-/

namespace A027028.P12371377413672377760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027027 (n + 3) - (A027051 (n + 2) + A027027 (n + 2))

end

end A027028.P12371377413672377760

/-! ## A027028.P14589622628328471292

`A027023((n+3)²-5)`
-/

namespace A027028.P14589622628328471292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027023 ((n + 3) ^ 2 - 5)

end

end A027028.P14589622628328471292

/-!
# A027029: a(n) = T(n,2n-5), T given by A027023.

The programs for A027029, there is no canonical definition to state claims against.
-/

/-! ## A027029.P11031957216342885130

`Δ[A027028(n+3)]-A027027(n+3)`
-/

namespace A027029.P11031957216342885130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027028 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A027027 (n + 3)

end

end A027029.P11031957216342885130

/-! ## A027029.P4344343681581789516

`A027028(n+4)-(A027028(n+3)+A027027(n+3))`
-/

namespace A027029.P4344343681581789516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027028 (n + 4) - (A027028 (n + 3) + A027027 (n + 3))

end

end A027029.P4344343681581789516

/-! ## A027029.P392543093589809664

`∑[A027030(n+3)+A027028(n+2)]-A027030(n+3)`
-/

namespace A027029.P392543093589809664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027030 (n + 3) + A027028 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A027030 (n + 3)

end

end A027029.P392543093589809664

/-! ## A027029.P6703730645526588584

`A027023((n+4)²-6)`
-/

namespace A027029.P6703730645526588584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027023 ((n + 4) ^ 2 - 6)

end

end A027029.P6703730645526588584

/-!
# A027030: a(n) = T(n,2n-6), T given by A027023.

The programs for A027030, there is no canonical definition to state claims against.
-/

/-! ## A027030.P8828906121338746931

`Δ[A027029(n+3)]-A027028(n+3)`
-/

namespace A027030.P8828906121338746931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027029 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A027028 (n + 3)

end

end A027030.P8828906121338746931

/-! ## A027030.P11608944135548622318

`A027029(n+4)-(A027029(n+3)+A027028(n+3))`
-/

namespace A027030.P11608944135548622318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027029 (n + 4) - (A027029 (n + 3) + A027028 (n + 3))

end

end A027030.P11608944135548622318

/-! ## A027030.P13413864009134310672

`Δ[Δ[A027028(n+3)]-A027027(n+3)]-A027028(n+3)`
-/

namespace A027030.P13413864009134310672
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027028 (n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - A027027 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A027028 (n + 3)

end

end A027030.P13413864009134310672

/-! ## A027030.P14122957861885302665

`A027023((n+4)²-7)`
-/

namespace A027030.P14122957861885302665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027023 ((n + 4) ^ 2 - 7)

end

end A027030.P14122957861885302665

/-!
# A027031: a(n) = T(n,2n-7), T given by A027023.

The programs for A027031, there is no canonical definition to state claims against.
-/

/-! ## A027031.P4457103551367926624

`Δ[A027030(n+4)]-A027029(n+4)`
-/

namespace A027031.P4457103551367926624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027030 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A027029 (n + 4)

end

end A027031.P4457103551367926624

/-! ## A027031.P2811211353348165920

`∑[A027032(n+4)+A027030(n+3)]-A027032(n+4)`
-/

namespace A027031.P2811211353348165920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027032 (n + 4) + A027030 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A027032 (n + 4)

end

end A027031.P2811211353348165920

/-! ## A027031.P18320707549946632619

`record[A027028(n+2)+A027030(n+3)-A027029(n+3)]`
-/

namespace A027031.P18320707549946632619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027028 (n + 2) + (A027030 (n + 3) - A027029 (n + 3))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027031.P18320707549946632619

/-! ## A027031.P15491347602688763675

`A027023(A028884(n+2))`
-/

namespace A027031.P15491347602688763675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027023 (A028884 (n + 2)).toNat

end

end A027031.P15491347602688763675

/-! ## A027031.P7755547241690206524

`record[A027023(A028884(A002262(n)))]`
-/

namespace A027031.P7755547241690206524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027023 (A028884 (A002262 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027031.P7755547241690206524

/-!
# A027032: a(n) = T(n,2n-8), T given by A027023.

The programs for A027032, there is no canonical definition to state claims against.
-/

/-! ## A027032.P17156374142940219926

`Δ[A027031(n+4)]-A027030(n+4)`
-/

namespace A027032.P17156374142940219926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027031 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A027030 (n + 4)

end

end A027032.P17156374142940219926

/-! ## A027032.P9632832805349153136

`A027031(n+5)-(A027031(n+4)+A027030(n+4))`
-/

namespace A027032.P9632832805349153136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027031 (n + 5) - (A027031 (n + 4) + A027030 (n + 4))

end

end A027032.P9632832805349153136

/-! ## A027032.P5875367221986550960

`A027023((n+5)²-9)`
-/

namespace A027032.P5875367221986550960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027023 ((n + 5) ^ 2 - 9)

end

end A027032.P5875367221986550960

/-!
# A027033: a(n) = T(n,2n-9), T given by A027023.

The programs for A027033, there is no canonical definition to state claims against.
-/

/-! ## A027033.P11882230009547395343

`Δ[A027032(n+5)]-A027031(n+5)`
-/

namespace A027033.P11882230009547395343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027032 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A027031 (n + 5)

end

end A027033.P11882230009547395343

/-! ## A027033.P3575602076570357159

`∑[A027034(n+5)+A027032(n+4)]-A027034(n+5)`
-/

namespace A027033.P3575602076570357159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027034 (n + 5) + A027032 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A027034 (n + 5)

end

end A027033.P3575602076570357159

/-! ## A027033.P2356225422688231257

`record[A027030(n+3)+A027032(n+4)-A027031(n+4)]`
-/

namespace A027033.P2356225422688231257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027030 (n + 3) + (A027032 (n + 4) - A027031 (n + 4))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027033.P2356225422688231257

/-! ## A027033.P18383926925182099123

`A027023(A005408(n)+(n+5)²)`
-/

namespace A027033.P18383926925182099123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027023 (A005408 n + ((n + 5) ^ 2 : ℤ)).toNat

end

end A027033.P18383926925182099123

/-! ## A027033.P10415960952944533595

`A027023(A155212(n)+A046691(n+5))`
-/

namespace A027033.P10415960952944533595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027023 (A155212 n + A046691 (n + 5)).toNat

end

end A027033.P10415960952944533595

/-!
# A027034: a(n) = T(n,2n-10), T given by A027023.

The programs for A027034, there is no canonical definition to state claims against.
-/

/-! ## A027034.P50259762689192207

`Δ[A027033(n+5)]-A027032(n+5)`
-/

namespace A027034.P50259762689192207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027033 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A027032 (n + 5)

end

end A027034.P50259762689192207

/-! ## A027034.P17587499529813802663

`A027033(n+6)-(A027033(n+5)+A027032(n+5))`
-/

namespace A027034.P17587499529813802663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027033 (n + 6) - (A027033 (n + 5) + A027032 (n + 5))

end

end A027034.P17587499529813802663

/-! ## A027034.P1211993229305275140

`A027023((n+6)²-11)`
-/

namespace A027034.P1211993229305275140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027023 ((n + 6) ^ 2 - 11)

end

end A027034.P1211993229305275140

/-! ## A027034.P10565264913136168770

`A130823(A220308(∑[n]+2))`
-/

namespace A027034.P10565264913136168770
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130823 (A220308 (∑ j ∈ Finset.range (n + 1), f1 j + 2)).toNat

end

end A027034.P10565264913136168770

/-!
# A027035: a(n) = Sum_{k=0..n} T(n,n+k), T given by A027023.

The programs for A027035, there is no canonical definition to state claims against.
-/

/-! ## A027035.P7671845614755542976

`2*A027077(n+1)-A027045(n+1)`
-/

namespace A027035.P7671845614755542976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A027077 (n + 1) - A027045 (n + 1)

end

end A027035.P7671845614755542976

/-! ## A027035.P1370092116372723032

`A019446(∑[A038989(n)])`
-/

namespace A027035.P1370092116372723032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038989 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019446 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A027035.P1370092116372723032

/-! ## A027035.P9347306158626119360

`A000463(Δ[A038989(n)])`
-/

namespace A027035.P9347306158626119360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038989 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (f1 (n + 1) - f1 n).toNat

end

end A027035.P9347306158626119360

/-! ## A027035.P17035776829132230162

`A001057(Δ[A038989(n)])`
-/

namespace A027035.P17035776829132230162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038989 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (f1 (n + 1) - f1 n).toNat

end

end A027035.P17035776829132230162

/-! ## A027035.P8540362575735472323

`A003602(Δ[A038989(n)])`
-/

namespace A027035.P8540362575735472323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038989 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (f1 (n + 1) - f1 n).toNat

end

end A027035.P8540362575735472323

/-!
# A027036: Partial sums of A027035.

The programs for A027036, there is no canonical definition to state claims against.
-/

/-! ## A027036.P14061403207795626531

`∑[A027035(n)]`
-/

namespace A027036.P14061403207795626531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027035 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027036.P14061403207795626531

/-! ## A027036.P7216177987149260110

`A027035(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A027036.P7216177987149260110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A027035 n + a (A023443 n).toNat

end

end A027036.P7216177987149260110

/-! ## A027036.P6192087720847113630

`A027035(n)+a(A028310(n)-1)` with `a(0)=1`
-/

namespace A027036.P6192087720847113630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A027035 n + a (A028310 n - 1).toNat

end

end A027036.P6192087720847113630

/-! ## A027036.P8380811003762458146

`A027035(A000007(n)+n)+a(n-1)` with `a(0)=1`
-/

namespace A027036.P8380811003762458146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A027035 (A000007 n + (n : ℤ)).toNat + a (n - 1)

end

end A027036.P8380811003762458146

/-! ## A027036.P9286486992854798067

`∑[2*A027077(n+1)-A027045(n+1)]`
-/

namespace A027036.P9286486992854798067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A027077 (n + 1) - A027045 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027036.P9286486992854798067

/-!
# A027037: Diagonal sum of left-justified array T given by A027023.

The programs for A027037, there is no canonical definition to state claims against.
-/

/-! ## A027037.P12102677252626226399

`A204551(record[Δ[A104684(n)]])`
-/

namespace A027037.P12102677252626226399
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104684 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204551 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A027037.P12102677252626226399

/-! ## A027037.P12564052905296412724

`A240310(n)+A008480(A337516(n+1))`
-/

namespace A027037.P12564052905296412724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240310 n + A008480 (A337516 (n + 1)).toNat

end

end A027037.P12564052905296412724

/-! ## A027037.P6894170687524243044

`A352514(A110618(n+3))+A110618(n)`
-/

namespace A027037.P6894170687524243044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352514 (A110618 (n + 3)).toNat + A110618 n

end

end A027037.P6894170687524243044

/-!
# A027038: Diagonal sum of right-justified array T given by A027023.

The programs for A027038, there is no canonical definition to state claims against.
-/

/-! ## A027038.P8243015115914768146

`A325393(A368986(n+1))`
-/

namespace A027038.P8243015115914768146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325393 (A368986 (n + 1)).toNat

end

end A027038.P8243015115914768146

/-! ## A027038.P11656937417133327955

`A254636(A002843(n))+A001055(n+1)`
-/

namespace A027038.P11656937417133327955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254636 (A002843 n).toNat + A001055 (n + 1)

end

end A027038.P11656937417133327955

/-! ## A027038.P17005109584199516213

`A162232(A175655(n)+A003586(n+1))`
-/

namespace A027038.P17005109584199516213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162232 (A175655 n + A003586 (n + 1)).toNat

end

end A027038.P17005109584199516213

/-! ## A027038.P11659472855813516256

`A143935(A208453(n)+A002212(n+1))`
-/

namespace A027038.P11659472855813516256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143935 (A208453 n + A002212 (n + 1)).toNat

end

end A027038.P11659472855813516256

/-!
# A027039: a(n) = greatest number in row n of array T given by A027023.

The programs for A027039, there is no canonical definition to state claims against.
-/

/-! ## A027039.P18282341350262448047

`A157271(A245306(n+1))`
-/

namespace A027039.P18282341350262448047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157271 (A245306 (n + 1)).toNat

end

end A027039.P18282341350262448047

/-! ## A027039.P5859977715676625893

`A257839(A392415(n+2))`
-/

namespace A027039.P5859977715676625893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257839 (A392415 (n + 2)).toNat

end

end A027039.P5859977715676625893

/-! ## A027039.P11365971288247018151

`A008618(A022086(n+1)²)`
-/

namespace A027039.P11365971288247018151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008618 (A022086 (n + 1) ^ 2).toNat

end

end A027039.P11365971288247018151

/-! ## A027039.P7936203478904446552

`A126257(A007598(n+1))+1`
-/

namespace A027039.P7936203478904446552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126257 (A007598 (n + 1)).toNat + 1

end

end A027039.P7936203478904446552

/-!
# A027040: a(n) = self-convolution of row n of array T given by A027023.

The programs for A027040, there is no canonical definition to state claims against.
-/

/-! ## A027040.P857911108432848233

`2*A027041(n)-A000213(n)²`
-/

namespace A027040.P857911108432848233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A027041 n - A000213 n ^ 2

end

end A027040.P857911108432848233

/-! ## A027040.P6055498992323399681

`∑[∑[A018547(A225523(n))]]`
-/

namespace A027040.P6055498992323399681
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018547 (A225523 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027040.P6055498992323399681

/-!
# A027041: a(n) = Sum_{k=0..n} T(n,k) * T(n,2n-k), with T given by A027023.

The programs for A027041, there is no canonical definition to state claims against.
-/

/-! ## A027041.P17073333228577759555

`A096978(n)+A096744(A022175(n))`
-/

namespace A027041.P17073333228577759555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096978 n + A096744 (A022175 n).toNat

end

end A027041.P17073333228577759555

/-! ## A027041.P5188863991333211449

`A097003(A176642(n))+A096978(n)`
-/

namespace A027041.P5188863991333211449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097003 (A176642 n).toNat + A096978 n

end

end A027041.P5188863991333211449

/-! ## A027041.P9032504545193395408

`A096978(n)+A096744(A258898(n+1))`
-/

namespace A027041.P9032504545193395408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096978 n + A096744 (A258898 (n + 1)).toNat

end

end A027041.P9032504545193395408

/-!
# A027042: a(n) = Sum_{k=0..n-1} T(n,k) * T(n,2n-k), with T given by A027023.

The programs for A027042, there is no canonical definition to state claims against.
-/

/-! ## A027042.P8112350773051041475

`A027041(n+1)-A000213(n+1)²`
-/

namespace A027042.P8112350773051041475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027041 (n + 1) - A000213 (n + 1) ^ 2

end

end A027042.P8112350773051041475

/-! ## A027042.P15301212169449440817

`A027040(n+1)-A027041(n+1)`
-/

namespace A027042.P15301212169449440817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027040 (n + 1) - A027041 (n + 1)

end

end A027042.P15301212169449440817

/-! ## A027042.P8436803929634170834

`A027040(A057077(n)²+n)%A027041(n+1)`
-/

namespace A027042.P8436803929634170834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A027040 (A057077 n ^ 2 + (n : ℤ)).toNat) (A027041 (n + 1))

end

end A027042.P8436803929634170834

/-! ## A027042.P955276335216002896

`A027040(A000007(n)+1+n)%A027041(n+1)`
-/

namespace A027042.P955276335216002896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A027040 (A000007 n + 1 + (n : ℤ)).toNat) (A027041 (n + 1))

end

end A027042.P955276335216002896

/-! ## A027042.P9386391919158572298

`A027040(A057428(n)+2+n)%A027041(n+1)`
-/

namespace A027042.P9386391919158572298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A027040 (A057428 n + 2 + (n : ℤ)).toNat) (A027041 (n + 1))

end

end A027042.P9386391919158572298

/-! ## A027042.P7605272561378723120

`A027040(n+1)+A027041(n+1)*A057428(n+1)`
-/

namespace A027042.P7605272561378723120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027040 (n + 1) + A027041 (n + 1) * A057428 (n + 1)

end

end A027042.P7605272561378723120

/-!
# A027043: a(n) = Sum_{k=0..2n} (k+1) * A027023(n,k).

The programs for A027043, there is no canonical definition to state claims against.
-/

/-! ## A027043.P10915160829007288138

`A064661(A247308(n+1))`
-/

namespace A027043.P10915160829007288138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064661 (A247308 (n + 1)).toNat

end

end A027043.P10915160829007288138

/-!
# A027044: a(n) = Sum_{k=0..2n} (k+1) * A027023(n,2n-k).

The programs for A027044, there is no canonical definition to state claims against.
-/

/-! ## A027044.P5257379813833631256

`(n-1)*A035202((n+1)^n)+2*3^n`
-/

namespace A027044.P5257379813833631256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * A035202 ((n + 1) ^ n) + (2 * 3 ^ n : ℤ)

end

end A027044.P5257379813833631256

/-! ## A027044.P12388385460877061531

`A247908(A116952(n))`
-/

namespace A027044.P12388385460877061531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247908 (A116952 n).toNat

end

end A027044.P12388385460877061531

/-!
# A027045: a(n) = Sum_{k=n+1..2*n} T(n, k), T given by A027023.

The programs for A027045, there is no canonical definition to state claims against.
-/

/-! ## A027045.P12415338214056741491

`Δ[A027036(n)]-A000213(n+1)`
-/

namespace A027045.P12415338214056741491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027036 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A000213 (n + 1)

end

end A027045.P12415338214056741491

/-! ## A027045.P16586822078860308022

`∑[-Δ[A000213(n)-A027035(n)]]`
-/

namespace A027045.P16586822078860308022
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000213 n - A027035 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027045.P16586822078860308022

/-! ## A027045.P2645860337393346158

`A027035(n+1)-A000213(n+1)`
-/

namespace A027045.P2645860337393346158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027035 (n + 1) - A000213 (n + 1)

end

end A027045.P2645860337393346158

/-! ## A027045.P2238897429211686984

`2*A027077(n+1)-A027035(n)`
-/

namespace A027045.P2238897429211686984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A027077 (n + 1) - A027035 n

end

end A027045.P2238897429211686984

/-! ## A027045.P13694440726023419130

`A027035(n+1)-Δ[A001590(n+3)]`
-/

namespace A027045.P13694440726023419130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001590 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027035 (n + 1) - (f1 (n + 1) - f1 n)

end

end A027045.P13694440726023419130

/-! ## A027045.P1134912432363202912

`A027035(n+1)+A001590(n)-A001590(n+3)`
-/

namespace A027045.P1134912432363202912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027035 (n + 1) + (A001590 n - A001590 (n + 3))

end

end A027045.P1134912432363202912

/-!
# A027046: a(n) = Sum_{k=0..n} T(n,k) * T(n,n+k), with T given by A027023.

The programs for A027046, there is no canonical definition to state claims against.
-/

/-! ## A027046.P4991493872314916382

`A383430(A150847(n))`
-/

namespace A027046.P4991493872314916382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383430 (A150847 n).toNat

end

end A027046.P4991493872314916382

/-! ## A027046.P10524928992314107455

`∑[A110656(Δ[A150631(n)])]`
-/

namespace A027046.P10524928992314107455
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150631 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110656 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027046.P10524928992314107455

/-!
# A027047: a(n) = Sum_{k=0..2n-1} T(n,k) * T(n,k+1), with T given by A027023.

The programs for A027047, there is no canonical definition to state claims against.
-/

/-! ## A027047.P3506153675299609812

`A008621(5^n+9^n-1)+5^n-n`
-/

namespace A027047.P3506153675299609812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (5 ^ n + 9 ^ n - 1) + ((5 ^ n : ℤ) - (n : ℤ))

end

end A027047.P3506153675299609812

/-!
# A027050: a(n) = T(n,2n-1), T given by A027023.

The programs for A027050, there is no canonical definition to state claims against.
-/

/-! ## A027050.P122575691346819217

`∑[A027051(A233583(n+1))]+n`
-/

namespace A027050.P122575691346819217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027051 (A233583 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A027050.P122575691346819217

/-! ## A027050.P18263395546373515968

`2*A027056(n+1)-a(n-1)` with `a(0)=1`
-/

namespace A027050.P18263395546373515968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * A027056 (n + 1) - a (n - 1)

end

end A027050.P18263395546373515968

/-! ## A027050.P15359092529443895774

`A027023((n+2)²-2)`
-/

namespace A027050.P15359092529443895774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027023 ((n + 2) ^ 2 - 2)

end

end A027050.P15359092529443895774

/-! ## A027050.P10038996072977840818

`record[A027023(∑[A008619(n)+1])]`
-/

namespace A027050.P10038996072977840818
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027023 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027050.P10038996072977840818

/-! ## A027050.P294862651326194001

`record[A027023(∑[A052938(n)]+1)]`
-/

namespace A027050.P294862651326194001
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052938 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027023 (∑ j ∈ Finset.range (n + 1), f2 j + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027050.P294862651326194001

/-! ## A027050.P3221009972520820978

`record[A027023(A004652(n+3)-2)]`
-/

namespace A027050.P3221009972520820978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027023 (A004652 (n + 3) - 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027050.P3221009972520820978

/-! ## A027050.P17048791958190790233

`record[A027023(n)/A027023(n+1)]`
-/

namespace A027050.P17048791958190790233
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027023 n : ℚ) / (A027023 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027050.P17048791958190790233

/-!
# A027051: a(n) = T(n,2n-2), T given by A027023.

The programs for A027051, there is no canonical definition to state claims against.
-/

/-! ## A027051.P18075818990333799069

`Δ[A027050(n+2)]-1`
-/

namespace A027051.P18075818990333799069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027050 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A027051.P18075818990333799069

/-! ## A027051.P18159451572044432779

`Δ[A027027(n+2)]-A027028(n+2)`
-/

namespace A027051.P18159451572044432779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027027 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A027028 (n + 2)

end

end A027051.P18159451572044432779

/-! ## A027051.P1455707822110855690

`A027027(n+3)-(A027028(n+2)+A027027(n+2))`
-/

namespace A027051.P1455707822110855690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027027 (n + 3) - (A027028 (n + 2) + A027027 (n + 2))

end

end A027051.P1455707822110855690

/-! ## A027051.P17283908956593633281

`A027023((n+3)²-3)`
-/

namespace A027051.P17283908956593633281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027023 ((n + 3) ^ 2 - 3)

end

end A027051.P17283908956593633281

/-! ## A027051.P9091351641545853386

`record[A027023(∑[A052938(n)])]`
-/

namespace A027051.P9091351641545853386
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052938 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027023 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027051.P9091351641545853386

/-! ## A027051.P2247551217993602282

`record[A027023(∑[A008619(n)]+n)]`
-/

namespace A027051.P2247551217993602282
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027023 (∑ j ∈ Finset.range (n + 1), f2 j + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027051.P2247551217993602282

/-!
# A027052: Triangular array T read by rows: T(n,0) = T(n,2n) = 1 for n >= 0, T(n,1)=0 for n >= 1, T(n,2)=1 for n >= 2 and for n >= 3, T(n,k) = T(n-1,k-3) + T(n-1, k-2) + T(n-1,k-1) for 3 <= k <= 2n-1. T(n,k)=0 for k < 0 or k > 2n.

The programs for A027052, there is no canonical definition to state claims against.
-/

/-! ## A027052.P12049557706629174464

`A097866(A381683(n))`
-/

namespace A027052.P12049557706629174464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097866 (A381683 n).toNat

end

end A027052.P12049557706629174464

/-! ## A027052.P2809102907081948311

`A257994(A000040(2*n+5)*A089408(n))`
-/

namespace A027052.P2809102907081948311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257994 (A000040 (2 * n + 5) * A089408 n).toNat

end

end A027052.P2809102907081948311

/-! ## A027052.P3569530589200280174

`and(A005846(A000079(n)), A054124(3*n+2))`
-/

namespace A027052.P3569530589200280174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A005846 (A000079 n).toNat) (A054124 (3 * n + 2))

end

end A027052.P3569530589200280174

/-! ## A027052.P2892263204640318425

`A053150(2*n+1)*A140080(A114538(n+1))`
-/

namespace A027052.P2892263204640318425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053150 (2 * n + 1) * A140080 (A114538 (n + 1)).toNat

end

end A027052.P2892263204640318425

/-! ## A027052.P6077432355820093270

`A033461(A003277(n+1)*A175834(3*(n+1)))`
-/

namespace A027052.P6077432355820093270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033461 (A003277 (n + 1) * A175834 (3 * (n + 1))).toNat

end

end A027052.P6077432355820093270

/-!
# A027053: a(n) = T(n,n+2), T given by A027052.

The programs for A027053, the canonical program `A027053.P5969876474794930038` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A027053 has offset 2).

The definition of A027053 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A027053.P5969876474794930038

`2*a(n-1)-a(n-4)` with `a(0)=1, a(1)=4, a(2)=9, a(3)=18`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A027053

/-- `2*a(n-1)-a(n-4)` -/
def P5969876474794930038.Spec : Prop :=
  ∀ n, P5969876474794930038.a n = A027053 (n + 2)

theorem P5969876474794930038.correct : P5969876474794930038.Spec := by
  intro n
  simp only [A027053, Nat.add_sub_cancel]

end A027053

/-! ## A027053.P5377608352697171869

`a(n-1)+a(n-2)+a(n-3)+4` with `a(0)=1, a(1)=4, a(2)=9`
-/

namespace A027053.P5377608352697171869
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 4, 9] fun n a =>
  a (n - 1) + a (n - 2) + a (n - 3) + 4

end

end A027053.P5377608352697171869

namespace A027053

/-- `a(n-1)+a(n-2)+a(n-3)+4` -/
def P5377608352697171869.Spec : Prop :=
  ∀ n, (P5377608352697171869.a n : ℤ) = A027053 (n + 2)

end A027053

/-! ## A027053.P10169863282476131698

`A001590(n+5)-2`
-/

namespace A027053.P10169863282476131698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001590 (n + 5) - 2

end

end A027053.P10169863282476131698

namespace A027053

/-- `A001590(n+5)-2` -/
def P10169863282476131698.Spec : Prop :=
  ∀ n, P10169863282476131698.a n = A027053 (n + 2)

end A027053

/-! ## A027053.P10689105638128838222

`A089068(n+1)+A089068(n+2)`
-/

namespace A027053.P10689105638128838222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089068 (n + 1) + A089068 (n + 2)

end

end A027053.P10689105638128838222

namespace A027053

/-- `A089068(n+1)+A089068(n+2)` -/
def P10689105638128838222.Spec : Prop :=
  ∀ n, P10689105638128838222.a n = A027053 (n + 2)

end A027053

/-! ## A027053.P13520229391481293443

`ogf((1+2x+x^2)/(1-2x+x^4))`
-/

namespace A027053.P13520229391481293443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2, 1] [1, -2, 0, 0, 1] n

end

end A027053.P13520229391481293443

namespace A027053

/-- `ogf((1+2x+x^2)/(1-2x+x^4))` -/
def P13520229391481293443.Spec : Prop :=
  ∀ n, P13520229391481293443.a n = A027053 (n + 2)

end A027053

/-! ## A027053.P6912744842591781

`∑[a(n-1)+a(n-2)+a(n-3)]` with `a(0)=1, a(1)=3, a(2)=5`
-/

namespace A027053.P6912744842591781
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 5] fun n f1 =>
  f1 (n - 1) + (f1 (n - 2) + f1 (n - 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027053.P6912744842591781

namespace A027053

/-- `∑[a(n-1)+a(n-2)+a(n-3)]` -/
def P6912744842591781.Spec : Prop :=
  ∀ n, (P6912744842591781.a n : ℤ) = A027053 (n + 2)

end A027053

/-! ## A027053.P6768777772618913899

`∑[A000213(n+2)]`
-/

namespace A027053.P6768777772618913899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000213 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027053.P6768777772618913899

namespace A027053

/-- `∑[A000213(n+2)]` -/
def P6768777772618913899.Spec : Prop :=
  ∀ n, P6768777772618913899.a n = A027053 (n + 2)

end A027053

/-! ## A027053.P11395206375801418494

`∑[A288465(n)-1]`
-/

namespace A027053.P11395206375801418494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288465 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027053.P11395206375801418494

namespace A027053

/-- `∑[A288465(n)-1]` -/
def P11395206375801418494.Spec : Prop :=
  ∀ n, P11395206375801418494.a n = A027053 (n + 2)

end A027053

/-! ## A027053.P10981518958235406028

`∑[record[Δ[A001590(n)]]]`
-/

namespace A027053.P10981518958235406028
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001590 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027053.P10981518958235406028

namespace A027053

/-- `∑[record[Δ[A001590(n)]]]` -/
def P10981518958235406028.Spec : Prop :=
  ∀ n, P10981518958235406028.a n = A027053 (n + 2)

end A027053

/-! ## A027053.P2827070548425364256

`A047081(n+2)-2`
-/

namespace A027053.P2827070548425364256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047081 (n + 2) - 2

end

end A027053.P2827070548425364256

namespace A027053

/-- `A047081(n+2)-2` -/
def P2827070548425364256.Spec : Prop :=
  ∀ n, P2827070548425364256.a n = A027053 (n + 2)

end A027053

/-! ## A027053.P84922843708163516

`abs(A078042(n+2))-2`
-/

namespace A027053.P84922843708163516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A078042 (n + 2)| - 2

end

end A027053.P84922843708163516

namespace A027053

/-- `abs(A078042(n+2))-2` -/
def P84922843708163516.Spec : Prop :=
  ∀ n, P84922843708163516.a n = A027053 (n + 2)

end A027053

/-! ## A027053.P7634350615983241207

`∑[2*A008937(n)+1]`
-/

namespace A027053.P7634350615983241207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008937 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027053.P7634350615983241207

namespace A027053

/-- `∑[2*A008937(n)+1]` -/
def P7634350615983241207.Spec : Prop :=
  ∀ n, P7634350615983241207.a n = A027053 (n + 2)

end A027053

/-! ## A027053.P1137337100274111146

`∑[A054668(n+1)]+n`
-/

namespace A027053.P1137337100274111146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054668 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A027053.P1137337100274111146

namespace A027053

/-- `∑[A054668(n+1)]+n` -/
def P1137337100274111146.Spec : Prop :=
  ∀ n, P1137337100274111146.a n = A027053 (n + 2)

end A027053

/-! ## A027053.P11696701844376630342

`abs(Δ[Δ[A077902(n)]])-2`
-/

namespace A027053.P11696701844376630342
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077902 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n| - 2

end

end A027053.P11696701844376630342

namespace A027053

/-- `abs(Δ[Δ[A077902(n)]])-2` -/
def P11696701844376630342.Spec : Prop :=
  ∀ n, P11696701844376630342.a n = A027053 (n + 2)

end A027053

/-! ## A027053.P11489677826491664032

`record[abs(2-∑[A000213(n)])]`
-/

namespace A027053.P11489677826491664032
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000213 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - ∑ j ∈ Finset.range (n + 1), f2 j|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027053.P11489677826491664032

namespace A027053

/-- `record[abs(2-∑[A000213(n)])]` -/
def P11489677826491664032.Spec : Prop :=
  ∀ n, P11489677826491664032.a n = A027053 (n + 2)

end A027053

/-! ## A027053.P8535200848463099627

`A308189(2*(n+2))-2`
-/

namespace A027053.P8535200848463099627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308189 (2 * (n + 2)) - 2

end

end A027053.P8535200848463099627

namespace A027053

/-- `A308189(2*(n+2))-2` -/
def P8535200848463099627.Spec : Prop :=
  ∀ n, P8535200848463099627.a n = A027053 (n + 2)

end A027053

/-! ## A027053.P3172576867700953276

`A213816(2*(n+3))-2`
-/

namespace A027053.P3172576867700953276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213816 (2 * (n + 3)) - 2

end

end A027053.P3172576867700953276

namespace A027053

/-- `A213816(2*(n+3))-2` -/
def P3172576867700953276.Spec : Prop :=
  ∀ n, P3172576867700953276.a n = A027053 (n + 2)

end A027053

/-! ## A027053.P13903707113036739590

`2*A062544(n)+n+1`
-/

namespace A027053.P13903707113036739590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A062544 n + (n + 1 : ℤ)

end

end A027053.P13903707113036739590

namespace A027053

/-- `2*A062544(n)+n+1` -/
def P13903707113036739590.Spec : Prop :=
  ∀ n, P13903707113036739590.a n = A027053 (n + 2)

end A027053

/-! ## A027053.P17792485246551349833

`∑[∑[A354784(n+1)]+1]`
-/

namespace A027053.P17792485246551349833
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354784 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027053.P17792485246551349833

namespace A027053

/-- `∑[∑[A354784(n+1)]+1]` -/
def P17792485246551349833.Spec : Prop :=
  ∀ n, P17792485246551349833.a n = A027053 (n + 2)

end A027053

/-! ## A027053.P14465364485189421984

`2*A007800(n+1)+n-1`
-/

namespace A027053.P14465364485189421984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A007800 (n + 1) + ((n : ℤ) - 1)

end

end A027053.P14465364485189421984

namespace A027053

/-- `2*A007800(n+1)+n-1` -/
def P14465364485189421984.Spec : Prop :=
  ∀ n, P14465364485189421984.a n = A027053 (n + 2)

end A027053

/-!
# A027054: a(n) = T(n, n+3), T given by A027052.

The programs for A027054, the canonical program `A027054.P3011077703952739741` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A027054 has offset 3).

The definition of A027054 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A027054.P3011077703952739741

`3*a(n-1)-2*a(n-2)-a(n-4)+a(n-5)` with `a(0)=1, a(1)=8, a(2)=23, a(3)=52, a(4)=107`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A027054

/-- `3*a(n-1)-2*a(n-2)-a(n-4)+a(n-5)` -/
def P3011077703952739741.Spec : Prop :=
  ∀ n, P3011077703952739741.a n = A027054 (n + 3)

theorem P3011077703952739741.correct : P3011077703952739741.Spec := by
  intro n
  simp only [A027054, Nat.add_sub_cancel]

end A027054

/-! ## A027054.P15532695754482858585

`A001590(n+7)-2*(n+3)-4`
-/

namespace A027054.P15532695754482858585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001590 (n + 7) - (2 * (n + 3) : ℤ) - 4

end

end A027054.P15532695754482858585

namespace A027054

/-- `A001590(n+7)-2*(n+3)-4` -/
def P15532695754482858585.Spec : Prop :=
  ∀ n, P15532695754482858585.a n = A027054 (n + 3)

end A027054

/-! ## A027054.P17940958620103790715

`∑[A027083(n+2)+1]-2`
-/

namespace A027054.P17940958620103790715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027083 (n + 2) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2

end

end A027054.P17940958620103790715

namespace A027054

/-- `∑[A027083(n+2)+1]-2` -/
def P17940958620103790715.Spec : Prop :=
  ∀ n, P17940958620103790715.a n = A027054 (n + 3)

end A027054

/-! ## A027054.P13146941491574271695

`∑[A027024(n+2)+2]-2`
-/

namespace A027054.P13146941491574271695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027024 (n + 2) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2

end

end A027054.P13146941491574271695

namespace A027054

/-- `∑[A027024(n+2)+2]-2` -/
def P13146941491574271695.Spec : Prop :=
  ∀ n, P13146941491574271695.a n = A027054 (n + 3)

end A027054

/-! ## A027054.P3351646581754166536

`∑[A054668(n+3)]-(n+3)`
-/

namespace A027054.P3351646581754166536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054668 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n + 3 : ℤ)

end

end A027054.P3351646581754166536

namespace A027054

/-- `∑[A054668(n+3)]-(n+3)` -/
def P3351646581754166536.Spec : Prop :=
  ∀ n, P3351646581754166536.a n = A027054 (n + 3)

end A027054

/-! ## A027054.P4017308989510048577

`∑[∑[2*A282718(n+1)]]-(n+1)`
-/

namespace A027054.P4017308989510048577
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A282718 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n + 1 : ℤ)

end

end A027054.P4017308989510048577

namespace A027054

/-- `∑[∑[2*A282718(n+1)]]-(n+1)` -/
def P4017308989510048577.Spec : Prop :=
  ∀ n, P4017308989510048577.a n = A027054 (n + 3)

end A027054

/-! ## A027054.P3940609208688852333

`∑[A135491(n+1)]+a(n-1)+1` with `a(0)=1`
-/

namespace A027054.P3940609208688852333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135491 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (a (n - 1) + 1)

end

end A027054.P3940609208688852333

namespace A027054

/-- `∑[A135491(n+1)]+a(n-1)+1` -/
def P3940609208688852333.Spec : Prop :=
  ∀ n, P3940609208688852333.a n = A027054 (n + 3)

end A027054

/-! ## A027054.P13122386771442670254

`n+1+A116734(n+2)+a(n-1)` with `a(0)=1`
-/

namespace A027054.P13122386771442670254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n + 1 : ℤ) + (A116734 (n + 2) + a (n - 1))

end

end A027054.P13122386771442670254

namespace A027054

/-- `n+1+A116734(n+2)+a(n-1)` -/
def P13122386771442670254.Spec : Prop :=
  ∀ n, P13122386771442670254.a n = A027054 (n + 3)

end A027054

/-! ## A027054.P4505875305994745731

`record[Δ[A282718(n)]-2*n]`
-/

namespace A027054.P4505875305994745731
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282718 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - (2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027054.P4505875305994745731

namespace A027054

/-- `record[Δ[A282718(n)]-2*n]` -/
def P4505875305994745731.Spec : Prop :=
  ∀ n, P4505875305994745731.a n = A027054 (n + 3)

end A027054

/-! ## A027054.P3321189811981167508

`record[A027052(A027689(n)-1)]`
-/

namespace A027054.P3321189811981167508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027052 (A027689 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027054.P3321189811981167508

namespace A027054

/-- `record[A027052(A027689(n)-1)]` -/
def P3321189811981167508.Spec : Prop :=
  ∀ n, P3321189811981167508.a n = A027054 (n + 3)

end A027054

/-!
# A027055: a(n) = T(n, n+4), T given by A027052.

The programs for A027055, the canonical program `A027055.P883771380513569795` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A027055 has offset 4).

The definition of A027055 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A027055.P883771380513569795

`A001590(n+9)-(n+4)*(5+n+4)`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A027055

/-- `A001590(n+9)-(n+4)*(5+n+4)` -/
def P883771380513569795.Spec : Prop :=
  ∀ n, P883771380513569795.a n = A027055 (n + 4)

theorem P883771380513569795.correct : P883771380513569795.Spec := by
  intro n
  simp only [A027055, Nat.add_sub_cancel]

end A027055

/-! ## A027055.P7588314524567278552

`A028557(n)+∑[A027025(n+3)]`
-/

namespace A027055.P7588314524567278552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027025 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028557 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027055.P7588314524567278552

namespace A027055

/-- `A028557(n)+∑[A027025(n+3)]` -/
def P7588314524567278552.Spec : Prop :=
  ∀ n, P7588314524567278552.a n = A027055 (n + 4)

end A027055

/-! ## A027055.P8574802499977840925

`∑[A027054(n+4)]-A000073(n+6)`
-/

namespace A027055.P8574802499977840925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027054 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A000073 (n + 6)

end

end A027055.P8574802499977840925

namespace A027055

/-- `∑[A027054(n+4)]-A000073(n+6)` -/
def P8574802499977840925.Spec : Prop :=
  ∀ n, P8574802499977840925.a n = A027055 (n + 4)

end A027055

/-! ## A027055.P1992171660611321603

`(A027026(n+4)+A027025(n+3))/2`
-/

namespace A027055.P1992171660611321603
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027026 (n + 4) + A027025 (n + 3) : ℚ) / 2

end

end A027055.P1992171660611321603

namespace A027055

/-- `(A027026(n+4)+A027025(n+3))/2` -/
def P1992171660611321603.Spec : Prop :=
  ∀ n, P1992171660611321603.a n = (A027055 (n + 4) : ℚ)

end A027055

/-! ## A027055.P3163473327953710444

`record[A027052(∑[a(n-1)+2])]` with `a(0)=4, a(1)=2`
-/

namespace A027055.P3163473327953710444
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [4, 2] fun n f2 =>
  f2 (n - 1) + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027052 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027055.P3163473327953710444

namespace A027055

/-- `record[A027052(∑[a(n-1)+2])]` -/
def P3163473327953710444.Spec : Prop :=
  ∀ n, P3163473327953710444.a n = A027055 (n + 4)

end A027055

/-! ## A027055.P3370581122277642273

`record[A027052(A027689(n))]`
-/

namespace A027055.P3370581122277642273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027052 (A027689 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027055.P3370581122277642273

namespace A027055

/-- `record[A027052(A027689(n))]` -/
def P3370581122277642273.Spec : Prop :=
  ∀ n, P3370581122277642273.a n = A027055 (n + 4)

end A027055

/-! ## A027055.P4992534747316224952

`A027052(A002378(n+4)+4)`
-/

namespace A027055.P4992534747316224952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027052 (A002378 (n + 4) + 4).toNat

end

end A027055.P4992534747316224952

namespace A027055

/-- `A027052(A002378(n+4)+4)` -/
def P4992534747316224952.Spec : Prop :=
  ∀ n, P4992534747316224952.a n = A027055 (n + 4)

end A027055

/-! ## A027055.P1533040600880668503

`A027052(2*A133263(n+4))`
-/

namespace A027055.P1533040600880668503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027052 (2 * A133263 (n + 4)).toNat

end

end A027055.P1533040600880668503

namespace A027055

/-- `A027052(2*A133263(n+4))` -/
def P1533040600880668503.Spec : Prop :=
  ∀ n, P1533040600880668503.a n = A027055 (n + 4)

end A027055

/-!
# A027056: a(n) = A027052(n, 2n-1).

The programs for A027056, there is no canonical definition to state claims against.
-/

/-! ## A027056.P15929008089991551793

`∑[A027058(round(sqrt(n²+1)))]+n-1`
-/

namespace A027056.P15929008089991551793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027058 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ((n : ℤ) - 1)

end

end A027056.P15929008089991551793

/-! ## A027056.P7614278911463893071

`∑[A027058(n+1)]-A027058(n+1)+n`
-/

namespace A027056.P7614278911463893071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027058 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A027058 (n + 1) + (n : ℤ)

end

end A027056.P7614278911463893071

/-! ## A027056.P6466301443425621208

`A027052((n+2)²-2)`
-/

namespace A027056.P6466301443425621208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027052 ((n + 2) ^ 2 - 2)

end

end A027056.P6466301443425621208

/-! ## A027056.P3230880573275134004

`record[A027052(eq[2, A004737(n+1)])]`
-/

namespace A027056.P3230880573275134004
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004737 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027052 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027056.P3230880573275134004

/-! ## A027056.P1864140699000462285

`lcm(2, A027052(A002378(n+1)+n))`
-/

namespace A027056.P1864140699000462285
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A027052 (A002378 (n + 1) + (n : ℤ)).toNat)

end

end A027056.P1864140699000462285

/-! ## A027056.P8508997225943055863

`A027052(A002378(n+1)+n)%A027067(n+1)`
-/

namespace A027056.P8508997225943055863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A027052 (A002378 (n + 1) + (n : ℤ)).toNat) (A027067 (n + 1))

end

end A027056.P8508997225943055863

/-! ## A027056.P8993803028887043179

`abs(A010892(3*n)*A027052(A002378(n+1)+n))`
-/

namespace A027056.P8993803028887043179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A010892 (3 * n) * A027052 (A002378 (n + 1) + (n : ℤ)).toNat|

end

end A027056.P8993803028887043179

/-!
# A027057: a(n) = (1/2) * A027052(n, 2n-1).

The programs for A027057, there is no canonical definition to state claims against.
-/

/-! ## A027057.P12492464769055126447

`∑[ceil(A027058(n+1)/2)]`
-/

namespace A027057.P12492464769055126447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A027058 (n + 1) : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027057.P12492464769055126447

/-! ## A027057.P6017156588184889930

`A027056(n+2)/2`
-/

namespace A027057.P6017156588184889930
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027056 (n + 2) : ℚ) / 2

end

end A027057.P6017156588184889930

/-! ## A027057.P17059604068951361574

`(A000027(n+1)+∑[A027058(n+1)])/2`
-/

namespace A027057.P17059604068951361574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027058 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A000027 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A027057.P17059604068951361574

/-! ## A027057.P2836182219036178019

`(∑[A027058(n+1)]+A005408(n)-n)/2`
-/

namespace A027057.P2836182219036178019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027058 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j + (A005408 n - (n : ℤ)) : ℤ) : ℚ) / 2

end

end A027057.P2836182219036178019

/-! ## A027057.P11478254911631775594

`A027052((n+3)²-2)/2`
-/

namespace A027057.P11478254911631775594
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027052 ((n + 3) ^ 2 - 2) : ℚ) / 2

end

end A027057.P11478254911631775594

/-!
# A027058: a(n) = A027052(n, 2n-2).

The programs for A027058, there is no canonical definition to state claims against.
-/

/-! ## A027058.P6138229030150898790

`A396883(2*(n+1))-1`
-/

namespace A027058.P6138229030150898790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396883 (2 * (n + 1)) - 1

end

end A027058.P6138229030150898790

/-! ## A027058.P8876968363319278995

`Δ[A027056(n+1)]-1`
-/

namespace A027058.P8876968363319278995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027056 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A027058.P8876968363319278995

/-! ## A027058.P4790546872548564407

`Δ[A027056(n+1)+A001489(n)]`
-/

namespace A027058.P4790546872548564407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027056 (n + 1) + A001489 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A027058.P4790546872548564407

/-! ## A027058.P8374883542721888029

`Δ[A027056(n+1)+A022970(n)]`
-/

namespace A027058.P8374883542721888029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027056 (n + 1) + A022970 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A027058.P8374883542721888029

/-! ## A027058.P82511622607784076

`A027056(n+2)-(A027056(n+1)+1)`
-/

namespace A027058.P82511622607784076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027056 (n + 2) - (A027056 (n + 1) + 1)

end

end A027058.P82511622607784076

/-! ## A027058.P7944025402723876112

`A027052((n+2)²-3)`
-/

namespace A027058.P7944025402723876112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027052 ((n + 2) ^ 2 - 3)

end

end A027058.P7944025402723876112

/-! ## A027058.P3295587069937810561

`A027052(A028872(n+2))*A027052(n²)`
-/

namespace A027058.P3295587069937810561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027052 (A028872 (n + 2)).toNat * A027052 (n ^ 2)

end

end A027058.P3295587069937810561

/-!
# A027059: a(n) = A027052(n, 2n-3).

The programs for A027059, there is no canonical definition to state claims against.
-/

/-! ## A027059.P1500787587057279601

`A027056(n+4)%A027056(n+3)`
-/

namespace A027059.P1500787587057279601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A027056 (n + 4)) (A027056 (n + 3))

end

end A027059.P1500787587057279601

/-! ## A027059.P16130570405741638825

`Δ[Δ[A027056(n+2)]]-A027056(n+2)`
-/

namespace A027059.P16130570405741638825
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027056 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A027056 (n + 2)

end

end A027059.P16130570405741638825

/-! ## A027059.P11400070050269674104

`A027052((n+3)²-4)`
-/

namespace A027059.P11400070050269674104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027052 ((n + 3) ^ 2 - 4)

end

end A027059.P11400070050269674104

/-! ## A027059.P15131943867769336987

`record[A027052(∑[A297996(n+1)])]`
-/

namespace A027059.P15131943867769336987
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297996 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027052 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027059.P15131943867769336987

/-! ## A027059.P1706107145192805511

`record[A027052(eq[3, A004737(n+2)])]`
-/

namespace A027059.P1706107145192805511
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004737 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027052 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027059.P1706107145192805511

/-!
# A027060: a(n) = T(n,2n-4), T given by A027052.

The programs for A027060, there is no canonical definition to state claims against.
-/

/-! ## A027060.P12470870776483308241

`Δ[A027059(n+2)]-A027058(n+2)`
-/

namespace A027060.P12470870776483308241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027059 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A027058 (n + 2)

end

end A027060.P12470870776483308241

/-! ## A027060.P559863053500559834

`A027052((n+3)²-5)`
-/

namespace A027060.P559863053500559834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027052 ((n + 3) ^ 2 - 5)

end

end A027060.P559863053500559834

/-! ## A027060.P8575347490461439799

`A060384((n+1)*A080888(n))`
-/

namespace A027060.P8575347490461439799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060384 ((n + 1 : ℤ) * A080888 n).toNat

end

end A027060.P8575347490461439799

/-!
# A027061: a(n) = A027052(n, 2n-5).

The programs for A027061, there is no canonical definition to state claims against.
-/

/-! ## A027061.P3993608939529065857

`Δ[A027060(n+3)]-A027059(n+3)`
-/

namespace A027061.P3993608939529065857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027060 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A027059 (n + 3)

end

end A027061.P3993608939529065857

/-! ## A027061.P992557543511721946

`A027052((n+4)²-6)`
-/

namespace A027061.P992557543511721946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027052 ((n + 4) ^ 2 - 6)

end

end A027061.P992557543511721946

/-!
# A027062: a(n) = A027052(n, 2n-6).

The programs for A027062, there is no canonical definition to state claims against.
-/

/-! ## A027062.P1511886861825753435

`Δ[A027061(n+3)]-A027060(n+3)`
-/

namespace A027062.P1511886861825753435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027061 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A027060 (n + 3)

end

end A027062.P1511886861825753435

/-! ## A027062.P13628711590841531151

`A027061(n+4)-(A027061(n+3)+A027060(n+3))`
-/

namespace A027062.P13628711590841531151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027061 (n + 4) - (A027061 (n + 3) + A027060 (n + 3))

end

end A027062.P13628711590841531151

/-! ## A027062.P12968792542401245435

`Δ[Δ[A027060(n+3)]-A027059(n+3)]-A027060(n+3)`
-/

namespace A027062.P12968792542401245435
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027060 (n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - A027059 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A027060 (n + 3)

end

end A027062.P12968792542401245435

/-! ## A027062.P12010974483965463770

`A027052((n+4)²-7)`
-/

namespace A027062.P12010974483965463770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027052 ((n + 4) ^ 2 - 7)

end

end A027062.P12010974483965463770

/-!
# A027063: a(n) = A027052(n, 2n-7).

The programs for A027063, there is no canonical definition to state claims against.
-/

/-! ## A027063.P5673957460438704918

`Δ[A027062(n+4)]-A027061(n+4)`
-/

namespace A027063.P5673957460438704918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027062 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A027061 (n + 4)

end

end A027063.P5673957460438704918

/-! ## A027063.P3885547853369295117

`A027052(A028884(n+2))`
-/

namespace A027063.P3885547853369295117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027052 (A028884 (n + 2)).toNat

end

end A027063.P3885547853369295117

/-! ## A027063.P14913891192164321390

`A027052(A098603(n)+17)`
-/

namespace A027063.P14913891192164321390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027052 (A098603 n + 17).toNat

end

end A027063.P14913891192164321390

/-! ## A027063.P17887952279971850098

`A027052(A005408(n)+(n+4)²)`
-/

namespace A027063.P17887952279971850098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027052 (A005408 n + ((n + 4) ^ 2 : ℤ)).toNat

end

end A027063.P17887952279971850098

/-! ## A027063.P7138415196733444484

`A027052(A002378(n+5)-(n+13))`
-/

namespace A027063.P7138415196733444484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027052 (A002378 (n + 5) - (n + 13 : ℤ)).toNat

end

end A027063.P7138415196733444484

/-! ## A027063.P3854755106371808163

`A027052(A052905(n+3)+A052905(n))`
-/

namespace A027063.P3854755106371808163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027052 (A052905 (n + 3) + A052905 n).toNat

end

end A027063.P3854755106371808163

/-!
# A027064: a(n) = A027052(n, 2n-8).

The programs for A027064, there is no canonical definition to state claims against.
-/

/-! ## A027064.P11271399432590997662

`Δ[A027063(n+4)]-A027062(n+4)`
-/

namespace A027064.P11271399432590997662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027063 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A027062 (n + 4)

end

end A027064.P11271399432590997662

/-! ## A027064.P11255169069194910059

`A027052((n+2)*(n+8))`
-/

namespace A027064.P11255169069194910059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027052 ((n + 2) * (n + 8))

end

end A027064.P11255169069194910059

/-! ## A027064.P9566143423887666920

`A008620(A017992(2*n)-A017992(n))`
-/

namespace A027064.P9566143423887666920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (A017992 (2 * n) - A017992 n).toNat

end

end A027064.P9566143423887666920

/-! ## A027064.P10714084409096006913

`A008620(A017993(2*n)-A017993(n))`
-/

namespace A027064.P10714084409096006913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (A017993 (2 * n) - A017993 n).toNat

end

end A027064.P10714084409096006913

/-!
# A027065: a(n) = A027052(n, 2n-9).

The programs for A027065, there is no canonical definition to state claims against.
-/

/-! ## A027065.P9142536585528533383

`Δ[A027064(n+5)]-A027063(n+5)`
-/

namespace A027065.P9142536585528533383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027064 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A027063 (n + 5)

end

end A027065.P9142536585528533383

/-! ## A027065.P11558838518711348789

`A027052((n+6)²-10)`
-/

namespace A027065.P11558838518711348789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027052 ((n + 6) ^ 2 - 10)

end

end A027065.P11558838518711348789

/-! ## A027065.P8502989292877173060

`A008619(Δ[A027082((n+6)²-11)])-A027082(n)²`
-/

namespace A027065.P8502989292877173060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027082 ((n + 6) ^ 2 - 11)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (f1 (n + 1) - f1 n).toNat - A027082 n ^ 2

end

end A027065.P8502989292877173060

/-!
# A027066: a(n) = A027052(n, 2n-10).

The programs for A027066, there is no canonical definition to state claims against.
-/

/-! ## A027066.P13240411286676596931

`Δ[A027065(n+5)]-A027064(n+5)`
-/

namespace A027066.P13240411286676596931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027065 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A027064 (n + 5)

end

end A027066.P13240411286676596931

/-! ## A027066.P4311323030734241912

`A027065(n+6)-(A027065(n+5)+A027064(n+5))`
-/

namespace A027066.P4311323030734241912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027065 (n + 6) - (A027065 (n + 5) + A027064 (n + 5))

end

end A027066.P4311323030734241912

/-! ## A027066.P12542108499566583157

`A027052((n+6)²-11)`
-/

namespace A027066.P12542108499566583157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027052 ((n + 6) ^ 2 - 11)

end

end A027066.P12542108499566583157

/-! ## A027066.P8582440467489721728

`A008615(A108627(n+1)-A108617(n))`
-/

namespace A027066.P8582440467489721728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (A108627 (n + 1) - A108617 n).toNat

end

end A027066.P8582440467489721728

/-!
# A027067: a(n) = Sum_{k=n..2*n} T(n,k), T given by A027052.

The programs for A027067, there is no canonical definition to state claims against.
-/

/-! ## A027067.P6101307514350133485

`A160999(n)-∑[A001590(n)]`
-/

namespace A027067.P6101307514350133485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001590 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160999 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027067.P6101307514350133485

/-! ## A027067.P3222795433328159391

`A160999(n)-A000073(n+1)`
-/

namespace A027067.P3222795433328159391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160999 n - A000073 (n + 1)

end

end A027067.P3222795433328159391

/-! ## A027067.P1177224554378659445

`A160999(n)-A000073(n)-A001590(n)`
-/

namespace A027067.P1177224554378659445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160999 n - A000073 n - A001590 n

end

end A027067.P1177224554378659445

/-! ## A027067.P7347584242361091016

`∑[A320314(A004280(n+1))-A001590(n)]`
-/

namespace A027067.P7347584242361091016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320314 (A004280 (n + 1)).toNat - A001590 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027067.P7347584242361091016

/-! ## A027067.P1572470628164702512

`A160999(n)+A000073(n+1)*A057428(n)`
-/

namespace A027067.P1572470628164702512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160999 n + A000073 (n + 1) * A057428 n

end

end A027067.P1572470628164702512

/-!
# A027068: a(n) = Sum_{i=0..n} Sum_{j=i..2*i} A027052(i, j).

The programs for A027068, there is no canonical definition to state claims against.
-/

/-! ## A027068.P6946610196295652627

`∑[A027067(n)]`
-/

namespace A027068.P6946610196295652627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027067 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027068.P6946610196295652627

/-! ## A027068.P16025292706747078486

`∑[A160999(n)]-A008937(n)`
-/

namespace A027068.P16025292706747078486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A008937 n

end

end A027068.P16025292706747078486

/-! ## A027068.P8928698844230140958

`∑[A160999(n)-∑[A001590(n)]]`
-/

namespace A027068.P8928698844230140958
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001590 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160999 n - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027068.P8928698844230140958

/-! ## A027068.P6464791291180832538

`∑[A160999(n)-A000073(n+1)]`
-/

namespace A027068.P6464791291180832538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160999 n - A000073 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027068.P6464791291180832538

/-! ## A027068.P17283422147435978402

`a(n-1)+A160999(n)-A000073(n)-A001590(n)` with `a(0)=1`
-/

namespace A027068.P17283422147435978402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A160999 n - A000073 n - A001590 n)

end

end A027068.P17283422147435978402

/-!
# A027069: a(n) = diagonal sum of left-justified array T given by A027052.

The programs for A027069, there is no canonical definition to state claims against.
-/

/-! ## A027069.P3994042768394830249

`A000196(A004396(A027037(n))²)`
-/

namespace A027069.P3994042768394830249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A004396 (A027037 n).toNat ^ 2).toNat

end

end A027069.P3994042768394830249

/-! ## A027069.P530467245769357480

`A037213(A004396(A027037(n))²)`
-/

namespace A027069.P530467245769357480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037213 (A004396 (A027037 n).toNat ^ 2).toNat

end

end A027069.P530467245769357480

/-! ## A027069.P10982227399412378166

`A004396(A027037(n)^A008835(n+1))`
-/

namespace A027069.P10982227399412378166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (SequenceMachineLib.roundAway ((A027037 n : ℚ) ^ (A008835 (n + 1) : ℤ))).toNat

end

end A027069.P10982227399412378166

/-! ## A027069.P14769168095714038937

`A004396(A008835(n+1)²*A027037(n))`
-/

namespace A027069.P14769168095714038937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A008835 (n + 1) ^ 2 * A027037 n).toNat

end

end A027069.P14769168095714038937

/-! ## A027069.P3261225430796358076

`A055175(A182904(n))`
-/

namespace A027069.P3261225430796358076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055175 (A182904 n).toNat

end

end A027069.P3261225430796358076

/-!
# A027071: Greatest number in row n of array T given by A027052.

The programs for A027071, there is no canonical definition to state claims against.
-/

/-! ## A027071.P11663189442658514029

`A100196(A112532(n))+A051058(2*n+1)`
-/

namespace A027071.P11663189442658514029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100196 (A112532 n).toNat + A051058 (2 * n + 1)

end

end A027071.P11663189442658514029

/-! ## A027071.P15519384391547197807

`A054846(A307413(n))+A008651(A024557(n))`
-/

namespace A027071.P15519384391547197807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054846 (A307413 n).toNat + A008651 (A024557 n).toNat

end

end A027071.P15519384391547197807

/-! ## A027071.P582125168663955435

`ceil(ceil(A152063((n+1)²)/2)/2)`
-/

namespace A027071.P582125168663955435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(⌈(A152063 ((n + 1) ^ 2) : ℚ) / 2⌉ : ℚ) / 2⌉

end

end A027071.P582125168663955435

/-! ## A027071.P13842940880112315926

`A033183(A153873(n))`
-/

namespace A027071.P13842940880112315926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033183 (A153873 n).toNat

end

end A027071.P13842940880112315926

/-!
# A027072: a(n) = self-convolution of row n of array T given by A027052.

The programs for A027072, there is no canonical definition to state claims against.
-/

/-! ## A027072.P12412568600673531634

`A037695(n+1)%A099480(A037723(n+1))`
-/

namespace A027072.P12412568600673531634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A037695 (n + 1)) (A099480 (A037723 (n + 1)).toNat)

end

end A027072.P12412568600673531634

/-! ## A027072.P3073032974009417071

`A154121(∑[∑[A357029(n)]])`
-/

namespace A027072.P3073032974009417071
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357029 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154121 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A027072.P3073032974009417071

/-!
# A027073: a(n) = Sum_{k=0..n} T(n,k) * T(n,2n-k), with T given by A027052.

The programs for A027073, there is no canonical definition to state claims against.
-/

/-! ## A027073.P93897007478719361

`A110656(A339684(n+1)-∑[n])`
-/

namespace A027073.P93897007478719361
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110656 (A339684 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A027073.P93897007478719361

/-! ## A027073.P12661631790315370445

`A149925(n)-A003056(A014445(n))`
-/

namespace A027073.P12661631790315370445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149925 n - A003056 (A014445 n).toNat

end

end A027073.P12661631790315370445

/-! ## A027073.P16009194520085989378

`A110656(A000051(2*n))-A325195(n+1)`
-/

namespace A027073.P16009194520085989378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110656 (A000051 (2 * n)).toNat - A325195 (n + 1)

end

end A027073.P16009194520085989378

/-!
# A027074: a(n) = Sum_{k=0..n-1} T(n,k) * T(n,2n-k), with T given by A027052.

The programs for A027074, there is no canonical definition to state claims against.
-/

/-! ## A027074.P13466719520761204646

`A027072(n+1)-A027073(n+1)`
-/

namespace A027074.P13466719520761204646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027072 (n + 1) - A027073 (n + 1)

end

end A027074.P13466719520761204646

/-! ## A027074.P1536523497548607710

`A115510(A150461(n)-n)`
-/

namespace A027074.P1536523497548607710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115510 (A150461 n - (n : ℤ)).toNat

end

end A027074.P1536523497548607710

/-!
# A027075: a(n) = Sum_{k=0..2n} (k+1) * A027052(n, k).

The programs for A027075, there is no canonical definition to state claims against.
-/

/-! ## A027075.P14228319075629559822

`A255301(n)+A001221(A172493(n))`
-/

namespace A027075.P14228319075629559822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255301 n + A001221 (A172493 n).toNat

end

end A027075.P14228319075629559822

/-! ## A027075.P12583715789434444834

`A238690(A027472(n+3)-A027193(n))`
-/

namespace A027075.P12583715789434444834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238690 (A027472 (n + 3) - A027193 n).toNat

end

end A027075.P12583715789434444834

/-!
# A027076: a(n) = Sum_{k=0..2n} (k+1) * A027052(n, 2n-k).

The programs for A027076, there is no canonical definition to state claims against.
-/

/-! ## A027076.P323365130325864831

`3^n-(1-A160999(n))`
-/

namespace A027076.P323365130325864831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) - (1 - A160999 n)

end

end A027076.P323365130325864831

/-! ## A027076.P5494435175683968467

`A160999(n)+A024023(n)`
-/

namespace A027076.P5494435175683968467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160999 n + A024023 n

end

end A027076.P5494435175683968467

/-! ## A027076.P574450636939426718

`A160999(n)+A048328(2*n)`
-/

namespace A027076.P574450636939426718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160999 n + A048328 (2 * n)

end

end A027076.P574450636939426718

/-! ## A027076.P15052955502858645844

`A024023(n)+∑[A320314(A004280(n+1))]`
-/

namespace A027076.P15052955502858645844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320314 (A004280 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024023 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027076.P15052955502858645844

/-! ## A027076.P3751358851766007176

`∑[A001590(n)]+A027067(n)+A024023(n)`
-/

namespace A027076.P3751358851766007176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001590 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (A027067 n + A024023 n)

end

end A027076.P3751358851766007176

/-!
# A027077: a(n) = Sum_{k=n+1..2*n} T(n,k), T given by A027052.

The programs for A027077, there is no canonical definition to state claims against.
-/

/-! ## A027077.P13487838998569213024

`A027067(n+1)-record[A001590(n)]`
-/

namespace A027077.P13487838998569213024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001590 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027067 (n + 1) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027077.P13487838998569213024

/-! ## A027077.P3572429124522650494

`A027067(n+1)-A001590(n+2)`
-/

namespace A027077.P3572429124522650494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027067 (n + 1) - A001590 (n + 2)

end

end A027077.P3572429124522650494

/-! ## A027077.P16037334461172351769

`(A027045(n+1)+A027035(n))/2`
-/

namespace A027077.P16037334461172351769
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027045 (n + 1) + A027035 n : ℚ) / 2

end

end A027077.P16037334461172351769

/-! ## A027077.P7846825511661290702

`A160999(n+1)+A027067(n+2)-A160999(n+2)`
-/

namespace A027077.P7846825511661290702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160999 (n + 1) + (A027067 (n + 2) - A160999 (n + 2))

end

end A027077.P7846825511661290702

/-! ## A027077.P8991320102797075855

`A027067(n+1)-A027052((n+1)²+n+1)`
-/

namespace A027077.P8991320102797075855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027067 (n + 1) - A027052 ((n + 1) ^ 2 + (n + 1))

end

end A027077.P8991320102797075855

/-!
# A027078: a(n) = Sum_{k=0..n} T(n,k) * T(n,n+k), with T given by A027052.

The programs for A027078, there is no canonical definition to state claims against.
-/

/-! ## A027078.P17624951855763438488

`A066339(A089735(2*n))+A010057(3*n)`
-/

namespace A027078.P17624951855763438488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066339 (A089735 (2 * n)).toNat + A010057 (3 * n)

end

end A027078.P17624951855763438488

/-! ## A027078.P13507817494286400972

`A347453(2*a(n-1)+1)` with `a(0)=1, a(1)=0`
-/

namespace A027078.P13507817494286400972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A347453 (2 * a (n - 1) + 1).toNat

end

end A027078.P13507817494286400972

/-!
# A027079: a(n) = Sum_{k=0..2n-1} T(n,k) * T(n,k+1), with T given by A027052.

The programs for A027079, there is no canonical definition to state claims against.
-/

/-! ## A027079.P13952661130690822654

`A005843(A001090(n)+A001076(n))`
-/

namespace A027079.P13952661130690822654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A001090 n + A001076 n).toNat

end

end A027079.P13952661130690822654

/-! ## A027079.P51875423323437715

`A014445(n)+A005843(A001090(n))`
-/

namespace A027079.P51875423323437715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014445 n + A005843 (A001090 n).toNat

end

end A027079.P51875423323437715

/-!
# A027080: a(n) = Sum_{k=0..2n-2} T(n,k) * T(n,k+2), with T given by A027052.

The programs for A027080, there is no canonical definition to state claims against.
-/

/-! ## A027080.P723546047080240838

`A014681(A126508(n))+n`
-/

namespace A027080.P723546047080240838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (A126508 n).toNat + (n : ℤ)

end

end A027080.P723546047080240838

/-!
# A027081: a(n) = Sum_{k=0..2n-3} T(n,k) * T(n,k+3), with T given by A027052.

The programs for A027081, there is no canonical definition to state claims against.
-/

/-! ## A027081.P14359343312247205123

`A006012(n+1)+A004755(A008776(2*n))`
-/

namespace A027081.P14359343312247205123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006012 (n + 1) + A004755 (A008776 (2 * n)).toNat

end

end A027081.P14359343312247205123

/-!
# A027082: Irregular triangular array: T(n,0) = 1 for n >= 1; T(n,1) = T(n,2) = 1 for n >= 1; T(n,k) = T(n-1,k-3) + T(n-1,k-2) + T(n-1,k-1) for 3 <= k <= 2n-1 and n >= 2; and T(n,2n) = T(n-1,2n-3) + T(n-1,2n-2) for n >= 2.

The programs for A027082, there is no canonical definition to state claims against.
-/

/-! ## A027082.P3952588180309598025

`ceil(A003056(A027113(n+1)²)/2)`
-/

namespace A027082.P3952588180309598025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A003056 (A027113 (n + 1) ^ 2).toNat : ℚ) / 2⌉

end

end A027082.P3952588180309598025

/-! ## A027082.P3948612367522646604

`A000196(A008619(A027113(n+1)²))`
-/

namespace A027082.P3948612367522646604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A008619 (A027113 (n + 1) ^ 2).toNat).toNat

end

end A027082.P3948612367522646604

/-! ## A027082.P2204080656039259477

`A000196(A052938(A027113(n+1)²))`
-/

namespace A027082.P2204080656039259477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A052938 (A027113 (n + 1) ^ 2).toNat).toNat

end

end A027082.P2204080656039259477

/-! ## A027082.P13342582362587996731

`A065033(A003056(A027113(n+1)²))`
-/

namespace A027082.P13342582362587996731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A003056 (A027113 (n + 1) ^ 2).toNat).toNat

end

end A027082.P13342582362587996731

/-! ## A027082.P5526381341501283925

`A050292(A027113(n+1)%A111304(n+4))`
-/

namespace A027082.P5526381341501283925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050292 (Int.tmod (A027113 (n + 1)) (A111304 (n + 4))).toNat

end

end A027082.P5526381341501283925

/-!
# A027083: a(n) = A027082(n, n+2).

The programs for A027083, the canonical program `A027083.P7887810092018352263` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A027083 has offset 2).

The definition of A027083 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A027083.P7887810092018352263

`A027024(n+2)+1`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A027083

/-- `A027024(n+2)+1` -/
def P7887810092018352263.Spec : Prop :=
  ∀ n, P7887810092018352263.a n = A027083 (n + 2)

theorem P7887810092018352263.correct : P7887810092018352263.Spec := by
  intro n
  simp only [A027083, Nat.add_sub_cancel]

end A027083

/-! ## A027083.P15029537785040249032

`ogf((2+2x+2x^2)/(1-2x+x^4))`
-/

namespace A027083.P15029537785040249032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 2, 2] [1, -2, 0, 0, 1] n

end

end A027083.P15029537785040249032

namespace A027083

/-- `ogf((2+2x+2x^2)/(1-2x+x^4))` -/
def P15029537785040249032.Spec : Prop :=
  ∀ n, P15029537785040249032.a n = A027083 (n + 2)

end A027083

/-! ## A027083.P10626969762578329766

`∑[a(n-1)+a(n-2)+a(n-3)]` with `a(0)=2, a(1)=4, a(2)=8`
-/

namespace A027083.P10626969762578329766
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 4, 8] fun n f1 =>
  f1 (n - 1) + (f1 (n - 2) + f1 (n - 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027083.P10626969762578329766

namespace A027083

/-- `∑[a(n-1)+a(n-2)+a(n-3)]` -/
def P10626969762578329766.Spec : Prop :=
  ∀ n, (P10626969762578329766.a n : ℤ) = A027083 (n + 2)

end A027083

/-! ## A027083.P17707315272535179636

`∑[A135491(n+1)]`
-/

namespace A027083.P17707315272535179636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135491 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027083.P17707315272535179636

namespace A027083

/-- `∑[A135491(n+1)]` -/
def P17707315272535179636.Spec : Prop :=
  ∀ n, P17707315272535179636.a n = A027083 (n + 2)

end A027083

/-! ## A027083.P11686394876142202273

`∑[A354784(n+3)]`
-/

namespace A027083.P11686394876142202273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354784 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027083.P11686394876142202273

namespace A027083

/-- `∑[A354784(n+3)]` -/
def P11686394876142202273.Spec : Prop :=
  ∀ n, P11686394876142202273.a n = A027083 (n + 2)

end A027083

/-! ## A027083.P288909531927721903

`2*A027084(n+2)`
-/

namespace A027083.P288909531927721903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A027084 (n + 2)

end

end A027083.P288909531927721903

namespace A027083

/-- `2*A027084(n+2)` -/
def P288909531927721903.Spec : Prop :=
  ∀ n, P288909531927721903.a n = A027083 (n + 2)

end A027083

/-! ## A027083.P6009013636599669247

`A054668(n+3)-2`
-/

namespace A027083.P6009013636599669247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054668 (n + 3) - 2

end

end A027083.P6009013636599669247

namespace A027083

/-- `A054668(n+3)-2` -/
def P6009013636599669247.Spec : Prop :=
  ∀ n, P6009013636599669247.a n = A027083 (n + 2)

end A027083

/-! ## A027083.P15582207589091765549

`A288465(n+2)-4`
-/

namespace A027083.P15582207589091765549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288465 (n + 2) - 4

end

end A027083.P15582207589091765549

namespace A027083

/-- `A288465(n+2)-4` -/
def P15582207589091765549.Spec : Prop :=
  ∀ n, P15582207589091765549.a n = A027083 (n + 2)

end A027083

/-! ## A027083.P2249092801790758248

`A000213(n+4)-3`
-/

namespace A027083.P2249092801790758248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000213 (n + 4) - 3

end

end A027083.P2249092801790758248

namespace A027083

/-- `A000213(n+4)-3` -/
def P2249092801790758248.Spec : Prop :=
  ∀ n, P2249092801790758248.a n = A027083 (n + 2)

end A027083

/-! ## A027083.P16286853292717145615

`A116734(n+2)+n`
-/

namespace A027083.P16286853292717145615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116734 (n + 2) + (n : ℤ)

end

end A027083.P16286853292717145615

namespace A027083

/-- `A116734(n+2)+n` -/
def P16286853292717145615.Spec : Prop :=
  ∀ n, P16286853292717145615.a n = A027083 (n + 2)

end A027083

/-! ## A027083.P5264924893820139534

`record[abs(3-A000213(n))]`
-/

namespace A027083.P5264924893820139534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |3 - A000213 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027083.P5264924893820139534

namespace A027083

/-- `record[abs(3-A000213(n))]` -/
def P5264924893820139534.Spec : Prop :=
  ∀ n, P5264924893820139534.a n = A027083 (n + 2)

end A027083

/-! ## A027083.P6074198559462236609

`∑[A288599(n+1)-2]`
-/

namespace A027083.P6074198559462236609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288599 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027083.P6074198559462236609

namespace A027083

/-- `∑[A288599(n+1)-2]` -/
def P6074198559462236609.Spec : Prop :=
  ∀ n, P6074198559462236609.a n = A027083 (n + 2)

end A027083

/-! ## A027083.P6900014952683039058

`∑[2*A000073(n+3)]`
-/

namespace A027083.P6900014952683039058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000073 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027083.P6900014952683039058

namespace A027083

/-- `∑[2*A000073(n+3)]` -/
def P6900014952683039058.Spec : Prop :=
  ∀ n, P6900014952683039058.a n = A027083 (n + 2)

end A027083

/-! ## A027083.P8584572714764732821

`∑[abs(Δ[A288465(n+1)])]`
-/

namespace A027083.P8584572714764732821
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288465 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027083.P8584572714764732821

namespace A027083

/-- `∑[abs(Δ[A288465(n+1)])]` -/
def P8584572714764732821.Spec : Prop :=
  ∀ n, P8584572714764732821.a n = A027083 (n + 2)

end A027083

/-! ## A027083.P9014076744029462867

`∑[abs(Δ[A054668(n+2)])]`
-/

namespace A027083.P9014076744029462867
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054668 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027083.P9014076744029462867

namespace A027083

/-- `∑[abs(Δ[A054668(n+2)])]` -/
def P9014076744029462867.Spec : Prop :=
  ∀ n, P9014076744029462867.a n = A027083 (n + 2)

end A027083

/-! ## A027083.P16288631758142111353

`∑[abs(Δ[A000213(n+3)])]`
-/

namespace A027083.P16288631758142111353
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000213 (n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027083.P16288631758142111353

namespace A027083

/-- `∑[abs(Δ[A000213(n+3)])]` -/
def P16288631758142111353.Spec : Prop :=
  ∀ n, P16288631758142111353.a n = A027083 (n + 2)

end A027083

/-! ## A027083.P10126546826353661800

`∑[abs(Δ[2*A077902(n)])]`
-/

namespace A027083.P10126546826353661800
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A077902 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027083.P10126546826353661800

namespace A027083

/-- `∑[abs(Δ[2*A077902(n)])]` -/
def P10126546826353661800.Spec : Prop :=
  ∀ n, P10126546826353661800.a n = A027083 (n + 2)

end A027083

/-! ## A027083.P15256993400189728860

`2*(A008937(n+2)-1)`
-/

namespace A027083.P15256993400189728860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A008937 (n + 2) - 1)

end

end A027083.P15256993400189728860

namespace A027083

/-- `2*(A008937(n+2)-1)` -/
def P15256993400189728860.Spec : Prop :=
  ∀ n, P15256993400189728860.a n = A027083 (n + 2)

end A027083

/-! ## A027083.P15411542837113806900

`∑[∑[A196700(n+1)]+1]`
-/

namespace A027083.P15411542837113806900
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196700 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027083.P15411542837113806900

namespace A027083

/-- `∑[∑[A196700(n+1)]+1]` -/
def P15411542837113806900.Spec : Prop :=
  ∀ n, P15411542837113806900.a n = A027083 (n + 2)

end A027083

/-! ## A027083.P18267361585386120465

`∑[2*Δ[A008937(n+1)]]`
-/

namespace A027083.P18267361585386120465
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008937 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027083.P18267361585386120465

namespace A027083

/-- `∑[2*Δ[A008937(n+1)]]` -/
def P18267361585386120465.Spec : Prop :=
  ∀ n, P18267361585386120465.a n = A027083 (n + 2)

end A027083

/-!
# A027084: G.f.: x^2*(x^2 + x + 1)/(x^4 - 2*x + 1).

The programs for A027084, the canonical program `A027084.P14794741514511284615` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A027084 has offset 2).

The definition of A027084 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 377 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A027084.P11935729303076331794

`ogf((1+x+x^2)/(1-2x+x^4))`
-/

namespace A027084.P11935729303076331794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, 1] [1, -2, 0, 0, 1] n

end

end A027084.P11935729303076331794

namespace A027084

/-- `ogf((1+x+x^2)/(1-2x+x^4))` -/
def P11935729303076331794.Spec : Prop :=
  ∀ n, P11935729303076331794.a n = A027084 (n + 2)

end A027084

/-! ## A027084.P14794741514511284615

`∑[a(n-1)+a(n-2)+a(n-3)]` with `a(0)=1, a(1)=2, a(2)=4`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A027084

/-- `∑[a(n-1)+a(n-2)+a(n-3)]` -/
def P14794741514511284615.Spec : Prop :=
  ∀ n, (P14794741514511284615.a n : ℤ) = A027084 (n + 2)

theorem P14794741514511284615.correct : P14794741514511284615.Spec := by
  intro n
  simp only [A027084, Nat.add_sub_cancel]

end A027084

/-! ## A027084.P11541412659661509968

`a(n-1)+3+a(n-2)+a(n-3)` with `a(0)=1, a(1)=3, a(2)=7`
-/

namespace A027084.P11541412659661509968
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 7] fun n a =>
  a (n - 1) + 3 + (a (n - 2) + a (n - 3))

end

end A027084.P11541412659661509968

namespace A027084

/-- `a(n-1)+3+a(n-2)+a(n-3)` -/
def P11541412659661509968.Spec : Prop :=
  ∀ n, (P11541412659661509968.a n : ℤ) = A027084 (n + 2)

end A027084

/-! ## A027084.P15950965518146274317

`∑[A000073(n+3)]`
-/

namespace A027084.P15950965518146274317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000073 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027084.P15950965518146274317

namespace A027084

/-- `∑[A000073(n+3)]` -/
def P15950965518146274317.Spec : Prop :=
  ∀ n, P15950965518146274317.a n = A027084 (n + 2)

end A027084

/-! ## A027084.P7365730213038257565

`∑[abs(Δ[A077902(n)])]`
-/

namespace A027084.P7365730213038257565
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077902 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027084.P7365730213038257565

namespace A027084

/-- `∑[abs(Δ[A077902(n)])]` -/
def P7365730213038257565.Spec : Prop :=
  ∀ n, P7365730213038257565.a n = A027084 (n + 2)

end A027084

/-! ## A027084.P4090845849580761910

`A008937(n+2)-1`
-/

namespace A027084.P4090845849580761910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008937 (n + 2) - 1

end

end A027084.P4090845849580761910

namespace A027084

/-- `A008937(n+2)-1` -/
def P4090845849580761910.Spec : Prop :=
  ∀ n, P4090845849580761910.a n = A027084 (n + 2)

end A027084

/-! ## A027084.P5823372105954577293

`A192804(n+4)-2`
-/

namespace A027084.P5823372105954577293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192804 (n + 4) - 2

end

end A027084.P5823372105954577293

namespace A027084

/-- `A192804(n+4)-2` -/
def P5823372105954577293.Spec : Prop :=
  ∀ n, P5823372105954577293.a n = A027084 (n + 2)

end A027084

/-! ## A027084.P890791429099875090

`A317200(n+4)-3`
-/

namespace A027084.P890791429099875090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317200 (n + 4) - 3

end

end A027084.P890791429099875090

namespace A027084

/-- `A317200(n+4)-3` -/
def P890791429099875090.Spec : Prop :=
  ∀ n, P890791429099875090.a n = A027084 (n + 2)

end A027084

/-! ## A027084.P12028343384506644367

`record[abs(1-A008937(n))]`
-/

namespace A027084.P12028343384506644367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A008937 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027084.P12028343384506644367

namespace A027084

/-- `record[abs(1-A008937(n))]` -/
def P12028343384506644367.Spec : Prop :=
  ∀ n, P12028343384506644367.a n = A027084 (n + 2)

end A027084

/-! ## A027084.P9375158658313572350

`∑[A089068(n+1)+1]`
-/

namespace A027084.P9375158658313572350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089068 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027084.P9375158658313572350

namespace A027084

/-- `∑[A089068(n+1)+1]` -/
def P9375158658313572350.Spec : Prop :=
  ∀ n, P9375158658313572350.a n = A027084 (n + 2)

end A027084

/-! ## A027084.P8992059177334138721

`∑[A301657(n+1)-2]`
-/

namespace A027084.P8992059177334138721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301657 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027084.P8992059177334138721

namespace A027084

/-- `∑[A301657(n+1)-2]` -/
def P8992059177334138721.Spec : Prop :=
  ∀ n, P8992059177334138721.a n = A027084 (n + 2)

end A027084

/-! ## A027084.P4320328213452873992

`∑[A135491(n+1)/2]`
-/

namespace A027084.P4320328213452873992
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A135491 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027084.P4320328213452873992

namespace A027084

/-- `∑[A135491(n+1)/2]` -/
def P4320328213452873992.Spec : Prop :=
  ∀ n, P4320328213452873992.a n = (A027084 (n + 2) : ℚ)

end A027084

/-! ## A027084.P4975663908240577808

`∑[A213816(2*n+3)]`
-/

namespace A027084.P4975663908240577808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213816 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027084.P4975663908240577808

namespace A027084

/-- `∑[A213816(2*n+3)]` -/
def P4975663908240577808.Spec : Prop :=
  ∀ n, P4975663908240577808.a n = A027084 (n + 2)

end A027084

/-! ## A027084.P12352929003126600209

`∑[abs(Δ[A192804(n+3)])]`
-/

namespace A027084.P12352929003126600209
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192804 (n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027084.P12352929003126600209

namespace A027084

/-- `∑[abs(Δ[A192804(n+3)])]` -/
def P12352929003126600209.Spec : Prop :=
  ∀ n, P12352929003126600209.a n = A027084 (n + 2)

end A027084

/-! ## A027084.P6376180592598116643

`record[abs(1-∑[A000073(n)])]`
-/

namespace A027084.P6376180592598116643
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000073 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - ∑ j ∈ Finset.range (n + 1), f2 j|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027084.P6376180592598116643

namespace A027084

/-- `record[abs(1-∑[A000073(n)])]` -/
def P6376180592598116643.Spec : Prop :=
  ∀ n, P6376180592598116643.a n = A027084 (n + 2)

end A027084

/-! ## A027084.P4013109637868239559

`∑[A308189(2*n+1)]+1`
-/

namespace A027084.P4013109637868239559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308189 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A027084.P4013109637868239559

namespace A027084

/-- `∑[A308189(2*n+1)]+1` -/
def P4013109637868239559.Spec : Prop :=
  ∀ n, P4013109637868239559.a n = A027084 (n + 2)

end A027084

/-! ## A027084.P14503479169943552096

`A282718(n+1)+a(n-1)` with `a(0)=1, a(1)=3`
-/

namespace A027084.P14503479169943552096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  A282718 (n + 1) + a (n - 1)

end

end A027084.P14503479169943552096

namespace A027084

/-- `A282718(n+1)+a(n-1)` -/
def P14503479169943552096.Spec : Prop :=
  ∀ n, P14503479169943552096.a n = A027084 (n + 2)

end A027084

/-! ## A027084.P15038412077183979153

`A202012(n)+2*A008937(n)`
-/

namespace A027084.P15038412077183979153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202012 n + 2 * A008937 n

end

end A027084.P15038412077183979153

namespace A027084

/-- `A202012(n)+2*A008937(n)` -/
def P15038412077183979153.Spec : Prop :=
  ∀ n, P15038412077183979153.a n = A027084 (n + 2)

end A027084

/-! ## A027084.P791976938604536775

`∑[A141036(n+1)+A001590(n)]`
-/

namespace A027084.P791976938604536775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141036 (n + 1) + A001590 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027084.P791976938604536775

namespace A027084

/-- `∑[A141036(n+1)+A001590(n)]` -/
def P791976938604536775.Spec : Prop :=
  ∀ n, P791976938604536775.a n = A027084 (n + 2)

end A027084

/-! ## A027084.P11309518331296177341

`∑[A192804(n+1)+A008937(n)]`
-/

namespace A027084.P11309518331296177341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192804 (n + 1) + A008937 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027084.P11309518331296177341

namespace A027084

/-- `∑[A192804(n+1)+A008937(n)]` -/
def P11309518331296177341.Spec : Prop :=
  ∀ n, P11309518331296177341.a n = A027084 (n + 2)

end A027084

/-!
# A027085: a(n) = A027082(n, n+3).

The programs for A027085, the canonical program `A027085.P11029786598615016491` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A027085 has offset 0).

The definition of A027085 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A027085.P11029786598615016491

`A000213(n+6)-3*(n+4)`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A027085

/-- `A000213(n+6)-3*(n+4)` -/
def P11029786598615016491.Spec : Prop :=
  ∀ n, P11029786598615016491.a n = A027085 n

theorem P11029786598615016491.correct : P11029786598615016491.Spec := by
  intro n
  simp only [A027085]

end A027085

/-! ## A027085.P8207968448533972707

`∑[A135491(n+3)-3]`
-/

namespace A027085.P8207968448533972707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135491 (n + 3) - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027085.P8207968448533972707

namespace A027085

/-- `∑[A135491(n+3)-3]` -/
def P8207968448533972707.Spec : Prop :=
  ∀ n, P8207968448533972707.a n = A027085 n

end A027085

/-! ## A027085.P13967840920855862188

`∑[A288599(n+3)-5]`
-/

namespace A027085.P13967840920855862188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288599 (n + 3) - 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027085.P13967840920855862188

namespace A027085

/-- `∑[A288599(n+3)-5]` -/
def P13967840920855862188.Spec : Prop :=
  ∀ n, P13967840920855862188.a n = A027085 n

end A027085

/-! ## A027085.P10143504910779583134

`A027025(n+3)+4+n`
-/

namespace A027085.P10143504910779583134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027025 (n + 3) + 4 + (n : ℤ)

end

end A027085.P10143504910779583134

namespace A027085

/-- `A027025(n+3)+4+n` -/
def P10143504910779583134.Spec : Prop :=
  ∀ n, P10143504910779583134.a n = A027085 n

end A027085

/-! ## A027085.P2586857446011539139

`∑[∑[A196700(n+3)]+1]`
-/

namespace A027085.P2586857446011539139
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196700 (n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027085.P2586857446011539139

namespace A027085

/-- `∑[∑[A196700(n+3)]+1]` -/
def P2586857446011539139.Spec : Prop :=
  ∀ n, P2586857446011539139.a n = A027085 n

end A027085

/-! ## A027085.P2803341159601355407

`∑[Δ[A116734(n+3)]-2]`
-/

namespace A027085.P2803341159601355407
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116734 (n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027085.P2803341159601355407

namespace A027085

/-- `∑[Δ[A116734(n+3)]-2]` -/
def P2803341159601355407.Spec : Prop :=
  ∀ n, P2803341159601355407.a n = A027085 n

end A027085

/-! ## A027085.P11398545483431003259

`∑[Δ[A000213(n+5)]-3]`
-/

namespace A027085.P11398545483431003259
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000213 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027085.P11398545483431003259

namespace A027085

/-- `∑[Δ[A000213(n+5)]-3]` -/
def P11398545483431003259.Spec : Prop :=
  ∀ n, P11398545483431003259.a n = A027085 n

end A027085

/-! ## A027085.P3173734588274511026

`∑[2*(A308189(2*n+5)-3)+3]`
-/

namespace A027085.P3173734588274511026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A308189 (2 * n + 5) - 3) + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027085.P3173734588274511026

namespace A027085

/-- `∑[2*(A308189(2*n+5)-3)+3]` -/
def P3173734588274511026.Spec : Prop :=
  ∀ n, P3173734588274511026.a n = A027085 n

end A027085

/-! ## A027085.P6553810355825663933

`A027025(n+3)+A020705(n)`
-/

namespace A027085.P6553810355825663933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027025 (n + 3) + A020705 n

end

end A027085.P6553810355825663933

namespace A027085

/-- `A027025(n+3)+A020705(n)` -/
def P6553810355825663933.Spec : Prop :=
  ∀ n, P6553810355825663933.a n = A027085 n

end A027085

/-!
# A027086: a(n) = A027082(n, n+4).

The programs for A027086, the canonical program `A027086.P17488496397616859539` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A027086 has offset 4).

The definition of A027086 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A027086.P17488496397616859539

`A000213(n+8)-4-3*(n+4)*(n+7)/2`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A027086

/-- `A000213(n+8)-4-3*(n+4)*(n+7)/2` -/
def P17488496397616859539.Spec : Prop :=
  ∀ n, P17488496397616859539.a n = (A027086 (n + 4) : ℚ)

end A027086

/-! ## A027086.P10088480390429841556

`A052905(n+2)+A027026(n+4)`
-/

namespace A027086.P10088480390429841556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052905 (n + 2) + A027026 (n + 4)

end

end A027086.P10088480390429841556

namespace A027086

/-- `A052905(n+2)+A027026(n+4)` -/
def P10088480390429841556.Spec : Prop :=
  ∀ n, P10088480390429841556.a n = A027086 (n + 4)

end A027086

/-! ## A027086.P14941553546635345429

`∑[A135491(n+5)-A008486(n+5)]`
-/

namespace A027086.P14941553546635345429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135491 (n + 5) - A008486 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027086.P14941553546635345429

namespace A027086

/-- `∑[A135491(n+5)-A008486(n+5)]` -/
def P14941553546635345429.Spec : Prop :=
  ∀ n, P14941553546635345429.a n = A027086 (n + 4)

end A027086

/-! ## A027086.P17884894000708899069

`A000213(n+8)-Δ[A060354(n+6)]`
-/

namespace A027086.P17884894000708899069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060354 (n + 6)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000213 (n + 8) - (f1 (n + 1) - f1 n)

end

end A027086.P17884894000708899069

namespace A027086

/-- `A000213(n+8)-Δ[A060354(n+6)]` -/
def P17884894000708899069.Spec : Prop :=
  ∀ n, P17884894000708899069.a n = A027086 (n + 4)

end A027086

/-! ## A027086.P1133608404162390049

`A027026(n+4)+A161680(n+6)-5`
-/

namespace A027086.P1133608404162390049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027026 (n + 4) + (A161680 (n + 6) - 5)

end

end A027086.P1133608404162390049

namespace A027086

/-- `A027026(n+4)+A161680(n+6)-5` -/
def P1133608404162390049.Spec : Prop :=
  ∀ n, P1133608404162390049.a n = A027086 (n + 4)

end A027086

/-! ## A027086.P3564788984486880688

`A000292(n+3)+A000213(n+8)-A000292(n+6)`
-/

namespace A027086.P3564788984486880688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (n + 3) + (A000213 (n + 8) - A000292 (n + 6))

end

end A027086.P3564788984486880688

namespace A027086

/-- `A000292(n+3)+A000213(n+8)-A000292(n+6)` -/
def P3564788984486880688.Spec : Prop :=
  ∀ n, P3564788984486880688.a n = A027086 (n + 4)

end A027086

/-! ## A027086.P4187678023389333421

`A027082(A027689(n+4))`
-/

namespace A027086.P4187678023389333421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027082 (A027689 (n + 4)).toNat

end

end A027086.P4187678023389333421

namespace A027086

/-- `A027082(A027689(n+4))` -/
def P4187678023389333421.Spec : Prop :=
  ∀ n, P4187678023389333421.a n = A027086 (n + 4)

end A027086

/-!
# A027087: a(n) = A027082(n, 2n).

The programs for A027087, there is no canonical definition to state claims against.
-/

/-! ## A027087.P5837626484224569200

`A125189(2*n)`
-/

namespace A027087.P5837626484224569200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125189 (2 * n)

end

end A027087.P5837626484224569200

/-! ## A027087.P15895127611685973428

`A027088(n-1)+a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A027087.P15895127611685973428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A027088 (n - 1) + a (n - 1)

end

end A027087.P15895127611685973428

/-! ## A027087.P2973437324499889318

`or(and(1, n), A125189(A005843(n)))`
-/

namespace A027087.P2973437324499889318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (Nat.land 1 n : ℤ) (A125189 (A005843 n).toNat)

end

end A027087.P2973437324499889318

/-! ## A027087.P4377537688838759159

`or(A000007(n), A125189(A005843(n)))`
-/

namespace A027087.P4377537688838759159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A125189 (A005843 n).toNat)

end

end A027087.P4377537688838759159

/-! ## A027087.P411628209085596659

`or(A125189(A005843(n)), A323514(n+1))`
-/

namespace A027087.P411628209085596659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A125189 (A005843 n).toNat) (A323514 (n + 1))

end

end A027087.P411628209085596659

/-! ## A027087.P13536149056325373660

`A125189(A005843(n))/A000108(C(n, n²)!)`
-/

namespace A027087.P13536149056325373660
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A125189 (A005843 n).toNat : ℚ) / (A000108 (Nat.factorial (Nat.choose n (n ^ 2))) : ℚ)

end

end A027087.P13536149056325373660

/-! ## A027087.P6494702048498298320

`A125189(A005843(n))%A288913(n)`
-/

namespace A027087.P6494702048498298320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A125189 (A005843 n).toNat) (A288913 n)

end

end A027087.P6494702048498298320

/-! ## A027087.P5072290363068698485

`A027082(n*(n+2))`
-/

namespace A027087.P5072290363068698485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027082 (n * (n + 2))

end

end A027087.P5072290363068698485

/-! ## A027087.P8386775742839881455

`or(A000035(n), A027082(A005563(n)))`
-/

namespace A027087.P8386775742839881455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000035 n) (A027082 (A005563 n).toNat)

end

end A027087.P8386775742839881455

/-!
# A027088: a(n) = A027082(n, 2n-1).

The programs for A027088, there is no canonical definition to state claims against.
-/

/-! ## A027088.P10042312160039181672

`Δ[A027087(n+1)]`
-/

namespace A027088.P10042312160039181672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027087 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A027088.P10042312160039181672

/-! ## A027088.P9524970755131209398

`Δ[A125189(2*(n+1))]`
-/

namespace A027088.P9524970755131209398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125189 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A027088.P9524970755131209398

/-! ## A027088.P14722267663376569770

`Δ[record[A027087(A008612(n))]]`
-/

namespace A027088.P14722267663376569770
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027087 (A008612 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A027088.P14722267663376569770

/-! ## A027088.P7409247827730403457

`A027087(n+2)-A027087(n+1)`
-/

namespace A027088.P7409247827730403457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027087 (n + 2) - A027087 (n + 1)

end

end A027088.P7409247827730403457

/-! ## A027088.P616575139827215342

`A027082((n+2)²-2)`
-/

namespace A027088.P616575139827215342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027082 ((n + 2) ^ 2 - 2)

end

end A027088.P616575139827215342

/-! ## A027088.P11499040110777647080

`record[A027082(A079524(n)+1)]`
-/

namespace A027088.P11499040110777647080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027082 (A079524 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027088.P11499040110777647080

/-! ## A027088.P571499011533854444

`record[A027082(∑[A052938(n)]+1)]`
-/

namespace A027088.P571499011533854444
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052938 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027082 (∑ j ∈ Finset.range (n + 1), f2 j + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027088.P571499011533854444

/-! ## A027088.P15560906761185285415

`record[A027082(A004116(n+1)+1)]`
-/

namespace A027088.P15560906761185285415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027082 (A004116 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027088.P15560906761185285415

/-! ## A027088.P6955465387958310826

`record[A027082(n)/A027023(n+1)]`
-/

namespace A027088.P6955465387958310826
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027082 n : ℚ) / (A027023 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027088.P6955465387958310826

/-! ## A027088.P8559048331362429002

`Δ[A027082(∑[2*n+3])]`
-/

namespace A027088.P8559048331362429002
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027082 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A027088.P8559048331362429002

/-!
# A027089: a(n) = A027082(n, 2n-2).

The programs for A027089, there is no canonical definition to state claims against.
-/

/-! ## A027089.P342082474453445563

`A027088(n+3)-A027087(n+3)`
-/

namespace A027089.P342082474453445563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027088 (n + 3) - A027087 (n + 3)

end

end A027089.P342082474453445563

/-! ## A027089.P2858561560705857674

`Δ[A027090(n+2)]-A027091(n+2)`
-/

namespace A027089.P2858561560705857674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027090 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A027091 (n + 2)

end

end A027089.P2858561560705857674

/-! ## A027089.P15384627677915378707

`A027082((n+3)²-3)`
-/

namespace A027089.P15384627677915378707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027082 ((n + 3) ^ 2 - 3)

end

end A027089.P15384627677915378707

/-! ## A027089.P4336447294606442765

`record[A027082(A079524(n))]`
-/

namespace A027089.P4336447294606442765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027082 (A079524 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027089.P4336447294606442765

/-! ## A027089.P1521446182672753823

`record[A027082(∑[A052938(n)])]`
-/

namespace A027089.P1521446182672753823
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052938 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027082 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027089.P1521446182672753823

/-! ## A027089.P13716373434422927140

`record[A027082(A004116(n+1))]`
-/

namespace A027089.P13716373434422927140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027082 (A004116 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027089.P13716373434422927140

/-!
# A027090: a(n) = A027082(n, 2n-3).

The programs for A027090, there is no canonical definition to state claims against.
-/

/-! ## A027090.P9172810833829351737

`Δ[A027089(n+2)-A027087(n+2)]`
-/

namespace A027090.P9172810833829351737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027089 (n + 2) - A027087 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A027090.P9172810833829351737

/-! ## A027090.P15839391836583105498

`Δ[A027089(n+2)-∑[A027088(n+1)]]`
-/

namespace A027090.P15839391836583105498
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027088 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027089 (n + 2) - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A027090.P15839391836583105498

/-! ## A027090.P1767881166947342311

`A027089(n+3)-(A027089(n+2)+A027088(n+2))`
-/

namespace A027090.P1767881166947342311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027089 (n + 3) - (A027089 (n + 2) + A027088 (n + 2))

end

end A027090.P1767881166947342311

/-! ## A027090.P10484578551178124157

`A027082((n+3)²-4)`
-/

namespace A027090.P10484578551178124157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027082 ((n + 3) ^ 2 - 4)

end

end A027090.P10484578551178124157

/-! ## A027090.P1923626822188901337

`record[A027082(∑[A052938(n+1)])]`
-/

namespace A027090.P1923626822188901337
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052938 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027082 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027090.P1923626822188901337

/-! ## A027090.P8484770373561330338

`record[A027082(∑[A052938(n)]-1)]`
-/

namespace A027090.P8484770373561330338
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052938 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027082 (∑ j ∈ Finset.range (n + 1), f2 j - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027090.P8484770373561330338

/-! ## A027090.P16144463337428491115

`record[A027082(A079524(n+1)-1)]`
-/

namespace A027090.P16144463337428491115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027082 (A079524 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027090.P16144463337428491115

/-!
# A027091: a(n) = A027082(n, 2n-4).

The programs for A027091, there is no canonical definition to state claims against.
-/

/-! ## A027091.P7541252103613855214

`Δ[A027090(n+2)]-A027089(n+2)`
-/

namespace A027091.P7541252103613855214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027090 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A027089 (n + 2)

end

end A027091.P7541252103613855214

/-! ## A027091.P14022660348724878801

`Δ[A027090(n+2)]-(A027088(n+3)-A027087(n+3))`
-/

namespace A027091.P14022660348724878801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027090 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (A027088 (n + 3) - A027087 (n + 3))

end

end A027091.P14022660348724878801

/-! ## A027091.P6496674037944884151

`A027082((n+3)²-5)`
-/

namespace A027091.P6496674037944884151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027082 ((n + 3) ^ 2 - 5)

end

end A027091.P6496674037944884151

/-!
# A027092: a(n) = A027082(n, 2n-5).

The programs for A027092, there is no canonical definition to state claims against.
-/

/-! ## A027092.P11766480395719747782

`Δ[A027091(n+3)]-A027090(n+3)`
-/

namespace A027092.P11766480395719747782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027091 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A027090 (n + 3)

end

end A027092.P11766480395719747782

/-! ## A027092.P17921021998244946831

`A027082((n+4)²-6)`
-/

namespace A027092.P17921021998244946831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027082 ((n + 4) ^ 2 - 6)

end

end A027092.P17921021998244946831

/-!
# A027093: a(n) = A027082(n, 2n-6).

The programs for A027093, there is no canonical definition to state claims against.
-/

/-! ## A027093.P4996167062196259891

`Δ[A027092(n+3)-∑[A027091(n+2)]]`
-/

namespace A027093.P4996167062196259891
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027091 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027092 (n + 3) - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A027093.P4996167062196259891

/-! ## A027093.P9318689715010911077

`A027082((n+4)²-7)`
-/

namespace A027093.P9318689715010911077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027082 ((n + 4) ^ 2 - 7)

end

end A027093.P9318689715010911077

/-! ## A027093.P6319579273863002525

`A248227(A068711(n+1)+A025425(n))`
-/

namespace A027093.P6319579273863002525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248227 (A068711 (n + 1) + A025425 n).toNat

end

end A027093.P6319579273863002525

/-!
# A027094: a(n) = A027082(n, 2n-7).

The programs for A027094, there is no canonical definition to state claims against.
-/

/-! ## A027094.P1891820654897665531

`Δ[A027032(n+5)-A027125(n+4)]`
-/

namespace A027094.P1891820654897665531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027032 (n + 5) - A027125 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A027094.P1891820654897665531

/-! ## A027094.P18212878099175699275

`A027082((n+5)²-8)`
-/

namespace A027094.P18212878099175699275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027082 ((n + 5) ^ 2 - 8)

end

end A027094.P18212878099175699275

/-!
# A027095: a(n) = A027082(n, 2n-8).

The programs for A027095, there is no canonical definition to state claims against.
-/

/-! ## A027095.P1381449267718722240

`Δ[A027094(n+4)]-A027093(n+4)`
-/

namespace A027095.P1381449267718722240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027094 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A027093 (n + 4)

end

end A027095.P1381449267718722240

/-! ## A027095.P10640300290482737771

`Δ[A027033(n+5)-A027126(n+4)]`
-/

namespace A027095.P10640300290482737771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027033 (n + 5) - A027126 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A027095.P10640300290482737771

/-! ## A027095.P7353937758195266136

`A027082((n+5)²-9)`
-/

namespace A027095.P7353937758195266136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027082 ((n + 5) ^ 2 - 9)

end

end A027095.P7353937758195266136

/-!
# A027096: a(n) = A027082(n, 2n-9).

The programs for A027096, there is no canonical definition to state claims against.
-/

/-! ## A027096.P3043990703274832108

`A027082(eq[10, A080883(n)])`
-/

namespace A027096.P3043990703274832108
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080883 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027082 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A027096.P3043990703274832108

/-! ## A027096.P744124937033823410

`A027082(A052905(n+2)+A052905(n+3))`
-/

namespace A027096.P744124937033823410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027082 (A052905 (n + 2) + A052905 (n + 3)).toNat

end

end A027096.P744124937033823410

/-! ## A027096.P17376658746018768720

`A027082(A140091(n+3)-A000217(n+1))`
-/

namespace A027096.P17376658746018768720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027082 (A140091 (n + 3) - A000217 (n + 1)).toNat

end

end A027096.P17376658746018768720

/-! ## A027096.P8883972958446904912

`A020911(A253587(n)+A154638(n))`
-/

namespace A027096.P8883972958446904912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020911 (A253587 n + A154638 n).toNat

end

end A027096.P8883972958446904912

/-!
# A027097: a(n) = A027082(n, 2n-10).

The programs for A027097, there is no canonical definition to state claims against.
-/

/-! ## A027097.P6632962738290603037

`Δ[A027096(n+5)-∑[A027095(n+4)]]`
-/

namespace A027097.P6632962738290603037
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027095 (n + 4)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027096 (n + 5) - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A027097.P6632962738290603037

/-! ## A027097.P4855645264893808419

`A027082((n+6)²-11)`
-/

namespace A027097.P4855645264893808419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027082 ((n + 6) ^ 2 - 11)

end

end A027097.P4855645264893808419

/-! ## A027097.P14523003251642963704

`A098184(n)-A137579(A011782(n))`
-/

namespace A027097.P14523003251642963704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098184 n - A137579 (A011782 n).toNat

end

end A027097.P14523003251642963704

/-! ## A027097.P12331144507795619047

`A098184(n)-A084143(A126370(n))`
-/

namespace A027097.P12331144507795619047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098184 n - A084143 (A126370 n).toNat

end

end A027097.P12331144507795619047

/-!
# A027098: T(n,n) + T(n,n+1) + ... + T(n,2n), T given by A027082.

The programs for A027098, there is no canonical definition to state claims against.
-/

/-! ## A027098.P4789880978746589309

`A027099(n)-A057354(A027077(n+1))`
-/

namespace A027098.P4789880978746589309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027099 n - A057354 (A027077 (n + 1)).toNat

end

end A027098.P4789880978746589309

/-! ## A027098.P11748546971470378398

`Δ[A057354(A027077(n+1))]`
-/

namespace A027098.P11748546971470378398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057354 (A027077 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A027098.P11748546971470378398

/-! ## A027098.P14679266878672367559

`A055930(A279196(n+3)-A029931(n))`
-/

namespace A027098.P14679266878672367559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055930 (A279196 (n + 3) - A029931 n).toNat

end

end A027098.P14679266878672367559

/-!
# A027099: a(n) = Sum_{0<=i<=i<=n} A027082(i, n+j).

The programs for A027099, there is no canonical definition to state claims against.
-/

/-! ## A027099.P2938516672335218373

`∑[A027098(n)]`
-/

namespace A027099.P2938516672335218373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027098 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027099.P2938516672335218373

/-! ## A027099.P3372778461401356042

`a(n-1)+A027098(n)+A000038(n)` with `a(0)=1`
-/

namespace A027099.P3372778461401356042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A027098 n + A000038 n)

end

end A027099.P3372778461401356042

/-! ## A027099.P3178151172368776303

`a(n-1)+A027098(n)*A057427(n)` with `a(0)=1`
-/

namespace A027099.P3178151172368776303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + A027098 n * A057427 n

end

end A027099.P3178151172368776303

/-! ## A027099.P11160718787979964373

`a(n-1)+A027098(A000007(n)+n)` with `a(0)=1, a(1)=3`
-/

namespace A027099.P11160718787979964373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  a (n - 1) + A027098 (A000007 n + (n : ℤ)).toNat

end

end A027099.P11160718787979964373

/-! ## A027099.P7169853249301913171

`a(n-1)+A062157(n)²*A027098(n)` with `a(0)=1`
-/

namespace A027099.P7169853249301913171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + A062157 n ^ 2 * A027098 n

end

end A027099.P7169853249301913171

/-! ## A027099.P13121301498280891532

`A027098(n)+a(A004524(A004273(n)))` with `a(0)=1`
-/

namespace A027099.P13121301498280891532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A027098 n + a (A004524 (A004273 n).toNat).toNat

end

end A027099.P13121301498280891532

