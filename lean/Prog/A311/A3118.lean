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
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C011
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
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
import Seq.Opaque.C024
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A311800: Coordination sequence Gal.5.97.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311800, there is no canonical definition to state claims against.
-/

/-! ## A311800.P7688145702754854379

`A314669(n)-A037213(A001045(n))`
-/

namespace A311800.P7688145702754854379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314669 n - A037213 (A001045 n).toNat

end

end A311800.P7688145702754854379

/-! ## A311800.P11067872057310092856

`A314669(n)-A000007(A182894(n))`
-/

namespace A311800.P11067872057310092856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314669 n - A000007 (A182894 n).toNat

end

end A311800.P11067872057310092856

/-! ## A311800.P900344267605292626

`A314669(n)-A209229(A052994(n))`
-/

namespace A311800.P900344267605292626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314669 n - A209229 (A052994 n).toNat

end

end A311800.P900344267605292626

/-! ## A311800.P11091111128894790825

`A314669(n)-A257000(A087955(n))`
-/

namespace A311800.P11091111128894790825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314669 n - A257000 (A087955 n).toNat

end

end A311800.P11091111128894790825

/-! ## A311800.P2488370122475602425

`or(A068385(A054764(n)), A311799(n))`
-/

namespace A311800.P2488370122475602425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A068385 (A054764 n).toNat) (A311799 n)

end

end A311800.P2488370122475602425

/-!
# A311801: Coordination sequence Gal.6.115.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311801, the canonical program `A311801.P4993723668151439416` is in `Seq.B001.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A311801 has offset 0).

The definition of A311801 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2626 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A311801.P4993723668151439416

`round((A301293(n)+A022144(n))/3)`

The canonical program, it is in `Seq.B001.C011`.
-/

namespace A311801

/-- `round((A301293(n)+A022144(n))/3)` -/
def P4993723668151439416.Spec : Prop :=
  ∀ n, P4993723668151439416.a n = A311801 n

theorem P4993723668151439416.correct : P4993723668151439416.Spec := by
  intro n
  simp only [A311801]

end A311801

/-! ## A311801.P5808555870767720298

`A314836(n)-A004396(A004525(n))`
-/

namespace A311801.P5808555870767720298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314836 n - A004396 (A004525 n).toNat

end

end A311801.P5808555870767720298

namespace A311801

/-- `A314836(n)-A004396(A004525(n))` -/
def P5808555870767720298.Spec : Prop :=
  ∀ n, P5808555870767720298.a n = A311801 n

end A311801

/-! ## A311801.P4312604753071777745

`A008458(n)+A008576(n)-A314712(n)`
-/

namespace A311801.P4312604753071777745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008576 n - A314712 n)

end

end A311801.P4312604753071777745

namespace A311801

/-- `A008458(n)+A008576(n)-A314712(n)` -/
def P4312604753071777745.Spec : Prop :=
  ∀ n, P4312604753071777745.a n = A311801 n

theorem P4312604753071777745.correct : P4312604753071777745.Spec := by
  intro n
  simp only [A311801, Nat.add_sub_cancel, A311801.P4312604753071777745.a, A311801.P4993723668151439416.a, A008458, A008458.P10936398443463225625.a, A008576, A008576.P14557774928279059610.a, A022144, A022144.P16676713181441761724.a, A301293, A301293.P16402300677055153941.a, A314712, A314712.P889691669738090391.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A311801

/-! ## A311801.P5448293774914605857

`A314830(n)-A004525(A004396(n))`
-/

namespace A311801.P5448293774914605857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314830 n - A004525 (A004396 n).toNat

end

end A311801.P5448293774914605857

namespace A311801

/-- `A314830(n)-A004525(A004396(n))` -/
def P5448293774914605857.Spec : Prop :=
  ∀ n, P5448293774914605857.a n = A311801 n

end A311801

/-! ## A311801.P2995389063618616501

`A314893(n)-A004525(n)`
-/

namespace A311801.P2995389063618616501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314893 n - A004525 n

end

end A311801.P2995389063618616501

namespace A311801

/-- `A314893(n)-A004525(n)` -/
def P2995389063618616501.Spec : Prop :=
  ∀ n, P2995389063618616501.a n = A311801 n

end A311801

/-! ## A311801.P4864629663632773433

`A004525(A004396(n))+A313246(n)-n`
-/

namespace A311801.P4864629663632773433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A004396 n).toNat + (A313246 n - (n : ℤ))

end

end A311801.P4864629663632773433

namespace A311801

/-- `A004525(A004396(n))+A313246(n)-n` -/
def P4864629663632773433.Spec : Prop :=
  ∀ n, P4864629663632773433.a n = A311801 n

end A311801

/-! ## A311801.P3132340594421653144

`abs(A008591(n)-A313569(n))`
-/

namespace A311801.P3132340594421653144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008591 n - A313569 n|

end

end A311801.P3132340594421653144

namespace A311801

/-- `abs(A008591(n)-A313569(n))` -/
def P3132340594421653144.Spec : Prop :=
  ∀ n, P3132340594421653144.a n = A311801 n

end A311801

/-! ## A311801.P2095150778707243419

`abs(A008592(n)-(A313569(n)+n))`
-/

namespace A311801.P2095150778707243419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - (A313569 n + (n : ℤ))|

end

end A311801.P2095150778707243419

namespace A311801

/-- `abs(A008592(n)-(A313569(n)+n))` -/
def P2095150778707243419.Spec : Prop :=
  ∀ n, P2095150778707243419.a n = A311801 n

end A311801

/-! ## A311801.P2943562505627565361

`Δ[A011865(n)]+A313769(n)-n`
-/

namespace A311801.P2943562505627565361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (A313769 n - (n : ℤ))

end

end A311801.P2943562505627565361

namespace A311801

/-- `Δ[A011865(n)]+A313769(n)-n` -/
def P2943562505627565361.Spec : Prop :=
  ∀ n, P2943562505627565361.a n = A311801 n

end A311801

/-! ## A311801.P2819754952933461046

`A315453(n)-(A128834(n)+n)`
-/

namespace A311801.P2819754952933461046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315453 n - (A128834 n + (n : ℤ))

end

end A311801.P2819754952933461046

namespace A311801

/-- `A315453(n)-(A128834(n)+n)` -/
def P2819754952933461046.Spec : Prop :=
  ∀ n, P2819754952933461046.a n = A311801 n

end A311801

/-! ## A311801.P6115057812385957286

`A313872(n)-n`
-/

namespace A311801.P6115057812385957286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313872 n - (n : ℤ)

end

end A311801.P6115057812385957286

namespace A311801

/-- `A313872(n)-n` -/
def P6115057812385957286.Spec : Prop :=
  ∀ n, P6115057812385957286.a n = A311801 n

end A311801

/-! ## A311801.P13292918948950691979

`A004525(A311861(n))+2*n`
-/

namespace A311801.P13292918948950691979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A311861 n).toNat + (2 * n : ℤ)

end

end A311801.P13292918948950691979

namespace A311801

/-- `A004525(A311861(n))+2*n` -/
def P13292918948950691979.Spec : Prop :=
  ∀ n, P13292918948950691979.a n = A311801 n

end A311801

/-! ## A311801.P2151680703021256698

`A004525(A311924(n))+2*n`
-/

namespace A311801.P2151680703021256698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A311924 n).toNat + (2 * n : ℤ)

end

end A311801.P2151680703021256698

namespace A311801

/-- `A004525(A311924(n))+2*n` -/
def P2151680703021256698.Spec : Prop :=
  ∀ n, P2151680703021256698.a n = A311801 n

end A311801

/-! ## A311801.P3035382210712294031

`A004525(A312065(n))+2*n`
-/

namespace A311801.P3035382210712294031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A312065 n).toNat + (2 * n : ℤ)

end

end A311801.P3035382210712294031

namespace A311801

/-- `A004525(A312065(n))+2*n` -/
def P3035382210712294031.Spec : Prop :=
  ∀ n, P3035382210712294031.a n = A311801 n

end A311801

/-! ## A311801.P8640281229716607021

`A315522(n)-(A004396(A004525(n))+n)`
-/

namespace A311801.P8640281229716607021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315522 n - (A004396 (A004525 n).toNat + (n : ℤ))

end

end A311801.P8640281229716607021

namespace A311801

/-- `A315522(n)-(A004396(A004525(n))+n)` -/
def P8640281229716607021.Spec : Prop :=
  ∀ n, P8640281229716607021.a n = A311801 n

end A311801

/-! ## A311801.P5322539623792880195

`A314216(n)-A042965(n+1)`
-/

namespace A311801.P5322539623792880195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314216 n - A042965 (n + 1)

end

end A311801.P5322539623792880195

namespace A311801

/-- `A314216(n)-A042965(n+1)` -/
def P5322539623792880195.Spec : Prop :=
  ∀ n, P5322539623792880195.a n = A311801 n

end A311801

/-! ## A311801.P1961645514162423294

`A008576(n)+A314216(n)-A008574(n)`
-/

namespace A311801.P1961645514162423294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008576 n + (A314216 n - A008574 n)

end

end A311801.P1961645514162423294

namespace A311801

/-- `A008576(n)+A314216(n)-A008574(n)` -/
def P1961645514162423294.Spec : Prop :=
  ∀ n, P1961645514162423294.a n = A311801 n

end A311801

/-! ## A311801.P13229544637570194760

`A315540(n)-A047229(n+1)`
-/

namespace A311801.P13229544637570194760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315540 n - A047229 (n + 1)

end

end A311801.P13229544637570194760

namespace A311801

/-- `A315540(n)-A047229(n+1)` -/
def P13229544637570194760.Spec : Prop :=
  ∀ n, P13229544637570194760.a n = A311801 n

end A311801

/-! ## A311801.P7349389698545107192

`A315540(n)-(A004525(n)+n)`
-/

namespace A311801.P7349389698545107192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315540 n - (A004525 n + (n : ℤ))

end

end A311801.P7349389698545107192

namespace A311801

/-- `A315540(n)-(A004525(n)+n)` -/
def P7349389698545107192.Spec : Prop :=
  ∀ n, P7349389698545107192.a n = A311801 n

end A311801

/-! ## A311801.P5568305667054276579

`A008458(n)+A008574(n)-A315710(n)`
-/

namespace A311801.P5568305667054276579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A315710 n)

end

end A311801.P5568305667054276579

namespace A311801

/-- `A008458(n)+A008574(n)-A315710(n)` -/
def P5568305667054276579.Spec : Prop :=
  ∀ n, P5568305667054276579.a n = A311801 n

end A311801

/-!
# A311802: Coordination sequence Gal.5.51.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311802, there is no canonical definition to state claims against.
-/

/-! ## A311802.P12958941748373318669

`or(A057918(A208851(n)), A311801(n))`
-/

namespace A311802.P12958941748373318669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A057918 (A208851 n).toNat) (A311801 n)

end

end A311802.P12958941748373318669

/-! ## A311802.P18431953960431474360

`or(A311801(n), A340370(A306852(n)))`
-/

namespace A311802.P18431953960431474360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A311801 n) (A340370 (A306852 n).toNat)

end

end A311802.P18431953960431474360

/-! ## A311802.P5266861682556820015

`or(A010051(A147491(n+1)), A311801(n))`
-/

namespace A311802.P5266861682556820015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A010051 (A147491 (n + 1)).toNat) (A311801 n)

end

end A311802.P5266861682556820015

/-! ## A311802.P16109105242258663652

`or(A313872(n)-n, A010051(A147491(n+1)))`
-/

namespace A311802.P16109105242258663652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A313872 n - (n : ℤ)) (A010051 (A147491 (n + 1)).toNat)

end

end A311802.P16109105242258663652

/-!
# A311803: Coordination sequence Gal.4.40.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311803, the canonical program `A311803.P9375890078183574717` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A311803 has offset 0).

The definition of A311803 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2447 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A311803.P2261381932075496366

`A310397(n)+A188510(n)-A242062(A008586(n))`
-/

namespace A311803.P2261381932075496366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310397 n + (A188510 n - A242062 (A008586 n).toNat)

end

end A311803.P2261381932075496366

namespace A311803

/-- `A310397(n)+A188510(n)-A242062(A008586(n))` -/
def P2261381932075496366.Spec : Prop :=
  ∀ n, P2261381932075496366.a n = A311803 n

end A311803

/-! ## A311803.P9375890078183574717

`A313685(n)-A242062(4*n)`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A311803

/-- `A313685(n)-A242062(4*n)` -/
def P9375890078183574717.Spec : Prop :=
  ∀ n, P9375890078183574717.a n = A311803 n

theorem P9375890078183574717.correct : P9375890078183574717.Spec := by
  intro n
  simp only [A311803]

end A311803

/-! ## A311803.P11442775830371336142

`A002024(A071398(n)+A000045(A343648(n+1)))`
-/

namespace A311803.P11442775830371336142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A071398 n + A000045 (A343648 (n + 1)).toNat).toNat

end

end A311803.P11442775830371336142

namespace A311803

/-- `A002024(A071398(n)+A000045(A343648(n+1)))` -/
def P11442775830371336142.Spec : Prop :=
  ∀ n, P11442775830371336142.a n = A311803 n

end A311803

/-! ## A311803.P11756789289526736970

`A311801(n)+A044941(A077998(n))`
-/

namespace A311803.P11756789289526736970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311801 n + A044941 (A077998 n).toNat

end

end A311803.P11756789289526736970

namespace A311803

/-- `A311801(n)+A044941(A077998(n))` -/
def P11756789289526736970.Spec : Prop :=
  ∀ n, P11756789289526736970.a n = A311803 n

end A311803

/-! ## A311803.P6601835344097837654

`A160755(A313023(n))`
-/

namespace A311803.P6601835344097837654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160755 (A313023 n).toNat

end

end A311803.P6601835344097837654

namespace A311803

/-- `A160755(A313023(n))` -/
def P6601835344097837654.Spec : Prop :=
  ∀ n, P6601835344097837654.a n = A311803 n

end A311803

/-!
# A311804: Coordination sequence Gal.6.216.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311804, the canonical program `A311804.P3844052546151158521` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A311804 has offset 0).

The definition of A311804 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2512 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A311804.P6817299529979288610

`(A312472(n)+A008574(n))/2`
-/

namespace A311804.P6817299529979288610
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A312472 n + A008574 n : ℚ) / 2

end

end A311804.P6817299529979288610

namespace A311804

/-- `(A312472(n)+A008574(n))/2` -/
def P6817299529979288610.Spec : Prop :=
  ∀ n, P6817299529979288610.a n = (A311804 n : ℚ)

theorem P6817299529979288610.correct : P6817299529979288610.Spec := by
  intro n
  simp only [A311804, Nat.add_sub_cancel, A311804.P6817299529979288610.a, A311804.P3844052546151158521.a, A004396, A004396.P17032557045289780609.a, A008574, A008574.P1300280032690682112.a, A312472, A312472.P9748257743886067532.a, A313045, A313045.P11830860627486211470.f1, A313045.P11830860627486211470.a, A008458, A008458.P10936398443463225625.a, A047486, A047486.P6506762595393263252.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A311804

/-! ## A311804.P3844052546151158521

`A313045(n)-A004396(A313045(n)-A008574(n))`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A311804

/-- `A313045(n)-A004396(A313045(n)-A008574(n))` -/
def P3844052546151158521.Spec : Prop :=
  ∀ n, P3844052546151158521.a n = A311804 n

theorem P3844052546151158521.correct : P3844052546151158521.Spec := by
  intro n
  simp only [A311804]

end A311804

/-! ## A311804.P8646742844034092708

`A312507(n)-A004396(A312507(n)-A008574(n))`
-/

namespace A311804.P8646742844034092708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312507 n - A004396 (A312507 n - A008574 n).toNat

end

end A311804.P8646742844034092708

namespace A311804

/-- `A312507(n)-A004396(A312507(n)-A008574(n))` -/
def P8646742844034092708.Spec : Prop :=
  ∀ n, P8646742844034092708.a n = A311804 n

end A311804

/-! ## A311804.P872319200068654511

`A004525(A311889(n))+2*n`
-/

namespace A311804.P872319200068654511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A311889 n).toNat + (2 * n : ℤ)

end

end A311804.P872319200068654511

namespace A311804

/-- `A004525(A311889(n))+2*n` -/
def P872319200068654511.Spec : Prop :=
  ∀ n, P872319200068654511.a n = A311804 n

end A311804

/-! ## A311804.P6511374120910876590

`A004525(A311932(n))+2*n`
-/

namespace A311804.P6511374120910876590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A311932 n).toNat + (2 * n : ℤ)

end

end A311804.P6511374120910876590

namespace A311804

/-- `A004525(A311932(n))+2*n` -/
def P6511374120910876590.Spec : Prop :=
  ∀ n, P6511374120910876590.a n = A311804 n

end A311804

/-! ## A311804.P16514523478078058201

`A004525(A312068(n))+2*n`
-/

namespace A311804.P16514523478078058201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A312068 n).toNat + (2 * n : ℤ)

end

end A311804.P16514523478078058201

namespace A311804

/-- `A004525(A312068(n))+2*n` -/
def P16514523478078058201.Spec : Prop :=
  ∀ n, P16514523478078058201.a n = A311804 n

end A311804

/-! ## A311804.P9984403437832225645

`2*A008706(n)-A315709(n)`
-/

namespace A311804.P9984403437832225645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A315709 n

end

end A311804.P9984403437832225645

namespace A311804

/-- `2*A008706(n)-A315709(n)` -/
def P9984403437832225645.Spec : Prop :=
  ∀ n, P9984403437832225645.a n = A311804 n

end A311804

/-! ## A311804.P15394029462995748457

`A008458(n)+A008574(n)-A315709(n)`
-/

namespace A311804.P15394029462995748457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A315709 n)

end

end A311804.P15394029462995748457

namespace A311804

/-- `A008458(n)+A008574(n)-A315709(n)` -/
def P15394029462995748457.Spec : Prop :=
  ∀ n, P15394029462995748457.a n = A311804 n

end A311804

/-! ## A311804.P9711968579929766214

`A005843(A008458(n)-n)-A315709(n)`
-/

namespace A311804.P9711968579929766214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008458 n - (n : ℤ)).toNat - A315709 n

end

end A311804.P9711968579929766214

namespace A311804

/-- `A005843(A008458(n)-n)-A315709(n)` -/
def P9711968579929766214.Spec : Prop :=
  ∀ n, P9711968579929766214.a n = A311804 n

end A311804

/-! ## A311804.P17813453439712395211

`A068962(A313899(n))+2*n`
-/

namespace A311804.P17813453439712395211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068962 (A313899 n).toNat + (2 * n : ℤ)

end

end A311804.P17813453439712395211

namespace A311804

/-- `A068962(A313899(n))+2*n` -/
def P17813453439712395211.Spec : Prop :=
  ∀ n, P17813453439712395211.a n = A311804 n

end A311804

/-! ## A311804.P15407179074703443401

`A065502(A008706(n)+n)-A315709(n)`
-/

namespace A311804.P15407179074703443401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065502 (A008706 n + (n : ℤ)).toNat - A315709 n

end

end A311804.P15407179074703443401

namespace A311804

/-- `A065502(A008706(n)+n)-A315709(n)` -/
def P15407179074703443401.Spec : Prop :=
  ∀ n, P15407179074703443401.a n = A311804 n

end A311804

/-! ## A311804.P11760067661949686857

`A004396(A313876(n)+n)`
-/

namespace A311804.P11760067661949686857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A313876 n + (n : ℤ)).toNat

end

end A311804.P11760067661949686857

namespace A311804

/-- `A004396(A313876(n)+n)` -/
def P11760067661949686857.Spec : Prop :=
  ∀ n, P11760067661949686857.a n = A311804 n

end A311804

/-! ## A311804.P18264695957637691025

`A004396(A313887(n)+n)`
-/

namespace A311804.P18264695957637691025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A313887 n + (n : ℤ)).toNat

end

end A311804.P18264695957637691025

namespace A311804

/-- `A004396(A313887(n)+n)` -/
def P18264695957637691025.Spec : Prop :=
  ∀ n, P18264695957637691025.a n = A311804 n

end A311804

/-! ## A311804.P10237158919738413656

`A004396(A313908(n)+n)`
-/

namespace A311804.P10237158919738413656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A313908 n + (n : ℤ)).toNat

end

end A311804.P10237158919738413656

namespace A311804

/-- `A004396(A313908(n)+n)` -/
def P10237158919738413656.Spec : Prop :=
  ∀ n, P10237158919738413656.a n = A311804 n

end A311804

/-! ## A311804.P18112160366199328460

`A004396(A313913(n)+n)`
-/

namespace A311804.P18112160366199328460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A313913 n + (n : ℤ)).toNat

end

end A311804.P18112160366199328460

namespace A311804

/-- `A004396(A313913(n)+n)` -/
def P18112160366199328460.Spec : Prop :=
  ∀ n, P18112160366199328460.a n = A311804 n

end A311804

/-! ## A311804.P7349622999316561936

`lcm(2, A311225(2*n))/2`
-/

namespace A311804.P7349622999316561936
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (A311225 (2 * n)) : ℚ) / 2

end

end A311804.P7349622999316561936

namespace A311804

/-- `lcm(2, A311225(2*n))/2` -/
def P7349622999316561936.Spec : Prop :=
  ∀ n, P7349622999316561936.a n = (A311804 n : ℚ)

end A311804

/-! ## A311804.P4899648957023129033

`A311225(2*n)/A020639(A311225(n))`
-/

namespace A311804.P4899648957023129033
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A311225 (2 * n) : ℚ) / (A020639 (A311225 n).toNat : ℚ)

end

end A311804.P4899648957023129033

namespace A311804

/-- `A311225(2*n)/A020639(A311225(n))` -/
def P4899648957023129033.Spec : Prop :=
  ∀ n, P4899648957023129033.a n = (A311804 n : ℚ)

end A311804

/-! ## A311804.P12632925969942219746

`A008486(2*n)+A314720(2*n)-A315492(2*n)`
-/

namespace A311804.P12632925969942219746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (2 * n) + (A314720 (2 * n) - A315492 (2 * n))

end

end A311804.P12632925969942219746

namespace A311804

/-- `A008486(2*n)+A314720(2*n)-A315492(2*n)` -/
def P12632925969942219746.Spec : Prop :=
  ∀ n, P12632925969942219746.a n = A311804 n

end A311804

/-! ## A311804.P4780905940834498552

`A313738(2*n)+A008458(n+1)-(12*n+6)`
-/

