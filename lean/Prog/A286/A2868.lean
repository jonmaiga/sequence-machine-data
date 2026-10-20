import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
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
import Seq.B000.C037
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C008
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
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
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
import Seq.B007.C000
import Seq.B008.C000
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

/-!
# A286801: {0->110, 1->010}-transform of the Pell word, A171588.

The programs for A286801, the canonical program `A286801.P2102935286096413746` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A286801 has offset 1).

The definition of A286801 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A286801.P2102935286096413746

`char[A286803(n+1)-1]`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A286801

/-- `char[A286803(n+1)-1]` -/
def P2102935286096413746.Spec : Prop :=
  ∀ n, (P2102935286096413746.a n : ℤ) = A286801 (n + 1)

theorem P2102935286096413746.correct : P2102935286096413746.Spec := by
  intro n
  simp only [A286801, Nat.add_sub_cancel]

end A286801

/-! ## A286801.P2666510276133893462

`A079978(n-A286691(n+1))`
-/

namespace A286801.P2666510276133893462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079978 ((n : ℤ) - A286691 (n + 1)).toNat

end

end A286801.P2666510276133893462

namespace A286801

/-- `A079978(n-A286691(n+1))` -/
def P2666510276133893462.Spec : Prop :=
  ∀ n, P2666510276133893462.a n = A286801 (n + 1)

end A286801

/-! ## A286801.P1497455057124099392

`xor(A079978(n), A286691(n+1))`
-/

namespace A286801.P1497455057124099392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A079978 n) (A286691 (n + 1))

end

end A286801.P1497455057124099392

namespace A286801

/-- `xor(A079978(n), A286691(n+1))` -/
def P1497455057124099392.Spec : Prop :=
  ∀ n, P1497455057124099392.a n = A286801 (n + 1)

end A286801

/-! ## A286801.P7743945928436321006

`A286691(A286691(n+1)+A000027(2*(n+1)))`
-/

namespace A286801.P7743945928436321006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286691 (A286691 (n + 1) + A000027 (2 * (n + 1))).toNat

end

end A286801.P7743945928436321006

namespace A286801

/-- `A286691(A286691(n+1)+A000027(2*(n+1)))` -/
def P7743945928436321006.Spec : Prop :=
  ∀ n, P7743945928436321006.a n = A286801 (n + 1)

end A286801

/-! ## A286801.P13332021930304224702

`A286691(A286691(n+1)+A047206(3*n+5))`
-/

namespace A286801.P13332021930304224702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286691 (A286691 (n + 1) + A047206 (3 * n + 5)).toNat

end

end A286801.P13332021930304224702

namespace A286801

/-- `A286691(A286691(n+1)+A047206(3*n+5))` -/
def P13332021930304224702.Spec : Prop :=
  ∀ n, P13332021930304224702.a n = A286801 (n + 1)

end A286801

/-! ## A286801.P15163829180941651713

`A286691(A286691(n+1)+A007090(2*(n+1)))`
-/

namespace A286801.P15163829180941651713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286691 (A286691 (n + 1) + A007090 (2 * (n + 1))).toNat

end

end A286801.P15163829180941651713

namespace A286801

/-- `A286691(A286691(n+1)+A007090(2*(n+1)))` -/
def P15163829180941651713.Spec : Prop :=
  ∀ n, P15163829180941651713.a n = A286801 (n + 1)

end A286801

/-!
# A286802: Positions of 0 in A286801; complement of A286803.

The programs for A286802, the canonical program `A286802.P10299753471683796401` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A286802 has offset 1).

The definition of A286802 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A286802.P10299753471683796401

`A286922(n+1)+A286693(n+1)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A286802

/-- `A286922(n+1)+A286693(n+1)` -/
def P10299753471683796401.Spec : Prop :=
  ∀ n, P10299753471683796401.a n = A286802 (n + 1)

theorem P10299753471683796401.correct : P10299753471683796401.Spec := by
  intro n
  simp only [A286802, Nat.add_sub_cancel]

end A286802

/-! ## A286802.P9344714390183747472

`A286991(n+1)+A286903(n+1)`
-/

namespace A286802.P9344714390183747472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286991 (n + 1) + A286903 (n + 1)

end

end A286802.P9344714390183747472

namespace A286802

/-- `A286991(n+1)+A286903(n+1)` -/
def P9344714390183747472.Spec : Prop :=
  ∀ n, P9344714390183747472.a n = A286802 (n + 1)

end A286802

/-! ## A286802.P12318894363463182592

`A003152(∑[A286922(n+1)]+1)+n`
-/

namespace A286802.P12318894363463182592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286922 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003152 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat + (n : ℤ)

end

end A286802.P12318894363463182592

namespace A286802

/-- `A003152(∑[A286922(n+1)]+1)+n` -/
def P12318894363463182592.Spec : Prop :=
  ∀ n, P12318894363463182592.a n = A286802 (n + 1)

end A286802

/-! ## A286802.P4927653513753239084

`floor((A286693(n+2)+A286693(n+1))/2)`
-/

namespace A286802.P4927653513753239084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A286693 (n + 2) + A286693 (n + 1) : ℚ) / 2⌋

end

end A286802.P4927653513753239084

namespace A286802

/-- `floor((A286693(n+2)+A286693(n+1))/2)` -/
def P4927653513753239084.Spec : Prop :=
  ∀ n, P4927653513753239084.a n = A286802 (n + 1)

end A286802

/-! ## A286802.P2874299749004721639

`A080782(A286693(n+1)-1)+2`
-/

namespace A286802.P2874299749004721639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080782 (A286693 (n + 1) - 1).toNat + 2

end

end A286802.P2874299749004721639

namespace A286802

/-- `A080782(A286693(n+1)-1)+2` -/
def P2874299749004721639.Spec : Prop :=
  ∀ n, P2874299749004721639.a n = A286802 (n + 1)

end A286802

/-! ## A286802.P2468176547432248307

`A080782(A286693(n+1))`
-/

namespace A286802.P2468176547432248307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080782 (A286693 (n + 1)).toNat

end

end A286802.P2468176547432248307

namespace A286802

/-- `A080782(A286693(n+1))` -/
def P2468176547432248307.Spec : Prop :=
  ∀ n, P2468176547432248307.a n = A286802 (n + 1)

end A286802

/-! ## A286802.P10423969220784723263

`A130481(A286991(n+1))`
-/

namespace A286802.P10423969220784723263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130481 (A286991 (n + 1)).toNat

end

end A286802.P10423969220784723263

namespace A286802

/-- `A130481(A286991(n+1))` -/
def P10423969220784723263.Spec : Prop :=
  ∀ n, P10423969220784723263.a n = A286802 (n + 1)

end A286802

/-! ## A286802.P10281040874274947549

`lt[A286801(A028310(n)), 1]`
-/

namespace A286802.P10281040874274947549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286801 (A028310 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A286802.P10281040874274947549

namespace A286802

/-- `lt[A286801(A028310(n)), 1]` -/
def P10281040874274947549.Spec : Prop :=
  ∀ n, (P10281040874274947549.a n : ℤ) = A286802 (n + 1)

end A286802

/-!
# A286803: Positions of 1 in A286801; complement of A286802.

The programs for A286803, the canonical program `A286803.P3688873761259965348` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A286803 has offset 1).

The definition of A286803 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A286803.P11492450936258095348

`A286992(n+1)-A159684(n)`
-/

namespace A286803.P11492450936258095348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286992 (n + 1) - A159684 n

end

end A286803.P11492450936258095348

namespace A286803

/-- `A286992(n+1)-A159684(n)` -/
def P11492450936258095348.Spec : Prop :=
  ∀ n, P11492450936258095348.a n = A286803 (n + 1)

end A286803

/-! ## A286803.P3688873761259965348

`A286692(n+1)-A286665(n+1)`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A286803

/-- `A286692(n+1)-A286665(n+1)` -/
def P3688873761259965348.Spec : Prop :=
  ∀ n, P3688873761259965348.a n = A286803 (n + 1)

theorem P3688873761259965348.correct : P3688873761259965348.Spec := by
  intro n
  simp only [A286803, Nat.add_sub_cancel]

end A286803

/-! ## A286803.P1171832615347591453

`A001651(A286689(n+1))`
-/

namespace A286803.P1171832615347591453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001651 (A286689 (n + 1)).toNat

end

end A286803.P1171832615347591453

namespace A286803

/-- `A001651(A286689(n+1))` -/
def P1171832615347591453.Spec : Prop :=
  ∀ n, P1171832615347591453.a n = A286803 (n + 1)

end A286803

/-! ## A286803.P14207172977860005176

`filter[n+1, A286801(#)]`
-/

namespace A286803.P14207172977860005176
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A286801 (f1 j) = 1) n)

end

end A286803.P14207172977860005176

namespace A286803

/-- `filter[n+1, A286801(#)]` -/
def P14207172977860005176.Spec : Prop :=
  ∀ n, (P14207172977860005176.a n : ℤ) = A286803 (n + 1)

end A286803

/-! ## A286803.P9793758763462769395

`A080782(A286692(n+1))`
-/

namespace A286803.P9793758763462769395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080782 (A286692 (n + 1)).toNat

end

end A286803.P9793758763462769395

namespace A286803

/-- `A080782(A286692(n+1))` -/
def P9793758763462769395.Spec : Prop :=
  ∀ n, P9793758763462769395.a n = A286803 (n + 1)

end A286803

/-! ## A286803.P8987385789256402668

`A286992(n+1)-A188374(2*(n+1))`
-/

namespace A286803.P8987385789256402668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286992 (n + 1) - A188374 (2 * (n + 1))

end

end A286803.P8987385789256402668

namespace A286803

/-- `A286992(n+1)-A188374(2*(n+1))` -/
def P8987385789256402668.Spec : Prop :=
  ∀ n, P8987385789256402668.a n = A286803 (n + 1)

end A286803

/-!
# A286804: {000->null}-transform of the Pell word, A171588.

The programs for A286804, the canonical program `A286804.P16215063288714846442` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A286804 has offset 1).

The definition of A286804 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A286804.P16266396629388907085

`1-A286937(n+1)`
-/

namespace A286804.P16266396629388907085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A286937 (n + 1)

end

end A286804.P16266396629388907085

namespace A286804

/-- `1-A286937(n+1)` -/
def P16266396629388907085.Spec : Prop :=
  ∀ n, P16266396629388907085.a n = A286804 (n + 1)

end A286804

/-! ## A286804.P16215063288714846442

`char[A286806(n+1)-1]`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A286804

/-- `char[A286806(n+1)-1]` -/
def P16215063288714846442.Spec : Prop :=
  ∀ n, (P16215063288714846442.a n : ℤ) = A286804 (n + 1)

theorem P16215063288714846442.correct : P16215063288714846442.Spec := by
  intro n
  simp only [A286804, Nat.add_sub_cancel]

end A286804

/-! ## A286804.P2235920196237234188

`char[comp[A286805(n+1)-1]]`
-/

namespace A286804.P2235920196237234188
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286805 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A286804.P2235920196237234188

namespace A286804

/-- `char[comp[A286805(n+1)-1]]` -/
def P2235920196237234188.Spec : Prop :=
  ∀ n, (P2235920196237234188.a n : ℤ) = A286804 (n + 1)

end A286804

/-! ## A286804.P8368896595046249759

`xor(1, A286937(A028310(n+1)))`
-/

namespace A286804.P8368896595046249759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A286937 (A028310 (n + 1)).toNat)

end

end A286804.P8368896595046249759

namespace A286804

/-- `xor(1, A286937(A028310(n+1)))` -/
def P8368896595046249759.Spec : Prop :=
  ∀ n, P8368896595046249759.a n = A286804 (n + 1)

end A286804

/-! ## A286804.P5246944566985839343

`A038722(n*A286937(n+1)+1)%A038722(n+1)`
-/

namespace A286804.P5246944566985839343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A038722 ((n : ℤ) * A286937 (n + 1) + 1).toNat) (A038722 (n + 1))

end

end A286804.P5246944566985839343

namespace A286804

/-- `A038722(n*A286937(n+1)+1)%A038722(n+1)` -/
def P5246944566985839343.Spec : Prop :=
  ∀ n, P5246944566985839343.a n = A286804 (n + 1)

end A286804

/-! ## A286804.P15119476633209509666

`A086799(n*A286937(n+1)+1)%A086799(n+1)`
-/

namespace A286804.P15119476633209509666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A086799 ((n : ℤ) * A286937 (n + 1) + 1).toNat) (A086799 (n + 1))

end

end A286804.P15119476633209509666

namespace A286804

/-- `A086799(n*A286937(n+1)+1)%A086799(n+1)` -/
def P15119476633209509666.Spec : Prop :=
  ∀ n, P15119476633209509666.a n = A286804 (n + 1)

end A286804

/-! ## A286804.P4633382879998650789

`A333364(n+1)%A333364(n*A286937(n+1)+1)`
-/

namespace A286804.P4633382879998650789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A333364 (n + 1)) (A333364 ((n : ℤ) * A286937 (n + 1) + 1).toNat)

end

end A286804.P4633382879998650789

namespace A286804

/-- `A333364(n+1)%A333364(n*A286937(n+1)+1)` -/
def P4633382879998650789.Spec : Prop :=
  ∀ n, P4633382879998650789.a n = A286804 (n + 1)

end A286804

/-! ## A286804.P811546673895935163

`A286937(A286937(n+2)+(n+1)*A286937(n+1)+1)`
-/

namespace A286804.P811546673895935163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286937 (A286937 (n + 2) + (n + 1 : ℤ) * A286937 (n + 1) + 1).toNat

end

end A286804.P811546673895935163

namespace A286804

/-- `A286937(A286937(n+2)+(n+1)*A286937(n+1)+1)` -/
def P811546673895935163.Spec : Prop :=
  ∀ n, P811546673895935163.a n = A286804 (n + 1)

end A286804

/-! ## A286804.P1923196970773154932

`xor(A001221(A008578(n+4)), A286937(n+1))`
-/

namespace A286804.P1923196970773154932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A001221 (A008578 (n + 4)).toNat) (A286937 (n + 1))

end

end A286804.P1923196970773154932

namespace A286804

/-- `xor(A001221(A008578(n+4)), A286937(n+1))` -/
def P1923196970773154932.Spec : Prop :=
  ∀ n, P1923196970773154932.a n = A286804 (n + 1)

end A286804

/-! ## A286804.P5861760499466537227

`A286907(A286937(n+1)+A286909(n+1))`
-/

namespace A286804.P5861760499466537227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286907 (A286937 (n + 1) + A286909 (n + 1)).toNat

end

end A286804.P5861760499466537227

namespace A286804

/-- `A286907(A286937(n+1)+A286909(n+1))` -/
def P5861760499466537227.Spec : Prop :=
  ∀ n, P5861760499466537227.a n = A286804 (n + 1)

end A286804

/-! ## A286804.P13663945340755294769

`xor(abs(A101676(3*n)), A286937(n+1))`
-/

namespace A286804.P13663945340755294769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor |A101676 (3 * n)| (A286937 (n + 1))

end

end A286804.P13663945340755294769

namespace A286804

/-- `xor(abs(A101676(3*n)), A286937(n+1))` -/
def P13663945340755294769.Spec : Prop :=
  ∀ n, P13663945340755294769.a n = A286804 (n + 1)

end A286804

/-! ## A286804.P7524764097866492882

`A171588(A286937(n+1)+A001952(n+1))`
-/

namespace A286804.P7524764097866492882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171588 (A286937 (n + 1) + A001952 (n + 1)).toNat

end

end A286804.P7524764097866492882

namespace A286804

/-- `A171588(A286937(n+1)+A001952(n+1))` -/
def P7524764097866492882.Spec : Prop :=
  ∀ n, P7524764097866492882.a n = A286804 (n + 1)

end A286804

/-! ## A286804.P17385749461120130222

`A286939(A286937(n+1)+A285564(n+1))`
-/

namespace A286804.P17385749461120130222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286939 (A286937 (n + 1) + A285564 (n + 1)).toNat

end

end A286804.P17385749461120130222

namespace A286804

/-- `A286939(A286937(n+1)+A285564(n+1))` -/
def P17385749461120130222.Spec : Prop :=
  ∀ n, P17385749461120130222.a n = A286804 (n + 1)

end A286804

/-! ## A286804.P10304206643063508276

`A286685(A286937(n+1)+A286690(n+1))`
-/

namespace A286804.P10304206643063508276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286685 (A286937 (n + 1) + A286690 (n + 1)).toNat

end

end A286804.P10304206643063508276

namespace A286804

/-- `A286685(A286937(n+1)+A286690(n+1))` -/
def P10304206643063508276.Spec : Prop :=
  ∀ n, P10304206643063508276.a n = A286804 (n + 1)

end A286804

/-! ## A286804.P10482017526267278506

`A286688(A286937(n+1)+A286690(n+1))`
-/

namespace A286804.P10482017526267278506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286688 (A286937 (n + 1) + A286690 (n + 1)).toNat

end

end A286804.P10482017526267278506

namespace A286804

/-- `A286688(A286937(n+1)+A286690(n+1))` -/
def P10482017526267278506.Spec : Prop :=
  ∀ n, P10482017526267278506.a n = A286804 (n + 1)

end A286804

/-! ## A286804.P12615774719441791485

`A286925(A286937(n+1)+A286927(n+1))`
-/

namespace A286804.P12615774719441791485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286925 (A286937 (n + 1) + A286927 (n + 1)).toNat

end

end A286804.P12615774719441791485

namespace A286804

/-- `A286925(A286937(n+1)+A286927(n+1))` -/
def P12615774719441791485.Spec : Prop :=
  ∀ n, P12615774719441791485.a n = A286804 (n + 1)

end A286804

/-! ## A286804.P17322330083503614161

`A047853(n*A286937(n+1))%A047853(n)`
-/

namespace A286804.P17322330083503614161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A047853 ((n : ℤ) * A286937 (n + 1)).toNat) (A047853 n)

end

end A286804.P17322330083503614161

namespace A286804

/-- `A047853(n*A286937(n+1))%A047853(n)` -/
def P17322330083503614161.Spec : Prop :=
  ∀ n, P17322330083503614161.a n = A286804 (n + 1)

end A286804

/-!
# A286805: Positions of 0 in A286804; complement of A286806.

The programs for A286805, the canonical program `A286805.P2640537364746463001` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A286805 has offset 1).

The definition of A286805 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A286805.P7438356403996072243

`comp[2*A195119(n)+n]`
-/

namespace A286805.P7438356403996072243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A195119 n + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A286805.P7438356403996072243

namespace A286805

/-- `comp[2*A195119(n)+n]` -/
def P7438356403996072243.Spec : Prop :=
  ∀ n, (P7438356403996072243.a n : ℤ) = A286805 (n + 1)

end A286805

/-! ## A286805.P11787830872733903023

`comp[A286806(n+1)-1]+1`
-/

namespace A286805.P11787830872733903023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286806 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A286805.P11787830872733903023

namespace A286805

/-- `comp[A286806(n+1)-1]+1` -/
def P11787830872733903023.Spec : Prop :=
  ∀ n, (P11787830872733903023.a n : ℤ) = A286805 (n + 1)

end A286805

/-! ## A286805.P14072203643405739178

`comp[∑[gcd(3, A276864(n+1))]-1]+1`
-/

namespace A286805.P14072203643405739178
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 3 (A276864 (n + 1))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A286805.P14072203643405739178

namespace A286805

/-- `comp[∑[gcd(3, A276864(n+1))]-1]+1` -/
def P14072203643405739178.Spec : Prop :=
  ∀ n, (P14072203643405739178.a n : ℤ) = A286805 (n + 1)

end A286805

/-! ## A286805.P2640537364746463001

`A083088(A004526(n))+n`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A286805

/-- `A083088(A004526(n))+n` -/
def P2640537364746463001.Spec : Prop :=
  ∀ n, P2640537364746463001.a n = A286805 (n + 1)

theorem P2640537364746463001.correct : P2640537364746463001.Spec := by
  intro n
  simp only [A286805, Nat.add_sub_cancel]

end A286805

/-! ## A286805.P1205516286759086846

`comp[A195176(n)+A195119(n)]`
-/

namespace A286805.P1205516286759086846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195176 n + A195119 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A286805.P1205516286759086846

namespace A286805

/-- `comp[A195176(n)+A195119(n)]` -/
def P1205516286759086846.Spec : Prop :=
  ∀ n, (P1205516286759086846.a n : ℤ) = A286805 (n + 1)

end A286805

/-! ## A286805.P15511597231167235289

`comp[A195119(n)+round(A195178(n)/2+n)]`
-/

namespace A286805.P15511597231167235289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195119 n + SequenceMachineLib.roundAway ((A195178 n : ℚ) / 2 + (n : ℚ))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A286805.P15511597231167235289

