import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
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
import Seq.B000.C022
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C041
import Seq.B000.C047
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
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C007
import Seq.B003.C001
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B009.C000
import Seq.B010.C000
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
import Seq.Opaque.C011
import Seq.Opaque.C012
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

/-!
# A205400: Ordered differences of quarter-squares.

The programs for A205400, the canonical program `A205400.P14668994081946104060` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A205400 has offset 1).

The definition of A205400 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A205400.P14668994081946104060

`A143902(n+1)+A128177(n+1)`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A205400

/-- `A143902(n+1)+A128177(n+1)` -/
def P14668994081946104060.Spec : Prop :=
  ∀ n, P14668994081946104060.a n = A205400 (n + 1)

theorem P14668994081946104060.correct : P14668994081946104060.Spec := by
  intro n
  simp only [A205400, Nat.add_sub_cancel]

end A205400

/-! ## A205400.P6019124927320495272

`ceil((A104568(n)+A049777(n+1))/2)`
-/

namespace A205400.P6019124927320495272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A104568 n + A049777 (n + 1) : ℚ) / 2⌉

end

end A205400.P6019124927320495272

namespace A205400

/-- `ceil((A104568(n)+A049777(n+1))/2)` -/
def P6019124927320495272.Spec : Prop :=
  ∀ n, P6019124927320495272.a n = A205400 (n + 1)

end A205400

/-! ## A205400.P7480429078326790934

`ceil((A120070(n+2)+A099375(n))/4)`
-/

namespace A205400.P7480429078326790934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A120070 (n + 2) + A099375 n : ℚ) / 4⌉

end

end A205400.P7480429078326790934

namespace A205400

/-- `ceil((A120070(n+2)+A099375(n))/4)` -/
def P7480429078326790934.Spec : Prop :=
  ∀ n, P7480429078326790934.a n = A205400 (n + 1)

end A205400

/-! ## A205400.P8209692312829864309

`A143902(n+1)+A008642(A099375(n))`
-/

namespace A205400.P8209692312829864309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143902 (n + 1) + A008642 (A099375 n).toNat

end

end A205400.P8209692312829864309

namespace A205400

/-- `A143902(n+1)+A008642(A099375(n))` -/
def P8209692312829864309.Spec : Prop :=
  ∀ n, P8209692312829864309.a n = A205400 (n + 1)

end A205400

/-! ## A205400.P6698042995642497772

`A065033(A104568(n)+A049777(n+1))`
-/

namespace A205400.P6698042995642497772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A104568 n + A049777 (n + 1)).toNat

end

end A205400.P6698042995642497772

namespace A205400

/-- `A065033(A104568(n)+A049777(n+1))` -/
def P6698042995642497772.Spec : Prop :=
  ∀ n, P6698042995642497772.a n = A205400 (n + 1)

end A205400

/-! ## A205400.P18305578960162086507

`A110654(A104568(n)+A049777(n+1))`
-/

namespace A205400.P18305578960162086507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A104568 n + A049777 (n + 1)).toNat

end

end A205400.P18305578960162086507

namespace A205400

/-- `A110654(A104568(n)+A049777(n+1))` -/
def P18305578960162086507.Spec : Prop :=
  ∀ n, P18305578960162086507.a n = A205400 (n + 1)

end A205400

/-! ## A205400.P9111073306062927318

`A110655(A120070(n+2)+A099375(n))`
-/

namespace A205400.P9111073306062927318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110655 (A120070 (n + 2) + A099375 n).toNat

end

end A205400.P9111073306062927318

namespace A205400

/-- `A110655(A120070(n+2)+A099375(n))` -/
def P9111073306062927318.Spec : Prop :=
  ∀ n, P9111073306062927318.a n = A205400 (n + 1)

end A205400

/-! ## A205400.P13714689903804560114

`A002265(A093995(n+1)-A145917(n)+6)`
-/

namespace A205400.P13714689903804560114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A093995 (n + 1) - A145917 n + 6).toNat

end

end A205400.P13714689903804560114

namespace A205400

/-- `A002265(A093995(n+1)-A145917(n)+6)` -/
def P13714689903804560114.Spec : Prop :=
  ∀ n, P13714689903804560114.a n = A205400 (n + 1)

end A205400

/-! ## A205400.P1862504034033964565

`A008619(A008619(A093995(n+1)-A145917(n)))`
-/

namespace A205400.P1862504034033964565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A008619 (A093995 (n + 1) - A145917 n).toNat).toNat

end

end A205400.P1862504034033964565

namespace A205400

/-- `A008619(A008619(A093995(n+1)-A145917(n)))` -/
def P1862504034033964565.Spec : Prop :=
  ∀ n, P1862504034033964565.a n = A205400 (n + 1)

end A205400

/-! ## A205400.P18357667019802639657

`A038722(n+1)-A002265(A069011(n))`
-/

namespace A205400.P18357667019802639657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038722 (n + 1) - A002265 (A069011 n).toNat

end

end A205400.P18357667019802639657

namespace A205400

/-- `A038722(n+1)-A002265(A069011(n))` -/
def P18357667019802639657.Spec : Prop :=
  ∀ n, P18357667019802639657.a n = A205400 (n + 1)

end A205400

/-!
# A205402: Least k such that n divides s(k)-s(j) for some j < k, where s(j) = floor((j+1)^2/2)/2 (quarter-squares).

The programs for A205402, there is no canonical definition to state claims against.
-/

/-! ## A205402.P16962863694207962994

`A055086(A205404(n+1))`
-/

namespace A205402.P16962863694207962994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055086 (A205404 (n + 1)).toNat

end

end A205402.P16962863694207962994

/-! ## A205402.P4485543397649932286

`A034868(A205404(n+1)+1)`
-/

namespace A205402.P4485543397649932286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034868 (A205404 (n + 1) + 1).toNat

end

end A205402.P4485543397649932286

/-! ## A205402.P2823611650530931518

`A000267(A205404(n+1)-1)`
-/

namespace A205402.P2823611650530931518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000267 (A205404 (n + 1) - 1).toNat

end

end A205402.P2823611650530931518

/-! ## A205402.P13467498143820051560

`A055086(A205406(n+1)+A205405(n+1))`
-/

namespace A205402.P13467498143820051560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055086 (A205406 (n + 1) + A205405 (n + 1)).toNat

end

end A205402.P13467498143820051560

/-! ## A205402.P7784098011515687741

`A082375(A205406(n+1)+A205405(n+1))`
-/

namespace A205402.P7784098011515687741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082375 (A205406 (n + 1) + A205405 (n + 1)).toNat

end

end A205402.P7784098011515687741

/-! ## A205402.P3459422301092833463

`A003056(2*A205404(n+1))`
-/

namespace A205402.P3459422301092833463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (2 * A205404 (n + 1)).toNat

end

end A205402.P3459422301092833463

/-! ## A205402.P154544815621632010

`A002024(2*A205404(n+1))-1`
-/

namespace A205402.P154544815621632010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (2 * A205404 (n + 1)).toNat - 1

end

end A205402.P154544815621632010

/-! ## A205402.P13436584252848949391

`A003056(A205404(n+1)+A205404(n+1)+1)`
-/

namespace A205402.P13436584252848949391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A205404 (n + 1) + (A205404 (n + 1) + 1)).toNat

end

end A205402.P13436584252848949391

/-!
# A205403: a(n) is the index j < k such that n divides s(k)-s(j) for some j, where s(j) = floor((j+1)^2/2)/2, and k is the least index for which such a j exists.

The programs for A205403, there is no canonical definition to state claims against.
-/

/-! ## A205403.P12131702620295435409

`A055086(A205405(n+1))`
-/

namespace A205403.P12131702620295435409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055086 (A205405 (n + 1)).toNat

end

end A205403.P12131702620295435409

/-! ## A205403.P11364659685437162757

`A034868(A205405(n+1)+1)`
-/

namespace A205403.P11364659685437162757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034868 (A205405 (n + 1) + 1).toNat

end

end A205403.P11364659685437162757

/-! ## A205403.P1610758031116617731

`A000267(A205405(n+1)-1)`
-/

namespace A205403.P1610758031116617731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000267 (A205405 (n + 1) - 1).toNat

end

end A205403.P1610758031116617731

/-! ## A205403.P5527868598724064137

`A002260(A205401(n+1))`
-/

namespace A205403.P5527868598724064137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A205401 (n + 1)).toNat

end

end A205403.P5527868598724064137

/-! ## A205403.P5957972277484165479

`A003056(2*A205405(n+1))`
-/

namespace A205403.P5957972277484165479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (2 * A205405 (n + 1)).toNat

end

end A205403.P5957972277484165479

/-! ## A205403.P10098249297212534943

`A103128(2*A205405(n+1))`
-/

namespace A205403.P10098249297212534943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103128 (2 * A205405 (n + 1)).toNat

end

end A205403.P10098249297212534943

/-! ## A205403.P7995192025638313614

`A002024(2*A205405(n+1))-1`
-/

namespace A205403.P7995192025638313614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (2 * A205405 (n + 1)).toNat - 1

end

end A205403.P7995192025638313614

/-! ## A205403.P1906292134296597141

`A003056(A005843(A205405(n+1))-1)`
-/

namespace A205403.P1906292134296597141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A005843 (A205405 (n + 1)).toNat - 1).toNat

end

end A205403.P1906292134296597141

/-! ## A205403.P4709124552666957766

`A003056(A205405(n+1)+A205405(n+1)-1)`
-/

namespace A205403.P4709124552666957766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A205405 (n + 1) + (A205405 (n + 1) - 1)).toNat

end

end A205403.P4709124552666957766

/-! ## A205403.P17973450885463141816

`A103128(A205405(n+1)+A205405(n+1)-1)`
-/

namespace A205403.P17973450885463141816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103128 (A205405 (n + 1) + (A205405 (n + 1) - 1)).toNat

end

end A205403.P17973450885463141816

/-! ## A205403.P10679411261380729079

`A259361(4*A205405(n+1))`
-/

namespace A205403.P10679411261380729079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259361 (4 * A205405 (n + 1)).toNat

end

end A205403.P10679411261380729079

/-!
# A205404: Least s(k) such that n divides s(k)-s(j) for some j < k, where s(j) = floor((j+1)^2/2)/2.

The programs for A205404, there is no canonical definition to state claims against.
-/

/-! ## A205404.P5180892381469473636

`A087811(A205402(n+1))`
-/

namespace A205404.P5180892381469473636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087811 (A205402 (n + 1)).toNat

end

end A205404.P5180892381469473636

/-! ## A205404.P12664439906452595712

`A002620(A205402(n+1)+1)`
-/

namespace A205404.P12664439906452595712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (A205402 (n + 1) + 1).toNat

end

end A205404.P12664439906452595712

/-! ## A205404.P17571236919092233494

`A076921(A205402(n+1)+1)`
-/

namespace A205404.P17571236919092233494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076921 (A205402 (n + 1) + 1).toNat

end

end A205404.P17571236919092233494

/-! ## A205404.P13084441626110377738

`A205406(n+1)+A205405(n+1)`
-/

namespace A205404.P13084441626110377738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205406 (n + 1) + A205405 (n + 1)

end

end A205404.P13084441626110377738

/-! ## A205404.P12068721307313721692

`A205405(n+1)+(n+1)*A198293(n+1)`
-/

namespace A205404.P12068721307313721692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205405 (n + 1) + (n + 1 : ℤ) * A198293 (n + 1)

end

end A205404.P12068721307313721692

/-! ## A205404.P17849717011692688334

`A205405(n+1)+A205400(A205401(n+1))`
-/

namespace A205404.P17849717011692688334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205405 (n + 1) + A205400 (A205401 (n + 1)).toNat

end

end A205404.P17849717011692688334

/-! ## A205404.P3815126314251746408

`A002265((A205402(n+1)+1)²)`
-/

namespace A205404.P3815126314251746408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 ((A205402 (n + 1) + 1) ^ 2).toNat

end

end A205404.P3815126314251746408

/-! ## A205404.P1426135984311110402

`A003991(A008619(A205402(n+1)²))`
-/

namespace A205404.P1426135984311110402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003991 (A008619 (A205402 (n + 1) ^ 2).toNat).toNat

end

end A205404.P1426135984311110402

/-! ## A205404.P8695754214277034312

`A002265(A065475(A205402(n+1))²)`
-/

namespace A205404.P8695754214277034312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A065475 (A205402 (n + 1)).toNat ^ 2).toNat

end

end A205404.P8695754214277034312

/-! ## A205404.P129764980814016660

`A002265(A131738(A205402(n+1))²)`
-/

namespace A205404.P129764980814016660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A131738 (A205402 (n + 1)).toNat ^ 2).toNat

end

end A205404.P129764980814016660

/-!
# A205405: s(A205403), where s(j)=floor[(j+1)^2/2].

The programs for A205405, there is no canonical definition to state claims against.
-/

/-! ## A205405.P688898144607846105

`A087811(A205403(n+1))`
-/

namespace A205405.P688898144607846105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087811 (A205403 (n + 1)).toNat

end

end A205405.P688898144607846105

/-! ## A205405.P15100029570607520981

`A002620(A205403(n+1)+1)`
-/

namespace A205405.P15100029570607520981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (A205403 (n + 1) + 1).toNat

end

end A205405.P15100029570607520981

/-! ## A205405.P1928737284515840849

`A076921(A205403(n+1)+1)`
-/

namespace A205405.P1928737284515840849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076921 (A205403 (n + 1) + 1).toNat

end

end A205405.P1928737284515840849

/-! ## A205405.P4744825424624998200

`A008642(2*(A205403(n+1)-1))`
-/

namespace A205405.P4744825424624998200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008642 (2 * (A205403 (n + 1) - 1)).toNat

end

end A205405.P4744825424624998200

/-! ## A205405.P6070339659964724253

`A205404(n+1)-A205406(n+1)`
-/

namespace A205405.P6070339659964724253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205404 (n + 1) - A205406 (n + 1)

end

end A205405.P6070339659964724253

/-! ## A205405.P5472709284489995656

`A205404(n+1)-(n+1)*A198293(n+1)`
-/

