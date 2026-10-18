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
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
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
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
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
import Seq.Opaque.C024
import Seq.Opaque.C025

/-!
# A037800: Number of occurrences of 01 in the binary expansion of n.

The programs for A037800, the canonical program `A037800.P4480434957642420409` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037800 has offset 0).

The definition of A037800 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A037800.P4649670920701297195

`A087116(n)-char[2*n]`
-/

namespace A037800.P4649670920701297195
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087116 n - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A037800.P4649670920701297195

namespace A037800

/-- `A087116(n)-char[2*n]` -/
def P4649670920701297195.Spec : Prop :=
  ∀ n, P4649670920701297195.a n = A037800 n

end A037800

/-! ## A037800.P4480434957642420409

`(A069010(n)+n)%(n+1)`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A037800

/-- `(A069010(n)+n)%(n+1)` -/
def P4480434957642420409.Spec : Prop :=
  ∀ n, P4480434957642420409.a n = A037800 n

theorem P4480434957642420409.correct : P4480434957642420409.Spec := by
  intro n
  simp only [A037800]

end A037800

/-! ## A037800.P1175586879019463465

`A069010(abs(1-n)+1)-1`
-/

namespace A037800.P1175586879019463465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069010 (|1 - (n : ℤ)| + 1).toNat - 1

end

end A037800.P1175586879019463465

namespace A037800

/-- `A069010(abs(1-n)+1)-1` -/
def P1175586879019463465.Spec : Prop :=
  ∀ n, P1175586879019463465.a n = A037800 n

end A037800

/-! ## A037800.P14591551428482157950

`A000120(and(n-1, xor(n, 2*n)))`
-/

namespace A037800.P14591551428482157950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (Int.land ((n : ℤ) - 1) (Nat.xor n (2 * n) : ℤ)).toNat

end

end A037800.P14591551428482157950

namespace A037800

/-- `A000120(and(n-1, xor(n, 2*n)))` -/
def P14591551428482157950.Spec : Prop :=
  ∀ n, P14591551428482157950.a n = A037800 n

end A037800

/-! ## A037800.P17016305574274334940

`A033264(A035327(n))`
-/

namespace A037800.P17016305574274334940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033264 (A035327 n).toNat

end

end A037800.P17016305574274334940

namespace A037800

/-- `A033264(A035327(n))` -/
def P17016305574274334940.Spec : Prop :=
  ∀ n, P17016305574274334940.a n = A037800 n

end A037800

/-! ## A037800.P8597167601834245718

`A069010(A087734(n))`
-/

namespace A037800.P8597167601834245718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069010 (A087734 n).toNat

end

end A037800.P8597167601834245718

namespace A037800

/-- `A069010(A087734(n))` -/
def P8597167601834245718.Spec : Prop :=
  ∀ n, P8597167601834245718.a n = A037800 n

end A037800

/-! ## A037800.P13682289172864747808

`A086784(A090078(n))`
-/

namespace A037800.P13682289172864747808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086784 (A090078 n).toNat

end

end A037800.P13682289172864747808

namespace A037800

/-- `A086784(A090078(n))` -/
def P13682289172864747808.Spec : Prop :=
  ∀ n, P13682289172864747808.a n = A037800 n

end A037800

/-! ## A037800.P1951132294311136623

`A286041(A005811(n)+1)`
-/

namespace A037800.P1951132294311136623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286041 (A005811 n + 1).toNat

end

end A037800.P1951132294311136623

namespace A037800

/-- `A286041(A005811(n)+1)` -/
def P1951132294311136623.Spec : Prop :=
  ∀ n, P1951132294311136623.a n = A037800 n

end A037800

/-! ## A037800.P3461387552258449186

`A014081(A277561(n)-1)`
-/

namespace A037800.P3461387552258449186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014081 (A277561 n - 1).toNat

end

end A037800.P3461387552258449186

namespace A037800

/-- `A014081(A277561(n)-1)` -/
def P3461387552258449186.Spec : Prop :=
  ∀ n, P3461387552258449186.a n = A037800 n

end A037800

/-! ## A037800.P11009748572876523992

`A285726(2*A277561(n))`
-/

namespace A037800.P11009748572876523992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285726 (2 * A277561 n).toNat

end

end A037800.P11009748572876523992

namespace A037800

/-- `A285726(2*A277561(n))` -/
def P11009748572876523992.Spec : Prop :=
  ∀ n, P11009748572876523992.a n = A037800 n

end A037800

/-! ## A037800.P780674935843885751

`A000120(n-A283165(n))`
-/

namespace A037800.P780674935843885751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 ((n : ℤ) - A283165 n).toNat

end

end A037800.P780674935843885751

namespace A037800

/-- `A000120(n-A283165(n))` -/
def P780674935843885751.Spec : Prop :=
  ∀ n, P780674935843885751.a n = A037800 n

end A037800

/-! ## A037800.P11252303239737265983

`A069010(n-A342126(n))`
-/

namespace A037800.P11252303239737265983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069010 ((n : ℤ) - A342126 n).toNat

end

end A037800.P11252303239737265983

namespace A037800

/-- `A069010(n-A342126(n))` -/
def P11252303239737265983.Spec : Prop :=
  ∀ n, P11252303239737265983.a n = A037800 n

end A037800

/-! ## A037800.P17171760189721655753

`A065033(A088748(n)-1)-1`
-/

namespace A037800.P17171760189721655753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A088748 n - 1).toNat - 1

end

end A037800.P17171760189721655753

namespace A037800

/-- `A065033(A088748(n)-1)-1` -/
def P17171760189721655753.Spec : Prop :=
  ∀ n, P17171760189721655753.a n = A037800 n

end A037800

/-! ## A037800.P1397130738295095859

`A088023(n+1)-A266977(n)`
-/

namespace A037800.P1397130738295095859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088023 (n + 1) - A266977 n

end

end A037800.P1397130738295095859

namespace A037800

/-- `A088023(n+1)-A266977(n)` -/
def P1397130738295095859.Spec : Prop :=
  ∀ n, P1397130738295095859.a n = A037800 n

end A037800

/-! ## A037800.P12533925194979922108

`A140106(n+1)-A255070(n)`
-/

namespace A037800.P12533925194979922108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140106 (n + 1) - A255070 n

end

end A037800.P12533925194979922108

namespace A037800

/-- `A140106(n+1)-A255070(n)` -/
def P12533925194979922108.Spec : Prop :=
  ∀ n, P12533925194979922108.a n = A037800 n

end A037800

/-! ## A037800.P5589578517251910998

`A033264(A030101(n))`
-/

namespace A037800.P5589578517251910998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033264 (A030101 n).toNat

end

end A037800.P5589578517251910998

namespace A037800

/-- `A033264(A030101(n))` -/
def P5589578517251910998.Spec : Prop :=
  ∀ n, P5589578517251910998.a n = A037800 n

end A037800

/-! ## A037800.P620782477621491410

`A069010(n-A342410(n))`
-/

namespace A037800.P620782477621491410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069010 ((n : ℤ) - A342410 n).toNat

end

end A037800.P620782477621491410

namespace A037800

/-- `A069010(n-A342410(n))` -/
def P620782477621491410.Spec : Prop :=
  ∀ n, P620782477621491410.a n = A037800 n

end A037800

/-! ## A037800.P14922369711577549277

`A005811(A341916(and(n-1, xor(n, 2*n))))`
-/

namespace A037800.P14922369711577549277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 (A341916 (Int.land ((n : ℤ) - 1) (Nat.xor n (2 * n) : ℤ)).toNat).toNat

end

end A037800.P14922369711577549277

namespace A037800

/-- `A005811(A341916(and(n-1, xor(n, 2*n))))` -/
def P14922369711577549277.Spec : Prop :=
  ∀ n, P14922369711577549277.a n = A037800 n

end A037800

/-!
# A037801: Number of i such that d(i)

The programs for A037801, there is no canonical definition to state claims against.
-/

/-! ## A037801.P11688192243349183609

`A062153(n+1)-A037826(n+1)`
-/

namespace A037801.P11688192243349183609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062153 (n + 1) - A037826 (n + 1)

end

end A037801.P11688192243349183609

/-! ## A037801.P8341118693243310104

`A037810(n+1)+A037818(n+1)-A037826(n+1)`
-/

namespace A037801.P8341118693243310104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037810 (n + 1) + (A037818 (n + 1) - A037826 (n + 1))

end

end A037801.P8341118693243310104

/-! ## A037801.P3515256089412125019

`A037818(A030102(n+1))`
-/

namespace A037801.P3515256089412125019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037818 (A030102 (n + 1)).toNat

end

end A037801.P3515256089412125019

/-! ## A037801.P2788623478138286206

`A037802(A023717(n+1))`
-/

namespace A037801.P2788623478138286206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037802 (A023717 (n + 1)).toNat

end

end A037801.P2788623478138286206

/-! ## A037801.P7146003895910581320

`A037802(A023713(n+1)+1)`
-/

namespace A037801.P7146003895910581320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037802 (A023713 (n + 1) + 1).toNat

end

end A037801.P7146003895910581320

/-! ## A037801.P5412933280395839454

`A037802(A023713(n+2))`
-/

namespace A037801.P5412933280395839454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037802 (A023713 (n + 2)).toNat

end

end A037801.P5412933280395839454

/-! ## A037801.P2561979413335388879

`A037802(A006288(n)+1)`
-/

namespace A037801.P2561979413335388879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037802 (A006288 n + 1).toNat

end

end A037801.P2561979413335388879

/-! ## A037801.P2294657975434478879

`A037802(A023709(n+1)+1)`
-/

namespace A037801.P2294657975434478879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037802 (A023709 (n + 1) + 1).toNat

end

end A037801.P2294657975434478879

/-! ## A037801.P10502561047327139461

`A037802(A023709(n+2))`
-/

namespace A037801.P10502561047327139461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037802 (A023709 (n + 2)).toNat

end

end A037801.P10502561047327139461

/-! ## A037801.P2320747355948698939

`A037803(A037453(n+1))`
-/

namespace A037801.P2320747355948698939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037803 (A037453 (n + 1)).toNat

end

end A037801.P2320747355948698939

/-! ## A037801.P2722622877466234622

`A037804(A037454(n+1))`
-/

namespace A037801.P2722622877466234622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037804 (A037454 (n + 1)).toNat

end

end A037801.P2722622877466234622

/-! ## A037801.P3157611225664582557

`A037805(A037455(n+1))`
-/

namespace A037801.P3157611225664582557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037805 (A037455 (n + 1)).toNat

end

end A037801.P3157611225664582557

/-! ## A037801.P18067325741946063610

`A037806(A037456(n+1))`
-/

namespace A037801.P18067325741946063610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037806 (A037456 (n + 1)).toNat

end

end A037801.P18067325741946063610

/-! ## A037801.P9329422769463900121

`A037807(A037314(n+1))`
-/

namespace A037801.P9329422769463900121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037807 (A037314 (n + 1)).toNat

end

end A037801.P9329422769463900121

/-! ## A037801.P11499792565614413307

`A037807(A319497(n+1))`
-/

namespace A037801.P11499792565614413307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037807 (A319497 (n + 1)).toNat

end

end A037801.P11499792565614413307

/-!
# A037802: Number of i such that d(i) < d(i-1), where Sum_{i=0..m} d(i)*4^i is the base-4 representation of n.

The programs for A037802, there is no canonical definition to state claims against.
-/

/-! ## A037802.P16903156503688233416

`A102572(n+1)-A037827(n+1)`
-/

namespace A037802.P16903156503688233416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102572 (n + 1) - A037827 (n + 1)

end

end A037802.P16903156503688233416

/-! ## A037802.P1390172005123519973

`A037819(A030103(n+1))`
-/

namespace A037802.P1390172005123519973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037819 (A030103 (n + 1)).toNat

end

end A037802.P1390172005123519973

/-! ## A037802.P7209142803906256905

`A037827(A003817(A284880(n+1)))-A037827(n+1)`
-/

namespace A037802.P7209142803906256905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037827 (A003817 (A284880 (n + 1)).toNat).toNat - A037827 (n + 1)

end

end A037802.P7209142803906256905

/-! ## A037802.P4931919602406885073

`A037803(A037459(n+1))`
-/

namespace A037802.P4931919602406885073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037803 (A037459 (n + 1)).toNat

end

end A037802.P4931919602406885073

/-! ## A037802.P16261931875066098195

`A037803(A020654(n+2))`
-/

namespace A037802.P16261931875066098195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037803 (A020654 (n + 2)).toNat

end

end A037802.P16261931875066098195

/-! ## A037802.P16657996776584503342

`A037803(A023733(n+1)+1)`
-/

namespace A037802.P16657996776584503342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037803 (A023733 (n + 1) + 1).toNat

end

end A037802.P16657996776584503342

/-! ## A037802.P4406735425754062985

`A037803(A023733(n+2))`
-/

namespace A037802.P4406735425754062985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037803 (A023733 (n + 2)).toNat

end

end A037802.P4406735425754062985

/-! ## A037802.P1167715034031696946

`A037803(A023729(n+2))`
-/

namespace A037802.P1167715034031696946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037803 (A023729 (n + 2)).toNat

end

end A037802.P1167715034031696946

/-! ## A037802.P9547893882110890335

`A037803(A023725(n+1)+1)`
-/

namespace A037802.P9547893882110890335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037803 (A023725 (n + 1) + 1).toNat

end

end A037802.P9547893882110890335

/-! ## A037802.P12105133232486133422

`A037803(A023725(n+2))`
-/

namespace A037802.P12105133232486133422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037803 (A023725 (n + 2)).toNat

end

end A037802.P12105133232486133422

/-! ## A037802.P9923083406349215451

`A037804(A037460(n+1))`
-/

namespace A037802.P9923083406349215451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037804 (A037460 (n + 1)).toNat

end

end A037802.P9923083406349215451

/-! ## A037802.P17937748536737297267

`A037805(A037461(n+1))`
-/

namespace A037802.P17937748536737297267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037805 (A037461 (n + 1)).toNat

end

end A037802.P17937748536737297267

/-! ## A037802.P3111672759297494719

`A037806(A037462(n+1))`
-/

namespace A037802.P3111672759297494719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037806 (A037462 (n + 1)).toNat

end

end A037802.P3111672759297494719

/-! ## A037802.P1436583572896486831

`A037807(A037463(n+1))`
-/

namespace A037802.P1436583572896486831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037807 (A037463 (n + 1)).toNat

end

end A037802.P1436583572896486831

/-! ## A037802.P3088418154790935032

`A037807(A005836(n+2))`
-/

namespace A037802.P3088418154790935032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037807 (A005836 (n + 2)).toNat

end

end A037802.P3088418154790935032

/-! ## A037802.P10466537575140344408

`A037808(A007090(n+1))`
-/

namespace A037802.P10466537575140344408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037808 (A007090 (n + 1)).toNat

end

end A037802.P10466537575140344408

/-! ## A037802.P12962999901446942493

`A037808(A007284(n+1))`
-/

namespace A037802.P12962999901446942493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037808 (A007284 (n + 1)).toNat

end

end A037802.P12962999901446942493

/-! ## A037802.P5282943165908576561

`A037807(A191106(n+1))`
-/

namespace A037802.P5282943165908576561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037807 (A191106 (n + 1)).toNat

end

end A037802.P5282943165908576561

/-! ## A037802.P6887197962273593330

`A037808(A046030(n+2))`
-/

namespace A037802.P6887197962273593330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037808 (A046030 (n + 2)).toNat

end

end A037802.P6887197962273593330

/-! ## A037802.P7358172330320805787

`A037808(A001743(n+1)+1)`
-/

namespace A037802.P7358172330320805787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037808 (A001743 (n + 1) + 1).toNat

end

end A037802.P7358172330320805787

/-!
# A037803: Number of i such that d(i) < d(i-1), where Sum_{i=0..m} d(i)*5^i is the base-5 representation of n.

The programs for A037803, there is no canonical definition to state claims against.
-/

/-! ## A037803.P10439086089303215660

`A037812(n+1)+A037820(n+1)-A037828(n+1)`
-/

namespace A037803.P10439086089303215660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037812 (n + 1) + (A037820 (n + 1) - A037828 (n + 1))

end

end A037803.P10439086089303215660

/-! ## A037803.P10943838889487515137

`A037804(A037465(n+1))`
-/

namespace A037803.P10943838889487515137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037804 (A037465 (n + 1)).toNat

end

end A037803.P10943838889487515137

/-! ## A037803.P17431105255287323397

`A037820(A030104(n+1))`
-/

namespace A037803.P17431105255287323397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037820 (A030104 (n + 1)).toNat

end

end A037803.P17431105255287323397

/-! ## A037803.P11921605180610050294

`A037805(A037466(n+1))`
-/

namespace A037803.P11921605180610050294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037805 (A037466 (n + 1)).toNat

end

end A037803.P11921605180610050294

/-! ## A037803.P16220487714841384185

`A037806(A037467(n+1))`
-/

namespace A037803.P16220487714841384185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037806 (A037467 (n + 1)).toNat

end

end A037803.P16220487714841384185

/-! ## A037803.P17052747776361687012

`A037807(A037468(n+1))`
-/

namespace A037803.P17052747776361687012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037807 (A037468 (n + 1)).toNat

end

end A037803.P17052747776361687012

/-! ## A037803.P13911288029492390550

`A037808(A007091(n+1))`
-/

namespace A037803.P13911288029492390550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037808 (A007091 (n + 1)).toNat

end

end A037803.P13911288029492390550

/-! ## A037803.P15194374097157153340

`A037808(A054047(n+1))`
-/

namespace A037803.P15194374097157153340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037808 (A054047 (n + 1)).toNat

end

end A037803.P15194374097157153340

/-! ## A037803.P3766803281692230769

`A037808(A080228(n+2))`
-/

namespace A037803.P3766803281692230769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037808 (A080228 (n + 2)).toNat

end

end A037803.P3766803281692230769

/-! ## A037803.P12075617959915067871

`A037808(A001744(n+1)+1)`
-/

namespace A037803.P12075617959915067871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037808 (A001744 (n + 1) + 1).toNat

end

end A037803.P12075617959915067871

/-! ## A037803.P18122588813185938252

`A037808(A072960(n+1)+1)`
-/

namespace A037803.P18122588813185938252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037808 (A072960 (n + 1) + 1).toNat

end

end A037803.P18122588813185938252

/-! ## A037803.P762399874753708282

`A037808(A014263(n+2)/2)`
-/

namespace A037803.P762399874753708282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037808 (SequenceMachineLib.roundAway ((A014263 (n + 2) : ℚ) / 2)).toNat

end

end A037803.P762399874753708282

/-! ## A037803.P14956346935875637306

`A037808(A001744(n+2))`
-/

namespace A037803.P14956346935875637306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037808 (A001744 (n + 2)).toNat

end

end A037803.P14956346935875637306

/-! ## A037803.P516250853403392779

`A037808(A014263(n+2))`
-/

namespace A037803.P516250853403392779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037808 (A014263 (n + 2)).toNat

end

end A037803.P516250853403392779

/-! ## A037803.P10857037070213358302

`A037808(A072960(n+2))`
-/

namespace A037803.P10857037070213358302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037808 (A072960 (n + 2)).toNat

end

end A037803.P10857037070213358302

/-! ## A037803.P7846552989860939847

`A037808(A061830(n+1))`
-/

namespace A037803.P7846552989860939847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037808 (A061830 (n + 1)).toNat

end

end A037803.P7846552989860939847

/-!
# A037804: Number of i such that d(i) < d(i-1), where Sum_{i=0..m} d(i)*6^i is the base-6 representation of n.

The programs for A037804, there is no canonical definition to state claims against.
-/

/-! ## A037804.P17906062703778929498

`A037813(n+1)+A037821(n+1)-A037829(n+1)`
-/

namespace A037804.P17906062703778929498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037813 (n + 1) + (A037821 (n + 1) - A037829 (n + 1))

end

end A037804.P17906062703778929498

/-! ## A037804.P1502621113466150698

`A037821(A030105(n+1))`
-/

namespace A037804.P1502621113466150698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037821 (A030105 (n + 1)).toNat

end

end A037804.P1502621113466150698

/-! ## A037804.P12711783802437204429

`A037805(A020657(n+2))`
-/

namespace A037804.P12711783802437204429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037805 (A020657 (n + 2)).toNat

end

end A037804.P12711783802437204429

/-! ## A037804.P4434597746176475245

`A037805(A249102(n+1)+1)`
-/

namespace A037804.P4434597746176475245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037805 (A249102 (n + 1) + 1).toNat

end

end A037804.P4434597746176475245

/-! ## A037804.P12971021512491852893

`A037805(A249102(n+2))`
-/

namespace A037804.P12971021512491852893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037805 (A249102 (n + 2)).toNat

end

end A037804.P12971021512491852893

/-! ## A037804.P17238860013362769855

`A037806(A037471(n+1))`
-/

namespace A037804.P17238860013362769855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037806 (A037471 (n + 1)).toNat

end

end A037804.P17238860013362769855

/-! ## A037804.P16912513789461542080

`A037807(A037472(n+1))`
-/

namespace A037804.P16912513789461542080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037807 (A037472 (n + 1)).toNat

end

end A037804.P16912513789461542080

/-! ## A037804.P3142277266193697840

`A037808(A007092(n+1))`
-/

namespace A037804.P3142277266193697840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037808 (A007092 (n + 1)).toNat

end

end A037804.P3142277266193697840

/-! ## A037804.P16634161342589140514

`A037808(A084984(n+2))`
-/

namespace A037804.P16634161342589140514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037808 (A084984 (n + 2)).toNat

end

end A037804.P16634161342589140514

/-! ## A037804.P17573849532217683768

`A037808(A202267(n+2))`
-/

namespace A037804.P17573849532217683768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037808 (A202267 (n + 2)).toNat

end

end A037804.P17573849532217683768

/-! ## A037804.P7437924275790129049

`A037808(A276138(n+1)+1)`
-/

namespace A037804.P7437924275790129049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037808 (A276138 (n + 1) + 1).toNat

end

end A037804.P7437924275790129049

/-! ## A037804.P16672180924663596418

`A037808(A276138(n+2))`
-/

namespace A037804.P16672180924663596418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037808 (A276138 (n + 2)).toNat

end

end A037804.P16672180924663596418

/-! ## A037804.P13661496120073768516

`A037808(A137386(n+1)+1)`
-/

namespace A037804.P13661496120073768516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037808 (A137386 (n + 1) + 1).toNat

end

end A037804.P13661496120073768516

/-! ## A037804.P3905279023324539437

`A037808(A137386(n+2))`
-/

namespace A037804.P3905279023324539437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037808 (A137386 (n + 2)).toNat

end

end A037804.P3905279023324539437

/-!
# A037805: Number of i such that d(i) < d(i-1), where Sum_{i=0..m} d(i)*7^i is the base-7 representation of n.

The programs for A037805, there is no canonical definition to state claims against.
-/

/-! ## A037805.P7684415851301281185

`A037814(n+1)+A037822(n+1)-A037830(n+1)`
-/

namespace A037805.P7684415851301281185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037814 (n + 1) + (A037822 (n + 1) - A037830 (n + 1))

end

end A037805.P7684415851301281185

/-! ## A037805.P3912330715416862984

`A037806(A037474(n+1))`
-/

namespace A037805.P3912330715416862984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037806 (A037474 (n + 1)).toNat

end

end A037805.P3912330715416862984

/-! ## A037805.P7328180117767876440

`A037807(A037475(n+1))`
-/

namespace A037805.P7328180117767876440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037807 (A037475 (n + 1)).toNat

end

end A037805.P7328180117767876440

/-! ## A037805.P2356323568616008837

`A037822(A030106(n+1))`
-/

namespace A037805.P2356323568616008837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037822 (A030106 (n + 1)).toNat

end

end A037805.P2356323568616008837

/-! ## A037805.P10675104778006739226

`A037808(A007093(n+1))`
-/

namespace A037805.P10675104778006739226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037808 (A007093 (n + 1)).toNat

end

end A037805.P10675104778006739226

/-! ## A037805.P13600656657990912987

`A037808(A168501(n+2))`
-/

namespace A037805.P13600656657990912987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037808 (A168501 (n + 2)).toNat

end

end A037805.P13600656657990912987

/-! ## A037805.P3247490801138514670

`A037808(A307913(n+2))`
-/

namespace A037805.P3247490801138514670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037808 (A307913 (n + 2)).toNat

end

end A037805.P3247490801138514670

/-! ## A037805.P11455058316682066566

`A037808(A028374(n+1)+1)`
-/

namespace A037805.P11455058316682066566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037808 (A028374 (n + 1) + 1).toNat

end

end A037805.P11455058316682066566

/-! ## A037805.P18056351451754336711

`A037808(A028374(n+2))`
-/

namespace A037805.P18056351451754336711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037808 (A028374 (n + 2)).toNat

end

end A037805.P18056351451754336711

/-!
# A037806: Number of i such that d(i) < d(i-1), where Sum_{i=0..m} d(i)*8^i is the base-8 representation of n.

The programs for A037806, there is no canonical definition to state claims against.
-/

/-! ## A037806.P1355962475301032724

`A002264(A000523(n+1))-A037831(n+1)`
-/

namespace A037806.P1355962475301032724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A000523 (n + 1)).toNat - A037831 (n + 1)

end

end A037806.P1355962475301032724

/-! ## A037806.P17638119352867755497

`A037815(n+1)+A037823(n+1)-A037831(n+1)`
-/

namespace A037806.P17638119352867755497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037815 (n + 1) + (A037823 (n + 1) - A037831 (n + 1))

end

end A037806.P17638119352867755497

/-! ## A037806.P13717991437825431088

`A037807(A037477(n+1))`
-/

namespace A037806.P13717991437825431088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037807 (A037477 (n + 1)).toNat

end

end A037806.P13717991437825431088

/-! ## A037806.P2493907548433379038

`A037823(A030107(n+1))`
-/

namespace A037806.P2493907548433379038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037823 (A030107 (n + 1)).toNat

end

end A037806.P2493907548433379038

/-! ## A037806.P16768265945329094453

`A037808(A007094(n+1))`
-/

namespace A037806.P16768265945329094453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037808 (A007094 (n + 1)).toNat

end

end A037806.P16768265945329094453

/-! ## A037806.P10780480096361601577

`A037808(A008541(n+2))`
-/

namespace A037806.P10780480096361601577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037808 (A008541 (n + 2)).toNat

end

end A037806.P10780480096361601577

/-! ## A037806.P15273689828815396466

`A037808(A008539(n+1)+1)`
-/

namespace A037806.P15273689828815396466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037808 (A008539 (n + 1) + 1).toNat

end

end A037806.P15273689828815396466

/-! ## A037806.P8813890543698725963

`A037808(A008539(n+2))`
-/

namespace A037806.P8813890543698725963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037808 (A008539 (n + 2)).toNat

end

end A037806.P8813890543698725963

/-! ## A037806.P540618895601426997

`ceil(A037849(n+1)/A114212(n))`
-/

namespace A037806.P540618895601426997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A037849 (n + 1) : ℚ) / (A114212 n : ℚ)⌉

end

end A037806.P540618895601426997

/-!
# A037807: Number of i such that d(i) < d(i-1), where Sum_{i=0..m} d(i)*9^i is the base-9 representation of n.

The programs for A037807, there is no canonical definition to state claims against.
-/

/-! ## A037807.P8226514536486640474

`A037824(A030108(n+1))`
-/

namespace A037807.P8226514536486640474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037824 (A030108 (n + 1)).toNat

end

end A037807.P8226514536486640474

/-! ## A037807.P13285902826406078539

`A037808(A007095(n+1))`
-/

namespace A037807.P13285902826406078539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037808 (A007095 (n + 1)).toNat

end

end A037807.P13285902826406078539

/-! ## A037807.P3403340987551024451

`A037808(A037479(n+1))`
-/

namespace A037807.P3403340987551024451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037808 (A037479 (n + 1)).toNat

end

end A037807.P3403340987551024451

/-! ## A037807.P5880949047198821154

`A037808(A052404(n+2))`
-/

namespace A037807.P5880949047198821154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037808 (A052404 (n + 2)).toNat

end

end A037807.P5880949047198821154

/-! ## A037807.P6433300196600847348

`A037808(A052405(n+2))`
-/

namespace A037807.P6433300196600847348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037808 (A052405 (n + 2)).toNat

end

end A037807.P6433300196600847348

/-! ## A037807.P1396048688351643884

`A037808(A052406(n+2))`
-/

namespace A037807.P1396048688351643884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037808 (A052406 (n + 2)).toNat

end

end A037807.P1396048688351643884

/-! ## A037807.P2670433738755130551

`A037808(A052413(n+2))`
-/

namespace A037807.P2670433738755130551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037808 (A052413 (n + 2)).toNat

end

end A037807.P2670433738755130551

/-! ## A037807.P15909844906787533463

`A037808(A052414(n+2))`
-/

namespace A037807.P15909844906787533463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037808 (A052414 (n + 2)).toNat

end

end A037807.P15909844906787533463

/-! ## A037807.P18373621148838036140

`A037808(A052419(n+2))`
-/

namespace A037807.P18373621148838036140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037808 (A052419 (n + 2)).toNat

end

end A037807.P18373621148838036140

/-! ## A037807.P15405303144568271681

`A037808(A052421(n+2))`
-/

namespace A037807.P15405303144568271681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037808 (A052421 (n + 2)).toNat

end

end A037807.P15405303144568271681

/-! ## A037807.P12590227074097696634

`A037808(A052383(n+1)+1)`
-/

namespace A037807.P12590227074097696634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037808 (A052383 (n + 1) + 1).toNat

end

end A037807.P12590227074097696634

/-! ## A037807.P9655879437613570196

`A037808(A052383(n+2))`
-/

namespace A037807.P9655879437613570196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037808 (A052383 (n + 2)).toNat

end

end A037807.P9655879437613570196

/-!
# A037808: Number of i such that d(i) < d(i-1), where Sum_{i=0..m} d(i)*10^i is the base-10 representation of n.

The programs for A037808, there is no canonical definition to state claims against.
-/

/-! ## A037808.P3322686969400079049

`A037825(A004086(n+1))`
-/

namespace A037808.P3322686969400079049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037825 (A004086 (n + 1)).toNat

end

end A037808.P3322686969400079049

/-! ## A037808.P1882387275823807951

`A004216(n+1)-A037833(n+1)`
-/

namespace A037808.P1882387275823807951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004216 (n + 1) - A037833 (n + 1)

end

end A037808.P1882387275823807951

/-! ## A037808.P17472070596257067818

`A055642(n+1)-1-A037833(n+1)`
-/

namespace A037808.P17472070596257067818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (n + 1) - 1 - A037833 (n + 1)

end

end A037808.P17472070596257067818

/-! ## A037808.P6981797165384088693

`A059995(A004219(n+1))-A037833(n+1)`
-/

namespace A037808.P6981797165384088693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059995 (A004219 (n + 1)).toNat - A037833 (n + 1)

end

end A037808.P6981797165384088693

/-! ## A037808.P12670319338273560904

`A037817(n+1)+A037825(n+1)-A037833(n+1)`
-/

namespace A037808.P12670319338273560904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037817 (n + 1) + (A037825 (n + 1) - A037833 (n + 1))

end

end A037808.P12670319338273560904

/-! ## A037808.P7935769214812810131

`A004218(n+2)-1-A037833(n+1)`
-/

namespace A037808.P7935769214812810131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004218 (n + 2) - 1 - A037833 (n + 1)

end

end A037808.P7935769214812810131

/-! ## A037808.P7840982943488682361

`A004218(A059995(n+11))-A037833(n+1)`
-/

namespace A037808.P7840982943488682361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004218 (A059995 (n + 11)).toNat - A037833 (n + 1)

end

end A037808.P7840982943488682361

/-! ## A037808.P13864096882008583500

`A080941(A115231(n+1))%A271083(A037851(n+1))`
-/

namespace A037808.P13864096882008583500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A080941 (A115231 (n + 1)).toNat) (A271083 (A037851 (n + 1)).toNat)

end

end A037808.P13864096882008583500

/-! ## A037808.P11173417903173507907

`ceil(A037851(n+1)/A166046(n))`
-/

namespace A037808.P11173417903173507907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A037851 (n + 1) : ℚ) / (A166046 n : ℚ)⌉

end

end A037808.P11173417903173507907

/-! ## A037808.P4270122748699519346

`ceil(A337171(n+1)/A166046(n))`
-/

namespace A037808.P4270122748699519346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A337171 (n + 1) : ℚ) / (A166046 n : ℚ)⌉

end

end A037808.P4270122748699519346

/-! ## A037808.P16967816573155640112

`ceil(A337171(n+1)/A044966(n+1))`
-/

namespace A037808.P16967816573155640112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A337171 (n + 1) : ℚ) / (A044966 (n + 1) : ℚ)⌉

end

end A037808.P16967816573155640112

/-! ## A037808.P3318411929849595089

`A057427(A266697(n)*A337171(n+1))`
-/

namespace A037808.P3318411929849595089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A266697 n * A337171 (n + 1)).toNat

end

end A037808.P3318411929849595089

/-! ## A037808.P7700434609633182340

`A057427(A166046(n)%A223475(n+1))`
-/

namespace A037808.P7700434609633182340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (Int.tmod (A166046 n) (A223475 (n + 1))).toNat

end

end A037808.P7700434609633182340

/-! ## A037808.P12979097007776787863

`A057427(A337171(n+1)%A166046(n))`
-/

namespace A037808.P12979097007776787863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (Int.tmod (A337171 (n + 1)) (A166046 n)).toNat

end

end A037808.P12979097007776787863

/-! ## A037808.P16554154251452686962

`A057427(A037851(n+1)*A275725(n))`
-/

namespace A037808.P16554154251452686962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A037851 (n + 1) * A275725 n).toNat

end

end A037808.P16554154251452686962

/-! ## A037808.P362611435121372136

`A057427(A037851(n+1)*A275807(n))`
-/

namespace A037808.P362611435121372136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A037851 (n + 1) * A275807 n).toNat

end

end A037808.P362611435121372136

/-! ## A037808.P9539328446822357446

`A054054(A213217(n+1)-1)`
-/

namespace A037808.P9539328446822357446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054054 (A213217 (n + 1) - 1).toNat

end

end A037808.P9539328446822357446

/-! ## A037808.P13040872911174974460

`A011582(A108782(n+1)²)`
-/

namespace A037808.P13040872911174974460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011582 (A108782 (n + 1) ^ 2).toNat

end

end A037808.P13040872911174974460

/-! ## A037808.P15919993715474978770

`A070596(A108782(n+1)²)`
-/

namespace A037808.P15919993715474978770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070596 (A108782 (n + 1) ^ 2).toNat

end

end A037808.P15919993715474978770

/-! ## A037808.P5856376827365177987

`A193582(A193582(A108782(n+1)²))`
-/