namespace A286805

/-- `comp[A195119(n)+round(A195178(n)/2+n)]` -/
def P15511597231167235289.Spec : Prop :=
  ∀ n, (P15511597231167235289.a n : ℤ) = A286805 (n + 1)

end A286805

/-! ## A286805.P8008417892464737710

`filter[n+1, A286937(#)]`
-/

namespace A286805.P8008417892464737710
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A286937 (f1 j) = 1) n)

end

end A286805.P8008417892464737710

namespace A286805

/-- `filter[n+1, A286937(#)]` -/
def P8008417892464737710.Spec : Prop :=
  ∀ n, (P8008417892464737710.a n : ℤ) = A286805 (n + 1)

end A286805

/-! ## A286805.P16008659096967847902

`eq[1, A286937(n+1)]+1`
-/

namespace A286805.P16008659096967847902
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286937 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A286805.P16008659096967847902

namespace A286805

/-- `eq[1, A286937(n+1)]+1` -/
def P16008659096967847902.Spec : Prop :=
  ∀ n, (P16008659096967847902.a n : ℤ) = A286805 (n + 1)

end A286805

/-! ## A286805.P12184225098729852072

`record[(n+1)/(A286804(n+1)+1)]`
-/

namespace A286805.P12184225098729852072
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A286804 (n + 1) + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A286805.P12184225098729852072

namespace A286805

/-- `record[(n+1)/(A286804(n+1)+1)]` -/
def P12184225098729852072.Spec : Prop :=
  ∀ n, P12184225098729852072.a n = (A286805 (n + 1) : ℚ)

end A286805

/-! ## A286805.P17428172119432749502

`record[n+1-A000040(n+1)*A286804(n+1)]`
-/

namespace A286805.P17428172119432749502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A000040 (n + 1) * A286804 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A286805.P17428172119432749502

namespace A286805

/-- `record[n+1-A000040(n+1)*A286804(n+1)]` -/
def P17428172119432749502.Spec : Prop :=
  ∀ n, P17428172119432749502.a n = A286805 (n + 1)

end A286805

/-! ## A286805.P17241088325211357667

`record[n+1-A286804(n+1)*A286806(n+1)]`
-/

namespace A286805.P17241088325211357667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A286804 (n + 1) * A286806 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A286805.P17241088325211357667

namespace A286805

/-- `record[n+1-A286804(n+1)*A286806(n+1)]` -/
def P17241088325211357667.Spec : Prop :=
  ∀ n, P17241088325211357667.a n = A286805 (n + 1)

end A286805

/-!
# A286806: Positions of 1 in A286804; complement of A286805.

The programs for A286806, the canonical program `A286806.P13855370342727150769` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A286806 has offset 1).

The definition of A286806 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A286806.P7701092309879737550

`floor((n+1)*(sqrt(2)-1))+3*floor((n+1)*(2-sqrt(2)))+3`
-/

namespace A286806.P7701092309879737550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) * (Real.sqrt (2 : ℝ) - 1)⌋ + 3 * ⌊(n + 1 : ℝ) * (2 - Real.sqrt (2 : ℝ))⌋ + 3

end

end A286806.P7701092309879737550

namespace A286806

/-- `floor((n+1)*(sqrt(2)-1))+3*floor((n+1)*(2-sqrt(2)))+3` -/
def P7701092309879737550.Spec : Prop :=
  ∀ n, P7701092309879737550.a n = A286806 (n + 1)

end A286806

/-! ## A286806.P13855370342727150769

`∑[gcd(3, A276864(n+1))]`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A286806

/-- `∑[gcd(3, A276864(n+1))]` -/
def P13855370342727150769.Spec : Prop :=
  ∀ n, (P13855370342727150769.a n : ℤ) = A286806 (n + 1)

theorem P13855370342727150769.correct : P13855370342727150769.Spec := by
  intro n
  simp only [A286806, Nat.add_sub_cancel]

end A286806

/-! ## A286806.P9034835742301744734

`∑[Δ[2*A195119(n)]+1]`
-/

namespace A286806.P9034835742301744734
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A195119 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A286806.P9034835742301744734

namespace A286806

/-- `∑[Δ[2*A195119(n)]+1]` -/
def P9034835742301744734.Spec : Prop :=
  ∀ n, P9034835742301744734.a n = A286806 (n + 1)

end A286806

/-! ## A286806.P14660375433275700394

`∑[A080978(Δ[A195119(n)])]`
-/

namespace A286806.P14660375433275700394
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195119 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080978 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A286806.P14660375433275700394

namespace A286806

/-- `∑[A080978(Δ[A195119(n)])]` -/
def P14660375433275700394.Spec : Prop :=
  ∀ n, P14660375433275700394.a n = A286806 (n + 1)

end A286806

/-! ## A286806.P14750852666573456552

`∑[A148571(Δ[A195176(n)])]`
-/

namespace A286806.P14750852666573456552
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195176 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148571 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A286806.P14750852666573456552

namespace A286806

/-- `∑[A148571(Δ[A195176(n)])]` -/
def P14750852666573456552.Spec : Prop :=
  ∀ n, P14750852666573456552.a n = A286806 (n + 1)

end A286806

/-! ## A286806.P5690595881122679908

`∑[A260109(Δ[A195119(n)])]`
-/

namespace A286806.P5690595881122679908
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195119 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260109 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A286806.P5690595881122679908

namespace A286806

/-- `∑[A260109(Δ[A195119(n)])]` -/
def P5690595881122679908.Spec : Prop :=
  ∀ n, P5690595881122679908.a n = A286806 (n + 1)

end A286806

/-! ## A286806.P4289192446918236002

`∑[A221693(Δ[A001951(n)]+1)]`
-/