namespace A311804.P4780905940834498552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313738 (2 * n) + (A008458 (n + 1) - (12 * n + 6 : ℤ))

end

end A311804.P4780905940834498552

namespace A311804

/-- `A313738(2*n)+A008458(n+1)-(12*n+6)` -/
def P4780905940834498552.Spec : Prop :=
  ∀ n, P4780905940834498552.a n = A311804 n

end A311804

/-!
# A311805: Coordination sequence Gal.5.96.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311805, there is no canonical definition to state claims against.
-/

/-! ## A311805.P3875080355770889148

`or(A121262(A264853(n)), A311427(n))`
-/

namespace A311805.P3875080355770889148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A121262 (A264853 n).toNat) (A311427 n)

end

end A311805.P3875080355770889148

/-! ## A311805.P2615351491926197419

`lt[A099932(n+3), ∑{e}[n+1, #]+1]+comp[2*n+3]`
-/

namespace A311805.P2615351491926197419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099932 (n + 3)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p + 1

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 3

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + SequenceMachineLib.nth (fun x => ∀ j, f4 j ≠ x) n

end

end A311805.P2615351491926197419

/-! ## A311805.P5727619841047751621

`lt[A099932(n+3), A000038(n)]+comp[2*n+3]`
-/

namespace A311805.P5727619841047751621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099932 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 3

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n

end

end A311805.P5727619841047751621

/-! ## A311805.P9874854268509177558

`lt[A099932(n+3), A163291(n+1)]+comp[2*n+3]`
-/

namespace A311805.P9874854268509177558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099932 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163291 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 3

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n

end

end A311805.P9874854268509177558

/-! ## A311805.P206184662972727972

`A352241(A315519(n))`
-/

namespace A311805.P206184662972727972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352241 (A315519 n).toNat

end

end A311805.P206184662972727972

/-!
# A311806: Coordination sequence Gal.4.60.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311806, the canonical program `A311806.P6784156394519599598` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A311806 has offset 0).

The definition of A311806 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2543 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A311806.P6784156394519599598

`A312065(n)-Δ[A011867(n)]`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A311806

/-- `A312065(n)-Δ[A011867(n)]` -/
def P6784156394519599598.Spec : Prop :=
  ∀ n, P6784156394519599598.a n = A311806 n

theorem P6784156394519599598.correct : P6784156394519599598.Spec := by
  intro n
  simp only [A311806]

end A311806

/-! ## A311806.P7549618459524690355

`A312065(n)-A047588(n+1)+n`
-/

namespace A311806.P7549618459524690355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312065 n - A047588 (n + 1) + (n : ℤ)

end

end A311806.P7549618459524690355

namespace A311806

/-- `A312065(n)-A047588(n+1)+n` -/
def P7549618459524690355.Spec : Prop :=
  ∀ n, P7549618459524690355.a n = A311806 n

end A311806

/-! ## A311806.P1653398624078035033

`A047513(n+1)+A004396(A312895(n))`
-/

namespace A311806.P1653398624078035033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047513 (n + 1) + A004396 (A312895 n).toNat

end

end A311806.P1653398624078035033

namespace A311806

/-- `A047513(n+1)+A004396(A312895(n))` -/
def P1653398624078035033.Spec : Prop :=
  ∀ n, P1653398624078035033.a n = A311806 n

end A311806

/-! ## A311806.P707115155374835809

`A301697(n)-A047588(n+1)`
-/

namespace A311806.P707115155374835809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301697 n - A047588 (n + 1)

end

end A311806.P707115155374835809

namespace A311806

/-- `A301697(n)-A047588(n+1)` -/
def P707115155374835809.Spec : Prop :=
  ∀ n, P707115155374835809.a n = A311806 n

end A311806

/-! ## A311806.P8839086540732866940

`A301697(n)-record[A004396(A283971(n))]`
-/

namespace A311806.P8839086540732866940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A283971 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301697 n - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A311806.P8839086540732866940

namespace A311806

/-- `A301697(n)-record[A004396(A283971(n))]` -/
def P8839086540732866940.Spec : Prop :=
  ∀ n, P8839086540732866940.a n = A311806 n

end A311806

/-! ## A311806.P7215911678036967449

`A047513(n+1)+A004525(A315701(n))`
-/

namespace A311806.P7215911678036967449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047513 (n + 1) + A004525 (A315701 n).toNat

end

end A311806.P7215911678036967449

namespace A311806

/-- `A047513(n+1)+A004525(A315701(n))` -/
def P7215911678036967449.Spec : Prop :=
  ∀ n, P7215911678036967449.a n = A311806 n

end A311806

/-!
# A311807: Coordination sequence Gal.3.12.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311807, the canonical program `A311807.P4282728810707661845` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A311807 has offset 0).

The definition of A311807 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2619 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A311807.P13904619400073231563

`round(7/(5*acot(3*n)))`
-/

namespace A311807.P13904619400073231563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (7 / (5 * SequenceMachineLib.acot (3 * n : ℝ)))

end

end A311807.P13904619400073231563

namespace A311807

/-- `round(7/(5*acot(3*n)))` -/
def P13904619400073231563.Spec : Prop :=
  ∀ n, P13904619400073231563.a n = A311807 n

end A311807

/-! ## A311807.P4282728810707661845

`∑[floor(a(n-5))]` with `a(0)=1, a(1)=3, a(2)=4, a(3)=5, a(4)=4, a(5)=4, a(6)=4`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A311807

/-- `∑[floor(a(n-5))]` -/
def P4282728810707661845.Spec : Prop :=
  ∀ n, (P4282728810707661845.a n : ℤ) = A311807 n

theorem P4282728810707661845.correct : P4282728810707661845.Spec := by
  intro n
  simp only [A311807]

end A311807

/-! ## A311807.P1022246394668978268

`round(7/5*A008486(n))`
-/

namespace A311807.P1022246394668978268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((7 : ℚ) / 5 * (A008486 n : ℚ))

end

end A311807.P1022246394668978268

namespace A311807

/-- `round(7/5*A008486(n))` -/
def P1022246394668978268.Spec : Prop :=
  ∀ n, P1022246394668978268.a n = A311807 n

end A311807

/-! ## A311807.P8031350960039672126

`round(A008574(n)+n/5)`
-/

namespace A311807.P8031350960039672126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A008574 n : ℚ) + (n : ℚ) / 5)

end

end A311807.P8031350960039672126

namespace A311807

/-- `round(A008574(n)+n/5)` -/
def P8031350960039672126.Spec : Prop :=
  ∀ n, P8031350960039672126.a n = A311807 n

end A311807

/-! ## A311807.P13877402030728112026

`record[A082010(n)+1]+n`
-/

namespace A311807.P13877402030728112026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082010 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + (n : ℤ)

end

end A311807.P13877402030728112026

namespace A311807

/-- `record[A082010(n)+1]+n` -/
def P13877402030728112026.Spec : Prop :=
  ∀ n, P13877402030728112026.a n = A311807 n

end A311807

/-! ## A311807.P16276365216682593858

`A047263(n+1)+floor(3/acot(n))`
-/

namespace A311807.P16276365216682593858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047263 (n + 1) + ⌊3 / SequenceMachineLib.acot (n : ℝ)⌋

end

end A311807.P16276365216682593858

namespace A311807

/-- `A047263(n+1)+floor(3/acot(n))` -/
def P16276365216682593858.Spec : Prop :=
  ∀ n, P16276365216682593858.a n = A311807 n

end A311807

/-! ## A311807.P986700683424140831

`A028310(comp[Δ[lcm(3, n)]])+3*n`
-/

namespace A311807.P986700683424140831
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 3 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n) + (3 * n : ℤ)

end

end A311807.P986700683424140831

namespace A311807

/-- `A028310(comp[Δ[lcm(3, n)]])+3*n` -/
def P986700683424140831.Spec : Prop :=
  ∀ n, P986700683424140831.a n = A311807 n

end A311807

/-! ## A311807.P2593561979959245549

`round(A019425(2*n+1)+n/5)`
-/

namespace A311807.P2593561979959245549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A019425 (2 * n + 1) : ℚ) + (n : ℚ) / 5)

end

end A311807.P2593561979959245549

namespace A311807

/-- `round(A019425(2*n+1)+n/5)` -/
def P2593561979959245549.Spec : Prop :=
  ∀ n, P2593561979959245549.a n = A311807 n

end A311807

/-! ## A311807.P14157925353095743635

`A028310(3*n)+comp[6*n+3]`
-/

namespace A311807.P14157925353095743635
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * n + 3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (3 * n) + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ)

end

end A311807.P14157925353095743635

namespace A311807

/-- `A028310(3*n)+comp[6*n+3]` -/
def P14157925353095743635.Spec : Prop :=
  ∀ n, P14157925353095743635.a n = A311807 n

end A311807

/-! ## A311807.P7247284884928713398

`A047299(A008486(n)+1)`
-/

namespace A311807.P7247284884928713398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047299 (A008486 n + 1).toNat

end

end A311807.P7247284884928713398

namespace A311807

/-- `A047299(A008486(n)+1)` -/
def P7247284884928713398.Spec : Prop :=
  ∀ n, P7247284884928713398.a n = A311807 n

end A311807

/-! ## A311807.P12621105645451919690

`A047299(A033627(n+2))`
-/

namespace A311807.P12621105645451919690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047299 (A033627 (n + 2)).toNat

end

end A311807.P12621105645451919690

namespace A311807

/-- `A047299(A033627(n+2))` -/
def P12621105645451919690.Spec : Prop :=
  ∀ n, P12621105645451919690.a n = A311807 n

end A311807

/-! ## A311807.P14399036041503970552

`A047299(A004277(n)+1+n)`
-/

namespace A311807.P14399036041503970552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047299 (A004277 n + 1 + (n : ℤ)).toNat

end

end A311807.P14399036041503970552

namespace A311807

/-- `A047299(A004277(n)+1+n)` -/
def P14399036041503970552.Spec : Prop :=
  ∀ n, P14399036041503970552.a n = A311807 n

end A311807

/-! ## A311807.P17443583311988954104

`A047263(n+1)+A008486(n)`
-/

namespace A311807.P17443583311988954104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047263 (n + 1) + A008486 n

end

end A311807.P17443583311988954104

namespace A311807

/-- `A047263(n+1)+A008486(n)` -/
def P17443583311988954104.Spec : Prop :=
  ∀ n, P17443583311988954104.a n = A311807 n

end A311807

/-! ## A311807.P8720426577466396116

`A265227(n+1)+A072154(n)`
-/

namespace A311807.P8720426577466396116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265227 (n + 1) + A072154 n

end

end A311807.P8720426577466396116

namespace A311807

/-- `A265227(n+1)+A072154(n)` -/
def P8720426577466396116.Spec : Prop :=
  ∀ n, P8720426577466396116.a n = A311807 n

end A311807

/-! ## A311807.P16628748306583816106

`A008574(n)+A002266(n+2)`
-/

namespace A311807.P16628748306583816106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + A002266 (n + 2)

end

end A311807.P16628748306583816106

namespace A311807

/-- `A008574(n)+A002266(n+2)` -/
def P16628748306583816106.Spec : Prop :=
  ∀ n, P16628748306583816106.a n = A311807 n

end A311807

/-! ## A311807.P2745271766297877885

`A047299(A008574(n)+1-n)`
-/

namespace A311807.P2745271766297877885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047299 (A008574 n + (1 - (n : ℤ))).toNat

end

end A311807.P2745271766297877885

namespace A311807

/-- `A047299(A008574(n)+1-n)` -/
def P2745271766297877885.Spec : Prop :=
  ∀ n, P2745271766297877885.a n = A311807 n

end A311807

/-! ## A311807.P3368578269463000224

`A047299(1-(n-A008574(n)))`
-/

namespace A311807.P3368578269463000224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047299 (1 - ((n : ℤ) - A008574 n)).toNat

end

end A311807.P3368578269463000224

namespace A311807

/-- `A047299(1-(n-A008574(n)))` -/
def P3368578269463000224.Spec : Prop :=
  ∀ n, P3368578269463000224.a n = A311807 n

end A311807

/-! ## A311807.P10122634054479475264

`(A312475(n)+A008574(n))/2`
-/

namespace A311807.P10122634054479475264
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A312475 n + A008574 n : ℚ) / 2

end

end A311807.P10122634054479475264

namespace A311807

/-- `(A312475(n)+A008574(n))/2` -/
def P10122634054479475264.Spec : Prop :=
  ∀ n, P10122634054479475264.a n = (A311807 n : ℚ)

end A311807

/-! ## A311807.P2535641695651975426

`A315610(n)-A277618(n)`
-/

namespace A311807.P2535641695651975426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315610 n - A277618 n

end

end A311807.P2535641695651975426

namespace A311807

/-- `A315610(n)-A277618(n)` -/
def P2535641695651975426.Spec : Prop :=
  ∀ n, P2535641695651975426.a n = A311807 n

theorem P2535641695651975426.correct : P2535641695651975426.Spec := by
  intro n
  simp only [A311807, Nat.add_sub_cancel, A311807.P2535641695651975426.a, A311807.P4282728810707661845.f1, A311807.P4282728810707661845.a, A277618, A277618.P14141087191266251503.a, A315610, A315610.P15546644345769821061.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A311807

/-! ## A311807.P17047824603791666120

`A313873(n)-n`
-/

namespace A311807.P17047824603791666120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313873 n - (n : ℤ)

end

end A311807.P17047824603791666120

namespace A311807

/-- `A313873(n)-n` -/
def P17047824603791666120.Spec : Prop :=
  ∀ n, P17047824603791666120.a n = A311807 n

theorem P17047824603791666120.correct : P17047824603791666120.Spec := by
  intro n
  simp only [A311807, Nat.add_sub_cancel, A311807.P17047824603791666120.a, A311807.P4282728810707661845.f1, A311807.P4282728810707661845.a, A313873, A313873.P7548002507700228221.f1, A313873.P7548002507700228221.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A311807

/-!
# A311808: Coordination sequence Gal.5.72.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311808, there is no canonical definition to state claims against.
-/

/-! ## A311808.P2140141974123734740

`record[A343723(n+1)]+floor(3/acot(n))`
-/

namespace A311808.P2140141974123734740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343723 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + ⌊3 / SequenceMachineLib.acot (n : ℝ)⌋

end

end A311808.P2140141974123734740

/-! ## A311808.P13148320850204158777

`A008486(n)+record[A343723(n+1)]`
-/

namespace A311808.P13148320850204158777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343723 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 n + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A311808.P13148320850204158777

/-! ## A311808.P13699431332139344078

`A028310(3*n)+record[A343723(n+1)]`
-/

namespace A311808.P13699431332139344078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343723 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (3 * n) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A311808.P13699431332139344078

/-! ## A311808.P6287483582214171701

`record[A343723(n+1)]+A004277(n)+n`
-/

namespace A311808.P6287483582214171701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343723 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + (A004277 n + (n : ℤ))

end

end A311808.P6287483582214171701

/-! ## A311808.P15661916832407715344

`record[A343723(n+1)]+A008574(n)-n`
-/

namespace A311808.P15661916832407715344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343723 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + (A008574 n - (n : ℤ))

end

end A311808.P15661916832407715344

/-!
# A311809: Coordination sequence Gal.4.39.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311809, there is no canonical definition to state claims against.
-/

/-! ## A311809.P5127618001575376860

`A168183(n+1)+A105566(A008574(n))`
-/

namespace A311809.P5127618001575376860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168183 (n + 1) + A105566 (A008574 n).toNat

end

end A311809.P5127618001575376860

/-! ## A311809.P5586082783707156887

`A095861(or(A016922(n), A346876(n+1)))`
-/

namespace A311809.P5586082783707156887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095861 (Int.lor (A016922 n) (A346876 (n + 1))).toNat

end

end A311809.P5586082783707156887

/-! ## A311809.P12426603302330544690

`A095861(A346876(n+1)+A016922(n)-n)`
-/

namespace A311809.P12426603302330544690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095861 (A346876 (n + 1) + (A016922 n - (n : ℤ))).toNat

end

end A311809.P12426603302330544690

/-! ## A311809.P15177675089061356731

`A311924(n)-A057363(A043276(A068031(n)))`
-/

namespace A311809.P15177675089061356731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311924 n - A057363 (A043276 (A068031 n).toNat).toNat

end

end A311809.P15177675089061356731

/-! ## A311809.P10375161008043587497

`A311257(n)+A157749(A311246(n))`
-/

namespace A311809.P10375161008043587497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311257 n + A157749 (A311246 n).toNat

end

end A311809.P10375161008043587497

/-!
# A311810: Coordination sequence Gal.5.117.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311810, there is no canonical definition to state claims against.
-/

/-! ## A311810.P5277144279959277840

`A109036(A219968(n))+A008574(n)`
-/

namespace A311810.P5277144279959277840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109036 (A219968 n).toNat + A008574 n

end

end A311810.P5277144279959277840

/-! ## A311810.P5551324749582116718

`A301293(n)-A001221(A080874(n))`
-/

namespace A311810.P5551324749582116718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301293 n - A001221 (A080874 n).toNat

end

end A311810.P5551324749582116718

/-! ## A311810.P5293686893060146408

`or(A000035(A237272(n)), A311170(n))`
-/

namespace A311810.P5293686893060146408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000035 (A237272 n).toNat) (A311170 n)

end

end A311810.P5293686893060146408

/-! ## A311810.P17164423503335532062

`A311807(n)-∑[A178798(A000124(n))]`
-/

namespace A311810.P17164423503335532062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178798 (A000124 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311807 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A311810.P17164423503335532062

/-! ## A311810.P6343622366153571404

`∑[A064547(∑[A002492(2*n+1)])]`
-/

namespace A311810.P6343622366153571404
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002492 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064547 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A311810.P6343622366153571404

/-!
# A311811: Coordination sequence Gal.6.145.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311811, there is no canonical definition to state claims against.
-/

/-! ## A311811.P17775147305343034488

`or(A011661(A007088(n)), A311764(n))`
-/

namespace A311811.P17775147305343034488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A011661 (A007088 n).toNat) (A311764 n)

end

end A311811.P17775147305343034488

/-! ## A311811.P7454280068634995537

`or(A011661(A007088(n)), A311791(n))`
-/

namespace A311811.P7454280068634995537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A011661 (A007088 n).toNat) (A311791 n)

end

end A311811.P7454280068634995537

/-! ## A311811.P14232476107472768928

`or(A292438(A288827(n)), A311791(n))`
-/

namespace A311811.P14232476107472768928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A292438 (A288827 n).toNat) (A311791 n)

end

end A311811.P14232476107472768928

/-! ## A311811.P13135757384886060564

`A311812(n)-A025469(A140252(n))`
-/

namespace A311811.P13135757384886060564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311812 n - A025469 (A140252 n).toNat

end

end A311811.P13135757384886060564

/-! ## A311811.P9447850428676651805

`or(A060838(A282605(n)), A311791(n))`
-/

namespace A311811.P9447850428676651805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A060838 (A282605 n).toNat) (A311791 n)

end

end A311811.P9447850428676651805

/-!
# A311812: Coordination sequence Gal.6.138.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311812, there is no canonical definition to state claims against.
-/

/-! ## A311812.P9137335637436598587

`A311811(n)+A025469(A140252(n))`
-/

namespace A311812.P9137335637436598587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311811 n + A025469 (A140252 n).toNat

end

end A311812.P9137335637436598587

/-! ## A311812.P10064982493562489058

`A311804(n)+A084360(A229887(n))`
-/

namespace A311812.P10064982493562489058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311804 n + A084360 (A229887 n).toNat

end

end A311812.P10064982493562489058

/-! ## A311812.P7619024336051030532

`A314674(n)-A010054(A153643(n))`
-/

namespace A311812.P7619024336051030532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314674 n - A010054 (A153643 n).toNat

end

end A311812.P7619024336051030532

/-! ## A311812.P12967334867207656062

`or(A023532(A253633(n)), A311786(n))`
-/

namespace A311812.P12967334867207656062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A023532 (A253633 n).toNat) (A311786 n)

end

end A311812.P12967334867207656062

/-! ## A311812.P199790989890051408

`or(A285383(A143565(n+1)), A311786(n))`
-/

namespace A311812.P199790989890051408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A285383 (A143565 (n + 1)).toNat) (A311786 n)

end

end A311812.P199790989890051408

/-!
# A311813: Coordination sequence Gal.6.274.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311813, there is no canonical definition to state claims against.
-/

/-! ## A311813.P15575747901875384766

`A311812(n)+A025469((n+1)²²)`
-/

namespace A311813.P15575747901875384766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311812 n + A025469 (((n + 1) ^ 2) ^ 2)

end

end A311813.P15575747901875384766

/-! ## A311813.P15445831325645956419

`A311812(A120126(n))+A035042(n)`
-/

namespace A311813.P15445831325645956419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311812 (A120126 n).toNat + A035042 n

end

end A311813.P15445831325645956419

/-! ## A311813.P8288314928728775259

`or(A001221(A096647(n)), A311149(n))`
-/

namespace A311813.P8288314928728775259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001221 (A096647 n).toNat) (A311149 n)

end

end A311813.P8288314928728775259

/-! ## A311813.P11634660685611698945

`A310787(n)+A010051(A273526(n+1))`
-/

namespace A311813.P11634660685611698945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310787 n + A010051 (A273526 (n + 1)).toNat

end

end A311813.P11634660685611698945

/-!
# A311814: Coordination sequence Gal.6.299.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311814, there is no canonical definition to state claims against.
-/

/-! ## A311814.P10438265438191467699

`A312021(n)-A068933(A036653(n))`
-/

namespace A311814.P10438265438191467699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312021 n - A068933 (A036653 n).toNat

end

end A311814.P10438265438191467699

/-! ## A311814.P17033909364730177587

`A314829(n)-A230632(A125196(n))`
-/

namespace A311814.P17033909364730177587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314829 n - A230632 (A125196 n).toNat

end

end A311814.P17033909364730177587

/-! ## A311814.P15292016085892791745

`A172338(n)+A001227(A196545(n+1))`
-/

namespace A311814.P15292016085892791745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172338 n + A001227 (A196545 (n + 1)).toNat

end

end A311814.P15292016085892791745

/-!
# A311815: Coordination sequence Gal.6.283.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311815, there is no canonical definition to state claims against.
-/

/-! ## A311815.P18152459303533960620

`A311843(n)-A037825(A293767(n))`
-/

namespace A311815.P18152459303533960620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311843 n - A037825 (A293767 n).toNat