namespace A205405.P5472709284489995656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205404 (n + 1) - (n + 1 : ℤ) * A198293 (n + 1)

end

end A205405.P5472709284489995656

/-! ## A205405.P15890246456671943108

`A008642(A005843(A205403(n+1)-1))`
-/

namespace A205405.P15890246456671943108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008642 (A005843 (A205403 (n + 1) - 1).toNat).toNat

end

end A205405.P15890246456671943108

/-! ## A205405.P18147419406250950036

`A087811(A205402(n+1))-A205406(n+1)`
-/

namespace A205405.P18147419406250950036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087811 (A205402 (n + 1)).toNat - A205406 (n + 1)

end

end A205405.P18147419406250950036

/-! ## A205405.P18049840515341133437

`A008642(A205403(n+1)+A205403(n+1)-1)`
-/

namespace A205405.P18049840515341133437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008642 (A205403 (n + 1) + (A205403 (n + 1) - 1)).toNat

end

end A205405.P18049840515341133437

/-! ## A205405.P17027473583203759410

`A205404(n+1)-A205400(A205401(n+1))`
-/

namespace A205405.P17027473583203759410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205404 (n + 1) - A205400 (A205401 (n + 1)).toNat

end

end A205405.P17027473583203759410

/-!
# A205406: a(n) = s(k)-s(j), where (k,j) is the least pair for which n divides s(k)-s(j), and s(j) = floor((j+1)^2/2)/2.

The programs for A205406, there is no canonical definition to state claims against.
-/

/-! ## A205406.P11097330779418664087

`(n+1)*A198293(n+1)`
-/

namespace A205406.P11097330779418664087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A198293 (n + 1)

end

end A205406.P11097330779418664087

/-! ## A205406.P8643834075717855060

`A205404(n+1)-A205405(n+1)`
-/

namespace A205406.P8643834075717855060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205404 (n + 1) - A205405 (n + 1)

end

end A205406.P8643834075717855060

/-! ## A205406.P13269708681574686589

`A087811(A205402(n+1))-A205405(n+1)`
-/

namespace A205406.P13269708681574686589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087811 (A205402 (n + 1)).toNat - A205405 (n + 1)

end

end A205406.P13269708681574686589

/-! ## A205406.P3060229071808787918

`A198293(n+1)/(n+1)^A008683(A020483(n))`
-/

namespace A205406.P3060229071808787918
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A198293 (n + 1) : ℚ) / (n + 1 : ℚ) ^ (A008683 (A020483 n).toNat : ℤ)

end

end A205406.P3060229071808787918

/-! ## A205406.P12684347957499682932

`A087811(A205402(n+1))-A087811(A205403(n+1))`
-/

namespace A205406.P12684347957499682932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087811 (A205402 (n + 1)).toNat - A087811 (A205403 (n + 1)).toNat

end

end A205406.P12684347957499682932

/-! ## A205406.P13711030926284173688

`A205400(A205401(n+1))`
-/

namespace A205406.P13711030926284173688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205400 (A205401 (n + 1)).toNat

end

end A205406.P13711030926284173688

/-!
# A205407: Number of (n+2)X(n+2) 0..2 arrays with every 3X3 subblock having three equal elements in a row horizontally, vertically or nw-to-se diagonally exactly two ways, and new values 0..2 introduced in row major order.

The programs for A205407, there is no canonical definition to state claims against.
-/

/-! ## A205407.P1134404830274715255

`A205415(∑[4*n]+1)`
-/

namespace A205407.P1134404830274715255
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205415 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A205407.P1134404830274715255

/-!
# A205408: Number of (n+2) X 3 0..2 arrays with every 3 X 3 subblock having three equal elements in a row horizontally, vertically or nw-to-se diagonally exactly two ways, and new values 0..2 introduced in row major order.

The programs for A205408, there is no canonical definition to state claims against.
-/

/-! ## A205408.P12702155889944770421

`A205415(∑[n]+1)`
-/

namespace A205408.P12702155889944770421
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205415 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A205408.P12702155889944770421

/-! ## A205408.P4154465733530584635

`record[A205415(A286235(n+1))]`
-/