namespace A286806.P4289192446918236002
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001951 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221693 (f2 (n + 1) - f2 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A286806.P4289192446918236002

namespace A286806

/-- `∑[A221693(Δ[A001951(n)]+1)]` -/
def P4289192446918236002.Spec : Prop :=
  ∀ n, P4289192446918236002.a n = A286806 (n + 1)

end A286806

/-! ## A286806.P9920724549284423080

`∑[A161680(Δ[A195176(n)]+1)]`
-/

namespace A286806.P9920724549284423080
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195176 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 (f2 (n + 1) - f2 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A286806.P9920724549284423080

namespace A286806

/-- `∑[A161680(Δ[A195176(n)]+1)]` -/
def P9920724549284423080.Spec : Prop :=
  ∀ n, P9920724549284423080.a n = A286806 (n + 1)

end A286806

/-! ## A286806.P1946387147804353341

`∑[A038500(Δ[A001951(n)]+2)]`
-/

namespace A286806.P1946387147804353341
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001951 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038500 (f2 (n + 1) - f2 n + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A286806.P1946387147804353341

namespace A286806

/-- `∑[A038500(Δ[A001951(n)]+2)]` -/
def P1946387147804353341.Spec : Prop :=
  ∀ n, P1946387147804353341.a n = A286806 (n + 1)

end A286806

/-! ## A286806.P3119193357652809457

`∑[A296659(Δ[A001951(n)]+2)]`
-/

namespace A286806.P3119193357652809457
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001951 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296659 (f2 (n + 1) - f2 n + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A286806.P3119193357652809457

namespace A286806

/-- `∑[A296659(Δ[A001951(n)]+2)]` -/
def P3119193357652809457.Spec : Prop :=
  ∀ n, P3119193357652809457.a n = A286806 (n + 1)

end A286806

/-! ## A286806.P5533066305239109595

`∑[A000032(3-Δ[A001951(n)])]`
-/

namespace A286806.P5533066305239109595
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001951 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (3 - (f2 (n + 1) - f2 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A286806.P5533066305239109595

namespace A286806

/-- `∑[A000032(3-Δ[A001951(n)])]` -/
def P5533066305239109595.Spec : Prop :=
  ∀ n, P5533066305239109595.a n = A286806 (n + 1)

end A286806

/-! ## A286806.P4219668492290059103

`∑[A000203(3-Δ[A001951(n)])]`
-/

namespace A286806.P4219668492290059103
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001951 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (3 - (f2 (n + 1) - f2 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A286806.P4219668492290059103

namespace A286806

/-- `∑[A000203(3-Δ[A001951(n)])]` -/
def P4219668492290059103.Spec : Prop :=
  ∀ n, P4219668492290059103.a n = A286806 (n + 1)

end A286806

/-! ## A286806.P918717827030270852

`∑[A000032(2/Δ[A001951(n)])]`
-/

namespace A286806.P918717827030270852
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001951 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (SequenceMachineLib.roundAway (2 / (f2 (n + 1) - f2 n : ℚ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A286806.P918717827030270852

namespace A286806

/-- `∑[A000032(2/Δ[A001951(n)])]` -/
def P918717827030270852.Spec : Prop :=
  ∀ n, P918717827030270852.a n = A286806 (n + 1)

end A286806

/-! ## A286806.P2732442921413842585

`∑[A000203(2/Δ[A001951(n)])]`
-/

namespace A286806.P2732442921413842585
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001951 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (SequenceMachineLib.roundAway (2 / (f2 (n + 1) - f2 n : ℚ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A286806.P2732442921413842585

namespace A286806

/-- `∑[A000203(2/Δ[A001951(n)])]` -/
def P2732442921413842585.Spec : Prop :=
  ∀ n, P2732442921413842585.a n = A286806 (n + 1)

end A286806

/-!
# A286807: Fixed point of the mapping 00->001, 1->101, starting with 00.

The programs for A286807, the canonical program `A286807.P7348631751756366517` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A286807 has offset 1).

The definition of A286807 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A286807.P7348631751756366517

`char[∑[2-char[xor(n, n+1)]]]`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A286807

/-- `char[∑[2-char[xor(n, n+1)]]]` -/
def P7348631751756366517.Spec : Prop :=
  ∀ n, (P7348631751756366517.a n : ℤ) = A286807 (n + 1)

theorem P7348631751756366517.correct : P7348631751756366517.Spec := by
  intro n
  simp only [A286807, Nat.add_sub_cancel]

end A286807

/-! ## A286807.P10734964116293173943

`char[ceil(2*(n+1)-log2(n+1))]`
-/

namespace A286807.P10734964116293173943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 * (n + 1) : ℝ) - Real.logb 2 (n + 1 : ℝ)⌉

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A286807.P10734964116293173943

namespace A286807

/-- `char[ceil(2*(n+1)-log2(n+1))]` -/
def P10734964116293173943.Spec : Prop :=
  ∀ n, (P10734964116293173943.a n : ℤ) = A286807 (n + 1)

end A286807

/-! ## A286807.P4036536887218170170

`comp[A213178(n)]%2`
-/

namespace A286807.P4036536887218170170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213178 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n % 2

end

end A286807.P4036536887218170170

namespace A286807

/-- `comp[A213178(n)]%2` -/
def P4036536887218170170.Spec : Prop :=
  ∀ n, (P4036536887218170170.a n : ℤ) = A286807 (n + 1)

end A286807

/-! ## A286807.P10228541477459760920

`comp[A046055(n+1)]%2`
-/

namespace A286807.P10228541477459760920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046055 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n % 2

end

end A286807.P10228541477459760920

namespace A286807

/-- `comp[A046055(n+1)]%2` -/
def P10228541477459760920.Spec : Prop :=
  ∀ n, (P10228541477459760920.a n : ℤ) = A286807 (n + 1)

end A286807

/-! ## A286807.P1218546525222625743

`comp[A056629(n+1)]%2`
-/

namespace A286807.P1218546525222625743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056629 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n % 2

end

end A286807.P1218546525222625743

namespace A286807

/-- `comp[A056629(n+1)]%2` -/
def P1218546525222625743.Spec : Prop :=
  ∀ n, (P1218546525222625743.a n : ℤ) = A286807 (n + 1)

end A286807

/-! ## A286807.P5789079679267315647

`comp[A151821(n+1)]%2`
-/

namespace A286807.P5789079679267315647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151821 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n % 2

end

end A286807.P5789079679267315647

namespace A286807

/-- `comp[A151821(n+1)]%2` -/
def P5789079679267315647.Spec : Prop :=
  ∀ n, (P5789079679267315647.a n : ℤ) = A286807 (n + 1)

end A286807

/-! ## A286807.P11992124524155064189

`comp[A029748(3*n)]%2`
-/

namespace A286807.P11992124524155064189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029748 (3 * n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n % 2

end

end A286807.P11992124524155064189

namespace A286807

/-- `comp[A029748(3*n)]%2` -/
def P11992124524155064189.Spec : Prop :=
  ∀ n, (P11992124524155064189.a n : ℤ) = A286807 (n + 1)

end A286807

/-! ## A286807.P14232170640292201886

`comp[A011782(n)*A177499(2*(n+1))]%2`
-/

namespace A286807.P14232170640292201886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n * A177499 (2 * (n + 1))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n % 2

end

end A286807.P14232170640292201886

namespace A286807

/-- `comp[A011782(n)*A177499(2*(n+1))]%2` -/
def P14232170640292201886.Spec : Prop :=
  ∀ n, (P14232170640292201886.a n : ℤ) = A286807 (n + 1)

end A286807

/-! ## A286807.P8382412651355324747

`A000035(comp[A053644(2*n+1)*A053644(n+1)])`
-/

namespace A286807.P8382412651355324747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053644 (2 * n + 1) * A053644 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A286807.P8382412651355324747

namespace A286807

/-- `A000035(comp[A053644(2*n+1)*A053644(n+1)])` -/
def P8382412651355324747.Spec : Prop :=
  ∀ n, P8382412651355324747.a n = A286807 (n + 1)

end A286807

/-! ## A286807.P18172538689329679514

`A000035(comp[A053644(xor(1, (n+1)²)+1)])`
-/

namespace A286807.P18172538689329679514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053644 (Nat.xor 1 ((n + 1) ^ 2) + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A286807.P18172538689329679514

namespace A286807

/-- `A000035(comp[A053644(xor(1, (n+1)²)+1)])` -/
def P18172538689329679514.Spec : Prop :=
  ∀ n, P18172538689329679514.a n = A286807 (n + 1)

end A286807

/-! ## A286807.P16004978242575776927

`record[A004755(n+1)%A048724(n+1)]%2`
-/

namespace A286807.P16004978242575776927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004755 (n + 1)) (A048724 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) 2

end

end A286807.P16004978242575776927

namespace A286807

/-- `record[A004755(n+1)%A048724(n+1)]%2` -/
def P16004978242575776927.Spec : Prop :=
  ∀ n, P16004978242575776927.a n = A286807 (n + 1)

end A286807

/-! ## A286807.P14437643477110077950

`and(1, eq[1, A014963(2*n*a(n-1))])` with `a(0)=1, a(1)=3`
-/

namespace A286807.P14437643477110077950
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n f2 =>
  A014963 ((2 * n : ℤ) * f2 (n - 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A286807.P14437643477110077950

namespace A286807

/-- `and(1, eq[1, A014963(2*n*a(n-1))])` -/
def P14437643477110077950.Spec : Prop :=
  ∀ n, (P14437643477110077950.a n : ℤ) = A286807 (n + 1)

end A286807

/-! ## A286807.P3863609470625083600

`A240871(A342285(n+1))`
-/

namespace A286807.P3863609470625083600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240871 (A342285 (n + 1)).toNat

end

end A286807.P3863609470625083600

namespace A286807

/-- `A240871(A342285(n+1))` -/
def P3863609470625083600.Spec : Prop :=
  ∀ n, P3863609470625083600.a n = A286807 (n + 1)

end A286807

/-! ## A286807.P7788503042674484666

`and(1, comp[A242349(n+1)])`
-/

namespace A286807.P7788503042674484666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242349 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A286807.P7788503042674484666

namespace A286807

/-- `and(1, comp[A242349(n+1)])` -/
def P7788503042674484666.Spec : Prop :=
  ∀ n, (P7788503042674484666.a n : ℤ) = A286807 (n + 1)

end A286807

/-!
# A286808: Positions of 0 in A286807; complement of A286809.

The programs for A286808, the canonical program `A286808.P17632618332489192172` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A286808 has offset 1).

The definition of A286808 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A286808.P16789012945404945973

`comp[or(1, 2^n)]+abs(1-n)`
-/

namespace A286808.P16789012945404945973
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (2 ^ n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) + |1 - (n : ℤ)|

end

end A286808.P16789012945404945973

namespace A286808

/-- `comp[or(1, 2^n)]+abs(1-n)` -/
def P16789012945404945973.Spec : Prop :=
  ∀ n, P16789012945404945973.a n = A286808 (n + 1)

end A286808

/-! ## A286808.P16564770885457962502

`A028310(n)+comp[2^(n+1)]`
-/

namespace A286808.P16564770885457962502
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ)

end

end A286808.P16564770885457962502

namespace A286808

/-- `A028310(n)+comp[2^(n+1)]` -/
def P16564770885457962502.Spec : Prop :=
  ∀ n, P16564770885457962502.a n = A286808 (n + 1)

end A286808

/-! ## A286808.P13800420588266824018

`record[A324400(n+1)^(n%2)]`
-/

namespace A286808.P13800420588266824018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324400 (n + 1) ^ (n % 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A286808.P13800420588266824018

namespace A286808

/-- `record[A324400(n+1)^(n%2)]` -/
def P13800420588266824018.Spec : Prop :=
  ∀ n, P13800420588266824018.a n = A286808 (n + 1)

end A286808

/-! ## A286808.P11927204061666705414

`comp[A155559(n)+1]+abs(1-n)`
-/

namespace A286808.P11927204061666705414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155559 n + 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) + |1 - (n : ℤ)|

end

end A286808.P11927204061666705414

namespace A286808

/-- `comp[A155559(n)+1]+abs(1-n)` -/
def P11927204061666705414.Spec : Prop :=
  ∀ n, P11927204061666705414.a n = A286808 (n + 1)

end A286808

/-! ## A286808.P18354266197109503621

`comp[A043529(n)+a(n-1)]+1` with `a(0)=2`
-/

namespace A286808.P18354266197109503621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  A043529 n + f1 (n - 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A286808.P18354266197109503621

namespace A286808

/-- `comp[A043529(n)+a(n-1)]+1` -/
def P18354266197109503621.Spec : Prop :=
  ∀ n, (P18354266197109503621.a n : ℤ) = A286808 (n + 1)

end A286808

/-! ## A286808.P17632618332489192172

`A138591(A028310(n))+n`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A286808

/-- `A138591(A028310(n))+n` -/
def P17632618332489192172.Spec : Prop :=
  ∀ n, P17632618332489192172.a n = A286808 (n + 1)

theorem P17632618332489192172.correct : P17632618332489192172.Spec := by
  intro n
  simp only [A286808, Nat.add_sub_cancel]

end A286808

/-! ## A286808.P9136305168690436445

`A138591(A004277(n)-n)+n`
-/

namespace A286808.P9136305168690436445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138591 (A004277 n - (n : ℤ)).toNat + (n : ℤ)

end

end A286808.P9136305168690436445

namespace A286808

/-- `A138591(A004277(n)-n)+n` -/
def P9136305168690436445.Spec : Prop :=
  ∀ n, P9136305168690436445.a n = A286808 (n + 1)

end A286808

/-! ## A286808.P15770814313669286339

`comp[A000079(n+1)]+A000007(n)+n`
-/

namespace A286808.P15770814313669286339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) + (A000007 n + (n : ℤ))

end

end A286808.P15770814313669286339

namespace A286808

/-- `comp[A000079(n+1)]+A000007(n)+n` -/
def P15770814313669286339.Spec : Prop :=
  ∀ n, P15770814313669286339.a n = A286808 (n + 1)

end A286808

/-! ## A286808.P717356799415303069

`comp[A287293(n+1)]+A004277(n)-n`
-/

namespace A286808.P717356799415303069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287293 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) + (A004277 n - (n : ℤ))

end

end A286808.P717356799415303069

namespace A286808

/-- `comp[A287293(n+1)]+A004277(n)-n` -/
def P717356799415303069.Spec : Prop :=
  ∀ n, P717356799415303069.a n = A286808 (n + 1)

end A286808

/-! ## A286808.P13715711132276872728

`A138591(A065033(2*n))+n`
-/

namespace A286808.P13715711132276872728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138591 (A065033 (2 * n)).toNat + (n : ℤ)

end

end A286808.P13715711132276872728

namespace A286808

/-- `A138591(A065033(2*n))+n` -/
def P13715711132276872728.Spec : Prop :=
  ∀ n, P13715711132276872728.a n = A286808 (n + 1)

end A286808

/-! ## A286808.P336075218919254059

`A138591(A101279(2*n+1))+n`
-/

namespace A286808.P336075218919254059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138591 (A101279 (2 * n + 1)).toNat + (n : ℤ)

end

end A286808.P336075218919254059

namespace A286808

/-- `A138591(A101279(2*n+1))+n` -/
def P336075218919254059.Spec : Prop :=
  ∀ n, P336075218919254059.a n = A286808 (n + 1)

end A286808

/-! ## A286808.P16360004055226993975

`A065033(2*n)+comp[A000079(n+1)]`
-/

namespace A286808.P16360004055226993975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (2 * n) + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A286808.P16360004055226993975

namespace A286808

/-- `A065033(2*n)+comp[A000079(n+1)]` -/
def P16360004055226993975.Spec : Prop :=
  ∀ n, P16360004055226993975.a n = A286808 (n + 1)

end A286808

/-! ## A286808.P6897271018224429631

`A101279(2*n+1)+comp[A000079(n+1)]`
-/

namespace A286808.P6897271018224429631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101279 (2 * n + 1) + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A286808.P6897271018224429631

namespace A286808

/-- `A101279(2*n+1)+comp[A000079(n+1)]` -/
def P6897271018224429631.Spec : Prop :=
  ∀ n, P6897271018224429631.a n = A286808 (n + 1)

end A286808

/-! ## A286808.P8552161511893052563

`record[(n+1)*(1-A286807(n+1))]`
-/

namespace A286808.P8552161511893052563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (1 - A286807 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A286808.P8552161511893052563

namespace A286808

/-- `record[(n+1)*(1-A286807(n+1))]` -/
def P8552161511893052563.Spec : Prop :=
  ∀ n, P8552161511893052563.a n = A286808 (n + 1)

end A286808

/-!
# A286809: Positions of 1 in A286807; complement of A286808.

The programs for A286809, the canonical program `A286809.P10950988701796327335` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A286809 has offset 1).

The definition of A286809 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A286809.P3984284850819912270

`comp[comp[∑[2^n]]+n]+2`
-/

namespace A286809.P3984284850819912270
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 2

end

end A286809.P3984284850819912270

namespace A286809

/-- `comp[comp[∑[2^n]]+n]+2` -/
def P3984284850819912270.Spec : Prop :=
  ∀ n, (P3984284850819912270.a n : ℤ) = A286809 (n + 1)

end A286809

/-! ## A286809.P10950988701796327335

`A324400(2*n+3)`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A286809

/-- `A324400(2*n+3)` -/
def P10950988701796327335.Spec : Prop :=
  ∀ n, P10950988701796327335.a n = A286809 (n + 1)

theorem P10950988701796327335.correct : P10950988701796327335.Spec := by
  intro n
  simp only [A286809, Nat.add_sub_cancel]

end A286809

/-! ## A286809.P2518462744326600729

`∑[A000032(Δ[ceil(log2(2*n+1))])]`
-/

namespace A286809.P2518462744326600729
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (2 * n + 1 : ℝ)⌉

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A286809.P2518462744326600729

namespace A286809

/-- `∑[A000032(Δ[ceil(log2(2*n+1))])]` -/
def P2518462744326600729.Spec : Prop :=
  ∀ n, P2518462744326600729.a n = A286809 (n + 1)

end A286809

/-! ## A286809.P7010816608695925730

`∑[A000002(a(and(n+1, n-1))+1)]` with `a(0)=3`
-/

namespace A286809.P7010816608695925730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f1 =>
  A000002 (f1 (Int.land (n + 1 : ℤ) ((n : ℤ) - 1)).toNat + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A286809.P7010816608695925730

namespace A286809

/-- `∑[A000002(a(and(n+1, n-1))+1)]` -/
def P7010816608695925730.Spec : Prop :=
  ∀ n, P7010816608695925730.a n = A286809 (n + 1)

end A286809

/-! ## A286809.P13816942124186764515

`∑[A169695(a(and(n+1, n-1))+1)]` with `a(0)=3`
-/

namespace A286809.P13816942124186764515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f1 =>
  A169695 (f1 (Int.land (n + 1 : ℤ) ((n : ℤ) - 1)).toNat + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A286809.P13816942124186764515

namespace A286809

/-- `∑[A169695(a(and(n+1, n-1))+1)]` -/
def P13816942124186764515.Spec : Prop :=
  ∀ n, P13816942124186764515.a n = A286809 (n + 1)

end A286809

/-! ## A286809.P8724451290295685103

`∑[A000120(5*(2*a(floor(n/2))-(-1)^n+1)/10^(n%2))]` with `a(0)=3`
-/

namespace A286809.P8724451290295685103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f1 =>
  A000120 (SequenceMachineLib.roundAway ((5 * (2 * f1 ⌊(n : ℚ) / 2⌋.toNat - (-1) ^ n + 1) : ℚ) / (10 ^ (n % 2) : ℚ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A286809.P8724451290295685103

namespace A286809

/-- `∑[A000120(5*(2*a(floor(n/2))-(-1)^n+1)/10^(n%2))]` -/
def P8724451290295685103.Spec : Prop :=
  ∀ n, P8724451290295685103.a n = A286809 (n + 1)

end A286809

/-! ## A286809.P7520782816651213777

`∑[A003016(A006530(n+1))]`
-/

namespace A286809.P7520782816651213777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003016 (A006530 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A286809.P7520782816651213777

namespace A286809

/-- `∑[A003016(A006530(n+1))]` -/
def P7520782816651213777.Spec : Prop :=
  ∀ n, P7520782816651213777.a n = A286809 (n + 1)

end A286809

/-! ## A286809.P14324791309742458410

`∑[A099894(A099894(n))+1]`
-/

namespace A286809.P14324791309742458410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099894 (A099894 n).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A286809.P14324791309742458410

namespace A286809

/-- `∑[A099894(A099894(n))+1]` -/
def P14324791309742458410.Spec : Prop :=
  ∀ n, P14324791309742458410.a n = A286809 (n + 1)

end A286809

/-! ## A286809.P7620054859196446727

`∑[A295878(a(n-A006257(n))+1)]` with `a(0)=3`
-/

namespace A286809.P7620054859196446727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f1 =>
  A295878 (f1 ((n : ℤ) - A006257 n).toNat + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A286809.P7620054859196446727

namespace A286809

/-- `∑[A295878(a(n-A006257(n))+1)]` -/
def P7620054859196446727.Spec : Prop :=
  ∀ n, P7620054859196446727.a n = A286809 (n + 1)

end A286809

/-! ## A286809.P6711927994291049057

`A009056(A049039(n+1))`
-/

namespace A286809.P6711927994291049057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009056 (A049039 (n + 1)).toNat

end

end A286809.P6711927994291049057

namespace A286809

/-- `A009056(A049039(n+1))` -/
def P6711927994291049057.Spec : Prop :=
  ∀ n, P6711927994291049057.a n = A286809 (n + 1)

end A286809

/-! ## A286809.P17049602545707543825

`filter[n+1, A286807(#)]`
-/

namespace A286809.P17049602545707543825
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A286807 (f1 j) = 1) n)

end

end A286809.P17049602545707543825

namespace A286809

/-- `filter[n+1, A286807(#)]` -/
def P17049602545707543825.Spec : Prop :=
  ∀ n, (P17049602545707543825.a n : ℤ) = A286809 (n + 1)

end A286809

/-! ## A286809.P6489395793860675389

`A087156(A049039(n+1)+2)`
-/

namespace A286809.P6489395793860675389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087156 (A049039 (n + 1) + 2).toNat

end

end A286809.P6489395793860675389

namespace A286809

/-- `A087156(A049039(n+1)+2)` -/
def P6489395793860675389.Spec : Prop :=
  ∀ n, P6489395793860675389.a n = A286809 (n + 1)

end A286809

/-! ## A286809.P17106968775399470927

`A181440(A049039(n+1)+2)`
-/

namespace A286809.P17106968775399470927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181440 (A049039 (n + 1) + 2).toNat

end

end A286809.P17106968775399470927

namespace A286809

/-- `A181440(A049039(n+1)+2)` -/
def P17106968775399470927.Spec : Prop :=
  ∀ n, P17106968775399470927.a n = A286809 (n + 1)

end A286809

/-! ## A286809.P14747654465457013470

`A005843(A049039(n+1)+2)/2`
-/

namespace A286809.P14747654465457013470
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005843 (A049039 (n + 1) + 2).toNat : ℚ) / 2

end

end A286809.P14747654465457013470

namespace A286809

/-- `A005843(A049039(n+1)+2)/2` -/
def P14747654465457013470.Spec : Prop :=
  ∀ n, P14747654465457013470.a n = (A286809 (n + 1) : ℚ)

end A286809

/-! ## A286809.P2459974761420503144

`abs(∑[A007814(A051664(n+1))-1]-3-n)`
-/

namespace A286809.P2459974761420503144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A051664 (n + 1)).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j - 3 - (n : ℤ)|

end

end A286809.P2459974761420503144

namespace A286809

/-- `abs(∑[A007814(A051664(n+1))-1]-3-n)` -/
def P2459974761420503144.Spec : Prop :=
  ∀ n, P2459974761420503144.a n = A286809 (n + 1)

end A286809

/-! ## A286809.P4722481088279475817

`∑[A068073(∏{p}[n+1, #+1]+1)]`
-/

namespace A286809.P4722481088279475817
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068073 (∏ p ∈ Nat.primeFactors (f2 n), (p + 1) + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A286809.P4722481088279475817

namespace A286809

/-- `∑[A068073(∏{p}[n+1, #+1]+1)]` -/
def P4722481088279475817.Spec : Prop :=
  ∀ n, P4722481088279475817.a n = A286809 (n + 1)

end A286809

/-! ## A286809.P6302391115671866220

`∑[A378224((n+1)²)+2]`
-/

namespace A286809.P6302391115671866220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378224 ((n + 1) ^ 2) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A286809.P6302391115671866220

namespace A286809

/-- `∑[A378224((n+1)²)+2]` -/
def P6302391115671866220.Spec : Prop :=
  ∀ n, P6302391115671866220.a n = A286809 (n + 1)

end A286809

/-! ## A286809.P14674130182021455592

`ceil(log2(A100446(n+2)))`
-/

namespace A286809.P14674130182021455592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (A100446 (n + 2) : ℝ)⌉

end

end A286809.P14674130182021455592

namespace A286809

/-- `ceil(log2(A100446(n+2)))` -/
def P14674130182021455592.Spec : Prop :=
  ∀ n, P14674130182021455592.a n = A286809 (n + 1)

end A286809

/-! ## A286809.P5835019054295740888

`ceil(log2(A123045(n+2)))`
-/

namespace A286809.P5835019054295740888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (A123045 (n + 2) : ℝ)⌉

end

end A286809.P5835019054295740888

namespace A286809

/-- `ceil(log2(A123045(n+2)))` -/
def P5835019054295740888.Spec : Prop :=
  ∀ n, P5835019054295740888.a n = A286809 (n + 1)

end A286809

/-! ## A286809.P17415746259342609673

`ceil(log2(A184264(n+2)))`
-/

namespace A286809.P17415746259342609673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (A184264 (n + 2) : ℝ)⌉

end

end A286809.P17415746259342609673

namespace A286809

/-- `ceil(log2(A184264(n+2)))` -/
def P17415746259342609673.Spec : Prop :=
  ∀ n, P17415746259342609673.a n = A286809 (n + 1)

end A286809

/-!
# A286810: Number of non-attacking bishop positions on a cylindrical 2 X 2n chessboard.

The programs for A286810, the canonical program `A286810.P5558048285438027265` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A286810 has offset 0).

The definition of A286810 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A286810.P5558048285438027265

`8*a(n-1)-8*a(n-2)+a(n-3)` with `a(0)=1, a(1)=9, a(2)=49, a(3)=324`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A286810

/-- `8*a(n-1)-8*a(n-2)+a(n-3)` -/
def P5558048285438027265.Spec : Prop :=
  ∀ n, P5558048285438027265.a n = A286810 n

theorem P5558048285438027265.correct : P5558048285438027265.Spec := by
  intro n
  simp only [A286810]

end A286810

/-! ## A286810.P8239215224953372722

`ceil((ϕ^n)²)²`
-/

namespace A286810.P8239215224953372722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Real.goldenRatio ^ n) ^ 2⌉ ^ 2

end

end A286810.P8239215224953372722

namespace A286810

/-- `ceil((ϕ^n)²)²` -/
def P8239215224953372722.Spec : Prop :=
  ∀ n, P8239215224953372722.a n = A286810 n

end A286810

/-! ## A286810.P10415080950840587653

`ceil(ϕ^(2*n))^gcd(2, 2*n)`
-/

namespace A286810.P10415080950840587653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.goldenRatio ^ (2 * n)⌉ ^ Nat.gcd 2 (2 * n)

end

end A286810.P10415080950840587653

namespace A286810

/-- `ceil(ϕ^(2*n))^gcd(2, 2*n)` -/
def P10415080950840587653.Spec : Prop :=
  ∀ n, P10415080950840587653.a n = A286810 n

end A286810

/-! ## A286810.P2955064163514904218

`A048162(4*n)`
-/

namespace A286810.P2955064163514904218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048162 (4 * n)

end

end A286810.P2955064163514904218

namespace A286810

/-- `A048162(4*n)` -/
def P2955064163514904218.Spec : Prop :=
  ∀ n, P2955064163514904218.a n = A286810 n

end A286810

/-! ## A286810.P6090929555585584692

`abs(record[A075150(n+1)])`
-/

namespace A286810.P6090929555585584692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075150 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)|

end

end A286810.P6090929555585584692

namespace A286810

/-- `abs(record[A075150(n+1)])` -/
def P6090929555585584692.Spec : Prop :=
  ∀ n, P6090929555585584692.a n = A286810 n

end A286810

/-! ## A286810.P14292351190792102585

`record[A005247(n+1)²]`
-/

namespace A286810.P14292351190792102585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005247 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A286810.P14292351190792102585

namespace A286810

/-- `record[A005247(n+1)²]` -/
def P14292351190792102585.Spec : Prop :=
  ∀ n, P14292351190792102585.a n = A286810 n

end A286810

/-! ## A286810.P9194747650946038738

`gcd(A000032(2*n)², floor(acot(n)))`
-/

namespace A286810.P9194747650946038738
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000032 (2 * n) ^ 2) ⌊SequenceMachineLib.acot (n : ℝ)⌋

end

end A286810.P9194747650946038738

namespace A286810

/-- `gcd(A000032(2*n)², floor(acot(n)))` -/
def P9194747650946038738.Spec : Prop :=
  ∀ n, (P9194747650946038738.a n : ℤ) = A286810 n

end A286810

/-! ## A286810.P8972363016388962028

`record[A000032(n*and(1, n)+1)²]`
-/

namespace A286810.P8972363016388962028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (n * Nat.land 1 n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A286810.P8972363016388962028

namespace A286810

/-- `record[A000032(n*and(1, n)+1)²]` -/
def P8972363016388962028.Spec : Prop :=
  ∀ n, P8972363016388962028.a n = A286810 n

end A286810

/-! ## A286810.P5170533177058329923

`record[A000032((n+1)^and(1, n))²]`
-/

namespace A286810.P5170533177058329923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 ((n + 1) ^ Nat.land 1 n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A286810.P5170533177058329923

namespace A286810

/-- `record[A000032((n+1)^and(1, n))²]` -/
def P5170533177058329923.Spec : Prop :=
  ∀ n, P5170533177058329923.a n = A286810 n

end A286810

/-! ## A286810.P13315041982293724755

`record[A000032(C(n+1, n%2))²]`
-/

namespace A286810.P13315041982293724755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (Nat.choose (n + 1) (n % 2)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A286810.P13315041982293724755

namespace A286810

/-- `record[A000032(C(n+1, n%2))²]` -/
def P13315041982293724755.Spec : Prop :=
  ∀ n, P13315041982293724755.a n = A286810 n

end A286810

/-! ## A286810.P11111079034178604321

`record[A000032(n+1)^(and(1, n)+1)]`
-/

namespace A286810.P11111079034178604321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (n + 1) ^ (Nat.land 1 n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A286810.P11111079034178604321

namespace A286810

/-- `record[A000032(n+1)^(and(1, n)+1)]` -/
def P11111079034178604321.Spec : Prop :=
  ∀ n, P11111079034178604321.a n = A286810 n

end A286810

/-! ## A286810.P10661543037898287216

`A001254(A004277(n))`
-/

namespace A286810.P10661543037898287216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001254 (A004277 n).toNat

end

end A286810.P10661543037898287216

namespace A286810

/-- `A001254(A004277(n))` -/
def P10661543037898287216.Spec : Prop :=
  ∀ n, P10661543037898287216.a n = A286810 n

end A286810

/-! ## A286810.P6171377118612914893

`A001638(A008574(n))`
-/

namespace A286810.P6171377118612914893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001638 (A008574 n).toNat

end

end A286810.P6171377118612914893

namespace A286810

/-- `A001638(A008574(n))` -/
def P6171377118612914893.Spec : Prop :=
  ∀ n, P6171377118612914893.a n = A286810 n

end A286810

/-! ## A286810.P10499306743101424141

`A006499(A130824(n))`
-/

namespace A286810.P10499306743101424141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006499 (A130824 n).toNat

end

end A286810.P10499306743101424141

namespace A286810

/-- `A006499(A130824(n))` -/
def P10499306743101424141.Spec : Prop :=
  ∀ n, P10499306743101424141.a n = A286810 n

end A286810

/-! ## A286810.P10845198402634032277

`A001254(A004275(n+1))`
-/

namespace A286810.P10845198402634032277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001254 (A004275 (n + 1)).toNat

end

end A286810.P10845198402634032277

namespace A286810

/-- `A001254(A004275(n+1))` -/
def P10845198402634032277.Spec : Prop :=
  ∀ n, P10845198402634032277.a n = A286810 n

end A286810

/-! ## A286810.P2458775944275543237

`A001638(A019442(n+2))`
-/

namespace A286810.P2458775944275543237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001638 (A019442 (n + 2)).toNat

end

end A286810.P2458775944275543237

namespace A286810

/-- `A001638(A019442(n+2))` -/
def P2458775944275543237.Spec : Prop :=
  ∀ n, P2458775944275543237.a n = A286810 n

end A286810

/-! ## A286810.P76298593303450148

`A001254(A028310(2*n))`
-/

namespace A286810.P76298593303450148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001254 (A028310 (2 * n)).toNat

end

end A286810.P76298593303450148

namespace A286810

/-- `A001254(A028310(2*n))` -/
def P76298593303450148.Spec : Prop :=
  ∀ n, P76298593303450148.a n = A286810 n

end A286810

/-! ## A286810.P16349500372538090966

`A001254(A028310(n)+n)`
-/

namespace A286810.P16349500372538090966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001254 (A028310 n + (n : ℤ)).toNat

end

end A286810.P16349500372538090966

namespace A286810

/-- `A001254(A028310(n)+n)` -/
def P16349500372538090966.Spec : Prop :=
  ∀ n, P16349500372538090966.a n = A286810 n

end A286810

/-! ## A286810.P11728513371805194727

`A219233(n)*A219233(n)`
-/

namespace A286810.P11728513371805194727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219233 n * A219233 n

end

end A286810.P11728513371805194727

namespace A286810

/-- `A219233(n)*A219233(n)` -/
def P11728513371805194727.Spec : Prop :=
  ∀ n, P11728513371805194727.a n = A286810 n

end A286810

/-! ## A286810.P16625868704240744220

`A001638(A058992(2*(n+1)))`
-/

namespace A286810.P16625868704240744220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001638 (A058992 (2 * (n + 1))).toNat

end

end A286810.P16625868704240744220

namespace A286810

/-- `A001638(A058992(2*(n+1)))` -/
def P16625868704240744220.Spec : Prop :=
  ∀ n, P16625868704240744220.a n = A286810 n

end A286810

/-!
# A286811: Binary representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 251", based on the 5-celled von Neumann neighborhood.

The programs for A286811, there is no canonical definition to state claims against.
-/

/-! ## A286811.P2300652834225979625

`or(1, A288768(n))`
-/

namespace A286811.P2300652834225979625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A288768 n)

end

end A286811.P2300652834225979625

/-! ## A286811.P16994814861105692650

`or(1, A288801(n))`
-/

namespace A286811.P16994814861105692650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A288801 n)

end

end A286811.P16994814861105692650

/-! ## A286811.P5690519733076099690

`A288768(n)+A000035(n)`
-/

namespace A286811.P5690519733076099690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288768 n + A000035 n

end

end A286811.P5690519733076099690

/-! ## A286811.P16684277526214492684

`A286022(floor(log2(A286501(n))))`
-/

namespace A286811.P16684277526214492684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286022 (Nat.log 2 (A286501 n).toNat)

end

end A286811.P16684277526214492684

/-! ## A286811.P3162254464765236838

`A286023(floor(log2(A286501(n))))`
-/

namespace A286811.P3162254464765236838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286023 (Nat.log 2 (A286501 n).toNat)

end

end A286811.P3162254464765236838

/-! ## A286811.P1925626081567246229

`A286022(floor(log2(A287188(n))))`
-/

namespace A286811.P1925626081567246229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286022 (Nat.log 2 (A287188 n).toNat)

end

end A286811.P1925626081567246229

/-! ## A286811.P7767818799300541004

`A286023(floor(log2(A287188(n))))`
-/

namespace A286811.P7767818799300541004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286023 (Nat.log 2 (A287188 n).toNat)

end

end A286811.P7767818799300541004

/-! ## A286811.P5088612485754878228

`A288768(n)+Δ[A004526(n)]`
-/

namespace A286811.P5088612485754878228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288768 n + (f1 (n + 1) - f1 n)

end

end A286811.P5088612485754878228

/-! ## A286811.P4344403174542201116

`A288768(n)+Δ[A008619(n)]`
-/

namespace A286811.P4344403174542201116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288768 n + (f1 (n + 1) - f1 n)

end

end A286811.P4344403174542201116

/-! ## A286811.P11812422352220197563

`A288768(n)+char[A005408(n)]`
-/

namespace A286811.P11812422352220197563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288768 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A286811.P11812422352220197563

/-! ## A286811.P8591220547058215325

`A288768(n)+char[A131507(n)]`
-/

namespace A286811.P8591220547058215325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131507 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288768 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A286811.P8591220547058215325

/-! ## A286811.P11409327842170419178

`A288768(n)+A001221(A037227(n+1))`
-/

namespace A286811.P11409327842170419178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288768 n + A001221 (A037227 (n + 1)).toNat

end

end A286811.P11409327842170419178

/-!
# A286812: a(n) = 105 - 2^n.

The programs for A286812, the canonical program `A286812.P10033180724023441514` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A286812 has offset 0).

The definition of A286812 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `105-2^n` (program `A286812.P10033180724023441514`, by `A286812.P10033180724023441514.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A286812.P10033180724023441514

`105-2^n`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A286812

/-- `105-2^n` -/
def P10033180724023441514.Spec : Prop :=
  ∀ n, P10033180724023441514.a n = A286812 n

theorem P10033180724023441514.correct : P10033180724023441514.Spec := by
  intro n
  simp only [A286812]

end A286812

/-!
# A286813: Number of positive odd solutions to equation x^2 + 8*y^2 = 8*n + 9.

The programs for A286813, there is no canonical definition to state claims against.
-/

/-! ## A286813.P9515869369648131823

`A028597(xor(1, 8*n)+8)/4`
-/

namespace A286813.P9515869369648131823
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028597 (Nat.xor 1 (8 * n) + 8) : ℚ) / 4

end

end A286813.P9515869369648131823

/-! ## A286813.P10276722286036407338

`A028597(A004768(n))/4`
-/

namespace A286813.P10276722286036407338
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028597 (A004768 n).toNat : ℚ) / 4

end

end A286813.P10276722286036407338

/-! ## A286813.P4448245014096018137

`A028597(A004771(n)+2)/4`
-/

namespace A286813.P4448245014096018137
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028597 (A004771 n + 2).toNat : ℚ) / 4

end

end A286813.P4448245014096018137

/-! ## A286813.P3826675263081917481

`and(A180312(n), A321890(n+1))`
-/

namespace A286813.P3826675263081917481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A180312 n) (A321890 (n + 1))

end

end A286813.P3826675263081917481

/-! ## A286813.P1205893041710165393

`A000035(A226253(n)%A059886(2*n+3))`
-/

namespace A286813.P1205893041710165393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (Int.tmod (A226253 n) (A059886 (2 * n + 3))).toNat

end

end A286813.P1205893041710165393

/-!
# A286814: Number of matchings in the n-helm graph.

The programs for A286814, the canonical program `A286814.P11901322277021368725` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A286814 has offset 0).

The definition of A286814 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A286814.P11901322277021368725

`A002203(n)+n*A000129(n)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A286814

/-- `A002203(n)+n*A000129(n)` -/
def P11901322277021368725.Spec : Prop :=
  ∀ n, P11901322277021368725.a n = A286814 n

theorem P11901322277021368725.correct : P11901322277021368725.Spec := by
  intro n
  simp only [A286814]

end A286814

/-! ## A286814.P14157768320696019849

`4*a(n-1)-2*a(n-2)-4*a(n-3)-a(n-4)` with `a(0)=2, a(1)=3, a(2)=10, a(3)=29`
-/

namespace A286814.P14157768320696019849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 3, 10, 29] fun n a =>
  4 * a (n - 1) - 2 * a (n - 2) - 4 * a (n - 3) - a (n - 4)

end

end A286814.P14157768320696019849

namespace A286814

/-- `4*a(n-1)-2*a(n-2)-4*a(n-3)-a(n-4)` -/
def P14157768320696019849.Spec : Prop :=
  ∀ n, P14157768320696019849.a n = A286814 n

end A286814

/-! ## A286814.P9868790838843192931

`ogf((2-5x+2x^2+3x^3)/(1-4x+2x^2+4x^3+x^4))`
-/

namespace A286814.P9868790838843192931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -5, 2, 3] [1, -4, 2, 4, 1] n

end

end A286814.P9868790838843192931

namespace A286814

/-- `ogf((2-5x+2x^2+3x^3)/(1-4x+2x^2+4x^3+x^4))` -/
def P9868790838843192931.Spec : Prop :=
  ∀ n, P9868790838843192931.a n = A286814 n

end A286814

/-! ## A286814.P1194223390849491626

`A088211(n)+A001333(n)`
-/

namespace A286814.P1194223390849491626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088211 n + A001333 n

end

end A286814.P1194223390849491626

namespace A286814

/-- `A088211(n)+A001333(n)` -/
def P1194223390849491626.Spec : Prop :=
  ∀ n, P1194223390849491626.a n = A286814 n

end A286814

/-! ## A286814.P11742402697891721410

`A093967(n)+A002203(n)`
-/

namespace A286814.P11742402697891721410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093967 n + A002203 n

end

end A286814.P11742402697891721410

namespace A286814

/-- `A093967(n)+A002203(n)` -/
def P11742402697891721410.Spec : Prop :=
  ∀ n, P11742402697891721410.a n = A286814 n

end A286814

/-! ## A286814.P5113516020779278560

`A093967(n)+2*A001333(n)`
-/

namespace A286814.P5113516020779278560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093967 n + 2 * A001333 n

end

end A286814.P5113516020779278560

namespace A286814

/-- `A093967(n)+2*A001333(n)` -/
def P5113516020779278560.Spec : Prop :=
  ∀ n, P5113516020779278560.a n = A286814 n

end A286814

/-! ## A286814.P6238617641629735028

`A080039(n)+or(1, A093967(n))`
-/

namespace A286814.P6238617641629735028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080039 n + Int.lor 1 (A093967 n)

end

end A286814.P6238617641629735028

namespace A286814

/-- `A080039(n)+or(1, A093967(n))` -/
def P6238617641629735028.Spec : Prop :=
  ∀ n, P6238617641629735028.a n = A286814 n

end A286814

/-! ## A286814.P16851563739618747259

`A002203(n)+n*A215928(n)`
-/

namespace A286814.P16851563739618747259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002203 n + (n : ℤ) * A215928 n

end

end A286814.P16851563739618747259

namespace A286814

/-- `A002203(n)+n*A215928(n)` -/
def P16851563739618747259.Spec : Prop :=
  ∀ n, P16851563739618747259.a n = A286814 n

end A286814

/-! ## A286814.P6442867873563189774

`A093967(n)+Δ[2*A000129(n)]`
-/

namespace A286814.P6442867873563189774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000129 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093967 n + (f1 (n + 1) - f1 n)

end

end A286814.P6442867873563189774

namespace A286814

/-- `A093967(n)+Δ[2*A000129(n)]` -/
def P6442867873563189774.Spec : Prop :=
  ∀ n, P6442867873563189774.a n = A286814 n

end A286814

/-! ## A286814.P11381506764282708699

`A000129(n+1)+A088211(n)-A000129(n)`
-/

namespace A286814.P11381506764282708699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 (n + 1) + (A088211 n - A000129 n)

end

end A286814.P11381506764282708699

namespace A286814

/-- `A000129(n+1)+A088211(n)-A000129(n)` -/
def P11381506764282708699.Spec : Prop :=
  ∀ n, P11381506764282708699.a n = A286814 n

end A286814

/-!
# A286815: Square array A(n,k), n>=0, k>=0, read by antidiagonals, where column k is the expansion of (Product_{j>=1} (1 - x^(2*j))^5/((1 - x^j)*(1 - x^(4*j)))^2)^k.

The programs for A286815, there is no canonical definition to state claims against.
-/

/-! ## A286815.P7788237863979741122

`A319574(A002378(n)%A080036(n))`
-/

namespace A286815.P7788237863979741122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319574 (Int.tmod (A002378 n) (A080036 n)).toNat

end

end A286815.P7788237863979741122

/-! ## A286815.P2914805833005835834

`A319574(A061579(n))`
-/

namespace A286815.P2914805833005835834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319574 (A061579 n).toNat

end

end A286815.P2914805833005835834

/-! ## A286815.P302056580100908193

`A319574(A114327(n)+n)`
-/

namespace A286815.P302056580100908193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319574 (A114327 n + (n : ℤ)).toNat

end

end A286815.P302056580100908193

/-! ## A286815.P13727861245495849607

`A319574(A038722(n+1)-1)`
-/

namespace A286815.P13727861245495849607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319574 (A038722 (n + 1) - 1).toNat

end

end A286815.P13727861245495849607

/-! ## A286815.P5929649642219001536

`A319574(A002024(n+1)²-(n+1))`
-/

namespace A286815.P5929649642219001536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319574 (A002024 (n + 1) ^ 2 - (n + 1 : ℤ)).toNat

end

end A286815.P5929649642219001536

/-!
# A286818: Binary representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 307", based on the 5-celled von Neumann neighborhood.

The programs for A286818, there is no canonical definition to state claims against.
-/

/-! ## A286818.P7773308209307924800

`A007088(A287598(n))`
-/

namespace A286818.P7773308209307924800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A287598 n).toNat

end

end A286818.P7773308209307924800

/-! ## A286818.P9307544696455466786

`A185544(2*A287598(n))`
-/

namespace A286818.P9307544696455466786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A287598 n).toNat

end

end A286818.P9307544696455466786

/-! ## A286818.P12147629316296004566

`A185544(2*A287624(n))-char[11]`
-/

namespace A286818.P12147629316296004566
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A287624 n).toNat - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A286818.P12147629316296004566

/-! ## A286818.P13953484940975648312

`A287622(n)+A014108(A286829(n))`
-/

namespace A286818.P13953484940975648312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287622 n + A014108 (A286829 n).toNat

end

end A286818.P13953484940975648312

/-! ## A286818.P15366741449163311342

`A287622(n)%A346952(n+4)`
-/

namespace A286818.P15366741449163311342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A287622 n) (A346952 (n + 4))

end

end A286818.P15366741449163311342

/-!
# A286819: Binary representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 307", based on the 5-celled von Neumann neighborhood.

The programs for A286819, there is no canonical definition to state claims against.
-/

/-! ## A286819.P17917732720090632992

`A007088(A287599(n))`
-/

namespace A286819.P17917732720090632992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A287599 n).toNat

end

end A286819.P17917732720090632992

/-! ## A286819.P6027119847357535284

`A185544(2*A287599(n))`
-/

namespace A286819.P6027119847357535284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A287599 n).toNat

end

end A286819.P6027119847357535284

/-! ## A286819.P846295180801484603

`A287623(A062399(n))`
-/

namespace A286819.P846295180801484603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287623 (A062399 n).toNat

end

end A286819.P846295180801484603

/-! ## A286819.P16742265408554711803

`A287623(A351870(n))`
-/

namespace A286819.P16742265408554711803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287623 (A351870 n).toNat

end

end A286819.P16742265408554711803

/-! ## A286819.P14274140386255399900

`A287623(lcm(n, A057889(n)))`
-/

namespace A286819.P14274140386255399900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287623 (Int.lcm (n : ℤ) (A057889 n))

end

end A286819.P14274140386255399900

/-!
# A286820: a(n) = smallest positive multiple of n whose factorial base representation contains only 0's and 1's.

The programs for A286820, there is no canonical definition to state claims against.
-/

/-! ## A286820.P3444630848632375489

`(n+1)*A284750(n+1)`
-/

namespace A286820.P3444630848632375489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A284750 (n + 1)

end

end A286820.P3444630848632375489

/-!
# A286821: Binary representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 670", based on the 5-celled von Neumann neighborhood.

The programs for A286821, there is no canonical definition to state claims against.
-/

/-! ## A286821.P9509864244991483378

`A007088(A289360(n))`
-/

namespace A286821.P9509864244991483378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A289360 n).toNat

end

end A286821.P9509864244991483378

/-! ## A286821.P10864650971736862494

`A305989(A290160(n)/A060546(n))`
-/

namespace A286821.P10864650971736862494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305989 (SequenceMachineLib.roundAway ((A290160 n : ℚ) / (A060546 n : ℚ))).toNat

end

end A286821.P10864650971736862494

/-! ## A286821.P3718436461389940653

`A305989(A290160(n)/A016116(n+1))`
-/

namespace A286821.P3718436461389940653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305989 (SequenceMachineLib.roundAway ((A290160 n : ℚ) / (A016116 (n + 1) : ℚ))).toNat

end

end A286821.P3718436461389940653

/-! ## A286821.P4709127579549318327

`A305989(floor(A290160(n)/A016116(n)))`
-/

namespace A286821.P4709127579549318327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305989 ⌊(A290160 n : ℚ) / (A016116 n : ℚ)⌋.toNat

end

end A286821.P4709127579549318327

/-! ## A286821.P6180051433058229073

`A305989(ceil(A290160(n)/A016116(n)))`
-/

namespace A286821.P6180051433058229073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305989 ⌈(A290160 n : ℚ) / (A016116 n : ℚ)⌉.toNat

end

end A286821.P6180051433058229073

/-!
# A286822: Binary representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 670", based on the 5-celled von Neumann neighborhood.

The programs for A286822, there is no canonical definition to state claims against.
-/

/-! ## A286822.P3192983958756193430

`A007088(A290160(n))`
-/

namespace A286822.P3192983958756193430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A290160 n).toNat

end

end A286822.P3192983958756193430

/-! ## A286822.P8262249138827369919

`A185544(2*A290160(n))`
-/

namespace A286822.P8262249138827369919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A290160 n).toNat

end

end A286822.P8262249138827369919

/-! ## A286822.P2310252692550609547

`A290211(A002998(n))`
-/

namespace A286822.P2310252692550609547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290211 (A002998 n).toNat

end

end A286822.P2310252692550609547

/-! ## A286822.P9102996487964464813

`A290211(A046469(n))`
-/

namespace A286822.P9102996487964464813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290211 (A046469 n).toNat

end

end A286822.P9102996487964464813

/-! ## A286822.P814744505960255772

`A290211(A051022(n))`
-/

namespace A286822.P814744505960255772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290211 (A051022 n).toNat

end

end A286822.P814744505960255772

/-!
# A286825: Decimal representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 801", based on the 5-celled von Neumann neighborhood.

The programs for A286825, there is no canonical definition to state claims against.
-/

/-! ## A286825.P7145822723761850823

`A289098(n)%A029813(n)`
-/

namespace A286825.P7145822723761850823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A289098 n) (A029813 n)

end

end A286825.P7145822723761850823

/-! ## A286825.P16743214754130460792

`record[A289098(A325799(n+1))]`
-/

namespace A286825.P16743214754130460792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289098 (A325799 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A286825.P16743214754130460792

/-! ## A286825.P1541931068243513921

`A335462(record[xor(3, n)])+A289098(n)`
-/

namespace A286825.P1541931068243513921
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335462 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) + A289098 n

end

end A286825.P1541931068243513921

/-! ## A286825.P6305064068371263845

`A289098(n)+C(2, A219049(n+1))`
-/

namespace A286825.P6305064068371263845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289098 n + (Nat.choose 2 (A219049 (n + 1)).toNat : ℤ)

end

end A286825.P6305064068371263845

/-! ## A286825.P3714314661902745232

`A289098(n)+C(n, A316153(2*n+5))`
-/

namespace A286825.P3714314661902745232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289098 n + (Nat.choose n (A316153 (2 * n + 5)).toNat : ℤ)

end

end A286825.P3714314661902745232

/-!
# A286826: Decimal representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 801", based on the 5-celled von Neumann neighborhood.

The programs for A286826, there is no canonical definition to state claims against.
-/

/-! ## A286826.P15020755663182155239

`A289099(n)%A029813(n)`
-/

namespace A286826.P15020755663182155239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A289099 n) (A029813 n)

end

end A286826.P15020755663182155239

/-! ## A286826.P15117461684939932063

`or(A058343(n)!, A289099(n))`
-/

namespace A286826.P15117461684939932063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (Nat.factorial (A058343 n).toNat : ℤ) (A289099 n)

end

end A286826.P15117461684939932063

/-! ## A286826.P16084535712678201834

`A289099(n*A001222(A120937(n)))`
-/

namespace A286826.P16084535712678201834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289099 ((n : ℤ) * A001222 (A120937 n).toNat).toNat

end

end A286826.P16084535712678201834

/-! ## A286826.P11551010961827744268

`A001221(A120937(n))*A289099(n)`
-/

namespace A286826.P11551010961827744268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A120937 n).toNat * A289099 n