end

end A311815.P18152459303533960620

/-! ## A311815.P13026036318021129175

`A064727((A110659(n)+A017077(n))²)`
-/

namespace A311815.P13026036318021129175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064727 ((A110659 n + A017077 n) ^ 2).toNat

end

end A311815.P13026036318021129175

/-! ## A311815.P11682208294567825066

`A227944(A026010(n))+A131098(n+1)`
-/

namespace A311815.P11682208294567825066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227944 (A026010 n).toNat + A131098 (n + 1)

end

end A311815.P11682208294567825066

/-! ## A311815.P9079910180961898247

`A198272(n)+A133872(A187829(n+1))`
-/

namespace A311815.P9079910180961898247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198272 n + A133872 (A187829 (n + 1)).toNat

end

end A311815.P9079910180961898247

/-! ## A311815.P2857101294663560328

`A227944(A026010(n))+record[A006257(2*n+1)]`
-/

namespace A311815.P2857101294663560328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006257 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227944 (A026010 n).toNat + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A311815.P2857101294663560328

/-!
# A311816: Coordination sequence Gal.5.95.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311816, the canonical program `A311816.P10667073270982388372` is in `Seq.B001.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A311816 has offset 0).

The definition of A311816 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2579 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A311816.P10667073270982388372

`A008574(n)+Δ[A011862(n)]`

The canonical program, it is in `Seq.B001.C011`.
-/

namespace A311816

/-- `A008574(n)+Δ[A011862(n)]` -/
def P10667073270982388372.Spec : Prop :=
  ∀ n, P10667073270982388372.a n = A311816 n

theorem P10667073270982388372.correct : P10667073270982388372.Spec := by
  intro n
  simp only [A311816]

end A311816

/-! ## A311816.P14112877291815397762

`A265187(n+1)+A008486(n)`
-/

namespace A311816.P14112877291815397762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265187 (n + 1) + A008486 n

end

end A311816.P14112877291815397762

namespace A311816

/-- `A265187(n+1)+A008486(n)` -/
def P14112877291815397762.Spec : Prop :=
  ∀ n, P14112877291815397762.a n = A311816 n

end A311816

/-! ## A311816.P12267331140512031256

`record[A280166(n)]+Δ[A011862(n)]`
-/

namespace A311816.P12267331140512031256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280166 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011862 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + (f2 (n + 1) - f2 n)

end

end A311816.P12267331140512031256

namespace A311816

/-- `record[A280166(n)]+Δ[A011862(n)]` -/
def P12267331140512031256.Spec : Prop :=
  ∀ n, P12267331140512031256.a n = A311816 n

end A311816

/-! ## A311816.P4602657413245770789

`A280166(2*n)+Δ[A011862(n)]`
-/

namespace A311816.P4602657413245770789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011862 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280166 (2 * n) + (f1 (n + 1) - f1 n)

end

end A311816.P4602657413245770789

namespace A311816

/-- `A280166(2*n)+Δ[A011862(n)]` -/
def P4602657413245770789.Spec : Prop :=
  ∀ n, P4602657413245770789.a n = A311816 n

end A311816

/-! ## A311816.P18034545929367399666

`A008486(n)+Δ[A011862(n)]+n`
-/

namespace A311816.P18034545929367399666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011862 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 n + (f1 (n + 1) - f1 n + (n : ℤ))

end

end A311816.P18034545929367399666

namespace A311816

/-- `A008486(n)+Δ[A011862(n)]+n` -/
def P18034545929367399666.Spec : Prop :=
  ∀ n, P18034545929367399666.a n = A311816 n

end A311816

/-! ## A311816.P16261343933283977371

`A265187(n+1)+A004277(n)+n`
-/

namespace A311816.P16261343933283977371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265187 (n + 1) + (A004277 n + (n : ℤ))

end

end A311816.P16261343933283977371

namespace A311816

/-- `A265187(n+1)+A004277(n)+n` -/
def P16261343933283977371.Spec : Prop :=
  ∀ n, P16261343933283977371.a n = A311816 n

end A311816

/-! ## A311816.P15125128926634869355

`A265187(n+1)+A008574(n)-n`
-/

namespace A311816.P15125128926634869355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265187 (n + 1) + (A008574 n - (n : ℤ))

end

end A311816.P15125128926634869355

namespace A311816

/-- `A265187(n+1)+A008574(n)-n` -/
def P15125128926634869355.Spec : Prop :=
  ∀ n, P15125128926634869355.a n = A311816 n

end A311816

/-! ## A311816.P7082628225984840195

`A008574(n)+A002264(∑[(n+1)²%3])`
-/

namespace A311816.P7082628225984840195
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2 % 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + A002264 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A311816.P7082628225984840195

namespace A311816

/-- `A008574(n)+A002264(∑[(n+1)²%3])` -/
def P7082628225984840195.Spec : Prop :=
  ∀ n, P7082628225984840195.a n = A311816 n

end A311816

/-! ## A311816.P7755907551717139077

`A008574(n)+A002264(∑[∑[1-n%3]])`
-/

namespace A311816.P7755907551717139077
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((n % 3 : ℕ) : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + A002264 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A311816.P7755907551717139077

namespace A311816

/-- `A008574(n)+A002264(∑[∑[1-n%3]])` -/
def P7755907551717139077.Spec : Prop :=
  ∀ n, P7755907551717139077.a n = A311816 n

end A311816

/-! ## A311816.P12784807915600982625

`A301298(n)-A004396(A004396(n))`
-/

namespace A311816.P12784807915600982625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301298 n - A004396 (A004396 n).toNat

end

end A311816.P12784807915600982625

namespace A311816

/-- `A301298(n)-A004396(A004396(n))` -/
def P12784807915600982625.Spec : Prop :=
  ∀ n, P12784807915600982625.a n = A311816 n

end A311816

/-! ## A311816.P32277797166342982

`A298786(n)+A004396(2*A004396(n))`
-/

namespace A311816.P32277797166342982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298786 n + A004396 (2 * A004396 n).toNat

end

end A311816.P32277797166342982

namespace A311816

/-- `A298786(n)+A004396(2*A004396(n))` -/
def P32277797166342982.Spec : Prop :=
  ∀ n, P32277797166342982.a n = A311816 n

end A311816

/-! ## A311816.P14157565397322469859

`A008458(n)+Δ[A011862(n)]-A005843(n)`
-/

namespace A311816.P14157565397322469859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011862 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (f1 (n + 1) - f1 n - A005843 n)

end

end A311816.P14157565397322469859

namespace A311816

/-- `A008458(n)+Δ[A011862(n)]-A005843(n)` -/
def P14157565397322469859.Spec : Prop :=
  ∀ n, P14157565397322469859.a n = A311816 n

end A311816

/-! ## A311816.P1367183570455227617

`A008620(A008620(2*n+1))+A004273(2*n)`
-/

namespace A311816.P1367183570455227617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (A008620 (2 * n + 1)).toNat + A004273 (2 * n)

end

end A311816.P1367183570455227617

namespace A311816

/-- `A008620(A008620(2*n+1))+A004273(2*n)` -/
def P1367183570455227617.Spec : Prop :=
  ∀ n, P1367183570455227617.a n = A311816 n

end A311816

/-! ## A311816.P1832091633515441618

`A265187(n+1)+A139482(n+2)-A139482(n+1)`
-/

namespace A311816.P1832091633515441618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265187 (n + 1) + (A139482 (n + 2) - A139482 (n + 1))

end

end A311816.P1832091633515441618

namespace A311816

/-- `A265187(n+1)+A139482(n+2)-A139482(n+1)` -/
def P1832091633515441618.Spec : Prop :=
  ∀ n, P1832091633515441618.a n = A311816 n

end A311816

/-! ## A311816.P12576241100143656590

`A004396(n)+A008574(n)-A004396(A004396(n))`
-/

namespace A311816.P12576241100143656590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 n + (A008574 n - A004396 (A004396 n).toNat)

end

end A311816.P12576241100143656590

namespace A311816

/-- `A004396(n)+A008574(n)-A004396(A004396(n))` -/
def P12576241100143656590.Spec : Prop :=
  ∀ n, P12576241100143656590.a n = A311816 n

end A311816

/-! ## A311816.P13897504857813291792

`A312484(n)-Δ[A011862(n)]`
-/

namespace A311816.P13897504857813291792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011862 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312484 n - (f1 (n + 1) - f1 n)

end

end A311816.P13897504857813291792

namespace A311816

/-- `A312484(n)-Δ[A011862(n)]` -/
def P13897504857813291792.Spec : Prop :=
  ∀ n, P13897504857813291792.a n = A311816 n

theorem P13897504857813291792.correct : P13897504857813291792.Spec := by
  intro n
  simp only [A311816, Nat.add_sub_cancel, A311816.P13897504857813291792.f1, A311816.P13897504857813291792.a, A311816.P10667073270982388372.f1, A311816.P10667073270982388372.a, A008574, A008574.P1300280032690682112.a, A011862, A011862.P9485299441699197278.a, A312484, A312484.P6638501064243572720.f1, A312484.P6638501064243572720.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A311816

/-! ## A311816.P1274204940188034808

`(A312484(n)+A008574(n))/2`
-/

namespace A311816.P1274204940188034808
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A312484 n + A008574 n : ℚ) / 2

end

end A311816.P1274204940188034808

namespace A311816

/-- `(A312484(n)+A008574(n))/2` -/
def P1274204940188034808.Spec : Prop :=
  ∀ n, P1274204940188034808.a n = (A311816 n : ℚ)

theorem P1274204940188034808.correct : P1274204940188034808.Spec := by
  intro n
  simp only [A311816, Nat.add_sub_cancel, A311816.P1274204940188034808.a, A311816.P10667073270982388372.f1, A311816.P10667073270982388372.a, A008574, A008574.P1300280032690682112.a, A011862, A011862.P9485299441699197278.a, A312484, A312484.P6638501064243572720.f1, A312484.P6638501064243572720.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A311816

/-! ## A311816.P11244647585724489203

`A008458(n)+A008576(n)-A314710(n)`
-/

namespace A311816.P11244647585724489203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008576 n - A314710 n)

end

end A311816.P11244647585724489203

namespace A311816

/-- `A008458(n)+A008576(n)-A314710(n)` -/
def P11244647585724489203.Spec : Prop :=
  ∀ n, P11244647585724489203.a n = A311816 n

end A311816

/-! ## A311816.P16333097259819707386

`A313026(n)-A004396(n-A004396(n))`
-/

namespace A311816.P16333097259819707386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313026 n - A004396 ((n : ℤ) - A004396 n).toNat

end

end A311816.P16333097259819707386

namespace A311816

/-- `A313026(n)-A004396(n-A004396(n))` -/
def P16333097259819707386.Spec : Prop :=
  ∀ n, P16333097259819707386.a n = A311816 n

end A311816

/-! ## A311816.P6128335734130218858

`A085268(A004273(2*n))+A004273(n+1)`
-/

namespace A311816.P6128335734130218858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085268 ((A004273 (2 * n)).toNat + 32) + A004273 (n + 1)

end

end A311816.P6128335734130218858

namespace A311816

/-- `A085268(A004273(2*n))+A004273(n+1)` -/
def P6128335734130218858.Spec : Prop :=
  ∀ n, P6128335734130218858.a n = A311816 n

end A311816

/-!
# A311817: Coordination sequence Gal.4.59.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311817, there is no canonical definition to state claims against.
-/

/-! ## A311817.P15746155615276222870

`A311263(n)+A157749(A311244(n))`
-/

namespace A311817.P15746155615276222870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311263 n + A157749 (A311244 n).toNat

end

end A311817.P15746155615276222870

/-! ## A311817.P5970173878622739808

`or(A037134(A140152(n+1)), A311688(n))`
-/

namespace A311817.P5970173878622739808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A037134 (A140152 (n + 1)).toNat) (A311688 n)

end

end A311817.P5970173878622739808

/-! ## A311817.P9867361946012479253

`A100810(A164329(n+1))+A001951(3*n)`
-/

namespace A311817.P9867361946012479253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100810 (A164329 (n + 1)).toNat + A001951 (3 * n)

end

end A311817.P9867361946012479253

/-! ## A311817.P17860660772939073392

`or(round(n*ϕ^3), A003849(A116637(n)))`
-/

namespace A311817.P17860660772939073392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (SequenceMachineLib.roundAway ((n : ℝ) * Real.goldenRatio ^ 3)) (A003849 (A116637 n).toNat)

end

end A311817.P17860660772939073392

/-! ## A311817.P1330254821231665355

`A239504(A217661(n+1))`
-/

namespace A311817.P1330254821231665355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239504 (A217661 (n + 1)).toNat

end

end A311817.P1330254821231665355

/-!
# A311818: Coordination sequence Gal.6.167.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311818, there is no canonical definition to state claims against.
-/

/-! ## A311818.P1632099799379908194

`A301301(n)+A105594(A000571(n))`
-/

namespace A311818.P1632099799379908194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301301 n + A105594 (A000571 n).toNat

end

end A311818.P1632099799379908194

/-! ## A311818.P7566768401660569949

`∑[A246370(∑[A089552(n+1)])]`
-/

namespace A311818.P7566768401660569949
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089552 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246370 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A311818.P7566768401660569949

/-! ## A311818.P11602732771550725465

`A226460(A117662(n))+A008574(n)`
-/

namespace A311818.P11602732771550725465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226460 (A117662 n).toNat + A008574 n

end

end A311818.P11602732771550725465

/-! ## A311818.P1219061269854045976

`A328891(A141214(n))+A311791(n)`
-/

namespace A311818.P1219061269854045976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328891 (A141214 n).toNat + A311791 n

end

end A311818.P1219061269854045976

/-! ## A311818.P7215838817712001235

`A328891(A141214(n))+A311792(n)`
-/

namespace A311818.P7215838817712001235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328891 (A141214 n).toNat + A311792 n

end

end A311818.P7215838817712001235

/-!
# A311819: Coordination sequence Gal.6.160.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311819, there is no canonical definition to state claims against.
-/

/-! ## A311819.P6387193016185434133

`A311820(n)-A025469(A024622(n))`
-/

namespace A311819.P6387193016185434133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311820 n - A025469 (A024622 n).toNat

end

end A311819.P6387193016185434133

/-! ## A311819.P15471868127851154840

`A311820(n)-A044941(A219676(n))`
-/

namespace A311819.P15471868127851154840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311820 n - A044941 (A219676 n).toNat

end

end A311819.P15471868127851154840

/-! ## A311819.P2582817112918872029

`A311820(n)-A102679(A184955(n))`
-/

namespace A311819.P2582817112918872029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311820 n - A102679 (A184955 n).toNat

end

end A311819.P2582817112918872029

/-! ## A311819.P1910423245938637031

`A311820(n)-A198318(A330942(n))`
-/

namespace A311819.P1910423245938637031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311820 n - A198318 (A330942 n).toNat

end

end A311819.P1910423245938637031

/-! ## A311819.P4963459899159649318

`A311820(n)+A244895(A090318(n+1))`
-/

namespace A311819.P4963459899159649318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311820 n + A244895 (A090318 (n + 1)).toNat

end

end A311819.P4963459899159649318

/-!
# A311820: Coordination sequence Gal.6.143.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311820, there is no canonical definition to state claims against.
-/

/-! ## A311820.P12748587566913431298

`A311819(n)+A184993(A082024(n))`
-/

namespace A311820.P12748587566913431298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311819 n + A184993 (A082024 n).toNat

end

end A311820.P12748587566913431298

/-! ## A311820.P14059927271293294562

`A311819(n)+A239705(A024622(n))`
-/

namespace A311820.P14059927271293294562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311819 n + A239705 (A024622 n).toNat

end

end A311820.P14059927271293294562

/-! ## A311820.P2096049275621478536

`A311819(n)+A025466(A056512(n+1))`
-/

namespace A311820.P2096049275621478536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311819 n + A025466 (A056512 (n + 1)).toNat

end

end A311820.P2096049275621478536

/-!
# A311821: Coordination sequence Gal.6.136.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311821, there is no canonical definition to state claims against.
-/

/-! ## A311821.P1861277825887217622

`A311822(n)-A239705(A024622(n))`
-/

namespace A311821.P1861277825887217622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311822 n - A239705 (A024622 n).toNat

end

end A311821.P1861277825887217622

/-! ## A311821.P7969760658802795974

`A311822(n)-A044941(A219676(n))`
-/

namespace A311821.P7969760658802795974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311822 n - A044941 (A219676 n).toNat

end

end A311821.P7969760658802795974

/-! ## A311821.P11491961440712938243

`A311822(n)-A102679(A184955(n))`
-/

namespace A311821.P11491961440712938243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311822 n - A102679 (A184955 n).toNat

end

end A311821.P11491961440712938243

/-! ## A311821.P7798101707038754412

`A311822(n)-A198318(A330942(n))`
-/

namespace A311821.P7798101707038754412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311822 n - A198318 (A330942 n).toNat

end

end A311821.P7798101707038754412

/-! ## A311821.P11959294292653258013

`A311822(n)+A244895(A090318(n+1))`
-/

namespace A311821.P11959294292653258013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311822 n + A244895 (A090318 (n + 1)).toNat

end

end A311821.P11959294292653258013

/-!
# A311822: Coordination sequence Gal.6.161.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311822, there is no canonical definition to state claims against.
-/

/-! ## A311822.P11448928830548776833

`A311821(n)+A239705(A024622(n))`
-/

namespace A311822.P11448928830548776833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311821 n + A239705 (A024622 n).toNat

end

end A311822.P11448928830548776833

/-! ## A311822.P5505819318474409066

`A311821(n)+A044941(A219676(n))`
-/

namespace A311822.P5505819318474409066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311821 n + A044941 (A219676 n).toNat

end

end A311822.P5505819318474409066

/-! ## A311822.P5997239800246673018

`A311821(n)+A102679(A184955(n))`
-/

namespace A311822.P5997239800246673018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311821 n + A102679 (A184955 n).toNat

end

end A311822.P5997239800246673018

/-! ## A311822.P11366419253489796951

`A311821(n)+A198318(A330942(n))`
-/

namespace A311822.P11366419253489796951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311821 n + A198318 (A330942 n).toNat

end

end A311822.P11366419253489796951

/-! ## A311822.P13633810196678524673

`A326016(A263159(n))+A311821(n)`
-/

namespace A311822.P13633810196678524673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326016 (A263159 n).toNat + A311821 n

end

end A311822.P13633810196678524673

/-!
# A311823: Coordination sequence Gal.6.303.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311823, there is no canonical definition to state claims against.
-/

/-! ## A311823.P1937648658933163704

`A312998(n)-A182878(A182903(n))`
-/

namespace A311823.P1937648658933163704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312998 n - A182878 (A182903 n).toNat

end

end A311823.P1937648658933163704

/-! ## A311823.P12558522923108634137

`A250120(n)-A332999(A026898(n))`
-/

namespace A311823.P12558522923108634137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - A332999 (A026898 n).toNat

end

end A311823.P12558522923108634137

/-! ## A311823.P8537065125240601431

`A311820(n)+A133010(A147057(n+1))`
-/

namespace A311823.P8537065125240601431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311820 n + A133010 (A147057 (n + 1)).toNat

end

end A311823.P8537065125240601431

/-! ## A311823.P2299230634973945977

`A260402(3*n+1)-A260390(A010551(n))`
-/

namespace A311823.P2299230634973945977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260402 (3 * n + 1) - A260390 (A010551 n).toNat

end

end A311823.P2299230634973945977

/-! ## A311823.P1510097054657475846

`A311945(n)-A025441(A341486(2*(n+5)))`
-/

namespace A311823.P1510097054657475846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311945 n - A025441 (A341486 (2 * (n + 5))).toNat

end

end A311823.P1510097054657475846

/-!
# A311824: Coordination sequence Gal.5.158.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311824, there is no canonical definition to state claims against.
-/

/-! ## A311824.P2296243567471298724

`A319161(3*n+1)+A172441(3*n+4)²%3`
-/

namespace A311824.P2296243567471298724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319161 (3 * n + 1) + Int.tmod (A172441 (3 * n + 4) ^ 2) 3

end

end A311824.P2296243567471298724

/-! ## A311824.P11905533467220651335

`A220962(A182984(n))+A130091(3*n+1)`
-/

namespace A311824.P11905533467220651335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220962 (A182984 n).toNat + A130091 (3 * n + 1)

end

end A311824.P11905533467220651335

/-! ## A311824.P12169055318022112342

`A144193(A086892(n+1))+A130091(3*n+1)`
-/

namespace A311824.P12169055318022112342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144193 (A086892 (n + 1)).toNat + A130091 (3 * n + 1)

end

end A311824.P12169055318022112342

/-! ## A311824.P17704127640482157959

`A376366(A007569(2*(n+2)))+A130091(3*n+1)`
-/

namespace A311824.P17704127640482157959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376366 (A007569 (2 * (n + 2))).toNat + A130091 (3 * n + 1)

end

end A311824.P17704127640482157959

/-! ## A311824.P6192749436396285245

`A239689(A283983(3*n+4))+A130091(3*n+1)`
-/

namespace A311824.P6192749436396285245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239689 (A283983 (3 * n + 4)).toNat + A130091 (3 * n + 1)

end

end A311824.P6192749436396285245

/-!
# A311825: Coordination sequence Gal.6.405.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311825, there is no canonical definition to state claims against.
-/

/-! ## A311825.P9379368387583558249

`A250120(n)-A368857(A356956(n+1))`
-/

namespace A311825.P9379368387583558249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - A368857 (A356956 (n + 1)).toNat

end

end A311825.P9379368387583558249

/-! ## A311825.P9531814340576199325

`A334440(A000108(n))+A172338(n)`
-/

namespace A311825.P9531814340576199325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334440 (A000108 n).toNat + A172338 n

end

end A311825.P9531814340576199325

/-! ## A311825.P885026512009507713

`A327928(A001735(n))+A311818(n)`
-/

namespace A311825.P885026512009507713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327928 (A001735 n).toNat + A311818 n

end

end A311825.P885026512009507713

/-!
# A311826: Coordination sequence Gal.5.91.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311826, there is no canonical definition to state claims against.
-/

/-! ## A311826.P17741344606732037791

`A008574(n)+A001222(A325452(n))`
-/

namespace A311826.P17741344606732037791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + A001222 (A325452 n).toNat

end

end A311826.P17741344606732037791

/-! ## A311826.P17893816277879559571