namespace A205408.P4154465733530584635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205415 (A286235 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205408.P4154465733530584635

/-! ## A205408.P5693481749611734431

`record[A010054(n)*A205415(n+1)]`
-/

namespace A205408.P5693481749611734431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A205415 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205408.P5693481749611734431

/-! ## A205408.P10274518473099698879

`record[A103451(n)*A205415(n+1)]`
-/

namespace A205408.P10274518473099698879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103451 n * A205415 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205408.P10274518473099698879

/-! ## A205408.P11041342154830205049

`record[A205415(n+1)/A001498(n)]`
-/

namespace A205408.P11041342154830205049
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A205415 (n + 1) : ℚ) / (A001498 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205408.P11041342154830205049

/-!
# A205409: Number of (n+2)X4 0..2 arrays with every 3X3 subblock having three equal elements in a row horizontally, vertically or nw-to-se diagonally exactly two ways, and new values 0..2 introduced in row major order.

The programs for A205409, there is no canonical definition to state claims against.
-/

/-! ## A205409.P14849210251455914745

`A205415(∑[n+1]+2)`
-/

namespace A205409.P14849210251455914745
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205415 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A205409.P14849210251455914745

/-! ## A205409.P5235214772702492060

`record[A205415(A260220(n)+2)]`
-/

namespace A205409.P5235214772702492060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205415 (A260220 n + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205409.P5235214772702492060

/-! ## A205409.P4804456828145391783

`record[A205415(A286235(n+1)+1)]`
-/

namespace A205409.P4804456828145391783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205415 (A286235 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205409.P4804456828145391783

/-! ## A205409.P7588108087085597926

`record[A205415(A257506(n+1)+2)]`
-/

namespace A205409.P7588108087085597926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205415 (A257506 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205409.P7588108087085597926

/-! ## A205409.P7669316340530549865

`record[A010054(n)*A205415(n+2)]`
-/

namespace A205409.P7669316340530549865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A205415 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205409.P7669316340530549865

/-!
# A205410: Number of (n+2)X5 0..2 arrays with every 3X3 subblock having three equal elements in a row horizontally, vertically or nw-to-se diagonally exactly two ways, and new values 0..2 introduced in row major order.

The programs for A205410, there is no canonical definition to state claims against.
-/

/-! ## A205410.P10103337269110329927

`A205415(∑[n+2]+4)`
-/

namespace A205410.P10103337269110329927
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205415 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A205410.P10103337269110329927

/-! ## A205410.P16309775814147974272

`record[A205415(A257506(n+1)+3)]`
-/

namespace A205410.P16309775814147974272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205415 (A257506 (n + 1) + 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205410.P16309775814147974272

/-! ## A205410.P4315553260517286635

`record[A205415(n+4)/A075501(n+1)]`
-/

namespace A205410.P4315553260517286635
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A205415 (n + 4) : ℚ) / (A075501 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205410.P4315553260517286635

/-! ## A205410.P13858513833322420744

`record[A205415(n+4)/A075504(n+1)]`
-/

namespace A205410.P13858513833322420744
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A205415 (n + 4) : ℚ) / (A075504 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205410.P13858513833322420744

/-! ## A205410.P15023515572179465881

`A205415(A167614(n+1))+A025465(n)`
-/

namespace A205410.P15023515572179465881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205415 (A167614 (n + 1)).toNat + A025465 n

end

end A205410.P15023515572179465881

/-!
# A205411: Number of (n+2)X6 0..2 arrays with every 3X3 subblock having three equal elements in a row horizontally, vertically or nw-to-se diagonally exactly two ways, and new values 0..2 introduced in row major order.

The programs for A205411, there is no canonical definition to state claims against.
-/

/-! ## A205411.P16487256712713792729

`A205415(∑[n+3]+7)`
-/

namespace A205411.P16487256712713792729
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205415 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A205411.P16487256712713792729

/-!
# A205412: Number of (n+2)X7 0..2 arrays with every 3X3 subblock having three equal elements in a row horizontally, vertically or nw-to-se diagonally exactly two ways, and new values 0..2 introduced in row major order.

The programs for A205412, there is no canonical definition to state claims against.
-/

/-! ## A205412.P7243111272889069010

`A205415(∑[n+4]+11)`
-/

namespace A205412.P7243111272889069010
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205415 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A205412.P7243111272889069010

/-! ## A205412.P4818034977442965361

`A308975(n)+A205415(A374005(n+1))`
-/

namespace A205412.P4818034977442965361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308975 n + A205415 (A374005 (n + 1)).toNat

end

end A205412.P4818034977442965361

/-!
# A205413: Number of (n+2)X8 0..2 arrays with every 3X3 subblock having three equal elements in a row horizontally, vertically or nw-to-se diagonally exactly two ways, and new values 0..2 introduced in row major order.

The programs for A205413, there is no canonical definition to state claims against.
-/

/-! ## A205413.P5026036455622490400

`A205415(A374007(n+1))`
-/

namespace A205413.P5026036455622490400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205415 (A374007 (n + 1)).toNat

end

end A205413.P5026036455622490400

/-!
# A205414: Number of (n+2)X9 0..2 arrays with every 3X3 subblock having three equal elements in a row horizontally, vertically or nw-to-se diagonally exactly two ways, and new values 0..2 introduced in row major order.

The programs for A205414, there is no canonical definition to state claims against.
-/

/-! ## A205414.P16775354105084172956

`A205415(A055999(n+4))`
-/

namespace A205414.P16775354105084172956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205415 (A055999 (n + 4)).toNat

end

end A205414.P16775354105084172956

/-!
# A205416: 

The programs for A205416, there is no canonical definition to state claims against.
-/

/-! ## A205416.P15639656096748728192

`A205422((n+1)²+n²)`
-/

namespace A205416.P15639656096748728192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205422 ((n + 1) ^ 2 + n ^ 2)

end

end A205416.P15639656096748728192

/-!
# A205417: Number of (n+1)X2 0..3 arrays with the number of rightwards and downwards edge increases in each 2X2 subblock differing from the number in all its horizontal and vertical neighbors.

The programs for A205417, there is no canonical definition to state claims against.
-/

/-! ## A205417.P17709044979371553820

`A205422(∑[n]+1)`
-/

namespace A205417.P17709044979371553820
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205422 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A205417.P17709044979371553820

/-! ## A205417.P17829488755090829592

`lcm(2, A205422(A000124(n)))`
-/

namespace A205417.P17829488755090829592
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A205422 (A000124 n).toNat)

end

end A205417.P17829488755090829592

/-! ## A205417.P454902613537194760

`record[A205422(n+1)/A022166(n)]`
-/

namespace A205417.P454902613537194760
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A205422 (n + 1) : ℚ) / (A022166 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205417.P454902613537194760

/-! ## A205417.P17926643913459927235

`record[A205422(n+1)/A022167(n)]`
-/

namespace A205417.P17926643913459927235
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A205422 (n + 1) : ℚ) / (A022167 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205417.P17926643913459927235

/-! ## A205417.P13783940726179861404

`record[A205422(n+1)/A022168(n)]`
-/

namespace A205417.P13783940726179861404
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A205422 (n + 1) : ℚ) / (A022168 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205417.P13783940726179861404

/-!
# A205418: Number of (n+1)X3 0..3 arrays with the number of rightwards and downwards edge increases in each 2X2 subblock differing from the number in all its horizontal and vertical neighbors.

The programs for A205418, there is no canonical definition to state claims against.
-/

/-! ## A205418.P15101894158805135101

`A205422(∑[n+1]+2)`
-/

namespace A205418.P15101894158805135101
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205422 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A205418.P15101894158805135101

/-!
# A205419: Number of (n+1)X4 0..3 arrays with the number of rightwards and downwards edge increases in each 2X2 subblock differing from the number in all its horizontal and vertical neighbors.

The programs for A205419, there is no canonical definition to state claims against.
-/

/-! ## A205419.P15818567411821196464

`A205422(∑[n+2]+4)`
-/

namespace A205419.P15818567411821196464
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205422 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A205419.P15818567411821196464

/-! ## A205419.P9346603970778803124

`A205422(A167614(n+1))+A181838(n)`
-/

namespace A205419.P9346603970778803124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205422 (A167614 (n + 1)).toNat + A181838 n

end

end A205419.P9346603970778803124

/-! ## A205419.P5431021961773531062

`A205422(A167614(n+1))+A185245(n)`
-/

namespace A205419.P5431021961773531062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205422 (A167614 (n + 1)).toNat + A185245 n

end

end A205419.P5431021961773531062

/-! ## A205419.P15116481226393152774

`A205422(A167614(n+1))+A185284(n)`
-/

namespace A205419.P15116481226393152774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205422 (A167614 (n + 1)).toNat + A185284 n

end

end A205419.P15116481226393152774

/-!
# A205420: Number of (n+1)X5 0..3 arrays with the number of rightwards and downwards edge increases in each 2X2 subblock differing from the number in all its horizontal and vertical neighbors.

The programs for A205420, there is no canonical definition to state claims against.
-/

/-! ## A205420.P13684821339218795587

`A205422(A052905(n)+9)`
-/

namespace A205420.P13684821339218795587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205422 (A052905 n + 9).toNat

end

end A205420.P13684821339218795587

/-! ## A205420.P1788751111593808014

`A205422(A167614(n+2)+1)`
-/

namespace A205420.P1788751111593808014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205422 (A167614 (n + 2) + 1).toNat

end

end A205420.P1788751111593808014

/-! ## A205420.P14719714574320056625

`A205422(A000124(n+3)+3)`
-/

namespace A205420.P14719714574320056625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205422 (A000124 (n + 3) + 3).toNat

end

end A205420.P14719714574320056625

/-!
# A205423: Number of (n+1)X(n+1) 0..3 arrays with the number of equal 2X2 subblock diagonal pairs and equal antidiagonal pairs differing from each horizontal or vertical neighbor, and new values 0..3 introduced in row major order.

The programs for A205423, there is no canonical definition to state claims against.
-/

/-! ## A205423.P7922634655357063788

`A205431(∑[4*n]+1)`
-/

namespace A205423.P7922634655357063788
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205431 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A205423.P7922634655357063788

/-!
# A205424: Number of (n+1) X 2 0..3 arrays with the number of equal 2 X 2 subblock diagonal pairs and equal antidiagonal pairs differing from each horizontal or vertical neighbor, and new values 0..3 introduced in row major order.

The programs for A205424, there is no canonical definition to state claims against.
-/

/-! ## A205424.P16679933758238437954

`A205431(∑[n]+1)`
-/

namespace A205424.P16679933758238437954
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205431 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A205424.P16679933758238437954

/-! ## A205424.P15533986509742795989

`A206169(∑[n+1])`
-/

namespace A205424.P15533986509742795989
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206169 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A205424.P15533986509742795989

/-! ## A205424.P10991422910155123794

`or(2, A205431(A000124(n)))`
-/

namespace A205424.P10991422910155123794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (A205431 (A000124 n).toNat)

end

end A205424.P10991422910155123794

/-! ## A205424.P3439242053570643574

`or(2, A206169(A025747(n)))`
-/

namespace A205424.P3439242053570643574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (A206169 (A025747 n).toNat)

end

end A205424.P3439242053570643574

/-! ## A205424.P17310372244742298768

`record[A205431(A056534(n+1))]`
-/

namespace A205424.P17310372244742298768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205431 (A056534 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205424.P17310372244742298768

/-!
# A205425: Number of (n+1) X 3 0..3 arrays with the number of equal 2 X 2 subblock diagonal pairs and equal antidiagonal pairs differing from each horizontal or vertical neighbor, and new values 0..3 introduced in row major order.

The programs for A205425, there is no canonical definition to state claims against.
-/

/-! ## A205425.P1661902877722405912

`A205431(∑[n+1]+2)`
-/

namespace A205425.P1661902877722405912
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205431 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A205425.P1661902877722405912

/-! ## A205425.P15878466991222632679

`record[root(A205431(n+2), A306641(n))]`
-/

namespace A205425.P15878466991222632679
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A205431 (n + 2) : ℝ) ^ (1 / (A306641 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205425.P15878466991222632679

/-! ## A205425.P10970767589202701388

`lcm(2, A205431(A000096(n+1)))`
-/

namespace A205425.P10970767589202701388
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A205431 (A000096 (n + 1)).toNat)

end

end A205425.P10970767589202701388

/-! ## A205425.P9553401266317132027

`A326463(n)+A205431(A000096(n+1))`
-/

namespace A205425.P9553401266317132027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326463 n + A205431 (A000096 (n + 1)).toNat

end

end A205425.P9553401266317132027

/-! ## A205425.P7175441278070366839

`A055642(n)*A205431(A000096(n+1))`
-/

namespace A205425.P7175441278070366839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 n * A205431 (A000096 (n + 1)).toNat

end

end A205425.P7175441278070366839

/-!
# A205426: Number of (n+1) X 4 0..3 arrays with the number of equal 2 X 2 subblock diagonal pairs and equal antidiagonal pairs differing from each horizontal or vertical neighbor, and new values 0..3 introduced in row major order.

The programs for A205426, there is no canonical definition to state claims against.
-/

/-! ## A205426.P17426848892090413798

`A205431(∑[n+2]+4)`
-/

namespace A205426.P17426848892090413798
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205431 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A205426.P17426848892090413798

/-! ## A205426.P15860742861752452984

`lcm(2, A205431(A167614(n+1)))`
-/

namespace A205426.P15860742861752452984
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A205431 (A167614 (n + 1)).toNat)

end

end A205426.P15860742861752452984

/-! ## A205426.P15646416216911562088

`A205431(A167614(n+1))+A025442(n)`
-/

namespace A205426.P15646416216911562088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205431 (A167614 (n + 1)).toNat + A025442 n

end

end A205426.P15646416216911562088

/-! ## A205426.P17479986315026668284

`A205431(A167614(n+1))+A025469(n)`
-/

namespace A205426.P17479986315026668284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205431 (A167614 (n + 1)).toNat + A025469 n

end

end A205426.P17479986315026668284

/-! ## A205426.P2940826997864065901

`A055642(n)*A205431(A167614(n+1))`
-/

namespace A205426.P2940826997864065901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 n * A205431 (A167614 (n + 1)).toNat

end

end A205426.P2940826997864065901

/-!
# A205427: Number of (n+1)X5 0..3 arrays with the number of equal 2X2 subblock diagonal pairs and equal antidiagonal pairs differing from each horizontal or vertical neighbor, and new values 0..3 introduced in row major order.

The programs for A205427, there is no canonical definition to state claims against.
-/

/-! ## A205427.P1838970801356515608

`A205431(∑[n+3]+7)`
-/

namespace A205427.P1838970801356515608
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205431 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A205427.P1838970801356515608

/-!
# A205428: Number of (n+1)X6 0..3 arrays with the number of equal 2X2 subblock diagonal pairs and equal antidiagonal pairs differing from each horizontal or vertical neighbor, and new values 0..3 introduced in row major order.

The programs for A205428, there is no canonical definition to state claims against.
-/

/-! ## A205428.P10053716456747701304

`A205431(C(n+6, 2)-n)`
-/

namespace A205428.P10053716456747701304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205431 (Nat.choose (n + 6) 2 - n)

end

end A205428.P10053716456747701304

/-! ## A205428.P9044177186000533516

`A205431(A374005(n+1))`
-/

namespace A205428.P9044177186000533516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205431 (A374005 (n + 1)).toNat

end

end A205428.P9044177186000533516

/-!
# A205429: Number of (n+1)X7 0..3 arrays with the number of equal 2X2 subblock diagonal pairs and equal antidiagonal pairs differing from each horizontal or vertical neighbor, and new values 0..3 introduced in row major order.

The programs for A205429, there is no canonical definition to state claims against.
-/

/-! ## A205429.P6259552584935095117

`A205431(A374007(n+1))`
-/

namespace A205429.P6259552584935095117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205431 (A374007 (n + 1)).toNat

end

end A205429.P6259552584935095117

/-!
# A205430: 

The programs for A205430, there is no canonical definition to state claims against.
-/

/-! ## A205430.P6964834995663766847

`A205431(eq[6, A193592(n)])`
-/

namespace A205430.P6964834995663766847
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205431 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A205430.P6964834995663766847

/-!
# A205432: Number of (n+1)X(n+1) 0..3 arrays with every 2X2 subblock having the same number of equal edges, and new values 0..3 introduced in row major order.

The programs for A205432, there is no canonical definition to state claims against.
-/

/-! ## A205432.P9719829449374195692

`A205440(∑[4*n]+1)`
-/

namespace A205432.P9719829449374195692
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205440 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A205432.P9719829449374195692

/-! ## A205432.P2367969884868419252

`A052307(n)*A205440(A001844(n))`
-/

namespace A205432.P2367969884868419252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052307 n * A205440 (A001844 n).toNat

end

end A205432.P2367969884868419252

/-! ## A205432.P6959038981803834500

`A256756(n+1)+A205440(A001844(n))`
-/

namespace A205432.P6959038981803834500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256756 (n + 1) + A205440 (A001844 n).toNat

end

end A205432.P6959038981803834500

/-!
# A205433: Number of (n+1) X 2 0..3 arrays with every 2 X 2 subblock having the same number of equal edges, and new values 0..3 introduced in row major order.

The programs for A205433, there is no canonical definition to state claims against.
-/

/-! ## A205433.P5459208883906807643

`A205440(∑[n]+1)`
-/

namespace A205433.P5459208883906807643
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205440 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A205433.P5459208883906807643

/-! ## A205433.P5609200598105563065

`or(1, A205440(A000124(n)))`
-/

namespace A205433.P5609200598105563065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A205440 (A000124 n).toNat)

end

end A205433.P5609200598105563065

/-! ## A205433.P7911011756059275220

`record[gcd(A002262(n), A205440(n+1))]`
-/

namespace A205433.P7911011756059275220
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A205440 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205433.P7911011756059275220

/-! ## A205433.P4120700483865759577

`record[A205440(n+1)/A046792(n+1)]`
-/

namespace A205433.P4120700483865759577
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A205440 (n + 1) : ℚ) / (A046792 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205433.P4120700483865759577

/-! ## A205433.P12174745218482128885

`record[root(A205440(n+1), A002260(n+1))]`
-/

namespace A205433.P12174745218482128885
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A205440 (n + 1) : ℝ) ^ (1 / (A002260 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205433.P12174745218482128885

/-!
# A205434: Number of (n+1)X3 0..3 arrays with every 2X2 subblock having the same number of equal edges, and new values 0..3 introduced in row major order.

The programs for A205434, there is no canonical definition to state claims against.
-/

/-! ## A205434.P10578991445379161051

`A205440(∑[n+1]+2)`
-/

namespace A205434.P10578991445379161051
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205440 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A205434.P10578991445379161051

/-! ## A205434.P1942847476472303956

`record[gcd(A002262(n), A205440(n+2))]`
-/

namespace A205434.P1942847476472303956
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A205440 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205434.P1942847476472303956

/-! ## A205434.P8482827648538371830

`record[root(A205440(n+2), A002260(n+1))]`
-/

namespace A205434.P8482827648538371830
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A205440 (n + 2) : ℝ) ^ (1 / (A002260 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205434.P8482827648538371830

/-! ## A205434.P9368366045129742105

`record[A205440(Δ[A003453(n+5)])]`
-/

namespace A205434.P9368366045129742105
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003453 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205440 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205434.P9368366045129742105

/-! ## A205434.P14859248456034039675

`A350139(n+1)+A205440(A000096(n+1))`
-/

namespace A205434.P14859248456034039675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350139 (n + 1) + A205440 (A000096 (n + 1)).toNat

end

end A205434.P14859248456034039675

/-!
# A205435: Number of (n+1)X4 0..3 arrays with every 2X2 subblock having the same number of equal edges, and new values 0..3 introduced in row major order.

The programs for A205435, there is no canonical definition to state claims against.
-/

/-! ## A205435.P1365042592494924479

`A205440(∑[n+2]+4)`
-/

namespace A205435.P1365042592494924479
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205440 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A205435.P1365042592494924479

/-! ## A205435.P17614031562077706526

`A205440(A167614(n+1))+A185245(n)`
-/

namespace A205435.P17614031562077706526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205440 (A167614 (n + 1)).toNat + A185245 n

end

end A205435.P17614031562077706526

/-! ## A205435.P11331821818439780363

`A205440(A167614(n+1))+A185284(n)`
-/

namespace A205435.P11331821818439780363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205440 (A167614 (n + 1)).toNat + A185284 n

end

end A205435.P11331821818439780363

/-! ## A205435.P15599889278911674608

`A015342(n)*A205440(A167614(n+1))`
-/

namespace A205435.P15599889278911674608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015342 n * A205440 (A167614 (n + 1)).toNat

end

end A205435.P15599889278911674608

/-! ## A205435.P1390680318878308734

`A205440(A167614(n+1))*A269626(n)`
-/

namespace A205435.P1390680318878308734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205440 (A167614 (n + 1)).toNat * A269626 n

end

end A205435.P1390680318878308734

/-!
# A205436: Number of (n+1)X5 0..3 arrays with every 2X2 subblock having the same number of equal edges, and new values 0..3 introduced in row major order.

The programs for A205436, there is no canonical definition to state claims against.
-/

/-! ## A205436.P17012076933729011910

`A205440(A052905(n)+9)`
-/

namespace A205436.P17012076933729011910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205440 (A052905 n + 9).toNat

end

end A205436.P17012076933729011910

/-! ## A205436.P2990606955337495462

`A205440(A055999(n)+10)`
-/

namespace A205436.P2990606955337495462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205440 (A055999 n + 10).toNat

end

end A205436.P2990606955337495462

/-! ## A205436.P17833407778177364116

`A205440(A167614(n+2)+1)`
-/

namespace A205436.P17833407778177364116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205440 (A167614 (n + 2) + 1).toNat

end

end A205436.P17833407778177364116

/-! ## A205436.P15548911663400269068

`A205440(Δ[A264443(n)-n²])`
-/

namespace A205436.P15548911663400269068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205440 (f1 (n + 1) - f1 n).toNat

end

end A205436.P15548911663400269068

/-! ## A205436.P823939182847558150

`A205440(A141214(n+1))`
-/

namespace A205436.P823939182847558150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205440 (A141214 (n + 1)).toNat

end

end A205436.P823939182847558150

/-!
# A205437: Number of (n+1)X6 0..3 arrays with every 2X2 subblock having the same number of equal edges, and new values 0..3 introduced in row major order.

The programs for A205437, there is no canonical definition to state claims against.
-/

/-! ## A205437.P6244973615496755204

`A205440(Δ[A264443(n)])`
-/

namespace A205437.P6244973615496755204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205440 (f1 (n + 1) - f1 n).toNat

end

end A205437.P6244973615496755204

/-! ## A205437.P456924739126029182

`A205440(A374005(n+1))`
-/

namespace A205437.P456924739126029182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205440 (A374005 (n + 1)).toNat

end

end A205437.P456924739126029182

/-! ## A205437.P8730631975238789391

`A205440(A052905(n+2)+1)`
-/

namespace A205437.P8730631975238789391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205440 (A052905 (n + 2) + 1).toNat

end

end A205437.P8730631975238789391

/-! ## A205437.P5273485129852346594

`A205440(A264443(n+1)-A264443(n))`
-/

namespace A205437.P5273485129852346594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205440 (A264443 (n + 1) - A264443 n).toNat

end

end A205437.P5273485129852346594

/-!
# A205438: Number of (n+1)X7 0..3 arrays with every 2X2 subblock having the same number of equal edges, and new values 0..3 introduced in row major order.

The programs for A205438, there is no canonical definition to state claims against.
-/

/-! ## A205438.P8992923345334968849

`A205440(A374007(n+1))`
-/

namespace A205438.P8992923345334968849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205440 (A374007 (n + 1)).toNat

end

end A205438.P8992923345334968849

/-! ## A205438.P2271320895596386141

`A205440(A052905(n+3))`
-/

namespace A205438.P2271320895596386141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205440 (A052905 (n + 3)).toNat

end

end A205438.P2271320895596386141

/-! ## A205438.P12281073194001979808

`A205440(eq[5, A193592(n)])`
-/

namespace A205438.P12281073194001979808
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205440 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A205438.P12281073194001979808

/-! ## A205438.P2250543852746999191

`A205440(Δ[Δ[A006504(n+1)]])`
-/

namespace A205438.P2250543852746999191
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006504 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205440 (f1 (n + 1) - f1 n).toNat

end

end A205438.P2250543852746999191

/-!
# A205442: Least k such that n divides s(k)-s(j) for some j<k, where s(j) is the (2j-1)-st Fibonacci number.

The programs for A205442, there is no canonical definition to state claims against.
-/

/-! ## A205442.P6190995542080868664

`A002024(A205441(1+n))+1`
-/

namespace A205442.P6190995542080868664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A205441 (1 + n)).toNat + 1

end

end A205442.P6190995542080868664

/-! ## A205442.P12925813271603875912

`A003057(A205441(n+1)+1)`
-/

namespace A205442.P12925813271603875912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003057 (A205441 (n + 1) + 1).toNat

end

end A205442.P12925813271603875912

/-! ## A205442.P1606989892400219528

`A205443(n+1)+A004736(A205441(n+1))`
-/

namespace A205442.P1606989892400219528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205443 (n + 1) + A004736 (A205441 (n + 1)).toNat

end

end A205442.P1606989892400219528

/-! ## A205442.P5904398879845044100

`A004736(A205441(n+1))+A002262(A205441(n+1)-1)+1`
-/

namespace A205442.P5904398879845044100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (A205441 (n + 1)).toNat + (A002262 (A205441 (n + 1) - 1).toNat + 1)

end

end A205442.P5904398879845044100

/-! ## A205442.P17561114071375545975

`A004736(A205441(n+1))+A131818(A205441(n+1)+1)-1`
-/

namespace A205442.P17561114071375545975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (A205441 (n + 1)).toNat + (A131818 (A205441 (n + 1) + 1).toNat - 1)

end

end A205442.P17561114071375545975

/-! ## A205442.P13988082350319729789

`A097285(2*A205441(n+1))`
-/

namespace A205442.P13988082350319729789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097285 (2 * A205441 (n + 1)).toNat

end

end A205442.P13988082350319729789

/-! ## A205442.P12034037033008477644

`A097285(A205441(n+1)+A205441(n+1))`
-/

namespace A205442.P12034037033008477644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097285 (A205441 (n + 1) + A205441 (n + 1)).toNat

end

end A205442.P12034037033008477644

/-!
# A205443: The index j<k such that n divides s(k)-s(j) for some j, where s(j)=Fibonacci(2j-1), and k is the least index for which such a j exists.

The programs for A205443, there is no canonical definition to state claims against.
-/

/-! ## A205443.P1343082786186313698

`A002260(A205441(n+1))`
-/

namespace A205443.P1343082786186313698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A205441 (n + 1)).toNat

end

end A205443.P1343082786186313698

/-! ## A205443.P17209938499561328845

`A002262(A205441(n+1)-1)+1`
-/

namespace A205443.P17209938499561328845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (A205441 (n + 1) - 1).toNat + 1

end

end A205443.P17209938499561328845

/-! ## A205443.P17946350337801011108

`A131818(A205441(n+1)+1)-1`
-/

namespace A205443.P17946350337801011108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (A205441 (n + 1) + 1).toNat - 1

end

end A205443.P17946350337801011108

/-! ## A205443.P11558778417889557758

`A205442(n+1)-A004736(A205441(n+1))`
-/

namespace A205443.P11558778417889557758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205442 (n + 1) - A004736 (A205441 (n + 1)).toNat

end

end A205443.P11558778417889557758

/-! ## A205443.P8747535880973281376

`A198242(ceil(n/(n+1))+4)+A131818(A205441(n+1)+1)`
-/

namespace A205443.P8747535880973281376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198242 (⌈(n : ℚ) / (n + 1 : ℚ)⌉ + 4).toNat + A131818 (A205441 (n + 1) + 1).toNat

end

end A205443.P8747535880973281376

/-! ## A205443.P10289943199993363432

`A003057(A205441(n+1)+1)-A004736(A205441(n+1))`
-/

namespace A205443.P10289943199993363432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003057 (A205441 (n + 1) + 1).toNat - A004736 (A205441 (n + 1)).toNat

end

end A205443.P10289943199993363432

/-! ## A205443.P8001072707435585743

`A097285(2*A205441(n+1)-1)`
-/

namespace A205443.P8001072707435585743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097285 (2 * A205441 (n + 1) - 1).toNat

end

end A205443.P8001072707435585743

/-! ## A205443.P5675151916873116411

`A097285(A205441(n+1)+A205441(n+1)-1)`
-/

namespace A205443.P5675151916873116411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097285 (A205441 (n + 1) + (A205441 (n + 1) - 1)).toNat

end

end A205443.P5675151916873116411

/-!
# A205444: Least s(k) such that n divides s(k)-s(j) for some j<k, where s(j)=Fibonacci(2j-1).

The programs for A205444, there is no canonical definition to state claims against.
-/

/-! ## A205444.P16697929651914190237

`A001519(A205442(n+1))`
-/

namespace A205444.P16697929651914190237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001519 (A205442 (n + 1)).toNat

end

end A205444.P16697929651914190237

/-! ## A205444.P11910893232868989626

`A122367(A205442(n+1)-1)`
-/

namespace A205444.P11910893232868989626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122367 (A205442 (n + 1) - 1).toNat

end

end A205444.P11910893232868989626

/-! ## A205444.P10187866798010592195

`A212804(2*A205442(n+1))`
-/

namespace A205444.P10187866798010592195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (2 * A205442 (n + 1)).toNat

end

end A205444.P10187866798010592195

/-! ## A205444.P6173392710823199482

`A000045(2*A205442(n+1)-1)`
-/

namespace A205444.P6173392710823199482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (2 * A205442 (n + 1) - 1).toNat

end

end A205444.P6173392710823199482

/-! ## A205444.P6616433079834142765

`A205446(n+1)+A205445(n+1)`
-/

namespace A205444.P6616433079834142765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205446 (n + 1) + A205445 (n + 1)

end

end A205444.P6616433079834142765

/-! ## A205444.P14002889254263773862

`A000045(abs(A060747(A205442(n+1))))`
-/

namespace A205444.P14002889254263773862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 |A060747 (A205442 (n + 1)).toNat|.toNat

end

end A205444.P14002889254263773862

/-! ## A205444.P16921904257669622573

`A000045(A205442(n+1)+A205442(n+1)-1)`
-/

namespace A205444.P16921904257669622573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A205442 (n + 1) + (A205442 (n + 1) - 1)).toNat

end

end A205444.P16921904257669622573

/-! ## A205444.P6866149371818949362

`A205448(C(A205442(n+1), 2))`
-/

namespace A205444.P6866149371818949362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205448 (Nat.choose (A205442 (n + 1)).toNat 2)

end

end A205444.P6866149371818949362

/-! ## A205444.P16404972588435521229

`A205445(n+1)+A205371(A205441(n+1))`
-/

namespace A205444.P16404972588435521229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205445 (n + 1) + A205371 (A205441 (n + 1)).toNat

end

end A205444.P16404972588435521229

/-! ## A205444.P7350977359395231782

`A000045(A055086(A205442(n+1)²))`
-/

namespace A205444.P7350977359395231782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A055086 (A205442 (n + 1) ^ 2).toNat).toNat

end

end A205444.P7350977359395231782

/-!
# A205445: s(A205446), where s(j)=Fibonacci(2j-1).

The programs for A205445, there is no canonical definition to state claims against.
-/

/-! ## A205445.P15898110970284934826

`A001519(A205443(n+1))`
-/

namespace A205445.P15898110970284934826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001519 (A205443 (n + 1)).toNat

end

end A205445.P15898110970284934826

/-! ## A205445.P774501587184375335

`A122367(A205443(n+1)-1)`
-/

namespace A205445.P774501587184375335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122367 (A205443 (n + 1) - 1).toNat

end

end A205445.P774501587184375335

/-! ## A205445.P14809158955925217772

`A212804(2*A205443(n+1))`
-/

namespace A205445.P14809158955925217772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (2 * A205443 (n + 1)).toNat

end

end A205445.P14809158955925217772

/-! ## A205445.P7476096499484804594

`A247309(3*A205443(n+1))`
-/

namespace A205445.P7476096499484804594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247309 (3 * A205443 (n + 1)).toNat

end

end A205445.P7476096499484804594

/-! ## A205445.P2943948862914523113

`A000045(2*A205443(n+1)-1)`
-/

namespace A205445.P2943948862914523113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (2 * A205443 (n + 1) - 1).toNat

end

end A205445.P2943948862914523113

/-! ## A205445.P9788734004673793481

`A205444(n+1)-A205446(n+1)`
-/

namespace A205445.P9788734004673793481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205444 (n + 1) - A205446 (n + 1)

end

end A205445.P9788734004673793481

/-! ## A205445.P15548566301737786355

`A000045(A205443(n+1)+A205443(n+1)-1)`
-/

namespace A205445.P15548566301737786355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A205443 (n + 1) + (A205443 (n + 1) - 1)).toNat