end

end A286826.P11551010961827744268

/-! ## A286826.P1991857544326916381

`or(A010060(A000045(n)), A289099(n))`
-/

namespace A286826.P1991857544326916381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A010060 (A000045 n).toNat) (A289099 n)

end

end A286826.P1991857544326916381

/-!
# A286827: Binary representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 805", based on the 5-celled von Neumann neighborhood.

The programs for A286827, there is no canonical definition to state claims against.
-/

/-! ## A286827.P6850821745420232002

`A000042(n+1)-A287630(A004442(n))`
-/

namespace A286827.P6850821745420232002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000042 (n + 1) - A287630 (A004442 n).toNat

end

end A286827.P6850821745420232002

/-! ## A286827.P17157491702554386407

`A289404(2*n)-A287630(A004442(n))`
-/

namespace A286827.P17157491702554386407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289404 (2 * n) - A287630 (A004442 n).toNat

end

end A286827.P17157491702554386407

/-! ## A286827.P14927078530630883091

`A285540(2*n)-A287630(A004442(n))`
-/

namespace A286827.P14927078530630883091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285540 (2 * n) - A287630 (A004442 n).toNat

end

end A286827.P14927078530630883091

/-! ## A286827.P16874662962062956201

`A007088(A286829(n))`
-/

namespace A286827.P16874662962062956201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A286829 n).toNat

end

end A286827.P16874662962062956201

/-! ## A286827.P16036901612901098016

`A185544(2*A286829(n))`
-/

namespace A286827.P16036901612901098016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A286829 n).toNat

end

end A286827.P16036901612901098016

/-!
# A286828: Binary representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 805", based on the 5-celled von Neumann neighborhood.

The programs for A286828, there is no canonical definition to state claims against.
-/

/-! ## A286828.P5770854240252824075

`A007088(A286830(n))`
-/

namespace A286828.P5770854240252824075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A286830 n).toNat

end

end A286828.P5770854240252824075

/-! ## A286828.P1646959898073616723

`A089591(or(1, A286830(n)))`
-/

namespace A286828.P1646959898073616723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089591 (Int.lor 1 (A286830 n)).toNat

end

end A286828.P1646959898073616723

/-! ## A286828.P16552594947527721924

`A089591(A286830(n)%(7*6^n-1))`
-/

namespace A286828.P16552594947527721924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089591 (Int.tmod (A286830 n) ((7 * 6 ^ n : ℤ) - 1)).toNat

end

end A286828.P16552594947527721924

/-! ## A286828.P14696210071710654839

`A089591(gcd(A151878(n), A286830(n)))`
-/

namespace A286828.P14696210071710654839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089591 (Int.gcd (A151878 n) (A286830 n))

end

end A286828.P14696210071710654839

/-! ## A286828.P2059435110581135017

`A089591(A167852(n+1)*A286830(n))`
-/

namespace A286828.P2059435110581135017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089591 (A167852 (n + 1) * A286830 n).toNat

end

end A286828.P2059435110581135017

/-!
# A286829: Decimal representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 805", based on the 5-celled von Neumann neighborhood.

The programs for A286829, there is no canonical definition to state claims against.
-/

/-! ## A286829.P15748509327568934132

`or(A001221(n!), A290523(n))`
-/

namespace A286829.P15748509327568934132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001221 (Nat.factorial n)) (A290523 n)

end

end A286829.P15748509327568934132