`A311825(A340998(A087475(n))+n)`
-/

namespace A311826.P17893816277879559571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311825 (A340998 ((A087475 n).toNat + 140) + (n : ℤ)).toNat

end

end A311826.P17893816277879559571

/-! ## A311826.P11807512437441950097

`A312366(n)-A236677(A322616(n))`
-/

namespace A311826.P11807512437441950097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312366 n - A236677 (A322616 n).toNat

end

end A311826.P11807512437441950097

/-! ## A311826.P17488744713436138950

`A004277(2*n)+A001222(A325452(n))`
-/

namespace A311826.P17488744713436138950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (2 * n) + A001222 (A325452 n).toNat

end

end A311826.P17488744713436138950

/-! ## A311826.P8053928737665216987

`A019425(2*n+1)+A001222(A325452(n))`
-/

namespace A311826.P8053928737665216987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019425 (2 * n + 1) + A001222 (A325452 n).toNat

end

end A311826.P8053928737665216987

/-!
# A311827: Coordination sequence Gal.6.241.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311827, there is no canonical definition to state claims against.
-/

/-! ## A311827.P8874177004914840926

`A311816(n)+A188041(A000079(n))`
-/

namespace A311827.P8874177004914840926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311816 n + A188041 (A000079 n).toNat

end

end A311827.P8874177004914840926

/-! ## A311827.P11908912602794805519

`or(A001221(A056364(n)), A311801(n))`
-/

namespace A311827.P11908912602794805519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001221 (A056364 n).toNat) (A311801 n)

end

end A311827.P11908912602794805519

/-! ## A311827.P6683464451411169179

`or(A037880(A285475(n)), A311801(n))`
-/

namespace A311827.P6683464451411169179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A037880 (A285475 n).toNat) (A311801 n)

end

end A311827.P6683464451411169179

/-! ## A311827.P12154825829352468812

`or(A107782(A265700(n)), A311196(n))`
-/

namespace A311827.P12154825829352468812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A107782 (A265700 n).toNat) (A311196 n)

end

end A311827.P12154825829352468812

/-! ## A311827.P7166122293922494394

`A311828(n)-A304572(A035959(3*(n+1)))`
-/

namespace A311827.P7166122293922494394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311828 n - A304572 (A035959 (3 * (n + 1))).toNat

end

end A311827.P7166122293922494394

/-!
# A311828: Coordination sequence Gal.6.236.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311828, there is no canonical definition to state claims against.
-/

/-! ## A311828.P5874306625412135840

`A316355(A187829(n+1)*A312529(n))`
-/

namespace A311828.P5874306625412135840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316355 (A187829 (n + 1) * A312529 n).toNat

end

end A311828.P5874306625412135840

/-! ## A311828.P17255681016208516842

`or(A188037(2^n), A311442(n))`
-/

namespace A311828.P17255681016208516842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A188037 (2 ^ n)) (A311442 n)

end

end A311828.P17255681016208516842

/-! ## A311828.P4853483195411557311

`A311822(n)+A025469(A279685(n))`
-/

namespace A311828.P4853483195411557311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311822 n + A025469 (A279685 n).toNat

end

end A311828.P4853483195411557311

/-! ## A311828.P9853058708876856877

`A311827(n)+A189816(A189788(n))`
-/

namespace A311828.P9853058708876856877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311827 n + A189816 (A189788 n).toNat

end

end A311828.P9853058708876856877

/-! ## A311828.P8458460277438481705

`A065033(A289129(4*n+2)%A247421(5*n+1))`
-/

namespace A311828.P8458460277438481705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (Int.tmod (A289129 (4 * n + 2)) (A247421 (5 * n + 1))).toNat

end

end A311828.P8458460277438481705

/-!
# A311829: Coordination sequence Gal.6.305.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311829, there is no canonical definition to state claims against.
-/

/-! ## A311829.P152986467737201413

`A311870(n)-A359546(A064281(n))`
-/

namespace A311829.P152986467737201413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311870 n - A359546 (A064281 n).toNat

end

end A311829.P152986467737201413

/-! ## A311829.P15659628782671257305

`A311822(n)-A178798(A034856(n+1))`
-/

namespace A311829.P15659628782671257305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311822 n - A178798 (A034856 (n + 1)).toNat

end

end A311829.P15659628782671257305

/-! ## A311829.P16533764278179148492

`∑[A327966(A032822(n+1)²)]`
-/

namespace A311829.P16533764278179148492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327966 (A032822 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A311829.P16533764278179148492

/-! ## A311829.P10192120630391247924

`∑[A008687(A220204(3*n+2))]`
-/

namespace A311829.P10192120630391247924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008687 (A220204 (3 * n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A311829.P10192120630391247924

/-! ## A311829.P14563638475114363221

`∑[A358552(∑[A302572(n+1)])]`
-/

namespace A311829.P14563638475114363221
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302572 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358552 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A311829.P14563638475114363221

/-!
# A311830: Coordination sequence Gal.5.180.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311830, there is no canonical definition to state claims against.
-/

/-! ## A311830.P4974399151770082719

`A316864(A038262(n))+A311453(n)`
-/

namespace A311830.P4974399151770082719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316864 (A038262 n).toNat + A311453 n

end

end A311830.P4974399151770082719

/-! ## A311830.P11157182759062166803

`or(A003982(A332868(n)), A311453(n))`
-/

namespace A311830.P11157182759062166803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A003982 (A332868 n).toNat) (A311453 n)

end

end A311830.P11157182759062166803

/-! ## A311830.P12854419939298004859

`A311453(n)+A003982(A121535(n+1))`
-/

namespace A311830.P12854419939298004859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311453 n + A003982 (A121535 (n + 1)).toNat

end

end A311830.P12854419939298004859

/-! ## A311830.P4129655847591439222

`or(A075743(A223811(n+1)), A311453(n))`
-/

namespace A311830.P4129655847591439222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A075743 (A223811 (n + 1)).toNat) (A311453 n)

end

end A311830.P4129655847591439222

/-! ## A311830.P12524328405018019428

`A311453(n)+A003982(A332868(n)+A311453(n))`
-/

namespace A311830.P12524328405018019428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311453 n + A003982 (A332868 n + A311453 n).toNat

end

end A311830.P12524328405018019428

/-!
# A311831: Coordination sequence Gal.5.121.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311831, there is no canonical definition to state claims against.
-/

/-! ## A311831.P9915109519794411685

`A010872(A056014(n))+A008574(n)`
-/

namespace A311831.P9915109519794411685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010872 (A056014 n).toNat + A008574 n

end

end A311831.P9915109519794411685

/-! ## A311831.P4253770919750274978

`A102679(A125855(n+1))+A008574(n)`
-/

namespace A311831.P4253770919750274978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102679 (A125855 (n + 1)).toNat + A008574 n

end

end A311831.P4253770919750274978

/-! ## A311831.P1944846505674147319

`A087187(A080614(n))+A008574(n)`
-/

namespace A311831.P1944846505674147319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087187 (A080614 n).toNat + A008574 n

end

end A311831.P1944846505674147319

/-! ## A311831.P7734866526165844451

`A307284(2*n)+A103919(A022894(n))`
-/

namespace A311831.P7734866526165844451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307284 (2 * n) + A103919 (A022894 n).toNat

end

end A311831.P7734866526165844451

/-! ## A311831.P10644994582175970372

`A311839(A087051(n))-∑{digits}[n, floor(#/7)]`
-/

namespace A311831.P10644994582175970372
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311839 (A087051 n).toNat - ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => ⌊(x : ℚ) / 7⌋).sum

end

end A311831.P10644994582175970372

/-!
# A311832: Coordination sequence Gal.6.176.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311832, there is no canonical definition to state claims against.
-/

/-! ## A311832.P12742537933905867825

`A311804(n)+A003982(A293323(n))`
-/

namespace A311832.P12742537933905867825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311804 n + A003982 (A293323 n).toNat

end

end A311832.P12742537933905867825

/-! ## A311832.P8441301809460483147

`A311804(n)+A267417(A091536(n)+n)`
-/

namespace A311832.P8441301809460483147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311804 n + A267417 (A091536 n + (n : ℤ)).toNat

end

end A311832.P8441301809460483147

/-! ## A311832.P16807541977522513958

`A267417(n)-(A000045(A091536(n))-A311804(n))`
-/

namespace A311832.P16807541977522513958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267417 n - (A000045 (A091536 n).toNat - A311804 n)

end

end A311832.P16807541977522513958

/-! ## A311832.P18120596291113309402

`A311804(n)-A015626(A306360(n+1))`
-/

namespace A311832.P18120596291113309402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311804 n - A015626 (A306360 (n + 1)).toNat

end

end A311832.P18120596291113309402

/-! ## A311832.P14363175966250506311

`A010051(A160430(3*n+2))+A004976(n)`
-/

namespace A311832.P14363175966250506311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A160430 (3 * n + 2)).toNat + A004976 n

end

end A311832.P14363175966250506311

/-!
# A311833: Coordination sequence Gal.6.160.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311833, there is no canonical definition to state claims against.
-/

/-! ## A311833.P8085631518780887025

`A102669(A007909(n))+A008574(n)`
-/

namespace A311833.P8085631518780887025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102669 (A007909 n).toNat + A008574 n

end

end A311833.P8085631518780887025

/-! ## A311833.P16903112681967897882

`A102669(A007909(n))+(4*n)^A052409(n²+1)`
-/

namespace A311833.P16903112681967897882
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A102669 (A007909 n).toNat : ℚ) + (4 * n : ℚ) ^ (A052409 (n ^ 2 + 1) : ℤ)

end

end A311833.P16903112681967897882

/-! ## A311833.P8312026334567808479

`A102669(A007909(n))+A004525(A022144(n))`
-/

namespace A311833.P8312026334567808479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102669 (A007909 n).toNat + A004525 (A022144 n).toNat

end

end A311833.P8312026334567808479

/-! ## A311833.P4058408273347370861

`A285592(A000079(n))+A004976(n)`
-/

namespace A311833.P4058408273347370861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285592 (A000079 n).toNat + A004976 n

end

end A311833.P4058408273347370861

/-!
# A311834: Coordination sequence Gal.4.93.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311834, there is no canonical definition to state claims against.
-/

/-! ## A311834.P16145640054598822862

`A312065(n)-A020987(A129981(n))`
-/

namespace A311834.P16145640054598822862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312065 n - A020987 (A129981 n).toNat

end

end A311834.P16145640054598822862

/-! ## A311834.P8346189751624002748

`or(A311220(n), A330025(A210174(n+1)))`
-/

namespace A311834.P8346189751624002748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A311220 n) (A330025 (A210174 (n + 1)).toNat)

end

end A311834.P8346189751624002748

/-!
# A311835: Coordination sequence Gal.6.516.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311835, there is no canonical definition to state claims against.
-/

/-! ## A311835.P6673828631045866767

`A053610(A082582(n))+A004273(2*n)`
-/

namespace A311835.P6673828631045866767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053610 (A082582 n).toNat + A004273 (2 * n)

end

end A311835.P6673828631045866767

/-! ## A311835.P1613569438456227945

`A311836(A062399(n))`
-/

namespace A311835.P1613569438456227945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311836 (A062399 n).toNat

end

end A311835.P1613569438456227945

/-! ## A311835.P6098734636888555780

`A311836(A120126(n))`
-/

namespace A311835.P6098734636888555780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311836 (A120126 n).toNat

end

end A311835.P6098734636888555780

/-! ## A311835.P16046771082784739926

`A311836(A351870(n))`
-/

namespace A311835.P16046771082784739926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311836 (A351870 n).toNat

end

end A311835.P16046771082784739926

/-! ## A311835.P9532556138602314705

`A315002(n)-A124766(n²)`
-/

namespace A311835.P9532556138602314705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315002 n - A124766 (n ^ 2)

end

end A311835.P9532556138602314705

/-!
# A311836: Coordination sequence Gal.6.530.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311836, there is no canonical definition to state claims against.
-/

/-! ## A311836.P7878195059065511634

`A122922(A202845(2*n+1))+A004275(2*n+1)`
-/

namespace A311836.P7878195059065511634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122922 (A202845 (2 * n + 1)).toNat + A004275 (2 * n + 1)

end

end A311836.P7878195059065511634

/-!
# A311837: Coordination sequence Gal.6.292.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311837, there is no canonical definition to state claims against.
-/

/-! ## A311837.P4985920149039236383

`A311838(n)-A129554(A117401(n))`
-/

namespace A311837.P4985920149039236383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311838 n - A129554 (A117401 n).toNat

end

end A311837.P4985920149039236383

/-! ## A311837.P3130268256616229139

`A311838(n)-A185274(A118053(n))`
-/

namespace A311837.P3130268256616229139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311838 n - A185274 (A118053 n).toNat

end

end A311837.P3130268256616229139

/-! ## A311837.P247247368390961642

`A311838(A062399(n))`
-/

namespace A311837.P247247368390961642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311838 (A062399 n).toNat

end

end A311837.P247247368390961642

/-! ## A311837.P8662516009603945607

`A311838(A120126(n))`
-/

namespace A311837.P8662516009603945607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311838 (A120126 n).toNat

end

end A311837.P8662516009603945607

/-! ## A311837.P7186023627900799445

`A311838(A351870(n))`
-/

namespace A311837.P7186023627900799445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311838 (A351870 n).toNat

end

end A311837.P7186023627900799445

/-!
# A311838: Coordination sequence Gal.6.278.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311838, there is no canonical definition to state claims against.
-/

/-! ## A311838.P6184499307088663854

`A311837(n)+A129554(A117401(n))`
-/

namespace A311838.P6184499307088663854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311837 n + A129554 (A117401 n).toNat

end

end A311838.P6184499307088663854

/-! ## A311838.P17535233591700082163

`A311837(n)+A185274(A118053(n))`
-/

namespace A311838.P17535233591700082163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311837 n + A185274 (A118053 n).toNat

end

end A311838.P17535233591700082163

/-! ## A311838.P18282641640360526533

`A311837(n)+A185284(A030291(n+1))`
-/

namespace A311838.P18282641640360526533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311837 n + A185284 (A030291 (n + 1)).toNat

end

end A311838.P18282641640360526533

/-!
# A311839: Coordination sequence Gal.6.420.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311839, there is no canonical definition to state claims against.
-/

/-! ## A311839.P11671262810109925008

`or(A080225(A077998(n)), A311457(n))`
-/

namespace A311839.P11671262810109925008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A080225 (A077998 n).toNat) (A311457 n)

end

end A311839.P11671262810109925008

/-! ## A311839.P3163972279363479211

`A311799(n)+A121262(A061978(n+1))`
-/

namespace A311839.P3163972279363479211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311799 n + A121262 (A061978 (n + 1)).toNat

end

end A311839.P3163972279363479211

/-! ## A311839.P12477639169214626111

`A008574(n)+A007877(A108863(n))`
-/

namespace A311839.P12477639169214626111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + A007877 (A108863 n).toNat

end

end A311839.P12477639169214626111

/-! ## A311839.P11403208707314810067

`A182907(A392703(n))+A160411(2*n+1)`
-/

namespace A311839.P11403208707314810067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182907 (A392703 n).toNat + A160411 (2 * n + 1)

end

end A311839.P11403208707314810067

/-!
# A311840: Coordination sequence Gal.6.144.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311840, there is no canonical definition to state claims against.
-/

/-! ## A311840.P9638708642282244349

`A311801(n)+A122257(A147227(n+1))`
-/

namespace A311840.P9638708642282244349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311801 n + A122257 (A147227 (n + 1)).toNat

end

end A311840.P9638708642282244349

/-! ## A311840.P11481140768178101825

`A301672(n)+A164292(A224704(n))`
-/

namespace A311840.P11481140768178101825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301672 n + A164292 (A224704 n).toNat

end

end A311840.P11481140768178101825

/-! ## A311840.P16570053236290474513

`A324824(A086872(n))+A311801(n)`
-/

namespace A311840.P16570053236290474513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324824 (A086872 n).toNat + A311801 n

end

end A311840.P16570053236290474513

/-! ## A311840.P2906962520735851054

`A311841(n)-A164885(A174617(n))`
-/

namespace A311840.P2906962520735851054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311841 n - A164885 (A174617 n).toNat

end

end A311840.P2906962520735851054

/-! ## A311840.P13927749226214079561

`A301672(n)+A186746(A157793(n))`
-/

namespace A311840.P13927749226214079561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301672 n + A186746 (A157793 n).toNat

end

end A311840.P13927749226214079561

/-!
# A311841: Coordination sequence Gal.6.145.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311841, there is no canonical definition to state claims against.
-/

/-! ## A311841.P14324926263702498424

`A311840(n)+A164885(A174617(n))`
-/

namespace A311841.P14324926263702498424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311840 n + A164885 (A174617 n).toNat

end

end A311841.P14324926263702498424

/-! ## A311841.P8143565969605847142

`A311840(n)+A174617(A174617(n)+12)`
-/

namespace A311841.P8143565969605847142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311840 n + A174617 (A174617 n + 12).toNat

end

end A311841.P8143565969605847142

/-! ## A311841.P3127153048506543103

`A301672(n)+A026800(or(1, A077168(n)))`
-/

namespace A311841.P3127153048506543103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301672 n + A026800 (Int.lor 1 (A077168 n)).toNat

end

end A311841.P3127153048506543103

/-! ## A311841.P6275661829863481273

`A352825(A087327(n+1)+1)+A008574(n)-A316569(n)`
-/

namespace A311841.P6275661829863481273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352825 (A087327 (n + 1) + 1).toNat + (A008574 n - A316569 n)

end

end A311841.P6275661829863481273

/-!
# A311842: Coordination sequence Gal.6.178.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311842, there is no canonical definition to state claims against.
-/

/-! ## A311842.P6008538958102123115

`A209900(A008458(n)-A335040(n+1))`
-/

namespace A311842.P6008538958102123115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209900 (A008458 n - A335040 (n + 1)).toNat

end

end A311842.P6008538958102123115

/-! ## A311842.P14523746902682347530

`A008574(n)+A001221(A100134(A064472(n+1)))`
-/

namespace A311842.P14523746902682347530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + A001221 (A100134 (A064472 (n + 1)).toNat).toNat

end

end A311842.P14523746902682347530

/-! ## A311842.P4646080665598407400

`A147781(A017017(n))+A313053(n)-A004525(n)`
-/

namespace A311842.P4646080665598407400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147781 (A017017 n).toNat + (A313053 n - A004525 n)

end

end A311842.P4646080665598407400

/-! ## A311842.P14946047616602569940

`A093697(A313927(n)-A092278(n))`
-/

namespace A311842.P14946047616602569940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093697 (A313927 n - A092278 n).toNat

end

end A311842.P14946047616602569940

/-! ## A311842.P620431955337116934

`A031286(A027084(n+2))+A008574(n)`
-/

namespace A311842.P620431955337116934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031286 (A027084 (n + 2)).toNat + A008574 n

end

end A311842.P620431955337116934

/-!
# A311843: Coordination sequence Gal.4.38.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311843, the canonical program `A311843.P4745182286114243014` is in `Seq.B001.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A311843 has offset 0).

The definition of A311843 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2577 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A311843.P4745182286114243014

`A008574(n)+Δ[A011861(n)]`

The canonical program, it is in `Seq.B001.C011`.
-/

namespace A311843

/-- `A008574(n)+Δ[A011861(n)]` -/
def P4745182286114243014.Spec : Prop :=
  ∀ n, P4745182286114243014.a n = A311843 n

theorem P4745182286114243014.correct : P4745182286114243014.Spec := by
  intro n
  simp only [A311843]

end A311843

/-! ## A311843.P11517489291527843883

`A004277(2*n)+Δ[A011861(n)]`
-/

namespace A311843.P11517489291527843883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011861 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (2 * n) + (f1 (n + 1) - f1 n)

end

end A311843.P11517489291527843883

namespace A311843

/-- `A004277(2*n)+Δ[A011861(n)]` -/
def P11517489291527843883.Spec : Prop :=
  ∀ n, P11517489291527843883.a n = A311843 n

end A311843

/-! ## A311843.P8620588510832039160

`A008486(n)+Δ[A011861(n)]+n`
-/

namespace A311843.P8620588510832039160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011861 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 n + (f1 (n + 1) - f1 n + (n : ℤ))

end

end A311843.P8620588510832039160

namespace A311843

/-- `A008486(n)+Δ[A011861(n)]+n` -/
def P8620588510832039160.Spec : Prop :=
  ∀ n, P8620588510832039160.a n = A311843 n

end A311843

/-! ## A311843.P8508472148891066086

`A008706(n)+Δ[A011861(n)]-n`
-/

namespace A311843.P8508472148891066086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011861 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 n + (f1 (n + 1) - f1 n - (n : ℤ))

end

end A311843.P8508472148891066086

namespace A311843

/-- `A008706(n)+Δ[A011861(n)]-n` -/
def P8508472148891066086.Spec : Prop :=
  ∀ n, P8508472148891066086.a n = A311843 n

end A311843

/-! ## A311843.P1487790370408367851

`A004773(A008486(n))+Δ[A011861(n)]`
-/

namespace A311843.P1487790370408367851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011861 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004773 (A008486 n).toNat + (f1 (n + 1) - f1 n)

end

end A311843.P1487790370408367851

namespace A311843

/-- `A004773(A008486(n))+Δ[A011861(n)]` -/
def P1487790370408367851.Spec : Prop :=
  ∀ n, P1487790370408367851.a n = A311843 n

end A311843

/-! ## A311843.P9624598758157064430

`A301293(n)-A004525(A201629(n)/2)`
-/

namespace A311843.P9624598758157064430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301293 n - A004525 (SequenceMachineLib.roundAway ((A201629 n : ℚ) / 2)).toNat

end

end A311843.P9624598758157064430

namespace A311843

/-- `A301293(n)-A004525(A201629(n)/2)` -/
def P9624598758157064430.Spec : Prop :=
  ∀ n, P9624598758157064430.a n = A311843 n

end A311843

/-! ## A311843.P18129696730909158156

`A314672(n)-A046978(A046978(n)+n)`
-/

namespace A311843.P18129696730909158156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314672 n - A046978 (A046978 n + (n : ℤ)).toNat

end

end A311843.P18129696730909158156

namespace A311843

/-- `A314672(n)-A046978(A046978(n)+n)` -/
def P18129696730909158156.Spec : Prop :=
  ∀ n, P18129696730909158156.a n = A311843 n

end A311843

/-! ## A311843.P8167913470317304150