end

end A205445.P15548566301737786355

/-! ## A205445.P8409518174685289114

`A144224(A205441(n+1))`
-/

namespace A205445.P8409518174685289114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144224 (A205441 (n + 1)).toNat

end

end A205445.P8409518174685289114

/-! ## A205445.P16823857666734814276

`A205444(n+1)-A205371(A205441(n+1))`
-/

namespace A205445.P16823857666734814276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205444 (n + 1) - A205371 (A205441 (n + 1)).toNat

end

end A205445.P16823857666734814276

/-!
# A205446: s(k)-s(j), where (k,j) is the least pair for which n divides s(k)-s(j), and s(j)=Fibonacci(2j-1).

The programs for A205446, there is no canonical definition to state claims against.
-/

/-! ## A205446.P17513124899242464805

`(n+1)*A205447(n+1)`
-/

namespace A205446.P17513124899242464805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A205447 (n + 1)

end

end A205446.P17513124899242464805

/-! ## A205446.P12086365379834084521

`A205444(n+1)-A205445(n+1)`
-/

namespace A205446.P12086365379834084521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205444 (n + 1) - A205445 (n + 1)

end

end A205446.P12086365379834084521

/-! ## A205446.P6347309370366464296

`A001519(A205442(n+1))-A205445(n+1)`
-/

namespace A205446.P6347309370366464296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001519 (A205442 (n + 1)).toNat - A205445 (n + 1)

end

end A205446.P6347309370366464296

/-! ## A205446.P18429079338188764042

`A205444(n+1)-A001519(A205443(n+1))`
-/

namespace A205446.P18429079338188764042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205444 (n + 1) - A001519 (A205443 (n + 1)).toNat

end

end A205446.P18429079338188764042

/-! ## A205446.P4719842047087201458

`A205444(n+1)-A247309(3*A205443(n+1))`
-/

namespace A205446.P4719842047087201458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205444 (n + 1) - A247309 (3 * A205443 (n + 1)).toNat

end

end A205446.P4719842047087201458

/-! ## A205446.P11139357063324049800

`A205444(n+1)-A000045(2*A205443(n+1)-1)`
-/

namespace A205446.P11139357063324049800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205444 (n + 1) - A000045 (2 * A205443 (n + 1) - 1).toNat

end

end A205446.P11139357063324049800

/-! ## A205446.P9473020274865782664

`A205444(n+1)-A000045(A205443(n+1)+A205443(n+1)-1)`
-/

namespace A205446.P9473020274865782664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205444 (n + 1) - A000045 (A205443 (n + 1) + (A205443 (n + 1) - 1)).toNat

end

end A205446.P9473020274865782664

/-! ## A205446.P11194373463649586483

`A205371(A205441(n+1))`
-/

namespace A205446.P11194373463649586483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205371 (A205441 (n + 1)).toNat

end

end A205446.P11194373463649586483

/-!
# A205447: (1/n)*A205446(n).

The programs for A205447, there is no canonical definition to state claims against.
-/

/-! ## A205447.P15720875070204186084