namespace A037808.P5856376827365177987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193582 (A193582 (A108782 (n + 1) ^ 2).toNat).toNat

end

end A037808.P5856376827365177987

/-!
# A037809: Number of i such that d(i) <= d(i-1), where Sum_{i=0..m} d(i)*2^i is the base-2 representation of n.

The programs for A037809, the canonical program `A037809.P4595952055594369348` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037809 has offset 1).

The definition of A037809 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056973, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A037809.P4595952055594369348

`A056973(n+1)+A000120(n+1)-1`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A037809

/-- `A056973(n+1)+A000120(n+1)-1` -/
def P4595952055594369348.Spec : Prop :=
  ∀ n, P4595952055594369348.a n = A037809 (n + 1)

theorem P4595952055594369348.correct : P4595952055594369348.Spec := by
  intro n
  simp only [A037809, Nat.add_sub_cancel]

end A037809

/-! ## A037809.P2858107073219797408

`floor(log2(A106151(n+1)))`
-/

namespace A037809.P2858107073219797408
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A106151 (n + 1)).toNat

end

end A037809.P2858107073219797408

namespace A037809

/-- `floor(log2(A106151(n+1)))` -/
def P2858107073219797408.Spec : Prop :=
  ∀ n, (P2858107073219797408.a n : ℤ) = A037809 (n + 1)

end A037809

/-! ## A037809.P8763906109442528892

`A033265(gcd(n+1, ∑[n]))`
-/

namespace A037809.P8763906109442528892
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033265 (Nat.gcd (n + 1) (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A037809.P8763906109442528892

namespace A037809

/-- `A033265(gcd(n+1, ∑[n]))` -/
def P8763906109442528892.Spec : Prop :=
  ∀ n, P8763906109442528892.a n = A037809 (n + 1)

end A037809

/-! ## A037809.P13460040379842272646

`A033265(2*n+3)-1`
-/

namespace A037809.P13460040379842272646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033265 (2 * n + 3) - 1

end

end A037809.P13460040379842272646

namespace A037809

/-- `A033265(2*n+3)-1` -/
def P13460040379842272646.Spec : Prop :=
  ∀ n, P13460040379842272646.a n = A037809 (n + 1)

end A037809

/-! ## A037809.P18376424611363032975

`abs(A033265(n+1)-n%2)`
-/

namespace A037809.P18376424611363032975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A033265 (n + 1) - ((n % 2 : ℕ) : ℤ)|

end

end A037809.P18376424611363032975

namespace A037809

/-- `abs(A033265(n+1)-n%2)` -/
def P18376424611363032975.Spec : Prop :=
  ∀ n, P18376424611363032975.a n = A037809 (n + 1)

end A037809

/-! ## A037809.P583965344818057374

`floor(log2(n+1)-A033264(n+1))`
-/

namespace A037809.P583965344818057374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.logb 2 (n + 1 : ℝ) - (A033264 (n + 1) : ℝ)⌋

end

end A037809.P583965344818057374

namespace A037809

/-- `floor(log2(n+1)-A033264(n+1))` -/
def P583965344818057374.Spec : Prop :=
  ∀ n, P583965344818057374.a n = A037809 (n + 1)

end A037809

/-! ## A037809.P5427707599155469389

`floor(log2(n+1))-A087116(n+1)`
-/

namespace A037809.P5427707599155469389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.log 2 (n + 1) : ℤ) - A087116 (n + 1)

end

end A037809.P5427707599155469389

namespace A037809

/-- `floor(log2(n+1))-A087116(n+1)` -/
def P5427707599155469389.Spec : Prop :=
  ∀ n, P5427707599155469389.a n = A037809 (n + 1)

end A037809

/-! ## A037809.P8156133255269891852

`A033265(A026741(n+1))`
-/

namespace A037809.P8156133255269891852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033265 (A026741 (n + 1)).toNat

end

end A037809.P8156133255269891852

namespace A037809

/-- `A033265(A026741(n+1))` -/
def P8156133255269891852.Spec : Prop :=
  ∀ n, P8156133255269891852.a n = A037809 (n + 1)

end A037809

/-! ## A037809.P17198051010600429347

`A000523(A106151(n+1))`
-/

namespace A037809.P17198051010600429347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (A106151 (n + 1)).toNat

end

end A037809.P17198051010600429347

namespace A037809

/-- `A000523(A106151(n+1))` -/
def P17198051010600429347.Spec : Prop :=
  ∀ n, P17198051010600429347.a n = A037809 (n + 1)

end A037809

/-! ## A037809.P4136262287433284845

`A056973(n+1)+A048881(n)`
-/

namespace A037809.P4136262287433284845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056973 (n + 1) + A048881 n

end

end A037809.P4136262287433284845

namespace A037809

/-- `A056973(n+1)+A048881(n)` -/
def P4136262287433284845.Spec : Prop :=
  ∀ n, P4136262287433284845.a n = A037809 (n + 1)

end A037809

/-! ## A037809.P5402814345666494652

`A000523(n+1)-A033264(n+1)`
-/

namespace A037809.P5402814345666494652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (n + 1) - A033264 (n + 1)

end

end A037809.P5402814345666494652

namespace A037809

/-- `A000523(n+1)-A033264(n+1)` -/
def P5402814345666494652.Spec : Prop :=
  ∀ n, P5402814345666494652.a n = A037809 (n + 1)

end A037809

/-! ## A037809.P9541264306799598127

`A033265(n+3-A319702(n+2))`
-/

namespace A037809.P9541264306799598127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033265 ((n + 3 : ℤ) - A319702 (n + 2)).toNat

end

end A037809.P9541264306799598127

namespace A037809

/-- `A033265(n+3-A319702(n+2))` -/
def P9541264306799598127.Spec : Prop :=
  ∀ n, P9541264306799598127.a n = A037809 (n + 1)

end A037809

/-! ## A037809.P5168136328448873496

`A000120(n+1)+A107782(n+1)-1`
-/

namespace A037809.P5168136328448873496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (n + 1) + (A107782 (n + 1) - 1)

end

end A037809.P5168136328448873496

namespace A037809

/-- `A000120(n+1)+A107782(n+1)-1` -/
def P5168136328448873496.Spec : Prop :=
  ∀ n, P5168136328448873496.a n = A037809 (n + 1)

end A037809

/-! ## A037809.P13721925315186516306

`A014081(n+1)+A056973(n+1)+A037800(n+1)`
-/

namespace A037809.P13721925315186516306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014081 (n + 1) + (A056973 (n + 1) + A037800 (n + 1))

end

end A037809.P13721925315186516306

namespace A037809

/-- `A014081(n+1)+A056973(n+1)+A037800(n+1)` -/
def P13721925315186516306.Spec : Prop :=
  ∀ n, P13721925315186516306.a n = A037809 (n + 1)

end A037809

/-! ## A037809.P5743394509997109689

`A014081(n+1)+A107782(n+1)+A037800(n+1)`
-/

namespace A037809.P5743394509997109689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014081 (n + 1) + (A107782 (n + 1) + A037800 (n + 1))

end

end A037809.P5743394509997109689

namespace A037809

/-- `A014081(n+1)+A107782(n+1)+A037800(n+1)` -/
def P5743394509997109689.Spec : Prop :=
  ∀ n, P5743394509997109689.a n = A037809 (n + 1)

end A037809

/-! ## A037809.P9699411705225074543

`A033265(Δ[A001318(n)])`
-/

namespace A037809.P9699411705225074543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001318 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033265 (f1 (n + 1) - f1 n).toNat

end

end A037809.P9699411705225074543

namespace A037809

/-- `A033265(Δ[A001318(n)])` -/
def P9699411705225074543.Spec : Prop :=
  ∀ n, P9699411705225074543.a n = A037809 (n + 1)

end A037809

/-! ## A037809.P6435047846994511405

`A092339(n+1)+A037800(n+1)`
-/

namespace A037809.P6435047846994511405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092339 (n + 1) + A037800 (n + 1)

end

end A037809.P6435047846994511405

namespace A037809

/-- `A092339(n+1)+A037800(n+1)` -/
def P6435047846994511405.Spec : Prop :=
  ∀ n, P6435047846994511405.a n = A037809 (n + 1)

end A037809

/-! ## A037809.P5974324142834307497

`A033265(A001318(n+1)-A001318(n))`
-/

namespace A037809.P5974324142834307497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033265 (A001318 (n + 1) - A001318 n).toNat

end

end A037809.P5974324142834307497

namespace A037809

/-- `A033265(A001318(n+1)-A001318(n))` -/
def P5974324142834307497.Spec : Prop :=
  ∀ n, P5974324142834307497.a n = A037809 (n + 1)

end A037809

/-! ## A037809.P17053590638738975938

`A070939(n+1)-(A069010(n+1)+A000035(n))`
-/

namespace A037809.P17053590638738975938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (n + 1) - (A069010 (n + 1) + A000035 n)

end

end A037809.P17053590638738975938

namespace A037809

/-- `A070939(n+1)-(A069010(n+1)+A000035(n))` -/
def P17053590638738975938.Spec : Prop :=
  ∀ n, P17053590638738975938.a n = A037809 (n + 1)

end A037809

/-! ## A037809.P6148175545049161442

`A000523(n+1)-A023416(A209639(n+1))`
-/

namespace A037809.P6148175545049161442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (n + 1) - A023416 (A209639 (n + 1)).toNat

end

end A037809.P6148175545049161442

namespace A037809

/-- `A000523(n+1)-A023416(A209639(n+1))` -/
def P6148175545049161442.Spec : Prop :=
  ∀ n, P6148175545049161442.a n = A037809 (n + 1)

end A037809

/-!
# A037810: Number of i such that d(i) <= d(i-1), where Sum_{i=0..m} d(i)*3^i is the base-3 representation of n.

The programs for A037810, there is no canonical definition to state claims against.
-/

/-! ## A037810.P5397860540638580434

`A062153(n+1)-A037818(n+1)`
-/

namespace A037810.P5397860540638580434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062153 (n + 1) - A037818 (n + 1)

end

end A037810.P5397860540638580434

/-! ## A037810.P11684483492235100905

`A037801(n+1)+A037826(n+1)-A037818(n+1)`
-/

namespace A037810.P11684483492235100905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037801 (n + 1) + (A037826 (n + 1) - A037818 (n + 1))

end

end A037810.P11684483492235100905

/-! ## A037810.P11079736346255135994

`A037811(A023717(n+1))`
-/

namespace A037810.P11079736346255135994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037811 (A023717 (n + 1)).toNat

end

end A037810.P11079736346255135994

/-! ## A037810.P6945625157871384159

`A037811(A023713(n+2))`
-/

namespace A037810.P6945625157871384159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037811 (A023713 (n + 2)).toNat

end

end A037810.P6945625157871384159

/-! ## A037810.P16359600847570802943

`A037811(A006288(n+1))`
-/

namespace A037810.P16359600847570802943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037811 (A006288 (n + 1)).toNat

end

end A037810.P16359600847570802943

/-! ## A037810.P14124669760068000084

`A037811(A023709(n+2))`
-/

namespace A037810.P14124669760068000084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037811 (A023709 (n + 2)).toNat

end

end A037810.P14124669760068000084

/-! ## A037810.P8941946506938565320

`A037812(A037453(n+1))`
-/

namespace A037810.P8941946506938565320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037812 (A037453 (n + 1)).toNat

end

end A037810.P8941946506938565320

/-! ## A037810.P18325324867457617267

`A037813(A037454(n+1))`
-/

namespace A037810.P18325324867457617267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037813 (A037454 (n + 1)).toNat

end

end A037810.P18325324867457617267

/-! ## A037810.P4939637162614089149

`A037814(A037455(n+1))`
-/

namespace A037810.P4939637162614089149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037814 (A037455 (n + 1)).toNat

end

end A037810.P4939637162614089149

/-! ## A037810.P11621053934131858853

`A037815(A037456(n+1))`
-/

namespace A037810.P11621053934131858853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037815 (A037456 (n + 1)).toNat

end

end A037810.P11621053934131858853

/-! ## A037810.P13538690541000618272

`A037816(A037314(n+1))`
-/

namespace A037810.P13538690541000618272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037816 (A037314 (n + 1)).toNat

end

end A037810.P13538690541000618272

/-! ## A037810.P6564449507677249426

`A037816(A319497(n+1))`
-/

namespace A037810.P6564449507677249426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037816 (A319497 (n + 1)).toNat

end

end A037810.P6564449507677249426

/-!
# A037811: Number of i such that d(i) <= d(i-1), where Sum_{i=0..m} d(i)*4^i is the base-4 representation of n.

The programs for A037811, there is no canonical definition to state claims against.
-/

/-! ## A037811.P4862442836816742205

`A102572(n+1)-A037819(n+1)`
-/

namespace A037811.P4862442836816742205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102572 (n + 1) - A037819 (n + 1)

end

end A037811.P4862442836816742205

/-! ## A037811.P7356448682335763612

`A004526(A000523(n+1))-A037819(n+1)`
-/

namespace A037811.P7356448682335763612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A000523 (n + 1)).toNat - A037819 (n + 1)

end

end A037811.P7356448682335763612

/-! ## A037811.P6688040479222461240

`A002265(∑[A069517(n+1)])-A037819(n+1)`
-/

namespace A037811.P6688040479222461240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069517 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (∑ j ∈ Finset.range (n + 1), f1 j).toNat - A037819 (n + 1)

end

end A037811.P6688040479222461240

/-! ## A037811.P4860312860078477935

`A037802(n+1)+A037827(n+1)-A037819(n+1)`
-/

namespace A037811.P4860312860078477935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037802 (n + 1) + (A037827 (n + 1) - A037819 (n + 1))

end

end A037811.P4860312860078477935

/-! ## A037811.P2314629451026112061

`A037812(A037459(n+1))`
-/

namespace A037811.P2314629451026112061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037812 (A037459 (n + 1)).toNat

end

end A037811.P2314629451026112061

/-! ## A037811.P10981406743858242946

`A037812(A020654(n+2))`
-/

namespace A037811.P10981406743858242946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037812 (A020654 (n + 2)).toNat

end

end A037811.P10981406743858242946

/-! ## A037811.P10782346248628363267

`A102572(n+1)-A037820(A037459(n+1))`
-/

namespace A037811.P10782346248628363267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102572 (n + 1) - A037820 (A037459 (n + 1)).toNat

end

end A037811.P10782346248628363267

/-! ## A037811.P17212207946885086627

`A037812(A023733(n+2))`
-/

namespace A037811.P17212207946885086627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037812 (A023733 (n + 2)).toNat

end

end A037811.P17212207946885086627

/-! ## A037811.P10134332489777806814

`A037812(A023729(n+2))`
-/

namespace A037811.P10134332489777806814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037812 (A023729 (n + 2)).toNat

end

end A037811.P10134332489777806814

/-! ## A037811.P14683866977653043019

`A037812(A023725(n+2))`
-/

namespace A037811.P14683866977653043019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037812 (A023725 (n + 2)).toNat

end

end A037811.P14683866977653043019

/-! ## A037811.P14365451976630734723

`A037813(A037460(n+1))`
-/

namespace A037811.P14365451976630734723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037813 (A037460 (n + 1)).toNat

end

end A037811.P14365451976630734723

/-! ## A037811.P18376743685815775842

`A037814(A037461(n+1))`
-/

namespace A037811.P18376743685815775842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037814 (A037461 (n + 1)).toNat

end

end A037811.P18376743685815775842

/-! ## A037811.P4519950717368992221

`A037815(A037462(n+1))`
-/

namespace A037811.P4519950717368992221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037815 (A037462 (n + 1)).toNat

end

end A037811.P4519950717368992221

/-! ## A037811.P16711157670114835498

`A037816(A037463(n+1))`
-/

namespace A037811.P16711157670114835498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037816 (A037463 (n + 1)).toNat

end

end A037811.P16711157670114835498

/-! ## A037811.P12227608078655363968

`A037816(A005836(n+2))`
-/

namespace A037811.P12227608078655363968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037816 (A005836 (n + 2)).toNat

end

end A037811.P12227608078655363968

/-! ## A037811.P11489982598405777171

`A037816(A186776(n+2))`
-/

namespace A037811.P11489982598405777171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037816 (A186776 (n + 2)).toNat

end

end A037811.P11489982598405777171

/-! ## A037811.P9222187194579676983

`A037816(A005823(n+2)/2)`
-/

namespace A037811.P9222187194579676983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037816 (SequenceMachineLib.roundAway ((A005823 (n + 2) : ℚ) / 2)).toNat

end

end A037811.P9222187194579676983

/-! ## A037811.P9877001662452864171

`A037817(A007090(n+1))`
-/

namespace A037811.P9877001662452864171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037817 (A007090 (n + 1)).toNat

end

end A037811.P9877001662452864171

/-! ## A037811.P11774860370819967269

`A037817(A007284(n+1))`
-/

namespace A037811.P11774860370819967269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037817 (A007284 (n + 1)).toNat

end

end A037811.P11774860370819967269

/-! ## A037811.P16386337398811782736

`A037817(A046030(n+2))`
-/

namespace A037811.P16386337398811782736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037817 (A046030 (n + 2)).toNat

end

end A037811.P16386337398811782736

/-!
# A037812: Number of i such that d(i) <= d(i-1), where Sum_{i=0..m} d(i)*5^i is the base-5 representation of n.

The programs for A037812, there is no canonical definition to state claims against.
-/

/-! ## A037812.P3666005170856483709

`A037803(n+1)+A037828(n+1)-A037820(n+1)`
-/

namespace A037812.P3666005170856483709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037803 (n + 1) + (A037828 (n + 1) - A037820 (n + 1))

end

end A037812.P3666005170856483709

/-! ## A037812.P3505140928598373195

`A037813(A037465(n+1))`
-/

namespace A037812.P3505140928598373195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037813 (A037465 (n + 1)).toNat

end

end A037812.P3505140928598373195

/-! ## A037812.P1896345756566385235

`A037814(A037466(n+1))`
-/

namespace A037812.P1896345756566385235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037814 (A037466 (n + 1)).toNat

end

end A037812.P1896345756566385235

/-! ## A037812.P3712418084776130402

`A037815(A037467(n+1))`
-/

namespace A037812.P3712418084776130402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037815 (A037467 (n + 1)).toNat

end

end A037812.P3712418084776130402

/-! ## A037812.P7862779322568624747

`A037816(A037468(n+1))`
-/

namespace A037812.P7862779322568624747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037816 (A037468 (n + 1)).toNat

end

end A037812.P7862779322568624747

/-! ## A037812.P12694836186088619706

`A037817(A007091(n+1))`
-/

namespace A037812.P12694836186088619706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037817 (A007091 (n + 1)).toNat

end

end A037812.P12694836186088619706

/-! ## A037812.P7919574403512630502

`A037817(A054047(n+1))`
-/

namespace A037812.P7919574403512630502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037817 (A054047 (n + 1)).toNat

end

end A037812.P7919574403512630502

/-! ## A037812.P6530288999492103178

`A037817(A080228(n+2))`
-/

namespace A037812.P6530288999492103178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037817 (A080228 (n + 2)).toNat

end

end A037812.P6530288999492103178

/-! ## A037812.P5692435073255850803

`A037817(A001744(n+2))`
-/

namespace A037812.P5692435073255850803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037817 (A001744 (n + 2)).toNat

end

end A037812.P5692435073255850803

/-! ## A037812.P4007499358743516274

`A037817(A014263(n+2))`
-/

namespace A037812.P4007499358743516274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037817 (A014263 (n + 2)).toNat

end

end A037812.P4007499358743516274

/-! ## A037812.P16079374580230870703

`A037817(A072960(n+2))`
-/

namespace A037812.P16079374580230870703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037817 (A072960 (n + 2)).toNat

end

end A037812.P16079374580230870703

/-!
# A037813: Number of i such that d(i) <= d(i-1), where Sum_{i=0..m} d(i)*6^i is the base-6 representation of n.

The programs for A037813, there is no canonical definition to state claims against.
-/

/-! ## A037813.P3599581893244010710

`A037804(n+1)+A037829(n+1)-A037821(n+1)`
-/

namespace A037813.P3599581893244010710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037804 (n + 1) + (A037829 (n + 1) - A037821 (n + 1))

end

end A037813.P3599581893244010710

/-! ## A037813.P14191768583647895983

`A037814(A020657(n+2))`
-/

namespace A037813.P14191768583647895983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037814 (A020657 (n + 2)).toNat

end

end A037813.P14191768583647895983

/-! ## A037813.P547855929394043340

`A037814(A249102(n+2))`
-/

namespace A037813.P547855929394043340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037814 (A249102 (n + 2)).toNat

end

end A037813.P547855929394043340

/-! ## A037813.P4051135479276725994

`A037815(A037471(n+1))`
-/

namespace A037813.P4051135479276725994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037815 (A037471 (n + 1)).toNat

end

end A037813.P4051135479276725994

/-! ## A037813.P333423778089691735

`A037816(A037472(n+1))`
-/

namespace A037813.P333423778089691735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037816 (A037472 (n + 1)).toNat

end

end A037813.P333423778089691735

/-! ## A037813.P10388360652930344424

`A037817(A007092(n+1))`
-/

namespace A037813.P10388360652930344424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037817 (A007092 (n + 1)).toNat

end

end A037813.P10388360652930344424

/-! ## A037813.P5188126788082489194

`A037817(A084984(n+2))`
-/

namespace A037813.P5188126788082489194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037817 (A084984 (n + 2)).toNat

end

end A037813.P5188126788082489194

/-! ## A037813.P7259221604004671705

`A037817(A202267(n+2))`
-/

namespace A037813.P7259221604004671705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037817 (A202267 (n + 2)).toNat

end

end A037813.P7259221604004671705

/-! ## A037813.P2450596766704983935

`A037817(A276138(n+2))`
-/

namespace A037813.P2450596766704983935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037817 (A276138 (n + 2)).toNat

end

end A037813.P2450596766704983935

/-! ## A037813.P2450653633656653864

`A037817(A137386(n+2))`
-/

namespace A037813.P2450653633656653864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037817 (A137386 (n + 2)).toNat

end

end A037813.P2450653633656653864

/-!
# A037814: Number of i such that d(i) <= d(i-1), where Sum_{i=0..m} d(i)*7^i is the base-7 representation of n.

The programs for A037814, there is no canonical definition to state claims against.
-/

/-! ## A037814.P4496730395852238248

`A037805(n+1)+A037830(n+1)-A037822(n+1)`
-/

namespace A037814.P4496730395852238248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037805 (n + 1) + (A037830 (n + 1) - A037822 (n + 1))

end

end A037814.P4496730395852238248

/-! ## A037814.P3414733515707124249

`A037815(A037474(n+1))`
-/

namespace A037814.P3414733515707124249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037815 (A037474 (n + 1)).toNat

end

end A037814.P3414733515707124249

/-! ## A037814.P18324570019660433853

`A037816(A037475(n+1))`
-/

namespace A037814.P18324570019660433853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037816 (A037475 (n + 1)).toNat

end

end A037814.P18324570019660433853

/-! ## A037814.P7552273055377878848

`A037817(A007093(n+1))`
-/

namespace A037814.P7552273055377878848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037817 (A007093 (n + 1)).toNat

end

end A037814.P7552273055377878848

/-! ## A037814.P8465798349124846305

`A037817(A168501(n+2))`
-/

namespace A037814.P8465798349124846305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037817 (A168501 (n + 2)).toNat

end

end A037814.P8465798349124846305

/-! ## A037814.P6760993912922110078

`A037817(A307913(n+2))`
-/

namespace A037814.P6760993912922110078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037817 (A307913 (n + 2)).toNat

end

end A037814.P6760993912922110078

/-! ## A037814.P11459972699823193629

`A037817(A028374(n+2))`
-/

namespace A037814.P11459972699823193629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037817 (A028374 (n + 2)).toNat

end

end A037814.P11459972699823193629

/-!
# A037815: Number of i such that d(i) <= d(i-1), where Sum_{i=0..m} d(i)*8^i is the base-8 representation of n.

The programs for A037815, there is no canonical definition to state claims against.
-/

/-! ## A037815.P16282979026090364066

`A002264(A000523(n+1))-A037823(n+1)`
-/

namespace A037815.P16282979026090364066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A000523 (n + 1)).toNat - A037823 (n + 1)

end

end A037815.P16282979026090364066

/-! ## A037815.P3514106347313309308

`A037806(n+1)+A037831(n+1)-A037823(n+1)`
-/

namespace A037815.P3514106347313309308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037806 (n + 1) + (A037831 (n + 1) - A037823 (n + 1))

end

end A037815.P3514106347313309308

/-! ## A037815.P7564907984332358982

`A037816(A037477(n+1))`
-/

namespace A037815.P7564907984332358982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037816 (A037477 (n + 1)).toNat

end

end A037815.P7564907984332358982

/-! ## A037815.P7863433595819454600

`A037817(A007094(n+1))`
-/

namespace A037815.P7863433595819454600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037817 (A007094 (n + 1)).toNat

end

end A037815.P7863433595819454600

/-! ## A037815.P8661568650658151947

`A037817(A008541(n+2))`
-/

namespace A037815.P8661568650658151947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037817 (A008541 (n + 2)).toNat

end

end A037815.P8661568650658151947

/-! ## A037815.P1672927416953843695

`A037817(A008539(n+2))`
-/

namespace A037815.P1672927416953843695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037817 (A008539 (n + 2)).toNat

end

end A037815.P1672927416953843695

/-! ## A037815.P17076730890321126559

`A076489(A095289(n+2))`
-/

namespace A037815.P17076730890321126559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076489 (A095289 (n + 2)).toNat

end

end A037815.P17076730890321126559

/-! ## A037815.P7586152805624578828

`A037817(A242491(n+1))`
-/

namespace A037815.P7586152805624578828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037817 (A242491 (n + 1)).toNat

end

end A037815.P7586152805624578828

/-! ## A037815.P10199258205157990456

`A076489(A242491(n+1))-A037823(n+1)`
-/

namespace A037815.P10199258205157990456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076489 (A242491 (n + 1)).toNat - A037823 (n + 1)

end

end A037815.P10199258205157990456

/-! ## A037815.P2951920138907974600

`A037817(A072957(n+1))`
-/

namespace A037815.P2951920138907974600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037817 (A072957 (n + 1)).toNat

end

end A037815.P2951920138907974600

/-!
# A037816: Number of i such that d(i) <= d(i-1), where Sum_{i=0..m} d(i)*9^i is the base-9 representation of n.

The programs for A037816, there is no canonical definition to state claims against.
-/

/-! ## A037816.P11748698388083958319

`A037817(A007095(n+1))`
-/

namespace A037816.P11748698388083958319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037817 (A007095 (n + 1)).toNat

end

end A037816.P11748698388083958319

/-! ## A037816.P2019567058802603041

`A037817(A037479(n+1))`
-/

namespace A037816.P2019567058802603041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037817 (A037479 (n + 1)).toNat

end

end A037816.P2019567058802603041

/-! ## A037816.P2860933424463563387

`A037817(A052404(n+2))`
-/

namespace A037816.P2860933424463563387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037817 (A052404 (n + 2)).toNat

end

end A037816.P2860933424463563387

/-! ## A037816.P3523088856530498083

`A037817(A052405(n+2))`
-/

namespace A037816.P3523088856530498083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037817 (A052405 (n + 2)).toNat

end

end A037816.P3523088856530498083

/-! ## A037816.P18293855510728253352

`A037817(A052406(n+2))`
-/

namespace A037816.P18293855510728253352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037817 (A052406 (n + 2)).toNat

end

end A037816.P18293855510728253352

/-! ## A037816.P849801857636160930

`A037817(A052413(n+2))`
-/

namespace A037816.P849801857636160930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037817 (A052413 (n + 2)).toNat

end

end A037816.P849801857636160930

/-! ## A037816.P3990859908417372310

`A037817(A052414(n+2))`
-/

namespace A037816.P3990859908417372310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037817 (A052414 (n + 2)).toNat

end

end A037816.P3990859908417372310

/-! ## A037816.P16072990998734456392

`A037817(A052419(n+2))`
-/

namespace A037816.P16072990998734456392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037817 (A052419 (n + 2)).toNat

end

end A037816.P16072990998734456392

/-! ## A037816.P9979501818938470949

`A037817(A052421(n+2))`
-/

namespace A037816.P9979501818938470949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037817 (A052421 (n + 2)).toNat

end

end A037816.P9979501818938470949

/-! ## A037816.P9275967995345979415

`A037817(A052383(n+2))`
-/

namespace A037816.P9275967995345979415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037817 (A052383 (n + 2)).toNat

end

end A037816.P9275967995345979415

/-!
# A037817: Number of i such that d(i) <= d(i-1), where Sum_{i=0..m} d(i)*10^i is the base-10 representation of n.

The programs for A037817, there is no canonical definition to state claims against.
-/

/-! ## A037817.P9551099346694307020

`dr(∑{digits}[n+1, 10^#])-1-A037825(n+1)`
-/

namespace A037817.P9551099346694307020
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.digitalRoot ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => 10 ^ x).sum : ℕ) : ℤ) : ℤ) - 1 - A037825 (n + 1)

end

end A037817.P9551099346694307020

/-! ## A037817.P12129740678847338886

`A004216(n+1)-A037825(n+1)`
-/

namespace A037817.P12129740678847338886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004216 (n + 1) - A037825 (n + 1)

end

end A037817.P12129740678847338886

/-! ## A037817.P11858707752863106492

`A055642(n+1)-(A037825(n+1)+1)`
-/

namespace A037817.P11858707752863106492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (n + 1) - (A037825 (n + 1) + 1)

end

end A037817.P11858707752863106492

/-! ## A037817.P2481499893045631629

`∑{digits}[n+1, A036370(#)]-1-A037825(n+1)`
-/

namespace A037817.P2481499893045631629
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A036370 x).sum - 1 - A037825 (n + 1)

end

end A037817.P2481499893045631629

/-! ## A037817.P14387761683412673804

`∑{digits}[n+1, A053632(#)]-1-A037825(n+1)`
-/

namespace A037817.P14387761683412673804
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A053632 x).sum - 1 - A037825 (n + 1)

end

end A037817.P14387761683412673804

/-! ## A037817.P3567930623980479785

`A037833(n+1)+A037808(n+1)-A037825(n+1)`
-/

namespace A037817.P3567930623980479785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037833 (n + 1) + A037808 (n + 1) - A037825 (n + 1)

end

end A037817.P3567930623980479785

/-! ## A037817.P8280328428178808247

`A004218(n+2)-1-A037825(n+1)`
-/

namespace A037817.P8280328428178808247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004218 (n + 2) - 1 - A037825 (n + 1)

end

end A037817.P8280328428178808247

/-! ## A037817.P795831192453122464

`A004218(A059995(n+11))-A037825(n+1)`
-/

namespace A037817.P795831192453122464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004218 (A059995 (n + 11)).toNat - A037825 (n + 1)

end

end A037817.P795831192453122464

/-! ## A037817.P14652301313466767416

`A037833(A093704(n+1))-A037825(n+1)`
-/

namespace A037817.P14652301313466767416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037833 (A093704 (n + 1)).toNat - A037825 (n + 1)

end

end A037817.P14652301313466767416

/-! ## A037817.P14524085864275103164

`A004216(n+1)-A057427(A037860(n+1)^A040743(n))`
-/

namespace A037817.P14524085864275103164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004216 (n + 1) - A057427 (SequenceMachineLib.roundAway ((A037860 (n + 1) : ℚ) ^ (A040743 n : ℤ))).toNat

end

end A037817.P14524085864275103164

/-! ## A037817.P3670478958810801275

`A004216(n+1)-A123895(A037860(n+1))^A200381(A310392(n))`
-/

namespace A037817.P3670478958810801275
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004216 (n + 1) : ℚ) - (A123895 (A037860 (n + 1)).toNat : ℚ) ^ (A200381 (A310392 n).toNat : ℤ)

end

end A037817.P3670478958810801275

/-! ## A037817.P9703260284789256263

`A004216(n+1)-ceil(A037860(n+1)/A346594(n+1))`
-/

namespace A037817.P9703260284789256263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004216 (n + 1) - ⌈(A037860 (n + 1) : ℚ) / (A346594 (n + 1) : ℚ)⌉

end

end A037817.P9703260284789256263

/-! ## A037817.P6028156426421695307

`A004216(n+1)-(A123895(A037860(n+1))+A000007(A014574(n+1)))`
-/

namespace A037817.P6028156426421695307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004216 (n + 1) - (A123895 (A037860 (n + 1)).toNat + A000007 (A014574 (n + 1)).toNat)

end

end A037817.P6028156426421695307

/-! ## A037817.P15189129126128995614

`A004216(n+1)-A123895(A037860(n+1))^A259153(∑[n+2])`
-/

namespace A037817.P15189129126128995614
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004216 (n + 1) : ℚ) - (A123895 (A037860 (n + 1)).toNat : ℚ) ^ (A259153 (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ)

end

end A037817.P15189129126128995614

/-! ## A037817.P10696461317542909794

`A004216(n+1)-A123895(A037860(n+1))^A000124(A028437(n+1))`
-/

namespace A037817.P10696461317542909794
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004216 (n + 1) : ℚ) - (A123895 (A037860 (n + 1)).toNat : ℚ) ^ (A000124 (A028437 (n + 1)).toNat : ℤ)

end

end A037817.P10696461317542909794

/-! ## A037817.P3639485529177972191

`A004216(n+1)-A123895(A037860(n+1))^A301301(A008589(2*n+1))`
-/

namespace A037817.P3639485529177972191
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004216 (n + 1) : ℚ) - (A123895 (A037860 (n + 1)).toNat : ℚ) ^ (A301301 (A008589 (2 * n + 1)).toNat : ℤ)

end

end A037817.P3639485529177972191

/-! ## A037817.P16459976967730439800

`A004216(n+1)-A123895(A037860(n+1))^A301301(A268476(n+1))`
-/

namespace A037817.P16459976967730439800
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004216 (n + 1) : ℚ) - (A123895 (A037860 (n + 1)).toNat : ℚ) ^ (A301301 (A268476 (n + 1)).toNat : ℤ)

end

end A037817.P16459976967730439800

/-! ## A037817.P16235342182570966250

`A055642(n+1)-A095827(n+2)`
-/

namespace A037817.P16235342182570966250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (n + 1) - A095827 (n + 2)

end

end A037817.P16235342182570966250

/-! ## A037817.P1197015549126763930

`A007953(n+1)-(A321999(n+1)+A095827(n+2))`
-/

namespace A037817.P1197015549126763930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (n + 1) - (A321999 (n + 1) + A095827 (n + 2))

end

end A037817.P1197015549126763930

/-!
# A037818: Number of i such that d(i) > d(i-1), where Sum_{i=0..m} d(i)*3^i is the base-3 representation of n.