/-! ## A286829.P2291013325513541869

`or(A000122(A000738(n)), A289377(n))`
-/

namespace A286829.P2291013325513541869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000122 (A000738 n).toNat) (A289377 n)

end

end A286829.P2291013325513541869

/-! ## A286829.P13017351527715694488

`or(A001221(A000142(n)), A289377(n))`
-/

namespace A286829.P13017351527715694488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001221 (A000142 n).toNat) (A289377 n)

end

end A286829.P13017351527715694488

/-! ## A286829.P14037078203712022793

`or(A001221(A000142(n)), A290523(n))`
-/

namespace A286829.P14037078203712022793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001221 (A000142 n).toNat) (A290523 n)

end

end A286829.P14037078203712022793

/-! ## A286829.P11955765026918771102

`or(A124762(A167606(n)), A289377(n))`
-/

namespace A286829.P11955765026918771102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A124762 (A167606 n).toNat) (A289377 n)

end

end A286829.P11955765026918771102

/-!
# A286830: Decimal representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 805", based on the 5-celled von Neumann neighborhood.

The programs for A286830, there is no canonical definition to state claims against.
-/

/-! ## A286830.P3223307137445347722

`A325401(A286829(n))`
-/

namespace A286830.P3223307137445347722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325401 (A286829 n).toNat

end

end A286830.P3223307137445347722

/-! ## A286830.P2025734091963343166

`A030101(A286829(A000007(n)+n))`
-/

namespace A286830.P2025734091963343166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (A286829 (A000007 n + (n : ℤ)).toNat).toNat

end

end A286830.P2025734091963343166

/-! ## A286830.P12191137744386615240

`A030101(A286829(A088157(n)+n))`
-/

namespace A286830.P12191137744386615240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (A286829 (A088157 n + (n : ℤ)).toNat).toNat

end

end A286830.P12191137744386615240

/-! ## A286830.P13573376203420528631

`A030101(A286829(A151878(n)+n))`
-/

namespace A286830.P13573376203420528631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (A286829 (A151878 n + (n : ℤ)).toNat).toNat

end

end A286830.P13573376203420528631

/-! ## A286830.P12191547834151416392

`A030101(A054977(n)*A286829(n))`
-/

namespace A286830.P12191547834151416392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (A054977 n * A286829 n).toNat

end

end A286830.P12191547834151416392

/-!
# A286831: Binary representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 806", based on the 5-celled von Neumann neighborhood.

The programs for A286831, there is no canonical definition to state claims against.
-/

/-! ## A286831.P5439920601540603719

`A007088(A286833(n))`
-/

namespace A286831.P5439920601540603719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A286833 n).toNat

end

end A286831.P5439920601540603719

/-! ## A286831.P12061807425674404754

`∏{p}[A290236(n), #]`
-/

namespace A286831.P12061807425674404754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290236 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A286831.P12061807425674404754

/-! ## A286831.P427442370409492829

`A000026(A290236(n))`
-/

namespace A286831.P427442370409492829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000026 (A290236 n).toNat

end

end A286831.P427442370409492829

/-! ## A286831.P14361054206958739289

`A004086(A290622(n))`
-/

namespace A286831.P14361054206958739289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (A290622 n).toNat

end

end A286831.P14361054206958739289

/-! ## A286831.P12311529745317833900

`A188548(A290238(n))`
-/

namespace A286831.P12311529745317833900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188548 (A290238 n).toNat

end

end A286831.P12311529745317833900

/-!
# A286832: Binary representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 806", based on the 5-celled von Neumann neighborhood.

The programs for A286832, there is no canonical definition to state claims against.
-/

/-! ## A286832.P11269648906749834548

`A007088(A286834(n))`
-/

namespace A286832.P11269648906749834548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A286834 n).toNat

end

end A286832.P11269648906749834548

/-! ## A286832.P12846981806135598991

`A007088(A290239(n))`
-/

namespace A286832.P12846981806135598991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A290239 n).toNat

end

end A286832.P12846981806135598991

/-!
# A286834: Decimal representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 806", based on the 5-celled von Neumann neighborhood.

The programs for A286834, there is no canonical definition to state claims against.
-/

/-! ## A286834.P14103177144296175309

`A316437(A290239(n))`
-/

namespace A286834.P14103177144296175309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316437 (A290239 n).toNat

end

end A286834.P14103177144296175309

/-! ## A286834.P11357987440989473846

`A014682(2*A290239(n))`
-/

namespace A286834.P11357987440989473846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (2 * A290239 n).toNat

end

end A286834.P11357987440989473846

/-! ## A286834.P2379117539383748007

`filter[A290239(n), A011558(#)]`
-/

namespace A286834.P2379117539383748007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290239 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A011558 (f1 j).toNat = 1) n)

end

end A286834.P2379117539383748007

/-! ## A286834.P1049260170239011391

`filter[A290239(n), A228039(#)]`
-/

namespace A286834.P1049260170239011391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290239 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A228039 (f1 j).toNat = 1) n)

end

end A286834.P1049260170239011391

/-! ## A286834.P5521664327901854111

`filter[A290239(n), A322860(#)]`
-/

namespace A286834.P5521664327901854111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290239 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A322860 (f1 j).toNat = 1) n)

end

end A286834.P5521664327901854111

/-!
# A286835: a(n) is the number of terms m such that d(m!) divides d((m!)^(2n+1)), where d is A000005.

The programs for A286835, there is no canonical definition to state claims against.
-/

/-! ## A286835.P6497054882311163440

`A286872(2*n+3)`
-/

namespace A286835.P6497054882311163440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286872 (2 * n + 3)

end

end A286835.P6497054882311163440

/-! ## A286835.P14026105145669468302

`floor(sqrt(A286872(Δ[(n+1)²])²+1))`
-/

namespace A286835.P14026105145669468302
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A286872 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat ^ 2 + 1)

end

end A286835.P14026105145669468302

/-! ## A286835.P14866681237141372122

`A000027(A286872(Δ[(n+1)²]))`
-/

namespace A286835.P14866681237141372122
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A286872 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat

end

end A286835.P14866681237141372122

/-! ## A286835.P10651213447877522436

`A286872(Δ[(n+1)²])%A017353(n)`
-/

namespace A286835.P10651213447877522436
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A286872 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat) (A017353 n)

end

end A286835.P10651213447877522436

/-! ## A286835.P1870509953823704348

`A286872(Δ[(n+1)²])+A000007(n+1)`
-/

namespace A286835.P1870509953823704348
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286872 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + A000007 (n + 1)

end

end A286835.P1870509953823704348

/-! ## A286835.P15040657993146713273

`A286872(A004273(n+2))%A017621(n)`
-/

namespace A286835.P15040657993146713273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A286872 (A004273 (n + 2)).toNat) (A017621 n)

end

end A286835.P15040657993146713273

/-! ## A286835.P6986113618988956796

`round(A286872(A004273(n+2))+n/A269782(n))`
-/

namespace A286835.P6986113618988956796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A286872 (A004273 (n + 2)).toNat : ℚ) + (n : ℚ) / (A269782 n : ℚ))

end

end A286835.P6986113618988956796

/-! ## A286835.P4568176265818692246

`A286872(Δ[(n+1)²])^A001221(A008578(n+2))`
-/

namespace A286835.P4568176265818692246
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A286872 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) ^ (A001221 (A008578 (n + 2)).toNat : ℤ)

end

end A286835.P4568176265818692246

/-! ## A286835.P12120601428376156777

`A286872(Δ[(n+1)²])^A001221(A142097(n+1))`
-/

namespace A286835.P12120601428376156777
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A286872 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) ^ (A001221 (A142097 (n + 1)).toNat : ℤ)

end

end A286835.P12120601428376156777

/-! ## A286835.P13808787750501921146

`A286872(A004273(n+2))+A087003(A213473(n+2))`
-/

namespace A286835.P13808787750501921146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286872 (A004273 (n + 2)).toNat + A087003 (A213473 (n + 2)).toNat

end

end A286835.P13808787750501921146

/-!
# A286836: Even numbers that are the sum of two odd prime cubes.

The programs for A286836, there is no canonical definition to state claims against.
-/

/-! ## A286836.P18391612384399487766

`∩[A086119(n+3), 2*(n-1)]`
-/

namespace A286836.P18391612384399487766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086119 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((n : ℤ) - 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A286836.P18391612384399487766

/-! ## A286836.P17318326375740333024

`filter[A086119(n+2), A354034(#)]`
-/

namespace A286836.P17318326375740333024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086119 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354034 (f1 j).toNat = 1) n)

end

end A286836.P17318326375740333024

/-! ## A286836.P9099241600346569094

`filter[A086119(n+1), A267423(#)]`
-/

namespace A286836.P9099241600346569094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086119 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267423 (f1 j).toNat = 1) n)

end

end A286836.P9099241600346569094

/-! ## A286836.P1764891583696540710

`filter[A086119(n+2), A059841(#)]`
-/

namespace A286836.P1764891583696540710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086119 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A059841 (f1 j).toNat = 1) n)

end

end A286836.P1764891583696540710

/-! ## A286836.P11940113041945214102

`filter[A086119(n+2), A135528(#)]`
-/

namespace A286836.P11940113041945214102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086119 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A135528 (f1 j).toNat = 1) n)

end

end A286836.P11940113041945214102

/-!
# A286838: Digits of one of the two 13-adic integers sqrt(-1) (digits 0, 1, ... , 9, 10, 11, 12 are used instead of 0, 1, ... , 9, A, B, C).

The programs for A286838, there is no canonical definition to state claims against.
-/

/-! ## A286838.P3459784278266838497

`A054977(n)+11-A286839(n)`
-/

namespace A286838.P3459784278266838497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n + (11 - A286839 n)

end

end A286838.P3459784278266838497

/-! ## A286838.P10741772656770842973

`A000007(n)+12-A286839(n)`
-/

namespace A286838.P10741772656770842973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (12 - A286839 n)

end

end A286838.P10741772656770842973

/-! ## A286838.P12457222955989673853

`13-(A286839(n)+A057427(n))`
-/

namespace A286838.P12457222955989673853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  13 - (A286839 n + A057427 n)

end

end A286838.P12457222955989673853

/-! ## A286838.P12980153267859324530

`A057428(n)+13-A286839(n)`
-/

namespace A286838.P12980153267859324530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n + (13 - A286839 n)

end

end A286838.P12980153267859324530

/-! ## A286838.P14821259545953601676

`13-A286839(n)-char[A092486(n)]`
-/

namespace A286838.P14821259545953601676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092486 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  13 - A286839 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A286838.P14821259545953601676

/-! ## A286838.P11823306396973026014

`A322087(n)+A322088(n)-A286839(n)`
-/

namespace A286838.P11823306396973026014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322087 n + (A322088 n - A286839 n)

end

end A286838.P11823306396973026014

/-! ## A286838.P197774136252342340

`A322091(n)+A322092(n)-A286839(n)`
-/

namespace A286838.P197774136252342340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322091 n + (A322092 n - A286839 n)

end

end A286838.P197774136252342340

/-! ## A286838.P10654154582637451514

`A001222(A026239(2*(n+1)))+11-A286839(n)`
-/

namespace A286838.P10654154582637451514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A026239 (2 * (n + 1))).toNat + (11 - A286839 n)

end

end A286838.P10654154582637451514

/-! ## A286838.P5079477140562310969

`13-A286839(n)-(A073424(A000124(n))-1)²`
-/

namespace A286838.P5079477140562310969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  13 - A286839 n - (A073424 (A000124 n).toNat - 1) ^ 2

end

end A286838.P5079477140562310969

/-! ## A286838.P11230730239043060467

`A324086(n)+A324087(n)-A286839(n)`
-/

namespace A286838.P11230730239043060467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324086 n + (A324087 n - A286839 n)

end

end A286838.P11230730239043060467

/-!
# A286839: Digits of one of the two 13-adic integers sqrt(-1) (digits 0, 1, ... , 9, 10, 11, 12 are used instead of 0, 1, ... , 9, A, B, C).

The programs for A286839, there is no canonical definition to state claims against.
-/

/-! ## A286839.P6531688737152422195

`A054977(n)+11-A286838(n)`
-/

namespace A286839.P6531688737152422195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n + (11 - A286838 n)

end

end A286839.P6531688737152422195

/-! ## A286839.P548869087236261049

`A000007(n)+12-A286838(n)`
-/

namespace A286839.P548869087236261049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (12 - A286838 n)

end

end A286839.P548869087236261049

/-! ## A286839.P2474751216431365165

`13-(A286838(n)+A057427(n))`
-/

namespace A286839.P2474751216431365165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  13 - (A286838 n + A057427 n)

end

end A286839.P2474751216431365165

/-! ## A286839.P6555144030304666773

`A057428(n)+13-A286838(n)`
-/

namespace A286839.P6555144030304666773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n + (13 - A286838 n)

end

end A286839.P6555144030304666773

/-! ## A286839.P1490820949823583887

`A322087(n)+A322088(n)-A286838(n)`
-/

namespace A286839.P1490820949823583887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322087 n + (A322088 n - A286838 n)

end

end A286839.P1490820949823583887

/-! ## A286839.P5319340064871958256

`A322091(n)+A322092(n)-A286838(n)`
-/

namespace A286839.P5319340064871958256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322091 n + (A322092 n - A286838 n)

end

end A286839.P5319340064871958256

/-! ## A286839.P3880201441678302457

`13-A286838(n)-A000007(A000007(n)*A034887(n))`
-/

namespace A286839.P3880201441678302457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  13 - A286838 n - A000007 (A000007 n * A034887 n).toNat

end

end A286839.P3880201441678302457

/-! ## A286839.P3435124166255810818

`A014963(A130824(n+1))+11-A286838(n)`
-/

namespace A286839.P3435124166255810818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A130824 (n + 1)).toNat + (11 - A286838 n)

end

end A286839.P3435124166255810818

/-! ## A286839.P10501434224304906815

`gcd(2, A097256(A006995(n+1)))+11-A286838(n)`
-/

namespace A286839.P10501434224304906815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 2 (A097256 (A006995 (n + 1)).toNat) : ℤ) + (11 - A286838 n)

end

end A286839.P10501434224304906815

/-!
# A286840: One of the two successive approximations up to 13^n for 13-adic integer sqrt(-1). Here the 5 (mod 13) case (except for n=0).

The programs for A286840, there is no canonical definition to state claims against.
-/

/-! ## A286840.P8582493658233223024

`A322085(n)+A322086(n)-A286841(n)`
-/

namespace A286840.P8582493658233223024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322085 n + (A322086 n - A286841 n)

end

end A286840.P8582493658233223024

/-! ## A286840.P12953593305848884392

`A034944(n)%(13^n)`
-/

namespace A286840.P12953593305848884392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A034944 n) (13 ^ n : ℤ)

end

end A286840.P12953593305848884392

/-! ## A286840.P5414550768712360322

`A322089(n)+A322090(n)-A286841(n)`
-/

namespace A286840.P5414550768712360322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322089 n + (A322090 n - A286841 n)

end

end A286840.P5414550768712360322

/-! ## A286840.P10554271090797408066

`A324077(n)+A324084(n)-A286841(n)`
-/

namespace A286840.P10554271090797408066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324077 n + (A324084 n - A286841 n)

end

end A286840.P10554271090797408066

/-!
# A286841: One of the two successive approximations up to 13^n for 13-adic integer sqrt(-1). Here the 8 (mod 13) case (except for n=0).

The programs for A286841, there is no canonical definition to state claims against.
-/

/-! ## A286841.P17990629231099919979

`A322085(n)+A322086(n)-A286840(n)`
-/

namespace A286841.P17990629231099919979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322085 n + (A322086 n - A286840 n)

end

end A286841.P17990629231099919979

/-! ## A286841.P4802856686589025090

`A322089(n)+A322090(n)-A286840(n)`
-/

namespace A286841.P4802856686589025090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322089 n + (A322090 n - A286840 n)

end

end A286841.P4802856686589025090

/-! ## A286841.P4172030486564725813

`A324077(n)+A324084(n)-A286840(n)`
-/

namespace A286841.P4172030486564725813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324077 n + (A324084 n - A286840 n)

end

end A286841.P4172030486564725813

/-! ## A286841.P15971908487388779056

`A324082(n)+A324083(n)-A286840(n)`
-/

namespace A286841.P15971908487388779056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324082 n + (A324083 n - A286840 n)

end

end A286841.P15971908487388779056

/-!
# A286844: a(n) = log_2(A286843(n) - A001065(A286843(n))).

The programs for A286844, there is no canonical definition to state claims against.
-/

/-! ## A286844.P18077038938072404764

`log2(A286843(n+1)-A001065(A286843(n+1)))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A286844.P18077038938072404764
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A286843 (n + 1) - A001065 (A286843 (n + 1)).toNat : ℝ)

end

end A286844.P18077038938072404764

/-! ## A286844.P2732997206538642451

`∑{e}[A033879(A286843(n+1)), #]`
-/

namespace A286844.P2732997206538642451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033879 (A286843 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A286844.P2732997206538642451

/-! ## A286844.P6473160756729477859

`A001222(A033879(A286843(n+1)))`
-/

namespace A286844.P6473160756729477859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A033879 (A286843 (n + 1)).toNat).toNat

end

end A286844.P6473160756729477859

/-! ## A286844.P10631910793206071243

`∑{d}[A033879(A286843(n+1)), A001221(#)]`
-/

namespace A286844.P10631910793206071243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033879 (A286843 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A001221 d

end

end A286844.P10631910793206071243

/-! ## A286844.P4921425606606459444

`A001222(A286843(n+1)-A001065(A286843(n+1)))`
-/

namespace A286844.P4921425606606459444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A286843 (n + 1) - A001065 (A286843 (n + 1)).toNat).toNat

end

end A286844.P4921425606606459444

/-!
# A286848: Number of minimal dominating sets in the grid graph P_3 X P_n.

The programs for A286848, there is no canonical definition to state claims against.
-/

/-! ## A286848.P11739778998406304972

`A286847(∑[n+3]+1)`
-/

namespace A286848.P11739778998406304972
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286847 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A286848.P11739778998406304972

/-! ## A286848.P4631112251870047877

`record[A286847(A347633(n+2))]`
-/

namespace A286848.P4631112251870047877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286847 (A347633 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A286848.P4631112251870047877

/-! ## A286848.P969981341808317146

`A286847(A167614(n+1))+char[20]`
-/

namespace A286848.P969981341808317146
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  20

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286847 (A167614 (n + 1)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A286848.P969981341808317146

/-! ## A286848.P15083550359013843363

`A286847(A055998(n)+6)+char[16]`
-/

namespace A286848.P15083550359013843363
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286847 (A055998 n + 6).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A286848.P15083550359013843363

/-! ## A286848.P17038997589124777008

`A286847(A034856(n+2))+char[23]`
-/

namespace A286848.P17038997589124777008
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  23

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286847 (A034856 (n + 2)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A286848.P17038997589124777008

/-!
# A286849: Array read by antidiagonals: T(m,n) = number of minimal dominating sets in the n X m king graph.

The programs for A286849, there is no canonical definition to state claims against.
-/

/-! ## A286849.P11007491653638741725

`A279069(A296396(n+1)^A333751(n+1))`
-/

namespace A286849.P11007491653638741725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279069 (SequenceMachineLib.roundAway ((A296396 (n + 1) : ℚ) ^ (A333751 (n + 1) : ℤ))).toNat

end

end A286849.P11007491653638741725

/-! ## A286849.P10482154942920274926

`A279069(A296396(n+1)%A338601(n+1))`
-/

namespace A286849.P10482154942920274926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279069 (Int.tmod (A296396 (n + 1)) (A338601 (n + 1))).toNat

end

end A286849.P10482154942920274926

/-! ## A286849.P15226542656449047133

`A279069(C(A296396(n+1), A333751(n+1)))`
-/

namespace A286849.P15226542656449047133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279069 (Nat.choose (A296396 (n + 1)).toNat (A333751 (n + 1)).toNat)

end

end A286849.P15226542656449047133

/-! ## A286849.P14874242007611070378

`A135837(or(A038722(n+1), A187829(n+1)))`
-/

namespace A286849.P14874242007611070378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135837 (Int.lor (A038722 (n + 1)) (A187829 (n + 1))).toNat

end

end A286849.P14874242007611070378

/-! ## A286849.P17715209591892847214

`A359212(A000079(n))*A374452(n)`
-/

namespace A286849.P17715209591892847214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359212 (A000079 n).toNat * A374452 n

end

end A286849.P17715209591892847214

/-!
# A286850: Number of minimal dominating sets in the 2 X n king graph.

The programs for A286850, the canonical program `A286850.P8226762627516066574` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A286850 has offset 1).

The definition of A286850 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A286850.P8226762627516066574

`2*a(n-2)+2*a(n-3)+4*a(n-4)-8*a(n-6)` with `a(0)=2, a(1)=4, a(2)=6, a(3)=16, a(4)=20, a(5)=52`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A286850

/-- `2*a(n-2)+2*a(n-3)+4*a(n-4)-8*a(n-6)` -/
def P8226762627516066574.Spec : Prop :=
  ∀ n, P8226762627516066574.a n = A286850 (n + 1)

theorem P8226762627516066574.correct : P8226762627516066574.Spec := by
  intro n
  simp only [A286850, Nat.add_sub_cancel]

end A286850

/-! ## A286850.P8914193008065125305

`A286849(∑[n+2])`
-/

namespace A286850.P8914193008065125305
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286849 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A286850.P8914193008065125305

namespace A286850

/-- `A286849(∑[n+2])` -/
def P8914193008065125305.Spec : Prop :=
  ∀ n, P8914193008065125305.a n = A286850 (n + 1)

end A286850

/-! ## A286850.P7302053320186486102

`record[A286849(abs(A201163(n)))]`
-/

namespace A286850.P7302053320186486102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286849 |A201163 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A286850.P7302053320186486102

namespace A286850

/-- `record[A286849(abs(A201163(n)))]` -/
def P7302053320186486102.Spec : Prop :=
  ∀ n, P7302053320186486102.a n = A286850 (n + 1)

end A286850

/-! ## A286850.P12338227794989022175

`lcm(2, A286849(A000096(n+1)))`
-/

namespace A286850.P12338227794989022175
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A286849 (A000096 (n + 1)).toNat)

end

end A286850.P12338227794989022175

namespace A286850

/-- `lcm(2, A286849(A000096(n+1)))` -/
def P12338227794989022175.Spec : Prop :=
  ∀ n, (P12338227794989022175.a n : ℤ) = A286850 (n + 1)

end A286850

/-! ## A286850.P5955567791608252953

`record[A286849(Δ[A003453(n+5)])]`
-/

namespace A286850.P5955567791608252953
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003453 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286849 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A286850.P5955567791608252953

namespace A286850

/-- `record[A286849(Δ[A003453(n+5)])]` -/
def P5955567791608252953.Spec : Prop :=
  ∀ n, P5955567791608252953.a n = A286850 (n + 1)

end A286850

/-!
# A286851: Number of compositions (ordered partitions) of n into unitary divisors of n.

The programs for A286851, there is no canonical definition to state claims against.
-/

/-! ## A286851.P12985730079638455521

`A100346(∏{p}[n, A087051(#)])`
-/

namespace A286851.P12985730079638455521
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100346 (∏ p ∈ Nat.primeFactors (f1 n), A087051 p).toNat

end

end A286851.P12985730079638455521

/-! ## A286851.P5472043418448621563

`A284464(∏{p}[n, A087051(#)])`
-/

namespace A286851.P5472043418448621563
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284464 (∏ p ∈ Nat.primeFactors (f1 n), A087051 p).toNat

end

end A286851.P5472043418448621563

/-!
# A286852: Number of partitions of n into unitary prime divisors of n.

The programs for A286852, there is no canonical definition to state claims against.
-/

/-! ## A286852.P14298316070378476707

`val(A045965(∏{e}[n, n*#+1]), A045965(n+1))`
-/

namespace A286852.P14298316070378476707
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A045965 (∏ p ∈ Nat.primeFactors (f1 n), (n * Nat.factorization (f1 n) p + 1))).toNat (A045965 (n + 1)).toNat

end

end A286852.P14298316070378476707

/-! ## A286852.P2484484942745308596

`val(A045966(∏{e}[n, n*#+1]), A045966(n+1))`
-/

namespace A286852.P2484484942745308596
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A045966 (∏ p ∈ Nat.primeFactors (f1 n), (n * Nat.factorization (f1 n) p + 1))).toNat (A045966 (n + 1)).toNat