`1/(n+1)*A205446(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A205447.P15720875070204186084
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (n + 1 : ℚ) * (A205446 (n + 1) : ℚ)

end

end A205447.P15720875070204186084

/-! ## A205447.P1790704961185492250

`A205446(n+1)/(n+1)`
-/

namespace A205447.P1790704961185492250
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A205446 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A205447.P1790704961185492250

/-! ## A205447.P10204594493260989168

`(A205444(n+1)-A205445(n+1))/(n+1)`
-/

namespace A205447.P10204594493260989168
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A205444 (n + 1) - A205445 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A205447.P10204594493260989168

/-! ## A205447.P6125699006269732226

`(A001519(A205442(n+1))-A205445(n+1))/(n+1)`
-/

namespace A205447.P6125699006269732226
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001519 (A205442 (n + 1)).toNat - A205445 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A205447.P6125699006269732226

/-! ## A205447.P11342446822108900845

`(A205444(n+1)-A001519(A205443(n+1)))/(n+1)`
-/

namespace A205447.P11342446822108900845
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A205444 (n + 1) - A001519 (A205443 (n + 1)).toNat : ℚ) / (n + 1 : ℚ)

end

end A205447.P11342446822108900845

/-! ## A205447.P16738025605303707936

`A205371(A205441(n+1))/(n+1)`
-/

namespace A205447.P16738025605303707936
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A205371 (A205441 (n + 1)).toNat : ℚ) / (n + 1 : ℚ)

end

end A205447.P16738025605303707936

/-!
# A205448: Ordered differences of even-indexed Fibonacci numbers.

The programs for A205448, there is no canonical definition to state claims against.
-/

/-! ## A205448.P7225875672701463311

`ceil(ϕ*A205371(n+1))`
-/

namespace A205448.P7225875672701463311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.goldenRatio * (A205371 (n + 1) : ℝ)⌉

end

end A205448.P7225875672701463311

/-! ## A205448.P7336401572280531078

`A171730(A185871(n+1))`
-/

namespace A205448.P7336401572280531078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171730 (A185871 (n + 1)).toNat

end

end A205448.P7336401572280531078

/-! ## A205448.P13280194134028300476

`A204922(A185869(n+1))`
-/

namespace A205448.P13280194134028300476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204922 (A185869 (n + 1)).toNat

end

end A205448.P13280194134028300476

/-! ## A205448.P12504816464267335665

`A204922(A093995(n+1)+2*n+1)`
-/

namespace A205448.P12504816464267335665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204922 (A093995 (n + 1) + (2 * n + 1 : ℤ)).toNat

end

end A205448.P12504816464267335665

/-! ## A205448.P5596153513612366556

`A204922(A114327(n)+A016825(n))`
-/

namespace A205448.P5596153513612366556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204922 (A114327 n + A016825 n).toNat

end

end A205448.P5596153513612366556

/-! ## A205448.P17216793267066836263

`A204922(A038722(n+1)+A016777(n))`
-/

namespace A205448.P17216793267066836263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204922 (A038722 (n + 1) + A016777 n).toNat

end

end A205448.P17216793267066836263

/-! ## A205448.P1117596067837653377

`A193922(eq[0, A051159(n)])`
-/

namespace A205448.P1117596067837653377
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051159 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193922 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A205448.P1117596067837653377

/-! ## A205448.P4272285684824593789

`A193922(eq[0, A187596(n)])`
-/

namespace A205448.P4272285684824593789
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187596 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193922 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A205448.P4272285684824593789

/-! ## A205448.P11088151827589837086

`A062877(A204985(n+1))`
-/

namespace A205448.P11088151827589837086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062877 (A204985 (n + 1)).toNat

end

end A205448.P11088151827589837086

/-!
# A205450: Least k such that n divides s(k) - s(j) for some j<k, where s(j) is the 2j-th Fibonacci number.

The programs for A205450, there is no canonical definition to state claims against.
-/

/-! ## A205450.P4996313110495450400

`A002024(A205449(n+1))+1`
-/

namespace A205450.P4996313110495450400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A205449 (n + 1)).toNat + 1

end

end A205450.P4996313110495450400

/-! ## A205450.P13680034649342115119

`A003057(A205449(n+1)+1)`
-/

namespace A205450.P13680034649342115119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003057 (A205449 (n + 1) + 1).toNat

end

end A205450.P13680034649342115119

/-! ## A205450.P2120170343079465200

`A205451(n+1)+A004736(A205449(n+1))`
-/

namespace A205450.P2120170343079465200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205451 (n + 1) + A004736 (A205449 (n + 1)).toNat

end

end A205450.P2120170343079465200

/-! ## A205450.P5049026588188251611

`A004736(A205449(n+1))+A131818(A205449(n+1)+1)-1`
-/

namespace A205450.P5049026588188251611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (A205449 (n + 1)).toNat + (A131818 (A205449 (n + 1) + 1).toNat - 1)

end

end A205450.P5049026588188251611

/-! ## A205450.P850172438593419565

`A097285(2*A205449(n+1))`
-/

namespace A205450.P850172438593419565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097285 (2 * A205449 (n + 1)).toNat

end

end A205450.P850172438593419565

/-! ## A205450.P15992916887306144636

`A130245(ceil(sqrt(A205452(n+1))))`
-/

namespace A205450.P15992916887306144636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130245 ⌈Real.sqrt (A205452 (n + 1) : ℝ)⌉.toNat

end

end A205450.P15992916887306144636

/-! ## A205450.P182147930647196880

`A130245(round(sqrt(A205452(n+1))))`
-/

namespace A205450.P182147930647196880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130245 (SequenceMachineLib.roundAway (Real.sqrt (A205452 (n + 1) : ℝ))).toNat

end

end A205450.P182147930647196880

/-! ## A205450.P16652084451659753029

`A205542(A205449(n+1)-A205451(n+1))`
-/

namespace A205450.P16652084451659753029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205542 (A205449 (n + 1) - A205451 (n + 1)).toNat

end

end A205450.P16652084451659753029

/-!
# A205451: The index j<k such that n divides s(k)-s(j) for some j, where s(j)=Fibonacci(2j), and k is the least index for which such a j exists.

The programs for A205451, there is no canonical definition to state claims against.
-/

/-! ## A205451.P462208080551471237

`A002260(A205449(n+1))`
-/

namespace A205451.P462208080551471237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A205449 (n + 1)).toNat

end

end A205451.P462208080551471237

/-! ## A205451.P6848157906995268578

`A131818(A205449(n+1)+1)-1`
-/

namespace A205451.P6848157906995268578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (A205449 (n + 1) + 1).toNat - 1

end

end A205451.P6848157906995268578

/-! ## A205451.P9928780870524723229

`A144328(A205450(n+1)+A205449(n+1))`
-/

namespace A205451.P9928780870524723229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (A205450 (n + 1) + A205449 (n + 1)).toNat

end

end A205451.P9928780870524723229

/-! ## A205451.P5623133049878246131

`A153881(n+2)+A131818(A205449(n+1)+1)`
-/

namespace A205451.P5623133049878246131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153881 (n + 2) + A131818 (A205449 (n + 1) + 1).toNat

end

end A205451.P5623133049878246131

/-! ## A205451.P14706918203500820734

`A003057(A205449(n+1)+1)-A004736(A205449(n+1))`
-/

namespace A205451.P14706918203500820734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003057 (A205449 (n + 1) + 1).toNat - A004736 (A205449 (n + 1)).toNat

end

end A205451.P14706918203500820734

/-! ## A205451.P9346472691347815176

`A097285(2*A205449(n+1)-1)`
-/

namespace A205451.P9346472691347815176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097285 (2 * A205449 (n + 1) - 1).toNat

end

end A205451.P9346472691347815176

/-! ## A205451.P7411781913284551685

`A097285(A205449(n+1)+A205449(n+1)-1)`
-/

namespace A205451.P7411781913284551685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097285 (A205449 (n + 1) + (A205449 (n + 1) - 1)).toNat

end

end A205451.P7411781913284551685

/-! ## A205451.P11917447616723585959

`A130245(ceil(sqrt(A205453(n+1))))`
-/

namespace A205451.P11917447616723585959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130245 ⌈Real.sqrt (A205453 (n + 1) : ℝ)⌉.toNat

end

end A205451.P11917447616723585959

/-! ## A205451.P5613472370486377331

`A130245(round(sqrt(A205453(n+1))))`
-/

namespace A205451.P5613472370486377331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130245 (SequenceMachineLib.roundAway (Real.sqrt (A205453 (n + 1) : ℝ))).toNat

end

end A205451.P5613472370486377331

/-!
# A205452: Least s(k) such that n divides s(k)-s(j) for some j<k, where s(j)=Fibonacci(2j).

The programs for A205452, there is no canonical definition to state claims against.
-/

/-! ## A205452.P17062678876120070449

`A001906(A205450(n+1))`
-/

namespace A205452.P17062678876120070449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001906 (A205450 (n + 1)).toNat

end

end A205452.P17062678876120070449

/-! ## A205452.P1264632687045253091

`A000045(2*A205450(n+1))`
-/

namespace A205452.P1264632687045253091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (2 * A205450 (n + 1)).toNat

end

end A205452.P1264632687045253091

/-! ## A205452.P5570238375770739631

`A205454(n+1)+A205453(n+1)`
-/

namespace A205452.P5570238375770739631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205454 (n + 1) + A205453 (n + 1)

end

end A205452.P5570238375770739631

/-! ## A205452.P1673307489155908346

`A205453(n+1)+(n+1)*A205455(n+1)`
-/

namespace A205452.P1673307489155908346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205453 (n + 1) + (n + 1 : ℤ) * A205455 (n + 1)

end

end A205452.P1673307489155908346

/-! ## A205452.P276123997390989267

`A000045(A205450(n+1)+A205450(n+1))`
-/

namespace A205452.P276123997390989267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A205450 (n + 1) + A205450 (n + 1)).toNat

end

end A205452.P276123997390989267

/-! ## A205452.P9280240803184544389

`A205454(n+1)+A001906(A205451(n+1))`
-/

namespace A205452.P9280240803184544389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205454 (n + 1) + A001906 (A205451 (n + 1)).toNat

end

end A205452.P9280240803184544389

/-! ## A205452.P15378485962805028586

`A205453(n+1)+A205448(A205449(n+1))`
-/

namespace A205452.P15378485962805028586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205453 (n + 1) + A205448 (A205449 (n + 1)).toNat

end

end A205452.P15378485962805028586

/-!
# A205453: s(A205451), where s(j)=Fibonacci(2j).

The programs for A205453, there is no canonical definition to state claims against.
-/

/-! ## A205453.P17896700050654190590

`A001906(A205451(n+1))`
-/

namespace A205453.P17896700050654190590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001906 (A205451 (n + 1)).toNat

end

end A205453.P17896700050654190590

/-! ## A205453.P13817069199047200395

`A000045(2*A205451(n+1))`
-/

namespace A205453.P13817069199047200395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (2 * A205451 (n + 1)).toNat

end

end A205453.P13817069199047200395

/-! ## A205453.P16430867349220927011

`A005013(2*A205451(n+1))`
-/

namespace A205453.P16430867349220927011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005013 (2 * A205451 (n + 1)).toNat

end

end A205453.P16430867349220927011

/-! ## A205453.P12146884859230883492

`A094966(2*A205451(n+1))`
-/

namespace A205453.P12146884859230883492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094966 (2 * A205451 (n + 1)).toNat

end

end A205453.P12146884859230883492

/-! ## A205453.P9639700491849031147

`A053602(4*A205451(n+1))`
-/

namespace A205453.P9639700491849031147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053602 (4 * A205451 (n + 1)).toNat

end

end A205453.P9639700491849031147

/-! ## A205453.P9253031002653498453

`A000045(A205451(n+1)+A205451(n+1))`
-/

namespace A205453.P9253031002653498453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A205451 (n + 1) + A205451 (n + 1)).toNat

end

end A205453.P9253031002653498453

/-! ## A205453.P9231848258662663057

`A094966(A205451(n+1)+A205451(n+1)-1)`
-/

namespace A205453.P9231848258662663057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094966 (A205451 (n + 1) + (A205451 (n + 1) - 1)).toNat

end

end A205453.P9231848258662663057

/-! ## A205453.P6363900214855898877

`A000045(A000267(A205451(n+1)²))`
-/

namespace A205453.P6363900214855898877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A000267 (A205451 (n + 1) ^ 2).toNat).toNat

end

end A205453.P6363900214855898877

/-! ## A205453.P2751493163706267572

`A000045(A001670(A205451(n+1)²))`
-/

namespace A205453.P2751493163706267572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A001670 (A205451 (n + 1) ^ 2).toNat).toNat

end

end A205453.P2751493163706267572

/-! ## A205453.P16705411024717369512

`A205452(n+1)-A205454(n+1)`
-/

namespace A205453.P16705411024717369512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205452 (n + 1) - A205454 (n + 1)

end

end A205453.P16705411024717369512

/-! ## A205453.P9006462159987994300

`A001906(A205450(n+1))-A205454(n+1)`
-/

namespace A205453.P9006462159987994300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001906 (A205450 (n + 1)).toNat - A205454 (n + 1)

end

end A205453.P9006462159987994300

/-! ## A205453.P1547925823665925339

`A001906(A002260(A205449(n+1)))`
-/

namespace A205453.P1547925823665925339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001906 (A002260 (A205449 (n + 1)).toNat).toNat

end

end A205453.P1547925823665925339

/-! ## A205453.P5205226059834939376

`A205452(n+1)-A205448(A205449(n+1))`
-/

namespace A205453.P5205226059834939376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205452 (n + 1) - A205448 (A205449 (n + 1)).toNat

end

end A205453.P5205226059834939376

/-!
# A205454: s(k)-s(j), where (k,j) is the least pair for which n divides s(k)-s(j), and s(j)=Fibonacci(2j).

The programs for A205454, there is no canonical definition to state claims against.
-/

/-! ## A205454.P9802543812797111074

`(n+1)*A205455(n+1)`
-/

namespace A205454.P9802543812797111074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A205455 (n + 1)

end

end A205454.P9802543812797111074

/-! ## A205454.P8311972613614458649

`A205452(n+1)-A205453(n+1)`
-/

namespace A205454.P8311972613614458649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205452 (n + 1) - A205453 (n + 1)

end

end A205454.P8311972613614458649

/-! ## A205454.P1369011850591746877

`A001906(A205450(n+1))-A205453(n+1)`
-/

namespace A205454.P1369011850591746877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001906 (A205450 (n + 1)).toNat - A205453 (n + 1)

end

end A205454.P1369011850591746877

/-! ## A205454.P17538819314606500838

`A205452(n+1)-A001906(A205451(n+1))`
-/

namespace A205454.P17538819314606500838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205452 (n + 1) - A001906 (A205451 (n + 1)).toNat

end

end A205454.P17538819314606500838

/-! ## A205454.P7870471042502894445

`A001906(A205450(n+1))-A001906(A205451(n+1))`
-/

namespace A205454.P7870471042502894445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001906 (A205450 (n + 1)).toNat - A001906 (A205451 (n + 1)).toNat

end

end A205454.P7870471042502894445

/-! ## A205454.P14782273808511487585

`A205448(A205449(n+1))`
-/

namespace A205454.P14782273808511487585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205448 (A205449 (n + 1)).toNat

end

end A205454.P14782273808511487585

/-!
# A205455: a(n) = (1/n) * A205454(n).

The programs for A205455, there is no canonical definition to state claims against.
-/

/-! ## A205455.P9596806203430122756

`1/(n+1)*A205454(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A205455.P9596806203430122756
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (n + 1 : ℚ) * (A205454 (n + 1) : ℚ)

end

end A205455.P9596806203430122756

/-! ## A205455.P11388807862956717404

`A205454(n+1)/(n+1)`
-/

namespace A205455.P11388807862956717404
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A205454 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A205455.P11388807862956717404

/-! ## A205455.P12757004229258395799

`(A205452(n+1)-A205453(n+1))/(n+1)`
-/

namespace A205455.P12757004229258395799
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A205452 (n + 1) - A205453 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A205455.P12757004229258395799

/-! ## A205455.P5984922849938915965

`(A001906(A205450(n+1))-A205453(n+1))/(n+1)`
-/

namespace A205455.P5984922849938915965
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001906 (A205450 (n + 1)).toNat - A205453 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A205455.P5984922849938915965

/-! ## A205455.P2017705961191042685

`(A001906(A205450(n+1))-A001906(A205451(n+1)))/(n+1)`
-/

namespace A205455.P2017705961191042685
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001906 (A205450 (n + 1)).toNat - A001906 (A205451 (n + 1)).toNat : ℚ) / (n + 1 : ℚ)