The programs for A037818, there is no canonical definition to state claims against.
-/

/-! ## A037818.P14434505313065989758

`A062153(n+1)-A037810(n+1)`
-/

namespace A037818.P14434505313065989758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062153 (n + 1) - A037810 (n + 1)

end

end A037818.P14434505313065989758

/-! ## A037818.P9299344976062695621

`A037801(n+1)+A037826(n+1)-A037810(n+1)`
-/

namespace A037818.P9299344976062695621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037801 (n + 1) + (A037826 (n + 1) - A037810 (n + 1))

end

end A037818.P9299344976062695621

/-! ## A037818.P13392181857381311138

`A037819(A023717(n+1))`
-/

namespace A037818.P13392181857381311138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037819 (A023717 (n + 1)).toNat

end

end A037818.P13392181857381311138

/-! ## A037818.P2577318922350782430

`A037819(A023713(n+2))`
-/

namespace A037818.P2577318922350782430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037819 (A023713 (n + 2)).toNat

end

end A037818.P2577318922350782430

/-! ## A037818.P15000657508643024990

`A037819(A006288(n+1))`
-/

namespace A037818.P15000657508643024990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037819 (A006288 (n + 1)).toNat

end

end A037818.P15000657508643024990

/-! ## A037818.P4119938452779754648

`A037819(A023709(n+2))`
-/

namespace A037818.P4119938452779754648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037819 (A023709 (n + 2)).toNat

end

end A037818.P4119938452779754648

/-! ## A037818.P17156868137951393227

`A037819(record[A006015(n+1)])`
-/

namespace A037818.P17156868137951393227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006015 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037819 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A037818.P17156868137951393227

/-! ## A037818.P7405148479988624460

`A037819(record[A057300(n+1)])`
-/

namespace A037818.P7405148479988624460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057300 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037819 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A037818.P7405148479988624460

/-! ## A037818.P4960869614892771391

`A037820(A037453(n+1))`
-/

namespace A037818.P4960869614892771391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037820 (A037453 (n + 1)).toNat

end

end A037818.P4960869614892771391

/-! ## A037818.P15180628735316502670

`A037821(A037454(n+1))`
-/

namespace A037818.P15180628735316502670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037821 (A037454 (n + 1)).toNat

end

end A037818.P15180628735316502670

/-! ## A037818.P16107447436020147677

`A037822(A037455(n+1))`
-/

namespace A037818.P16107447436020147677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037822 (A037455 (n + 1)).toNat

end

end A037818.P16107447436020147677

/-! ## A037818.P3815361682183392658

`A037823(A037456(n+1))`
-/

namespace A037818.P3815361682183392658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037823 (A037456 (n + 1)).toNat

end

end A037818.P3815361682183392658

/-! ## A037818.P5965480969744861985

`A037824(A037314(n+1))`
-/

namespace A037818.P5965480969744861985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037824 (A037314 (n + 1)).toNat

end

end A037818.P5965480969744861985

/-! ## A037818.P13476940538482206033

`A037824(A319497(n+1))`
-/

namespace A037818.P13476940538482206033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037824 (A319497 (n + 1)).toNat

end

end A037818.P13476940538482206033

/-!
# A037819: Number of i such that d(i) > d(i-1), where Sum_{i=0..m} d(i)*4^i is the base-4 representation of n.

The programs for A037819, there is no canonical definition to state claims against.
-/

/-! ## A037819.P2097160426352109711

`A102572(n+1)-A037811(n+1)`
-/

namespace A037819.P2097160426352109711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102572 (n + 1) - A037811 (n + 1)

end

end A037819.P2097160426352109711

/-! ## A037819.P11675413059445523359

`A004526(A000523(n+1))-A037811(n+1)`
-/

namespace A037819.P11675413059445523359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A000523 (n + 1)).toNat - A037811 (n + 1)

end

end A037819.P11675413059445523359

/-! ## A037819.P17296447766381356126

`A037802(n+1)+A037827(n+1)-A037811(n+1)`
-/

namespace A037819.P17296447766381356126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037802 (n + 1) + (A037827 (n + 1) - A037811 (n + 1))

end

end A037819.P17296447766381356126

/-! ## A037819.P12776298812478532366

`A037802(A010078(n+2))`
-/

namespace A037819.P12776298812478532366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037802 (A010078 (n + 2)).toNat

end

end A037819.P12776298812478532366

/-! ## A037819.P17478734273481646200

`A037820(A037459(n+1))`
-/

namespace A037819.P17478734273481646200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037820 (A037459 (n + 1)).toNat

end

end A037819.P17478734273481646200

/-! ## A037819.P7259800207671172761

`A037820(A020654(n+2))`
-/

namespace A037819.P7259800207671172761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037820 (A020654 (n + 2)).toNat

end

end A037819.P7259800207671172761

/-! ## A037819.P263245661106212506

`A037820(A023733(n+2))`
-/

namespace A037819.P263245661106212506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037820 (A023733 (n + 2)).toNat

end

end A037819.P263245661106212506

/-! ## A037819.P6152410123212781662

`A037820(A023729(n+2))`
-/

namespace A037819.P6152410123212781662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037820 (A023729 (n + 2)).toNat

end

end A037819.P6152410123212781662

/-! ## A037819.P9751839025872463762

`A037820(A023725(n+2))`
-/

namespace A037819.P9751839025872463762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037820 (A023725 (n + 2)).toNat

end

end A037819.P9751839025872463762

/-! ## A037819.P6896164670852188923

`A037821(A037460(n+1))`
-/

namespace A037819.P6896164670852188923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037821 (A037460 (n + 1)).toNat

end

end A037819.P6896164670852188923

/-! ## A037819.P18428135198040073457

`A102572(n+1)-A037813(A037460(n+1))`
-/

namespace A037819.P18428135198040073457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102572 (n + 1) - A037813 (A037460 (n + 1)).toNat

end

end A037819.P18428135198040073457

/-! ## A037819.P11935788244894151345

`A037822(A037461(n+1))`
-/

namespace A037819.P11935788244894151345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037822 (A037461 (n + 1)).toNat

end

end A037819.P11935788244894151345

/-! ## A037819.P4637077999341261300

`A037823(A037462(n+1))`
-/

namespace A037819.P4637077999341261300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037823 (A037462 (n + 1)).toNat

end

end A037819.P4637077999341261300

/-! ## A037819.P10645659794076888827

`A037824(A037463(n+1))`
-/

namespace A037819.P10645659794076888827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037824 (A037463 (n + 1)).toNat

end

end A037819.P10645659794076888827

/-! ## A037819.P12999056385511205128

`A037824(A005836(n+2))`
-/

namespace A037819.P12999056385511205128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037824 (A005836 (n + 2)).toNat

end

end A037819.P12999056385511205128

/-! ## A037819.P780131359828231958

`A037824(A005823(n+2)/2)`
-/

namespace A037819.P780131359828231958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037824 (SequenceMachineLib.roundAway ((A005823 (n + 2) : ℚ) / 2)).toNat

end

end A037819.P780131359828231958

/-! ## A037819.P17250500179286065145

`A037825(A007090(n+1))`
-/

namespace A037819.P17250500179286065145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037825 (A007090 (n + 1)).toNat

end

end A037819.P17250500179286065145

/-! ## A037819.P15628380613947268774

`A037825(A007284(n+1))`
-/

namespace A037819.P15628380613947268774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037825 (A007284 (n + 1)).toNat

end

end A037819.P15628380613947268774

/-! ## A037819.P3170636587918068369

`A037825(A046030(n+2))`
-/

namespace A037819.P3170636587918068369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037825 (A046030 (n + 2)).toNat

end

end A037819.P3170636587918068369

/-! ## A037819.P5683056422945558685

`A037825(A001743(n+2))`
-/

namespace A037819.P5683056422945558685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037825 (A001743 (n + 2)).toNat

end

end A037819.P5683056422945558685

/-!
# A037820: Number of i such that d(i) > d(i-1), where Sum_{i=0..m} d(i)*5^i is the base-5 representation of n.

The programs for A037820, there is no canonical definition to state claims against.
-/

/-! ## A037820.P15906403311981662474

`A037803(n+1)+A037828(n+1)-A037812(n+1)`
-/

namespace A037820.P15906403311981662474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037803 (n + 1) + (A037828 (n + 1) - A037812 (n + 1))

end

end A037820.P15906403311981662474

/-! ## A037820.P9227410470031970620

`A037821(A037465(n+1))`
-/

namespace A037820.P9227410470031970620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037821 (A037465 (n + 1)).toNat

end

end A037820.P9227410470031970620

/-! ## A037820.P4679964053605101356

`A037822(A037466(n+1))`
-/

namespace A037820.P4679964053605101356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037822 (A037466 (n + 1)).toNat

end

end A037820.P4679964053605101356

/-! ## A037820.P2336700399695182942

`A037823(A037467(n+1))`
-/

namespace A037820.P2336700399695182942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037823 (A037467 (n + 1)).toNat

end

end A037820.P2336700399695182942

/-! ## A037820.P8632103690231772798

`A037824(A037468(n+1))`
-/

namespace A037820.P8632103690231772798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037824 (A037468 (n + 1)).toNat

end

end A037820.P8632103690231772798

/-! ## A037820.P11426070051795362707

`A037825(A007091(n+1))`
-/

namespace A037820.P11426070051795362707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037825 (A007091 (n + 1)).toNat

end

end A037820.P11426070051795362707

/-! ## A037820.P15396995472753378296

`A037825(A054047(n+1))`
-/

namespace A037820.P15396995472753378296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037825 (A054047 (n + 1)).toNat

end

end A037820.P15396995472753378296

/-! ## A037820.P5694951513560320712

`A037825(A080228(n+2))`
-/

namespace A037820.P5694951513560320712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037825 (A080228 (n + 2)).toNat

end

end A037820.P5694951513560320712

/-! ## A037820.P10171122275976734676

`A037825(A001744(n+2))`
-/

namespace A037820.P10171122275976734676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037825 (A001744 (n + 2)).toNat

end

end A037820.P10171122275976734676

/-! ## A037820.P2368613552468545584

`A037825(A014263(n+2))`
-/

namespace A037820.P2368613552468545584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037825 (A014263 (n + 2)).toNat

end

end A037820.P2368613552468545584

/-! ## A037820.P540597984432048901

`A037825(A072960(n+2))`
-/

namespace A037820.P540597984432048901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037825 (A072960 (n + 2)).toNat

end

end A037820.P540597984432048901

/-!
# A037821: Number of i such that d(i) > d(i-1), where Sum_{i=0..m} d(i)*6^i is the base-6 representation of n.

The programs for A037821, there is no canonical definition to state claims against.
-/

/-! ## A037821.P6850256929785915082

`A037804(n+1)+A037829(n+1)-A037813(n+1)`
-/

namespace A037821.P6850256929785915082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037804 (n + 1) + (A037829 (n + 1) - A037813 (n + 1))

end

end A037821.P6850256929785915082

/-! ## A037821.P11276697935294540850

`A037822(A020657(n+2))`
-/

namespace A037821.P11276697935294540850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037822 (A020657 (n + 2)).toNat

end

end A037821.P11276697935294540850

/-! ## A037821.P7126100435392655743

`A037822(A249102(n+2))`
-/

namespace A037821.P7126100435392655743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037822 (A249102 (n + 2)).toNat

end

end A037821.P7126100435392655743

/-! ## A037821.P2508126610797477764

`A037823(A037471(n+1))`
-/

namespace A037821.P2508126610797477764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037823 (A037471 (n + 1)).toNat

end

end A037821.P2508126610797477764

/-! ## A037821.P16873793609909860471

`A037824(A037472(n+1))`
-/

namespace A037821.P16873793609909860471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037824 (A037472 (n + 1)).toNat

end

end A037821.P16873793609909860471

/-! ## A037821.P9510219552287669486

`A037825(A007092(n+1))`
-/

namespace A037821.P9510219552287669486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037825 (A007092 (n + 1)).toNat

end

end A037821.P9510219552287669486

/-! ## A037821.P8850530007906498418

`A037825(A084984(n+2))`
-/

namespace A037821.P8850530007906498418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037825 (A084984 (n + 2)).toNat

end

end A037821.P8850530007906498418

/-! ## A037821.P15435260104657494209

`A037825(A202267(n+2))`
-/

namespace A037821.P15435260104657494209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037825 (A202267 (n + 2)).toNat

end

end A037821.P15435260104657494209

/-! ## A037821.P10944772206474151169

`A037825(A276138(n+2))`
-/

namespace A037821.P10944772206474151169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037825 (A276138 (n + 2)).toNat

end

end A037821.P10944772206474151169

/-! ## A037821.P15257553372091230808

`A037825(A137386(n+2))`
-/

namespace A037821.P15257553372091230808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037825 (A137386 (n + 2)).toNat

end

end A037821.P15257553372091230808

/-!
# A037822: Number of i such that d(i) > d(i-1), where Sum_{i=0..m} d(i)*7^i is the base-7 representation of n.

The programs for A037822, there is no canonical definition to state claims against.
-/

/-! ## A037822.P16511503623948766388

`A037823(A037474(n+1))`
-/

namespace A037822.P16511503623948766388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037823 (A037474 (n + 1)).toNat

end

end A037822.P16511503623948766388

/-! ## A037822.P6543531547871930683

`A037824(A037475(n+1))`
-/

namespace A037822.P6543531547871930683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037824 (A037475 (n + 1)).toNat

end

end A037822.P6543531547871930683

/-! ## A037822.P15774243599737586936

`A037825(A007093(n+1))`
-/

namespace A037822.P15774243599737586936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037825 (A007093 (n + 1)).toNat

end

end A037822.P15774243599737586936

/-! ## A037822.P16469306300732703416

`A037825(A168501(n+2))`
-/

namespace A037822.P16469306300732703416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037825 (A168501 (n + 2)).toNat

end

end A037822.P16469306300732703416

/-! ## A037822.P4563389241625057128

`A037825(A028374(n+2))`
-/

namespace A037822.P4563389241625057128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037825 (A028374 (n + 2)).toNat

end

end A037822.P4563389241625057128

/-! ## A037822.P18027684414606140538

`A037825(record[A222251(n+1)])`
-/

namespace A037822.P18027684414606140538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222251 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037825 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A037822.P18027684414606140538

/-! ## A037822.P15195063133995351844

`ceil(A037857(n+1)/A276450(n))`
-/

namespace A037822.P15195063133995351844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A037857 (n + 1) : ℚ) / (A276450 n : ℚ)⌉

end

end A037822.P15195063133995351844

/-! ## A037822.P11403968597179186724

`ceil(A037857(n+1)/(2*A223133(n)))`
-/

namespace A037822.P11403968597179186724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A037857 (n + 1) : ℚ) / (2 * A223133 n : ℚ)⌉

end

end A037822.P11403968597179186724

/-! ## A037822.P17420664454014264569

`ceil(A037857(n+1)/(A117656((n+1)²)+n))`
-/

namespace A037822.P17420664454014264569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A037857 (n + 1) : ℚ) / (A117656 ((n + 1) ^ 2) + (n : ℤ) : ℚ)⌉

end

end A037822.P17420664454014264569

/-!
# A037823: Number of i such that d(i) > d(i-1), where Sum_{i=0..m} d(i)*8^i is the base-8 representation of n.

The programs for A037823, there is no canonical definition to state claims against.
-/

/-! ## A037823.P16395273027607955859

`A002264(A000523(n+1))-A037815(n+1)`
-/

namespace A037823.P16395273027607955859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A000523 (n + 1)).toNat - A037815 (n + 1)

end

end A037823.P16395273027607955859

/-! ## A037823.P17737499560887939575

`A037824(A037477(n+1))`
-/

namespace A037823.P17737499560887939575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037824 (A037477 (n + 1)).toNat

end

end A037823.P17737499560887939575

/-! ## A037823.P2872555011097768464

`A037825(A007094(n+1))`
-/

namespace A037823.P2872555011097768464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037825 (A007094 (n + 1)).toNat

end

end A037823.P2872555011097768464

/-! ## A037823.P3950131413116198189

`A037825(A008541(n+2))`
-/

namespace A037823.P3950131413116198189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037825 (A008541 (n + 2)).toNat

end

end A037823.P3950131413116198189

/-! ## A037823.P15257134649424651612

`A037825(A008539(n+2))`
-/

namespace A037823.P15257134649424651612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037825 (A008539 (n + 2)).toNat

end

end A037823.P15257134649424651612

/-! ## A037823.P13351128159062356828

`ceil(A037858(n+1)/A223227(n+1))`
-/

namespace A037823.P13351128159062356828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A037858 (n + 1) : ℚ) / (A223227 (n + 1) : ℚ)⌉

end

end A037823.P13351128159062356828

/-! ## A037823.P7446832565080505464

`A057427(A037858(n+1)*A043319(n+1))`
-/

namespace A037823.P7446832565080505464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A037858 (n + 1) * A043319 (n + 1)).toNat

end

end A037823.P7446832565080505464

/-! ## A037823.P11281427866237720370

`A014306((n+1)²*A037858(n+1))`
-/

namespace A037823.P11281427866237720370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014306 (((n + 1) ^ 2 : ℤ) * A037858 (n + 1)).toNat

end

end A037823.P11281427866237720370

/-! ## A037823.P6269152162987463486

`A019425(A037858(n+1)*A130321(n))`
-/

namespace A037823.P6269152162987463486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019425 (A037858 (n + 1) * A130321 n).toNat

end

end A037823.P6269152162987463486

/-!
# A037824: Number of i such that d(i) > d(i-1), where Sum_{i=0..m} d(i)*9^i is the base-9 representation of n.

The programs for A037824, there is no canonical definition to state claims against.
-/

/-! ## A037824.P14304118068389634274

`A037825(A007095(n+1))`
-/

namespace A037824.P14304118068389634274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037825 (A007095 (n + 1)).toNat

end

end A037824.P14304118068389634274

/-! ## A037824.P14406500518260754937

`A037825(A037479(n+1))`
-/

namespace A037824.P14406500518260754937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037825 (A037479 (n + 1)).toNat

end

end A037824.P14406500518260754937

/-! ## A037824.P2786523411813971949

`A037825(eq[n, A028310(A004182(n))])`
-/

namespace A037824.P2786523411813971949
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A004182 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037825 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A037824.P2786523411813971949

/-! ## A037824.P7290555475461769390

`A037825(eq[n, A028310(A004184(n))])`
-/

namespace A037824.P7290555475461769390
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A004184 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037825 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A037824.P7290555475461769390

/-! ## A037824.P13308982674323058593

`A037825(eq[A004176(n), A028310(n)])`
-/

namespace A037824.P13308982674323058593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004176 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037825 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A037824.P13308982674323058593

/-! ## A037824.P5881117107151173049

`A037825(eq[A000007(n), A268643(n)])`
-/

namespace A037824.P5881117107151173049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268643 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037825 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A037824.P5881117107151173049

/-! ## A037824.P10301965019316150311

`A037825(eq[A000007(n), A316863(n)])`
-/

namespace A037824.P10301965019316150311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316863 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037825 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A037824.P10301965019316150311

/-! ## A037824.P8462050405185321784

`ceil(A037859(n+1)/A164988(n+1))`
-/

namespace A037824.P8462050405185321784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A037859 (n + 1) : ℚ) / (A164988 (n + 1) : ℚ)⌉

end

end A037824.P8462050405185321784

/-! ## A037824.P10607245841549855582

`A087116(A317641(n+1)^A037859(n+1))`
-/

namespace A037824.P10607245841549855582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087116 (SequenceMachineLib.roundAway ((A317641 (n + 1) : ℚ) ^ (A037859 (n + 1) : ℤ))).toNat

end

end A037824.P10607245841549855582

/-! ## A037824.P3866083295301702663

`A056926(lcm(∑[n]+1, A037859(n+1)))`
-/

namespace A037824.P3866083295301702663
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056926 (Int.lcm ((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℕ) : ℤ) (A037859 (n + 1)))

end

end A037824.P3866083295301702663

/-!
# A037825: Number of i such that d(i) > d(i-1), where Sum_{i=0..m} d(i)*10^i is the base-10 representation of n.

The programs for A037825, there is no canonical definition to state claims against.
-/

/-! ## A037825.P16409984447594316957

`dr(∑{digits}[n+1, 10^#])-1-A037817(n+1)`
-/

namespace A037825.P16409984447594316957
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.digitalRoot ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => 10 ^ x).sum : ℕ) : ℤ) : ℤ) - 1 - A037817 (n + 1)

end

end A037825.P16409984447594316957

/-! ## A037825.P1567243987555660319

`A037833(A337864(n+1))`
-/

namespace A037825.P1567243987555660319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037833 (A337864 (n + 1)).toNat

end

end A037825.P1567243987555660319

/-! ## A037825.P6072648860906127560

`A004216(n+1)-A037817(n+1)`
-/

namespace A037825.P6072648860906127560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004216 (n + 1) - A037817 (n + 1)

end

end A037825.P6072648860906127560

/-! ## A037825.P921507195152011905

`A055642(n+1)-1-A037817(n+1)`
-/

namespace A037825.P921507195152011905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (n + 1) - 1 - A037817 (n + 1)

end

end A037825.P921507195152011905

/-! ## A037825.P1379658137689594898

`∑{digits}[n+1, A053632(#)]-1-A037817(n+1)`
-/

namespace A037825.P1379658137689594898
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A053632 x).sum - 1 - A037817 (n + 1)

end

end A037825.P1379658137689594898

/-! ## A037825.P16639427474410158737

`A037808(n+1)+A037833(n+1)-A037817(n+1)`
-/

namespace A037825.P16639427474410158737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037808 (n + 1) + (A037833 (n + 1) - A037817 (n + 1))

end

end A037825.P16639427474410158737

/-! ## A037825.P7359783691362622922

`A004218(n+2)-1-A037817(n+1)`
-/

namespace A037825.P7359783691362622922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004218 (n + 2) - 1 - A037817 (n + 1)

end

end A037825.P7359783691362622922

/-! ## A037825.P16063716827145446748

`A004218(A059995(n+11))-A037817(n+1)`
-/

namespace A037825.P16063716827145446748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004218 (A059995 (n + 11)).toNat - A037817 (n + 1)

end

end A037825.P16063716827145446748

/-! ## A037825.P18087351339586329739

`A037817(A057169(n+1))-A037817(n+1)`
-/

namespace A037825.P18087351339586329739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037817 (A057169 (n + 1)).toNat - A037817 (n + 1)

end

end A037825.P18087351339586329739

/-! ## A037825.P15040107722117871476

`A057427(A037860(n+1)^A040743(n))`
-/

namespace A037825.P15040107722117871476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (SequenceMachineLib.roundAway ((A037860 (n + 1) : ℚ) ^ (A040743 n : ℤ))).toNat

end

end A037825.P15040107722117871476

/-! ## A037825.P5119533162047955599

`A057427(A037860(n+1)*A062513(n+1))`
-/

namespace A037825.P5119533162047955599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A037860 (n + 1) * A062513 (n + 1)).toNat

end

end A037825.P5119533162047955599

/-! ## A037825.P5948650233114369499

`A123895(A037860(n+1))^p?[A048702(n)%(n²+1)]`
-/

namespace A037825.P5948650233114369499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A048702 n) (n ^ 2 + 1 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A123895 (A037860 (n + 1)).toNat : ℚ) ^ (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℤ)

end

end A037825.P5948650233114369499

/-! ## A037825.P13598187615577250687

`A123895(A037860(n+1))^A200381(A310392(n))`
-/

namespace A037825.P13598187615577250687
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A123895 (A037860 (n + 1)).toNat : ℚ) ^ (A200381 (A310392 n).toNat : ℤ)

end

end A037825.P13598187615577250687

/-! ## A037825.P15683159843534310145

`ceil(A037860(n+1)/A346594(n+1))`
-/

namespace A037825.P15683159843534310145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A037860 (n + 1) : ℚ) / (A346594 (n + 1) : ℚ)⌉

end

end A037825.P15683159843534310145

/-! ## A037825.P5289672511256621500

`A123895(A037860(n+1))^A268483(A342925(n+2))`
-/

namespace A037825.P5289672511256621500
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A123895 (A037860 (n + 1)).toNat : ℚ) ^ (A268483 (A342925 (n + 2)).toNat : ℤ)

end

end A037825.P5289672511256621500

/-! ## A037825.P4910927603950771185

`log2(A095827(n+2))`
-/

namespace A037825.P4910927603950771185
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A095827 (n + 2) : ℝ)

end

end A037825.P4910927603950771185

/-!
# A037826: Number of i such that d(i) >= d(i-1), where Sum_{i=0..m} d(i)*3^i is the base-3 representation of n.

The programs for A037826, there is no canonical definition to state claims against.
-/

/-! ## A037826.P4091407605907419015

`A062153(n+1)-A037801(n+1)`
-/

namespace A037826.P4091407605907419015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062153 (n + 1) - A037801 (n + 1)

end

end A037826.P4091407605907419015

/-! ## A037826.P10301163363005687219

`A037827(A023717(n+1))`
-/

namespace A037826.P10301163363005687219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037827 (A023717 (n + 1)).toNat

end

end A037826.P10301163363005687219

/-! ## A037826.P976667357282330211

`A037827(A023713(n+1)+1)`
-/

namespace A037826.P976667357282330211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037827 (A023713 (n + 1) + 1).toNat

end

end A037826.P976667357282330211

/-! ## A037826.P9779283162900301112

`A037827(A023713(n+2))`
-/

namespace A037826.P9779283162900301112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037827 (A023713 (n + 2)).toNat

end

end A037826.P9779283162900301112

/-! ## A037826.P13923472463165608429

`A037827(eq[A000007(n), A292372(n)])`
-/

namespace A037826.P13923472463165608429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292372 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037827 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A037826.P13923472463165608429

/-! ## A037826.P3457872330207313042

`A037827(eq[A000038(n), A292372(n)])`
-/

namespace A037826.P3457872330207313042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292372 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037827 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A037826.P3457872330207313042

/-! ## A037826.P14185183756888193137

`A037827(A006288(n)+1)`
-/

namespace A037826.P14185183756888193137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037827 (A006288 n + 1).toNat

end

end A037826.P14185183756888193137

/-! ## A037826.P6001789890523440901

`A037827(record[A006015(n)+1])`
-/

namespace A037826.P6001789890523440901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006015 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037827 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A037826.P6001789890523440901

/-! ## A037826.P1677582685787065128

`A037827(record[A057300(n)+1])`
-/

namespace A037826.P1677582685787065128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057300 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037827 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A037826.P1677582685787065128

/-! ## A037826.P217754131208368522

`A037827(A023709(n+1)+1)`
-/

namespace A037826.P217754131208368522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037827 (A023709 (n + 1) + 1).toNat

end

end A037826.P217754131208368522

/-! ## A037826.P12616385909355677962

`A037827(A023709(n+2))`
-/

namespace A037826.P12616385909355677962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037827 (A023709 (n + 2)).toNat

end

end A037826.P12616385909355677962

/-! ## A037826.P10639552520553369546

`A037827(eq[A000007(n), A292371(n)])`
-/

namespace A037826.P10639552520553369546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292371 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037827 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A037826.P10639552520553369546

/-! ## A037826.P13713491852604278374

`A037827(eq[A000038(n), A292371(n)])`
-/

namespace A037826.P13713491852604278374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292371 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037827 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A037826.P13713491852604278374

/-! ## A037826.P1075905262410554954

`A037828(A037453(n+1))`
-/

namespace A037826.P1075905262410554954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037828 (A037453 (n + 1)).toNat

end

end A037826.P1075905262410554954

/-! ## A037826.P9775208138335387412

`A037829(A037454(n+1))`
-/

namespace A037826.P9775208138335387412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037829 (A037454 (n + 1)).toNat

end

end A037826.P9775208138335387412

/-! ## A037826.P8181771356093818641

`A037830(A037455(n+1))`
-/

namespace A037826.P8181771356093818641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037830 (A037455 (n + 1)).toNat

end

end A037826.P8181771356093818641

/-! ## A037826.P14679602244437357796

`A037831(A037456(n+1))`
-/

namespace A037826.P14679602244437357796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037831 (A037456 (n + 1)).toNat

end

end A037826.P14679602244437357796

/-! ## A037826.P17598579139269031758

`A037832(A037314(n+1))`
-/

namespace A037826.P17598579139269031758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037832 (A037314 (n + 1)).toNat

end

end A037826.P17598579139269031758

/-! ## A037826.P16948647460418760314

`A037832(A319497(n+1))`
-/

namespace A037826.P16948647460418760314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037832 (A319497 (n + 1)).toNat

end

end A037826.P16948647460418760314

/-!
# A037827: Number of i such that d(i) >= d(i-1), where Sum_{i=0..m} d(i)*4^i is the base-4 representation of n.

The programs for A037827, there is no canonical definition to state claims against.
-/

/-! ## A037827.P8209255834791892725

`A102572(n+1)-A037802(n+1)`
-/

namespace A037827.P8209255834791892725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102572 (n + 1) - A037802 (n + 1)

end

end A037827.P8209255834791892725

/-! ## A037827.P7306606284803513563

`A004526(A000523(n+1))-A037802(n+1)`
-/

namespace A037827.P7306606284803513563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A000523 (n + 1)).toNat - A037802 (n + 1)

end

end A037827.P7306606284803513563

/-! ## A037827.P10810079328985422508

`A037811(n+1)+A037819(n+1)-A037802(n+1)`
-/

namespace A037827.P10810079328985422508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037811 (n + 1) + (A037819 (n + 1) - A037802 (n + 1))

end

end A037827.P10810079328985422508

/-! ## A037827.P13975487464029362375

`A037828(A037459(n+1))`
-/

namespace A037827.P13975487464029362375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037828 (A037459 (n + 1)).toNat

end

end A037827.P13975487464029362375

/-! ## A037827.P5136596695915602581

`A037828(A020654(n+2))`
-/

namespace A037827.P5136596695915602581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037828 (A020654 (n + 2)).toNat

end

end A037827.P5136596695915602581

/-! ## A037827.P5622615569330719627

`A102572(n+1)-A037803(A037459(n+1))`
-/

namespace A037827.P5622615569330719627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102572 (n + 1) - A037803 (A037459 (n + 1)).toNat

end

end A037827.P5622615569330719627

/-! ## A037827.P5400284527602912377

`A037828(A023733(n+1)+1)`
-/

namespace A037827.P5400284527602912377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037828 (A023733 (n + 1) + 1).toNat

end

end A037827.P5400284527602912377

/-! ## A037827.P1322156146501743158

`A037828(A023733(n+2))`
-/

namespace A037827.P1322156146501743158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037828 (A023733 (n + 2)).toNat

end

end A037827.P1322156146501743158

/-! ## A037827.P9709920744242458939

`A037828(A023729(n+2))`
-/

namespace A037827.P9709920744242458939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037828 (A023729 (n + 2)).toNat

end

end A037827.P9709920744242458939

/-! ## A037827.P5231551904738173244

`A037828(A023725(n+1)+1)`
-/

namespace A037827.P5231551904738173244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037828 (A023725 (n + 1) + 1).toNat

end

end A037827.P5231551904738173244

/-! ## A037827.P12090005311435551561

`A037828(A023725(n+2))`
-/

namespace A037827.P12090005311435551561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037828 (A023725 (n + 2)).toNat

end

end A037827.P12090005311435551561

/-! ## A037827.P10765500125546824029

`A037829(A037460(n+1))`
-/

namespace A037827.P10765500125546824029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037829 (A037460 (n + 1)).toNat

end

end A037827.P10765500125546824029

/-! ## A037827.P15237336194087299908

`A037830(A037461(n+1))`
-/

namespace A037827.P15237336194087299908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037830 (A037461 (n + 1)).toNat

end

end A037827.P15237336194087299908

/-! ## A037827.P9347009661758836447

`A037831(A037462(n+1))`
-/

namespace A037827.P9347009661758836447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037831 (A037462 (n + 1)).toNat

end

end A037827.P9347009661758836447

/-! ## A037827.P10400296439047754675

`A037832(A037463(n+1))`
-/

namespace A037827.P10400296439047754675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037832 (A037463 (n + 1)).toNat

end

end A037827.P10400296439047754675

/-! ## A037827.P3302149348045207394

`A037832(A005836(n+2))`
-/

namespace A037827.P3302149348045207394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037832 (A005836 (n + 2)).toNat

end

end A037827.P3302149348045207394

/-! ## A037827.P17730690005620471333

`A037833(A007090(n+1))`
-/

namespace A037827.P17730690005620471333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037833 (A007090 (n + 1)).toNat

end

end A037827.P17730690005620471333

/-! ## A037827.P9489180861431598249

`A037833(A007284(n+1))`
-/

namespace A037827.P9489180861431598249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037833 (A007284 (n + 1)).toNat

end

end A037827.P9489180861431598249

/-! ## A037827.P1449080926066563165

`A037832(A191106(n+1))`
-/

namespace A037827.P1449080926066563165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037832 (A191106 (n + 1)).toNat

end

end A037827.P1449080926066563165

/-! ## A037827.P2357279510414650632

`A037833(A046030(n+2))`
-/

namespace A037827.P2357279510414650632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037833 (A046030 (n + 2)).toNat

end

end A037827.P2357279510414650632

/-!
# A037828: Number of i such that d(i) >= d(i-1), where Sum_{i=0..m} d(i)*5^i is the base-5 representation of n.

The programs for A037828, there is no canonical definition to state claims against.
-/

/-! ## A037828.P6004356397424879900

`A037812(n+1)+A037820(n+1)-A037803(n+1)`
-/

namespace A037828.P6004356397424879900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037812 (n + 1) + (A037820 (n + 1) - A037803 (n + 1))

end

end A037828.P6004356397424879900

/-! ## A037828.P88421038944233770

`A037829(A037465(n+1))`
-/

namespace A037828.P88421038944233770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037829 (A037465 (n + 1)).toNat

end

end A037828.P88421038944233770

/-! ## A037828.P16726910530437555781

`A037830(A037466(n+1))`
-/

namespace A037828.P16726910530437555781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037830 (A037466 (n + 1)).toNat

end

end A037828.P16726910530437555781

/-! ## A037828.P6797134663335068070

`A037831(A037467(n+1))`
-/

namespace A037828.P6797134663335068070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037831 (A037467 (n + 1)).toNat

end

end A037828.P6797134663335068070

/-! ## A037828.P15499591798284632247

`A037832(A037468(n+1))`
-/

namespace A037828.P15499591798284632247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037832 (A037468 (n + 1)).toNat

end

end A037828.P15499591798284632247

/-! ## A037828.P10397667451996812791

`A037833(A007091(n+1))`
-/

namespace A037828.P10397667451996812791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037833 (A007091 (n + 1)).toNat

end

end A037828.P10397667451996812791

/-! ## A037828.P3732965438684823572

`A037833(A054047(n+1))`
-/