`A301293(n)-A004525(n-A004525(n))`
-/

namespace A311843.P8167913470317304150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301293 n - A004525 ((n : ℤ) - A004525 n).toNat

end

end A311843.P8167913470317304150

namespace A311843

/-- `A301293(n)-A004525(n-A004525(n))` -/
def P8167913470317304150.Spec : Prop :=
  ∀ n, P8167913470317304150.a n = A311843 n

end A311843

/-! ## A311843.P329679434385221591

`(A312506(n)+A008574(n))/2`
-/

namespace A311843.P329679434385221591
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A312506 n + A008574 n : ℚ) / 2

end

end A311843.P329679434385221591

namespace A311843

/-- `(A312506(n)+A008574(n))/2` -/
def P329679434385221591.Spec : Prop :=
  ∀ n, P329679434385221591.a n = (A311843 n : ℚ)

theorem P329679434385221591.correct : P329679434385221591.Spec := by
  intro n
  simp only [A311843, Nat.add_sub_cancel, A311843.P329679434385221591.a, A311843.P4745182286114243014.f1, A311843.P4745182286114243014.a, A008574, A008574.P1300280032690682112.a, A011861, A011861.P4500963193198654930.a, A312506, A312506.P16390298550000536768.f1, A312506.P16390298550000536768.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A311843

/-! ## A311843.P6325621684579682546

`A004525(A004525(n))+A312140(n)-A004525(n)`
-/

namespace A311843.P6325621684579682546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A004525 n).toNat + (A312140 n - A004525 n)

end

end A311843.P6325621684579682546

namespace A311843

/-- `A004525(A004525(n))+A312140(n)-A004525(n)` -/
def P6325621684579682546.Spec : Prop :=
  ∀ n, P6325621684579682546.a n = A311843 n

theorem P6325621684579682546.correct : P6325621684579682546.Spec := by
  intro n
  simp only [A311843, Nat.add_sub_cancel, A311843.P6325621684579682546.a, A311843.P4745182286114243014.f1, A311843.P4745182286114243014.a, A004525, A004525.P4158271949796742323.a, A008574, A008574.P1300280032690682112.a, A011861, A011861.P4500963193198654930.a, A312140, A312140.P16557486338365459525.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A311843

/-! ## A311843.P12148104435939487734

`A314829(n)-A004525(A004525(n))`
-/

namespace A311843.P12148104435939487734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314829 n - A004525 (A004525 n).toNat

end

end A311843.P12148104435939487734

namespace A311843

/-- `A314829(n)-A004525(A004525(n))` -/
def P12148104435939487734.Spec : Prop :=
  ∀ n, P12148104435939487734.a n = A311843 n

end A311843

/-! ## A311843.P14445175866761768007

`A008458(n)+A008486(n)-A313561(n)`
-/

namespace A311843.P14445175866761768007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008486 n - A313561 n)

end

end A311843.P14445175866761768007

namespace A311843

/-- `A008458(n)+A008486(n)-A313561(n)` -/
def P14445175866761768007.Spec : Prop :=
  ∀ n, P14445175866761768007.a n = A311843 n

end A311843

/-! ## A311843.P2356144543007173633

`A314896(n)-A004525(n)`
-/

namespace A311843.P2356144543007173633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314896 n - A004525 n

end

end A311843.P2356144543007173633

namespace A311843

/-- `A314896(n)-A004525(n)` -/
def P2356144543007173633.Spec : Prop :=
  ∀ n, P2356144543007173633.a n = A311843 n

theorem P2356144543007173633.correct : P2356144543007173633.Spec := by
  intro n
  simp only [A311843, Nat.add_sub_cancel, A311843.P2356144543007173633.a, A311843.P4745182286114243014.f1, A311843.P4745182286114243014.a, A004525, A004525.P4158271949796742323.a, A008574, A008574.P1300280032690682112.a, A011861, A011861.P4500963193198654930.a, A314896, A314896.P16109661729483114242.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A311843

/-! ## A311843.P17873464120992630306

`A315259(n)-(A004525(n)+A004525(A004525(n)))`
-/

namespace A311843.P17873464120992630306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315259 n - (A004525 n + A004525 (A004525 n).toNat)

end

end A311843.P17873464120992630306

namespace A311843

/-- `A315259(n)-(A004525(n)+A004525(A004525(n)))` -/
def P17873464120992630306.Spec : Prop :=
  ∀ n, P17873464120992630306.a n = A311843 n

end A311843

/-! ## A311843.P12626426081674816794

`A315061(n)-A004525(A004525(n)+n)`
-/

namespace A311843.P12626426081674816794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315061 n - A004525 (A004525 n + (n : ℤ)).toNat

end

end A311843.P12626426081674816794

namespace A311843

/-- `A315061(n)-A004525(A004525(n)+n)` -/
def P12626426081674816794.Spec : Prop :=
  ∀ n, P12626426081674816794.a n = A311843 n

end A311843

/-! ## A311843.P4190348732464296482

`A046978(n)+A313292(n)-n`
-/

namespace A311843.P4190348732464296482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046978 n + (A313292 n - (n : ℤ))

end

end A311843.P4190348732464296482

namespace A311843

/-- `A046978(n)+A313292(n)-n` -/
def P4190348732464296482.Spec : Prop :=
  ∀ n, P4190348732464296482.a n = A311843 n

end A311843

/-! ## A311843.P7251446957357960626

`A313875(n)-n`
-/

namespace A311843.P7251446957357960626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313875 n - (n : ℤ)

end

end A311843.P7251446957357960626

namespace A311843

/-- `A313875(n)-n` -/
def P7251446957357960626.Spec : Prop :=
  ∀ n, P7251446957357960626.a n = A311843 n

theorem P7251446957357960626.correct : P7251446957357960626.Spec := by
  intro n
  simp only [A311843, Nat.add_sub_cancel, A311843.P7251446957357960626.a, A311843.P4745182286114243014.f1, A311843.P4745182286114243014.a, A008574, A008574.P1300280032690682112.a, A011861, A011861.P4500963193198654930.a, A313875, A313875.P9058260822961243366.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A311843

/-! ## A311843.P12626450417840143675

`A315520(n)-(A004525(A004525(n))+n)`
-/

namespace A311843.P12626450417840143675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315520 n - (A004525 (A004525 n).toNat + (n : ℤ))

end

end A311843.P12626450417840143675

namespace A311843

/-- `A315520(n)-(A004525(A004525(n))+n)` -/
def P12626450417840143675.Spec : Prop :=
  ∀ n, P12626450417840143675.a n = A311843 n

end A311843

/-! ## A311843.P13810577581489240571

`A004525(A312140(n))+2*n`
-/

namespace A311843.P13810577581489240571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A312140 n).toNat + (2 * n : ℤ)

end

end A311843.P13810577581489240571

namespace A311843

/-- `A004525(A312140(n))+2*n` -/
def P13810577581489240571.Spec : Prop :=
  ∀ n, P13810577581489240571.a n = A311843 n

end A311843

/-! ## A311843.P3116545625541047223

`A005843(n)+A004525(A312506(n))`
-/

namespace A311843.P3116545625541047223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n + A004525 (A312506 n).toNat

end

end A311843.P3116545625541047223

namespace A311843

/-- `A005843(n)+A004525(A312506(n))` -/
def P3116545625541047223.Spec : Prop :=
  ∀ n, P3116545625541047223.a n = A311843 n

end A311843

/-!
# A311844: Coordination sequence Gal.6.137.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311844, there is no canonical definition to state claims against.
-/

/-! ## A311844.P1853050017903790208

`A311847(n)-A198317(A179937(n+1))`
-/

namespace A311844.P1853050017903790208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311847 n - A198317 (A179937 (n + 1)).toNat

end

end A311844.P1853050017903790208

/-! ## A311844.P6301918028419158859

`A311845(n)-A249093(A038221(A120769(n)))`
-/

namespace A311844.P6301918028419158859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311845 n - A249093 (A038221 (A120769 n).toNat).toNat

end

end A311844.P6301918028419158859

/-! ## A311844.P893871080558083717

`record[A311845(n)]%A119325(n+1)`
-/

namespace A311844.P893871080558083717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311845 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A119325 (n + 1))

end

end A311844.P893871080558083717

/-! ## A311844.P9181222825596105064

`A311845(n)+A006516(A090318(n+1))`
-/

namespace A311844.P9181222825596105064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311845 n + A006516 (A090318 (n + 1)).toNat

end

end A311844.P9181222825596105064

/-! ## A311844.P17024664279333027792

`A351870(A311845(n))`
-/

namespace A311844.P17024664279333027792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351870 (A311845 n).toNat

end

end A311844.P17024664279333027792

/-!
# A311845: Coordination sequence Gal.6.126.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311845, there is no canonical definition to state claims against.
-/

/-! ## A311845.P13971883101452014227

`A311844(n)-A178780(A241415(n))`
-/

namespace A311845.P13971883101452014227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311844 n - A178780 (A241415 n).toNat

end

end A311845.P13971883101452014227

/-! ## A311845.P902544728918974998

`A311844(n)+A304572(A053637(n+1))`
-/

namespace A311845.P902544728918974998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311844 n + A304572 (A053637 (n + 1)).toNat

end

end A311845.P902544728918974998

/-!
# A311846: Coordination sequence Gal.6.122.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311846, there is no canonical definition to state claims against.
-/

/-! ## A311846.P11073129663718937228

`A311847(n)-A348327(A011260(n+1))`
-/

namespace A311846.P11073129663718937228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311847 n - A348327 (A011260 (n + 1)).toNat

end

end A311846.P11073129663718937228

/-! ## A311846.P11270693323155746014

`A311847(n)-A185238(A086420(n+1))`
-/

namespace A311846.P11270693323155746014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311847 n - A185238 (A086420 (n + 1)).toNat

end

end A311846.P11270693323155746014

/-! ## A311846.P11781117493692847593

`A311847(n)-A044941(A000079(n))`
-/

namespace A311846.P11781117493692847593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311847 n - A044941 (A000079 n).toNat

end

end A311846.P11781117493692847593

/-! ## A311846.P7759876579706791696

`A311847(n)-A185284(A000009(n))`
-/

namespace A311846.P7759876579706791696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311847 n - A185284 (A000009 n).toNat

end

end A311846.P7759876579706791696

/-! ## A311846.P14048296310667613781

`A311847(n)-A058348(A129176(3*n+4))`
-/

namespace A311846.P14048296310667613781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311847 n - A058348 (A129176 (3 * n + 4)).toNat

end

end A311846.P14048296310667613781

/-!
# A311847: Coordination sequence Gal.6.138.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311847, there is no canonical definition to state claims against.
-/

/-! ## A311847.P5617202513335387004

`A311846(n)+A055641(A000032(n))`
-/

namespace A311847.P5617202513335387004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311846 n + A055641 (A000032 n).toNat

end

end A311847.P5617202513335387004

/-! ## A311847.P13569751786487220810

`A348327(A011260(n+1))+A311846(n)`
-/

namespace A311847.P13569751786487220810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348327 (A011260 (n + 1)).toNat + A311846 n

end

end A311847.P13569751786487220810

/-! ## A311847.P3237553720433091852

`A311846(n)+A025469(A033483(n))`
-/

namespace A311847.P3237553720433091852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311846 n + A025469 (A033483 n).toNat

end

end A311847.P3237553720433091852

/-! ## A311847.P8382145596251638955

`A311844(n)+A198317(A179937(n+1))`
-/

namespace A311847.P8382145596251638955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311844 n + A198317 (A179937 (n + 1)).toNat

end

end A311847.P8382145596251638955

/-!
# A311848: Coordination sequence Gal.6.177.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311848, there is no canonical definition to state claims against.
-/

/-! ## A311848.P15360929138029468687

`A311440(n)+A023969(A022087(n))`
-/

namespace A311848.P15360929138029468687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311440 n + A023969 (A022087 n).toNat

end

end A311848.P15360929138029468687

/-! ## A311848.P14969084109769702284

`A311804(n)+A254114(A263337(n+1))`
-/

namespace A311848.P14969084109769702284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311804 n + A254114 (A263337 (n + 1)).toNat

end

end A311848.P14969084109769702284

/-! ## A311848.P10953219550118006173

`A311849(n)-A025456(A126683(n))`
-/

namespace A311848.P10953219550118006173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311849 n - A025456 (A126683 n).toNat

end

end A311848.P10953219550118006173

/-! ## A311848.P3156303488786427060

`A311851(n)-A023969(A128936(n))`
-/

namespace A311848.P3156303488786427060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311851 n - A023969 (A128936 n).toNat

end

end A311848.P3156303488786427060

/-!
# A311849: Coordination sequence Gal.6.227.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311849, there is no canonical definition to state claims against.
-/

/-! ## A311849.P18262502704675951621

`A311848(n)+A091444(A184955(n)+2)`
-/

namespace A311849.P18262502704675951621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311848 n + A091444 (A184955 n + 2).toNat

end

end A311849.P18262502704675951621

/-!
# A311850: Coordination sequence Gal.6.223.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311850, there is no canonical definition to state claims against.
-/

/-! ## A311850.P11658852230232937039

`A311851(n)+A244895(A184955(n))`
-/

namespace A311850.P11658852230232937039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311851 n + A244895 (A184955 n).toNat

end

end A311850.P11658852230232937039

/-! ## A311850.P2072472313051024629

`A311851(n)-A244895(A184955(n)²)`
-/

namespace A311850.P2072472313051024629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311851 n - A244895 (A184955 n ^ 2).toNat

end

end A311850.P2072472313051024629

/-! ## A311850.P9137198422561638090

`A311851(n)-A244895(A184955(n)/2)`
-/

namespace A311850.P9137198422561638090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311851 n - A244895 (SequenceMachineLib.roundAway ((A184955 n : ℚ) / 2)).toNat

end

end A311850.P9137198422561638090

/-! ## A311850.P12900260684767456757

`A351870(A311851(n))`
-/

namespace A311850.P12900260684767456757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351870 (A311851 n).toNat

end

end A311850.P12900260684767456757

/-! ## A311850.P12019818537739741416

`A311851(n)+A007814(A152046(n))`
-/

namespace A311850.P12019818537739741416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311851 n + A007814 (A152046 n).toNat

end

end A311850.P12019818537739741416

/-!
# A311851: Coordination sequence Gal.6.161.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311851, there is no canonical definition to state claims against.
-/

/-! ## A311851.P2614777914055438306

`(A312464(n)+A311228(n))/2`
-/

namespace A311851.P2614777914055438306
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A312464 n + A311228 n : ℚ) / 2

end

end A311851.P2614777914055438306

/-! ## A311851.P959649650917246377

`A004525(A312464(n)+A311228(n))`
-/

namespace A311851.P959649650917246377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A312464 n + A311228 n).toNat

end

end A311851.P959649650917246377

/-! ## A311851.P6176640382923421583

`A029578(A312464(n)+A311228(n))`
-/

namespace A311851.P6176640382923421583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029578 (A312464 n + A311228 n).toNat

end

end A311851.P6176640382923421583

/-! ## A311851.P3890844277227277495

`A000463(A311228(n)+A312464(n)-1)`
-/

namespace A311851.P3890844277227277495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (A311228 n + (A312464 n - 1)).toNat

end

end A311851.P3890844277227277495

/-! ## A311851.P16875959366296490519

`A001057(A311228(n)+A312464(n)-1)`
-/

namespace A311851.P16875959366296490519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A311228 n + (A312464 n - 1)).toNat

end

end A311851.P16875959366296490519

/-! ## A311851.P14063875648204460327

`A003602(A311228(n)+A312464(n)-1)`
-/

namespace A311851.P14063875648204460327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (A311228 n + (A312464 n - 1)).toNat

end

end A311851.P14063875648204460327

/-! ## A311851.P8835513563834094550

`A008619(A311228(n)+A312464(n)-1)`
-/

namespace A311851.P8835513563834094550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A311228 n + (A312464 n - 1)).toNat

end

end A311851.P8835513563834094550

/-! ## A311851.P7472717196586444928

`A065033(A311228(n)+A312464(n)-1)`
-/

namespace A311851.P7472717196586444928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A311228 n + (A312464 n - 1)).toNat

end

end A311851.P7472717196586444928

/-! ## A311851.P16885238106829411383

`A000463(A311228(n)-(1-A312464(n)))`
-/

namespace A311851.P16885238106829411383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (A311228 n - (1 - A312464 n)).toNat

end

end A311851.P16885238106829411383

/-! ## A311851.P4115411150066374443

`A001057(A311228(n)-(1-A312464(n)))`
-/

namespace A311851.P4115411150066374443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A311228 n - (1 - A312464 n)).toNat

end

end A311851.P4115411150066374443

/-! ## A311851.P109965276138353532

`A003602(A311228(n)-(1-A312464(n)))`
-/

namespace A311851.P109965276138353532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (A311228 n - (1 - A312464 n)).toNat

end

end A311851.P109965276138353532

/-! ## A311851.P17152831320911372435

`A008619(A311228(n)-(1-A312464(n)))`
-/

namespace A311851.P17152831320911372435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A311228 n - (1 - A312464 n)).toNat

end

end A311851.P17152831320911372435

/-! ## A311851.P17048243656972002527

`A065033(A311228(n)-(1-A312464(n)))`
-/

namespace A311851.P17048243656972002527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A311228 n - (1 - A312464 n)).toNat

end

end A311851.P17048243656972002527

/-! ## A311851.P6936143366038230258

`A004526(A311228(n)-(1-A312464(n)))+1`
-/

namespace A311851.P6936143366038230258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A311228 n - (1 - A312464 n)).toNat + 1

end

end A311851.P6936143366038230258

/-! ## A311851.P3881202726688715141

`A001281(A312464(n)+A311228(n))`
-/

namespace A311851.P3881202726688715141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A312464 n + A311228 n).toNat

end

end A311851.P3881202726688715141

/-! ## A311851.P3693404462971848047

`A004526(A312464(n)+A311228(n))`
-/

namespace A311851.P3693404462971848047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A312464 n + A311228 n).toNat

end

end A311851.P3693404462971848047

/-! ## A311851.P6404986451100782572

`A065033(A312464(n)+A311228(n))`
-/

namespace A311851.P6404986451100782572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A312464 n + A311228 n).toNat

end

end A311851.P6404986451100782572

/-! ## A311851.P15224757820218752890

`A008624(2*(A311228(n)-(1-A312464(n))))`
-/

namespace A311851.P15224757820218752890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008624 (2 * (A311228 n - (1 - A312464 n))).toNat

end

end A311851.P15224757820218752890

/-!
# A311852: Coordination sequence Gal.5.72.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311852, there is no canonical definition to state claims against.
-/

/-! ## A311852.P3498859739356596084

`A311853(n)-A005088(A081123(n))`
-/

namespace A311852.P3498859739356596084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311853 n - A005088 (A081123 n).toNat

end

end A311852.P3498859739356596084

/-! ## A311852.P7595337696371616558

`A311853(n)-A185063(n*A185063(n))`
-/

namespace A311852.P7595337696371616558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311853 n - A185063 ((n : ℤ) * A185063 n).toNat

end

end A311852.P7595337696371616558

/-! ## A311852.P5999960204239575809

`A311853(n)-A185236(n*A185236(n))`
-/

namespace A311852.P5999960204239575809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311853 n - A185236 ((n : ℤ) * A185236 n).toNat

end

end A311852.P5999960204239575809

/-!
# A311853: Coordination sequence Gal.5.61.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311853, there is no canonical definition to state claims against.
-/

/-! ## A311853.P239697082307337672

`A311855(n)-A093692(A056940(n))`
-/

namespace A311853.P239697082307337672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311855 n - A093692 (A056940 n).toNat

end

end A311853.P239697082307337672

/-! ## A311853.P8373687931186354962

`A311855(n)-A129272(A081580(n))`
-/

namespace A311853.P8373687931186354962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311855 n - A129272 (A081580 n).toNat

end

end A311853.P8373687931186354962

/-! ## A311853.P8255865918066137610

`A311855(n)-A056979(A174412(n))`
-/

namespace A311853.P8255865918066137610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311855 n - A056979 (A174412 n).toNat

end

end A311853.P8255865918066137610

/-! ## A311853.P16400218516472940011

`A311855(n)-A257994(A342891(n))`
-/

namespace A311853.P16400218516472940011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311855 n - A257994 (A342891 n).toNat

end

end A311853.P16400218516472940011

/-! ## A311853.P7327874063202334104

`A311852(n)+A005088(A081123(n))`
-/

namespace A311853.P7327874063202334104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311852 n + A005088 (A081123 n).toNat

end

end A311853.P7327874063202334104

/-!
# A311854: Coordination sequence Gal.5.57.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311854, there is no canonical definition to state claims against.
-/

/-! ## A311854.P14620604739790736331

`A311855(n)-A010051(A288762(A008472(n+1)))`
-/

namespace A311854.P14620604739790736331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311855 n - A010051 (A288762 (A008472 (n + 1)).toNat).toNat

end

end A311854.P14620604739790736331

/-! ## A311854.P10931568909582576064

`A311852(n)+A055641(A011782(n))`
-/

namespace A311854.P10931568909582576064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311852 n + A055641 (A011782 n).toNat

end

end A311854.P10931568909582576064

/-! ## A311854.P11327374985960697996

`A311855(n)-A055641(A002531(n))`
-/

namespace A311854.P11327374985960697996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311855 n - A055641 (A002531 n).toNat

end

end A311854.P11327374985960697996

/-! ## A311854.P15251067090626344074

`A311855(n)+A240328(A257110(n+1))`
-/

namespace A311854.P15251067090626344074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311855 n + A240328 (A257110 (n + 1)).toNat

end

end A311854.P15251067090626344074

/-!
# A311855: Coordination sequence Gal.3.11.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311855, there is no canonical definition to state claims against.
-/

/-! ## A311855.P17194330932406201813

`A250120(n)+A310399(n)-A219529(n)`
-/

namespace A311855.P17194330932406201813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n + (A310399 n - A219529 n)

end

end A311855.P17194330932406201813

/-! ## A311855.P9681536257692124410

`A047486(A008486(n)+1)+A310399(n)-A219529(n)`
-/

namespace A311855.P9681536257692124410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047486 (A008486 n + 1).toNat + (A310399 n - A219529 n)

end

end A311855.P9681536257692124410

/-! ## A311855.P1442217352046294797

`A047486(A008574(n)+1-n)+A310399(n)-A219529(n)`
-/