end

end A205455.P2017705961191042685

/-! ## A205455.P12471363668459391616

`A205448(A205449(n+1))/(n+1)`
-/

namespace A205455.P12471363668459391616
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A205448 (A205449 (n + 1)).toNat : ℚ) / (n + 1 : ℚ)

end

end A205455.P12471363668459391616

/-!
# A205456: Symmetric matrix by antidiagonals: C(max(i,j),min(i,j)), i>=1, j>=1.

The programs for A205456, the canonical program `A205456.P17031699656075010018` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A205456 has offset 1).

The definition of A205456 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A205456.P17031699656075010018

`C(A051125(n+1), A049581(n))`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A205456

/-- `C(A051125(n+1), A049581(n))` -/
def P17031699656075010018.Spec : Prop :=
  ∀ n, (P17031699656075010018.a n : ℤ) = A205456 (n + 1)

theorem P17031699656075010018.correct : P17031699656075010018.Spec := by
  intro n
  simp only [A205456, Nat.add_sub_cancel]

end A205456

/-! ## A205456.P6799899721371511808

`A059674(eq[0, A103451(n)])`
-/

namespace A205456.P6799899721371511808
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103451 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059674 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A205456.P6799899721371511808

namespace A205456

/-- `A059674(eq[0, A103451(n)])` -/
def P6799899721371511808.Spec : Prop :=
  ∀ n, P6799899721371511808.a n = A205456 (n + 1)

end A205456

/-! ## A205456.P11446489635334226692

`A059674(eq[0, A103452(n)])`
-/

namespace A205456.P11446489635334226692
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103452 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059674 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A205456.P11446489635334226692

namespace A205456

/-- `A059674(eq[0, A103452(n)])` -/
def P11446489635334226692.Spec : Prop :=
  ∀ n, P11446489635334226692.a n = A205456 (n + 1)

end A205456

/-! ## A205456.P13051421161596194530

`A059674(eq[0, A145677(n)])`
-/

namespace A205456.P13051421161596194530
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145677 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059674 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A205456.P13051421161596194530

namespace A205456

/-- `A059674(eq[0, A145677(n)])` -/
def P13051421161596194530.Spec : Prop :=
  ∀ n, P13051421161596194530.a n = A205456 (n + 1)

end A205456

/-! ## A205456.P14350025091086332090

`A059674(eq[0, A158821(n)])`
-/

namespace A205456.P14350025091086332090
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158821 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059674 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A205456.P14350025091086332090

namespace A205456

/-- `A059674(eq[0, A158821(n)])` -/
def P14350025091086332090.Spec : Prop :=
  ∀ n, P14350025091086332090.a n = A205456 (n + 1)

end A205456

/-! ## A205456.P5838944874945059222

`A059674(lt[1, A007318(n)])`
-/

namespace A205456.P5838944874945059222
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059674 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A205456.P5838944874945059222

namespace A205456

/-- `A059674(lt[1, A007318(n)])` -/
def P5838944874945059222.Spec : Prop :=
  ∀ n, P5838944874945059222.a n = A205456 (n + 1)

end A205456

/-! ## A205456.P11985307024661833260

`A059674(lt[1, A086645(n)])`
-/

namespace A205456.P11985307024661833260
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086645 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059674 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A205456.P11985307024661833260

namespace A205456

/-- `A059674(lt[1, A086645(n)])` -/
def P11985307024661833260.Spec : Prop :=
  ∀ n, P11985307024661833260.a n = A205456 (n + 1)

end A205456

/-! ## A205456.P6140386658243284959

`A059674(lt[2, A028326(n)])`
-/

namespace A205456.P6140386658243284959
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028326 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059674 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A205456.P6140386658243284959

namespace A205456

/-- `A059674(lt[2, A028326(n)])` -/
def P6140386658243284959.Spec : Prop :=
  ∀ n, P6140386658243284959.a n = A205456 (n + 1)

end A205456

/-! ## A205456.P10182892114942431376

`A059674(2*A003057(n+2)+n)`
-/

namespace A205456.P10182892114942431376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059674 (2 * A003057 (n + 2) + (n : ℤ)).toNat

end

end A205456.P10182892114942431376

namespace A205456

/-- `A059674(2*A003057(n+2)+n)` -/
def P10182892114942431376.Spec : Prop :=
  ∀ n, P10182892114942431376.a n = A205456 (n + 1)

end A205456

/-! ## A205456.P13460322678712794495

`A059674(A140978(n+1)-n)`
-/

namespace A205456.P13460322678712794495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059674 (A140978 (n + 1) - (n : ℤ)).toNat

end

end A205456.P13460322678712794495

namespace A205456

/-- `A059674(A140978(n+1)-n)` -/
def P13460322678712794495.Spec : Prop :=
  ∀ n, P13460322678712794495.a n = A205456 (n + 1)

end A205456

/-! ## A205456.P16997521505229549394

`A059674(A003057(n+2)²-n)`
-/

namespace A205456.P16997521505229549394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059674 (A003057 (n + 2) ^ 2 - (n : ℤ)).toNat

end

end A205456.P16997521505229549394

namespace A205456

/-- `A059674(A003057(n+2)²-n)` -/
def P16997521505229549394.Spec : Prop :=
  ∀ n, P16997521505229549394.a n = A205456 (n + 1)

end A205456

/-! ## A205456.P15609803038740127999

`A321648(A098350(n+1))`
-/

namespace A205456.P15609803038740127999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321648 (A098350 (n + 1)).toNat

end

end A205456.P15609803038740127999

namespace A205456

/-- `A321648(A098350(n+1))` -/
def P15609803038740127999.Spec : Prop :=
  ∀ n, P15609803038740127999.a n = A205456 (n + 1)

end A205456

/-! ## A205456.P17911991346596185842

`A059674(lt[1, A159623(n)])`
-/

namespace A205456.P17911991346596185842
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159623 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059674 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A205456.P17911991346596185842

namespace A205456

/-- `A059674(lt[1, A159623(n)])` -/
def P17911991346596185842.Spec : Prop :=
  ∀ n, P17911991346596185842.a n = A205456 (n + 1)

end A205456

/-! ## A205456.P17505770217152768487

`A286552(A115216(n))`
-/

namespace A205456.P17505770217152768487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286552 (A115216 n).toNat

end

end A205456.P17505770217152768487

namespace A205456

/-- `A286552(A115216(n))` -/
def P17505770217152768487.Spec : Prop :=
  ∀ n, P17505770217152768487.a n = A205456 (n + 1)

end A205456

/-! ## A205456.P9681922081787755117

`A178244(A131816(n))`
-/

namespace A205456.P9681922081787755117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178244 (A131816 n).toNat

end

end A205456.P9681922081787755117

namespace A205456

/-- `A178244(A131816(n))` -/
def P9681922081787755117.Spec : Prop :=
  ∀ n, P9681922081787755117.a n = A205456 (n + 1)

end A205456

/-! ## A205456.P11157682252947816370

`A124774(A271709(n))`
-/

namespace A205456.P11157682252947816370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124774 (A271709 n).toNat

end

end A205456.P11157682252947816370

namespace A205456

/-- `A124774(A271709(n))` -/
def P11157682252947816370.Spec : Prop :=
  ∀ n, P11157682252947816370.a n = A205456 (n + 1)

end A205456

/-! ## A205456.P269057329186224374

`A124774(A271710(n))`
-/

namespace A205456.P269057329186224374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124774 (A271710 n).toNat

end

end A205456.P269057329186224374

namespace A205456

/-- `A124774(A271710(n))` -/
def P269057329186224374.Spec : Prop :=
  ∀ n, P269057329186224374.a n = A205456 (n + 1)

end A205456

/-! ## A205456.P2394816416251846769

`A124774(A131816(n)+1)`
-/

namespace A205456.P2394816416251846769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124774 (A131816 n + 1).toNat

end

end A205456.P2394816416251846769

namespace A205456

/-- `A124774(A131816(n)+1)` -/
def P2394816416251846769.Spec : Prop :=
  ∀ n, P2394816416251846769.a n = A205456 (n + 1)

end A205456

/-!
# A205457: Symmetric matrix, by antidiagonals: C(max(2i,2j),min(2i,2j)), i>=0, j>=0.

The programs for A205457, the canonical program `A205457.P628646899282360841` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A205457 has offset 1).

The definition of A205457 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2550 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A205457.P628646899282360841

`A059674(A185868(n+1)-1)`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A205457

/-- `A059674(A185868(n+1)-1)` -/
def P628646899282360841.Spec : Prop :=
  ∀ n, P628646899282360841.a n = A205457 (n + 1)

theorem P628646899282360841.correct : P628646899282360841.Spec := by
  intro n
  simp only [A205457, Nat.add_sub_cancel]

end A205457

/-! ## A205457.P4223311795208378178

`A059674(lt[A099390(n+1), 1])`
-/

namespace A205457.P4223311795208378178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099390 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059674 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A205457.P4223311795208378178

namespace A205457

/-- `A059674(lt[A099390(n+1), 1])` -/
def P4223311795208378178.Spec : Prop :=
  ∀ n, P4223311795208378178.a n = A205457 (n + 1)

end A205457

/-! ## A205457.P14060438416231649890

`A373810(A205545(n+1))`
-/

namespace A205457.P14060438416231649890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373810 (A205545 (n + 1)).toNat

end

end A205457.P14060438416231649890

namespace A205457

/-- `A373810(A205545(n+1))` -/
def P14060438416231649890.Spec : Prop :=
  ∀ n, P14060438416231649890.a n = A205457 (n + 1)

end A205457

/-! ## A205457.P10091134381658024377

`A196266(A059674(n)^3)`
-/

namespace A205457.P10091134381658024377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196266 (A059674 n ^ 3).toNat

end

end A205457.P10091134381658024377

namespace A205457

/-- `A196266(A059674(n)^3)` -/
def P10091134381658024377.Spec : Prop :=
  ∀ n, P10091134381658024377.a n = A205457 (n + 1)

end A205457

/-! ## A205457.P2381545858695660466

`A196266(A059674(n)²*A059674(n))`
-/

namespace A205457.P2381545858695660466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196266 (A059674 n ^ 2 * A059674 n).toNat

end

end A205457.P2381545858695660466

namespace A205457

/-- `A196266(A059674(n)²*A059674(n))` -/
def P2381545858695660466.Spec : Prop :=
  ∀ n, P2381545858695660466.a n = A205457 (n + 1)

end A205457

/-!
# A205458: Number of (n+1)X(n+1) 0..3 arrays with the number of clockwise edge increases in every 2X2 subblock differing from each horizontal or vertical neighbor.

The programs for A205458, there is no canonical definition to state claims against.
-/

/-! ## A205458.P5525451326329973709

`A205466((n+1)²+n²)`
-/

namespace A205458.P5525451326329973709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205466 ((n + 1) ^ 2 + n ^ 2)

end

end A205458.P5525451326329973709

/-!
# A205459: Number of (n+1) X 2 0..3 arrays with the number of clockwise edge increases in every 2 X 2 subblock differing from each horizontal or vertical neighbor.

The programs for A205459, there is no canonical definition to state claims against.
-/

/-! ## A205459.P10709036530619199057

`A205659(∑[n+1])`
-/

namespace A205459.P10709036530619199057
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205659 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A205459.P10709036530619199057

/-! ## A205459.P6793536091583558972

`record[A103452(n)*A205659(n+1)]`
-/

namespace A205459.P6793536091583558972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103452 n * A205659 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205459.P6793536091583558972

/-! ## A205459.P4589654812736291167

`record[root(A205659(n+1), A092392(n))]`
-/