end

end A286852.P2484484942745308596

/-! ## A286852.P4890942562339734104

`A056169(A210709(n)+A028310(n))`
-/

namespace A286852.P4890942562339734104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056169 (A210709 n + A028310 n).toNat

end

end A286852.P4890942562339734104

/-! ## A286852.P7704496195743582472

`val(A045965(A062319(n)), A045965(n+1))`
-/

namespace A286852.P7704496195743582472
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A045965 (A062319 n).toNat).toNat (A045965 (n + 1)).toNat

end

end A286852.P7704496195743582472

/-! ## A286852.P10634331657379057474

`val(A045968(A062319(n)), A045968(n+1))`
-/

namespace A286852.P10634331657379057474
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A045968 (A062319 n).toNat).toNat (A045968 (n + 1)).toNat

end

end A286852.P10634331657379057474

/-!
# A286853: First differences of A286854.

The programs for A286853, there is no canonical definition to state claims against.
-/

/-! ## A286853.P18151836432516815767

`Δ[A286854(n+1)]`
-/

namespace A286853.P18151836432516815767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286854 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A286853.P18151836432516815767

/-! ## A286853.P3232312958505193814

`Δ[record[A286854(A020986(n))]]`
-/

namespace A286853.P3232312958505193814
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286854 (A020986 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A286853.P3232312958505193814

/-! ## A286853.P17681753604428501590

`Δ[record[A286854(A022446(n))]]`
-/

namespace A286853.P17681753604428501590
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286854 (A022446 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A286853.P17681753604428501590

/-! ## A286853.P12112265608766238131

`Δ[record[A286854(A065648(n))]]`
-/

namespace A286853.P12112265608766238131
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286854 (A065648 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A286853.P12112265608766238131

/-! ## A286853.P18094627099789883523

`Δ[record[A286854(A100727(n))]]`
-/

namespace A286853.P18094627099789883523
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286854 (A100727 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A286853.P18094627099789883523

/-!
# A286857: Decimal representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 809", based on the 5-celled von Neumann neighborhood.

The programs for A286857, there is no canonical definition to state claims against.
-/

/-! ## A286857.P6208702304175488242

`A289268(n^A152844(n))`
-/

namespace A286857.P6208702304175488242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289268 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A152844 n : ℤ))).toNat

end

end A286857.P6208702304175488242

/-! ## A286857.P9073743177770245455

`A080953(n)!*A289268(n)`
-/

namespace A286857.P9073743177770245455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A080953 n).toNat : ℤ) * A289268 n

end

end A286857.P9073743177770245455

/-! ## A286857.P17874125957969868099

`record[gcd(A058343(n), A289268(n))]`
-/

namespace A286857.P17874125957969868099
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A058343 n) (A289268 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A286857.P17874125957969868099

/-! ## A286857.P11992006951581380030

`A289268(n*(A080953(n)+1))`
-/

namespace A286857.P11992006951581380030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289268 ((n : ℤ) * (A080953 n + 1)).toNat

end

end A286857.P11992006951581380030

/-! ## A286857.P13676725168008855092

`A289268(n)%A289274(n+1)`
-/

namespace A286857.P13676725168008855092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A289268 n) (A289274 (n + 1))

end

end A286857.P13676725168008855092

/-!
# A286858: Decimal representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 809", based on the 5-celled von Neumann neighborhood.

The programs for A286858, there is no canonical definition to state claims against.
-/

/-! ## A286858.P5554726452492387279

`A289370(n*gcd(19, n))`
-/

namespace A286858.P5554726452492387279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289370 (n * Nat.gcd 19 n)

end

end A286858.P5554726452492387279

/-! ## A286858.P2819223340551649153

`A000027(A289370(n))`
-/

namespace A286858.P2819223340551649153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A289370 n).toNat

end

end A286858.P2819223340551649153

/-! ## A286858.P2612356151182642221

`A289370(A080953(n)+n)`
-/

namespace A286858.P2612356151182642221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289370 (A080953 n + (n : ℤ)).toNat

end

end A286858.P2612356151182642221

/-! ## A286858.P378818314558992640

`A289370(or(n, A080953(n)))`
-/

namespace A286858.P378818314558992640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289370 (Int.lor (n : ℤ) (A080953 n)).toNat

end

end A286858.P378818314558992640

/-! ## A286858.P15573578245705932075

`A080953(n)!*A289370(n)`
-/

namespace A286858.P15573578245705932075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A080953 n).toNat : ℤ) * A289370 n

end

end A286858.P15573578245705932075

/-!
# A286859: Binary representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 813", based on the 5-celled von Neumann neighborhood.

The programs for A286859, there is no canonical definition to state claims against.
-/

/-! ## A286859.P16303161327588750687

`A000042(n+1)-A287283(A004442(n))`
-/

namespace A286859.P16303161327588750687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000042 (n + 1) - A287283 (A004442 n).toNat

end

end A286859.P16303161327588750687

/-! ## A286859.P10264816717685309179

`A000042(n+1)-A287283(A124625(n))`
-/

namespace A286859.P10264816717685309179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000042 (n + 1) - A287283 (A124625 n).toNat

end

end A286859.P10264816717685309179

/-! ## A286859.P6431129604285298266

`A007088(A286861(n))`
-/

namespace A286859.P6431129604285298266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A286861 n).toNat

end

end A286859.P6431129604285298266

/-! ## A286859.P5665110280115787386

`A185544(2*A286861(n))`
-/

namespace A286859.P5665110280115787386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A286861 n).toNat

end

end A286859.P5665110280115787386

/-! ## A286859.P17480952521391495289

`A290680(n)%∑[n+3]!`
-/

namespace A286859.P17480952521391495289
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A290680 n) (Nat.factorial (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ)

end

end A286859.P17480952521391495289

/-!
# A286860: Binary representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 813", based on the 5-celled von Neumann neighborhood.

The programs for A286860, there is no canonical definition to state claims against.
-/

/-! ## A286860.P2046813432378179412

`A007088(A286862(n))`
-/

namespace A286860.P2046813432378179412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A286862 n).toNat

end

end A286860.P2046813432378179412

/-! ## A286860.P14015300815147927081

`A038585(A286861(n))`
-/

namespace A286860.P14015300815147927081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038585 (A286861 n).toNat

end

end A286860.P14015300815147927081

/-! ## A286860.P7196673932794159442

`A087712(A286862(n)+1)`
-/

namespace A286860.P7196673932794159442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087712 (A286862 n + 1).toNat

end

end A286860.P7196673932794159442

/-! ## A286860.P2403456635102596282

`A007931(or(1, A286862(n)))`
-/

namespace A286860.P2403456635102596282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007931 (Int.lor 1 (A286862 n)).toNat

end

end A286860.P2403456635102596282

/-! ## A286860.P14436528566879936670

`A032917(or(1, A286862(n)))`
-/

namespace A286860.P14436528566879936670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032917 (Int.lor 1 (A286862 n)).toNat

end

end A286860.P14436528566879936670

/-!
# A286861: Decimal representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 813", based on the 5-celled von Neumann neighborhood.

The programs for A286861, there is no canonical definition to state claims against.
-/

/-! ## A286861.P7105635176452704010

`A126646(n)-A287285(A004442(n))`
-/

namespace A286861.P7105635176452704010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126646 n - A287285 (A004442 n).toNat

end

end A286861.P7105635176452704010

/-! ## A286861.P2464227014381921150

`A126646(n)-A287285(A124625(n))`
-/

namespace A286861.P2464227014381921150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126646 n - A287285 (A124625 n).toNat

end

end A286861.P2464227014381921150

/-! ## A286861.P15860087687040714466

`∑[A000079(n)]-A287285(A004442(n))`
-/

namespace A286861.P15860087687040714466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A287285 (A004442 n).toNat

end

end A286861.P15860087687040714466

/-! ## A286861.P14333575238839463128

`∑[A000079(n)]-A287285(A124625(n))`
-/

namespace A286861.P14333575238839463128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A287285 (A124625 n).toNat

end

end A286861.P14333575238839463128

/-! ## A286861.P5622492333367214228

`A000225(n+1)-A287285(A124625(n))`
-/

namespace A286861.P5622492333367214228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (n + 1) - A287285 (A124625 n).toNat

end

end A286861.P5622492333367214228

/-! ## A286861.P10800848644108394335

`A000051(n+1)-(A287285(A124625(n))+2)`
-/

namespace A286861.P10800848644108394335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 (n + 1) - (A287285 (A124625 n).toNat + 2)

end

end A286861.P10800848644108394335

/-!
# A286862: Decimal representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 813", based on the 5-celled von Neumann neighborhood.

The programs for A286862, there is no canonical definition to state claims against.
-/

/-! ## A286862.P8774652656853432097

`gcd(∏[A126646(n)²], A286861(n))`
-/

namespace A286862.P8774652656853432097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126646 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (∏ j ∈ Finset.range (n + 1), f1 j) (A286861 n)

end

end A286862.P8774652656853432097

/-! ## A286862.P5417939324092556444

`A000265(A286861(n))`
-/

namespace A286862.P5417939324092556444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A286861 n).toNat

end

end A286862.P5417939324092556444

/-! ## A286862.P170465868185900088

`∑{d}[A286861(n), and(1, #)*A000010(#)]`
-/

namespace A286862.P170465868185900088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286861 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, (Nat.land 1 d : ℤ) * A000010 d

end

end A286862.P170465868185900088

/-! ## A286862.P14214224178744652286

`A278222(A286861(n))-A007318(∑[n])`
-/

namespace A286862.P14214224178744652286
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278222 (A286861 n).toNat - A007318 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A286862.P14214224178744652286

/-! ## A286862.P9607116407261174750

`A278222(A286861(n))-A014963(10*(n+1))`
-/

namespace A286862.P9607116407261174750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278222 (A286861 n).toNat - A014963 (10 * (n + 1))

end

end A286862.P9607116407261174750

/-!
# A286863: Binary representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 814", based on the 5-celled von Neumann neighborhood.

The programs for A286863, the canonical program `A286863.P9330102431573233598` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A286863 has offset 0).

The definition of A286863 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 256 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A286863.P3250285075209013716

`A290656(A003817(n))`
-/

namespace A286863.P3250285075209013716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290656 (A003817 n).toNat

end

end A286863.P3250285075209013716

namespace A286863

/-- `A290656(A003817(n))` -/
def P3250285075209013716.Spec : Prop :=
  ∀ n, P3250285075209013716.a n = A286863 n

end A286863

/-! ## A286863.P15698008193354854819

`A290656(A142151(n))`
-/

namespace A286863.P15698008193354854819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290656 (A142151 n).toNat

end

end A286863.P15698008193354854819

namespace A286863

/-- `A290656(A142151(n))` -/
def P15698008193354854819.Spec : Prop :=
  ∀ n, P15698008193354854819.a n = A286863 n

end A286863

/-! ## A286863.P10840656060690876519

`A290656(A269170(n))`
-/

namespace A286863.P10840656060690876519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290656 (A269170 n).toNat

end

end A286863.P10840656060690876519

namespace A286863

/-- `A290656(A269170(n))` -/
def P10840656060690876519.Spec : Prop :=
  ∀ n, P10840656060690876519.a n = A286863 n

end A286863

/-! ## A286863.P4158016198019967027

`A290656(A295514(n))`
-/

namespace A286863.P4158016198019967027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290656 (A295514 n).toNat

end

end A286863.P4158016198019967027

namespace A286863

/-- `A290656(A295514(n))` -/
def P4158016198019967027.Spec : Prop :=
  ∀ n, P4158016198019967027.a n = A286863 n

end A286863

/-! ## A286863.P10078507744823641653

`A290656(A335835(n))`
-/

namespace A286863.P10078507744823641653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290656 (A335835 n).toNat

end

end A286863.P10078507744823641653

namespace A286863

/-- `A290656(A335835(n))` -/
def P10078507744823641653.Spec : Prop :=
  ∀ n, P10078507744823641653.a n = A286863 n

end A286863

/-! ## A286863.P3444339149644053795

`A290656(A361480(n))`
-/

namespace A286863.P3444339149644053795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290656 (A361480 n).toNat

end

end A286863.P3444339149644053795

namespace A286863

/-- `A290656(A361480(n))` -/
def P3444339149644053795.Spec : Prop :=
  ∀ n, P3444339149644053795.a n = A286863 n

end A286863

/-! ## A286863.P5257762591583165972

`A290656(A361676(n))`
-/

namespace A286863.P5257762591583165972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290656 (A361676 n).toNat

end

end A286863.P5257762591583165972

namespace A286863

/-- `A290656(A361676(n))` -/
def P5257762591583165972.Spec : Prop :=
  ∀ n, P5257762591583165972.a n = A286863 n

end A286863

/-! ## A286863.P10057103843066701625

`A290656(A371944(n))`
-/

namespace A286863.P10057103843066701625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290656 (A371944 n).toNat

end

end A286863.P10057103843066701625

namespace A286863

/-- `A290656(A371944(n))` -/
def P10057103843066701625.Spec : Prop :=
  ∀ n, P10057103843066701625.a n = A286863 n

end A286863

/-! ## A286863.P11821158183612102699

`A290656(A383593(n))`
-/

namespace A286863.P11821158183612102699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290656 (A383593 n).toNat

end

end A286863.P11821158183612102699

namespace A286863

/-- `A290656(A383593(n))` -/
def P11821158183612102699.Spec : Prop :=
  ∀ n, P11821158183612102699.a n = A286863 n

end A286863

/-! ## A286863.P15188149035908153630

`A290656(A062383(n)-1)`
-/

namespace A286863.P15188149035908153630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290656 (A062383 n - 1).toNat

end

end A286863.P15188149035908153630

namespace A286863

/-- `A290656(A062383(n)-1)` -/
def P15188149035908153630.Spec : Prop :=
  ∀ n, P15188149035908153630.a n = A286863 n

end A286863

/-! ## A286863.P676481771658220922

`A290656(or(n, A002264(n)))`
-/

namespace A286863.P676481771658220922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290656 (Int.lor (n : ℤ) (A002264 n)).toNat

end

end A286863.P676481771658220922

namespace A286863

/-- `A290656(or(n, A002264(n)))` -/
def P676481771658220922.Spec : Prop :=
  ∀ n, P676481771658220922.a n = A286863 n

end A286863

/-! ## A286863.P1185371613513258573

`A290656(or(n, A002265(n)))`
-/

namespace A286863.P1185371613513258573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290656 (Int.lor (n : ℤ) (A002265 n)).toNat

end

end A286863.P1185371613513258573

namespace A286863

/-- `A290656(or(n, A002265(n)))` -/
def P1185371613513258573.Spec : Prop :=
  ∀ n, P1185371613513258573.a n = A286863 n

end A286863

/-! ## A286863.P675195892135396717

`A290656(or(n, A028242(n)))`
-/

namespace A286863.P675195892135396717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290656 (Int.lor (n : ℤ) (A028242 n)).toNat

end

end A286863.P675195892135396717

namespace A286863

/-- `A290656(or(n, A028242(n)))` -/
def P675195892135396717.Spec : Prop :=
  ∀ n, P675195892135396717.a n = A286863 n

end A286863

/-! ## A286863.P9330102431573233598