namespace A311855.P1442217352046294797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047486 (A008574 n + (1 - (n : ℤ))).toNat + (A310399 n - A219529 n)

end

end A311855.P1442217352046294797

/-! ## A311855.P3284102075187585452

`A310399(n)-A219529(n)+A315303(n)-A330025(n)`
-/

namespace A311855.P3284102075187585452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310399 n - A219529 n + (A315303 n - A330025 n)

end

end A311855.P3284102075187585452

/-! ## A311855.P18038584685618267668

`A310399(n)-A219529(n)+A315187(n)-A244895(n)`
-/

namespace A311855.P18038584685618267668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310399 n - A219529 n + (A315187 n - A244895 n)

end

end A311855.P18038584685618267668

/-! ## A311855.P13194419641171741116

`A072154(2*n)+A310399(n)-A219529(n)`
-/

namespace A311855.P13194419641171741116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072154 (2 * n) + (A310399 n - A219529 n)

end

end A311855.P13194419641171741116

/-! ## A311855.P397893854574367616

`A004525(A310398(2*n))+A310399(n)-A219529(n)`
-/

namespace A311855.P397893854574367616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A310398 (2 * n)).toNat + (A310399 n - A219529 n)

end

end A311855.P397893854574367616

/-!
# A311856: Coordination sequence Gal.6.393.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311856, there is no canonical definition to state claims against.
-/

/-! ## A311856.P1408412971539093825

`A311787(n)+A081603(A022175(n+1))`
-/

namespace A311856.P1408412971539093825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311787 n + A081603 (A022175 (n + 1)).toNat

end

end A311856.P1408412971539093825

/-! ## A311856.P13433883861101538478

`A221170(A052547(n))+A008586(n)`
-/

namespace A311856.P13433883861101538478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221170 (A052547 n).toNat + A008586 n

end

end A311856.P13433883861101538478

/-! ## A311856.P11978587902758566063

`xor(A057918(A092596(n+1)), A311458(n))`
-/

namespace A311856.P11978587902758566063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A057918 (A092596 (n + 1)).toNat) (A311458 n)

end

end A311856.P11978587902758566063

/-! ## A311856.P8123572563741866271

`xor(A211159(A268079(3*n+2)), A311843(n))`
-/

namespace A311856.P8123572563741866271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A211159 (A268079 (3 * n + 2)).toNat) (A311843 n)

end

end A311856.P8123572563741866271

/-! ## A311856.P13495811512768003180

`A172338(n)+A001876(A060535(n))`
-/

namespace A311856.P13495811512768003180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172338 n + A001876 (A060535 n).toNat

end

end A311856.P13495811512768003180

/-!
# A311857: Coordination sequence Gal.5.77.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311857, there is no canonical definition to state claims against.
-/

/-! ## A311857.P6036995708350627345

`A311858(n)-A025469(A000225(n))`
-/

namespace A311857.P6036995708350627345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311858 n - A025469 (A000225 n).toNat

end

end A311857.P6036995708350627345

/-! ## A311857.P10004027425443448591

`A311858(n)-A102683(A257418(n))`
-/

namespace A311857.P10004027425443448591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311858 n - A102683 (A257418 n).toNat

end

end A311857.P10004027425443448591

/-! ## A311857.P6795283266418039927

`A311858(n)-A044941(A131093(n+1))`
-/

namespace A311857.P6795283266418039927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311858 n - A044941 (A131093 (n + 1)).toNat

end

end A311857.P6795283266418039927

/-! ## A311857.P3545321647181543996

`A311858(n)-A025437(A187829(n+1))`
-/

namespace A311857.P3545321647181543996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311858 n - A025437 (A187829 (n + 1)).toNat

end

end A311857.P3545321647181543996

/-! ## A311857.P12022515788157556828

`A265436(A313284(n+1))`
-/

namespace A311857.P12022515788157556828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265436 (A313284 (n + 1)).toNat

end

end A311857.P12022515788157556828

/-!
# A311858: Coordination sequence Gal.5.106.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311858, there is no canonical definition to state claims against.
-/

/-! ## A311858.P6851736893761773654

`A311857(n)+A025469(A000225(n))`
-/

namespace A311858.P6851736893761773654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311857 n + A025469 (A000225 n).toNat

end

end A311858.P6851736893761773654

/-! ## A311858.P8357730506615295745

`A311857(n)+A102683(A257418(n))`
-/

namespace A311858.P8357730506615295745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311857 n + A102683 (A257418 n).toNat

end

end A311858.P8357730506615295745

/-! ## A311858.P11914044522969905716

`A311857(n)+A025437(A187829(n+1))`
-/

namespace A311858.P11914044522969905716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311857 n + A025437 (A187829 (n + 1)).toNat

end

end A311858.P11914044522969905716

/-!
# A311859: Coordination sequence Gal.5.102.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311859, there is no canonical definition to state claims against.
-/

/-! ## A311859.P16153731803681011351

`A311860(n)-A226464(A286697(n))`
-/

namespace A311859.P16153731803681011351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311860 n - A226464 (A286697 n).toNat

end

end A311859.P16153731803681011351

/-! ## A311859.P15698590870602817978

`A311860(n)-A014382(A014382(n)+1)`
-/

namespace A311859.P15698590870602817978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311860 n - A014382 (A014382 n + 1).toNat

end

end A311859.P15698590870602817978

/-! ## A311859.P4063439956077610123

`∏{e}[A000244(n), A311860(#)]`
-/

namespace A311859.P4063439956077610123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A311860 (Nat.factorization (f1 n).natAbs p)

end

end A311859.P4063439956077610123

/-! ## A311859.P7354821154687641663

`A311860(A000523(∑[2^n]))`
-/

namespace A311859.P7354821154687641663
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311860 (A000523 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A311859.P7354821154687641663

/-! ## A311859.P14131677889211192404

`A311860(n)%A270890(3*(n+1))`
-/

namespace A311859.P14131677889211192404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A311860 n) (A270890 (3 * (n + 1)))

end

end A311859.P14131677889211192404

/-!
# A311860: Coordination sequence Gal.5.71.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311860, there is no canonical definition to state claims against.
-/

/-! ## A311860.P194646302392375124

`A311845(n)+A044936(A049893(n+1))`
-/

namespace A311860.P194646302392375124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311845 n + A044936 (A049893 (n + 1)).toNat

end

end A311860.P194646302392375124

/-! ## A311860.P6108370931704792080

`A311859(n)+A014382(A014382(n)+1)`
-/

namespace A311860.P6108370931704792080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311859 n + A014382 (A014382 n + 1).toNat

end

end A311860.P6108370931704792080

/-! ## A311860.P12597874110291322480

`A311694(n)+A000035(A215904(2*(n+2)))`
-/

namespace A311860.P12597874110291322480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311694 n + A000035 (A215904 (2 * (n + 2))).toNat

end

end A311860.P12597874110291322480

/-!
# A311861: Coordination sequence Gal.6.130.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311861, the canonical program `A311861.P8116900546318081513` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A311861 has offset 0).

The definition of A311861 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2552 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A311861.P8116900546318081513

`A047588(n+1)+A311687(n)-n`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A311861

/-- `A047588(n+1)+A311687(n)-n` -/
def P8116900546318081513.Spec : Prop :=
  ∀ n, P8116900546318081513.a n = A311861 n

theorem P8116900546318081513.correct : P8116900546318081513.Spec := by
  intro n
  simp only [A311861]

end A311861

/-! ## A311861.P3197510807174183748

`A008458(n)+A008576(n)-A314706(n)`
-/

namespace A311861.P3197510807174183748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008576 n - A314706 n)

end

end A311861.P3197510807174183748

namespace A311861

/-- `A008458(n)+A008576(n)-A314706(n)` -/
def P3197510807174183748.Spec : Prop :=
  ∀ n, P3197510807174183748.a n = A311861 n

theorem P3197510807174183748.correct : P3197510807174183748.Spec := by
  intro n
  simp only [A311861, Nat.add_sub_cancel, A311861.P3197510807174183748.a, A311861.P8116900546318081513.a, A008458, A008458.P10936398443463225625.a, A008576, A008576.P14557774928279059610.a, A047588, A047588.P5089271559851880253.a, A311687, A311687.P12525606551040496369.a, A314706, A314706.P17212367775506694373.a, A004396, A004396.P17032557045289780609.a, A313057, A313057.P2669330518983403707.a, A047273, A047273.P5050912492785340480.a, A311257, A311257.P2429482415252635039.a, A002264, A002264.P5647656940077635922.a, A312909, A312909.P9930151025395677949.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A311861

/-! ## A311861.P10171761832899830109

`A313057(n)-A002264(n+1)`
-/

namespace A311861.P10171761832899830109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313057 n - A002264 (n + 1)

end

end A311861.P10171761832899830109

namespace A311861

/-- `A313057(n)-A002264(n+1)` -/
def P10171761832899830109.Spec : Prop :=
  ∀ n, P10171761832899830109.a n = A311861 n

end A311861

/-! ## A311861.P12281508118689945849

`A004396(n)+A313057(n)-n`
-/

namespace A311861.P12281508118689945849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 n + (A313057 n - (n : ℤ))

end

end A311861.P12281508118689945849

namespace A311861

/-- `A004396(n)+A313057(n)-n` -/
def P12281508118689945849.Spec : Prop :=
  ∀ n, P12281508118689945849.a n = A311861 n

theorem P12281508118689945849.correct : P12281508118689945849.Spec := by
  intro n
  simp only [A311861, Nat.add_sub_cancel, A311861.P12281508118689945849.a, A311861.P8116900546318081513.a, A004396, A004396.P17032557045289780609.a, A047588, A047588.P5089271559851880253.a, A311687, A311687.P12525606551040496369.a, A313057, A313057.P2669330518983403707.a, A047273, A047273.P5050912492785340480.a, A311257, A311257.P2429482415252635039.a, A002264, A002264.P5647656940077635922.a, A312909, A312909.P9930151025395677949.a, A004525, A004525.P4158271949796742323.a, A008574, A008574.P1300280032690682112.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A311861

/-! ## A311861.P17057226443883574794

`A008576(n)+A313057(n)-A008486(n)`
-/

namespace A311861.P17057226443883574794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008576 n + (A313057 n - A008486 n)

end

end A311861.P17057226443883574794

namespace A311861

/-- `A008576(n)+A313057(n)-A008486(n)` -/
def P17057226443883574794.Spec : Prop :=
  ∀ n, P17057226443883574794.a n = A311861 n

end A311861

/-! ## A311861.P9565698325113624925

`A008458(n)+A008486(n)-A313556(n)`
-/

namespace A311861.P9565698325113624925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008486 n - A313556 n)

end

end A311861.P9565698325113624925

namespace A311861

/-- `A008458(n)+A008486(n)-A313556(n)` -/
def P9565698325113624925.Spec : Prop :=
  ∀ n, P9565698325113624925.a n = A311861 n

end A311861

/-! ## A311861.P12562078478990242207

`A314841(n)-A004396(A004525(n))`
-/

namespace A311861.P12562078478990242207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314841 n - A004396 (A004525 n).toNat

end

end A311861.P12562078478990242207

namespace A311861

/-- `A314841(n)-A004396(A004525(n))` -/
def P12562078478990242207.Spec : Prop :=
  ∀ n, P12562078478990242207.a n = A311861 n

end A311861

/-! ## A311861.P12138243217757606384

`A314899(n)-A004525(n)`
-/

namespace A311861.P12138243217757606384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314899 n - A004525 n

end

end A311861.P12138243217757606384

namespace A311861

/-- `A314899(n)-A004525(n)` -/
def P12138243217757606384.Spec : Prop :=
  ∀ n, P12138243217757606384.a n = A311861 n

end A311861

/-! ## A311861.P7187079622618846321

`A315053(n)-A004396(n)`
-/

namespace A311861.P7187079622618846321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315053 n - A004396 n

end

end A311861.P7187079622618846321

namespace A311861

/-- `A315053(n)-A004396(n)` -/
def P7187079622618846321.Spec : Prop :=
  ∀ n, P7187079622618846321.a n = A311861 n

end A311861

/-! ## A311861.P10524634606300899345

`A315053(n)-A002264(2*n+1)`
-/

namespace A311861.P10524634606300899345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315053 n - A002264 (2 * n + 1)

end

end A311861.P10524634606300899345

namespace A311861

/-- `A315053(n)-A002264(2*n+1)` -/
def P10524634606300899345.Spec : Prop :=
  ∀ n, P10524634606300899345.a n = A311861 n

end A311861

/-! ## A311861.P11868888827633349124

`A314959(n)-A004396(2*A004525(n))`
-/

namespace A311861.P11868888827633349124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314959 n - A004396 (2 * A004525 n).toNat

end

end A311861.P11868888827633349124

namespace A311861

/-- `A314959(n)-A004396(2*A004525(n))` -/
def P11868888827633349124.Spec : Prop :=
  ∀ n, P11868888827633349124.a n = A311861 n

end A311861

/-! ## A311861.P4203586474285655149

`A313879(n)-n`
-/

namespace A311861.P4203586474285655149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313879 n - (n : ℤ)

end

end A311861.P4203586474285655149

namespace A311861

/-- `A313879(n)-n` -/
def P4203586474285655149.Spec : Prop :=
  ∀ n, P4203586474285655149.a n = A311861 n

end A311861

/-! ## A311861.P13023648889538751672

`A314222(n)-A042965(n+1)`
-/

namespace A311861.P13023648889538751672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314222 n - A042965 (n + 1)

end

end A311861.P13023648889538751672

namespace A311861

/-- `A314222(n)-A042965(n+1)` -/
def P13023648889538751672.Spec : Prop :=
  ∀ n, P13023648889538751672.a n = A311861 n

end A311861

/-! ## A311861.P13755997387756884670

`A314222(n)-A004396(2*n)`
-/

namespace A311861.P13755997387756884670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314222 n - A004396 (2 * n)

end

end A311861.P13755997387756884670

namespace A311861

/-- `A314222(n)-A004396(2*n)` -/
def P13755997387756884670.Spec : Prop :=
  ∀ n, P13755997387756884670.a n = A311861 n

end A311861

/-! ## A311861.P3992878478052061225

`A315549(n)-A047229(n+1)`
-/

namespace A311861.P3992878478052061225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315549 n - A047229 (n + 1)

end

end A311861.P3992878478052061225

namespace A311861

/-- `A315549(n)-A047229(n+1)` -/
def P3992878478052061225.Spec : Prop :=
  ∀ n, P3992878478052061225.a n = A311861 n

end A311861

/-! ## A311861.P10472201829408778245

`A315549(n)-(A004525(n)+n)`
-/

namespace A311861.P10472201829408778245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315549 n - (A004525 n + (n : ℤ))

end

end A311861.P10472201829408778245

namespace A311861

/-- `A315549(n)-(A004525(n)+n)` -/
def P10472201829408778245.Spec : Prop :=
  ∀ n, P10472201829408778245.a n = A311861 n

end A311861

/-! ## A311861.P7972195325451765217

`A047588(A313057(n)+1)-n`
-/

namespace A311861.P7972195325451765217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047588 (A313057 n + 1).toNat - (n : ℤ)

end

end A311861.P7972195325451765217

namespace A311861

/-- `A047588(A313057(n)+1)-n` -/
def P7972195325451765217.Spec : Prop :=
  ∀ n, P7972195325451765217.a n = A311861 n

end A311861

/-! ## A311861.P8718684903282711817

`A004525(A312113(n))+2*n`
-/

namespace A311861.P8718684903282711817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A312113 n).toNat + (2 * n : ℤ)

end

end A311861.P8718684903282711817

namespace A311861

/-- `A004525(A312113(n))+2*n` -/
def P8718684903282711817.Spec : Prop :=
  ∀ n, P8718684903282711817.a n = A311861 n

end A311861

/-! ## A311861.P8558232888320885704

`A004525(A312144(n))+2*n`
-/

namespace A311861.P8558232888320885704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A312144 n).toNat + (2 * n : ℤ)

end

end A311861.P8558232888320885704

namespace A311861

/-- `A004525(A312144(n))+2*n` -/
def P8558232888320885704.Spec : Prop :=
  ∀ n, P8558232888320885704.a n = A311861 n

end A311861

/-!
# A311862: Coordination sequence Gal.6.162.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311862, there is no canonical definition to state claims against.
-/

/-! ## A311862.P3670006658420387971

`A311863(n)+A178798(A315526(n))`
-/

namespace A311862.P3670006658420387971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311863 n + A178798 (A315526 n).toNat

end

end A311862.P3670006658420387971

/-! ## A311862.P12862652730963774051

`A311858(n)+A025469(A152118(n+1))`
-/

namespace A311862.P12862652730963774051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311858 n + A025469 (A152118 (n + 1)).toNat

end

end A311862.P12862652730963774051

/-! ## A311862.P6310274369301016077

`char[9]+A311858(n*A007318(A160562(n)))`
-/

namespace A311862.P6310274369301016077
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + A311858 ((n : ℤ) * A007318 (A160562 n).toNat).toNat

end

end A311862.P6310274369301016077

/-! ## A311862.P8396138110645511883

`char[9]+A311858(n)^A007318(A160562(n))`
-/

namespace A311862.P8396138110645511883
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℚ) + (A311858 n : ℚ) ^ (A007318 (A160562 n).toNat : ℤ)

end

end A311862.P8396138110645511883

/-! ## A311862.P10100179781886446871

`∑[A185816(∑[A052216(n+1)])]`
-/

namespace A311862.P10100179781886446871
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052216 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185816 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A311862.P10100179781886446871

/-!
# A311863: Coordination sequence Gal.6.269.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311863, there is no canonical definition to state claims against.
-/

/-! ## A311863.P2719249642155351591

`A089870(A311929(n*A155050(n)))`
-/

namespace A311863.P2719249642155351591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089870 (A311929 ((n : ℤ) * A155050 n).toNat).toNat

end

end A311863.P2719249642155351591

/-! ## A311863.P1649874566178784928

`A089870(A311929(n)^A155050(n))`
-/

namespace A311863.P1649874566178784928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089870 (SequenceMachineLib.roundAway ((A311929 n : ℚ) ^ (A155050 n : ℤ))).toNat

end

end A311863.P1649874566178784928

/-! ## A311863.P12207036326292393705

`A089870(lcm(A155050(n), A311929(n)))`
-/

namespace A311863.P12207036326292393705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089870 (Int.lcm (A155050 n) (A311929 n))

end

end A311863.P12207036326292393705

/-! ## A311863.P17927460230977625175

`A089870(C(A311929(n), A155050(n)))`
-/

namespace A311863.P17927460230977625175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089870 (Nat.choose (A311929 n).toNat (A155050 n).toNat)

end

end A311863.P17927460230977625175

/-! ## A311863.P6983793563180453276

`A008574(n)+A001221(A319467(n))`
-/

namespace A311863.P6983793563180453276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + A001221 (A319467 n).toNat

end

end A311863.P6983793563180453276

/-!
# A311864: Coordination sequence Gal.6.147.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311864, there is no canonical definition to state claims against.
-/

/-! ## A311864.P13609904090461237907

`A311865(n)-A011741(A197617(n+1))`
-/

namespace A311864.P13609904090461237907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311865 n - A011741 (A197617 (n + 1)).toNat

end

end A311864.P13609904090461237907

/-! ## A311864.P8201719706266781667

`A311865(n)-A072670(A186994(A292498(n)))`
-/

namespace A311864.P8201719706266781667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311865 n - A072670 (A186994 (A292498 n).toNat).toNat

end

end A311864.P8201719706266781667

/-! ## A311864.P12288820782813522210

`A311865(n)-A127708(A128570(n))`
-/

namespace A311864.P12288820782813522210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311865 n - A127708 (A128570 n).toNat

end

end A311864.P12288820782813522210

/-! ## A311864.P1451199476184866210

`A311865(A062399(n))`
-/

namespace A311864.P1451199476184866210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311865 (A062399 n).toNat

end

end A311864.P1451199476184866210

/-! ## A311864.P17161347550247957997

`A311865(A120126(n))`
-/

namespace A311864.P17161347550247957997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311865 (A120126 n).toNat

end

end A311864.P17161347550247957997

/-!
# A311865: Coordination sequence Gal.6.140.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311865, there is no canonical definition to state claims against.
-/

/-! ## A311865.P1742329628146628378

`A311864(n)+A011741(A197617(n+1))`
-/

namespace A311865.P1742329628146628378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311864 n + A011741 (A197617 (n + 1)).toNat

end

end A311865.P1742329628146628378

/-! ## A311865.P9258631981140578488

`A311864(n)+A127708(A128570(n))`
-/

namespace A311865.P9258631981140578488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311864 n + A127708 (A128570 n).toNat

end

end A311865.P9258631981140578488

/-!
# A311866: Coordination sequence Gal.6.292.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311866, there is no canonical definition to state claims against.
-/

/-! ## A311866.P3764725043383138095

`or(A249857(A116469(n+1)), A311840(n))`
-/

namespace A311866.P3764725043383138095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A249857 (A116469 (n + 1)).toNat) (A311840 n)

end

end A311866.P3764725043383138095

/-! ## A311866.P7649309936522940046

`or(A025427(A307575(n)), A311840(n))`
-/

namespace A311866.P7649309936522940046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A025427 (A307575 n).toNat) (A311840 n)

end

end A311866.P7649309936522940046

/-! ## A311866.P16872885841443524748

`A301672(n)+A046810(A007716(n))`
-/

namespace A311866.P16872885841443524748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301672 n + A046810 (A007716 n).toNat

end

end A311866.P16872885841443524748

/-! ## A311866.P12582713710078374493

`A061071(∑[A058102(n)])`
-/

namespace A311866.P12582713710078374493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058102 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061071 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A311866.P12582713710078374493

/-! ## A311866.P5507031376487571514

`∑[A296658(∑[A173680(n)])]`
-/

namespace A311866.P5507031376487571514
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173680 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296658 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A311866.P5507031376487571514

/-!
# A311867: Coordination sequence Gal.5.159.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311867, there is no canonical definition to state claims against.
-/

/-! ## A311867.P7086343598995320830

`A311868(n)-A347689(A351870(n))`
-/

namespace A311867.P7086343598995320830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311868 n - A347689 (A351870 n).toNat

end

end A311867.P7086343598995320830

/-! ## A311867.P1837698600063533189

`A311868(n)-A185284(A045344(n+1))`
-/

namespace A311867.P1837698600063533189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311868 n - A185284 (A045344 (n + 1)).toNat

end

end A311867.P1837698600063533189