namespace A205459.P4589654812736291167
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A205659 (n + 1) : ℝ) ^ (1 / (A092392 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205459.P4589654812736291167

/-! ## A205459.P5080158445371932339

`record[root(A205659(n+1), A094442(n))]`
-/

namespace A205459.P5080158445371932339
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A205659 (n + 1) : ℝ) ^ (1 / (A094442 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205459.P5080158445371932339

/-! ## A205459.P16954612409284221819

`record[gcd(A025581(n), A205659(n+1))]`
-/

namespace A205459.P16954612409284221819
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A025581 n) (A205659 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205459.P16954612409284221819

/-!
# A205460: Number of (n+1)X3 0..3 arrays with the number of clockwise edge increases in every 2X2 subblock differing from each horizontal or vertical neighbor.

The programs for A205460, there is no canonical definition to state claims against.
-/

/-! ## A205460.P11350551085305913417

`A205466(∑[n+1]+2)`
-/

namespace A205460.P11350551085305913417
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205466 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A205460.P11350551085305913417

/-! ## A205460.P15289769780641185362

`A359911(n+1)+A205466(A000096(n+1))`
-/

namespace A205460.P15289769780641185362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359911 (n + 1) + A205466 (A000096 (n + 1)).toNat

end

end A205460.P15289769780641185362

/-! ## A205460.P4902862447224490003

`A168185(n+1)*A205466(A000096(n+1))`
-/

namespace A205460.P4902862447224490003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168185 (n + 1) * A205466 (A000096 (n + 1)).toNat

end

end A205460.P4902862447224490003

/-! ## A205460.P5311858013444421174

`A205466(A132336(n+2))+A000007(2*(n+2))`
-/

namespace A205460.P5311858013444421174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205466 (A132336 (n + 2)).toNat + A000007 (2 * (n + 2))

end

end A205460.P5311858013444421174

/-! ## A205460.P6493133699107602850

`A003557(A078701(n+1))*A205466(A000096(n+1))`
-/

namespace A205460.P6493133699107602850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (A078701 (n + 1)).toNat * A205466 (A000096 (n + 1)).toNat

end

end A205460.P6493133699107602850

/-!
# A205461: Number of (n+1)X4 0..3 arrays with the number of clockwise edge increases in every 2X2 subblock differing from each horizontal or vertical neighbor.

The programs for A205461, there is no canonical definition to state claims against.
-/

/-! ## A205461.P8185428862903447499

`A205466(∑[n+2]+4)`
-/

namespace A205461.P8185428862903447499
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205466 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A205461.P8185428862903447499

/-! ## A205461.P8012813705596105743

`lcm(2, A205466(A167614(n+1)))`
-/

namespace A205461.P8012813705596105743
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A205466 (A167614 (n + 1)).toNat)

end

end A205461.P8012813705596105743

/-! ## A205461.P5891953428159288009

`A205466(A167614(n+1))+A025442(n)`
-/

namespace A205461.P5891953428159288009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205466 (A167614 (n + 1)).toNat + A025442 n

end

end A205461.P5891953428159288009

/-! ## A205461.P18397120775982675652

`A205466(A167614(n+1))+A037808(n+1)`
-/

namespace A205461.P18397120775982675652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205466 (A167614 (n + 1)).toNat + A037808 (n + 1)

end

end A205461.P18397120775982675652

/-! ## A205461.P9208926070149682319

`A000041(((-1)^n)²)*A205466(A167614(n+1))`
-/

namespace A205461.P9208926070149682319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (((-1) ^ n) ^ 2).toNat * A205466 (A167614 (n + 1)).toNat

end

end A205461.P9208926070149682319

/-!
# A205462: Number of (n+1) X 5 0..3 arrays with the number of clockwise edge increases in every 2 X 2 subblock differing from each horizontal or vertical neighbor.

The programs for A205462, there is no canonical definition to state claims against.
-/

/-! ## A205462.P367860285760969972

`A205466(A167614(n+2)+1)`
-/

namespace A205462.P367860285760969972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205466 (A167614 (n + 2) + 1).toNat

end

end A205462.P367860285760969972

/-!
# A205463: Number of (n+1)X6 0..3 arrays with the number of clockwise edge increases in every 2X2 subblock differing from each horizontal or vertical neighbor.

The programs for A205463, there is no canonical definition to state claims against.
-/

/-! ## A205463.P8818352389199401821

`A205466(A374005(n+1))`
-/

namespace A205463.P8818352389199401821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205466 (A374005 (n + 1)).toNat

end

end A205463.P8818352389199401821

/-! ## A205463.P3469188814850187477

`A205466(A056000(n)+15)`
-/

namespace A205463.P3469188814850187477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205466 (A056000 n + 15).toNat

end

end A205463.P3469188814850187477

/-! ## A205463.P12922843394577809893

`A205466(eq[8, A057728(n+1)])`
-/

namespace A205463.P12922843394577809893
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057728 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205466 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A205463.P12922843394577809893

/-!
# A205467: Number of (n+1) X (n+1) 0..2 arrays with every 2 X 2 subblock having the same number of equal edges, and new values 0..2 introduced in row major order.

The programs for A205467, there is no canonical definition to state claims against.
-/

/-! ## A205467.P9039849218366416083

`A205475(∑[4*n]+1)`
-/

namespace A205467.P9039849218366416083
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205475 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A205467.P9039849218366416083

/-! ## A205467.P642798876317347033

`record[root(A205475(n+1), A143182(n))]`
-/

namespace A205467.P642798876317347033
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A205475 (n + 1) : ℝ) ^ (1 / (A143182 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205467.P642798876317347033

/-! ## A205467.P9179534613153038945

`record[gcd(A114327(n), A205475(n+1))]`
-/

namespace A205467.P9179534613153038945
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A114327 n) (A205475 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205467.P9179534613153038945

/-! ## A205467.P8968139155410683305

`record[root(A205475(n+1), A205456(n+1))]`
-/

namespace A205467.P8968139155410683305
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A205475 (n + 1) : ℝ) ^ (1 / (A205456 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205467.P8968139155410683305

/-! ## A205467.P14070229762848210063

`A205475(A001844(n))+A076489(n)`
-/

namespace A205467.P14070229762848210063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205475 (A001844 n).toNat + A076489 n

end

end A205467.P14070229762848210063

/-!
# A205468: Number of (n+1) X 2 0..2 arrays with every 2 X 2 subblock having the same number of equal edges, and new values 0..2 introduced in row major order.

The programs for A205468, there is no canonical definition to state claims against.
-/

/-! ## A205468.P11220517651955292050

`A205475(∑[n]+1)`
-/

namespace A205468.P11220517651955292050
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205475 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A205468.P11220517651955292050

/-! ## A205468.P14960102901544470247

`record[A205475(A056534(n+1))]`
-/

namespace A205468.P14960102901544470247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205475 (A056534 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205468.P14960102901544470247

/-! ## A205468.P13932224424229079735

`A205753(∑[n]+1)`
-/

namespace A205468.P13932224424229079735
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205753 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A205468.P13932224424229079735

/-! ## A205468.P8424700791233952460

`and(-1, A205753(A000124(n)))`
-/

namespace A205468.P8424700791233952460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A205753 (A000124 n).toNat)

end

end A205468.P8424700791233952460

/-! ## A205468.P1541101674406097245

`record[A010054(n)*A205753(n+1)]`
-/

namespace A205468.P1541101674406097245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A205753 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205468.P1541101674406097245

/-!
# A205469: Number of (n+1)X3 0..2 arrays with every 2X2 subblock having the same number of equal edges, and new values 0..2 introduced in row major order.

The programs for A205469, there is no canonical definition to state claims against.
-/

/-! ## A205469.P3208826336801696170

`A205475(∑[n+1]+2)`
-/

namespace A205469.P3208826336801696170
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205475 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A205469.P3208826336801696170

/-! ## A205469.P15736151941974129314

`record[A205475(A133263(∑[(-1)^(n%3)]))]`
-/

namespace A205469.P15736151941974129314
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ (n % 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205475 (A133263 (∑ j ∈ Finset.range (n + 1), f2 j).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205469.P15736151941974129314

/-! ## A205469.P48556075576654408

`record[A205475(Δ[A003453(n+5)])]`
-/

namespace A205469.P48556075576654408
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003453 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205475 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205469.P48556075576654408

/-! ## A205469.P10431613773654438107

`A175782(n)*A205475(A101881(2*n+1))`
-/

namespace A205469.P10431613773654438107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175782 n * A205475 (A101881 (2 * n + 1)).toNat

end

end A205469.P10431613773654438107

/-!
# A205470: Number of (n+1)X4 0..2 arrays with every 2X2 subblock having the same number of equal edges, and new values 0..2 introduced in row major order.

The programs for A205470, there is no canonical definition to state claims against.
-/

/-! ## A205470.P8696764966621328284

`A205475(∑[n+2]+4)`
-/

namespace A205470.P8696764966621328284
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205475 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A205470.P8696764966621328284

/-! ## A205470.P12147320180664498959

`A205475(A167614(n+1))+A185246(n)`
-/

namespace A205470.P12147320180664498959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205475 (A167614 (n + 1)).toNat + A185246 n

end

end A205470.P12147320180664498959

/-! ## A205470.P4641765613062397276

`lcm(A033999(n), A205475(A167614(n+1)))`
-/

namespace A205470.P4641765613062397276
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A205475 (A167614 (n + 1)).toNat)

end

end A205470.P4641765613062397276

/-! ## A205470.P8470304674220658676

`or(A151933(n), A205475(A167614(n+1)))`
-/

namespace A205470.P8470304674220658676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A151933 n) (A205475 (A167614 (n + 1)).toNat)

end

end A205470.P8470304674220658676

/-! ## A205470.P12410848962957711920

`A205475(A167614(n+1))%A205471(n+1)`
-/

namespace A205470.P12410848962957711920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A205475 (A167614 (n + 1)).toNat) (A205471 (n + 1))

end

end A205470.P12410848962957711920

/-!
# A205471: Number of (n+1)X5 0..2 arrays with every 2X2 subblock having the same number of equal edges, and new values 0..2 introduced in row major order.

The programs for A205471, there is no canonical definition to state claims against.
-/

/-! ## A205471.P11305117506204649819

`A205475(A374004(n+1))`
-/

namespace A205471.P11305117506204649819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205475 (A374004 (n + 1)).toNat

end

end A205471.P11305117506204649819

/-! ## A205471.P13791661677510582426

`A205475(A141214(n)+7)`
-/

namespace A205471.P13791661677510582426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205475 (A141214 n + 7).toNat

end

end A205471.P13791661677510582426

/-! ## A205471.P17523980029934211246

`A205475(A052905(n)+9)`
-/

namespace A205471.P17523980029934211246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205475 (A052905 n + 9).toNat

end

end A205471.P17523980029934211246

/-! ## A205471.P9202751104649398976

`A205475(A055999(n)+10)`
-/

namespace A205471.P9202751104649398976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205475 (A055999 n + 10).toNat

end

end A205471.P9202751104649398976

/-! ## A205471.P17216816090489260236

`A205475(A167614(n+2)+1)`
-/

namespace A205471.P17216816090489260236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205475 (A167614 (n + 2) + 1).toNat

end

end A205471.P17216816090489260236

/-!
# A205472: Number of (n+1)X6 0..2 arrays with every 2X2 subblock having the same number of equal edges, and new values 0..2 introduced in row major order.

The programs for A205472, there is no canonical definition to state claims against.
-/

/-! ## A205472.P7397185906317130412

`A205475(A374005(n+1))`
-/

namespace A205472.P7397185906317130412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205475 (A374005 (n + 1)).toNat

end

end A205472.P7397185906317130412

/-! ## A205472.P6599737481811394619

`A205475(A046691(n+2)+9)`
-/

namespace A205472.P6599737481811394619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205475 (A046691 (n + 2) + 9).toNat

end

end A205472.P6599737481811394619

/-! ## A205472.P6935489683630333808

`A205475(eq[6, A131818(n+1)])`
-/

namespace A205472.P6935489683630333808
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A205472.P6935489683630333808

/-! ## A205472.P8433990837896305120

`A205475(Δ[A264443(n)])`
-/

namespace A205472.P8433990837896305120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205475 (f1 (n + 1) - f1 n).toNat

end

end A205472.P8433990837896305120

/-! ## A205472.P3665216226964888702

`A205475(A046691(n+3))`
-/

namespace A205472.P3665216226964888702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205475 (A046691 (n + 3)).toNat

end

end A205472.P3665216226964888702

/-!
# A205473: Number of (n+1)X7 0..2 arrays with every 2X2 subblock having the same number of equal edges, and new values 0..2 introduced in row major order.

The programs for A205473, there is no canonical definition to state claims against.
-/

/-! ## A205473.P8991787892285891829

`A205475(A374007(n+1))`
-/

namespace A205473.P8991787892285891829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205475 (A374007 (n + 1)).toNat

end

end A205473.P8991787892285891829

/-! ## A205473.P5039416582654112086

`A205475(eq[7, A131818(n+1)])`
-/

namespace A205473.P5039416582654112086
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A205473.P5039416582654112086

/-! ## A205473.P12447804385434352447

`A205475(A052905(n+3))`
-/

namespace A205473.P12447804385434352447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205475 (A052905 (n + 3)).toNat

end

end A205473.P12447804385434352447

/-! ## A205473.P4273241740266395449

`A205475(eq[5, A193592(n)])`
-/

namespace A205473.P4273241740266395449
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A205473.P4273241740266395449

/-! ## A205473.P4281031362513629730

`A205475(eq[6, A200370(n+1)])`
-/

namespace A205473.P4281031362513629730
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A205473.P4281031362513629730

/-!
# A205474: Number of (n+1)X8 0..2 arrays with every 2X2 subblock having the same number of equal edges, and new values 0..2 introduced in row major order.

The programs for A205474, there is no canonical definition to state claims against.
-/

/-! ## A205474.P8778704724093623368

`A205475(A374008(n+1))`
-/

namespace A205474.P8778704724093623368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205475 (A374008 (n + 1)).toNat

end

end A205474.P8778704724093623368

/-! ## A205474.P7209616979679731435

`A205475(eq[8, A131818(n+1)])`
-/

namespace A205474.P7209616979679731435
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A205474.P7209616979679731435

/-! ## A205474.P14477621377997268008

`A205475(A055999(n+4))`
-/

namespace A205474.P14477621377997268008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205475 (A055999 (n + 4)).toNat

end

end A205474.P14477621377997268008

/-! ## A205474.P6182671587066116546

`A205475(eq[6, A193592(n)])`
-/

namespace A205474.P6182671587066116546
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A205474.P6182671587066116546

/-! ## A205474.P198289050053922650

`A205475(eq[7, A200370(n+1)])`
-/

namespace A205474.P198289050053922650
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A205474.P198289050053922650

/-!
# A205476: G.f.: exp( Sum_{n>=1} (x^n/n) * Product_{d|n} (1 + n*x^d/d) ).

The programs for A205476, there is no canonical definition to state claims against.
-/

/-! ## A205476.P17345284240168042710

`A252474(A369696(n))`
-/

namespace A205476.P17345284240168042710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252474 (A369696 n).toNat

end

end A205476.P17345284240168042710

/-! ## A205476.P8662825004235047200

`A118168(A091980(n+1))`
-/

namespace A205476.P8662825004235047200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118168 (A091980 (n + 1)).toNat

end

end A205476.P8662825004235047200

/-!
# A205480: G.f: exp( Sum_{n>=1} x^n/n * Product_{d|n} (1 + d*x^(n/d))^d ).

The programs for A205480, there is no canonical definition to state claims against.
-/

/-! ## A205480.P7613871958318153573

`A178210(A148097(n))`
-/

namespace A205480.P7613871958318153573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178210 (A148097 n).toNat

end

end A205480.P7613871958318153573

/-! ## A205480.P16213704504979126129

`A048953(A261763(n))+A000085(n)`
-/

namespace A205480.P16213704504979126129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048953 (A261763 n).toNat + A000085 n

end

end A205480.P16213704504979126129

/-! ## A205480.P8864185912422663883

`A030047(A030034(n+2))+A000085(n)`
-/

namespace A205480.P8864185912422663883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030047 (A030034 (n + 2)).toNat + A000085 n

end

end A205480.P8864185912422663883

/-! ## A205480.P5508837137366744140

`A156562(A075202(n+1)*A275069(n))`
-/

namespace A205480.P5508837137366744140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156562 (A075202 (n + 1) * A275069 n).toNat

end

end A205480.P5508837137366744140

/-!
# A205481: L.g.f.: Sum_{n>=1} x^n/n * Product_{d|n} (1 + d*x^(n/d))^d.

The programs for A205481, there is no canonical definition to state claims against.
-/

/-! ## A205481.P13445576404130897629

`A156562(A089931(n))`
-/

namespace A205481.P13445576404130897629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156562 (A089931 n).toNat

end

end A205481.P13445576404130897629

/-! ## A205481.P5278880288707393080

`∑[A307824(∑[A336342(n)])]`
-/

namespace A205481.P5278880288707393080
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336342 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307824 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A205481.P5278880288707393080

/-!
# A205482: G.f.: exp( Sum_{n>=1} x^n/n * Product_{d|n} (1 + d*x^n)^d ).

The programs for A205482, there is no canonical definition to state claims against.
-/

/-! ## A205482.P3630892352888154541

`A211228(∑{e}[Δ[n!], #])`
-/

namespace A205482.P3630892352888154541
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211228 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p)

end

end A205482.P3630892352888154541

/-! ## A205482.P10446127915115036056

`A211228(∑{e}[A001563(n), #])`
-/

namespace A205482.P10446127915115036056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001563 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211228 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p)

end

end A205482.P10446127915115036056

/-! ## A205482.P8022209025596156028

`A364367(A329741(n))+A006053(n)`
-/

namespace A205482.P8022209025596156028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364367 (A329741 n).toNat + A006053 n

end

end A205482.P8022209025596156028

/-! ## A205482.P10772151390594248195

`or(A000005(A002628(n)), A094967(n))`
-/

namespace A205482.P10772151390594248195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000005 (A002628 n).toNat) (A094967 n)