`A000042(A004763(n+2)-n)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A286863

/-- `A000042(A004763(n+2)-n)` -/
def P9330102431573233598.Spec : Prop :=
  ∀ n, P9330102431573233598.a n = A286863 n

theorem P9330102431573233598.correct : P9330102431573233598.Spec := by
  intro n
  simp only [A286863]

end A286863

/-! ## A286863.P6730464007949619454

`A290656(or(n, A000720(n+1)))`
-/

namespace A286863.P6730464007949619454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290656 (Int.lor (n : ℤ) (A000720 (n + 1))).toNat

end

end A286863.P6730464007949619454

namespace A286863

/-- `A290656(or(n, A000720(n+1)))` -/
def P6730464007949619454.Spec : Prop :=
  ∀ n, P6730464007949619454.a n = A286863 n

end A286863

/-! ## A286863.P6925306955672210610

`A290656(or(n, A290636(n+2)))`
-/

namespace A286863.P6925306955672210610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290656 (Int.lor (n : ℤ) (A290636 (n + 2))).toNat

end

end A286863.P6925306955672210610

namespace A286863

/-- `A290656(or(n, A290636(n+2)))` -/
def P6925306955672210610.Spec : Prop :=
  ∀ n, P6925306955672210610.a n = A286863 n

end A286863

/-! ## A286863.P9371083882831823847

`A290656(A004396(A062383(n)))`
-/

namespace A286863.P9371083882831823847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290656 (A004396 (A062383 n).toNat).toNat

end

end A286863.P9371083882831823847

namespace A286863

/-- `A290656(A004396(A062383(n)))` -/
def P9371083882831823847.Spec : Prop :=
  ∀ n, P9371083882831823847.a n = A286863 n

end A286863

/-!
# A286864: Binary representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 814", based on the 5-celled von Neumann neighborhood.

The programs for A286864, there is no canonical definition to state claims against.
-/

/-! ## A286864.P16395212763670500046

`A007088(A286866(n))`
-/

namespace A286864.P16395212763670500046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A286866 n).toNat

end

end A286864.P16395212763670500046

/-! ## A286864.P7256450345400393957

`A007088(or(2^n, A288125(n)))`
-/

namespace A286864.P7256450345400393957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (Int.lor (2 ^ n : ℤ) (A288125 n)).toNat

end

end A286864.P7256450345400393957

/-! ## A286864.P18227733320235232227

`A007088(or(A000079(n), A287506(n)))`
-/

namespace A286864.P18227733320235232227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (Int.lor (A000079 n) (A287506 n)).toNat

end

end A286864.P18227733320235232227

/-! ## A286864.P5433985915608381636

`A007088(or(A288125(n), A290659(n)))`
-/

namespace A286864.P5433985915608381636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (Int.lor (A288125 n) (A290659 n)).toNat

end

end A286864.P5433985915608381636

/-! ## A286864.P6040206161011358601

`A185544(2*A286866(n))`
-/

namespace A286864.P6040206161011358601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A286866 n).toNat

end

end A286864.P6040206161011358601

/-!
# A286865: Decimal representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 814", based on the 5-celled von Neumann neighborhood.

The programs for A286865, the canonical program `A286865.P3302213470359981083` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A286865 has offset 0).

The definition of A286865 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1024 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A286865.P8089198269513469043

`or(a(n-1), A287541(n))` with `a(0)=1`
-/

namespace A286865.P8089198269513469043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.lor (a (n - 1)) (A287541 n)

end

end A286865.P8089198269513469043

namespace A286865

/-- `or(a(n-1), A287541(n))` -/
def P8089198269513469043.Spec : Prop :=
  ∀ n, P8089198269513469043.a n = A286865 n

end A286865

/-! ## A286865.P4587714447287528555

`or(a(n-1), A288196(n))` with `a(0)=1`
-/

namespace A286865.P4587714447287528555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.lor (a (n - 1)) (A288196 n)

end

end A286865.P4587714447287528555

namespace A286865

/-- `or(a(n-1), A288196(n))` -/
def P4587714447287528555.Spec : Prop :=
  ∀ n, P4587714447287528555.a n = A286865 n

end A286865

/-! ## A286865.P10099303263151219261

`A100735(A072376(n))`
-/

namespace A286865.P10099303263151219261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100735 (A072376 n).toNat

end

end A286865.P10099303263151219261

namespace A286865

/-- `A100735(A072376(n))` -/
def P10099303263151219261.Spec : Prop :=
  ∀ n, P10099303263151219261.a n = A286865 n

end A286865

/-! ## A286865.P4427037913738803477

`A290658(A003817(n))`
-/

namespace A286865.P4427037913738803477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290658 (A003817 n).toNat

end

end A286865.P4427037913738803477

namespace A286865

/-- `A290658(A003817(n))` -/
def P4427037913738803477.Spec : Prop :=
  ∀ n, P4427037913738803477.a n = A286865 n

end A286865

/-! ## A286865.P13344857946547419036

`A290658(A142151(n))`
-/

namespace A286865.P13344857946547419036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290658 (A142151 n).toNat

end

end A286865.P13344857946547419036

namespace A286865

/-- `A290658(A142151(n))` -/
def P13344857946547419036.Spec : Prop :=
  ∀ n, P13344857946547419036.a n = A286865 n

end A286865

/-! ## A286865.P6618354662608209861

`A290658(A269170(n))`
-/

namespace A286865.P6618354662608209861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290658 (A269170 n).toNat

end

end A286865.P6618354662608209861

namespace A286865

/-- `A290658(A269170(n))` -/
def P6618354662608209861.Spec : Prop :=
  ∀ n, P6618354662608209861.a n = A286865 n

end A286865

/-! ## A286865.P14657215779776490932

`A290658(A295514(n))`
-/

namespace A286865.P14657215779776490932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290658 (A295514 n).toNat

end

end A286865.P14657215779776490932

namespace A286865

/-- `A290658(A295514(n))` -/
def P14657215779776490932.Spec : Prop :=
  ∀ n, P14657215779776490932.a n = A286865 n

end A286865

/-! ## A286865.P9637708408824889870

`A290658(A335835(n))`
-/

namespace A286865.P9637708408824889870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290658 (A335835 n).toNat

end

end A286865.P9637708408824889870

namespace A286865

/-- `A290658(A335835(n))` -/
def P9637708408824889870.Spec : Prop :=
  ∀ n, P9637708408824889870.a n = A286865 n

end A286865

/-! ## A286865.P2359942872620030078

`A290658(A361480(n))`
-/

namespace A286865.P2359942872620030078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290658 (A361480 n).toNat

end

end A286865.P2359942872620030078

namespace A286865

/-- `A290658(A361480(n))` -/
def P2359942872620030078.Spec : Prop :=
  ∀ n, P2359942872620030078.a n = A286865 n

end A286865

/-! ## A286865.P5224530101248391171

`A290658(A361676(n))`
-/

namespace A286865.P5224530101248391171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290658 (A361676 n).toNat

end

end A286865.P5224530101248391171

namespace A286865

/-- `A290658(A361676(n))` -/
def P5224530101248391171.Spec : Prop :=
  ∀ n, P5224530101248391171.a n = A286865 n

end A286865

/-! ## A286865.P8520915941904003969

`A290658(A371944(n))`
-/

namespace A286865.P8520915941904003969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290658 (A371944 n).toNat

end

end A286865.P8520915941904003969

namespace A286865

/-- `A290658(A371944(n))` -/
def P8520915941904003969.Spec : Prop :=
  ∀ n, P8520915941904003969.a n = A286865 n

end A286865

/-! ## A286865.P3628956699023472810

`A290658(A383593(n))`
-/

namespace A286865.P3628956699023472810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290658 (A383593 n).toNat

end

end A286865.P3628956699023472810

namespace A286865

/-- `A290658(A383593(n))` -/
def P3628956699023472810.Spec : Prop :=
  ∀ n, P3628956699023472810.a n = A286865 n

end A286865

/-! ## A286865.P3302213470359981083

`A000225(A072376(or(1, n)))`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A286865

/-- `A000225(A072376(or(1, n)))` -/
def P3302213470359981083.Spec : Prop :=
  ∀ n, P3302213470359981083.a n = A286865 n

theorem P3302213470359981083.correct : P3302213470359981083.Spec := by
  intro n
  simp only [A286865]

end A286865

/-! ## A286865.P13924071135760702989

`A290658(or(n, A002264(n)))`
-/

namespace A286865.P13924071135760702989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290658 (Int.lor (n : ℤ) (A002264 n)).toNat

end

end A286865.P13924071135760702989

namespace A286865

/-- `A290658(or(n, A002264(n)))` -/
def P13924071135760702989.Spec : Prop :=
  ∀ n, P13924071135760702989.a n = A286865 n

end A286865

/-! ## A286865.P15612862936361092441

`A052551(xor(n, A092569(n)))`
-/

namespace A286865.P15612862936361092441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052551 (Int.xor (n : ℤ) (A092569 n)).toNat

end

end A286865.P15612862936361092441

namespace A286865

/-- `A052551(xor(n, A092569(n)))` -/
def P15612862936361092441.Spec : Prop :=
  ∀ n, P15612862936361092441.a n = A286865 n

end A286865

/-! ## A286865.P809535868415116478

`A290658(or(n, A290636(n+2)))`
-/

namespace A286865.P809535868415116478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290658 (Int.lor (n : ℤ) (A290636 (n + 2))).toNat

end

end A286865.P809535868415116478

namespace A286865

/-- `A290658(or(n, A290636(n+2)))` -/
def P809535868415116478.Spec : Prop :=
  ∀ n, P809535868415116478.a n = A286865 n

end A286865

/-! ## A286865.P1396874823632898484

`or(a(n-1), A052551(A035327(n)))` with `a(0)=1, a(1)=1`
-/

namespace A286865.P1396874823632898484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  Int.lor (a (n - 1)) (A052551 (A035327 n).toNat)

end

end A286865.P1396874823632898484

namespace A286865

/-- `or(a(n-1), A052551(A035327(n)))` -/
def P1396874823632898484.Spec : Prop :=
  ∀ n, P1396874823632898484.a n = A286865 n

end A286865

/-! ## A286865.P18256235222774923295

`A000225(∏[A014963(2*n*a(n-1))])` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A286865.P18256235222774923295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n f1 =>
  A014963 ((2 * n : ℤ) * f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A286865.P18256235222774923295

namespace A286865

/-- `A000225(∏[A014963(2*n*a(n-1))])` -/
def P18256235222774923295.Spec : Prop :=
  ∀ n, P18256235222774923295.a n = A286865 n

end A286865

/-! ## A286865.P10553899716667033915

`A000225(gcd(A072376(n), A099894(n)))`
-/

namespace A286865.P10553899716667033915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (Int.gcd (A072376 n) (A099894 n))

end

end A286865.P10553899716667033915

namespace A286865

/-- `A000225(gcd(A072376(n), A099894(n)))` -/
def P10553899716667033915.Spec : Prop :=
  ∀ n, P10553899716667033915.a n = A286865 n

end A286865

/-! ## A286865.P135944613045133775

`A052551(xor(A006068(n), A233279(n)))`
-/

namespace A286865.P135944613045133775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052551 (Int.xor (A006068 n) (A233279 n)).toNat

end

end A286865.P135944613045133775

namespace A286865

/-- `A052551(xor(A006068(n), A233279(n)))` -/
def P135944613045133775.Spec : Prop :=
  ∀ n, P135944613045133775.a n = A286865 n

end A286865

/-!
# A286866: Decimal representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 814", based on the 5-celled von Neumann neighborhood.

The programs for A286866, there is no canonical definition to state claims against.
-/

/-! ## A286866.P8374532115014849181

`or(2*a(n-1), A288197(n))` with `a(0)=1`
-/

namespace A286866.P8374532115014849181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.lor (2 * a (n - 1)) (A288197 n)

end

end A286866.P8374532115014849181

/-! ## A286866.P1022715499340852203

`A000034(n)*A290863(A052928(n))`
-/

namespace A286866.P1022715499340852203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n * A290863 (A052928 n).toNat

end

end A286866.P1022715499340852203

/-! ## A286866.P18191677497754495909

`(A000035(n)+1)*A290863(A052928(n))`
-/

namespace A286866.P18191677497754495909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000035 n + 1) * A290863 (A052928 n).toNat

end

end A286866.P18191677497754495909

/-! ## A286866.P5823897296626929261

`A040001(n+1)*A290863(A052928(n))`
-/

namespace A286866.P5823897296626929261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (n + 1) * A290863 (A052928 n).toNat

end

end A286866.P5823897296626929261

/-! ## A286866.P14684710633835123298

`Δ[A001651(n+1)]*A290863(A052928(n))`
-/

namespace A286866.P14684710633835123298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001651 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A290863 (A052928 n).toNat

end

end A286866.P14684710633835123298

/-! ## A286866.P18338364742070076200

`∪[2*A290863(2*n), A290863(2*n)]`
-/

namespace A286866.P18338364742070076200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A290863 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290863 (2 * n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A286866.P18338364742070076200

/-! ## A286866.P6596827766248201649

`A001221(A085296(n²+1))*A290863(A052928(n))`
-/

namespace A286866.P6596827766248201649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A085296 (n ^ 2 + 1)).toNat * A290863 (A052928 n).toNat

end

end A286866.P6596827766248201649

/-!
# A286867: Number of idempotents in the twisted planar partition monoid PP_n^tau.

The programs for A286867, there is no canonical definition to state claims against.
-/

/-! ## A286867.P8202885536183143255

`A008619(A192621(n)-A000045(n))`
-/

namespace A286867.P8202885536183143255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A192621 n - A000045 n).toNat

end

end A286867.P8202885536183143255

/-! ## A286867.P16730447559066945541

`A008619(A192621(n))-A004525(n)`
-/

namespace A286867.P16730447559066945541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A192621 n).toNat - A004525 n

end

end A286867.P16730447559066945541

/-!
# A286869: Number of irredundant sets in the grid graph P_n X P_n.

The programs for A286869, there is no canonical definition to state claims against.
-/

/-! ## A286869.P10765550284310508367

`A286868(∑[4*n]+1)`
-/

namespace A286869.P10765550284310508367
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286868 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A286869.P10765550284310508367

/-! ## A286869.P10657073752598310141

`A286868(A001844(n))+char[11]`
-/

namespace A286869.P10657073752598310141
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286868 (A001844 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A286869.P10657073752598310141

/-! ## A286869.P1358609064779515270

`record[A286868(or(1, A241496(n)))]`
-/

namespace A286869.P1358609064779515270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286868 (Int.lor 1 (A241496 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A286869.P1358609064779515270

/-! ## A286869.P10138585393695556130

`record[A003982(n)*A286868(n+1)]`
-/

namespace A286869.P10138585393695556130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A286868 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A286869.P10138585393695556130

/-! ## A286869.P2748670538480515618

`record[gcd(A003987(n), A286868(n+1))]`
-/

namespace A286869.P2748670538480515618
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003987 n) (A286868 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A286869.P2748670538480515618

/-!
# A286871: Number of irredundant sets in the n X n king graph.

The programs for A286871, there is no canonical definition to state claims against.
-/

/-! ## A286871.P11704258716439623250

`A286870(2*(n+1)²-2*(n+1)+1)`
-/

namespace A286871.P11704258716439623250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286870 ((2 * (n + 1) ^ 2 : ℤ) - (2 * (n + 1) : ℤ) + 1).toNat

end

end A286871.P11704258716439623250

/-! ## A286871.P12127300257366165236

`record[A286870(Δ[A235355(n)])]`
-/

namespace A286871.P12127300257366165236
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235355 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286870 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A286871.P12127300257366165236

/-! ## A286871.P16888402230552053782

`record[A286870(A330613(n+1))]`
-/

namespace A286871.P16888402230552053782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286870 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A286871.P16888402230552053782

/-! ## A286871.P11472885693260707365

`record[A286870(A286457(n+2))]`
-/

namespace A286871.P11472885693260707365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286870 (A286457 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A286871.P11472885693260707365

/-! ## A286871.P10243761908041020448

`record[A286870(A325641(n²+1))]`
-/

namespace A286871.P10243761908041020448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286870 (A325641 (n ^ 2 + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A286871.P10243761908041020448

/-!
# A286872: a(n) is the number of terms m such that d((m!)^n) (mod d(m!)) == 0, where d is A000005.

The programs for A286872, there is no canonical definition to state claims against.
-/

/-! ## A286872.P16320763499685103324

`A286835(A152271(n))^and(1, n)`
-/

namespace A286872.P16320763499685103324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286835 (A152271 n).toNat ^ Nat.land 1 n

end

end A286872.P16320763499685103324

/-! ## A286872.P14950621421230339964

`A286835(A008619(n-1))/a(n-1)` with `a(0)=1`
-/

namespace A286872.P14950621421230339964
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (A286835 (A008619 (n - 1)).toNat : ℚ) / a (n - 1)

end

end A286872.P14950621421230339964

/-! ## A286872.P6354829680260400716

`and(A033999(n), A286835(A152271(n)))`
-/

namespace A286872.P6354829680260400716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A033999 n) (A286835 (A152271 n).toNat)

end

end A286872.P6354829680260400716

/-! ## A286872.P5969716899516401831

`A286835(A152271(n))^((A005940(n+1)+1)%2)`
-/

namespace A286872.P5969716899516401831
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A286835 (A152271 n).toNat : ℚ) ^ (Int.tmod (A005940 (n + 1) + 1) 2 : ℤ)

end

end A286872.P5969716899516401831

/-! ## A286872.P356536660907039678

`A286835(A008619(n))^(n%2)`
-/

namespace A286872.P356536660907039678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286835 (A008619 n).toNat ^ (n % 2)

end

end A286872.P356536660907039678

/-!
# A286875: If n = Product (p_j^k_j) then a(n) = Sum (k_j >= 2, p_j^k_j).

The programs for A286875, the canonical program `A286875.P4619628546979306351` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A286875 has offset 1).

The definition of A286875 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A286875.P4619628546979306351

`A008475(gcd(((n+1)/∏{p}[n+1, #])², ∑[2*n]))`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A286875

/-- `A008475(gcd(((n+1)/∏{p}[n+1, #])², ∑[2*n]))` -/
def P4619628546979306351.Spec : Prop :=
  ∀ n, P4619628546979306351.a n = A286875 (n + 1)

theorem P4619628546979306351.correct : P4619628546979306351.Spec := by
  intro n
  simp only [A286875, Nat.add_sub_cancel]

end A286875

/-! ## A286875.P1251796011093735031

`A008475(A057521(n+1))`
-/

namespace A286875.P1251796011093735031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008475 (A057521 (n + 1)).toNat

end

end A286875.P1251796011093735031

namespace A286875

/-- `A008475(A057521(n+1))` -/
def P1251796011093735031.Spec : Prop :=
  ∀ n, P1251796011093735031.a n = A286875 (n + 1)

end A286875

/-! ## A286875.P11998074360359477808

`A008475(n+1)-A063956(n+1)`
-/

namespace A286875.P11998074360359477808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008475 (n + 1) - A063956 (n + 1)

end

end A286875.P11998074360359477808

namespace A286875

/-- `A008475(n+1)-A063956(n+1)` -/
def P11998074360359477808.Spec : Prop :=
  ∀ n, P11998074360359477808.a n = A286875 (n + 1)

end A286875

/-! ## A286875.P16418162914753273044

`A008475(1-A326186(n+1)+n)`
-/

namespace A286875.P16418162914753273044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008475 (1 - A326186 (n + 1) + (n : ℤ)).toNat

end

end A286875.P16418162914753273044

namespace A286875

/-- `A008475(1-A326186(n+1)+n)` -/
def P16418162914753273044.Spec : Prop :=
  ∀ n, P16418162914753273044.a n = A286875 (n + 1)

end A286875

/-! ## A286875.P2440258806188732855

`A008475(gcd(n+1, A258851(n+1)²))`
-/

namespace A286875.P2440258806188732855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008475 (Int.gcd (n + 1 : ℤ) (A258851 (n + 1) ^ 2))

end

end A286875.P2440258806188732855

namespace A286875

/-- `A008475(gcd(n+1, A258851(n+1)²))` -/
def P2440258806188732855.Spec : Prop :=
  ∀ n, P2440258806188732855.a n = A286875 (n + 1)

end A286875

/-! ## A286875.P16526961234288745989

`A284117(n+1)-A284117(A003557(n+1))`
-/

namespace A286875.P16526961234288745989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284117 (n + 1) - A284117 (A003557 (n + 1)).toNat

end

end A286875.P16526961234288745989

namespace A286875

/-- `A284117(n+1)-A284117(A003557(n+1))` -/
def P16526961234288745989.Spec : Prop :=
  ∀ n, P16526961234288745989.a n = A286875 (n + 1)

end A286875

/-!
# A286877: One of the two successive approximations up to 17^n for 17-adic integer sqrt(-1). Here the 4 (mod 17) case (except for n=0).

The programs for A286877, there is no canonical definition to state claims against.
-/

/-! ## A286877.P10397524934715314695

`A057427(n)-A286878(n)+17^n-1`
-/

namespace A286877.P10397524934715314695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n - A286878 n + ((17 ^ n : ℤ) - 1)

end

end A286877.P10397524934715314695

/-! ## A286877.P11780671348624836013

`A322559(n)+A322560(n)-A286878(n)`
-/

namespace A286877.P11780671348624836013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322559 n + (A322560 n - A286878 n)

end

end A286877.P11780671348624836013

/-! ## A286877.P1446640234389253631

`A322563(n)+A322564(n)-A286878(n)`
-/

namespace A286877.P1446640234389253631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322563 n + (A322564 n - A286878 n)

end

end A286877.P1446640234389253631

/-!
# A286878: One of the two successive approximations up to 17^n for 17-adic integer sqrt(-1). Here the 13 (mod 17) case (except for n=0).

The programs for A286878, there is no canonical definition to state claims against.
-/

/-! ## A286878.P8943256746561828298

`A322559(n)+A322560(n)-A286877(n)`
-/

namespace A286878.P8943256746561828298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322559 n + (A322560 n - A286877 n)

end

end A286878.P8943256746561828298

/-! ## A286878.P12732456899126393124

`A322563(n)+A322564(n)-A286877(n)`
-/

namespace A286878.P12732456899126393124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322563 n + (A322564 n - A286877 n)

end

end A286878.P12732456899126393124

/-!
# A286879: Number of minimal dominating sets in the n-Andrásfai graph.

The programs for A286879, there is no canonical definition to state claims against.
-/

/-! ## A286879.P10916014852741033341

`A099261(∑[A239767(n)])`
-/

namespace A286879.P10916014852741033341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239767 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099261 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A286879.P10916014852741033341

/-!
# A286880: Square array A(n,k), n>=0, k>=1, read by antidiagonals, where row n is the sum of n-th powers of unitary divisors of k (divisors d such that gcd(d, k/d) = 1).

The programs for A286880, there is no canonical definition to state claims against.
-/

/-! ## A286880.P12365765886185526715

`A109974(n)-A102683(A020992(n))`
-/

namespace A286880.P12365765886185526715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109974 n - A102683 (A020992 n).toNat

end

end A286880.P12365765886185526715

/-! ## A286880.P2378881582327223086

`A055396(A038279(n))+A009999(n)`
-/

namespace A286880.P2378881582327223086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (A038279 n).toNat + A009999 n

end

end A286880.P2378881582327223086

/-! ## A286880.P8773293035533506180

`A055396(A038303(n))+A009999(n)`
-/

namespace A286880.P8773293035533506180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (A038303 n).toNat + A009999 n

end

end A286880.P8773293035533506180

/-! ## A286880.P14329574816574245383

`A055396(A048854(n))+A009999(n)`
-/

namespace A286880.P14329574816574245383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (A048854 n).toNat + A009999 n

end

end A286880.P14329574816574245383

/-! ## A286880.P8142053253919425007

`A178226(A038327(n))+A009999(n)`
-/

namespace A286880.P8142053253919425007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178226 (A038327 n).toNat + A009999 n

end

end A286880.P8142053253919425007

/-!
# A286881: Number of minimal dominating sets in the n X n king graph.

The programs for A286881, there is no canonical definition to state claims against.
-/

/-! ## A286881.P17581060143370835114

`A286849(∑[4*n]+1)`
-/

namespace A286881.P17581060143370835114
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286849 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A286881.P17581060143370835114

/-! ## A286881.P2365216081276804451

`record[A286849(Δ[A235355(n)])]`
-/

namespace A286881.P2365216081276804451
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235355 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286849 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A286881.P2365216081276804451

/-! ## A286881.P7589836493758187996

`record[A286849(A272267(n+1))]`
-/

namespace A286881.P7589836493758187996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286849 (A272267 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A286881.P7589836493758187996

/-! ## A286881.P9101965927633728445

`record[A286849(A330613(n+1))]`
-/

namespace A286881.P9101965927633728445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286849 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A286881.P9101965927633728445

/-! ## A286881.P15043542035601757780

`record[A286849(A286457(n+2))]`
-/

namespace A286881.P15043542035601757780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286849 (A286457 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A286881.P15043542035601757780

/-!
# A286882: Number of minimal dominating sets in the n X n knight graph.

The programs for A286882, there is no canonical definition to state claims against.
-/

/-! ## A286882.P2457905404647197869

`A002326(A118164(n+1)*A145083(n))`
-/

namespace A286882.P2457905404647197869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002326 (A118164 (n + 1) * A145083 n).toNat

end

end A286882.P2457905404647197869

/-!
# A286883: Number of minimal dominating sets in the n X n queen graph.

The programs for A286883, there is no canonical definition to state claims against.
-/

/-! ## A286883.P7627253803661275737

`A052382(ceil((A359700(n+1)+n)/ϕ))`
-/

namespace A286883.P7627253803661275737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052382 ⌈(A359700 (n + 1) + (n : ℤ) : ℝ) / Real.goldenRatio⌉.toNat

end

end A286883.P7627253803661275737

/-!
# A286886: Number of minimal dominating sets in the n X n black bishop graph.

The programs for A286886, there is no canonical definition to state claims against.
-/

/-! ## A286886.P1701781393545980098

`A269381(A000172(n))`
-/

namespace A286886.P1701781393545980098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269381 (A000172 n).toNat

end

end A286886.P1701781393545980098

/-! ## A286886.P17108314423587717133

`∑[A350230(A002426(n))]`
-/

namespace A286886.P17108314423587717133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350230 (A002426 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A286886.P17108314423587717133

/-!
# A286887: Number of irredundant sets in the path graph P_n.

The programs for A286887, the canonical program `A286887.P14348689081333659054` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A286887 has offset 1).

The definition of A286887 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A286887.P14348689081333659054

`a(n-1)+a(n-2)+a(n-4)-a(n-6)` with `a(0)=2, a(1)=3, a(2)=5, a(3)=9, a(4)=15, a(5)=26`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A286887

/-- `a(n-1)+a(n-2)+a(n-4)-a(n-6)` -/
def P14348689081333659054.Spec : Prop :=
  ∀ n, P14348689081333659054.a n = A286887 (n + 1)

theorem P14348689081333659054.correct : P14348689081333659054.Spec := by
  intro n
  simp only [A286887, Nat.add_sub_cancel]

end A286887

/-! ## A286887.P11293443435889483702

`A245437(n+7)-A245437(n+3)`
-/

namespace A286887.P11293443435889483702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245437 (n + 7) - A245437 (n + 3)

end

end A286887.P11293443435889483702

namespace A286887

/-- `A245437(n+7)-A245437(n+3)` -/
def P11293443435889483702.Spec : Prop :=
  ∀ n, P11293443435889483702.a n = A286887 (n + 1)

end A286887

/-! ## A286887.P10118322019631309439

`A286868(∑[n+1])`
-/

namespace A286887.P10118322019631309439
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286868 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A286887.P10118322019631309439

namespace A286887

/-- `A286868(∑[n+1])` -/
def P10118322019631309439.Spec : Prop :=
  ∀ n, P10118322019631309439.a n = A286887 (n + 1)

end A286887

/-! ## A286887.P2977232134283711015

`A286870(∑[n+1])`
-/

namespace A286887.P2977232134283711015
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286870 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A286887.P2977232134283711015

namespace A286887

/-- `A286870(∑[n+1])` -/
def P2977232134283711015.Spec : Prop :=
  ∀ n, P2977232134283711015.a n = A286887 (n + 1)

end A286887

/-! ## A286887.P12161967258830499006

`record[A286870(A113782(n+1))]`
-/

namespace A286887.P12161967258830499006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286870 (A113782 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A286887.P12161967258830499006

namespace A286887

/-- `record[A286870(A113782(n+1))]` -/
def P12161967258830499006.Spec : Prop :=
  ∀ n, P12161967258830499006.a n = A286887 (n + 1)

end A286887

/-!
# A286888: Floor of the average gap between consecutive primes among the first n primes, for n > 1.

The programs for A286888, the canonical program `A286888.P7979792463384599637` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A286888 has offset 2).

The definition of A286888 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A286888.P7979792463384599637

`floor((p?[abs(3*n+1-n)]-2)/(n+1))`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A286888

/-- `floor((p?[abs(3*n+1-n)]-2)/(n+1))` -/
def P7979792463384599637.Spec : Prop :=
  ∀ n, P7979792463384599637.a n = A286888 (n + 2)

theorem P7979792463384599637.correct : P7979792463384599637.Spec := by
  intro n
  simp only [A286888, Nat.add_sub_cancel]

end A286888

/-! ## A286888.P488895035765448366

`floor(∑[A001223(n+1)]/(n+1))`
-/

namespace A286888.P488895035765448366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (n + 1 : ℚ)⌋

end

end A286888.P488895035765448366

namespace A286888

/-- `floor(∑[A001223(n+1)]/(n+1))` -/
def P488895035765448366.Spec : Prop :=
  ∀ n, P488895035765448366.a n = A286888 (n + 2)

end A286888

/-! ## A286888.P17993230830199744875

`ceil(record[A156037(n+1)-n]/(n+1))`
-/

namespace A286888.P17993230830199744875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156037 (n + 1) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / (n + 1 : ℚ)⌉

end

end A286888.P17993230830199744875

namespace A286888

/-- `ceil(record[A156037(n+1)-n]/(n+1))` -/
def P17993230830199744875.Spec : Prop :=
  ∀ n, P17993230830199744875.a n = A286888 (n + 2)

end A286888

/-! ## A286888.P5610538158975018089

`ceil((A065091(n+1)+n)/(n+1))-2`
-/

namespace A286888.P5610538158975018089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A065091 (n + 1) + (n : ℤ) : ℚ) / (n + 1 : ℚ)⌉ - 2

end

end A286888.P5610538158975018089

namespace A286888

/-- `ceil((A065091(n+1)+n)/(n+1))-2` -/
def P5610538158975018089.Spec : Prop :=
  ∀ n, P5610538158975018089.a n = A286888 (n + 2)

end A286888

/-! ## A286888.P7227665697085839760

`floor(A040976(n+2)/(n+1))`
-/

namespace A286888.P7227665697085839760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A040976 (n + 2) : ℚ) / (n + 1 : ℚ)⌋

end

end A286888.P7227665697085839760

namespace A286888

/-- `floor(A040976(n+2)/(n+1))` -/
def P7227665697085839760.Spec : Prop :=
  ∀ n, P7227665697085839760.a n = A286888 (n + 2)

end A286888

/-! ## A286888.P12154108089769232213

`ceil(A014689(n+2)/(n+1))`
-/

namespace A286888.P12154108089769232213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A014689 (n + 2) : ℚ) / (n + 1 : ℚ)⌉

end

end A286888.P12154108089769232213

namespace A286888

/-- `ceil(A014689(n+2)/(n+1))` -/
def P12154108089769232213.Spec : Prop :=
  ∀ n, P12154108089769232213.a n = A286888 (n + 2)

end A286888

/-! ## A286888.P4415135954117607238

`floor((A000040(n+2)-2)/(n+1))`
-/

namespace A286888.P4415135954117607238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000040 (n + 2) - 2 : ℚ) / (n + 1 : ℚ)⌋

end

end A286888.P4415135954117607238

namespace A286888

/-- `floor((A000040(n+2)-2)/(n+1))` -/
def P4415135954117607238.Spec : Prop :=
  ∀ n, P4415135954117607238.a n = A286888 (n + 2)

end A286888

/-! ## A286888.P17932871829012124373

`ceil(A006093(n+2)/(n+1))-1`
-/

namespace A286888.P17932871829012124373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A006093 (n + 2) : ℚ) / (n + 1 : ℚ)⌉ - 1

end

end A286888.P17932871829012124373

namespace A286888

/-- `ceil(A006093(n+2)/(n+1))-1` -/
def P17932871829012124373.Spec : Prop :=
  ∀ n, P17932871829012124373.a n = A286888 (n + 2)

end A286888

/-! ## A286888.P7096401825255399459

`floor((eq[1, A001222(n+3)]+1)/(n+1))`
-/

namespace A286888.P7096401825255399459
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1 : ℚ) / (n + 1 : ℚ)⌋