/-! ## A311867.P6953251290625142400

`A311868(n)-A284975(A351870(n)+1)`
-/

namespace A311867.P6953251290625142400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311868 n - A284975 (A351870 n + 1).toNat

end

end A311867.P6953251290625142400

/-! ## A311867.P7374658527702509238

`A311868(A351870(n))+A038608(A284975(n+1))`
-/

namespace A311867.P7374658527702509238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311868 (A351870 n).toNat + A038608 (A284975 (n + 1)).toNat

end

end A311867.P7374658527702509238

/-! ## A311867.P9999954397150239864

`A311868(A087051(n))`
-/

namespace A311867.P9999954397150239864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311868 (A087051 n).toNat

end

end A311867.P9999954397150239864

/-!
# A311868: Coordination sequence Gal.5.170.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311868, there is no canonical definition to state claims against.
-/

/-! ## A311868.P10983682641255331608

`A301672(n)+A297043(ceil(∑[3^(n-2)]))`
-/

namespace A311868.P10983682641255331608
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ ((n : ℤ) - 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301672 n + A297043 ⌈∑ j ∈ Finset.range (n + 1), f1 j⌉.toNat

end

end A311868.P10983682641255331608

/-! ## A311868.P15518978210658070844

`A301672(n)+A243055(A006882(n))`
-/

namespace A311868.P15518978210658070844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301672 n + A243055 (A006882 n).toNat

end

end A311868.P15518978210658070844

/-! ## A311868.P1903053171011687202

`A311847(n)+A284975(A112486(n))`
-/

namespace A311868.P1903053171011687202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311847 n + A284975 (A112486 n).toNat

end

end A311868.P1903053171011687202

/-! ## A311868.P9539741756354036720

`A347689(n)+A311867(A351870(n))`
-/

namespace A311868.P9539741756354036720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347689 n + A311867 (A351870 n).toNat

end

end A311868.P9539741756354036720

/-! ## A311868.P9499907296377266077

`A311867(n)+A185284(A045344(n+1))`
-/

namespace A311868.P9499907296377266077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311867 n + A185284 (A045344 (n + 1)).toNat

end

end A311868.P9499907296377266077

/-!
# A311869: Coordination sequence Gal.6.396.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311869, there is no canonical definition to state claims against.
-/

/-! ## A311869.P7280649141615332153

`A311871(n)-A055641(A000942(n+1))`
-/

namespace A311869.P7280649141615332153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311871 n - A055641 (A000942 (n + 1)).toNat

end

end A311869.P7280649141615332153

/-! ## A311869.P7957754120254477811

`A311872(n)-A056170(A064731(n+1))`
-/

namespace A311869.P7957754120254477811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311872 n - A056170 (A064731 (n + 1)).toNat

end

end A311869.P7957754120254477811

/-! ## A311869.P10501758335537127571

`A311871(n)-A121373(A264003(n+1))`
-/

namespace A311869.P10501758335537127571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311871 n - A121373 (A264003 (n + 1)).toNat

end

end A311869.P10501758335537127571

/-! ## A311869.P9742741611255406412

`A301672(n)+A297036(A120588(n))`
-/

namespace A311869.P9742741611255406412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301672 n + A297036 (A120588 n).toNat

end

end A311869.P9742741611255406412

/-! ## A311869.P15897983664223944083

`A311872(n)-A185284(A269075(n+1))`
-/

namespace A311869.P15897983664223944083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311872 n - A185284 (A269075 (n + 1)).toNat

end

end A311869.P15897983664223944083

/-!
# A311870: Coordination sequence Gal.6.436.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311870, there is no canonical definition to state claims against.
-/

/-! ## A311870.P3899311858663949053

`A311872(n)-A025469(A005207(n+1))`
-/

namespace A311870.P3899311858663949053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311872 n - A025469 (A005207 (n + 1)).toNat

end

end A311870.P3899311858663949053

/-! ## A311870.P10417394214849820729

`A311872(n)-A316866(A145801(n+1))`
-/

namespace A311870.P10417394214849820729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311872 n - A316866 (A145801 (n + 1)).toNat

end

end A311870.P10417394214849820729

/-! ## A311870.P801071489560891539

`A311871(n)+A055641(A006720(n))-char[9]`
-/

namespace A311870.P801071489560891539
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311871 n + A055641 (A006720 n).toNat - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A311870.P801071489560891539

/-! ## A311870.P4368324861311257854

`A311871(n)+A185284(A088314(n))-char[9]`
-/

namespace A311870.P4368324861311257854
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311871 n + A185284 (A088314 n).toNat - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A311870.P4368324861311257854

/-! ## A311870.P16007131073193736658

`A311871(n)+A185284(A094665(n))-char[9]`
-/

namespace A311870.P16007131073193736658
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311871 n + A185284 (A094665 n).toNat - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A311870.P16007131073193736658

/-!
# A311871: Coordination sequence Gal.6.243.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311871, there is no canonical definition to state claims against.
-/

/-! ## A311871.P1058159089335689188

`A311872(n)-A235145(A131370(n))`
-/

namespace A311871.P1058159089335689188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311872 n - A235145 (A131370 n).toNat

end

end A311871.P1058159089335689188

/-! ## A311871.P9921419560412010019

`A311872(n)-A185284(3*n+1)`
-/

namespace A311871.P9921419560412010019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311872 n - A185284 (3 * n + 1)

end

end A311871.P9921419560412010019

/-! ## A311871.P14976413274954188494

`A311872(n)-A025469(n²²)`
-/

namespace A311871.P14976413274954188494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311872 n - A025469 ((n ^ 2) ^ 2)

end

end A311871.P14976413274954188494

/-! ## A311871.P17606706064478230140

`A311872(n)-A055641(A006720(n))`
-/

namespace A311871.P17606706064478230140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311872 n - A055641 (A006720 n).toNat

end

end A311871.P17606706064478230140

/-! ## A311871.P8557088921244568563

`A311872(A062399(n))`
-/

namespace A311871.P8557088921244568563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311872 (A062399 n).toNat

end

end A311871.P8557088921244568563

/-!
# A311872: Coordination sequence Gal.6.238.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311872, there is no canonical definition to state claims against.
-/

/-! ## A311872.P15321280229038688958

`A311871(n)+A235145(A131370(n))`
-/

namespace A311872.P15321280229038688958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311871 n + A235145 (A131370 n).toNat

end

end A311872.P15321280229038688958

/-! ## A311872.P14980701983510667757

`A311871(n)+A185284(3*n+1)`
-/

namespace A311872.P14980701983510667757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311871 n + A185284 (3 * n + 1)

end

end A311872.P14980701983510667757

/-! ## A311872.P5802920602361487953

`A311871(n)+A055641(A006720(n))`
-/

namespace A311872.P5802920602361487953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311871 n + A055641 (A006720 n).toNat

end

end A311872.P5802920602361487953

/-! ## A311872.P4649253921681490879

`A311871(n)+A288665(A157221(n))`
-/

namespace A311872.P4649253921681490879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311871 n + A288665 (A157221 n).toNat

end

end A311872.P4649253921681490879

/-! ## A311872.P17503444470896571349

`A311869(n)+A056170(A064731(n+1))`
-/

namespace A311872.P17503444470896571349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311869 n + A056170 (A064731 (n + 1)).toNat

end

end A311872.P17503444470896571349

/-!
# A311873: Coordination sequence Gal.6.378.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311873, there is no canonical definition to state claims against.
-/

/-! ## A311873.P14374125091790477862

`A311874(n)-A000096(A172534(n+1))`
-/

namespace A311873.P14374125091790477862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311874 n - A000096 (A172534 (n + 1)).toNat

end

end A311873.P14374125091790477862

/-! ## A311873.P1732290101744624771

`A311874(A062399(n))`
-/

namespace A311873.P1732290101744624771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311874 (A062399 n).toNat

end

end A311873.P1732290101744624771

/-! ## A311873.P2942514864386224346

`A311874(A120126(n))`
-/

namespace A311873.P2942514864386224346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311874 (A120126 n).toNat

end

end A311873.P2942514864386224346

/-! ## A311873.P17329478143123903353

`A311874(A351870(n))`
-/

namespace A311873.P17329478143123903353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311874 (A351870 n).toNat

end

end A311873.P17329478143123903353

/-!
# A311874: Coordination sequence Gal.6.385.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311874, there is no canonical definition to state claims against.
-/

/-! ## A311874.P124940416619873024

`A311873(n)+A000096(A172534(n+1))`
-/

namespace A311874.P124940416619873024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311873 n + A000096 (A172534 (n + 1)).toNat

end

end A311874.P124940416619873024

/-!
# A311875: Coordination sequence Gal.4.117.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311875, there is no canonical definition to state claims against.
-/

/-! ## A311875.P17111029845903563905

`A311526(n)+A014033(A000561(n+3))`
-/

namespace A311875.P17111029845903563905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311526 n + A014033 (A000561 (n + 3)).toNat

end

end A311875.P17111029845903563905

/-! ## A311875.P8312201971822318490

`A311879(n)-A324179(A341323(n))`
-/

namespace A311875.P8312201971822318490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311879 n - A324179 (A341323 n).toNat

end

end A311875.P8312201971822318490

/-! ## A311875.P16366316883286153818

`or(A008574(n), A339772(A112032(n)))`
-/

namespace A311875.P16366316883286153818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A008574 n) (A339772 (A112032 n).toNat)

end

end A311875.P16366316883286153818

/-! ## A311875.P6154207806214362798

`A250120(n)-A051903(A370548(n+1))`
-/

namespace A311875.P6154207806214362798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - A051903 (A370548 (n + 1)).toNat

end

end A311875.P6154207806214362798

/-! ## A311875.P8333681919408016467

`or(A008574(n), A097430(A056058(n+1)))`
-/

namespace A311875.P8333681919408016467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A008574 n) (A097430 (A056058 (n + 1)).toNat)

end

end A311875.P8333681919408016467

/-!
# A311876: Coordination sequence Gal.6.394.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311876, there is no canonical definition to state claims against.
-/

/-! ## A311876.P15359313742049141430

`or(A030190(A000392(n)), A311275(n))`
-/

namespace A311876.P15359313742049141430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A030190 (A000392 n).toNat) (A311275 n)

end

end A311876.P15359313742049141430

/-! ## A311876.P3769359803230072142

`or(A057427(A000392(n)), A311455(n))`
-/

namespace A311876.P3769359803230072142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A057427 (A000392 n).toNat) (A311455 n)

end

end A311876.P3769359803230072142

/-! ## A311876.P7870291946542475029

`or(A057427(A000392(n)), A311456(n))`
-/

namespace A311876.P7870291946542475029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A057427 (A000392 n).toNat) (A311456 n)

end

end A311876.P7870291946542475029

/-! ## A311876.P3329615156714068205

`or(A000035(A120262(n)), A311455(n))`
-/

namespace A311876.P3329615156714068205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000035 (A120262 n).toNat) (A311455 n)

end

end A311876.P3329615156714068205

/-! ## A311876.P1167998300040518380

`or(A000035(A120262(n)), A311456(n))`
-/

namespace A311876.P1167998300040518380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000035 (A120262 n).toNat) (A311456 n)

end

end A311876.P1167998300040518380

/-!
# A311877: Coordination sequence Gal.6.413.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311877, there is no canonical definition to state claims against.
-/

/-! ## A311877.P10035521083946458624

`A035232(A049918(n+4))+A008574(n)`
-/

namespace A311877.P10035521083946458624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035232 (A049918 (n + 4)).toNat + A008574 n

end

end A311877.P10035521083946458624

/-! ## A311877.P17506219023482211997

`A325334(n)+A311427(A120126(n))`
-/

namespace A311877.P17506219023482211997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325334 n + A311427 (A120126 n).toNat

end

end A311877.P17506219023482211997

/-! ## A311877.P1733336986512752872

`or(A001221(A321405(n)), A311186(n))`
-/

namespace A311877.P1733336986512752872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001221 (A321405 n).toNat) (A311186 n)

end

end A311877.P1733336986512752872

/-! ## A311877.P11950523954951237993

`or(A001221(A321405(n)), A311801(n))`
-/

namespace A311877.P11950523954951237993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001221 (A321405 n).toNat) (A311801 n)

end

end A311877.P11950523954951237993

/-! ## A311877.P14263637219271996326

`or(A008574(n), A051903(A374619(n)))`
-/

namespace A311877.P14263637219271996326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A008574 n) (A051903 (A374619 n).toNat)

end

end A311877.P14263637219271996326

/-!
# A311878: Coordination sequence Gal.6.519.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311878, there is no canonical definition to state claims against.
-/

/-! ## A311878.P11366946514663585920

`A247973(A008579(n)+n)`
-/

namespace A311878.P11366946514663585920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247973 (A008579 n + (n : ℤ)).toNat

end

end A311878.P11366946514663585920

/-! ## A311878.P2881741953144048401

`A311879(xor(n, A172534(n+1)))`
-/

namespace A311878.P2881741953144048401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311879 (Int.xor (n : ℤ) (A172534 (n + 1))).toNat

end

end A311878.P2881741953144048401

/-! ## A311878.P1933550973664609990

`A311879(n)-A000096(A172534(n+1))`
-/

namespace A311878.P1933550973664609990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311879 n - A000096 (A172534 (n + 1)).toNat

end

end A311878.P1933550973664609990

/-! ## A311878.P15055363857130294871

`A311879(n)-A335446(A201235(n+1))`
-/

namespace A311878.P15055363857130294871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311879 n - A335446 (A201235 (n + 1)).toNat

end

end A311878.P15055363857130294871

/-! ## A311878.P12607612559645305093

`A311879(A062399(n))`
-/

namespace A311878.P12607612559645305093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311879 (A062399 n).toNat

end

end A311878.P12607612559645305093

/-!
# A311879: Coordination sequence Gal.6.534.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311879, there is no canonical definition to state claims against.
-/

/-! ## A311879.P16093508535169257667

`A311878(n)+A000096(A172534(n+1))`
-/

namespace A311879.P16093508535169257667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311878 n + A000096 (A172534 (n + 1)).toNat

end

end A311879.P16093508535169257667

/-! ## A311879.P499730706165425971

`A335446(A201235(n+1))+A311878(n)`
-/

namespace A311879.P499730706165425971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335446 (A201235 (n + 1)).toNat + A311878 n

end

end A311879.P499730706165425971

/-! ## A311879.P9196623217839032932

`A247973(A008579(n)+n)+A000096(A172534(n+1))`
-/

namespace A311879.P9196623217839032932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247973 (A008579 n + (n : ℤ)).toNat + A000096 (A172534 (n + 1)).toNat

end

end A311879.P9196623217839032932

/-! ## A311879.P3864759571093110223

`A335446(A201235(n+1))+A247973(A008579(n)+n)`
-/

namespace A311879.P3864759571093110223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335446 (A201235 (n + 1)).toNat + A247973 (A008579 n + (n : ℤ)).toNat

end

end A311879.P3864759571093110223

/-!
# A311880: Coordination sequence Gal.6.376.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311880, there is no canonical definition to state claims against.
-/

/-! ## A311880.P3231881558305905961

`A311857(n)+A178798(p?[floor(5*n/3)])`
-/

namespace A311880.P3231881558305905961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊5 * ((n : ℚ) / 3)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311857 n + A178798 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A311880.P3231881558305905961

/-! ## A311880.P13971692956618607531

`A311858(n)+A178798(p?[floor(5*n/3)])`
-/

namespace A311880.P13971692956618607531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊5 * ((n : ℚ) / 3)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311858 n + A178798 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A311880.P13971692956618607531

/-! ## A311880.P7775951194333652837

`A311807(n)+A051755(n+2)%A001221(2*A000032(2*n))`
-/

namespace A311880.P7775951194333652837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311807 n + Int.tmod (A051755 (n + 2)) (A001221 (2 * A000032 (2 * n)).toNat)

end

end A311880.P7775951194333652837

/-! ## A311880.P14952547662814750980

`A311136(n)+A001221(A213092(n))`
-/

namespace A311880.P14952547662814750980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311136 n + A001221 (A213092 n).toNat

end

end A311880.P14952547662814750980

/-! ## A311880.P17804303692789968011

`A311314(n)+A221166(A000078(n))`
-/

namespace A311880.P17804303692789968011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311314 n + A221166 (A000078 n).toNat

end

end A311880.P17804303692789968011

/-!
# A311881: Coordination sequence Gal.5.183.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311881, there is no canonical definition to state claims against.
-/

/-! ## A311881.P12140739758764080709

`A318306(A103293(n))+A008574(n)`
-/

namespace A311881.P12140739758764080709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318306 (A103293 n).toNat + A008574 n

end

end A311881.P12140739758764080709

/-! ## A311881.P13676632431698331446

`A311458(n)+A141728(A052905(n))`
-/

namespace A311881.P13676632431698331446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311458 n + A141728 (A052905 n).toNat

end

end A311881.P13676632431698331446

/-! ## A311881.P12054692741390199691

`or(A141728(A052905(n)), A311843(n))`
-/

namespace A311881.P12054692741390199691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A141728 (A052905 n).toNat) (A311843 n)

end

end A311881.P12054692741390199691

/-! ## A311881.P4694859049911495499

`A311293(n)+A065043(A000108(n)+1)`
-/

namespace A311881.P4694859049911495499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311293 n + A065043 (A000108 n + 1).toNat

end

end A311881.P4694859049911495499

/-! ## A311881.P9388011055958310175

`or(A031346(A098642(n+1)), A311843(n))`
-/

namespace A311881.P9388011055958310175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A031346 (A098642 (n + 1)).toNat) (A311843 n)

end

end A311881.P9388011055958310175

/-!
# A311882: Coordination sequence Gal.6.179.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311882, there is no canonical definition to state claims against.
-/

/-! ## A311882.P2112021067562919959

`A311883(n)-A006927(A004885(n+1))`
-/

namespace A311882.P2112021067562919959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311883 n - A006927 (A004885 (n + 1)).toNat

end

end A311882.P2112021067562919959

/-! ## A311882.P10205893430346501967

`A311883(n)-A006927(12*A006927(n))`
-/

namespace A311882.P10205893430346501967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311883 n - A006927 (12 * A006927 n).toNat

end

end A311882.P10205893430346501967

/-! ## A311882.P14756081726658820985

`A311883(n)%A250241(2*n+3)`
-/

namespace A311882.P14756081726658820985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A311883 n) (A250241 (2 * n + 3))

end

end A311882.P14756081726658820985

/-! ## A311882.P8864229969686710422

`A311883(n)+A000038(A006720(n))`
-/

namespace A311882.P8864229969686710422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311883 n + A000038 (A006720 n).toNat

end

end A311882.P8864229969686710422

/-!
# A311884: Coordination sequence Gal.6.188.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311884, there is no canonical definition to state claims against.
-/

/-! ## A311884.P9453013392803791857

`A311885(n)-A185284(A033627(n+1))`
-/

namespace A311884.P9453013392803791857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311885 n - A185284 (A033627 (n + 1)).toNat

end

end A311884.P9453013392803791857

/-! ## A311884.P12250766594844289188

`A311885(n)-A185284(A347742(n))`
-/

namespace A311884.P12250766594844289188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311885 n - A185284 (A347742 n).toNat

end

end A311884.P12250766594844289188

/-! ## A311884.P12661029016538843434

`A311885(n)-A185284(A008578(n+1))`
-/

namespace A311884.P12661029016538843434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311885 n - A185284 (A008578 (n + 1)).toNat

end

end A311884.P12661029016538843434

/-! ## A311884.P11153071168552570046

`A311885(A324662(∑[n]))`
-/

namespace A311884.P11153071168552570046
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311885 (A324662 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A311884.P11153071168552570046

/-! ## A311884.P11010983259478443862

`A311885(n)%A301712(2^n)`
-/

namespace A311884.P11010983259478443862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A311885 n) (A301712 (2 ^ n))

end

end A311884.P11010983259478443862

/-!
# A311885: Coordination sequence Gal.6.172.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311885, there is no canonical definition to state claims against.
-/

/-! ## A311885.P17301890831053253065

`A311884(n)+A185284(A033627(n+1))`
-/

namespace A311885.P17301890831053253065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311884 n + A185284 (A033627 (n + 1)).toNat

end

end A311885.P17301890831053253065

/-! ## A311885.P1094368557374554930

`A311884(n)+A185284(A008578(n+1))`
-/

namespace A311885.P1094368557374554930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311884 n + A185284 (A008578 (n + 1)).toNat

end

end A311885.P1094368557374554930

/-!
# A311886: Coordination sequence Gal.4.114.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311886, there is no canonical definition to state claims against.
-/

/-! ## A311886.P17955670227921934720

`A008579(n)-A228487(C(n, floor(n/3)))`
-/

namespace A311886.P17955670227921934720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008579 n - A228487 (Nat.choose n ⌊(n : ℚ) / 3⌋.toNat)

end

end A311886.P17955670227921934720

/-! ## A311886.P18303834316209509474

`A324179(A341323(n))+A311879(n)`
-/

namespace A311886.P18303834316209509474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324179 (A341323 n).toNat + A311879 n

end

end A311886.P18303834316209509474

/-! ## A311886.P15767375373193512672

`A311970(n)-A011713(A001815(n))`
-/

namespace A311886.P15767375373193512672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311970 n - A011713 (A001815 n).toNat

end

end A311886.P15767375373193512672

/-! ## A311886.P16357660813452573324

`xor(A036864(A005176(n)), A311889(n))`
-/

namespace A311886.P16357660813452573324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A036864 (A005176 n).toNat) (A311889 n)

end

end A311886.P16357660813452573324

/-! ## A311886.P16536821583851558664

`or(A001222(A208927(n+1)), A311439(n))`
-/

namespace A311886.P16536821583851558664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001222 (A208927 (n + 1)).toNat) (A311439 n)

end

end A311886.P16536821583851558664

/-!
# A311887: Coordination sequence Gal.4.49.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311887, there is no canonical definition to state claims against.
-/

/-! ## A311887.P17259576951669082785

`A301672(n)+A037800(A298096(n+1))`
-/

namespace A311887.P17259576951669082785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301672 n + A037800 (A298096 (n + 1)).toNat

end

end A311887.P17259576951669082785

/-! ## A311887.P9345819442020521479

`or(A004976(n), A025911(A178181(n)))`
-/

namespace A311887.P9345819442020521479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A004976 n) (A025911 (A178181 n).toNat)

end

end A311887.P9345819442020521479

/-! ## A311887.P2292106324457593678