namespace A037828.P3732965438684823572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037833 (A054047 (n + 1)).toNat

end

end A037828.P3732965438684823572

/-! ## A037828.P14126174849436380847

`A037833(A080228(n+2))`
-/

namespace A037828.P14126174849436380847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037833 (A080228 (n + 2)).toNat

end

end A037828.P14126174849436380847

/-! ## A037828.P2665109165693898072

`A037833(A001744(n+1)+1)`
-/

namespace A037828.P2665109165693898072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037833 (A001744 (n + 1) + 1).toNat

end

end A037828.P2665109165693898072

/-! ## A037828.P12559523941661364979

`A037833(A072960(n+1)+1)`
-/

namespace A037828.P12559523941661364979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037833 (A072960 (n + 1) + 1).toNat

end

end A037828.P12559523941661364979

/-! ## A037828.P18343013487477316656

`A037833(A014263(n+2)/2)`
-/

namespace A037828.P18343013487477316656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037833 (SequenceMachineLib.roundAway ((A014263 (n + 2) : ℚ) / 2)).toNat

end

end A037828.P18343013487477316656

/-! ## A037828.P3473233658586727295

`A037833(A001744(n+2))`
-/

namespace A037828.P3473233658586727295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037833 (A001744 (n + 2)).toNat

end

end A037828.P3473233658586727295

/-! ## A037828.P803362712360914277

`A037833(A014263(n+2))`
-/

namespace A037828.P803362712360914277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037833 (A014263 (n + 2)).toNat

end

end A037828.P803362712360914277

/-! ## A037828.P12001155260848050140

`A037833(A072960(n+2))`
-/

namespace A037828.P12001155260848050140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037833 (A072960 (n + 2)).toNat

end

end A037828.P12001155260848050140

/-!
# A037829: Number of i such that d(i) >= d(i-1), where Sum_{i=0..m} d(i)*6^i is the base-6 representation of n.

The programs for A037829, there is no canonical definition to state claims against.
-/

/-! ## A037829.P7508719336556634378

`A037813(n+1)+A037821(n+1)-A037804(n+1)`
-/

namespace A037829.P7508719336556634378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037813 (n + 1) + (A037821 (n + 1) - A037804 (n + 1))

end

end A037829.P7508719336556634378

/-! ## A037829.P11407975913308366705

`A037830(A020657(n+2))`
-/

namespace A037829.P11407975913308366705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037830 (A020657 (n + 2)).toNat

end

end A037829.P11407975913308366705

/-! ## A037829.P379437248223728427

`A037830(A249102(n+1)+1)`
-/

namespace A037829.P379437248223728427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037830 (A249102 (n + 1) + 1).toNat

end

end A037829.P379437248223728427

/-! ## A037829.P12927540916183134064

`A037830(A249102(n+2))`
-/

namespace A037829.P12927540916183134064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037830 (A249102 (n + 2)).toNat

end

end A037829.P12927540916183134064

/-! ## A037829.P16053420211658492122

`A037831(A037471(n+1))`
-/

namespace A037829.P16053420211658492122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037831 (A037471 (n + 1)).toNat

end

end A037829.P16053420211658492122

/-! ## A037829.P12924729175277651382

`A037832(A037472(n+1))`
-/

namespace A037829.P12924729175277651382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037832 (A037472 (n + 1)).toNat

end

end A037829.P12924729175277651382

/-! ## A037829.P13458820542629324568

`A037833(A007092(n+1))`
-/

namespace A037829.P13458820542629324568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037833 (A007092 (n + 1)).toNat

end

end A037829.P13458820542629324568

/-! ## A037829.P1708901094286034355

`A037833(A084984(n+2))`
-/

namespace A037829.P1708901094286034355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037833 (A084984 (n + 2)).toNat

end

end A037829.P1708901094286034355

/-! ## A037829.P10205381129188530747

`A037833(A202267(n+2))`
-/

namespace A037829.P10205381129188530747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037833 (A202267 (n + 2)).toNat

end

end A037829.P10205381129188530747

/-! ## A037829.P6638510093945886819

`A037833(A276138(n+1)+1)`
-/

namespace A037829.P6638510093945886819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037833 (A276138 (n + 1) + 1).toNat

end

end A037829.P6638510093945886819

/-! ## A037829.P15255636025127451788

`A037833(A276138(n+2))`
-/

namespace A037829.P15255636025127451788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037833 (A276138 (n + 2)).toNat

end

end A037829.P15255636025127451788

/-! ## A037829.P8909636341730356900

`A037833(A137386(n+1)+1)`
-/

namespace A037829.P8909636341730356900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037833 (A137386 (n + 1) + 1).toNat

end

end A037829.P8909636341730356900

/-! ## A037829.P15080889152323934663

`A037833(A137386(n+2))`
-/

namespace A037829.P15080889152323934663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037833 (A137386 (n + 2)).toNat

end

end A037829.P15080889152323934663

/-!
# A037830: Number of i such that d(i) >= d(i-1), where Sum_{i=0..m} d(i)*7^i is the base-7 representation of n.

The programs for A037830, there is no canonical definition to state claims against.
-/

/-! ## A037830.P1939855106147482661

`A037814(n+1)+A037822(n+1)-A037805(n+1)`
-/

namespace A037830.P1939855106147482661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037814 (n + 1) + (A037822 (n + 1) - A037805 (n + 1))

end

end A037830.P1939855106147482661

/-! ## A037830.P7977772001103317179

`A037831(A037474(n+1))`
-/

namespace A037830.P7977772001103317179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037831 (A037474 (n + 1)).toNat

end

end A037830.P7977772001103317179

/-! ## A037830.P2939969282458231591

`A037832(A037475(n+1))`
-/

namespace A037830.P2939969282458231591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037832 (A037475 (n + 1)).toNat

end

end A037830.P2939969282458231591

/-! ## A037830.P9435603720077459630

`A037833(A007093(n+1))`
-/

namespace A037830.P9435603720077459630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037833 (A007093 (n + 1)).toNat

end

end A037830.P9435603720077459630

/-! ## A037830.P15276550175786132149

`A037833(A168501(n+2))`
-/

namespace A037830.P15276550175786132149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037833 (A168501 (n + 2)).toNat

end

end A037830.P15276550175786132149

/-! ## A037830.P11289220702999957686

`A037833(A307913(n+2))`
-/

namespace A037830.P11289220702999957686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037833 (A307913 (n + 2)).toNat

end

end A037830.P11289220702999957686

/-! ## A037830.P12736441227115398622

`A037833(A028374(n+1)+1)`
-/

namespace A037830.P12736441227115398622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037833 (A028374 (n + 1) + 1).toNat

end

end A037830.P12736441227115398622

/-! ## A037830.P2775785723343208746

`A037833(A028374(n+2))`
-/

namespace A037830.P2775785723343208746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037833 (A028374 (n + 2)).toNat

end

end A037830.P2775785723343208746

/-! ## A037830.P10337081543082668791

`A037832(A242491(n+1)+10)`
-/

namespace A037830.P10337081543082668791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037832 (A242491 (n + 1) + 10).toNat

end

end A037830.P10337081543082668791

/-!
# A037831: Number of i such that d(i) >= d(i-1), where Sum_{i=0..m} d(i)*8^i is the base-8 representation of n.

The programs for A037831, there is no canonical definition to state claims against.
-/

/-! ## A037831.P14822035922759410672

`A002264(A000523(n+1))-A037806(n+1)`
-/

namespace A037831.P14822035922759410672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A000523 (n + 1)).toNat - A037806 (n + 1)

end

end A037831.P14822035922759410672

/-! ## A037831.P10337443783227305990

`A037815(n+1)+A037823(n+1)-A037806(n+1)`
-/

namespace A037831.P10337443783227305990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037815 (n + 1) + (A037823 (n + 1) - A037806 (n + 1))

end

end A037831.P10337443783227305990

/-! ## A037831.P4348336416487359180

`A037832(A037477(n+1))`
-/

namespace A037831.P4348336416487359180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037832 (A037477 (n + 1)).toNat

end

end A037831.P4348336416487359180

/-! ## A037831.P4548361391158839578

`A037833(A007094(n+1))`
-/

namespace A037831.P4548361391158839578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037833 (A007094 (n + 1)).toNat

end

end A037831.P4548361391158839578

/-! ## A037831.P14249136133673733779

`A037833(A008541(n+2))`
-/

namespace A037831.P14249136133673733779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037833 (A008541 (n + 2)).toNat

end

end A037831.P14249136133673733779

/-! ## A037831.P3169335555231544359

`A037833(A008539(n+1)+1)`
-/

namespace A037831.P3169335555231544359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037833 (A008539 (n + 1) + 1).toNat

end

end A037831.P3169335555231544359

/-! ## A037831.P9622272348483494987

`A037833(A008539(n+2))`
-/

namespace A037831.P9622272348483494987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037833 (A008539 (n + 2)).toNat

end

end A037831.P9622272348483494987

/-! ## A037831.P7490730582525787430

`A037832(A088476(n+2))`
-/

namespace A037831.P7490730582525787430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037832 (A088476 (n + 2)).toNat

end

end A037831.P7490730582525787430

/-! ## A037831.P5883495421806208114

`A037833(A072957(n+1))`
-/

namespace A037831.P5883495421806208114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037833 (A072957 (n + 1)).toNat

end

end A037831.P5883495421806208114

/-! ## A037831.P5879440349595701706

`ceil(A306757(n+1)/A306772(n))`
-/

namespace A037831.P5879440349595701706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A306757 (n + 1) : ℚ) / (A306772 n : ℚ)⌉

end

end A037831.P5879440349595701706

/-!
# A037832: Number of i such that d(i) >= d(i-1), where Sum_{i=0..m} d(i)*9^i is the base-9 representation of n.

The programs for A037832, there is no canonical definition to state claims against.
-/

/-! ## A037832.P8443882028086402130

`A037833(A007095(n+1))`
-/

namespace A037832.P8443882028086402130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037833 (A007095 (n + 1)).toNat

end

end A037832.P8443882028086402130

/-! ## A037832.P10917883543528772301

`A037833(A037479(n+1))`
-/

namespace A037832.P10917883543528772301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037833 (A037479 (n + 1)).toNat

end

end A037832.P10917883543528772301

/-! ## A037832.P10036300586067604008

`A037833(A052404(n+2))`
-/

namespace A037832.P10036300586067604008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037833 (A052404 (n + 2)).toNat

end

end A037832.P10036300586067604008

/-! ## A037832.P5430073089611224135

`A037833(A052383(n+2))`
-/

namespace A037832.P5430073089611224135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037833 (A052383 (n + 2)).toNat

end

end A037832.P5430073089611224135

/-! ## A037832.P5761934575808751489

`A037833(record[A004183(n+1)])`
-/

namespace A037832.P5761934575808751489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004183 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037833 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A037832.P5761934575808751489

/-! ## A037832.P13402328536407643288

`A037833(eq[A000007(n), A316865(n)])`
-/

namespace A037832.P13402328536407643288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037833 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A037832.P13402328536407643288

/-! ## A037832.P17717839153971217373

`A288858(Δ[A180513(n+1)]²)`
-/

namespace A037832.P17717839153971217373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180513 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288858 ((f1 (n + 1) - f1 n) ^ 2).toNat

end

end A037832.P17717839153971217373

/-! ## A037832.P18198361149045745167

`A288864(Δ[A180513(n+1)]²)`
-/

namespace A037832.P18198361149045745167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180513 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288864 ((f1 (n + 1) - f1 n) ^ 2).toNat

end

end A037832.P18198361149045745167

/-! ## A037832.P9647528554271217588

`A288855(Δ[A180513(n+1)]²+1)`
-/

namespace A037832.P9647528554271217588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180513 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288855 ((f1 (n + 1) - f1 n) ^ 2 + 1).toNat

end

end A037832.P9647528554271217588

/-! ## A037832.P6766316727341602563

`Δ[A025791(n)%A140578(A025789(n))]`
-/

namespace A037832.P6766316727341602563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A025791 n) (A140578 (A025789 n).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A037832.P6766316727341602563

/-!
# A037833: Number of i such that d(i) >= d(i-1), where Sum_{i=0..m} d(i)*10^i is the base-10 representation of n.

The programs for A037833, there is no canonical definition to state claims against.
-/

/-! ## A037833.P14453597956419042027

`A004216(n+1)-A037808(n+1)`
-/

namespace A037833.P14453597956419042027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004216 (n + 1) - A037808 (n + 1)

end

end A037833.P14453597956419042027

/-! ## A037833.P1090442074910362346

`A055642(n+1)-1-A037808(n+1)`
-/

namespace A037833.P1090442074910362346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (n + 1) - 1 - A037808 (n + 1)

end

end A037833.P1090442074910362346

/-! ## A037833.P7112172564936813465

`∑{digits}[n+1, A036370(#)]-1-A037808(n+1)`
-/

namespace A037833.P7112172564936813465
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A036370 x).sum - 1 - A037808 (n + 1)

end

end A037833.P7112172564936813465

/-! ## A037833.P579313885109843433

`∑{digits}[n+1, A053632(#)]-1-A037808(n+1)`
-/

namespace A037833.P579313885109843433
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A053632 x).sum - 1 - A037808 (n + 1)

end

end A037833.P579313885109843433

/-! ## A037833.P4100049034178255734

`A004216(n+1)-A037825(A004086(n+1))`
-/

namespace A037833.P4100049034178255734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004216 (n + 1) - A037825 (A004086 (n + 1)).toNat

end

end A037833.P4100049034178255734

/-! ## A037833.P11101910055849227566

`A059995(A004219(n+1))-A037808(n+1)`
-/

namespace A037833.P11101910055849227566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059995 (A004219 (n + 1)).toNat - A037808 (n + 1)

end

end A037833.P11101910055849227566

/-! ## A037833.P10806094236976859186

`A037817(n+1)+A037825(n+1)-A037808(n+1)`
-/

namespace A037833.P10806094236976859186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037817 (n + 1) + (A037825 (n + 1) - A037808 (n + 1))

end

end A037833.P10806094236976859186

/-! ## A037833.P12286881480196082473

`A004218(n+2)-1-A037808(n+1)`
-/

namespace A037833.P12286881480196082473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004218 (n + 2) - 1 - A037808 (n + 1)

end

end A037833.P12286881480196082473

/-! ## A037833.P12382745630239405623

`A037817(A057169(n+1))-A037808(n+1)`
-/

namespace A037833.P12382745630239405623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037817 (A057169 (n + 1)).toNat - A037808 (n + 1)

end

end A037833.P12382745630239405623

/-! ## A037833.P5086784073357118537

`A037817(A057169(n+1))-A037825(A004086(n+1))`
-/

namespace A037833.P5086784073357118537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037817 (A057169 (n + 1)).toNat - A037825 (A004086 (n + 1)).toNat

end

end A037833.P5086784073357118537

/-! ## A037833.P8450910828274690370

`A004216(n+1)-A080941(A115231(n+1))%A271083(A037851(n+1))`
-/

namespace A037833.P8450910828274690370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004216 (n + 1) - Int.tmod (A080941 (A115231 (n + 1)).toNat) (A271083 (A037851 (n + 1)).toNat)

end

end A037833.P8450910828274690370

/-! ## A037833.P16366667040718794734

`A004216(n+1)-ceil(A037851(n+1)/A166046(n))`
-/

namespace A037833.P16366667040718794734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004216 (n + 1) - ⌈(A037851 (n + 1) : ℚ) / (A166046 n : ℚ)⌉

end

end A037833.P16366667040718794734

/-! ## A037833.P3303469989090798438

`A004216(A087121(n+1)-A081600(n))`
-/

namespace A037833.P3303469989090798438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004216 (A087121 (n + 1) - A081600 n).toNat

end

end A037833.P3303469989090798438

/-! ## A037833.P9060332185337977663

`A107846(A239217(n+1))+A037825(n+1)`
-/

namespace A037833.P9060332185337977663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107846 (A239217 (n + 1)).toNat + A037825 (n + 1)

end

end A037833.P9060332185337977663

/-! ## A037833.P551846435511625902

`A095827(n+2)-A196368(n+1)`
-/

namespace A037833.P551846435511625902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095827 (n + 2) - A196368 (n + 1)

end

end A037833.P551846435511625902

/-! ## A037833.P7377523453529392870

`val(A053698(A118759(n)), A073730(n+1))`
-/

namespace A037833.P7377523453529392870
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A053698 (A118759 n).toNat).toNat (A073730 (n + 1)).toNat

end

end A037833.P7377523453529392870

/-! ## A037833.P16888563807553575373

`A107846(A056544(n+1)-A037808(n+1))`
-/

namespace A037833.P16888563807553575373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107846 (A056544 (n + 1) - A037808 (n + 1)).toNat

end

end A037833.P16888563807553575373

/-! ## A037833.P4210306602448792718

`A107846(A056544(n+1)-A037851(n+1))`
-/

namespace A037833.P4210306602448792718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107846 (A056544 (n + 1) - A037851 (n + 1)).toNat

end

end A037833.P4210306602448792718

/-!
# A037834: a(n) = Sum_{i=1..m} |d(i) - d(i-1)|, where Sum_{i=0..m} d(i)*2^i is the base-2 representation of n.

The programs for A037834, the canonical program `A037834.P503404166685068881` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037834 has offset 1).

The definition of A037834 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A037834.P503404166685068881

`A005811(n+1)-1`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A037834

/-- `A005811(n+1)-1` -/
def P503404166685068881.Spec : Prop :=
  ∀ n, P503404166685068881.a n = A037834 (n + 1)

theorem P503404166685068881.correct : P503404166685068881.Spec := by
  intro n
  simp only [A037834, Nat.add_sub_cancel]

end A037834

/-! ## A037834.P13474532514080249536

`∑[Δ[xor(n, 2*n)]%2]-1`
-/

namespace A037834.P13474532514080249536
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((f2 (n + 1) : ℤ) - (f2 n : ℤ)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A037834.P13474532514080249536

namespace A037834

/-- `∑[Δ[xor(n, 2*n)]%2]-1` -/
def P13474532514080249536.Spec : Prop :=
  ∀ n, P13474532514080249536.a n = A037834 (n + 1)

end A037834

/-! ## A037834.P6227814265808214092

`A088748(n+1)-2`
-/

namespace A037834.P6227814265808214092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088748 (n + 1) - 2

end

end A037834.P6227814265808214092

namespace A037834

/-- `A088748(n+1)-2` -/
def P6227814265808214092.Spec : Prop :=
  ∀ n, P6227814265808214092.a n = A037834 (n + 1)

end A037834

/-! ## A037834.P10792696565920448424

`floor(log2(A090079(n+1)))`
-/

namespace A037834.P10792696565920448424
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A090079 (n + 1)).toNat

end

end A037834.P10792696565920448424

namespace A037834

/-- `floor(log2(A090079(n+1)))` -/
def P10792696565920448424.Spec : Prop :=
  ∀ n, (P10792696565920448424.a n : ℤ) = A037834 (n + 1)

end A037834

/-! ## A037834.P7512415700639411484

`∑[A034947(n+1)]-1`
-/

namespace A037834.P7512415700639411484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034947 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A037834.P7512415700639411484

namespace A037834

/-- `∑[A034947(n+1)]-1` -/
def P7512415700639411484.Spec : Prop :=
  ∀ n, P7512415700639411484.a n = A037834 (n + 1)

end A037834

/-! ## A037834.P12169575028594582404

`∑[A112347(n+1)]-1`
-/

namespace A037834.P12169575028594582404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112347 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A037834.P12169575028594582404

namespace A037834

/-- `∑[A112347(n+1)]-1` -/
def P12169575028594582404.Spec : Prop :=
  ∀ n, P12169575028594582404.a n = A037834 (n + 1)

end A037834

/-! ## A037834.P15911436080015735300

`n-∑[2*A014707(n)]`
-/

namespace A037834.P15911436080015735300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A014707 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037834.P15911436080015735300

namespace A037834

/-- `n-∑[2*A014707(n)]` -/
def P15911436080015735300.Spec : Prop :=
  ∀ n, P15911436080015735300.a n = A037834 (n + 1)

end A037834

/-! ## A037834.P10968153615763880129

`n-∑[and(2, A153733(n))]`
-/

namespace A037834.P10968153615763880129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 2 (A153733 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037834.P10968153615763880129

namespace A037834

/-- `n-∑[and(2, A153733(n))]` -/
def P10968153615763880129.Spec : Prop :=
  ∀ n, P10968153615763880129.a n = A037834 (n + 1)

end A037834

/-! ## A037834.P3991129147304951722

`∑[2-A099545(n+1)]-1`
-/

namespace A037834.P3991129147304951722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A099545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A037834.P3991129147304951722

namespace A037834

/-- `∑[2-A099545(n+1)]-1` -/
def P3991129147304951722.Spec : Prop :=
  ∀ n, P3991129147304951722.a n = A037834 (n + 1)

end A037834

/-! ## A037834.P4525243867955069577

`∑[Δ[A005811(n)]+1]%(n+2)`
-/

namespace A037834.P4525243867955069577
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (n + 2 : ℤ)

end

end A037834.P4525243867955069577

namespace A037834

/-- `∑[Δ[A005811(n)]+1]%(n+2)` -/
def P4525243867955069577.Spec : Prop :=
  ∀ n, P4525243867955069577.a n = A037834 (n + 1)

end A037834

/-! ## A037834.P14061223602438521005

`A023806(A005811(n+1))`
-/

namespace A037834.P14061223602438521005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023806 (A005811 (n + 1)).toNat

end

end A037834.P14061223602438521005

namespace A037834

/-- `A023806(A005811(n+1))` -/
def P14061223602438521005.Spec : Prop :=
  ∀ n, P14061223602438521005.a n = A037834 (n + 1)

end A037834

/-! ## A037834.P3738463599412870493

`A005811(A035327(n+1))`
-/

namespace A037834.P3738463599412870493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 (A035327 (n + 1)).toNat

end

end A037834.P3738463599412870493

namespace A037834

/-- `A005811(A035327(n+1))` -/
def P3738463599412870493.Spec : Prop :=
  ∀ n, P3738463599412870493.a n = A037834 (n + 1)

end A037834

/-! ## A037834.P829563597997387866

`A000523(A090079(n+1))`
-/

namespace A037834.P829563597997387866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (A090079 (n + 1)).toNat

end

end A037834.P829563597997387866

namespace A037834

/-- `A000523(A090079(n+1))` -/
def P829563597997387866.Spec : Prop :=
  ∀ n, P829563597997387866.a n = A037834 (n + 1)

end A037834

/-! ## A037834.P4397275428527099846

`A023444(A088748(n+1))`
-/

namespace A037834.P4397275428527099846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A088748 (n + 1)).toNat

end

end A037834.P4397275428527099846

namespace A037834

/-- `A023444(A088748(n+1))` -/
def P4397275428527099846.Spec : Prop :=
  ∀ n, P4397275428527099846.a n = A037834 (n + 1)

end A037834

/-! ## A037834.P15314879901528753494

`A005811(A163575(n+1))`
-/

namespace A037834.P15314879901528753494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 (A163575 (n + 1)).toNat

end

end A037834.P15314879901528753494

namespace A037834

/-- `A005811(A163575(n+1))` -/
def P15314879901528753494.Spec : Prop :=
  ∀ n, P15314879901528753494.a n = A037834 (n + 1)

end A037834

/-! ## A037834.P17391175988001204584

`A104325(A073334(n+1))-2`
-/

namespace A037834.P17391175988001204584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104325 (A073334 (n + 1)).toNat - 2

end

end A037834.P17391175988001204584

namespace A037834

/-- `A104325(A073334(n+1))-2` -/
def P17391175988001204584.Spec : Prop :=
  ∀ n, P17391175988001204584.a n = A037834 (n + 1)

end A037834

/-! ## A037834.P7675306832402273090

`A037800(n+1)+A033264(n+1)`
-/

namespace A037834.P7675306832402273090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037800 (n + 1) + A033264 (n + 1)

end

end A037834.P7675306832402273090

namespace A037834

/-- `A037800(n+1)+A033264(n+1)` -/
def P7675306832402273090.Spec : Prop :=
  ∀ n, P7675306832402273090.a n = A037834 (n + 1)

end A037834

/-! ## A037834.P4116445074308020846

`A087116(n+1)+A037800(n+1)`
-/

namespace A037834.P4116445074308020846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087116 (n + 1) + A037800 (n + 1)

end

end A037834.P4116445074308020846

namespace A037834

/-- `A087116(n+1)+A037800(n+1)` -/
def P4116445074308020846.Spec : Prop :=
  ∀ n, P4116445074308020846.a n = A037834 (n + 1)

end A037834

/-! ## A037834.P12490461133252909532

`Δ[A173318(n)]-1`
-/

namespace A037834.P12490461133252909532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173318 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A037834.P12490461133252909532

namespace A037834

/-- `Δ[A173318(n)]-1` -/
def P12490461133252909532.Spec : Prop :=
  ∀ n, P12490461133252909532.a n = A037834 (n + 1)

end A037834

/-! ## A037834.P17037510841733166803

`A136004(n+1)-5`
-/

namespace A037834.P17037510841733166803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136004 (n + 1) - 5

end

end A037834.P17037510841733166803

namespace A037834

/-- `A136004(n+1)-5` -/
def P17037510841733166803.Spec : Prop :=
  ∀ n, P17037510841733166803.a n = A037834 (n + 1)

end A037834

/-!
# A037835: Sum{|d(i)-d(i-1)|: i=0,1,...,m}, where Sum{d(i)*3^i: i=0,1,...,m} is base 3 representation of n.

The programs for A037835, there is no canonical definition to state claims against.
-/

/-! ## A037835.P15407703795558394069

`A037853(n+1)+A037844(n+1)`
-/

namespace A037835.P15407703795558394069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037853 (n + 1) + A037844 (n + 1)

end

end A037835.P15407703795558394069

/-! ## A037835.P6472955020720563562

`A037836(A023717(n+1))`
-/

namespace A037835.P6472955020720563562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037836 (A023717 (n + 1)).toNat

end

end A037835.P6472955020720563562

/-! ## A037835.P3751167230377824818

`A037837(A037453(n+1))`
-/

namespace A037835.P3751167230377824818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037837 (A037453 (n + 1)).toNat

end

end A037835.P3751167230377824818

/-! ## A037835.P1782931092725213726

`A037853(n+1)+A037846(A037453(n+1))`
-/

namespace A037835.P1782931092725213726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037853 (n + 1) + A037846 (A037453 (n + 1)).toNat

end

end A037835.P1782931092725213726

/-! ## A037835.P3474342421441034486

`A037838(A037454(n+1))`
-/

namespace A037835.P3474342421441034486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037838 (A037454 (n + 1)).toNat

end

end A037835.P3474342421441034486

/-! ## A037835.P2194744253423794050

`A037839(A037455(n+1))`
-/

namespace A037835.P2194744253423794050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037839 (A037455 (n + 1)).toNat

end

end A037835.P2194744253423794050

/-! ## A037835.P11512273033940760847

`A037840(A037456(n+1))`
-/

namespace A037835.P11512273033940760847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037840 (A037456 (n + 1)).toNat

end

end A037835.P11512273033940760847

/-! ## A037835.P7533676521420276269

`A037841(A037314(n+1))`
-/

namespace A037835.P7533676521420276269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037841 (A037314 (n + 1)).toNat

end

end A037835.P7533676521420276269

/-! ## A037835.P13463840858420802715

`A297330(A007089(n+1))`
-/

namespace A037835.P13463840858420802715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297330 (A007089 (n + 1)).toNat

end

end A037835.P13463840858420802715

/-! ## A037835.P14477662839657164229

`A037841(A163344(n+1))`
-/

namespace A037835.P14477662839657164229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037841 (A163344 (n + 1)).toNat

end

end A037835.P14477662839657164229

/-!
# A037836: a(n) = Sum{|d(i)-d(i-1)|: i=1,...,m}, where Sum{d(i)*4^i: i=0,1,...,m} is the base 4 representation of n.

The programs for A037836, there is no canonical definition to state claims against.
-/

/-! ## A037836.P705628845092783566

`A037854(n+1)+A037845(n+1)`
-/

namespace A037836.P705628845092783566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037854 (n + 1) + A037845 (n + 1)

end

end A037836.P705628845092783566

/-! ## A037836.P1899727861179984013

`A037837(A037459(n+1))`
-/

namespace A037836.P1899727861179984013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037837 (A037459 (n + 1)).toNat

end

end A037836.P1899727861179984013

/-! ## A037836.P17404516401777186217

`A037837(A020654(n+2))`
-/

namespace A037836.P17404516401777186217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037837 (A020654 (n + 2)).toNat

end

end A037836.P17404516401777186217

/-! ## A037836.P9648820800095572325

`A037838(A037460(n+1))`
-/

namespace A037836.P9648820800095572325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037838 (A037460 (n + 1)).toNat

end

end A037836.P9648820800095572325

/-! ## A037836.P17374669806021249830

`A037839(A037461(n+1))`
-/

namespace A037836.P17374669806021249830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037839 (A037461 (n + 1)).toNat

end

end A037836.P17374669806021249830

/-! ## A037836.P9568046509972710990

`A037840(A037462(n+1))`
-/

namespace A037836.P9568046509972710990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037840 (A037462 (n + 1)).toNat

end

end A037836.P9568046509972710990

/-! ## A037836.P18103877851786177115

`A037841(A037463(n+1))`
-/

namespace A037836.P18103877851786177115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037841 (A037463 (n + 1)).toNat

end

end A037836.P18103877851786177115

/-! ## A037836.P8480441694995480383

`A297330(A007090(n+1))`
-/

namespace A037836.P8480441694995480383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297330 (A007090 (n + 1)).toNat

end

end A037836.P8480441694995480383

/-! ## A037836.P4719388845546257754

`A037845(A048703(n+1))`
-/

namespace A037836.P4719388845546257754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037845 (A048703 (n + 1)).toNat

end

end A037836.P4719388845546257754

/-!
# A037837: a(n) = Sum{|d(i)-d(i-1)|: i=1,...,m}, where Sum{d(i)*5^i: i=0,1,...,m} is the base 5 representation of n.

The programs for A037837, there is no canonical definition to state claims against.
-/

/-! ## A037837.P10752015222380781455

`A037855(n+1)+A037846(n+1)`
-/

namespace A037837.P10752015222380781455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037855 (n + 1) + A037846 (n + 1)

end

end A037837.P10752015222380781455

/-! ## A037837.P17211786221883305045

`A037838(A037465(n+1))`
-/

namespace A037837.P17211786221883305045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037838 (A037465 (n + 1)).toNat

end

end A037837.P17211786221883305045

/-! ## A037837.P15714063682793047630

`A037839(A037466(n+1))`
-/

namespace A037837.P15714063682793047630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037839 (A037466 (n + 1)).toNat

end

end A037837.P15714063682793047630

/-! ## A037837.P12810687774124440555

`A037840(A037467(n+1))`
-/

namespace A037837.P12810687774124440555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037840 (A037467 (n + 1)).toNat

end

end A037837.P12810687774124440555

/-! ## A037837.P14031441839200852235

`A037841(A037468(n+1))`
-/

namespace A037837.P14031441839200852235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037841 (A037468 (n + 1)).toNat

end

end A037837.P14031441839200852235

/-! ## A037837.P10007403245973511262

`A297330(A007091(n+1))`
-/

namespace A037837.P10007403245973511262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297330 (A007091 (n + 1)).toNat

end

end A037837.P10007403245973511262

/-!
# A037838: a(n) = Sum{|d(i)-d(i-1)|: i=1,...,m}, where Sum{d(i)*6^i: i=0,1,...,m} is the base 6 representation of n.

The programs for A037838, there is no canonical definition to state claims against.
-/

/-! ## A037838.P12589530201934318574

`A037856(n+1)+A037847(n+1)`
-/

namespace A037838.P12589530201934318574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037856 (n + 1) + A037847 (n + 1)

end

end A037838.P12589530201934318574

/-! ## A037838.P8386642420896433124

`A037839(A020657(n+2))`
-/

namespace A037838.P8386642420896433124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037839 (A020657 (n + 2)).toNat

end

end A037838.P8386642420896433124

/-! ## A037838.P11313994659165389286

`A037840(A037471(n+1))`
-/

namespace A037838.P11313994659165389286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037840 (A037471 (n + 1)).toNat

end

end A037838.P11313994659165389286

/-! ## A037838.P13761309387426089860

`A037841(A037472(n+1))`
-/

namespace A037838.P13761309387426089860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037841 (A037472 (n + 1)).toNat

end

end A037838.P13761309387426089860

/-! ## A037838.P14647172104914243227

`A297330(A007092(n+1))`
-/

namespace A037838.P14647172104914243227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297330 (A007092 (n + 1)).toNat

end

end A037838.P14647172104914243227

/-!
# A037839: a(n) = Sum{|d(i)-d(i-1)|: i=1,...,m}, where Sum{d(i)*7^i: i=0,1,...,m} is the base 7 representation of n.

The programs for A037839, the canonical program `A037839.P16544555044526964660` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037839 has offset 1).

The definition of A037839 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6041 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A037839.P11842037064640686571

`A037857(n+1)+A037848(n+1)`
-/

namespace A037839.P11842037064640686571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037857 (n + 1) + A037848 (n + 1)

end

end A037839.P11842037064640686571

namespace A037839

/-- `A037857(n+1)+A037848(n+1)` -/
def P11842037064640686571.Spec : Prop :=
  ∀ n, P11842037064640686571.a n = A037839 (n + 1)

end A037839

/-! ## A037839.P16544555044526964660

`A037840(A037474(n+1))`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A037839

/-- `A037840(A037474(n+1))` -/
def P16544555044526964660.Spec : Prop :=
  ∀ n, P16544555044526964660.a n = A037839 (n + 1)

theorem P16544555044526964660.correct : P16544555044526964660.Spec := by
  intro n
  simp only [A037839, Nat.add_sub_cancel]

end A037839

/-! ## A037839.P10816649508367444335

`A037841(A037475(n+1))`
-/

namespace A037839.P10816649508367444335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037841 (A037475 (n + 1)).toNat

end

end A037839.P10816649508367444335

namespace A037839

/-- `A037841(A037475(n+1))` -/
def P10816649508367444335.Spec : Prop :=
  ∀ n, P10816649508367444335.a n = A037839 (n + 1)

end A037839

/-! ## A037839.P5266906408658806554

`A297330(A007093(n+1))`
-/

namespace A037839.P5266906408658806554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297330 (A007093 (n + 1)).toNat

end

end A037839.P5266906408658806554

namespace A037839

/-- `A297330(A007093(n+1))` -/
def P5266906408658806554.Spec : Prop :=
  ∀ n, P5266906408658806554.a n = A037839 (n + 1)

end A037839

/-! ## A037839.P2416031589192865913

`A037860(A007093(n+1))+A037848(n+1)`
-/