end

end A286888.P7096401825255399459

namespace A286888

/-- `floor((eq[1, A001222(n+3)]+1)/(n+1))` -/
def P7096401825255399459.Spec : Prop :=
  ∀ n, P7096401825255399459.a n = A286888 (n + 2)

end A286888

/-! ## A286888.P15158939625007657579

`floor((eq[2, A000005(n+3)]+1)/(n+1))`
-/

namespace A286888.P15158939625007657579
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1 : ℚ) / (n + 1 : ℚ)⌋

end

end A286888.P15158939625007657579

namespace A286888

/-- `floor((eq[2, A000005(n+3)]+1)/(n+1))` -/
def P15158939625007657579.Spec : Prop :=
  ∀ n, P15158939625007657579.a n = A286888 (n + 2)

end A286888

/-! ## A286888.P16245043294951752375

`floor((eq[n+2, A000010(n+3)]+1)/(n+1))`
-/

namespace A286888.P16245043294951752375
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1 : ℚ) / (n + 1 : ℚ)⌋

end

end A286888.P16245043294951752375

namespace A286888

/-- `floor((eq[n+2, A000010(n+3)]+1)/(n+1))` -/
def P16245043294951752375.Spec : Prop :=
  ∀ n, P16245043294951752375.a n = A286888 (n + 2)

end A286888

/-! ## A286888.P7106460507887485469

`floor((eq[n+3, A006530(n+3)]+1)/(n+1))`
-/

namespace A286888.P7106460507887485469
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1 : ℚ) / (n + 1 : ℚ)⌋

end

end A286888.P7106460507887485469

namespace A286888

/-- `floor((eq[n+3, A006530(n+3)]+1)/(n+1))` -/
def P7106460507887485469.Spec : Prop :=
  ∀ n, P7106460507887485469.a n = A286888 (n + 2)

end A286888

/-! ## A286888.P1932301420361796435

`floor((eq[n+3, A014963(n+3)]+1)/(n+1))`
-/

namespace A286888.P1932301420361796435
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1 : ℚ) / (n + 1 : ℚ)⌋

end

end A286888.P1932301420361796435

namespace A286888

/-- `floor((eq[n+3, A014963(n+3)]+1)/(n+1))` -/
def P1932301420361796435.Spec : Prop :=
  ∀ n, P1932301420361796435.a n = A286888 (n + 2)

end A286888

/-!
# A286890: a(n) is the least positive integer not yet in the sequence that shares its largest digit with that of a(n-1); a(1)=1.

The programs for A286890, there is no canonical definition to state claims against.
-/

/-! ## A286890.P715031313527746894

`A297418(abs(floor(3/(n+2))-n)+2)`
-/

namespace A286890.P715031313527746894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297418 (|⌊3 / (n + 2 : ℚ)⌋ - (n : ℤ)| + 2).toNat

end

end A286890.P715031313527746894

/-! ## A286890.P4900542007821242537

`Δ[∑[A297418(n+1)]%A034263(n)]`
-/

namespace A286890.P4900542007821242537
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297418 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f2 j) (A034263 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A286890.P4900542007821242537

/-! ## A286890.P853240966109871899

`A184992(n+1)+A297418(n+2)-A107353(n+1)`
-/

namespace A286890.P853240966109871899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184992 (n + 1) + (A297418 (n + 2) - A107353 (n + 1))

end

end A286890.P853240966109871899

/-!
# A286891: Initial primes of 6 consecutive primes with 5 consecutive gaps 10, 8, 6, 4, 2.

The programs for A286891, there is no canonical definition to state claims against.
-/

/-! ## A286891.P13843723074801384001

`p?[A054814(n+1)-10]`
-/

namespace A286891.P13843723074801384001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054814 (n + 1) - 10

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A286891.P13843723074801384001

/-!
# A286892: Triangle read by rows: T(n,m) is the number of inequivalent n X m matrices under action of the Klein group, with one-third each of 1s, 2s and 3s (ordered occurrences rounded up/down if m*n != 0 mod 3).

The programs for A286892, there is no canonical definition to state claims against.
-/

/-! ## A286892.P7377168289556378764

`or(A147323(A147339(n+1)), A332509(n+1))`
-/

namespace A286892.P7377168289556378764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A147323 (A147339 (n + 1)).toNat) (A332509 (n + 1))

end

end A286892.P7377168289556378764

/-!
# A286893: Triangle read by rows: T(n,m) is the number of pattern classes in the (n,m)-rectangular grid with 6 colors and n>=m, two patterns are in the same class if one of them can be obtained by a reflection or 180-degree rotation of the other.

The programs for A286893, there is no canonical definition to state claims against.
-/

/-! ## A286893.P485102706805326319

`C(A002260(7*4^n-1), n-C(∑[char[∑[n]]], 2))`
-/

namespace A286893.P485102706805326319
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A002260 (7 * 4 ^ n - 1)).toNat ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ)).toNat

end

end A286893.P485102706805326319

/-! ## A286893.P7026636934754692837

`A106255(A327302(n)+10)`
-/

namespace A286893.P7026636934754692837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106255 (A327302 n + 10).toNat

end

end A286893.P7026636934754692837

/-!
# A286894: a(n) = maximum difference between two consecutive primes up to 2^n.

The programs for A286894, there is no canonical definition to state claims against.
-/

/-! ## A286894.P10404819635880770405

`A161794(A309058(n))%A285894(n)`
-/

namespace A286894.P10404819635880770405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A161794 (A309058 n).toNat) (A285894 n)

end

end A286894.P10404819635880770405

/-! ## A286894.P13836465480536523057

`A161794(A000041(n))%(n+1)²`
-/

namespace A286894.P13836465480536523057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A161794 (A000041 n).toNat) ((n + 1) ^ 2 : ℤ)

end

end A286894.P13836465480536523057

/-! ## A286894.P12571097844745879204

`A161794(A000041(n))-A000007(n)`
-/

namespace A286894.P12571097844745879204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161794 (A000041 n).toNat - A000007 n

end

end A286894.P12571097844745879204

/-! ## A286894.P5962636208891194743

`A161794(A008639(n))-A000007(n)`
-/

namespace A286894.P5962636208891194743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161794 (A008639 n).toNat - A000007 n

end

end A286894.P5962636208891194743

/-! ## A286894.P13827889857645035904

`A057427(n)*A161794(A000041(n))`
-/

namespace A286894.P13827889857645035904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A161794 (A000041 n).toNat

end

end A286894.P13827889857645035904

/-!
# A286895: Triangle read by rows: T(n,m) is the number of pattern classes in the (n,m)-rectangular grid with 7 colors and n>=m, two patterns are in the same class if one of them can be obtained by a reflection or 180-degree rotation of the other.

The programs for A286895, there is no canonical definition to state claims against.
-/

/-! ## A286895.P17101779112002358394

`A182891(n*(2*n-1))+floor(∑{d}[n+1, 1/(2*#)])`
-/

namespace A286895.P17101779112002358394
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182891 ((n : ℤ) * ((2 * n : ℤ) - 1)).toNat + ⌊∑ d ∈ Nat.divisors (f1 n), 1 / (2 * d : ℚ)⌋

end

end A286895.P17101779112002358394

/-! ## A286895.P9815652126876712765

`A131115(p?[∑[A265755(n)]])`
-/

namespace A286895.P9815652126876712765
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265755 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131115 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A286895.P9815652126876712765

/-!
# A286896: Number of blocks of size >= n in all set partitions of [2n].

The programs for A286896, there is no canonical definition to state claims against.
-/

/-! ## A286896.P16881862443977152690

`A283424(∑[4*n])`
-/

namespace A286896.P16881862443977152690
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283424 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A286896.P16881862443977152690

/-! ## A286896.P12969164894191267524

`record[gcd(A008482(n), A283424(n))]`
-/

namespace A286896.P12969164894191267524
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008482 n) (A283424 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A286896.P12969164894191267524

/-! ## A286896.P3945370488880071680

`or(A000007(n), A283424(A046092(n)))`
-/

namespace A286896.P3945370488880071680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A283424 (A046092 n).toNat)

end

end A286896.P3945370488880071680

/-! ## A286896.P1700719894371657292

`or(A036987(n), A283424(A046092(n)))`
-/

namespace A286896.P1700719894371657292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A036987 n) (A283424 (A046092 n).toNat)

end

end A286896.P1700719894371657292

/-! ## A286896.P17454950699073781314

`or(A122841(n+1), A283424(A046092(n)))`
-/

namespace A286896.P17454950699073781314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A122841 (n + 1)) (A283424 (A046092 n).toNat)

end

end A286896.P17454950699073781314

/-!
# A286898: ASCII codes of letter keys by rows on standard U.S. "QWERTY" keyboard.

The programs for A286898, there is no canonical definition to state claims against.
-/

/-! ## A286898.P13658697162022282344

`A002252(n+1)+64`
-/

namespace A286898.P13658697162022282344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002252 (n + 1) + 64

end

end A286898.P13658697162022282344

/-! ## A286898.P9936788352047623978

`A130764(A002252(n+1))`
-/

namespace A286898.P9936788352047623978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130764 (A002252 (n + 1)).toNat

end

end A286898.P9936788352047623978

/-!
# A286899: Array read by antidiagonals: A(n, L) is the number of closed walks of length 2L along the edges of an n-cube based at a vertex, for n >= 1 and L >= 1.

The programs for A286899, there is no canonical definition to state claims against.
-/

/-! ## A286899.P5401125648317294612

`A326476(lt[1, A191532(n)])`
-/

namespace A286899.P5401125648317294612
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191532 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326476 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A286899.P5401125648317294612

/-! ## A286899.P16968083152968640128

`A326476(lt[1, A210381(n)])`
-/

namespace A286899.P16968083152968640128
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210381 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326476 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A286899.P16968083152968640128

/-! ## A286899.P16686653649824929888

`A326476(lt[n, A369381(n)])`
-/

namespace A286899.P16686653649824929888
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369381 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326476 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A286899.P16686653649824929888

/-! ## A286899.P13654074364053131866

`A326476(comp[∑[A057979(n)]])`
-/

namespace A286899.P13654074364053131866
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326476 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A286899.P13654074364053131866

/-! ## A286899.P16101488114160694022

`A326476(lt[n, A135313(n)²])`
-/

namespace A286899.P16101488114160694022
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135313 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326476 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A286899.P16101488114160694022