end

end A205482.P10772151390594248195

/-! ## A205482.P15707340484931409849

`or(A094967(n), A095414(A095318(n+1)))`
-/

namespace A205482.P15707340484931409849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A094967 n) (A095414 (A095318 (n + 1)).toNat)

end

end A205482.P15707340484931409849

/-!
# A205484: G.f.: exp( Sum_{n>=1} x^n/n * Product_{d|n} (1 + d*x^d)^n ).

The programs for A205484, there is no canonical definition to state claims against.
-/

/-! ## A205484.P13600239575181885523

`A056331(n+1)-A001222(A001349(n))`
-/

namespace A205484.P13600239575181885523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056331 (n + 1) - A001222 (A001349 n).toNat

end

end A205484.P13600239575181885523

/-! ## A205484.P6240532855235951016

`A005041(A350490(n))-A271437(n+1)`
-/

namespace A205484.P6240532855235951016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005041 (A350490 n).toNat - A271437 (n + 1)

end

end A205484.P6240532855235951016

/-! ## A205484.P4699526959124979229

`A262689(A346980(n+1)+A000040(n+1))`
-/

namespace A205484.P4699526959124979229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262689 (A346980 (n + 1) + A000040 (n + 1)).toNat

end

end A205484.P4699526959124979229

/-! ## A205484.P16681296108721034256

`A225687(A096971(n))-A353506(A354144(2*n+5))`
-/

namespace A205484.P16681296108721034256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225687 (A096971 n).toNat - A353506 (A354144 (2 * n + 5)).toNat

end

end A205484.P16681296108721034256

/-!
# A205485: L.g.f.: Sum_{n>=1} x^n/n * Product_{d|n} (1 + d*x^d)^n.

The programs for A205485, there is no canonical definition to state claims against.
-/

/-! ## A205485.P9071688540399589295

`xor(A089309(n), A293137(A246985(n)))`
-/

namespace A205485.P9071688540399589295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A089309 n) (A293137 (A246985 n).toNat)

end

end A205485.P9071688540399589295

/-! ## A205485.P2356204585258771415

`A364316(n+1)+A032729(A135278(n))`
-/

namespace A205485.P2356204585258771415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364316 (n + 1) + A032729 (A135278 n).toNat

end

end A205485.P2356204585258771415

/-!
# A205486: G.f.: exp( Sum_{n>=1} (x^n/n) / Product_{d|n} (1 - d*x^(n/d))^d ).

The programs for A205486, there is no canonical definition to state claims against.
-/

/-! ## A205486.P5232873791267188539

`∑[A081753(A150654(n))]`
-/

namespace A205486.P5232873791267188539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081753 (A150654 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A205486.P5232873791267188539

/-! ## A205486.P11866065815055368397

`A187188(A095148(n+2))`
-/

namespace A205486.P11866065815055368397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187188 (A095148 (n + 2)).toNat

end

end A205486.P11866065815055368397

/-! ## A205486.P15241305064369014685

`A005036(n+1)-sqrt(A184955(2*n+3))`
-/

namespace A205486.P15241305064369014685
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A005036 (n + 1) : ℝ) - Real.sqrt (A184955 (2 * n + 3) : ℝ)

end

end A205486.P15241305064369014685

/-!
# A205487: L.g.f.: Sum_{n>=1} (x^n/n) / Product_{d|n} (1 - d*x^(n/d))^d.

The programs for A205487, there is no canonical definition to state claims against.
-/

/-! ## A205487.P6824596588869062766

`A066368(n)+A028242(A165817(n))`
-/

namespace A205487.P6824596588869062766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066368 n + A028242 (A165817 n).toNat

end

end A205487.P6824596588869062766

/-! ## A205487.P5214030802269390851

`A261221(A320628(n+1)+A018901(n+1))`
-/

namespace A205487.P5214030802269390851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261221 (A320628 (n + 1) + A018901 (n + 1)).toNat

end

end A205487.P5214030802269390851

/-!
# A205488: G.f.: exp( Sum_{n>=1} (x^n/n) / Product_{d|n} (1 - d*x^n)^d ).

The programs for A205488, there is no canonical definition to state claims against.
-/

/-! ## A205488.P12323741506306431115

`A333517(n)+A110657(A124482(n+1))`
-/

namespace A205488.P12323741506306431115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333517 n + A110657 (A124482 (n + 1)).toNat

end

end A205488.P12323741506306431115

/-!
# A205490: G.f.: exp( Sum_{n>=1} (x^n/n) / Product_{d|n} (1 - d*x^d)^n ).

The programs for A205490, there is no canonical definition to state claims against.
-/

/-! ## A205490.P15899250925818945644

`A110262(A124430(n))`
-/

namespace A205490.P15899250925818945644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110262 (A124430 n).toNat

end

end A205490.P15899250925818945644

/-! ## A205490.P15051254267785582113

`∑[A374767(A122086(n+1))]`
-/

namespace A205490.P15051254267785582113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374767 (A122086 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A205490.P15051254267785582113

/-! ## A205490.P2868694395860650550

`A077550(n)+∑[A305796(2*n+3)]`
-/

namespace A205490.P2868694395860650550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305796 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077550 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A205490.P2868694395860650550

/-! ## A205490.P810828519253519803

`A077550(n)+A000217(A077563(n))`
-/

namespace A205490.P810828519253519803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077550 n + A000217 (A077563 n).toNat

end

end A205490.P810828519253519803

/-!
# A205491: L.g.f.: Sum_{n>=1} (x^n/n) / Product_{d|n} (1 - d*x^d)^n.

The programs for A205491, there is no canonical definition to state claims against.
-/

/-! ## A205491.P16894395309112218121

`A382426(A062878(n))`
-/

namespace A205491.P16894395309112218121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382426 (A062878 n).toNat

end

end A205491.P16894395309112218121

/-! ## A205491.P3285440598766830116

`A321698(A327067(n+1))`
-/

namespace A205491.P3285440598766830116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321698 (A327067 (n + 1)).toNat

end

end A205491.P3285440598766830116

/-!
# A205492: Expansion of (1-x^2-x^3-x^4+x^5)/((1-x)^3*(1-x-x^2)^2*(1-2*x-x^2+x^3)).

The programs for A205492, the canonical program `A205492.P17952808073976807473` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A205492 has offset 0).

The definition of A205492 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-x^2-x^3-x^4+x^5)/(1-7x+17x^2-12x^3-15x^4+26x^5-3x^6-13x^7+5x^8+2x^9-x^10))` (program `A205492.P17952808073976807473`, by `A205492.P17952808073976807473.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A205492.P17952808073976807473

`ogf((1-x^2-x^3-x^4+x^5)/(1-7x+17x^2-12x^3-15x^4+26x^5-3x^6-13x^7+5x^8+2x^9-x^10))`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A205492

/-- `ogf((1-x^2-x^3-x^4+x^5)/(1-7x+17x^2-12x^3-15x^4+26x^5-3x^6-13x^7+5x^8+2x^9-x^10))` -/
def P17952808073976807473.Spec : Prop :=
  ∀ n, P17952808073976807473.a n = A205492 n

theorem P17952808073976807473.correct : P17952808073976807473.Spec := by
  intro n
  simp only [A205492]

end A205492

/-! ## A205492.P9236666891419681293

`A205497(∑[n+2]+5)`
-/

namespace A205492.P9236666891419681293
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205497 (∑ j ∈ Finset.range (n + 1), f1 j + 5)

end

end A205492.P9236666891419681293

namespace A205492

/-- `A205497(∑[n+2]+5)` -/
def P9236666891419681293.Spec : Prop :=
  ∀ n, P9236666891419681293.a n = A205492 n

end A205492

/-! ## A205492.P15573056326521899768

`record[A023531(n)*A205497(n)]`
-/

namespace A205492.P15573056326521899768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023531 n * A205497 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205492.P15573056326521899768

namespace A205492

/-- `record[A023531(n)*A205497(n)]` -/
def P15573056326521899768.Spec : Prop :=
  ∀ n, P15573056326521899768.a n = A205492 n

end A205492

/-! ## A205492.P15405467752319592932

`record[A132382(n)*A205497(n)]`
-/

namespace A205492.P15405467752319592932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132382 n * A205497 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A205492.P15405467752319592932

namespace A205492

/-- `record[A132382(n)*A205497(n)]` -/
def P15405467752319592932.Spec : Prop :=
  ∀ n, P15405467752319592932.a n = A205492 n

end A205492

/-!
# A205493: Third row or column of table A205497.

The programs for A205493, there is no canonical definition to state claims against.
-/

/-! ## A205493.P4222157085668527476

`A205497(A167499(n+2))`
-/

namespace A205493.P4222157085668527476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205497 (A167499 (n + 2)).toNat

end

end A205493.P4222157085668527476

/-! ## A205493.P4818853800431808965

`A205497(A034856(n+3))`
-/

namespace A205493.P4818853800431808965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205497 (A034856 (n + 3)).toNat

end

end A205493.P4818853800431808965

/-! ## A205493.P15182072459370062076

`A205497(A052905(n)+10)`
-/

namespace A205493.P15182072459370062076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205497 (A052905 n + 10).toNat

end

end A205493.P15182072459370062076

/-!
# A205494: Conjectured row or column n=4 of array A205497.

The programs for A205494, there is no canonical definition to state claims against.
-/

/-! ## A205494.P16841525917615284561

`A205497(A141214(n+2))`
-/

namespace A205494.P16841525917615284561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205497 (A141214 (n + 2)).toNat

end

end A205494.P16841525917615284561

/-! ## A205494.P1688110989042806728

`A205497(A055998(n+3))`
-/

namespace A205494.P1688110989042806728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205497 (A055998 (n + 3)).toNat

end

end A205494.P1688110989042806728

/-!
# A205495: Convolution related to array A205497 and to generating functions for the rows of the array form of A050446.

The programs for A205495, there is no canonical definition to state claims against.
-/

/-! ## A205495.P10389416370190652101

`A205497(A167487(n+4))`
-/

namespace A205495.P10389416370190652101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205497 (A167487 (n + 4)).toNat

end

end A205495.P10389416370190652101

/-!
# A205498: G.f. satisfies: A(x) = exp( Sum_{n>=1} x^n/n * Product_{d|n} A(n*x^d/d) ).

The programs for A205498, there is no canonical definition to state claims against.
-/

/-! ## A205498.P16700244675457865659

`A004001(A030530((n+1)!))`
-/

namespace A205498.P16700244675457865659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004001 (A030530 (Nat.factorial (n + 1))).toNat

end

end A205498.P16700244675457865659

/-! ## A205498.P9622938814519492644

`A250002(A000295(n))+A000112(n)`
-/

namespace A205498.P9622938814519492644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250002 (A000295 n).toNat + A000112 n

end

end A205498.P9622938814519492644

/-! ## A205498.P10520985776514314160

`A090736(A232687(n)+A005651(n))`
-/

namespace A205498.P10520985776514314160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090736 (A232687 n + A005651 n).toNat

end

end A205498.P10520985776514314160

/-!
# A205499: G.f. satisfies: A(x) = exp( Sum_{n>=1} x^n/n * Product_{d|n} A(d*x^n) ).

The programs for A205499, there is no canonical definition to state claims against.
-/

/-! ## A205499.P2193805909104878088

`A002024(A002513(floor(n²/2)))`
-/

namespace A205499.P2193805909104878088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A002513 ⌊(n ^ 2 : ℚ) / 2⌋.toNat).toNat

end

end A205499.P2193805909104878088

/-! ## A205499.P9423773961006101087

`A269043(A000045(2*n+1))+1`
-/

namespace A205499.P9423773961006101087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269043 (A000045 (2 * n + 1)).toNat + 1

end

end A205499.P9423773961006101087

/-! ## A205499.P5083043676074350584

`A208062(n)-A358480(A382203(n))`
-/

namespace A205499.P5083043676074350584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208062 n - A358480 (A382203 n).toNat

end

end A205499.P5083043676074350584

/-! ## A205499.P5055094568704134062

`A208062(n)-A358480(A358456(n+1))`
-/

namespace A205499.P5055094568704134062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208062 n - A358480 (A358456 (n + 1)).toNat

end

end A205499.P5055094568704134062