namespace A037839.P2416031589192865913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037860 (A007093 (n + 1)).toNat + A037848 (n + 1)

end

end A037839.P2416031589192865913

namespace A037839

/-- `A037860(A007093(n+1))+A037848(n+1)` -/
def P2416031589192865913.Spec : Prop :=
  ∀ n, P2416031589192865913.a n = A037839 (n + 1)

end A037839

/-! ## A037839.P8363824875357702431

`A037857(n+1)+A037851(A007093(n+1))`
-/

namespace A037839.P8363824875357702431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037857 (n + 1) + A037851 (A007093 (n + 1)).toNat

end

end A037839.P8363824875357702431

namespace A037839

/-- `A037857(n+1)+A037851(A007093(n+1))` -/
def P8363824875357702431.Spec : Prop :=
  ∀ n, P8363824875357702431.a n = A037839 (n + 1)

end A037839

/-!
# A037840: a(n)=Sum{|d(i)-d(i-1)|: i=1,...,m}, where Sum{d(i)*8^i: i=0,1,...,m} is the base 8 representation of n.

The programs for A037840, the canonical program `A037840.P2762222455671273177` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037840 has offset 1).

The definition of A037840 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6561 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A037840.P12763500142638551717

`A037858(n+1)+A037849(n+1)`
-/

namespace A037840.P12763500142638551717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037858 (n + 1) + A037849 (n + 1)

end

end A037840.P12763500142638551717

namespace A037840

/-- `A037858(n+1)+A037849(n+1)` -/
def P12763500142638551717.Spec : Prop :=
  ∀ n, P12763500142638551717.a n = A037840 (n + 1)

end A037840

/-! ## A037840.P2762222455671273177

`A037841(A037477(n+1))`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A037840

/-- `A037841(A037477(n+1))` -/
def P2762222455671273177.Spec : Prop :=
  ∀ n, P2762222455671273177.a n = A037840 (n + 1)

theorem P2762222455671273177.correct : P2762222455671273177.Spec := by
  intro n
  simp only [A037840, Nat.add_sub_cancel]

end A037840

/-! ## A037840.P14834753814487620279

`A037858(A030107(n+1))+A037858(n+1)`
-/

namespace A037840.P14834753814487620279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037858 (A030107 (n + 1)).toNat + A037858 (n + 1)

end

end A037840.P14834753814487620279

namespace A037840

/-- `A037858(A030107(n+1))+A037858(n+1)` -/
def P14834753814487620279.Spec : Prop :=
  ∀ n, P14834753814487620279.a n = A037840 (n + 1)

end A037840

/-! ## A037840.P8519266504778456532

`A297330(A007094(n+1))`
-/

namespace A037840.P8519266504778456532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297330 (A007094 (n + 1)).toNat

end

end A037840.P8519266504778456532

namespace A037840

/-- `A297330(A007094(n+1))` -/
def P8519266504778456532.Spec : Prop :=
  ∀ n, P8519266504778456532.a n = A037840 (n + 1)

end A037840

/-! ## A037840.P15010722314719303749

`A037860(A007094(n+1))+A037850(A037477(n+1))`
-/

namespace A037840.P15010722314719303749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037860 (A007094 (n + 1)).toNat + A037850 (A037477 (n + 1)).toNat

end

end A037840.P15010722314719303749

namespace A037840

/-- `A037860(A007094(n+1))+A037850(A037477(n+1))` -/
def P15010722314719303749.Spec : Prop :=
  ∀ n, P15010722314719303749.a n = A037840 (n + 1)

end A037840

/-! ## A037840.P725770815333874385

`A297330(eq[n, A222254(A028310(n))])`
-/

namespace A037840.P725770815333874385
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222254 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297330 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A037840.P725770815333874385

namespace A037840

/-- `A297330(eq[n, A222254(A028310(n))])` -/
def P725770815333874385.Spec : Prop :=
  ∀ n, P725770815333874385.a n = A037840 (n + 1)

end A037840

/-! ## A037840.P8398840268366749777

`A037902(n+1)*A297382(A016826(n))`
-/

namespace A037840.P8398840268366749777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037902 (n + 1) * A297382 (A016826 n).toNat

end

end A037840.P8398840268366749777

namespace A037840

/-- `A037902(n+1)*A297382(A016826(n))` -/
def P8398840268366749777.Spec : Prop :=
  ∀ n, P8398840268366749777.a n = A037840 (n + 1)

end A037840

/-! ## A037840.P6017091983811764242

`A001221(A245396(n+1))*A037902(n+1)`
-/

namespace A037840.P6017091983811764242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A245396 (n + 1)).toNat * A037902 (n + 1)

end

end A037840.P6017091983811764242

namespace A037840

/-- `A001221(A245396(n+1))*A037902(n+1)` -/
def P6017091983811764242.Spec : Prop :=
  ∀ n, P6017091983811764242.a n = A037840 (n + 1)

end A037840

/-! ## A037840.P13255759132299105495

`A037894(n+1)%A000664(n)`
-/

namespace A037840.P13255759132299105495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A037894 (n + 1)) (A000664 n)

end

end A037840.P13255759132299105495

namespace A037840

/-- `A037894(n+1)%A000664(n)` -/
def P13255759132299105495.Spec : Prop :=
  ∀ n, P13255759132299105495.a n = A037840 (n + 1)

end A037840

/-!
# A037841: a(n)=Sum{|d(i)-d(i-1)|: i=1,...,m}, where Sum{d(i)*9^i: i=0,1,...,m} is the base 9 representation of n.

The programs for A037841, the canonical program `A037841.P17328072378714673931` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037841 has offset 1).

The definition of A037841 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6561 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A037841.P8963493946257644776

`A037859(n+1)+A037850(n+1)`
-/

namespace A037841.P8963493946257644776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037859 (n + 1) + A037850 (n + 1)

end

end A037841.P8963493946257644776

namespace A037841

/-- `A037859(n+1)+A037850(n+1)` -/
def P8963493946257644776.Spec : Prop :=
  ∀ n, P8963493946257644776.a n = A037841 (n + 1)

end A037841

/-! ## A037841.P17328072378714673931

`A297330(A007095(n+1))`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A037841

/-- `A297330(A007095(n+1))` -/
def P17328072378714673931.Spec : Prop :=
  ∀ n, P17328072378714673931.a n = A037841 (n + 1)

theorem P17328072378714673931.correct : P17328072378714673931.Spec := by
  intro n
  simp only [A037841, Nat.add_sub_cancel]

end A037841

/-! ## A037841.P10932020784661157040

`A297330(record[A004184(n+1)])`
-/

namespace A037841.P10932020784661157040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004184 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297330 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A037841.P10932020784661157040

namespace A037841

/-- `A297330(record[A004184(n+1)])` -/
def P10932020784661157040.Spec : Prop :=
  ∀ n, P10932020784661157040.a n = A037841 (n + 1)

end A037841

/-! ## A037841.P18062053781534138707

`A297330(record[A048379(n+1)])`
-/

namespace A037841.P18062053781534138707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048379 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297330 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A037841.P18062053781534138707

namespace A037841

/-- `A297330(record[A048379(n+1)])` -/
def P18062053781534138707.Spec : Prop :=
  ∀ n, P18062053781534138707.a n = A037841 (n + 1)

end A037841

/-! ## A037841.P12219237298741423394

`A297330(record[A235049(n+2)])`
-/

namespace A037841.P12219237298741423394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235049 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297330 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A037841.P12219237298741423394

namespace A037841

/-- `A297330(record[A235049(n+2)])` -/
def P12219237298741423394.Spec : Prop :=
  ∀ n, P12219237298741423394.a n = A037841 (n + 1)

end A037841

/-! ## A037841.P6600835346053713022

`A265556(n+1)-A319726(n+1)`
-/

namespace A037841.P6600835346053713022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265556 (n + 1) - A319726 (n + 1)

end

end A037841.P6600835346053713022

namespace A037841

/-- `A265556(n+1)-A319726(n+1)` -/
def P6600835346053713022.Spec : Prop :=
  ∀ n, P6600835346053713022.a n = A037841 (n + 1)

end A037841

/-! ## A037841.P9097177802060770236

`A347689(record[A048379(n+1)])`
-/

namespace A037841.P9097177802060770236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048379 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347689 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A037841.P9097177802060770236

namespace A037841

/-- `A347689(record[A048379(n+1)])` -/
def P9097177802060770236.Spec : Prop :=
  ∀ n, P9097177802060770236.a n = A037841 (n + 1)

end A037841

/-! ## A037841.P2504941533142966965

`A165091(A165110(n+1))%A165104(n+1)`
-/

namespace A037841.P2504941533142966965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A165091 (A165110 (n + 1)).toNat) (A165104 (n + 1))

end

end A037841.P2504941533142966965

namespace A037841

/-- `A165091(A165110(n+1))%A165104(n+1)` -/
def P2504941533142966965.Spec : Prop :=
  ∀ n, P2504941533142966965.a n = A037841 (n + 1)

end A037841

/-! ## A037841.P1406067836245401121

`A037895(n+1)%A000105(n)`
-/

namespace A037841.P1406067836245401121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A037895 (n + 1)) (A000105 n)

end

end A037841.P1406067836245401121

namespace A037841

/-- `A037895(n+1)%A000105(n)` -/
def P1406067836245401121.Spec : Prop :=
  ∀ n, P1406067836245401121.a n = A037841 (n + 1)

end A037841

/-!
# A037842: Fibonacci numbers in base 1.

The programs for A037842, there is no canonical definition to state claims against.
-/

/-! ## A037842.P16423182114927768072

`A108047(n+2)`
-/

namespace A037842.P16423182114927768072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108047 (n + 2)

end

end A037842.P16423182114927768072

/-! ## A037842.P10492041064069873850

`A131293(n+2)`
-/

namespace A037842.P10492041064069873850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131293 (n + 2)

end

end A037842.P10492041064069873850

/-! ## A037842.P3277031410980016182

`record[A214326(n+1)]`
-/

namespace A037842.P3277031410980016182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214326 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A037842.P3277031410980016182

/-! ## A037842.P8346243410324183433

`floor(10^A000045(n+2)/9)`
-/

namespace A037842.P8346243410324183433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(10 : ℚ) ^ (A000045 (n + 2) : ℤ) / 9⌋

end

end A037842.P8346243410324183433

/-! ## A037842.P16497050595664356443

`(10^(∑[A000045(n)]+1)-1)/9`
-/

namespace A037842.P16497050595664356443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((10 : ℚ) ^ (∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℤ) - 1) / 9

end

end A037842.P16497050595664356443

/-!
# A037843: Number of matrices with n columns whose rows do not cover each other; ordered antichains of subsets of an n-set.

The programs for A037843, there is no canonical definition to state claims against.
-/

/-! ## A037843.P9258333400660033487

`or(n, A069680(A260146(n)))`
-/

namespace A037843.P9258333400660033487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (A069680 (A260146 n).toNat)

end

end A037843.P9258333400660033487

/-!
# A037844: Sum{d(i-1)-d(i): d(i)

The programs for A037844, there is no canonical definition to state claims against.
-/

/-! ## A037844.P877108283058885440

`A037835(n+1)-A037853(n+1)`
-/

namespace A037844.P877108283058885440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037835 (n + 1) - A037853 (n + 1)

end

end A037844.P877108283058885440

/-! ## A037844.P12375534273108381445

`A037853(A030102(n+1))`
-/

namespace A037844.P12375534273108381445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037853 (A030102 (n + 1)).toNat

end

end A037844.P12375534273108381445

/-! ## A037844.P2735111597390173122

`A037845(A023717(n+1))`
-/

namespace A037844.P2735111597390173122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037845 (A023717 (n + 1)).toNat

end

end A037844.P2735111597390173122

/-! ## A037844.P9781019206052091793

`A037846(A037453(n+1))`
-/

namespace A037844.P9781019206052091793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037846 (A037453 (n + 1)).toNat

end

end A037844.P9781019206052091793

/-! ## A037844.P7122732526969897248

`A037847(A037454(n+1))`
-/

namespace A037844.P7122732526969897248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037847 (A037454 (n + 1)).toNat

end

end A037844.P7122732526969897248

/-! ## A037844.P1940161547328826005

`A037848(A037455(n+1))`
-/

namespace A037844.P1940161547328826005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037848 (A037455 (n + 1)).toNat

end

end A037844.P1940161547328826005

/-! ## A037844.P8555242089445478712

`A037849(A037456(n+1))`
-/

namespace A037844.P8555242089445478712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037849 (A037456 (n + 1)).toNat

end

end A037844.P8555242089445478712

/-! ## A037844.P12652802394098754672

`A037850(A037314(n+1))`
-/

namespace A037844.P12652802394098754672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037850 (A037314 (n + 1)).toNat

end

end A037844.P12652802394098754672

/-! ## A037844.P3284502084393096351

`A037851(A007089(n+1))`
-/

namespace A037844.P3284502084393096351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037851 (A007089 (n + 1)).toNat

end

end A037844.P3284502084393096351

/-! ## A037844.P433641237997368014

`A037860(A305877(n+1))`
-/

namespace A037844.P433641237997368014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037860 (A305877 (n + 1)).toNat

end

end A037844.P433641237997368014

/-!
# A037845: a(n) = Sum_{i=1..m, d(i)

The programs for A037845, there is no canonical definition to state claims against.
-/

/-! ## A037845.P7769825231858755137

`A037836(n+1)-A037854(n+1)`
-/

namespace A037845.P7769825231858755137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037836 (n + 1) - A037854 (n + 1)

end

end A037845.P7769825231858755137

/-! ## A037845.P1471908703330136910

`A037854(A030103(n+1))`
-/

namespace A037845.P1471908703330136910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037854 (A030103 (n + 1)).toNat

end

end A037845.P1471908703330136910

/-! ## A037845.P12099902829591389009

`A037846(A037459(n+1))`
-/

namespace A037845.P12099902829591389009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037846 (A037459 (n + 1)).toNat

end

end A037845.P12099902829591389009

/-! ## A037845.P14975484810938351981

`A037846(A020654(n+2))`
-/

namespace A037845.P14975484810938351981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037846 (A020654 (n + 2)).toNat

end

end A037845.P14975484810938351981

/-! ## A037845.P3746410559747736383

`A037847(A037460(n+1))`
-/

namespace A037845.P3746410559747736383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037847 (A037460 (n + 1)).toNat

end

end A037845.P3746410559747736383

/-! ## A037845.P8225260698054868941

`A037848(A037461(n+1))`
-/

namespace A037845.P8225260698054868941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037848 (A037461 (n + 1)).toNat

end

end A037845.P8225260698054868941

/-! ## A037845.P2681475778369145609

`A037849(A037462(n+1))`
-/

namespace A037845.P2681475778369145609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037849 (A037462 (n + 1)).toNat

end

end A037845.P2681475778369145609

/-! ## A037845.P9892620539301830838

`A037850(A037463(n+1))`
-/

namespace A037845.P9892620539301830838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037850 (A037463 (n + 1)).toNat

end

end A037845.P9892620539301830838

/-! ## A037845.P5518665774280447873

`A037851(A007090(n+1))`
-/

namespace A037845.P5518665774280447873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037851 (A007090 (n + 1)).toNat

end

end A037845.P5518665774280447873

/-! ## A037845.P11609005641740842794

`A037881(and(1, A094841(n+1))+n)`
-/

namespace A037845.P11609005641740842794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037881 (Int.land 1 (A094841 (n + 1)) + (n : ℤ)).toNat

end

end A037845.P11609005641740842794

/-!
# A037846: a(n)=Sum{d(i-1)-d(i): d(i)

The programs for A037846, there is no canonical definition to state claims against.
-/

/-! ## A037846.P1474451632295384400

`A037837(n+1)-A037855(n+1)`
-/

namespace A037846.P1474451632295384400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037837 (n + 1) - A037855 (n + 1)

end

end A037846.P1474451632295384400

/-! ## A037846.P11881524800307717598

`A037847(A037465(n+1))`
-/

namespace A037846.P11881524800307717598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037847 (A037465 (n + 1)).toNat

end

end A037846.P11881524800307717598

/-! ## A037846.P3434839594793588797

`A037855(A030104(n+1))`
-/

namespace A037846.P3434839594793588797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037855 (A030104 (n + 1)).toNat

end

end A037846.P3434839594793588797

/-! ## A037846.P5806697330737595700

`A037848(A037466(n+1))`
-/

namespace A037846.P5806697330737595700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037848 (A037466 (n + 1)).toNat

end

end A037846.P5806697330737595700

/-! ## A037846.P11664998438009293047

`A037849(A037467(n+1))`
-/

namespace A037846.P11664998438009293047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037849 (A037467 (n + 1)).toNat

end

end A037846.P11664998438009293047

/-! ## A037846.P3429330427643041129

`A037850(A037468(n+1))`
-/

namespace A037846.P3429330427643041129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037850 (A037468 (n + 1)).toNat

end

end A037846.P3429330427643041129

/-! ## A037846.P8080950066378486904

`A037851(A007091(n+1))`
-/

namespace A037846.P8080950066378486904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037851 (A007091 (n + 1)).toNat

end

end A037846.P8080950066378486904

/-! ## A037846.P13157730670932629767

`A037882(and(1, A030494(n+1))+n)`
-/

namespace A037846.P13157730670932629767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037882 (Int.land 1 (A030494 (n + 1)) + (n : ℤ)).toNat

end

end A037846.P13157730670932629767

/-! ## A037846.P10450966061873092863

`A037882(and(1, A203878(n+1))+n)`
-/

namespace A037846.P10450966061873092863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037882 (Int.land 1 (A203878 (n + 1)) + (n : ℤ)).toNat

end

end A037846.P10450966061873092863

/-! ## A037846.P10976804859451401104

`and(A037882(n+1), A381707(n+1))`
-/

namespace A037846.P10976804859451401104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A037882 (n + 1)) (A381707 (n + 1))

end

end A037846.P10976804859451401104

/-! ## A037846.P5824068872218287028

`A037882(and(1, A072828(n+1))+n)`
-/

namespace A037846.P5824068872218287028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037882 (Int.land 1 (A072828 (n + 1)) + (n : ℤ)).toNat

end

end A037846.P5824068872218287028

/-! ## A037846.P2148580719288596593

`and(A037882(n+1), A051684(n+1))`
-/

namespace A037846.P2148580719288596593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A037882 (n + 1)) (A051684 (n + 1))

end

end A037846.P2148580719288596593

/-! ## A037846.P73154415104231470

`A037882(n+1)%A000085(n)`
-/

namespace A037846.P73154415104231470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A037882 (n + 1)) (A000085 n)

end

end A037846.P73154415104231470

/-! ## A037846.P6434395627867292248

`and(A037882(n+1), A048099(n+1))`
-/

namespace A037846.P6434395627867292248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A037882 (n + 1)) (A048099 (n + 1))

end

end A037846.P6434395627867292248

/-! ## A037846.P10838578256895165983

`and(A001189(n+1), A037882(n+1))`
-/

namespace A037846.P10838578256895165983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001189 (n + 1)) (A037882 (n + 1))

end

end A037846.P10838578256895165983

/-! ## A037846.P3988630067480629735

`and(A037882(n+1), A086827(n+1))`
-/

namespace A037846.P3988630067480629735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A037882 (n + 1)) (A086827 (n + 1))

end

end A037846.P3988630067480629735

/-!
# A037847: a(n)=Sum{d(i-1)-d(i): d(i)

The programs for A037847, there is no canonical definition to state claims against.
-/

/-! ## A037847.P11925182262353626195

`A037838(n+1)-A037856(n+1)`
-/

namespace A037847.P11925182262353626195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037838 (n + 1) - A037856 (n + 1)

end

end A037847.P11925182262353626195

/-! ## A037847.P1540660652120166967

`A037856(A030105(n+1))`
-/

namespace A037847.P1540660652120166967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037856 (A030105 (n + 1)).toNat

end

end A037847.P1540660652120166967

/-! ## A037847.P16945821373147914546

`A037848(A020657(n+2))`
-/

namespace A037847.P16945821373147914546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037848 (A020657 (n + 2)).toNat

end

end A037847.P16945821373147914546

/-! ## A037847.P7259370178166868498

`A037849(A037471(n+1))`
-/

namespace A037847.P7259370178166868498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037849 (A037471 (n + 1)).toNat

end

end A037847.P7259370178166868498

/-! ## A037847.P5807163269298131072

`A037850(A037472(n+1))`
-/

namespace A037847.P5807163269298131072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037850 (A037472 (n + 1)).toNat

end

end A037847.P5807163269298131072

/-! ## A037847.P4630263386819812775

`A037851(A007092(n+1))`
-/

namespace A037847.P4630263386819812775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037851 (A007092 (n + 1)).toNat

end

end A037847.P4630263386819812775

/-!
# A037848: a(n)=Sum{d(i-1)-d(i): d(i)

The programs for A037848, there is no canonical definition to state claims against.
-/

/-! ## A037848.P11083161170852081184

`A037839(n+1)-A037857(n+1)`
-/

namespace A037848.P11083161170852081184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037839 (n + 1) - A037857 (n + 1)

end

end A037848.P11083161170852081184

/-! ## A037848.P6933104268442450915

`A037849(A037474(n+1))`
-/

namespace A037848.P6933104268442450915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037849 (A037474 (n + 1)).toNat

end

end A037848.P6933104268442450915

/-! ## A037848.P11336505040868437146

`A037850(A037475(n+1))`
-/

namespace A037848.P11336505040868437146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037850 (A037475 (n + 1)).toNat

end

end A037848.P11336505040868437146

/-! ## A037848.P3827814167388669852

`A037857(A030106(n+1))`
-/

namespace A037848.P3827814167388669852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037857 (A030106 (n + 1)).toNat

end

end A037848.P3827814167388669852

/-! ## A037848.P15001415420632671174

`A037851(A007093(n+1))`
-/

namespace A037848.P15001415420632671174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037851 (A007093 (n + 1)).toNat

end

end A037848.P15001415420632671174

/-!
# A037849: a(n) = Sum_{d(i) < d(i-1), i=1..m} (d(i-1) - d(i)), where Sum{d(i)*8^i: i=0,1,...,m} is the base-8 representation of n.

The programs for A037849, there is no canonical definition to state claims against.
-/

/-! ## A037849.P1041451457521052992

`A037840(n+1)-A037858(n+1)`
-/

namespace A037849.P1041451457521052992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037840 (n + 1) - A037858 (n + 1)

end

end A037849.P1041451457521052992

/-! ## A037849.P15409669266987582337

`A037850(A037477(n+1))`
-/

namespace A037849.P15409669266987582337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037850 (A037477 (n + 1)).toNat

end

end A037849.P15409669266987582337

/-! ## A037849.P12274130536256544223

`A037858(A030107(n+1))`
-/

namespace A037849.P12274130536256544223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037858 (A030107 (n + 1)).toNat

end

end A037849.P12274130536256544223

/-! ## A037849.P8943542659333035600

`A037851(A007094(n+1))`
-/

namespace A037849.P8943542659333035600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037851 (A007094 (n + 1)).toNat

end

end A037849.P8943542659333035600

/-! ## A037849.P13576694830331941849

`A037840(n+1)-A037860(A007094(n+1))`
-/

namespace A037849.P13576694830331941849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037840 (n + 1) - A037860 (A007094 (n + 1)).toNat

end

end A037849.P13576694830331941849

/-! ## A037849.P4604510580102382879

`A297330(A007094(n+1))-A037858(n+1)`
-/

namespace A037849.P4604510580102382879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297330 (A007094 (n + 1)).toNat - A037858 (n + 1)

end

end A037849.P4604510580102382879

/-!
# A037850: a(n)=Sum{d(i-1)-d(i): d(i)

The programs for A037850, there is no canonical definition to state claims against.
-/

/-! ## A037850.P1649021948133330874

`A037841(n+1)-A037859(n+1)`
-/

namespace A037850.P1649021948133330874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037841 (n + 1) - A037859 (n + 1)

end

end A037850.P1649021948133330874

/-! ## A037850.P640890629894351440

`A037859(A030108(n+1))`
-/

namespace A037850.P640890629894351440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037859 (A030108 (n + 1)).toNat

end

end A037850.P640890629894351440

/-! ## A037850.P16260011519283466457

`A037851(A007095(n+1))`
-/

namespace A037850.P16260011519283466457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037851 (A007095 (n + 1)).toNat

end

end A037850.P16260011519283466457

/-! ## A037850.P16225464497619878072

`A037851(A037479(n+1))`
-/

namespace A037850.P16225464497619878072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037851 (A037479 (n + 1)).toNat

end

end A037850.P16225464497619878072

/-! ## A037850.P4803528733866344422

`A037851(record[A048379(n)+1])`
-/

namespace A037850.P4803528733866344422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048379 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037851 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A037850.P4803528733866344422

/-! ## A037850.P11910867556157026118

`A037851(record[A235049(n+2)])`
-/

namespace A037850.P11910867556157026118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235049 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037851 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A037850.P11910867556157026118

/-!
# A037851: a(n)=Sum{d(i-1)-d(i): d(i)

The programs for A037851, there is no canonical definition to state claims against.
-/

/-! ## A037851.P1960100911951839233

`A037860(A004086(n+1))`
-/

namespace A037851.P1960100911951839233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037860 (A004086 (n + 1)).toNat

end

end A037851.P1960100911951839233

/-! ## A037851.P1976682484199341279

`A297330(n+1)-A037860(n+1)`
-/

namespace A037851.P1976682484199341279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297330 (n + 1) - A037860 (n + 1)

end

end A037851.P1976682484199341279

/-! ## A037851.P2355190355222125905

`A297232(A171397(n+1))`
-/

namespace A037851.P2355190355222125905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297232 (A171397 (n + 1)).toNat

end

end A037851.P2355190355222125905

/-! ## A037851.P4423245466821921644

`A297235(A102487(n+2))`
-/

namespace A037851.P4423245466821921644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297235 (A102487 (n + 2)).toNat

end

end A037851.P4423245466821921644

/-! ## A037851.P14328278013715698327

`A297236(A102487(n+2))-A037860(n+1)`
-/

namespace A037851.P14328278013715698327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297236 (A102487 (n + 2)).toNat - A037860 (n + 1)

end

end A037851.P14328278013715698327

/-! ## A037851.P4285110131028236572

`A297238(A094823(n+1))`
-/

namespace A037851.P4285110131028236572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297238 (A094823 (n + 1)).toNat

end

end A037851.P4285110131028236572

/-! ## A037851.P18262144998730652327

`A297247(A102489(n+1))`
-/

namespace A037851.P18262144998730652327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297247 (A102489 (n + 1)).toNat

end

end A037851.P18262144998730652327

/-!
# A037852: Number of normal subgroups of dihedral group with 2n elements.

The programs for A037852, the canonical program `A037852.P11291151360236801937` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037852 has offset 1).

The definition of A037852 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A037852.P11291151360236801937

`A000005(n+1)+A176040(n+1)`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A037852

/-- `A000005(n+1)+A176040(n+1)` -/
def P11291151360236801937.Spec : Prop :=
  ∀ n, P11291151360236801937.a n = A037852 (n + 1)

theorem P11291151360236801937.correct : P11291151360236801937.Spec := by
  intro n
  simp only [A037852, Nat.add_sub_cancel]

end A037852

/-! ## A037852.P7397756266160454194

`∑{d}[n+1, gcd(6, A000040(#))]`
-/

namespace A037852.P7397756266160454194
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), Int.gcd 6 (A000040 d)

end

end A037852.P7397756266160454194

namespace A037852

/-- `∑{d}[n+1, gcd(6, A000040(#))]` -/
def P7397756266160454194.Spec : Prop :=
  ∀ n, (P7397756266160454194.a n : ℤ) = A037852 (n + 1)

end A037852

/-! ## A037852.P13106993795763369783

`Δ[A006218(n)]+3^(n%2)`
-/

namespace A037852.P13106993795763369783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (3 ^ (n % 2) : ℤ)

end

end A037852.P13106993795763369783

namespace A037852

/-- `Δ[A006218(n)]+3^(n%2)` -/
def P13106993795763369783.Spec : Prop :=
  ∀ n, P13106993795763369783.a n = A037852 (n + 1)

end A037852

/-! ## A037852.P13729583713159063486

`A094603(∏{p}[n+1, #])+∏{e}[n+1, #+1]`
-/

namespace A037852.P13729583713159063486
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094603 (∏ p ∈ Nat.primeFactors (f1 n), p) + ((∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1) : ℕ) : ℤ)

end

end A037852.P13729583713159063486

namespace A037852

/-- `A094603(∏{p}[n+1, #])+∏{e}[n+1, #+1]` -/
def P13729583713159063486.Spec : Prop :=
  ∀ n, P13729583713159063486.a n = A037852 (n + 1)

end A037852

/-! ## A037852.P1838209576579407827

`A000005(2*n+1-n)+and(3, 2*n+1)`
-/

namespace A037852.P1838209576579407827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (2 * n + 1 - n) + (Nat.land 3 (2 * n + 1) : ℤ)

end

end A037852.P1838209576579407827

namespace A037852

/-- `A000005(2*n+1-n)+and(3, 2*n+1)` -/
def P1838209576579407827.Spec : Prop :=
  ∀ n, P1838209576579407827.a n = A037852 (n + 1)

end A037852

/-! ## A037852.P9341540877280137644

`A382713(n)+A325765(n)`
-/

namespace A037852.P9341540877280137644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382713 n + A325765 n

end

end A037852.P9341540877280137644

namespace A037852

/-- `A382713(n)+A325765(n)` -/
def P9341540877280137644.Spec : Prop :=
  ∀ n, P9341540877280137644.a n = A037852 (n + 1)

end A037852

/-! ## A037852.P5655484229811790007

`A010684(n)+A000005(n+1)`
-/

namespace A037852.P5655484229811790007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010684 n + A000005 (n + 1)

end

end A037852.P5655484229811790007

namespace A037852

/-- `A010684(n)+A000005(n+1)` -/
def P5655484229811790007.Spec : Prop :=
  ∀ n, P5655484229811790007.a n = A037852 (n + 1)

end A037852

/-! ## A037852.P6272061904302031029

`A023645(n+1)+A010695(n)`
-/

namespace A037852.P6272061904302031029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023645 (n + 1) + A010695 n

end

end A037852.P6272061904302031029

namespace A037852

/-- `A023645(n+1)+A010695(n)` -/
def P6272061904302031029.Spec : Prop :=
  ∀ n, P6272061904302031029.a n = A037852 (n + 1)

end A037852

/-! ## A037852.P6839052801898509628

`A062558(n+1)+A010674(n)`
-/

namespace A037852.P6839052801898509628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062558 (n + 1) + A010674 n

end

end A037852.P6839052801898509628

namespace A037852

/-- `A062558(n+1)+A010674(n)` -/
def P6839052801898509628.Spec : Prop :=
  ∀ n, P6839052801898509628.a n = A037852 (n + 1)

end A037852

/-! ## A037852.P5802090532221502722

`A076984(n+1)+A010685(n)`
-/

namespace A037852.P5802090532221502722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076984 (n + 1) + A010685 n

end

end A037852.P5802090532221502722

namespace A037852

/-- `A076984(n+1)+A010685(n)` -/
def P5802090532221502722.Spec : Prop :=
  ∀ n, P5802090532221502722.a n = A037852 (n + 1)

end A037852

/-! ## A037852.P348402119351806434

`A334954(n+1)+A010673(n)`
-/

namespace A037852.P348402119351806434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334954 (n + 1) + A010673 n

end

end A037852.P348402119351806434

namespace A037852

/-- `A334954(n+1)+A010673(n)` -/
def P348402119351806434.Spec : Prop :=
  ∀ n, P348402119351806434.a n = A037852 (n + 1)

end A037852

/-! ## A037852.P6107517342236228627

`A373925(n+1)+A010705(n)`
-/

namespace A037852.P6107517342236228627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373925 (n + 1) + A010705 n

end

end A037852.P6107517342236228627

namespace A037852

/-- `A373925(n+1)+A010705(n)` -/
def P6107517342236228627.Spec : Prop :=
  ∀ n, P6107517342236228627.a n = A037852 (n + 1)

end A037852

/-! ## A037852.P1230723306140963725

`A010703(n)-A378216(n+1)`
-/

namespace A037852.P1230723306140963725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010703 n - A378216 (n + 1)

end

end A037852.P1230723306140963725

namespace A037852

/-- `A010703(n)-A378216(n+1)` -/
def P1230723306140963725.Spec : Prop :=
  ∀ n, P1230723306140963725.a n = A037852 (n + 1)

end A037852

/-! ## A037852.P17156414289254198044

`A000005(n+1)+Δ[A042948(n)]`
-/

namespace A037852.P17156414289254198044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042948 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) + (f1 (n + 1) - f1 n)

end

end A037852.P17156414289254198044

namespace A037852

/-- `A000005(n+1)+Δ[A042948(n)]` -/
def P17156414289254198044.Spec : Prop :=
  ∀ n, P17156414289254198044.a n = A037852 (n + 1)

end A037852

/-! ## A037852.P10735663291613095105

`A000005(n+1)+A010694(n)-1`
-/

namespace A037852.P10735663291613095105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) + (A010694 n - 1)

end

end A037852.P10735663291613095105

namespace A037852

/-- `A000005(n+1)+A010694(n)-1` -/
def P10735663291613095105.Spec : Prop :=
  ∀ n, P10735663291613095105.a n = A037852 (n + 1)

end A037852

/-! ## A037852.P7897432245162724826

`A140482(n+1)-A168277(n+1)`
-/

namespace A037852.P7897432245162724826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140482 (n + 1) - A168277 (n + 1)

end

end A037852.P7897432245162724826

namespace A037852

/-- `A140482(n+1)-A168277(n+1)` -/
def P7897432245162724826.Spec : Prop :=
  ∀ n, P7897432245162724826.a n = A037852 (n + 1)

end A037852

/-! ## A037852.P17065242075254680516

`A114003(n+1)-A373925(n+1)`
-/

namespace A037852.P17065242075254680516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114003 (n + 1) - A373925 (n + 1)

end

end A037852.P17065242075254680516

namespace A037852

/-- `A114003(n+1)-A373925(n+1)` -/
def P17065242075254680516.Spec : Prop :=
  ∀ n, P17065242075254680516.a n = A037852 (n + 1)

end A037852

/-! ## A037852.P1604315603461317510

`A000005(n+1)+2-A033999(n)`
-/

namespace A037852.P1604315603461317510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) + (2 - A033999 n)

end

end A037852.P1604315603461317510

namespace A037852

/-- `A000005(n+1)+2-A033999(n)` -/
def P1604315603461317510.Spec : Prop :=
  ∀ n, P1604315603461317510.a n = A037852 (n + 1)

end A037852

/-! ## A037852.P10117023012051133294

`A334954(n+1)+2*A000035(n)`
-/