`or(A001221(A005034(n)), A311262(n))`
-/

namespace A311887.P2292106324457593678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001221 (A005034 n).toNat) (A311262 n)

end

end A311887.P2292106324457593678

/-! ## A311887.P4526357271544601403

`or(A001221(A352857(n)), A311459(n))`
-/

namespace A311887.P4526357271544601403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001221 (A352857 n).toNat) (A311459 n)

end

end A311887.P4526357271544601403

/-! ## A311887.P16088434163489576696

`or(A001222(A352857(n)), A311458(n))`
-/

namespace A311887.P16088434163489576696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001222 (A352857 n).toNat) (A311458 n)

end

end A311887.P16088434163489576696

/-!
# A311888: Coordination sequence Gal.4.45.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311888, there is no canonical definition to state claims against.
-/

/-! ## A311888.P1936079829962292963

`A301293(n)-A043545(A209626(n))`
-/

namespace A311888.P1936079829962292963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301293 n - A043545 (A209626 n).toNat

end

end A311888.P1936079829962292963

/-! ## A311888.P9732534256605570333

`or(A001222(A146571(n+1)), A311861(n))`
-/

namespace A311888.P9732534256605570333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001222 (A146571 (n + 1)).toNat) (A311861 n)

end

end A311888.P9732534256605570333

/-! ## A311888.P12509103938484924907

`A311288(n)+A065043(A000110(n)+1)`
-/

namespace A311888.P12509103938484924907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311288 n + A065043 (A000110 n + 1).toNat

end

end A311888.P12509103938484924907

/-! ## A311888.P8128451582993854728

`A299405(n)-A106344(A067527(2*(n+1)))`
-/

namespace A311888.P8128451582993854728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299405 n - A106344 (A067527 (2 * (n + 1))).toNat

end

end A311888.P8128451582993854728

/-!
# A311889: Coordination sequence Gal.6.129.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311889, the canonical program `A311889.P1219721333135851208` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A311889 has offset 0).

The definition of A311889 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2476 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A311889.P1219721333135851208

`A008574(n)+A004396(A312507(n)-A008574(n))`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A311889

/-- `A008574(n)+A004396(A312507(n)-A008574(n))` -/
def P1219721333135851208.Spec : Prop :=
  ∀ n, P1219721333135851208.a n = A311889 n

theorem P1219721333135851208.correct : P1219721333135851208.Spec := by
  intro n
  simp only [A311889]

end A311889

/-! ## A311889.P2730693817902901437

`A008458(n)+A008574(n)-A315702(n)`
-/

namespace A311889.P2730693817902901437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A315702 n)

end

end A311889.P2730693817902901437

namespace A311889

/-- `A008458(n)+A008574(n)-A315702(n)` -/
def P2730693817902901437.Spec : Prop :=
  ∀ n, P2730693817902901437.a n = A311889 n

end A311889

/-! ## A311889.P6704434549635792199

`A004525(A312151(n))+2*n`
-/

namespace A311889.P6704434549635792199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A312151 n).toNat + (2 * n : ℤ)

end

end A311889.P6704434549635792199

namespace A311889

/-- `A004525(A312151(n))+2*n` -/
def P6704434549635792199.Spec : Prop :=
  ∀ n, P6704434549635792199.a n = A311889 n

end A311889

/-! ## A311889.P16652806560071368488

`A005843(n)+A004525(A312151(n))`
-/

namespace A311889.P16652806560071368488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n + A004525 (A312151 n).toNat

end

end A311889.P16652806560071368488

namespace A311889

/-- `A005843(n)+A004525(A312151(n))` -/
def P16652806560071368488.Spec : Prop :=
  ∀ n, P16652806560071368488.a n = A311889 n

end A311889

/-! ## A311889.P3449496515220564659

`2*A008574(n)-A004396(A315650(n))`
-/

namespace A311889.P3449496515220564659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008574 n - A004396 (A315650 n).toNat

end

end A311889.P3449496515220564659

namespace A311889

/-- `2*A008574(n)-A004396(A315650(n))` -/
def P3449496515220564659.Spec : Prop :=
  ∀ n, P3449496515220564659.a n = A311889 n

end A311889

/-! ## A311889.P7376282564005819119

`A004396(A312507(n)+2*n)`
-/

namespace A311889.P7376282564005819119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A312507 n + (2 * n : ℤ)).toNat

end

end A311889.P7376282564005819119

namespace A311889

/-- `A004396(A312507(n)+2*n)` -/
def P7376282564005819119.Spec : Prop :=
  ∀ n, P7376282564005819119.a n = A311889 n

end A311889

/-! ## A311889.P1964463830719678359

`A004396(A312507(n)+n+n)`
-/

namespace A311889.P1964463830719678359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A312507 n + (n : ℤ) + (n : ℤ)).toNat

end

end A311889.P1964463830719678359

namespace A311889

/-- `A004396(A312507(n)+n+n)` -/
def P1964463830719678359.Spec : Prop :=
  ∀ n, P1964463830719678359.a n = A311889 n

end A311889

/-! ## A311889.P14922037481287050479

`A004396(2*A004396(A315052(n)))`
-/

namespace A311889.P14922037481287050479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (2 * A004396 (A315052 n).toNat).toNat

end

end A311889.P14922037481287050479

namespace A311889

/-- `A004396(2*A004396(A315052(n)))` -/
def P14922037481287050479.Spec : Prop :=
  ∀ n, P14922037481287050479.a n = A311889 n

end A311889

/-! ## A311889.P17155041393314858008

`A004525(A312151(n)+A008574(n))`
-/

namespace A311889.P17155041393314858008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A312151 n + A008574 n).toNat

end

end A311889.P17155041393314858008

namespace A311889

/-- `A004525(A312151(n)+A008574(n))` -/
def P17155041393314858008.Spec : Prop :=
  ∀ n, P17155041393314858008.a n = A311889 n

end A311889

/-! ## A311889.P2560508604100803002

`A068962(2*A313899(n))`
-/

namespace A311889.P2560508604100803002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068962 (2 * A313899 n).toNat

end

end A311889.P2560508604100803002

namespace A311889

/-- `A068962(2*A313899(n))` -/
def P2560508604100803002.Spec : Prop :=
  ∀ n, P2560508604100803002.a n = A311889 n

end A311889

/-! ## A311889.P1563640339093220317

`A068962(2*A313918(n))`
-/

namespace A311889.P1563640339093220317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068962 (2 * A313918 n).toNat

end

end A311889.P1563640339093220317

namespace A311889

/-- `A068962(2*A313918(n))` -/
def P1563640339093220317.Spec : Prop :=
  ∀ n, P1563640339093220317.a n = A311889 n

end A311889

/-! ## A311889.P16042346343985469443

`A068962(2*A314133(n))`
-/

namespace A311889.P16042346343985469443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068962 (2 * A314133 n).toNat

end

end A311889.P16042346343985469443

namespace A311889

/-- `A068962(2*A314133(n))` -/
def P16042346343985469443.Spec : Prop :=
  ∀ n, P16042346343985469443.a n = A311889 n

end A311889

/-! ## A311889.P10445195306876987596

`A068962(2*A314149(n))`
-/

namespace A311889.P10445195306876987596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068962 (2 * A314149 n).toNat

end

end A311889.P10445195306876987596

namespace A311889

/-- `A068962(2*A314149(n))` -/
def P10445195306876987596.Spec : Prop :=
  ∀ n, P10445195306876987596.a n = A311889 n

end A311889

/-! ## A311889.P11457966815906098602

`A068962(2*A314194(n))`
-/

namespace A311889.P11457966815906098602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068962 (2 * A314194 n).toNat

end

end A311889.P11457966815906098602

namespace A311889

/-- `A068962(2*A314194(n))` -/
def P11457966815906098602.Spec : Prop :=
  ∀ n, P11457966815906098602.a n = A311889 n

end A311889

/-! ## A311889.P15502354259003629063

`A068962(2*A314210(n))`
-/

namespace A311889.P15502354259003629063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068962 (2 * A314210 n).toNat

end

end A311889.P15502354259003629063

namespace A311889

/-- `A068962(2*A314210(n))` -/
def P15502354259003629063.Spec : Prop :=
  ∀ n, P15502354259003629063.a n = A311889 n

end A311889

/-!
# A311890: Coordination sequence Gal.6.397.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311890, there is no canonical definition to state claims against.
-/

/-! ## A311890.P7017397613676309834

`or(A213911(A038383(n)), A311829(n))`
-/

namespace A311890.P7017397613676309834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A213911 (A038383 n).toNat) (A311829 n)

end

end A311890.P7017397613676309834

/-! ## A311890.P8006715210290907902

`A313075(n)-A046645(A181999(n))-A343630(n)`
-/

namespace A311890.P8006715210290907902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313075 n - A046645 (A181999 n).toNat - A343630 n

end

end A311890.P8006715210290907902

/-! ## A311890.P15808578900247090586

`or(4*n, A023416(A229161(n+1)))`
-/

namespace A311890.P15808578900247090586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (4 * n : ℤ) (A023416 (A229161 (n + 1)).toNat)

end

end A311890.P15808578900247090586

/-! ## A311890.P14410102811540185380

`A343029(A208736(n))+A008574(n)`
-/

namespace A311890.P14410102811540185380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343029 (A208736 n).toNat + A008574 n

end

end A311890.P14410102811540185380

/-! ## A311890.P3818365519609104069

`A311863(n)+A210717(A110135(n))`
-/

namespace A311890.P3818365519609104069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311863 n + A210717 (A110135 n).toNat

end

end A311890.P3818365519609104069

/-!
# A311891: Coordination sequence Gal.6.415.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311891, there is no canonical definition to state claims against.
-/

/-! ## A311891.P7980668063034546035

`A311892(n)+A178798(A000124(n))`
-/

namespace A311891.P7980668063034546035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311892 n + A178798 (A000124 n).toNat

end

end A311891.P7980668063034546035

/-! ## A311891.P2113400988131254410

`A311892(n)-A163351(A306860(n))`
-/

namespace A311891.P2113400988131254410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311892 n - A163351 (A306860 n).toNat

end

end A311891.P2113400988131254410

/-! ## A311891.P17538680409618082063

`A311480(n)+A079998(A080001(3*(n+1)))`
-/

namespace A311891.P17538680409618082063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311480 n + A079998 (A080001 (3 * (n + 1))).toNat

end

end A311891.P17538680409618082063

/-! ## A311891.P5742047529717058172

`A311895(n)-A338326(A263341(3*n+4))`
-/

namespace A311891.P5742047529717058172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311895 n - A338326 (A263341 (3 * n + 4)).toNat

end

end A311891.P5742047529717058172

/-! ## A311891.P14604223695312935204

`A250120(n)-A193330(abs(n*∑[(-2)^n]))`
-/

namespace A311891.P14604223695312935204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-2) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - A193330 |(n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)|.toNat

end

end A311891.P14604223695312935204

/-!
# A311892: Coordination sequence Gal.6.430.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311892, there is no canonical definition to state claims against.
-/

/-! ## A311892.P5919191828186112565

`A311891(n)+A163351(A306860(n))`
-/

namespace A311892.P5919191828186112565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311891 n + A163351 (A306860 n).toNat

end

end A311892.P5919191828186112565

/-! ## A311892.P10769817971050480354

`A311891(n)-A178798(A000124(n))`
-/

namespace A311892.P10769817971050480354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311891 n - A178798 (A000124 n).toNat

end

end A311892.P10769817971050480354

/-! ## A311892.P5746471580317118285

`A311896(n)-A011744(A346081(n))`
-/

namespace A311892.P5746471580317118285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311896 n - A011744 (A346081 n).toNat

end

end A311892.P5746471580317118285

/-! ## A311892.P6044322018012212996

`or(A011741(A306447(n+1)), A311865(n))`
-/

namespace A311892.P6044322018012212996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A011741 (A306447 (n + 1)).toNat) (A311865 n)

end

end A311892.P6044322018012212996

/-! ## A311892.P1523905751119999121

`or(A004539(A342879(n+1)), A311312(n))`
-/

namespace A311892.P1523905751119999121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A004539 (A342879 (n + 1)).toNat) (A311312 n)

end

end A311892.P1523905751119999121

/-!
# A311893: Coordination sequence Gal.6.461.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311893, there is no canonical definition to state claims against.
-/

/-! ## A311893.P14987015867308560375

`A311894(n)+(A217309(3*(n+1))+2)%3-1`
-/

namespace A311893.P14987015867308560375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311894 n + (Int.tmod (A217309 (3 * (n + 1)) + 2) 3 - 1)

end

end A311893.P14987015867308560375

/-! ## A311893.P2284547872910663593

`A311894(n)-A276404(A178682(n))`
-/

namespace A311893.P2284547872910663593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311894 n - A276404 (A178682 n).toNat

end

end A311893.P2284547872910663593

/-! ## A311893.P5286717699283380306

`A311894(n)-A341027(A079458(n+1))`
-/

namespace A311893.P5286717699283380306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311894 n - A341027 ((A079458 (n + 1)).toNat + 220)

end

end A311893.P5286717699283380306

/-! ## A311893.P14623137892540683781

`A311894(n)-A088722(A014137(n+1))`
-/

namespace A311893.P14623137892540683781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311894 n - A088722 (A014137 (n + 1)).toNat

end

end A311893.P14623137892540683781

/-! ## A311893.P17072866297942499721

`A311894(n)-A185238(A177911(n+1))`
-/

namespace A311893.P17072866297942499721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311894 n - A185238 (A177911 (n + 1)).toNat

end

end A311893.P17072866297942499721

/-!
# A311894: Coordination sequence Gal.6.403.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311894, there is no canonical definition to state claims against.
-/

/-! ## A311894.P6133303886167406699

`A311961(n)-A124761(A088698(n))`
-/

namespace A311894.P6133303886167406699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311961 n - A124761 (A088698 n).toNat

end

end A311894.P6133303886167406699

/-! ## A311894.P17388934571100301916

`A130824(n)+A005811(A014137(n))`
-/

namespace A311894.P17388934571100301916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130824 n + A005811 (A014137 n).toNat

end

end A311894.P17388934571100301916

/-! ## A311894.P3846369810739730560

`A301293(n)-A010872(A155163(n+2))`
-/

namespace A311894.P3846369810739730560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301293 n - A010872 (A155163 (n + 2)).toNat

end

end A311894.P3846369810739730560

/-! ## A311894.P7400948011337857685

`A311893(n)-A240328(A072500(2*(n+2)))`
-/

namespace A311894.P7400948011337857685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311893 n - A240328 (A072500 (2 * (n + 2))).toNat

end

end A311894.P7400948011337857685

/-! ## A311894.P10095094539811906208

`A311893(n)+A185238(A177911(n+1))`
-/

namespace A311894.P10095094539811906208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311893 n + A185238 (A177911 (n + 1)).toNat

end

end A311894.P10095094539811906208

/-!
# A311895: Coordination sequence Gal.5.79.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311895, there is no canonical definition to state claims against.
-/

/-! ## A311895.P15052884481979707042

`A311896(n)-A185284(2^floor(n/2))`
-/

namespace A311895.P15052884481979707042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311896 n - A185284 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ))).toNat

end

end A311895.P15052884481979707042

/-! ## A311895.P12038609458805991736

`A311843(n)+A001222(A146635(n+1))`
-/

namespace A311895.P12038609458805991736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311843 n + A001222 (A146635 (n + 1)).toNat

end

end A311895.P12038609458805991736

/-! ## A311895.P12390500400479406426

`A250120(n)-A001221(A104500(n+1))`
-/

namespace A311895.P12390500400479406426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - A001221 (A104500 (n + 1)).toNat

end

end A311895.P12390500400479406426

/-! ## A311895.P6464559541752275759

`A072154(2*n)-A001221(A104500(n+1))`
-/

namespace A311895.P6464559541752275759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072154 (2 * n) - A001221 (A104500 (n + 1)).toNat

end

end A311895.P6464559541752275759

/-! ## A311895.P2621359687955616785

`A047486(A008486(n)+1)-A001221(A104500(n+1))`
-/

namespace A311895.P2621359687955616785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047486 (A008486 n + 1).toNat - A001221 (A104500 (n + 1)).toNat

end

end A311895.P2621359687955616785

/-!
# A311896: Coordination sequence Gal.5.74.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311896, there is no canonical definition to state claims against.
-/

/-! ## A311896.P16373123961296019823

`A311892(n)+A011744(A346081(n))`
-/

namespace A311896.P16373123961296019823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311892 n + A011744 (A346081 n).toNat

end

end A311896.P16373123961296019823

/-! ## A311896.P5373961304292567164

`A311892(n)+A186748(A063865(n))`
-/

namespace A311896.P5373961304292567164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311892 n + A186748 (A063865 n).toNat

end

end A311896.P5373961304292567164

/-!
# A311897: Coordination sequence Gal.6.504.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311897, there is no canonical definition to state claims against.
-/

/-! ## A311897.P9608761075021071858

`or(A004197(A088946(n)), A311812(n))`
-/

namespace A311897.P9608761075021071858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A004197 (A088946 n).toNat) (A311812 n)

end

end A311897.P9608761075021071858

/-! ## A311897.P17456154641668804080

`or(A275318(A275312(n)), A311434(n))`
-/

namespace A311897.P17456154641668804080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A275318 (A275312 n).toNat) (A311434 n)

end

end A311897.P17456154641668804080

/-! ## A311897.P14616888669868694653

`or(A004198(A049126(n+1)), A311707(n))`
-/

namespace A311897.P14616888669868694653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A004198 (A049126 (n + 1)).toNat) (A311707 n)

end

end A311897.P14616888669868694653

/-! ## A311897.P15920117676177932239

`or(A004198(A049126(n+1)), A311708(n))`
-/

namespace A311897.P15920117676177932239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A004198 (A049126 (n + 1)).toNat) (A311708 n)

end

end A311897.P15920117676177932239

/-! ## A311897.P1791648163260993721

`A311708(n)+A163510(A131614(2*(n+2)))`
-/

namespace A311897.P1791648163260993721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311708 n + A163510 (A131614 (2 * (n + 2))).toNat

end

end A311897.P1791648163260993721

/-!
# A311898: Coordination sequence Gal.5.76.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311898, the canonical program `A311898.P13132033356014424136` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A311898 has offset 0).

The definition of A311898 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2588 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A311898.P13720280715677919089

`(A312451(n)+A311334(n))/2`
-/

namespace A311898.P13720280715677919089
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A312451 n + A311334 n : ℚ) / 2

end

end A311898.P13720280715677919089

namespace A311898

/-- `(A312451(n)+A311334(n))/2` -/
def P13720280715677919089.Spec : Prop :=
  ∀ n, P13720280715677919089.a n = (A311898 n : ℚ)

end A311898

/-! ## A311898.P13132033356014424136

`A014682(A312451(n)+A311334(n))`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A311898

/-- `A014682(A312451(n)+A311334(n))` -/
def P13132033356014424136.Spec : Prop :=
  ∀ n, P13132033356014424136.a n = A311898 n

theorem P13132033356014424136.correct : P13132033356014424136.Spec := by
  intro n
  simp only [A311898]

end A311898

/-! ## A311898.P5741845466314795211

`(A312451(n)+A311334(n))*2^A008683(A020483(n))`
-/

namespace A311898.P5741845466314795211
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A312451 n + A311334 n : ℚ) * (2 : ℚ) ^ (A008683 (A020483 n).toNat : ℤ)

end

end A311898.P5741845466314795211

namespace A311898

/-- `(A312451(n)+A311334(n))*2^A008683(A020483(n))` -/
def P5741845466314795211.Spec : Prop :=
  ∀ n, P5741845466314795211.a n = (A311898 n : ℚ)

end A311898

/-! ## A311898.P4661577374609867312

`A004525(A312451(n)+A311334(n))`
-/

namespace A311898.P4661577374609867312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A312451 n + A311334 n).toNat

end

end A311898.P4661577374609867312

namespace A311898

/-- `A004525(A312451(n)+A311334(n))` -/
def P4661577374609867312.Spec : Prop :=
  ∀ n, P4661577374609867312.a n = A311898 n

end A311898

/-! ## A311898.P3350947580239838648

`A080513(A311334(n)+A312451(n)-2)`
-/

namespace A311898.P3350947580239838648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080513 (A311334 n + (A312451 n - 2)).toNat

end

end A311898.P3350947580239838648

namespace A311898

/-- `A080513(A311334(n)+A312451(n)-2)` -/
def P3350947580239838648.Spec : Prop :=
  ∀ n, P3350947580239838648.a n = A311898 n

end A311898

/-! ## A311898.P8026249413043707613

`A080513(A311334(n)-(2-A312451(n)))`
-/

namespace A311898.P8026249413043707613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080513 (A311334 n - (2 - A312451 n)).toNat

end

end A311898.P8026249413043707613

namespace A311898

/-- `A080513(A311334(n)-(2-A312451(n)))` -/
def P8026249413043707613.Spec : Prop :=
  ∀ n, P8026249413043707613.a n = A311898 n

end A311898

/-!
# A311899: Coordination sequence Gal.5.77.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A311899, there is no canonical definition to state claims against.
-/

/-! ## A311899.P825589294952415124

`(A312452(n)+A311335(n))/2`
-/

namespace A311899.P825589294952415124
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A312452 n + A311335 n : ℚ) / 2

end

end A311899.P825589294952415124

/-! ## A311899.P7141138898538442463

`A004525(A312452(n)+A311335(n))`
-/

namespace A311899.P7141138898538442463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A312452 n + A311335 n).toNat

end

end A311899.P7141138898538442463

/-! ## A311899.P15823752664828344058

`A001281(A312452(n)+A311335(n))`
-/

namespace A311899.P15823752664828344058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A312452 n + A311335 n).toNat

end

end A311899.P15823752664828344058

/-! ## A311899.P14482956956123059726

`A004526(A312452(n)+A311335(n))`
-/

namespace A311899.P14482956956123059726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A312452 n + A311335 n).toNat

end

end A311899.P14482956956123059726

/-! ## A311899.P480505113154303523

`A057979(A311335(n)+A312452(n)+1)`
-/

namespace A311899.P480505113154303523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (A311335 n + (A312452 n + 1)).toNat

end

end A311899.P480505113154303523

/-! ## A311899.P11638453798360876835

`A008616(5*(A312452(n)+A311335(n)-1))`
-/

namespace A311899.P11638453798360876835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008616 (5 * (A312452 n + A311335 n - 1)).toNat

end

end A311899.P11638453798360876835