namespace A037852.P10117023012051133294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334954 (n + 1) + 2 * A000035 n

end

end A037852.P10117023012051133294

namespace A037852

/-- `A334954(n+1)+2*A000035(n)` -/
def P10117023012051133294.Spec : Prop :=
  ∀ n, P10117023012051133294.a n = A037852 (n + 1)

end A037852

/-! ## A037852.P13045455166602850162

`A000005(n+1)+Δ[A109613(n)]+1`
-/

namespace A037852.P13045455166602850162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) + (f1 (n + 1) - f1 n + 1)

end

end A037852.P13045455166602850162

namespace A037852

/-- `A000005(n+1)+Δ[A109613(n)]+1` -/
def P13045455166602850162.Spec : Prop :=
  ∀ n, P13045455166602850162.a n = A037852 (n + 1)

end A037852

/-!
# A037853: Sum{d(i)-d(i-1): d(i)>d(i-1), i=1,...,m}, where Sum{d(i)*3^i: i=0,1,...,m} is base 3 representation of n.

The programs for A037853, there is no canonical definition to state claims against.
-/

/-! ## A037853.P8395846844487548397

`A037835(n+1)-A037844(n+1)`
-/

namespace A037853.P8395846844487548397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037835 (n + 1) - A037844 (n + 1)

end

end A037853.P8395846844487548397

/-! ## A037853.P9089559670134659066

`floor(A037835(3*n+5)/2)`
-/

namespace A037853.P9089559670134659066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A037835 (3 * n + 5) : ℚ) / 2⌋

end

end A037853.P9089559670134659066

/-! ## A037853.P17465347376186260285

`A008619(A037835(3*n+5))-A084101(4*(n+1))`
-/

namespace A037853.P17465347376186260285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A037835 (3 * n + 5)).toNat - A084101 (4 * (n + 1))

end

end A037853.P17465347376186260285

/-! ## A037853.P1277712123823301169

`A037854(A023717(n+1))`
-/

namespace A037853.P1277712123823301169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037854 (A023717 (n + 1)).toNat

end

end A037853.P1277712123823301169

/-! ## A037853.P14856626889601729401

`A037854(eq[A000038(n), A292373(n)])`
-/

namespace A037853.P14856626889601729401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292373 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037854 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A037853.P14856626889601729401

/-! ## A037853.P7305393935727174818

`A037855(A037453(n+1))`
-/

namespace A037853.P7305393935727174818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037855 (A037453 (n + 1)).toNat

end

end A037853.P7305393935727174818

/-! ## A037853.P10794559789369004906

`A037835(n+1)-A037846(A037453(n+1))`
-/

namespace A037853.P10794559789369004906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037835 (n + 1) - A037846 (A037453 (n + 1)).toNat

end

end A037853.P10794559789369004906

/-! ## A037853.P14642791135742561061

`A037856(A037454(n+1))`
-/

namespace A037853.P14642791135742561061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037856 (A037454 (n + 1)).toNat

end

end A037853.P14642791135742561061

/-! ## A037853.P16012490413287261896

`A037857(A037455(n+1))`
-/

namespace A037853.P16012490413287261896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037857 (A037455 (n + 1)).toNat

end

end A037853.P16012490413287261896

/-! ## A037853.P7233894166757112825

`A037858(A037456(n+1))`
-/

namespace A037853.P7233894166757112825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037858 (A037456 (n + 1)).toNat

end

end A037853.P7233894166757112825

/-! ## A037853.P10631112232422854608

`A037859(A037314(n+1))`
-/

namespace A037853.P10631112232422854608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037859 (A037314 (n + 1)).toNat

end

end A037853.P10631112232422854608

/-! ## A037853.P14455474617653772987

`A358217(A101278(n+1))`
-/

namespace A037853.P14455474617653772987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358217 (A101278 (n + 1)).toNat

end

end A037853.P14455474617653772987

/-!
# A037854: Sum_{i=1..m, d(i)>d(i-1)} d(i)-d(i-1), where Sum_{i=0..m} d(i)*4^i is the base 4 representation of n.

The programs for A037854, there is no canonical definition to state claims against.
-/

/-! ## A037854.P4921118846965865280

`A037836(n+1)-A037845(n+1)`
-/

namespace A037854.P4921118846965865280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037836 (n + 1) - A037845 (n + 1)

end

end A037854.P4921118846965865280

/-! ## A037854.P3577942298729180239

`A037845(A010078(n+2))`
-/

namespace A037854.P3577942298729180239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037845 (A010078 (n + 2)).toNat

end

end A037854.P3577942298729180239

/-! ## A037854.P1821001412305466516

`A037855(A037459(n+1))`
-/

namespace A037854.P1821001412305466516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037855 (A037459 (n + 1)).toNat

end

end A037854.P1821001412305466516

/-! ## A037854.P15741609736908190294

`A037855(A020654(n+2))`
-/

namespace A037854.P15741609736908190294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037855 (A020654 (n + 2)).toNat

end

end A037854.P15741609736908190294

/-! ## A037854.P10609690864703733300

`A037856(A037460(n+1))`
-/

namespace A037854.P10609690864703733300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037856 (A037460 (n + 1)).toNat

end

end A037854.P10609690864703733300

/-! ## A037854.P17698304222443666248

`A037857(A037461(n+1))`
-/

namespace A037854.P17698304222443666248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037857 (A037461 (n + 1)).toNat

end

end A037854.P17698304222443666248

/-! ## A037854.P6792030228116424416

`A037858(A037462(n+1))`
-/

namespace A037854.P6792030228116424416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037858 (A037462 (n + 1)).toNat

end

end A037854.P6792030228116424416

/-! ## A037854.P16687274627702460583

`A037859(A037463(n+1))`
-/

namespace A037854.P16687274627702460583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037859 (A037463 (n + 1)).toNat

end

end A037854.P16687274627702460583

/-! ## A037854.P9570001777436435009

`A037860(A007090(n+1))`
-/

namespace A037854.P9570001777436435009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037860 (A007090 (n + 1)).toNat

end

end A037854.P9570001777436435009

/-! ## A037854.P16798261167232846878

`A037860(A104155(n+2))`
-/

namespace A037854.P16798261167232846878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037860 (A104155 (n + 2)).toNat

end

end A037854.P16798261167232846878

/-!
# A037855: Sum{d(i)-d(i-1): d(i)>d(i-1), i=1,...,m}, where Sum{d(i)*5^i: i=0,1,...,m} is base 5 representation of n.

The programs for A037855, there is no canonical definition to state claims against.
-/

/-! ## A037855.P1652181923841223052

`A037837(n+1)-A037846(n+1)`
-/

namespace A037855.P1652181923841223052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037837 (n + 1) - A037846 (n + 1)

end

end A037855.P1652181923841223052

/-! ## A037855.P12152200525190824273

`A037856(A037465(n+1))`
-/

namespace A037855.P12152200525190824273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037856 (A037465 (n + 1)).toNat

end

end A037855.P12152200525190824273

/-! ## A037855.P12563853747314927282

`A037857(A037466(n+1))`
-/

namespace A037855.P12563853747314927282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037857 (A037466 (n + 1)).toNat

end

end A037855.P12563853747314927282

/-! ## A037855.P6447834578834991520

`A037858(A037467(n+1))`
-/

namespace A037855.P6447834578834991520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037858 (A037467 (n + 1)).toNat

end

end A037855.P6447834578834991520

/-! ## A037855.P18022038860161108188

`A037859(A037468(n+1))`
-/

namespace A037855.P18022038860161108188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037859 (A037468 (n + 1)).toNat

end

end A037855.P18022038860161108188

/-! ## A037855.P3302806527500657073

`A037860(A007091(n+1))`
-/

namespace A037855.P3302806527500657073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037860 (A007091 (n + 1)).toNat

end

end A037855.P3302806527500657073

/-! ## A037855.P2391576460666134688

`A037873(and(1, A072828(n+1))+n)`
-/

namespace A037855.P2391576460666134688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037873 (Int.land 1 (A072828 (n + 1)) + (n : ℤ)).toNat

end

end A037855.P2391576460666134688

/-! ## A037855.P11539624185567638909

`and(A037873(n+1), A051684(n+1))`
-/

namespace A037855.P11539624185567638909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A037873 (n + 1)) (A051684 (n + 1))

end

end A037855.P11539624185567638909

/-! ## A037855.P9640032708866245602

`A037873(n+1)%A000085(n)`
-/

namespace A037855.P9640032708866245602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A037873 (n + 1)) (A000085 n)

end

end A037855.P9640032708866245602

/-! ## A037855.P14072974928842546233

`and(A037873(n+1), A048099(n+1))`
-/

namespace A037855.P14072974928842546233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A037873 (n + 1)) (A048099 (n + 1))

end

end A037855.P14072974928842546233

/-! ## A037855.P11694370167781695159

`and(A001189(n+1), A037873(n+1))`
-/

namespace A037855.P11694370167781695159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001189 (n + 1)) (A037873 (n + 1))

end

end A037855.P11694370167781695159

/-! ## A037855.P1583985529990649968

`and(A037873(n+1), A086827(n+1))`
-/

namespace A037855.P1583985529990649968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A037873 (n + 1)) (A086827 (n + 1))

end

end A037855.P1583985529990649968

/-! ## A037855.P16910312542179438991

`and(A037873(n+1), A151142(n-A037873(n+1)))`
-/

namespace A037855.P16910312542179438991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A037873 (n + 1)) (A151142 ((n : ℤ) - A037873 (n + 1)).toNat)

end

end A037855.P16910312542179438991

/-! ## A037855.P18295743991171794361

`A037873(and(1, A151142(n))+n)`
-/

namespace A037855.P18295743991171794361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037873 (Int.land 1 (A151142 n) + (n : ℤ)).toNat

end

end A037855.P18295743991171794361

/-!
# A037856: Sum{d(i)-d(i-1): d(i)>d(i-1), i=1,...,m}, where Sum{d(i)*6^i: i=0,1,...,m} is base 6 representation of n.

The programs for A037856, there is no canonical definition to state claims against.
-/

/-! ## A037856.P16236157004160828861

`A037838(n+1)-A037847(n+1)`
-/

namespace A037856.P16236157004160828861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037838 (n + 1) - A037847 (n + 1)

end

end A037856.P16236157004160828861

/-! ## A037856.P17061793005452094463

`A037857(A020657(n+2))`
-/

namespace A037856.P17061793005452094463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037857 (A020657 (n + 2)).toNat

end

end A037856.P17061793005452094463

/-! ## A037856.P4821464901744478996

`A037858(A037471(n+1))`
-/

namespace A037856.P4821464901744478996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037858 (A037471 (n + 1)).toNat

end

end A037856.P4821464901744478996

/-! ## A037856.P15846730099622714579

`A037859(A037472(n+1))`
-/

namespace A037856.P15846730099622714579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037859 (A037472 (n + 1)).toNat

end

end A037856.P15846730099622714579

/-! ## A037856.P12053567620280835940

`A037860(A007092(n+1))`
-/

namespace A037856.P12053567620280835940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037860 (A007092 (n + 1)).toNat

end

end A037856.P12053567620280835940

/-!
# A037857: Sum{d(i)-d(i-1): d(i)>d(i-1), i=1,...,m}, where Sum{d(i)*7^i: i=0,1,...,m} is base 7 representation of n.

The programs for A037857, there is no canonical definition to state claims against.
-/

/-! ## A037857.P6731070089121051925

`A037839(n+1)-A037848(n+1)`
-/

namespace A037857.P6731070089121051925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037839 (n + 1) - A037848 (n + 1)

end

end A037857.P6731070089121051925

/-! ## A037857.P13137568602142454913

`A037858(A037474(n+1))`
-/

namespace A037857.P13137568602142454913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037858 (A037474 (n + 1)).toNat

end

end A037857.P13137568602142454913

/-! ## A037857.P17952180509970484380

`A037859(A037475(n+1))`
-/

namespace A037857.P17952180509970484380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037859 (A037475 (n + 1)).toNat

end

end A037857.P17952180509970484380

/-! ## A037857.P8273069585603317774

`A037860(A007093(n+1))`
-/

namespace A037857.P8273069585603317774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037860 (A007093 (n + 1)).toNat

end

end A037857.P8273069585603317774

/-!
# A037858: Sum{d(i)-d(i-1): d(i)>d(i-1), i=1,...,m}, where Sum{d(i)*8^i: i=0,1,...,m} is base 8 representation of n.

The programs for A037858, there is no canonical definition to state claims against.
-/

/-! ## A037858.P11164271488618169176

`A037840(n+1)-A037849(n+1)`
-/

namespace A037858.P11164271488618169176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037840 (n + 1) - A037849 (n + 1)

end

end A037858.P11164271488618169176

/-! ## A037858.P9194776918946447163

`A037859(A037477(n+1))`
-/

namespace A037858.P9194776918946447163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037859 (A037477 (n + 1)).toNat

end

end A037858.P9194776918946447163

/-! ## A037858.P12065494077234182061

`A037840(n+1)-A037850(A037477(n+1))`
-/

namespace A037858.P12065494077234182061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037840 (n + 1) - A037850 (A037477 (n + 1)).toNat

end

end A037858.P12065494077234182061

/-! ## A037858.P14172843119943085216

`A037860(A007094(n+1))`
-/

namespace A037858.P14172843119943085216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037860 (A007094 (n + 1)).toNat

end

end A037858.P14172843119943085216

/-! ## A037858.P5642023190168778081

`A037840(n+1)-A037851(A007094(n+1))`
-/

namespace A037858.P5642023190168778081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037840 (n + 1) - A037851 (A007094 (n + 1)).toNat

end

end A037858.P5642023190168778081

/-! ## A037858.P15888992714082188624

`A297330(A007094(n+1))-A037849(n+1)`
-/

namespace A037858.P15888992714082188624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297330 (A007094 (n + 1)).toNat - A037849 (n + 1)

end

end A037858.P15888992714082188624

/-!
# A037859: Sum{d(i)-d(i-1): d(i)>d(i-1), i=1,...,m}, where Sum{d(i)*9^i: i=0,1,...,m} is base 9 representation of n.

The programs for A037859, there is no canonical definition to state claims against.
-/

/-! ## A037859.P10380591023509161050

`A037841(n+1)-A037850(n+1)`
-/

namespace A037859.P10380591023509161050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037841 (n + 1) - A037850 (n + 1)

end

end A037859.P10380591023509161050

/-! ## A037859.P1224936413403418327

`A037860(A007095(n+1))`
-/

namespace A037859.P1224936413403418327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037860 (A007095 (n + 1)).toNat

end

end A037859.P1224936413403418327

/-! ## A037859.P16767737220639721960

`A037860(A037479(n+1))`
-/

namespace A037859.P16767737220639721960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037860 (A037479 (n + 1)).toNat

end

end A037859.P16767737220639721960

/-! ## A037859.P17908626522390819286

`A037860(A359098(n+2))`
-/

namespace A037859.P17908626522390819286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037860 (A359098 (n + 2)).toNat

end

end A037859.P17908626522390819286

/-! ## A037859.P11735298737683640188

`A037860(record[A048379(n+1)])`
-/

namespace A037859.P11735298737683640188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048379 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037860 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A037859.P11735298737683640188

/-!
# A037860: Sum{d(i)-d(i-1): d(i)>d(i-1), i=1,...,m}, where Sum{d(i)*10^i: i=0,1,...,m} is base 10 representation of n.

The programs for A037860, there is no canonical definition to state claims against.
-/

/-! ## A037860.P16965444361352190086

`A297330(n+1)-A037851(n+1)`
-/

namespace A037860.P16965444361352190086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297330 (n + 1) - A037851 (n + 1)

end

end A037860.P16965444361352190086

/-! ## A037860.P15753368260108608246

`A037851(n+1)-A055017(A073729(n+1))`
-/

namespace A037860.P15753368260108608246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037851 (n + 1) - A055017 (A073729 (n + 1)).toNat

end

end A037860.P15753368260108608246

/-! ## A037860.P10213600533571768384

`A297231(A171397(n+1))`
-/

namespace A037860.P10213600533571768384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297231 (A171397 (n + 1)).toNat

end

end A037860.P10213600533571768384

/-! ## A037860.P11647643716106368170

`A297236(A102487(n+2))-A037851(n+1)`
-/

namespace A037860.P11647643716106368170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297236 (A102487 (n + 2)).toNat - A037851 (n + 1)

end

end A037860.P11647643716106368170

/-! ## A037860.P4924079400111522529

`A037851(A061601(2*n+1)+n)`
-/

namespace A037860.P4924079400111522529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037851 (A061601 (2 * n + 1) + (n : ℤ)).toNat

end

end A037860.P4924079400111522529

/-! ## A037860.P13017832598297418327

`A297237(A094823(n+1))`
-/

namespace A037860.P13017832598297418327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297237 (A094823 (n + 1)).toNat

end

end A037860.P13017832598297418327

/-! ## A037860.P13396097065192260619

`A297246(A102489(n+1))`
-/

namespace A037860.P13396097065192260619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297246 (A102489 (n + 1)).toNat

end

end A037860.P13396097065192260619

/-! ## A037860.P14761370088399142323

`A297248(A102489(n+1))-A037851(n+1)`
-/

namespace A037860.P14761370088399142323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297248 (A102489 (n + 1)).toNat - A037851 (n + 1)

end

end A037860.P14761370088399142323

/-! ## A037860.P13740195479815357612

`A297330(n+1)-A297247(A102489(n+1))`
-/

namespace A037860.P13740195479815357612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297330 (n + 1) - A297247 (A102489 (n + 1)).toNat

end

end A037860.P13740195479815357612

/-!
# A037861: (Number of 0's) - (number of 1's) in the base-2 representation of n.

The programs for A037861, the canonical program `A037861.P603769739827553154` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037861 has offset 0).

The definition of A037861 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A037861.P603769739827553154

`A023416(n)-A000120(n)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A037861

/-- `A023416(n)-A000120(n)` -/
def P603769739827553154.Spec : Prop :=
  ∀ n, P603769739827553154.a n = A037861 n

theorem P603769739827553154.correct : P603769739827553154.Spec := by
  intro n
  simp only [A037861]

end A037861

/-! ## A037861.P5798372177651616341

`a(floor(n/2))+a(n%2)` with `a(0)=1, a(1)=-1`
-/

namespace A037861.P5798372177651616341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, -1] fun n a =>
  a ⌊(n : ℚ) / 2⌋.toNat + a (n % 2)

end

end A037861.P5798372177651616341

namespace A037861

/-- `a(floor(n/2))+a(n%2)` -/
def P5798372177651616341.Spec : Prop :=
  ∀ n, P5798372177651616341.a n = A037861 n

end A037861

/-! ## A037861.P14486937226800896582

`∑{digits}[A169965(n+1), 1-#]`
-/

namespace A037861.P14486937226800896582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169965 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => 1 - (x : ℤ)).sum

end

end A037861.P14486937226800896582

namespace A037861

/-- `∑{digits}[A169965(n+1), 1-#]` -/
def P14486937226800896582.Spec : Prop :=
  ∀ n, P14486937226800896582.a n = A037861 n

end A037861

/-! ## A037861.P1047500068945072483

`A009001(2*n)+a(floor(n/2))` with `a(0)=1, a(1)=-1, a(2)=0`
-/

namespace A037861.P1047500068945072483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, -1, 0] fun n a =>
  A009001 (2 * n) + a ⌊(n : ℚ) / 2⌋.toNat

end

end A037861.P1047500068945072483

namespace A037861

/-- `A009001(2*n)+a(floor(n/2))` -/
def P1047500068945072483.Spec : Prop :=
  ∀ n, P1047500068945072483.a n = A037861 n

end A037861

/-! ## A037861.P6134752050169404241

`A000007(n)-A145037(n)`
-/

namespace A037861.P6134752050169404241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n - A145037 n

end

end A037861.P6134752050169404241

namespace A037861

/-- `A000007(n)-A145037(n)` -/
def P6134752050169404241.Spec : Prop :=
  ∀ n, P6134752050169404241.a n = A037861 n

end A037861

/-! ## A037861.P8027764405514363682

`A023416(n)-log2(A001316(n))`
-/

namespace A037861.P8027764405514363682
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A023416 n : ℝ) - Real.logb 2 (A001316 n : ℝ)

end

end A037861.P8027764405514363682

namespace A037861

/-- `A023416(n)-log2(A001316(n))` -/
def P8027764405514363682.Spec : Prop :=
  ∀ n, P8027764405514363682.a n = (A037861 n : ℝ)

end A037861

/-! ## A037861.P15976663643640180033

`A023416(n)-∑[A088705(n)]`
-/

namespace A037861.P15976663643640180033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088705 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A037861.P15976663643640180033

namespace A037861

/-- `A023416(n)-∑[A088705(n)]` -/
def P15976663643640180033.Spec : Prop :=
  ∀ n, P15976663643640180033.a n = A037861 n

end A037861

/-! ## A037861.P10105436067407170563

`A054977(n)-(A145037(n)+1)`
-/

namespace A037861.P10105436067407170563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n - (A145037 n + 1)

end

end A037861.P10105436067407170563

namespace A037861

/-- `A054977(n)-(A145037(n)+1)` -/
def P10105436067407170563.Spec : Prop :=
  ∀ n, P10105436067407170563.a n = A037861 n

end A037861

/-! ## A037861.P5813803224466886178

`1-(A145037(n)+A057427(n))`
-/

namespace A037861.P5813803224466886178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A145037 n + A057427 n)

end

end A037861.P5813803224466886178

namespace A037861

/-- `1-(A145037(n)+A057427(n))` -/
def P5813803224466886178.Spec : Prop :=
  ∀ n, P5813803224466886178.a n = A037861 n

end A037861

/-! ## A037861.P4118333514895284925

`A057428(n)+1-A145037(n)`
-/

namespace A037861.P4118333514895284925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n + (1 - A145037 n)

end

end A037861.P4118333514895284925

namespace A037861

/-- `A057428(n)+1-A145037(n)` -/
def P4118333514895284925.Spec : Prop :=
  ∀ n, P4118333514895284925.a n = A037861 n

end A037861

/-! ## A037861.P1552204354285493749

`A070939(n)-2*A000120(n)`
-/

namespace A037861.P1552204354285493749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 n - 2 * A000120 n

end

end A037861.P1552204354285493749

namespace A037861

/-- `A070939(n)-2*A000120(n)` -/
def P1552204354285493749.Spec : Prop :=
  ∀ n, P1552204354285493749.a n = A037861 n

end A037861

/-! ## A037861.P4866625086113068811

`2*A023416(n)-A070939(n)`
-/

namespace A037861.P4866625086113068811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A023416 n - A070939 n

end

end A037861.P4866625086113068811

namespace A037861

/-- `2*A023416(n)-A070939(n)` -/
def P4866625086113068811.Spec : Prop :=
  ∀ n, P4866625086113068811.a n = A037861 n

end A037861

/-! ## A037861.P11982370113355333435

`A000038(n)/2-A145037(n)`
-/

namespace A037861.P11982370113355333435
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000038 n : ℚ) / 2 - (A145037 n : ℚ)

end

end A037861.P11982370113355333435

namespace A037861

/-- `A000038(n)/2-A145037(n)` -/
def P11982370113355333435.Spec : Prop :=
  ∀ n, P11982370113355333435.a n = (A037861 n : ℚ)

end A037861

/-! ## A037861.P6137167518678061544

`∑{digits}[A007088(n), A008683(#+1)]`
-/

namespace A037861.P6137167518678061544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A008683 (x + 1)).sum

end

end A037861.P6137167518678061544

namespace A037861

/-- `∑{digits}[A007088(n), A008683(#+1)]` -/
def P6137167518678061544.Spec : Prop :=
  ∀ n, P6137167518678061544.a n = A037861 n

end A037861

/-! ## A037861.P12882097799427984975

`∑{digits}[A007088(n), 1-A002378(#)]`
-/

namespace A037861.P12882097799427984975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => 1 - A002378 x).sum

end

end A037861.P12882097799427984975

namespace A037861

/-- `∑{digits}[A007088(n), 1-A002378(#)]` -/
def P12882097799427984975.Spec : Prop :=
  ∀ n, P12882097799427984975.a n = A037861 n

end A037861

/-! ## A037861.P6706754746546682631

`∑{digits}[A007088(n), 1-A005843(#)]`
-/

namespace A037861.P6706754746546682631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => 1 - A005843 x).sum

end

end A037861.P6706754746546682631

namespace A037861

/-- `∑{digits}[A007088(n), 1-A005843(#)]` -/
def P6706754746546682631.Spec : Prop :=
  ∀ n, P6706754746546682631.a n = A037861 n

end A037861

/-! ## A037861.P10299507739067239631

`∑{digits}[A007088(n), 2-A058695(#)]`
-/

namespace A037861.P10299507739067239631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => 2 - A058695 x).sum

end

end A037861.P10299507739067239631

namespace A037861

/-- `∑{digits}[A007088(n), 2-A058695(#)]` -/
def P10299507739067239631.Spec : Prop :=
  ∀ n, P10299507739067239631.a n = A037861 n

end A037861

/-! ## A037861.P3742194956693774708

`∑{digits}[A007088(n), A062357(2-#)]`
-/

namespace A037861.P3742194956693774708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A062357 (2 - x)).sum

end

end A037861.P3742194956693774708

namespace A037861

/-- `∑{digits}[A007088(n), A062357(2-#)]` -/
def P3742194956693774708.Spec : Prop :=
  ∀ n, P3742194956693774708.a n = A037861 n

end A037861

/-! ## A037861.P17708683740202322468

`A000120(A035327(n))-A000120(n)`
-/

namespace A037861.P17708683740202322468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A035327 n).toNat - A000120 n

end

end A037861.P17708683740202322468

namespace A037861

/-- `A000120(A035327(n))-A000120(n)` -/
def P17708683740202322468.Spec : Prop :=
  ∀ n, P17708683740202322468.a n = A037861 n

end A037861

/-! ## A037861.P4491835383753728186

`A070939(n)-A322131(A000120(n))`
-/

namespace A037861.P4491835383753728186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 n - A322131 (A000120 n).toNat

end

end A037861.P4491835383753728186

namespace A037861

/-- `A070939(n)-A322131(A000120(n))` -/
def P4491835383753728186.Spec : Prop :=
  ∀ n, P4491835383753728186.a n = A037861 n

end A037861

/-!
# A037862: a(n)=(number of digits <=1)-(number of digits >1) in base 3 representation of n.

The programs for A037862, the canonical program `A037862.P1436881661592222965` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037862 has offset 1).

The definition of A037862 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A081603, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A037862.P1436881661592222965

`A081604(n+1)-2*A081603(n+1)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A037862

/-- `A081604(n+1)-2*A081603(n+1)` -/
def P1436881661592222965.Spec : Prop :=
  ∀ n, P1436881661592222965.a n = A037862 (n + 1)

theorem P1436881661592222965.correct : P1436881661592222965.Spec := by
  intro n
  simp only [A037862, Nat.add_sub_cancel]

end A037862

/-! ## A037862.P15012496789251554924

`∑{digits}[A007089(n+1), A009001(#)]`
-/

namespace A037862.P15012496789251554924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A009001 x).sum

end

end A037862.P15012496789251554924

namespace A037862

/-- `∑{digits}[A007089(n+1), A009001(#)]` -/
def P15012496789251554924.Spec : Prop :=
  ∀ n, P15012496789251554924.a n = A037862 (n + 1)

end A037862

/-! ## A037862.P5451025321257579206

`∑{digits}[A007089(n+1), A065357(#)]`
-/

namespace A037862.P5451025321257579206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A065357 x).sum

end

end A037862.P5451025321257579206

namespace A037862

/-- `∑{digits}[A007089(n+1), A065357(#)]` -/
def P5451025321257579206.Spec : Prop :=
  ∀ n, P5451025321257579206.a n = A037862 (n + 1)

end A037862

/-! ## A037862.P1824314497354368337

`∑{digits}[A007089(n+1), A000034(#)-#]`
-/

namespace A037862.P1824314497354368337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A000034 x - (x : ℤ)).sum

end

end A037862.P1824314497354368337

namespace A037862

/-- `∑{digits}[A007089(n+1), A000034(#)-#]` -/
def P1824314497354368337.Spec : Prop :=
  ∀ n, P1824314497354368337.a n = A037862 (n + 1)

end A037862

/-! ## A037862.P3787588632689269055

`∑{digits}[A007089(n+1), A008683(A011782(#))]`
-/

namespace A037862.P3787588632689269055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A008683 (A011782 x).toNat).sum

end

end A037862.P3787588632689269055

namespace A037862

/-- `∑{digits}[A007089(n+1), A008683(A011782(#))]` -/
def P3787588632689269055.Spec : Prop :=
  ∀ n, P3787588632689269055.a n = A037862 (n + 1)

end A037862

/-! ## A037862.P13409743953561343016

`∑{digits}[A007089(n+1), A008683(A149563(#))]`
-/

namespace A037862.P13409743953561343016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A008683 (A149563 x).toNat).sum

end

end A037862.P13409743953561343016

namespace A037862

/-- `∑{digits}[A007089(n+1), A008683(A149563(#))]` -/
def P13409743953561343016.Spec : Prop :=
  ∀ n, P13409743953561343016.a n = A037862 (n + 1)

end A037862

/-! ## A037862.P5805487792325044436

`∑{digits}[A007089(n+1), A008683(A326977(#))]`
-/

namespace A037862.P5805487792325044436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A008683 (A326977 x).toNat).sum

end

end A037862.P5805487792325044436

namespace A037862

/-- `∑{digits}[A007089(n+1), A008683(A326977(#))]` -/
def P5805487792325044436.Spec : Prop :=
  ∀ n, P5805487792325044436.a n = A037862 (n + 1)

end A037862

/-! ## A037862.P6211289020066167039

`∑{digits}[A007089(n+1), A008683(A000120(#+1))]`
-/

namespace A037862.P6211289020066167039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A008683 (A000120 (x + 1)).toNat).sum

end

end A037862.P6211289020066167039

namespace A037862

/-- `∑{digits}[A007089(n+1), A008683(A000120(#+1))]` -/
def P6211289020066167039.Spec : Prop :=
  ∀ n, P6211289020066167039.a n = A037862 (n + 1)

end A037862

/-! ## A037862.P1225330832654500770

`∑{digits}[A007089(n+1), A008683(A001045(#+1))]`
-/

namespace A037862.P1225330832654500770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A008683 (A001045 (x + 1)).toNat).sum

end

end A037862.P1225330832654500770

namespace A037862

/-- `∑{digits}[A007089(n+1), A008683(A001045(#+1))]` -/
def P1225330832654500770.Spec : Prop :=
  ∀ n, P1225330832654500770.a n = A037862 (n + 1)

end A037862

/-! ## A037862.P10212796581605771393

`∑{digits}[A007089(n+1), A008683(A007088(#+1))]`
-/

namespace A037862.P10212796581605771393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A008683 (A007088 (x + 1)).toNat).sum

end

end A037862.P10212796581605771393

namespace A037862

/-- `∑{digits}[A007089(n+1), A008683(A007088(#+1))]` -/
def P10212796581605771393.Spec : Prop :=
  ∀ n, P10212796581605771393.a n = A037862 (n + 1)

end A037862

/-! ## A037862.P10803603168150767771

`∑{digits}[2*A007089(n+1), A015643(A007089(#))]`
-/

namespace A037862.P10803603168150767771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A007089 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A015643 (A007089 x).toNat).sum

end

end A037862.P10803603168150767771

namespace A037862

/-- `∑{digits}[2*A007089(n+1), A015643(A007089(#))]` -/
def P10803603168150767771.Spec : Prop :=
  ∀ n, P10803603168150767771.a n = A037862 (n + 1)

end A037862

/-! ## A037862.P9330401922010504704

`A062756(n+1)+A077267(n+1)-A081603(n+1)`
-/

namespace A037862.P9330401922010504704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062756 (n + 1) + (A077267 (n + 1) - A081603 (n + 1))

end

end A037862.P9330401922010504704

namespace A037862

/-- `A062756(n+1)+A077267(n+1)-A081603(n+1)` -/
def P9330401922010504704.Spec : Prop :=
  ∀ n, P9330401922010504704.a n = A037862 (n + 1)

end A037862

/-! ## A037862.P17069826547191339935

`A037863(A023717(n+1))`
-/

namespace A037862.P17069826547191339935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037863 (A023717 (n + 1)).toNat

end

end A037862.P17069826547191339935

namespace A037862

/-- `A037863(A023717(n+1))` -/
def P17069826547191339935.Spec : Prop :=
  ∀ n, P17069826547191339935.a n = A037862 (n + 1)

end A037862

/-! ## A037862.P13632935777227125219

`A037863(A023713(n+1)+1)`
-/

namespace A037862.P13632935777227125219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037863 (A023713 (n + 1) + 1).toNat

end

end A037862.P13632935777227125219

namespace A037862

/-- `A037863(A023713(n+1)+1)` -/
def P13632935777227125219.Spec : Prop :=
  ∀ n, P13632935777227125219.a n = A037862 (n + 1)

end A037862

/-! ## A037862.P12189032284360337101

`A037863(A023713(n+2))`
-/

namespace A037862.P12189032284360337101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037863 (A023713 (n + 2)).toNat

end

end A037862.P12189032284360337101

namespace A037862

/-- `A037863(A023713(n+2))` -/
def P12189032284360337101.Spec : Prop :=
  ∀ n, P12189032284360337101.a n = A037862 (n + 1)

end A037862

/-!
# A037863: a(n) = (number of digits <=1) - (number of digits >1) in base 4 representation of n.

The programs for A037863, the canonical program `A037863.P16838511849426806167` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037863 has offset 1).

The definition of A037863 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A110591, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A037863.P16838511849426806167

`A110591(n+1)-2*A139352(n+1)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A037863

/-- `A110591(n+1)-2*A139352(n+1)` -/
def P16838511849426806167.Spec : Prop :=
  ∀ n, P16838511849426806167.a n = A037863 (n + 1)

theorem P16838511849426806167.correct : P16838511849426806167.Spec := by
  intro n
  simp only [A037863, Nat.add_sub_cancel]

end A037863

/-! ## A037863.P9120469163750463747

`∑{digits}[A007090(n+1), A077953(#)]`
-/

namespace A037863.P9120469163750463747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007090 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A077953 x).sum

end

end A037863.P9120469163750463747

namespace A037863

/-- `∑{digits}[A007090(n+1), A077953(#)]` -/
def P9120469163750463747.Spec : Prop :=
  ∀ n, P9120469163750463747.a n = A037863 (n + 1)

end A037863

/-! ## A037863.P2085278436037297914

`ceil(A065359(n+1)+A037861(n+1)/2)`
-/

namespace A037863.P2085278436037297914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A065359 (n + 1) : ℚ) + (A037861 (n + 1) : ℚ) / 2⌉

end

end A037863.P2085278436037297914

namespace A037863

/-- `ceil(A065359(n+1)+A037861(n+1)/2)` -/
def P2085278436037297914.Spec : Prop :=
  ∀ n, P2085278436037297914.a n = A037863 (n + 1)

end A037863

/-! ## A037863.P10705525065292574090

`∑{digits}[A007090(n+1), A256269(A029920(#))]`
-/

namespace A037863.P10705525065292574090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007090 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A256269 (A029920 x).toNat).sum

end

end A037863.P10705525065292574090

namespace A037863

/-- `∑{digits}[A007090(n+1), A256269(A029920(#))]` -/
def P10705525065292574090.Spec : Prop :=
  ∀ n, P10705525065292574090.a n = A037863 (n + 1)

end A037863

/-! ## A037863.P172159608808104499

`∑{digits}[A007090(n+1), A008683(A001045(#+1))]`
-/

namespace A037863.P172159608808104499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007090 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A008683 (A001045 (x + 1)).toNat).sum

end

end A037863.P172159608808104499

namespace A037863

/-- `∑{digits}[A007090(n+1), A008683(A001045(#+1))]` -/
def P172159608808104499.Spec : Prop :=
  ∀ n, P172159608808104499.a n = A037863 (n + 1)

end A037863

/-! ## A037863.P11390378524390976357

`∑{digits}[A007090(n+1), 3-A001316(A000984(#))]`
-/

namespace A037863.P11390378524390976357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007090 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => 3 - A001316 (A000984 x).toNat).sum

end

end A037863.P11390378524390976357

namespace A037863

/-- `∑{digits}[A007090(n+1), 3-A001316(A000984(#))]` -/
def P11390378524390976357.Spec : Prop :=
  ∀ n, P11390378524390976357.a n = A037863 (n + 1)

end A037863

/-! ## A037863.P8925391128734560167

`∑{digits}[A007090(n+1), 3-A001316(A001790(#))]`
-/

namespace A037863.P8925391128734560167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007090 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => 3 - A001316 (A001790 x).toNat).sum

end

end A037863.P8925391128734560167

namespace A037863

/-- `∑{digits}[A007090(n+1), 3-A001316(A001790(#))]` -/
def P8925391128734560167.Spec : Prop :=
  ∀ n, P8925391128734560167.a n = A037863 (n + 1)

end A037863

/-! ## A037863.P14859183254906101100

`∑{digits}[A007090(n+1), 1-A246003(A000010(#+1)+1)]`
-/

namespace A037863.P14859183254906101100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007090 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => 1 - A246003 (A000010 (x + 1) + 1).toNat).sum

end

end A037863.P14859183254906101100

namespace A037863

/-- `∑{digits}[A007090(n+1), 1-A246003(A000010(#+1)+1)]` -/
def P14859183254906101100.Spec : Prop :=
  ∀ n, P14859183254906101100.a n = A037863 (n + 1)

end A037863

/-! ## A037863.P4863480423542134683

`∑{digits}[A007090(n+1), A001222(A001158(#+1)+1)-#]`
-/

namespace A037863.P4863480423542134683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007090 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A001222 (A001158 (x + 1) + 1).toNat - (x : ℤ)).sum

end

end A037863.P4863480423542134683

namespace A037863

/-- `∑{digits}[A007090(n+1), A001222(A001158(#+1)+1)-#]` -/
def P4863480423542134683.Spec : Prop :=
  ∀ n, P4863480423542134683.a n = A037863 (n + 1)

end A037863

/-! ## A037863.P4902423152777991440

`A037864(A023729(n+2))`
-/

namespace A037863.P4902423152777991440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037864 (A023729 (n + 2)).toNat

end

end A037863.P4902423152777991440

namespace A037863

/-- `A037864(A023729(n+2))` -/
def P4902423152777991440.Spec : Prop :=
  ∀ n, P4902423152777991440.a n = A037863 (n + 1)

end A037863

/-! ## A037863.P13765704320754234454

`A037864(A023725(n+1)+1)`
-/

namespace A037863.P13765704320754234454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037864 (A023725 (n + 1) + 1).toNat

end

end A037863.P13765704320754234454

namespace A037863

/-- `A037864(A023725(n+1)+1)` -/
def P13765704320754234454.Spec : Prop :=
  ∀ n, P13765704320754234454.a n = A037863 (n + 1)

end A037863

/-! ## A037863.P16934680076842738575

`A037864(A023725(n+2))`
-/

namespace A037863.P16934680076842738575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037864 (A023725 (n + 2)).toNat

end

end A037863.P16934680076842738575

namespace A037863

/-- `A037864(A023725(n+2))` -/
def P16934680076842738575.Spec : Prop :=
  ∀ n, P16934680076842738575.a n = A037863 (n + 1)

end A037863

/-! ## A037863.P1546913509341636456

`A037868(A005823(n+2))`
-/

namespace A037863.P1546913509341636456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037868 (A005823 (n + 2)).toNat

end

end A037863.P1546913509341636456

namespace A037863

/-- `A037868(A005823(n+2))` -/
def P1546913509341636456.Spec : Prop :=
  ∀ n, P1546913509341636456.a n = A037863 (n + 1)

end A037863

/-! ## A037863.P16351444079790546385

`A037868(A055247(n+2))`
-/

namespace A037863.P16351444079790546385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037868 (A055247 (n + 2)).toNat

end

end A037863.P16351444079790546385

namespace A037863

/-- `A037868(A055247(n+2))` -/
def P16351444079790546385.Spec : Prop :=
  ∀ n, P16351444079790546385.a n = A037863 (n + 1)

end A037863

/-!
# A037864: a(n)=(number of digits <=2)-(number of digits >2) in base 5 representation of n.

The programs for A037864, the canonical program `A037864.P18080796445639344832` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037864 has offset 1).

The definition of A037864 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4299 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A037864.P18080796445639344832

`A037865(A037465(n+1))`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A037864

/-- `A037865(A037465(n+1))` -/
def P18080796445639344832.Spec : Prop :=
  ∀ n, P18080796445639344832.a n = A037864 (n + 1)

theorem P18080796445639344832.correct : P18080796445639344832.Spec := by
  intro n
  simp only [A037864, Nat.add_sub_cancel]

end A037864

/-! ## A037864.P4675517019245145679

`A037869(A080228(n+2))`
-/

namespace A037864.P4675517019245145679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037869 (A080228 (n + 2)).toNat

end

end A037864.P4675517019245145679

namespace A037864

/-- `A037869(A080228(n+2))` -/
def P4675517019245145679.Spec : Prop :=
  ∀ n, P4675517019245145679.a n = A037864 (n + 1)

end A037864

/-! ## A037864.P15003387403294405282

`A037868(A037468(n)+A037468(n)+1)`
-/

namespace A037864.P15003387403294405282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037868 (A037468 n + (A037468 n + 1)).toNat

end

end A037864.P15003387403294405282

namespace A037864

/-- `A037868(A037468(n)+A037468(n)+1)` -/
def P15003387403294405282.Spec : Prop :=
  ∀ n, P15003387403294405282.a n = A037864 (n + 1)

end A037864

/-! ## A037864.P6180350161396874279

`A037869(A014263(n+2))`
-/

namespace A037864.P6180350161396874279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037869 (A014263 (n + 2)).toNat

end

end A037864.P6180350161396874279

namespace A037864

/-- `A037869(A014263(n+2))` -/
def P6180350161396874279.Spec : Prop :=
  ∀ n, P6180350161396874279.a n = A037864 (n + 1)

end A037864

/-! ## A037864.P3082952943331701889

`A037868(2*A037468(n+1))`
-/

namespace A037864.P3082952943331701889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037868 (2 * A037468 (n + 1)).toNat

end

end A037864.P3082952943331701889

namespace A037864

/-- `A037868(2*A037468(n+1))` -/
def P3082952943331701889.Spec : Prop :=
  ∀ n, P3082952943331701889.a n = A037864 (n + 1)

end A037864

/-!
# A037865: a(n)=(number of digits <=2)-(number of digits >2) in base 6 representation of n.

The programs for A037865, the canonical program `A037865.P13548342733616205246` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037865 has offset 1).

The definition of A037865 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4104 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A037865.P13548342733616205246

`A037866(A249102(n+1)+1)`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A037865

/-- `A037866(A249102(n+1)+1)` -/
def P13548342733616205246.Spec : Prop :=
  ∀ n, P13548342733616205246.a n = A037865 (n + 1)

theorem P13548342733616205246.correct : P13548342733616205246.Spec := by
  intro n
  simp only [A037865, Nat.add_sub_cancel]

end A037865

/-! ## A037865.P5477601977697767923

`A037866(A249102(n+2))`
-/

namespace A037865.P5477601977697767923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037866 (A249102 (n + 2)).toNat

end

end A037865.P5477601977697767923

namespace A037865

/-- `A037866(A249102(n+2))` -/
def P5477601977697767923.Spec : Prop :=
  ∀ n, P5477601977697767923.a n = A037865 (n + 1)

end A037865

/-! ## A037865.P2622881812081850194

`A037869(A084984(n+2))`
-/

namespace A037865.P2622881812081850194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037869 (A084984 (n + 2)).toNat

end

end A037865.P2622881812081850194

namespace A037865

/-- `A037869(A084984(n+2))` -/
def P2622881812081850194.Spec : Prop :=
  ∀ n, P2622881812081850194.a n = A037865 (n + 1)

end A037865

/-! ## A037865.P7304087884284044722

`A037869(A276138(n+1)+1)`
-/

namespace A037865.P7304087884284044722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037869 (A276138 (n + 1) + 1).toNat

end

end A037865.P7304087884284044722

namespace A037865

/-- `A037869(A276138(n+1)+1)` -/
def P7304087884284044722.Spec : Prop :=
  ∀ n, P7304087884284044722.a n = A037865 (n + 1)

end A037865

/-! ## A037865.P10285707853772986651

`A037869(A276138(n+2))`
-/

namespace A037865.P10285707853772986651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037869 (A276138 (n + 2)).toNat

end

end A037865.P10285707853772986651

namespace A037865

/-- `A037869(A276138(n+2))` -/
def P10285707853772986651.Spec : Prop :=
  ∀ n, P10285707853772986651.a n = A037865 (n + 1)

end A037865

/-! ## A037865.P8042131299130787639

`A037869(A137386(n+2))`
-/

namespace A037865.P8042131299130787639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037869 (A137386 (n + 2)).toNat

end

end A037865.P8042131299130787639

namespace A037865

/-- `A037869(A137386(n+2))` -/
def P8042131299130787639.Spec : Prop :=
  ∀ n, P8042131299130787639.a n = A037865 (n + 1)

end A037865

/-! ## A037865.P3399319114565352027

`A037869(A276137(n+2))`
-/

namespace A037865.P3399319114565352027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037869 (A276137 (n + 2)).toNat

end

end A037865.P3399319114565352027

namespace A037865

/-- `A037869(A276137(n+2))` -/
def P3399319114565352027.Spec : Prop :=
  ∀ n, P3399319114565352027.a n = A037865 (n + 1)

end A037865

/-!
# A037866: a(n)=(number of digits <=3)-(number of digits >3) in base 7 representation of n.

The programs for A037866, the canonical program `A037866.P11074449320022151340` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037866 has offset 1).

The definition of A037866 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6041 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A037866.P11074449320022151340

`A037867(A037474(n+1))`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A037866

/-- `A037867(A037474(n+1))` -/
def P11074449320022151340.Spec : Prop :=
  ∀ n, P11074449320022151340.a n = A037866 (n + 1)

theorem P11074449320022151340.correct : P11074449320022151340.Spec := by
  intro n
  simp only [A037866, Nat.add_sub_cancel]

end A037866

/-! ## A037866.P10747322456791593468

`A037869(A307913(n+2))`
-/

namespace A037866.P10747322456791593468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037869 (A307913 (n + 2)).toNat

end

end A037866.P10747322456791593468

namespace A037866

/-- `A037869(A307913(n+2))` -/
def P10747322456791593468.Spec : Prop :=
  ∀ n, P10747322456791593468.a n = A037866 (n + 1)

end A037866

/-!
# A037867: a(n)=(number of digits <=3)-(number of digits >3) in base 8 representation of n.

The programs for A037867, the canonical program `A037867.P5061930620395652087` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037867 has offset 1).

The definition of A037867 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4096 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A037867.P5061930620395652087

`A037869(A008541(n+2))`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A037867

/-- `A037869(A008541(n+2))` -/
def P5061930620395652087.Spec : Prop :=
  ∀ n, P5061930620395652087.a n = A037867 (n + 1)

theorem P5061930620395652087.correct : P5061930620395652087.Spec := by
  intro n
  simp only [A037867, Nat.add_sub_cancel]

end A037867

/-! ## A037867.P16561913275726626471

`A037869(A361780(n+1)+1)`
-/

namespace A037867.P16561913275726626471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037869 (A361780 (n + 1) + 1).toNat

end

end A037867.P16561913275726626471

namespace A037867

/-- `A037869(A361780(n+1)+1)` -/
def P16561913275726626471.Spec : Prop :=
  ∀ n, P16561913275726626471.a n = A037867 (n + 1)

end A037867

/-! ## A037867.P7954644946556577686

`A037869(A361780(n+2))`
-/

namespace A037867.P7954644946556577686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037869 (A361780 (n + 2)).toNat

end

end A037867.P7954644946556577686

namespace A037867

/-- `A037869(A361780(n+2))` -/
def P7954644946556577686.Spec : Prop :=
  ∀ n, P7954644946556577686.a n = A037867 (n + 1)

end A037867

/-! ## A037867.P990573359483788771

`A037869(A242491(n+1))`
-/

namespace A037867.P990573359483788771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037869 (A242491 (n + 1)).toNat

end

end A037867.P990573359483788771

namespace A037867

/-- `A037869(A242491(n+1))` -/
def P990573359483788771.Spec : Prop :=
  ∀ n, P990573359483788771.a n = A037867 (n + 1)

end A037867

/-!
# A037868: a(n)=(number of digits <=4)-(number of digits >4) in base 9 representation of n.

The programs for A037868, the canonical program `A037868.P10667047250231889726` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037868 has offset 1).

The definition of A037868 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6561 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A037868.P10667047250231889726

`A037869(A007095(n+1))`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A037868

/-- `A037869(A007095(n+1))` -/
def P10667047250231889726.Spec : Prop :=
  ∀ n, P10667047250231889726.a n = A037868 (n + 1)

theorem P10667047250231889726.correct : P10667047250231889726.Spec := by
  intro n
  simp only [A037868, Nat.add_sub_cancel]

end A037868

/-! ## A037868.P17882653172792717408

`A037869(A037479(n+1))`
-/

namespace A037868.P17882653172792717408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037869 (A037479 (n + 1)).toNat

end

end A037868.P17882653172792717408

namespace A037868

/-- `A037869(A037479(n+1))` -/
def P17882653172792717408.Spec : Prop :=
  ∀ n, P17882653172792717408.a n = A037868 (n + 1)

end A037868

/-! ## A037868.P11616716997016997878

`A037869(A052413(n+2))`
-/

namespace A037868.P11616716997016997878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037869 (A052413 (n + 2)).toNat

end

end A037868.P11616716997016997878

namespace A037868

/-- `A037869(A052413(n+2))` -/
def P11616716997016997878.Spec : Prop :=
  ∀ n, P11616716997016997878.a n = A037868 (n + 1)

end A037868

/-! ## A037868.P17727193014599882032

`A037869(A052414(n+2))`
-/

namespace A037868.P17727193014599882032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037869 (A052414 (n + 2)).toNat

end

end A037868.P17727193014599882032

namespace A037868

/-- `A037869(A052414(n+2))` -/
def P17727193014599882032.Spec : Prop :=
  ∀ n, P17727193014599882032.a n = A037868 (n + 1)

end A037868

/-! ## A037868.P6666365103787950589

`A037869(A052419(n+2))`
-/

namespace A037868.P6666365103787950589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037869 (A052419 (n + 2)).toNat

end

end A037868.P6666365103787950589

namespace A037868

/-- `A037869(A052419(n+2))` -/
def P6666365103787950589.Spec : Prop :=
  ∀ n, P6666365103787950589.a n = A037868 (n + 1)

end A037868

/-! ## A037868.P14126575130302407172

`A037869(A052421(n+2))`
-/

namespace A037868.P14126575130302407172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037869 (A052421 (n + 2)).toNat

end

end A037868.P14126575130302407172

namespace A037868

/-- `A037869(A052421(n+2))` -/
def P14126575130302407172.Spec : Prop :=
  ∀ n, P14126575130302407172.a n = A037868 (n + 1)

end A037868

/-!
# A037869: a(n) = (number of digits <=4)-(number of digits >4) in base 10 representation of n.

The programs for A037869, the canonical program `A037869.P10536282920050209109` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037869 has offset 1).

The definition of A037869 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A037869.P12293945933672915960

`∑{digits}[n+1, A110242(ceil(sqrt(#)))]`
-/

namespace A037869.P12293945933672915960
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A110242 ⌈Real.sqrt (x : ℝ)⌉.toNat).sum

end

end A037869.P12293945933672915960

namespace A037869

/-- `∑{digits}[n+1, A110242(ceil(sqrt(#)))]` -/
def P12293945933672915960.Spec : Prop :=
  ∀ n, P12293945933672915960.a n = A037869 (n + 1)

end A037869

/-! ## A037869.P16691278488781937214

`∑{digits}[n+1, A008683(floor(log(#+3)))]`
-/

namespace A037869.P16691278488781937214
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A008683 ⌊Real.log (x + 3 : ℝ)⌋.toNat).sum

end

end A037869.P16691278488781937214

namespace A037869

/-- `∑{digits}[n+1, A008683(floor(log(#+3)))]` -/
def P16691278488781937214.Spec : Prop :=
  ∀ n, P16691278488781937214.a n = A037869 (n + 1)

end A037869

/-! ## A037869.P10536282920050209109

`∑{digits}[n+1, A199803(A027868(#))]`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A037869

/-- `∑{digits}[n+1, A199803(A027868(#))]` -/
def P10536282920050209109.Spec : Prop :=
  ∀ n, P10536282920050209109.a n = A037869 (n + 1)

theorem P10536282920050209109.correct : P10536282920050209109.Spec := by
  intro n
  simp only [A037869, Nat.add_sub_cancel]

end A037869

/-! ## A037869.P15102792200161576901

`∑{digits}[n+1, A165326(A339163(#))]`
-/

namespace A037869.P15102792200161576901
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A165326 (A339163 x).toNat).sum

end

end A037869.P15102792200161576901

namespace A037869

/-- `∑{digits}[n+1, A165326(A339163(#))]` -/
def P15102792200161576901.Spec : Prop :=
  ∀ n, P15102792200161576901.a n = A037869 (n + 1)

end A037869

/-! ## A037869.P7064474353801914944

`∑{digits}[A131738(n), A010815(A104320(#))]`
-/

namespace A037869.P7064474353801914944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131738 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A010815 (A104320 x).toNat).sum

end

end A037869.P7064474353801914944

namespace A037869

/-- `∑{digits}[A131738(n), A010815(A104320(#))]` -/
def P7064474353801914944.Spec : Prop :=
  ∀ n, P7064474353801914944.a n = A037869 (n + 1)

end A037869

/-!
# A037870: a(n) = (1/2)*Sum{|d(i)-e(i)|}, where Sum{d(i)*2^i} is base 2 representation of n and e(i) are digits d(i) in nonincreasing order, for i=0,1,...,m.

The programs for A037870, the canonical program `A037870.P14091972107261335065` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037870 has offset 1).

The definition of A037870 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A037870.P3316535370942402197

`A000120(and(n+1, -2^A000120(n+1)))`
-/

namespace A037870.P3316535370942402197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (Int.land (n + 1 : ℤ) (SequenceMachineLib.roundAway (-((2 : ℚ) ^ (A000120 (n + 1) : ℤ))))).toNat

end

end A037870.P3316535370942402197

namespace A037870

/-- `A000120(and(n+1, -2^A000120(n+1)))` -/
def P3316535370942402197.Spec : Prop :=
  ∀ n, P3316535370942402197.a n = A037870 (n + 1)

end A037870

/-! ## A037870.P2701972073664116012

`A000120(floor((n+1)/2^A000120(n+1)))`
-/

namespace A037870.P2701972073664116012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 ⌊(n + 1 : ℚ) / (2 : ℚ) ^ (A000120 (n + 1) : ℤ)⌋.toNat

end

end A037870.P2701972073664116012

namespace A037870

/-- `A000120(floor((n+1)/2^A000120(n+1)))` -/
def P2701972073664116012.Spec : Prop :=
  ∀ n, P2701972073664116012.a n = A037870 (n + 1)

end A037870

/-! ## A037870.P14091972107261335065

`∑{e}[A001316(floor((n+1)/A001316(n+1))), #]`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A037870

/-- `∑{e}[A001316(floor((n+1)/A001316(n+1))), #]` -/
def P14091972107261335065.Spec : Prop :=
  ∀ n, (P14091972107261335065.a n : ℤ) = A037870 (n + 1)

theorem P14091972107261335065.correct : P14091972107261335065.Spec := by
  intro n
  simp only [A037870, Nat.add_sub_cancel]

end A037870

/-! ## A037870.P18339488059373093356

`A001222(A001316(n+1-(n+1)%A001316(n+1)))`
-/

namespace A037870.P18339488059373093356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A001316 ((n + 1 : ℤ) - Int.tmod (n + 1 : ℤ) (A001316 (n + 1))).toNat).toNat

end

end A037870.P18339488059373093356

namespace A037870

/-- `A001222(A001316(n+1-(n+1)%A001316(n+1)))` -/
def P18339488059373093356.Spec : Prop :=
  ∀ n, P18339488059373093356.a n = A037870 (n + 1)

end A037870

/-! ## A037870.P6343160840480065623

`A037879(A165789(n+1))`
-/

namespace A037870.P6343160840480065623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037879 (A165789 (n + 1)).toNat

end

end A037870.P6343160840480065623

namespace A037870

/-- `A037879(A165789(n+1))` -/
def P6343160840480065623.Spec : Prop :=
  ∀ n, P6343160840480065623.a n = A037870 (n + 1)

end A037870

/-! ## A037870.P2203712876299654418

`A037879(A145341(n+2))`
-/

namespace A037870.P2203712876299654418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037879 (A145341 (n + 2)).toNat

end

end A037870.P2203712876299654418

namespace A037870

/-- `A037879(A145341(n+2))` -/
def P2203712876299654418.Spec : Prop :=
  ∀ n, P2203712876299654418.a n = A037870 (n + 1)

end A037870

/-! ## A037870.P6318703784729847009

`A037879(A010078(n+2))`
-/

namespace A037870.P6318703784729847009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037879 (A010078 (n + 2)).toNat

end

end A037870.P6318703784729847009

namespace A037870

/-- `A037879(A010078(n+2))` -/
def P6318703784729847009.Spec : Prop :=
  ∀ n, P6318703784729847009.a n = A037870 (n + 1)

end A037870

/-! ## A037870.P13944328457574179529

`A037871(A005836(n+2))`
-/

namespace A037870.P13944328457574179529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037871 (A005836 (n + 2)).toNat

end

end A037870.P13944328457574179529

namespace A037870

/-- `A037871(A005836(n+2))` -/
def P13944328457574179529.Spec : Prop :=
  ∀ n, P13944328457574179529.a n = A037870 (n + 1)

end A037870

/-! ## A037870.P6637393797058798302

`A037871(A089118(n+1)+2)`
-/

namespace A037870.P6637393797058798302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037871 (A089118 (n + 1) + 2).toNat

end

end A037870.P6637393797058798302

namespace A037870

/-- `A037871(A089118(n+1)+2)` -/
def P6637393797058798302.Spec : Prop :=
  ∀ n, P6637393797058798302.a n = A037870 (n + 1)

end A037870

/-! ## A037870.P4291405989312191841

`A037871(A089118(n+2))`
-/

namespace A037870.P4291405989312191841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037871 (A089118 (n + 2)).toNat

end

end A037870.P4291405989312191841

namespace A037870

/-- `A037871(A089118(n+2))` -/
def P4291405989312191841.Spec : Prop :=
  ∀ n, P4291405989312191841.a n = A037870 (n + 1)

end A037870

/-! ## A037870.P7251934603532182110

`A037872(A000695(n+1))`
-/

namespace A037870.P7251934603532182110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037872 (A000695 (n + 1)).toNat

end

end A037870.P7251934603532182110

namespace A037870

/-- `A037872(A000695(n+1))` -/
def P7251934603532182110.Spec : Prop :=
  ∀ n, P7251934603532182110.a n = A037870 (n + 1)

end A037870

/-! ## A037870.P11038380266098292493

`A037881(A374625(n+1))`
-/

namespace A037870.P11038380266098292493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037881 (A374625 (n + 1)).toNat

end

end A037870.P11038380266098292493

namespace A037870

/-- `A037881(A374625(n+1))` -/
def P11038380266098292493.Spec : Prop :=
  ∀ n, P11038380266098292493.a n = A037870 (n + 1)

end A037870

/-!
# A037871: (1/2)*Sum{|d(i)-e(i)|}, where Sum{d(i)*3^i} is base 3 representation of n and e(i) are digits d(i) in nonincreasing order, for i=0,1,...,m.

The programs for A037871, there is no canonical definition to state claims against.
-/

/-! ## A037871.P1486656485700013501

`A037880(A171960(2*n+1)+n)`
-/

namespace A037871.P1486656485700013501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037880 (A171960 (2 * n + 1) + (n : ℤ)).toNat

end

end A037871.P1486656485700013501

/-! ## A037871.P8235976474322776269

`A037872(A023717(n+1))`
-/

namespace A037871.P8235976474322776269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037872 (A023717 (n + 1)).toNat

end

end A037871.P8235976474322776269

/-! ## A037871.P7504393311443992679

`A037873(A037453(n+1))`
-/

namespace A037871.P7504393311443992679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037873 (A037453 (n + 1)).toNat

end

end A037871.P7504393311443992679

/-!
# A037872: (1/2)*Sum{|d(i)-e(i)|}, where Sum{d(i)*4^i} is base 4 representation of n and e(i) are digits d(i) in nonincreasing order, for i=0,1,...,m.

The programs for A037872, there is no canonical definition to state claims against.
-/

/-! ## A037872.P2892834922230859880

`A037873(A037459(n+1))`
-/

namespace A037872.P2892834922230859880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037873 (A037459 (n + 1)).toNat

end

end A037872.P2892834922230859880

/-! ## A037872.P10698658552993583773

`A037873(A020654(n+2))`
-/

namespace A037872.P10698658552993583773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037873 (A020654 (n + 2)).toNat

end

end A037872.P10698658552993583773

/-!
# A037879: a(n) = (1/2)*Sum{|d(i)-e(i)|} where Sum{d(i)*2^i} is the base-2 representation of n and {e(i)} are digits {d(i)} in nondecreasing order.

The programs for A037879, the canonical program `A037879.P7162535617736776379` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037879 has offset 1).

The definition of A037879 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A037879.P7162535617736776379

`A023416(floor((n+1)/2^A023416(n+1)))`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A037879

/-- `A023416(floor((n+1)/2^A023416(n+1)))` -/
def P7162535617736776379.Spec : Prop :=
  ∀ n, P7162535617736776379.a n = A037879 (n + 1)

theorem P7162535617736776379.correct : P7162535617736776379.Spec := by
  intro n
  simp only [A037879, Nat.add_sub_cancel]

end A037879

/-! ## A037879.P17764657166326028092

`A080791(floor((n+1)/2^A080791(n+1)))`
-/

namespace A037879.P17764657166326028092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080791 ⌊(n + 1 : ℚ) / (2 : ℚ) ^ (A080791 (n + 1) : ℤ)⌋.toNat

end

end A037879.P17764657166326028092

namespace A037879

/-- `A080791(floor((n+1)/2^A080791(n+1)))` -/
def P17764657166326028092.Spec : Prop :=
  ∀ n, P17764657166326028092.a n = A037879 (n + 1)

end A037879

/-! ## A037879.P7805635588295104562

`A000120(n+1-and(n+1, A073138(n+1)))`
-/

namespace A037879.P7805635588295104562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 ((n + 1 : ℤ) - Int.land (n + 1 : ℤ) (A073138 (n + 1))).toNat

end

end A037879.P7805635588295104562

namespace A037879

/-- `A000120(n+1-and(n+1, A073138(n+1)))` -/
def P7805635588295104562.Spec : Prop :=
  ∀ n, P7805635588295104562.a n = A037879 (n + 1)

end A037879

/-! ## A037879.P5210230341369865979

`A000120(and(n-A055944(n+1), A038573(n+1)))`
-/

namespace A037879.P5210230341369865979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (Int.land ((n : ℤ) - A055944 (n + 1)) (A038573 (n + 1))).toNat

end

end A037879.P5210230341369865979

namespace A037879

/-- `A000120(and(n-A055944(n+1), A038573(n+1)))` -/
def P5210230341369865979.Spec : Prop :=
  ∀ n, P5210230341369865979.a n = A037879 (n + 1)

end A037879

/-! ## A037879.P16510669769618657498

`A037870(A383848(n+1))`
-/

namespace A037879.P16510669769618657498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037870 (A383848 (n + 1)).toNat

end

end A037879.P16510669769618657498

namespace A037879

/-- `A037870(A383848(n+1))` -/
def P16510669769618657498.Spec : Prop :=
  ∀ n, P16510669769618657498.a n = A037879 (n + 1)

end A037879

/-! ## A037879.P15275212490895542268

`A037870(A030101(n+1))`
-/

namespace A037879.P15275212490895542268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037870 (A030101 (n + 1)).toNat

end

end A037879.P15275212490895542268

namespace A037879

/-- `A037870(A030101(n+1))` -/
def P15275212490895542268.Spec : Prop :=
  ∀ n, P15275212490895542268.a n = A037879 (n + 1)

end A037879

/-! ## A037879.P8109682188502364524

`A037870(A261693(n+1))`
-/

namespace A037879.P8109682188502364524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037870 (A261693 (n + 1)).toNat

end

end A037879.P8109682188502364524

namespace A037879

/-- `A037870(A261693(n+1))` -/
def P8109682188502364524.Spec : Prop :=
  ∀ n, P8109682188502364524.a n = A037879 (n + 1)

end A037879

/-! ## A037879.P15865022351000554999

`A037880(A005836(n+2))`
-/

namespace A037879.P15865022351000554999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037880 (A005836 (n + 2)).toNat

end

end A037879.P15865022351000554999

namespace A037879

/-- `A037880(A005836(n+2))` -/
def P15865022351000554999.Spec : Prop :=
  ∀ n, P15865022351000554999.a n = A037879 (n + 1)

end A037879

/-! ## A037879.P12816244786393637668

`A037880(A259566(n+1))`
-/

namespace A037879.P12816244786393637668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037880 (A259566 (n + 1)).toNat

end

end A037879.P12816244786393637668

namespace A037879

/-- `A037880(A259566(n+1))` -/
def P12816244786393637668.Spec : Prop :=
  ∀ n, P12816244786393637668.a n = A037879 (n + 1)

end A037879

/-! ## A037879.P17640424242526943875

`A037880(A081601(n+2))`
-/

namespace A037879.P17640424242526943875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037880 (A081601 (n + 2)).toNat

end

end A037879.P17640424242526943875

namespace A037879

/-- `A037880(A081601(n+2))` -/
def P17640424242526943875.Spec : Prop :=
  ∀ n, P17640424242526943875.a n = A037879 (n + 1)

end A037879

/-! ## A037879.P10291581335891986470

`A037881(A000695(n+1))`
-/

namespace A037879.P10291581335891986470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037881 (A000695 (n + 1)).toNat

end

end A037879.P10291581335891986470

namespace A037879

/-- `A037881(A000695(n+1))` -/
def P10291581335891986470.Spec : Prop :=
  ∀ n, P10291581335891986470.a n = A037879 (n + 1)

end A037879

/-! ## A037879.P10829491427242206486

`A037872(A374625(n+1))`
-/

namespace A037879.P10829491427242206486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037872 (A374625 (n + 1)).toNat

end

end A037879.P10829491427242206486

namespace A037879

/-- `A037872(A374625(n+1))` -/
def P10829491427242206486.Spec : Prop :=
  ∀ n, P10829491427242206486.a n = A037879 (n + 1)

end A037879

/-!
# A037880: (1/2)*Sum{|d(i)-e(i)|} where Sum{d(i)*3^i} is base 3 representation of n and e(i) are digits d(i) in nondecreasing order.

The programs for A037880, there is no canonical definition to state claims against.
-/

/-! ## A037880.P8278386129125422464

`A037871(A030102(n+1))`
-/

namespace A037880.P8278386129125422464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037871 (A030102 (n + 1)).toNat

end

end A037880.P8278386129125422464

/-! ## A037880.P6425092487872864624

`A037871(A171960(3*(n+1)))`
-/

namespace A037880.P6425092487872864624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037871 (A171960 (3 * (n + 1))).toNat

end

end A037880.P6425092487872864624

/-! ## A037880.P4853660596093768862

`A037881(A023717(n+1))`
-/

namespace A037880.P4853660596093768862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037881 (A023717 (n + 1)).toNat

end

end A037880.P4853660596093768862

/-! ## A037880.P9321276008431909342

`A037882(A037453(n+1))`
-/

namespace A037880.P9321276008431909342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037882 (A037453 (n + 1)).toNat

end

end A037880.P9321276008431909342

/-!
# A037881: (1/2)*Sum{|d(i)-e(i)|} where Sum{d(i)*4^i} is base 4 representation of n and e(i) are digits d(i) in nondecreasing order.

The programs for A037881, there is no canonical definition to state claims against.
-/

/-! ## A037881.P9554060327305507742

`A037872(A030103(n+1))`
-/

namespace A037881.P9554060327305507742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037872 (A030103 (n + 1)).toNat

end

end A037881.P9554060327305507742

/-! ## A037881.P7540542658702853766

`A037882(A037459(n+1))`
-/

namespace A037881.P7540542658702853766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037882 (A037459 (n + 1)).toNat

end

end A037881.P7540542658702853766

/-!
# A037882: a(n)=(1/2)*Sum{|d(i)-e(i)|} where Sum{d(i)*5^i} is the base 5 representation of n and e(i) are the digits d(i) in nondecreasing order.

The programs for A037882, there is no canonical definition to state claims against.
-/

/-! ## A037882.P1737266937128616794

`A037873(A030104(n+1))`
-/

namespace A037882.P1737266937128616794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037873 (A030104 (n + 1)).toNat

end

end A037882.P1737266937128616794

/-!
# A037888: a(n) = (1/2)*Sum_{i} |d(i) - e(i)| where Sum_{i} d(i)*2^i is the base-2 representation of n and e(i) are digits d(i) in reverse order.

The programs for A037888, the canonical program `A037888.P3332479234474473082` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037888 has offset 1).

The definition of A037888 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A037888.P3332479234474473082

`A000120(A370427(n+1))`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A037888

/-- `A000120(A370427(n+1))` -/
def P3332479234474473082.Spec : Prop :=
  ∀ n, P3332479234474473082.a n = A037888 (n + 1)

theorem P3332479234474473082.correct : P3332479234474473082.Spec := by
  intro n
  simp only [A037888, Nat.add_sub_cancel]

end A037888

/-! ## A037888.P7556256913140411783

`A000120(n+1)-A159780(n+1)`
-/

namespace A037888.P7556256913140411783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (n + 1) - A159780 (n + 1)

end

end A037888.P7556256913140411783

namespace A037888

/-- `A000120(n+1)-A159780(n+1)` -/
def P7556256913140411783.Spec : Prop :=
  ∀ n, P7556256913140411783.a n = A037888 (n + 1)

end A037888

/-! ## A037888.P6816010121263389703

`A000120(n+1-A175297(n+1))`
-/

namespace A037888.P6816010121263389703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 ((n + 1 : ℤ) - A175297 (n + 1)).toNat

end

end A037888.P6816010121263389703

namespace A037888

/-- `A000120(n+1-A175297(n+1))` -/
def P6816010121263389703.Spec : Prop :=
  ∀ n, P6816010121263389703.a n = A037888 (n + 1)

end A037888

/-! ## A037888.P6457919501649855301

`A000120(A175298(n+1)-(n+1))`
-/

namespace A037888.P6457919501649855301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A175298 (n + 1) - (n + 1 : ℤ)).toNat

end

end A037888.P6457919501649855301

namespace A037888

/-- `A000120(A175298(n+1)-(n+1))` -/
def P6457919501649855301.Spec : Prop :=
  ∀ n, P6457919501649855301.a n = A037888 (n + 1)

end A037888

/-! ## A037888.P4273914950751388012

`A000120(A175298(n+1)%(n+1))`
-/

namespace A037888.P4273914950751388012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (Int.tmod (A175298 (n + 1)) (n + 1 : ℤ)).toNat

end

end A037888.P4273914950751388012

namespace A037888

/-- `A000120(A175298(n+1)%(n+1))` -/
def P4273914950751388012.Spec : Prop :=
  ∀ n, P4273914950751388012.a n = A037888 (n + 1)

end A037888

/-! ## A037888.P7395226556801400155

`A000120(A175919(n+1))/2`
-/

namespace A037888.P7395226556801400155
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000120 (A175919 (n + 1)).toNat : ℚ) / 2

end

end A037888.P7395226556801400155

namespace A037888

/-- `A000120(A175919(n+1))/2` -/
def P7395226556801400155.Spec : Prop :=
  ∀ n, P7395226556801400155.a n = (A037888 (n + 1) : ℚ)

end A037888

/-! ## A037888.P10307024669737359126

`A023416(n+1)-A023416(A175298(n+1))`
-/

namespace A037888.P10307024669737359126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 (n + 1) - A023416 (A175298 (n + 1)).toNat

end

end A037888.P10307024669737359126

namespace A037888

/-- `A023416(n+1)-A023416(A175298(n+1))` -/
def P10307024669737359126.Spec : Prop :=
  ∀ n, P10307024669737359126.a n = A037888 (n + 1)

end A037888

/-! ## A037888.P4948620408637141499

`A000120(A344220(n+1))`
-/

namespace A037888.P4948620408637141499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A344220 (n + 1)).toNat

end

end A037888.P4948620408637141499

namespace A037888

/-- `A000120(A344220(n+1))` -/
def P4948620408637141499.Spec : Prop :=
  ∀ n, P4948620408637141499.a n = A037888 (n + 1)

end A037888

/-! ## A037888.P11684552204941905099

`A144078(n+1)/2`
-/

namespace A037888.P11684552204941905099
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A144078 (n + 1) : ℚ) / 2

end

end A037888.P11684552204941905099

namespace A037888

/-- `A144078(n+1)/2` -/
def P11684552204941905099.Spec : Prop :=
  ∀ n, P11684552204941905099.a n = (A037888 (n + 1) : ℚ)

end A037888

/-! ## A037888.P15354087369837922794

`A001281(A144078(n+1))`
-/

namespace A037888.P15354087369837922794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A144078 (n + 1)).toNat

end

end A037888.P15354087369837922794

namespace A037888

/-- `A001281(A144078(n+1))` -/
def P15354087369837922794.Spec : Prop :=
  ∀ n, P15354087369837922794.a n = A037888 (n + 1)

end A037888

/-! ## A037888.P5012771633927063713

`A008619(A144078(n+1)+1)-1`
-/

namespace A037888.P5012771633927063713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A144078 (n + 1) + 1).toNat - 1

end

end A037888.P5012771633927063713

namespace A037888

/-- `A008619(A144078(n+1)+1)-1` -/
def P5012771633927063713.Spec : Prop :=
  ∀ n, P5012771633927063713.a n = A037888 (n + 1)

end A037888

/-! ## A037888.P2264402527222353505

`A001221(A144078(n+1)!)`
-/

namespace A037888.P2264402527222353505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Nat.factorial (A144078 (n + 1)).toNat)

end

end A037888.P2264402527222353505

namespace A037888

/-- `A001221(A144078(n+1)!)` -/
def P2264402527222353505.Spec : Prop :=
  ∀ n, P2264402527222353505.a n = A037888 (n + 1)

end A037888

/-! ## A037888.P13863658424371845453

`A037889(A005836(n+2))`
-/

namespace A037888.P13863658424371845453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037889 (A005836 (n + 2)).toNat

end

end A037888.P13863658424371845453

namespace A037888

/-- `A037889(A005836(n+2))` -/
def P13863658424371845453.Spec : Prop :=
  ∀ n, P13863658424371845453.a n = A037888 (n + 1)

end A037888

/-! ## A037888.P2083015096446089768

`A037889(A005823(n+2)/2)`
-/

namespace A037888.P2083015096446089768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037889 (SequenceMachineLib.roundAway ((A005823 (n + 2) : ℚ) / 2)).toNat

end

end A037888.P2083015096446089768

namespace A037888

/-- `A037889(A005823(n+2)/2)` -/
def P2083015096446089768.Spec : Prop :=
  ∀ n, P2083015096446089768.a n = A037888 (n + 1)

end A037888

/-! ## A037888.P887780999238329687

`A037890(A000695(n+1))`
-/

namespace A037888.P887780999238329687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037890 (A000695 (n + 1)).toNat

end

end A037888.P887780999238329687

namespace A037888

/-- `A037890(A000695(n+1))` -/
def P887780999238329687.Spec : Prop :=
  ∀ n, P887780999238329687.a n = A037888 (n + 1)

end A037888

/-! ## A037888.P1006056467165680317

`A037890(A374625(n+1))`
-/

namespace A037888.P1006056467165680317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037890 (A374625 (n + 1)).toNat

end

end A037888.P1006056467165680317

namespace A037888

/-- `A037890(A374625(n+1))` -/
def P1006056467165680317.Spec : Prop :=
  ∀ n, P1006056467165680317.a n = A037888 (n + 1)

end A037888

/-! ## A037888.P9286381347450434756

`A037890(A062880(n+1)/2)`
-/

namespace A037888.P9286381347450434756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037890 (SequenceMachineLib.roundAway ((A062880 (n + 1) : ℚ) / 2)).toNat

end

end A037888.P9286381347450434756

namespace A037888

/-- `A037890(A062880(n+1)/2)` -/
def P9286381347450434756.Spec : Prop :=
  ∀ n, P9286381347450434756.a n = A037888 (n + 1)

end A037888

/-! ## A037888.P10018787023294426035

`(A113473(n+1)-A144079(n+1))/2`
-/

namespace A037888.P10018787023294426035
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A113473 (n + 1) - A144079 (n + 1) : ℚ) / 2

end

end A037888.P10018787023294426035

namespace A037888

/-- `(A113473(n+1)-A144079(n+1))/2` -/
def P10018787023294426035.Spec : Prop :=
  ∀ n, P10018787023294426035.a n = (A037888 (n + 1) : ℚ)

end A037888

/-!
# A037889: (1/2)*Sum{|d(i)-e(i)|} where Sum{d(i)*3^i} is base 3 representation of n and e(i) are digits d(i) in reverse order.

The programs for A037889, there is no canonical definition to state claims against.
-/

/-! ## A037889.P18173776577918405634

`A037890(A023717(n+1))`
-/

namespace A037889.P18173776577918405634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037890 (A023717 (n + 1)).toNat

end

end A037889.P18173776577918405634

/-! ## A037889.P8849542722527845152

`A037890(record[A023717(abs(1-n))])`
-/

namespace A037889.P8849542722527845152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023717 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037890 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A037889.P8849542722527845152

/-! ## A037889.P2519474149115877776

`A037891(A037453(n+1))`
-/

namespace A037889.P2519474149115877776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037891 (A037453 (n + 1)).toNat

end

end A037889.P2519474149115877776

/-! ## A037889.P3863810598630737169

`A037892(A037454(n+1))`
-/

namespace A037889.P3863810598630737169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037892 (A037454 (n + 1)).toNat

end

end A037889.P3863810598630737169

/-! ## A037889.P8825272338204379231

`A037892(record[A037454(abs(1-n))])`
-/

namespace A037889.P8825272338204379231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037454 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037892 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A037889.P8825272338204379231

/-! ## A037889.P12522343597899170584

`A037893(A037455(n+1))`
-/

namespace A037889.P12522343597899170584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037893 (A037455 (n + 1)).toNat

end

end A037889.P12522343597899170584

/-! ## A037889.P2713611381324480667

`A037894(A037456(n+1))`
-/

namespace A037889.P2713611381324480667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037894 (A037456 (n + 1)).toNat

end

end A037889.P2713611381324480667

/-! ## A037889.P13612987819179324619

`A037895(A037314(n+1))`
-/

namespace A037889.P13612987819179324619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037895 (A037314 (n + 1)).toNat

end

end A037889.P13612987819179324619

/-! ## A037889.P16375654238675159763

`A064834(A007089(n+1))`
-/

namespace A037889.P16375654238675159763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064834 (A007089 (n + 1)).toNat

end

end A037889.P16375654238675159763

/-!
# A037890: a(n)=(1/2)*Sum{|d(i)-e(i)|} where Sum{d(i)*4^i} is the base 4 representation of n and e(i) are the digits d(i) in reverse order.

The programs for A037890, there is no canonical definition to state claims against.
-/

/-! ## A037890.P12383677492144350381

`A053737(A265546(n+1))-A053737(n+1)`
-/

namespace A037890.P12383677492144350381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053737 (A265546 (n + 1)).toNat - A053737 (n + 1)

end

end A037890.P12383677492144350381

/-! ## A037890.P12557667307913518238

`A037891(A037459(n+1))`
-/

namespace A037890.P12557667307913518238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037891 (A037459 (n + 1)).toNat

end

end A037890.P12557667307913518238

/-! ## A037890.P1961692299616743554

`A037891(A020654(n+2))`
-/

namespace A037890.P1961692299616743554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037891 (A020654 (n + 2)).toNat

end

end A037890.P1961692299616743554

/-! ## A037890.P876791861690984228

`A037892(A037460(n+1))`
-/

namespace A037890.P876791861690984228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037892 (A037460 (n + 1)).toNat

end

end A037890.P876791861690984228

/-! ## A037890.P798424104187194401

`A037893(A037461(n+1))`
-/

namespace A037890.P798424104187194401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037893 (A037461 (n + 1)).toNat

end

end A037890.P798424104187194401

/-! ## A037890.P17877838425056728559

`A037894(A037462(n+1))`
-/

namespace A037890.P17877838425056728559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037894 (A037462 (n + 1)).toNat

end

end A037890.P17877838425056728559

/-! ## A037890.P11182934270108364737

`A037895(A037463(n+1))`
-/

namespace A037890.P11182934270108364737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037895 (A037463 (n + 1)).toNat

end

end A037890.P11182934270108364737

/-! ## A037890.P11770192770050581552

`A064834(A007090(n+1))`
-/

namespace A037890.P11770192770050581552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064834 (A007090 (n + 1)).toNat

end

end A037890.P11770192770050581552

/-!
# A037891: a(n)=(1/2)*Sum{|d(i)-e(i)|} where Sum{d(i)*5^i} is the base 5 representation of n and e(i) are the digits d(i) in reverse order.

The programs for A037891, there is no canonical definition to state claims against.
-/

/-! ## A037891.P9972715364401434289

`A037892(A037465(n+1))`
-/

namespace A037891.P9972715364401434289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037892 (A037465 (n + 1)).toNat

end

end A037891.P9972715364401434289

/-! ## A037891.P9086985397614541666

`A037893(A037466(n+1))`
-/

namespace A037891.P9086985397614541666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037893 (A037466 (n + 1)).toNat

end

end A037891.P9086985397614541666

/-! ## A037891.P12131375692712166309

`A037894(A037467(n+1))`
-/

namespace A037891.P12131375692712166309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037894 (A037467 (n + 1)).toNat

end

end A037891.P12131375692712166309

/-! ## A037891.P10178836902244226056

`A037895(A037468(n+1))`
-/

namespace A037891.P10178836902244226056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037895 (A037468 (n + 1)).toNat

end

end A037891.P10178836902244226056

/-! ## A037891.P10529719299139648518

`A064834(A007091(n+1))`
-/

namespace A037891.P10529719299139648518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064834 (A007091 (n + 1)).toNat

end

end A037891.P10529719299139648518

/-! ## A037891.P13591062161410624061

`A064834(record[A106747(n+2)])`
-/

namespace A037891.P13591062161410624061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106747 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064834 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A037891.P13591062161410624061

/-! ## A037891.P5465748749055811823

`A064834(record[A065033(A001613(n))])`
-/

namespace A037891.P5465748749055811823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A001613 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064834 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A037891.P5465748749055811823

/-!
# A037892: a(n)=(1/2)*Sum{|d(i)-e(i)|} where Sum{d(i)*6^i} is the base 6 representation of n and e(i) are the digits d(i) in reverse order.

The programs for A037892, there is no canonical definition to state claims against.
-/

/-! ## A037892.P18085793586472030657

`A037893(A020657(n+2))`
-/

namespace A037892.P18085793586472030657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037893 (A020657 (n + 2)).toNat

end

end A037892.P18085793586472030657

/-! ## A037892.P3137234079420590176

`A037894(A037471(n+1))`
-/

namespace A037892.P3137234079420590176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037894 (A037471 (n + 1)).toNat

end

end A037892.P3137234079420590176

/-! ## A037892.P8980580834270794181

`A037895(A037472(n+1))`
-/

namespace A037892.P8980580834270794181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037895 (A037472 (n + 1)).toNat

end

end A037892.P8980580834270794181

/-! ## A037892.P3709036228094787644

`A064834(A007092(n+1))`
-/

namespace A037892.P3709036228094787644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064834 (A007092 (n + 1)).toNat

end

end A037892.P3709036228094787644

/-! ## A037892.P17033209244681819340

`A064834(record[A007092(A008611(n))])`
-/

namespace A037892.P17033209244681819340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007092 (A008611 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064834 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A037892.P17033209244681819340

/-!
# A037893: a(n)=(1/2)*Sum{|d(i)-e(i)|} where Sum{d(i)*7^i} is the base 7 representation of n and e(i) are the digits d(i) in reverse order.

The programs for A037893, there is no canonical definition to state claims against.
-/

/-! ## A037893.P2286303576053029981

`A037894(A037474(n+1))`
-/

namespace A037893.P2286303576053029981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037894 (A037474 (n + 1)).toNat

end

end A037893.P2286303576053029981

/-! ## A037893.P845475542961585038

`A037895(A037475(n+1))`
-/

namespace A037893.P845475542961585038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037895 (A037475 (n + 1)).toNat

end

end A037893.P845475542961585038

/-! ## A037893.P3964218969934853384

`A064834(A007093(n+1))`
-/

namespace A037893.P3964218969934853384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064834 (A007093 (n + 1)).toNat

end

end A037893.P3964218969934853384

/-! ## A037893.P14989351651136498254

`A037839(n+1)%A017765(n)`
-/

namespace A037893.P14989351651136498254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A037839 (n + 1)) (A017765 n)

end

end A037893.P14989351651136498254

/-!
# A037894: a(n)=(1/2)*Sum{|d(i)-e(i)|} where Sum{d(i)*8^i} is the base 8 representation of n and e(i) are the digits d(i) in reverse order.

The programs for A037894, there is no canonical definition to state claims against.
-/

/-! ## A037894.P6096978169099165065

`A037895(A037477(n+1))`
-/

namespace A037894.P6096978169099165065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037895 (A037477 (n + 1)).toNat

end

end A037894.P6096978169099165065

/-! ## A037894.P10954356178270699098

`A064834(A007094(n+1))`
-/

namespace A037894.P10954356178270699098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064834 (A007094 (n + 1)).toNat

end

end A037894.P10954356178270699098

/-! ## A037894.P5435010543770204897

`A064834(eq[n, A222254(A028310(n))])`
-/

namespace A037894.P5435010543770204897
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222254 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064834 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A037894.P5435010543770204897

/-! ## A037894.P4861566878297336139

`A030107(A265554(n+1)+A001489(n+1))`
-/

namespace A037894.P4861566878297336139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030107 (A265554 (n + 1) + A001489 (n + 1)).toNat

end

end A037894.P4861566878297336139

/-! ## A037894.P5461808793762850478

`A030107(A265554(n+1)-A030107(n+1))`
-/

namespace A037894.P5461808793762850478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030107 (A265554 (n + 1) - A030107 (n + 1)).toNat

end

end A037894.P5461808793762850478

/-!
# A037895: a(n)=(1/2)*Sum{|d(i)-e(i)|} where Sum{d(i)*9^i} is the base 9 representation of n and e(i) are the digits d(i) in reverse order.

The programs for A037895, there is no canonical definition to state claims against.
-/

/-! ## A037895.P15835285662975942457

`A064834(A007095(n+1))`
-/

namespace A037895.P15835285662975942457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064834 (A007095 (n + 1)).toNat

end

end A037895.P15835285662975942457

/-! ## A037895.P2242971714633039916

`A064834(A037479(n+1))`
-/

namespace A037895.P2242971714633039916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064834 (A037479 (n + 1)).toNat

end

end A037895.P2242971714633039916

/-! ## A037895.P9518640924693853559

`A064834(record[A048379(n+1)])`
-/

namespace A037895.P9518640924693853559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048379 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064834 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A037895.P9518640924693853559

/-! ## A037895.P11994426523769709825

`A064834(record[A235049(n+2)])`
-/

namespace A037895.P11994426523769709825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235049 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064834 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A037895.P11994426523769709825

/-! ## A037895.P15760508292249192577

`A064834(eq[n, A028310(A004184(n))])`
-/

namespace A037895.P15760508292249192577
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A004184 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064834 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A037895.P15760508292249192577

/-!
# A037896: Primes of the form k^4 + 1.

The programs for A037896, the canonical program `A037896.P17461005331305696964` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037896 has offset 1).

The definition of A037896 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 790 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A037896.P685579220005324262

`A002523(A000068(n+1))`
-/

namespace A037896.P685579220005324262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002523 (A000068 (n + 1)).toNat

end

end A037896.P685579220005324262

namespace A037896

/-- `A002523(A000068(n+1))` -/
def P685579220005324262.Spec : Prop :=
  ∀ n, P685579220005324262.a n = A037896 (n + 1)

end A037896

/-! ## A037896.P17461005331305696964

`A002523(eq[1, A193929(n)])`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A037896

/-- `A002523(eq[1, A193929(n)])` -/
def P17461005331305696964.Spec : Prop :=
  ∀ n, P17461005331305696964.a n = A037896 (n + 1)

theorem P17461005331305696964.correct : P17461005331305696964.Spec := by
  intro n
  simp only [A037896, Nat.add_sub_cancel]

end A037896

/-! ## A037896.P3449684179245011933

`A053786(eq[1, A193929(n)])`
-/

namespace A037896.P3449684179245011933
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193929 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053786 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A037896.P3449684179245011933

namespace A037896

/-- `A053786(eq[1, A193929(n)])` -/
def P3449684179245011933.Spec : Prop :=
  ∀ n, P3449684179245011933.a n = A037896 (n + 1)

end A037896

/-! ## A037896.P1415927025758289592

`A096172(eq[1, A193929(n)])`
-/

namespace A037896.P1415927025758289592
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193929 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096172 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A037896.P1415927025758289592

namespace A037896

/-- `A096172(eq[1, A193929(n)])` -/
def P1415927025758289592.Spec : Prop :=
  ∀ n, P1415927025758289592.a n = A037896 (n + 1)

end A037896

/-! ## A037896.P11560650795089728854

`A002523(eq[2, A193562(n)])`
-/

namespace A037896.P11560650795089728854
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193562 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002523 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A037896.P11560650795089728854

namespace A037896

/-- `A002523(eq[2, A193562(n)])` -/
def P11560650795089728854.Spec : Prop :=
  ∀ n, P11560650795089728854.a n = A037896 (n + 1)

end A037896

/-! ## A037896.P17687128706765353052

`record[A096172(A004273(n)+1)]`
-/

namespace A037896.P17687128706765353052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096172 (A004273 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A037896.P17687128706765353052

namespace A037896

/-- `record[A096172(A004273(n)+1)]` -/
def P17687128706765353052.Spec : Prop :=
  ∀ n, P17687128706765353052.a n = A037896 (n + 1)

end A037896

/-! ## A037896.P11070308986622111823

`∩[A053786(n+1), A002523(n)]`
-/

namespace A037896.P11070308986622111823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053786 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002523 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A037896.P11070308986622111823

namespace A037896

/-- `∩[A053786(n+1), A002523(n)]` -/
def P11070308986622111823.Spec : Prop :=
  ∀ n, (P11070308986622111823.a n : ℤ) = A037896 (n + 1)

end A037896

/-! ## A037896.P13965868628285876916

`A053786(A000068(2*n+1-n))`
-/

namespace A037896.P13965868628285876916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053786 (A000068 (2 * n + 1 - n)).toNat

end

end A037896.P13965868628285876916

namespace A037896

/-- `A053786(A000068(2*n+1-n))` -/
def P13965868628285876916.Spec : Prop :=
  ∀ n, P13965868628285876916.a n = A037896 (n + 1)

end A037896

/-! ## A037896.P13697762435480514182

`A096172(A000068(2*(n+1)-(n+1)))`
-/

namespace A037896.P13697762435480514182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096172 (A000068 (2 * (n + 1) - (n + 1))).toNat

end

end A037896.P13697762435480514182

namespace A037896

/-- `A096172(A000068(2*(n+1)-(n+1)))` -/
def P13697762435480514182.Spec : Prop :=
  ∀ n, P13697762435480514182.a n = A037896 (n + 1)

end A037896

/-! ## A037896.P6643344557372092980

`A053786(eq[A053786(n+1), A096172(n+1)]+1)`
-/

namespace A037896.P6643344557372092980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053786 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096172 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053786 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A037896.P6643344557372092980

namespace A037896

/-- `A053786(eq[A053786(n+1), A096172(n+1)]+1)` -/
def P6643344557372092980.Spec : Prop :=
  ∀ n, P6643344557372092980.a n = A037896 (n + 1)

end A037896

/-! ## A037896.P17417955766227834060

`∩[A291206(n+1), A002523(n)]`
-/

namespace A037896.P17417955766227834060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291206 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002523 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A037896.P17417955766227834060

namespace A037896

/-- `∩[A291206(n+1), A002523(n)]` -/
def P17417955766227834060.Spec : Prop :=
  ∀ n, (P17417955766227834060.a n : ℤ) = A037896 (n + 1)

end A037896

/-! ## A037896.P13227348263287810150

`∩[A100274(n+1), A002523(n)]`
-/

namespace A037896.P13227348263287810150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100274 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002523 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A037896.P13227348263287810150

namespace A037896

/-- `∩[A100274(n+1), A002523(n)]` -/
def P13227348263287810150.Spec : Prop :=
  ∀ n, (P13227348263287810150.a n : ℤ) = A037896 (n + 1)

end A037896

/-!
# A037897: a(n) = (Greatest base 3 digit of n) - (least base 3 digit of n).

The programs for A037897, the canonical program `A037897.P13729740448367622146` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037897 has offset 0).

The definition of A037897 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A190592, A290825, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A037897.P13729740448367622146

`A190592(n)-A290825(n)`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A037897

/-- `A190592(n)-A290825(n)` -/
def P13729740448367622146.Spec : Prop :=
  ∀ n, P13729740448367622146.a n = A037897 n

theorem P13729740448367622146.correct : P13729740448367622146.Spec := by
  intro n
  simp only [A037897]

end A037897

/-! ## A037897.P5540578523712362422

`A080425(A164993(n))`
-/

namespace A037897.P5540578523712362422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080425 (A164993 n).toNat

end

end A037897.P5540578523712362422

namespace A037897

/-- `A080425(A164993(n))` -/
def P5540578523712362422.Spec : Prop :=
  ∀ n, P5540578523712362422.a n = A037897 n

end A037897

/-! ## A037897.P7980337816464966869

`A164994(n)%3`
-/

namespace A037897.P7980337816464966869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A164994 n) 3

end

end A037897.P7980337816464966869

namespace A037897

/-- `A164994(n)%3` -/
def P7980337816464966869.Spec : Prop :=
  ∀ n, P7980337816464966869.a n = A037897 n

end A037897

/-! ## A037897.P3294542242944278334

`A010872(A164994(n))`
-/

namespace A037897.P3294542242944278334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010872 (A164994 n).toNat

end

end A037897.P3294542242944278334

namespace A037897

/-- `A010872(A164994(n))` -/
def P3294542242944278334.Spec : Prop :=
  ∀ n, P3294542242944278334.a n = A037897 n

end A037897

/-! ## A037897.P3691835309199053776

`A037898(A023717(n))`
-/

namespace A037897.P3691835309199053776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037898 (A023717 n).toNat

end

end A037897.P3691835309199053776

namespace A037897

/-- `A037898(A023717(n))` -/
def P3691835309199053776.Spec : Prop :=
  ∀ n, P3691835309199053776.a n = A037897 n

end A037897

/-! ## A037897.P5399115001907728298

`A037900(A037454(n))`
-/

namespace A037897.P5399115001907728298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037900 (A037454 n).toNat

end

end A037897.P5399115001907728298

namespace A037897

/-- `A037900(A037454(n))` -/
def P5399115001907728298.Spec : Prop :=
  ∀ n, P5399115001907728298.a n = A037897 n

end A037897

/-! ## A037897.P13602532427851884377

`A037901(A037455(n))`
-/

namespace A037897.P13602532427851884377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037901 (A037455 n).toNat

end

end A037897.P13602532427851884377

namespace A037897

/-- `A037901(A037455(n))` -/
def P13602532427851884377.Spec : Prop :=
  ∀ n, P13602532427851884377.a n = A037897 n

end A037897

/-! ## A037897.P11267466056493764696

`A037902(A037456(n))`
-/

namespace A037897.P11267466056493764696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037902 (A037456 n).toNat

end

end A037897.P11267466056493764696

namespace A037897

/-- `A037902(A037456(n))` -/
def P11267466056493764696.Spec : Prop :=
  ∀ n, P11267466056493764696.a n = A037897 n

end A037897

/-! ## A037897.P16750806432444224906

`A037903(A037314(n))`
-/

namespace A037897.P16750806432444224906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037903 (A037314 n).toNat

end

end A037897.P16750806432444224906

namespace A037897

/-- `A037903(A037314(n))` -/
def P16750806432444224906.Spec : Prop :=
  ∀ n, P16750806432444224906.a n = A037897 n

end A037897

/-! ## A037897.P10305449332861556190

`A054055(A007089(n))-A290825(n)`
-/

namespace A037897.P10305449332861556190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 (A007089 n).toNat - A290825 n

end

end A037897.P10305449332861556190

namespace A037897

/-- `A054055(A007089(n))-A290825(n)` -/
def P10305449332861556190.Spec : Prop :=
  ∀ n, P10305449332861556190.a n = A037897 n

end A037897

/-!
# A037898: a(n) = (greatest base 4 digit of n) - (least base 4 digit of n).

The programs for A037898, there is no canonical definition to state claims against.
-/

/-! ## A037898.P8512105204989243940

`A165013(n)%4`
-/

namespace A037898.P8512105204989243940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A165013 n) 4

end

end A037898.P8512105204989243940

/-! ## A037898.P7286105173710578955

`A010873(A165013(n))`
-/

namespace A037898.P7286105173710578955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010873 (A165013 n).toNat

end

end A037898.P7286105173710578955

/-! ## A037898.P16521528718960548693

`and(A113923(n), A165013(n))`
-/

namespace A037898.P16521528718960548693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A113923 n) (A165013 n)

end

end A037898.P16521528718960548693

/-! ## A037898.P14172985988908201957

`and(A122553(n), A165013(n))`
-/

namespace A037898.P14172985988908201957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A122553 n) (A165013 n)

end

end A037898.P14172985988908201957

/-! ## A037898.P6378497810260483436

`and(A156752(n), A165013(n))`
-/

namespace A037898.P6378497810260483436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A156752 n) (A165013 n)

end

end A037898.P6378497810260483436

/-! ## A037898.P2870930724513912088

`and(A158799(n), A165013(n))`
-/

namespace A037898.P2870930724513912088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A158799 n) (A165013 n)

end

end A037898.P2870930724513912088

/-! ## A037898.P9428468307926348379

`and(A165013(n), A290858(n))`
-/

namespace A037898.P9428468307926348379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A165013 n) (A290858 n)

end

end A037898.P9428468307926348379

/-! ## A037898.P9364505475690830425

`A037899(A020654(n+1))`
-/

namespace A037898.P9364505475690830425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037899 (A020654 (n + 1)).toNat

end

end A037898.P9364505475690830425

/-! ## A037898.P14893558016119841728

`A037900(A037460(n))`
-/

namespace A037898.P14893558016119841728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037900 (A037460 n).toNat

end

end A037898.P14893558016119841728

/-! ## A037898.P7143638339510881841

`A037902(A037462(n))`
-/

namespace A037898.P7143638339510881841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037902 (A037462 n).toNat

end

end A037898.P7143638339510881841

/-! ## A037898.P15110254916442813301

`and(A165013(n), A343177(n))`
-/

namespace A037898.P15110254916442813301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A165013 n) (A343177 n)

end

end A037898.P15110254916442813301

/-! ## A037898.P11329912376360496096

`A037903(A037463(n))`
-/

namespace A037898.P11329912376360496096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037903 (A037463 n).toNat

end

end A037898.P11329912376360496096

/-! ## A037898.P14138742448550550628

`and(A062709(n), A165013(n))`
-/

namespace A037898.P14138742448550550628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A062709 n) (A165013 n)

end

end A037898.P14138742448550550628

/-! ## A037898.P10225234969719201968

`and(A165013(n), A342761(n))`
-/

namespace A037898.P10225234969719201968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A165013 n) (A342761 n)

end

end A037898.P10225234969719201968

/-! ## A037898.P11273859279773515312

`and(A164285(n), A165013(n))`
-/

namespace A037898.P11273859279773515312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A164285 n) (A165013 n)

end

end A037898.P11273859279773515312

/-! ## A037898.P9821539392813816414

`and(A165013(n), A318207(n))`
-/

namespace A037898.P9821539392813816414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A165013 n) (A318207 n)

end

end A037898.P9821539392813816414

/-! ## A037898.P11560772197219654968

`and(A048496(n), A165013(n))`
-/

namespace A037898.P11560772197219654968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A048496 n) (A165013 n)

end

end A037898.P11560772197219654968

/-! ## A037898.P11392681031540418015

`and(A088578(n), A165013(n))`
-/

namespace A037898.P11392681031540418015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A088578 n) (A165013 n)

end

end A037898.P11392681031540418015

/-! ## A037898.P11612872192789669873

`and(A165013(n), A339771(n))`
-/

namespace A037898.P11612872192789669873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A165013 n) (A339771 n)

end

end A037898.P11612872192789669873

/-! ## A037898.P1918899058728142684

`and(A165013(n), A226315(n+1))`
-/

namespace A037898.P1918899058728142684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A165013 n) (A226315 (n + 1))

end

end A037898.P1918899058728142684

/-!
# A037899: a(n) = (greatest base 5 digit of n) - (least base 5 digit of n).

The programs for A037899, the canonical program `A037899.P9572021388177074239` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A037899 has offset 0).

The definition of A037899 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2655 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A037899.P2477496752700015646

`A037900(A037465(n))`
-/

namespace A037899.P2477496752700015646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037900 (A037465 n).toNat

end

end A037899.P2477496752700015646

namespace A037899

/-- `A037900(A037465(n))` -/
def P2477496752700015646.Spec : Prop :=
  ∀ n, P2477496752700015646.a n = A037899 n

end A037899

/-! ## A037899.P15034017811294591395

`A165033(n)%5`
-/

namespace A037899.P15034017811294591395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A165033 n) 5

end

end A037899.P15034017811294591395

namespace A037899

/-- `A165033(n)%5` -/
def P15034017811294591395.Spec : Prop :=
  ∀ n, P15034017811294591395.a n = A037899 n

end A037899

/-! ## A037899.P9395772399121870011

`A010874(A165033(n))`
-/

namespace A037899.P9395772399121870011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010874 (A165033 n).toNat

end

end A037899.P9395772399121870011

namespace A037899

/-- `A010874(A165033(n))` -/
def P9395772399121870011.Spec : Prop :=
  ∀ n, P9395772399121870011.a n = A037899 n

end A037899

/-! ## A037899.P9572021388177074239

`A037901(A037466(n))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A037899

/-- `A037901(A037466(n))` -/
def P9572021388177074239.Spec : Prop :=
  ∀ n, P9572021388177074239.a n = A037899 n

theorem P9572021388177074239.correct : P9572021388177074239.Spec := by
  intro n
  simp only [A037899]

end A037899

/-! ## A037899.P14462058554588481261

`A037902(A037467(n))`
-/

namespace A037899.P14462058554588481261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037902 (A037467 n).toNat

end

end A037899.P14462058554588481261

namespace A037899

/-- `A037902(A037467(n))` -/
def P14462058554588481261.Spec : Prop :=
  ∀ n, P14462058554588481261.a n = A037899 n

end A037899

/-! ## A037899.P3220327544108325351

`A037903(A037468(n))`
-/

namespace A037899.P3220327544108325351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037903 (A037468 n).toNat

end

end A037899.P3220327544108325351

namespace A037899

/-- `A037903(A037468(n))` -/
def P3220327544108325351.Spec : Prop :=
  ∀ n, P3220327544108325351.a n = A037899 n

end A037899

