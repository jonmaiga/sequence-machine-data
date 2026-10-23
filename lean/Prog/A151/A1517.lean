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
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C037
import Seq.B000.C038
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
import Seq.B002.C000
import Seq.B002.C001
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
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
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
# A151701: Weight distribution of [31,11,11] primitive binary BCH code.

The programs for A151701, there is no canonical definition to state claims against.
-/

/-! ## A151701.P7094059648878936985

`∑{d}[C(A302348(n), n²), #]`
-/

namespace A151701.P7094059648878936985
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A302348 n).toNat (n ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), d

end

end A151701.P7094059648878936985

/-! ## A151701.P9463422824741911545

`A052823(C(a(n-1)+n, 10))` with `a(0)=1`
-/

namespace A151701.P9463422824741911545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A052823 (Nat.choose (a (n - 1) + (n : ℤ)).toNat 10)

end

end A151701.P9463422824741911545

/-! ## A151701.P13543354380382188368

`C(A056515(n), ∑[ceil(3^(n/3))])`
-/

namespace A151701.P13543354380382188368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(3 : ℝ) ^ ((n : ℚ) / 3 : ℝ)⌉

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A056515 n).toNat (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A151701.P13543354380382188368

/-! ## A151701.P11256108178177070251

`C(A001037(n), ∑[∑[round(sqrt(2*n))]+1])`
-/

namespace A151701.P11256108178177070251
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (2 * n : ℝ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A001037 n).toNat (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A151701.P11256108178177070251

/-! ## A151701.P7742574732512556416

`A090078(A028384(n))`
-/

namespace A151701.P7742574732512556416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090078 (A028384 n).toNat

end

end A151701.P7742574732512556416

/-!
# A151702: a(0)=1, a(1)=0; a(2^i + j) = a(j) + a(j+1) for 0 <= j < 2^i.

The programs for A151702, there is no canonical definition to state claims against.
-/

/-! ## A151702.P403522074464411421

`A151570(n)-A118977(n)`
-/

namespace A151702.P403522074464411421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151570 n - A118977 n

end

end A151702.P403522074464411421

/-! ## A151702.P8881832069456116340

`A151847(n)-A151843(n)`
-/

namespace A151702.P8881832069456116340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151847 n - A151843 n

end

end A151702.P8881832069456116340

/-! ## A151702.P18012360999756902555

`A151849(n)-A151845(n)`
-/

namespace A151702.P18012360999756902555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151849 n - A151845 n

end

end A151702.P18012360999756902555

/-! ## A151702.P144324089072949809

`A151571(n)-2*A118977(n)`
-/

namespace A151702.P144324089072949809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151571 n - 2 * A118977 n

end

end A151702.P144324089072949809

/-! ## A151702.P11550170587381363859

`2*A151570(n)-A151571(n)`
-/

namespace A151702.P11550170587381363859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A151570 n - A151571 n

end

end A151702.P11550170587381363859

/-! ## A151702.P4630058652542552349

`A118977(n)-a(A053645(n+1))` with `a(0)=1`
-/

namespace A151702.P4630058652542552349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A118977 n - a (A053645 (n + 1)).toNat

end

end A151702.P4630058652542552349

/-! ## A151702.P6940727611850635693

`A004277(A151570(n))-A151571(n)`
-/

namespace A151702.P6940727611850635693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A151570 n).toNat - A151571 n

end

end A151702.P6940727611850635693

/-! ## A151702.P6383946636962824859

`A151570(n)+A151843(n)-A151845(n)`
-/

namespace A151702.P6383946636962824859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151570 n + (A151843 n - A151845 n)

end

end A151702.P6383946636962824859

/-! ## A151702.P14798217505424594920

`A151714(n-1)-a(n-1)` with `a(0)=1`
-/

namespace A151702.P14798217505424594920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A151714 (n - 1) - a (n - 1)

end

end A151702.P14798217505424594920

/-! ## A151702.P16510732532081624621

`A151552(n)+A151714(n)-A151553(n)`
-/

namespace A151702.P16510732532081624621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151552 n + (A151714 n - A151553 n)

end

end A151702.P16510732532081624621

/-!
# A151703: a(0)=1, a(1)=0; a(2^i+j) = a(j) + 2*a(j+1) for 0 <= j < 2^i.

The programs for A151703, there is no canonical definition to state claims against.
-/

/-! ## A151703.P17448207847957226164

`A151573(n)-A151572(n)`
-/

namespace A151703.P17448207847957226164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151573 n - A151572 n

end

end A151703.P17448207847957226164

/-! ## A151703.P15243893929305402215

`A151855(n)-A151851(n)`
-/

namespace A151703.P15243893929305402215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151855 n - A151851 n

end

end A151703.P15243893929305402215

/-! ## A151703.P15746418305114221812

`A151857(n)-A151853(n)`
-/

namespace A151703.P15746418305114221812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151857 n - A151853 n

end

end A151703.P15746418305114221812

/-! ## A151703.P18007338023063195916

`2*A151573(n)-A151574(n)`
-/

namespace A151703.P18007338023063195916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A151573 n - A151574 n

end

end A151703.P18007338023063195916

/-! ## A151703.P16481196513363422106

`A151574(n)-2*A151572(n)`
-/

namespace A151703.P16481196513363422106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151574 n - 2 * A151572 n

end

end A151703.P16481196513363422106

/-! ## A151703.P11484427122739882538

`A151574(n)-A005843(A151572(n))`
-/

namespace A151703.P11484427122739882538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151574 n - A005843 (A151572 n).toNat

end

end A151703.P11484427122739882538

/-! ## A151703.P15485562866765755603

`A004277(A151573(n))-A151574(n)`
-/

namespace A151703.P15485562866765755603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A151573 n).toNat - A151574 n

end

end A151703.P15485562866765755603

/-!
# A151704: a(0)=1, a(1)=0; a(2^i+j) = 2*a(j) + a(j+1) for 0 <= j < 2^i.

The programs for A151704, there is no canonical definition to state claims against.
-/

/-! ## A151704.P17995923170098147673

`A160552(n)+(-1)^n`
-/

namespace A151704.P17995923170098147673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160552 n + (-1) ^ n

end

end A151704.P17995923170098147673

/-! ## A151704.P14934038045353808921

`A139251(n)-a(n-1)` with `a(0)=1`
-/

namespace A151704.P14934038045353808921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A139251 n - a (n - 1)

end

end A151704.P14934038045353808921

/-! ## A151704.P12252309248825963474

`A151863(n)-A151859(n)`
-/

namespace A151704.P12252309248825963474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151863 n - A151859 n

end

end A151704.P12252309248825963474

/-! ## A151704.P10787832082985801763

`A151865(n)-A151861(n)`
-/

namespace A151704.P10787832082985801763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151865 n - A151861 n

end

end A151704.P10787832082985801763

/-! ## A151704.P5381002662115705556

`A151568(n)-A160552(n)`
-/

namespace A151704.P5381002662115705556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151568 n - A160552 n

end

end A151704.P5381002662115705556

/-! ## A151704.P856349999087802265

`(A151568(n)+A033999(n))/2`
-/

namespace A151704.P856349999087802265
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A151568 n + A033999 n : ℚ) / 2

end

end A151704.P856349999087802265

/-! ## A151704.P7984890768587962834

`2*A151568(n)-A151569(n)`
-/

namespace A151704.P7984890768587962834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A151568 n - A151569 n

end

end A151704.P7984890768587962834

/-! ## A151704.P11245997186000033957

`A151569(n)-2*A160552(n)`
-/

namespace A151704.P11245997186000033957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151569 n - 2 * A160552 n

end

end A151704.P11245997186000033957

/-! ## A151704.P12566280779036588963

`xor(A153284(n+1), A160552(n))`
-/

namespace A151704.P12566280779036588963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A153284 (n + 1)) (A160552 n)

end

end A151704.P12566280779036588963

/-! ## A151704.P9201037924775192407

`A139251(n+1)+A151568(n)-A151548(n)`
-/

namespace A151704.P9201037924775192407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139251 (n + 1) + (A151568 n - A151548 n)

end

end A151704.P9201037924775192407

/-! ## A151704.P2749659836189523970

`A266530(A004277(n))+A151568(n)-A139250(n)`
-/

namespace A151704.P2749659836189523970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266530 (A004277 n).toNat + (A151568 n - A139250 n)

end

end A151704.P2749659836189523970

/-! ## A151704.P14488126162487056181

`A151568(n)-A266529(Δ[n²])`
-/

namespace A151704.P14488126162487056181
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151568 n - A266529 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A151704.P14488126162487056181

/-! ## A151704.P15969488145333758963

`A266530(2*(n+1))-(A266530(2*n+1)+A033999(n+1))`
-/

namespace A151704.P15969488145333758963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266530 (2 * (n + 1)) - (A266530 (2 * n + 1) + A033999 (n + 1))

end

end A151704.P15969488145333758963

/-! ## A151704.P928164009959269626

`A004277(A151568(n))-A151569(n)`
-/

namespace A151704.P928164009959269626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A151568 n).toNat - A151569 n

end

end A151704.P928164009959269626

/-! ## A151704.P13872840604796719624

`A008611(A151569(n)-1)`
-/

namespace A151704.P13872840604796719624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (A151569 n - 1).toNat

end

end A151704.P13872840604796719624

/-! ## A151704.P9581072134389120560

`A151569(n)-A255049(n)`
-/

namespace A151704.P9581072134389120560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151569 n - A255049 n

end

end A151704.P9581072134389120560

/-! ## A151704.P7757392555818064495

`A033999(n)+A255049(n)/2`
-/

namespace A151704.P7757392555818064495
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033999 n : ℚ) + (A255049 n : ℚ) / 2

end

end A151704.P7757392555818064495

/-!
# A151705: a(0)=0, a(1)=1; a(2^i+j) = 2*a(j) + 2*a(j+1) for 0 <= j < 2^i.

The programs for A151705, there is no canonical definition to state claims against.
-/

/-! ## A151705.P5990825665280971

`A151707(n)-A151706(n)`
-/

namespace A151705.P5990825665280971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151707 n - A151706 n

end

end A151705.P5990825665280971

/-! ## A151705.P13756939543144847083

`A151708(n)-A151707(n)`
-/

namespace A151705.P13756939543144847083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151708 n - A151707 n

end

end A151705.P13756939543144847083

/-! ## A151705.P14716777812523054700

`A151869(n)-A151867(n)`
-/

namespace A151705.P14716777812523054700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151869 n - A151867 n

end

end A151705.P14716777812523054700

/-! ## A151705.P10310272801288209922

`A151873(n)-A151871(n)`
-/

namespace A151705.P10310272801288209922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151873 n - A151871 n

end

end A151705.P10310272801288209922

/-! ## A151705.P9196178978027669815

`(A151708(n)-A151706(n))/2`
-/

namespace A151705.P9196178978027669815
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A151708 n - A151706 n : ℚ) / 2

end

end A151705.P9196178978027669815

/-! ## A151705.P8378882574854479464

`A151706(n)+A151869(n)-A151871(n)`
-/

namespace A151705.P8378882574854479464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151706 n + (A151869 n - A151871 n)

end

end A151705.P8378882574854479464

/-! ## A151705.P18025103236399163070

`A151707(n)+A151867(n)-A151871(n)`
-/

namespace A151705.P18025103236399163070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151707 n + (A151867 n - A151871 n)

end

end A151705.P18025103236399163070

/-! ## A151705.P9610899752620198678

`A273943(A151708(n)-A151706(n))`
-/

namespace A151705.P9610899752620198678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A151708 n - A151706 n).toNat

end

end A151705.P9610899752620198678

/-! ## A151705.P7878065116246614658

`A014682(A151708(n)-A151706(n))`
-/

namespace A151705.P7878065116246614658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A151708 n - A151706 n).toNat

end

end A151705.P7878065116246614658

/-! ## A151705.P3952942647193164634

`A038572(A151708(n)-A151706(n))`
-/

namespace A151705.P3952942647193164634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038572 (A151708 n - A151706 n).toNat

end

end A151705.P3952942647193164634

/-! ## A151705.P8078432147237051767

`A001281(A151708(n)-A151706(n))`
-/

namespace A151705.P8078432147237051767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A151708 n - A151706 n).toNat

end

end A151705.P8078432147237051767

/-! ## A151705.P8835459620474046030

`A004525(A151708(n)-A151706(n))`
-/

namespace A151705.P8835459620474046030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A151708 n - A151706 n).toNat

end

end A151705.P8835459620474046030

/-!
# A151706: a(0)=1, a(1)=0; a(2^i+j) = 2*a(j) + 2*a(j+1) for 0 <= j < 2^i.

The programs for A151706, there is no canonical definition to state claims against.
-/

/-! ## A151706.P1193204138508419419

`A151707(n)-A151705(n)`
-/

namespace A151706.P1193204138508419419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151707 n - A151705 n

end

end A151706.P1193204138508419419

/-! ## A151706.P9270058180931122707

`A151871(n)-A151867(n)`
-/

namespace A151706.P9270058180931122707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151871 n - A151867 n

end

end A151706.P9270058180931122707

/-! ## A151706.P2685707096372405552

`A151873(n)-A151869(n)`
-/

namespace A151706.P2685707096372405552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151873 n - A151869 n

end

end A151706.P2685707096372405552

/-! ## A151706.P15175185099545131129

`2*A151707(n)-A151708(n)`
-/

namespace A151706.P15175185099545131129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A151707 n - A151708 n

end

end A151706.P15175185099545131129

/-! ## A151706.P11414835253906851358

`A151708(n)-2*A151705(n)`
-/

namespace A151706.P11414835253906851358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151708 n - 2 * A151705 n

end

end A151706.P11414835253906851358

/-! ## A151706.P16438023085979227766

`A151705(n)+A151871(n)-A151869(n)`
-/

namespace A151706.P16438023085979227766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151705 n + (A151871 n - A151869 n)

end

end A151706.P16438023085979227766

/-! ## A151706.P7965835656558577899

`A151707(n)+A151867(n)-A151869(n)`
-/

namespace A151706.P7965835656558577899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151707 n + (A151867 n - A151869 n)

end

end A151706.P7965835656558577899

/-! ## A151706.P17556038118715031388

`A151708(n)-A005843(A151705(n))`
-/

namespace A151706.P17556038118715031388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151708 n - A005843 (A151705 n).toNat

end

end A151706.P17556038118715031388

/-! ## A151706.P3271136374142655856

`A004277(A151707(n))-A151708(n)`
-/

namespace A151706.P3271136374142655856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A151707 n).toNat - A151708 n

end

end A151706.P3271136374142655856

/-!
# A151707: a(0)=1, a(1)=1; a(2^i+j) = 2*a(j) + 2*a(j+1) for 0 <= j < 2^i.

The programs for A151707, there is no canonical definition to state claims against.
-/

/-! ## A151707.P559927905167208589

`A151706(n)+A151705(n)`
-/

namespace A151707.P559927905167208589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151706 n + A151705 n

end

end A151707.P559927905167208589

/-! ## A151707.P5744221559604586482

`A151708(n)-A151705(n)`
-/

namespace A151707.P5744221559604586482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151708 n - A151705 n

end

end A151707.P5744221559604586482

/-! ## A151707.P17342023359614235994

`A151873(n)-A151867(n)`
-/

namespace A151707.P17342023359614235994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151873 n - A151867 n

end

end A151707.P17342023359614235994

/-! ## A151707.P7450581627398164702

`(A151708(n)+A151706(n))/2`
-/

namespace A151707.P7450581627398164702
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A151708 n + A151706 n : ℚ) / 2

end

end A151707.P7450581627398164702

/-! ## A151707.P9583316948111740003

`A151705(n)+A151871(n)-A151867(n)`
-/

namespace A151707.P9583316948111740003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151705 n + (A151871 n - A151867 n)

end

end A151707.P9583316948111740003

/-! ## A151707.P6037733486271196854

`A151706(n)+A151869(n)-A151867(n)`
-/

namespace A151707.P6037733486271196854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151706 n + (A151869 n - A151867 n)

end

end A151707.P6037733486271196854

/-! ## A151707.P14721659391986811957

`A273943(A151708(n)-A151706(n))+A151706(n)`
-/

namespace A151707.P14721659391986811957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A151708 n - A151706 n).toNat + A151706 n

end

end A151707.P14721659391986811957

/-! ## A151707.P14402658590792139221

`A151706(n)+A014682(A151708(n)-A151706(n))`
-/

namespace A151707.P14402658590792139221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151706 n + A014682 (A151708 n - A151706 n).toNat

end

end A151707.P14402658590792139221

/-! ## A151707.P1374455983213154353

`A014682(A151708(n)+A151706(n))`
-/

namespace A151707.P1374455983213154353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A151708 n + A151706 n).toNat

end

end A151707.P1374455983213154353

/-! ## A151707.P16008212252443763488

`A273943(A151708(n)+A151706(n))`
-/

namespace A151707.P16008212252443763488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A151708 n + A151706 n).toNat

end

end A151707.P16008212252443763488

/-! ## A151707.P3551029590173197987

`A151706(n)+A038572(A151708(n)-A151706(n))`
-/

namespace A151707.P3551029590173197987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151706 n + A038572 (A151708 n - A151706 n).toNat

end

end A151707.P3551029590173197987

/-! ## A151707.P425445098057588915

`A038572(A151708(n)+A151706(n))`
-/

namespace A151707.P425445098057588915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038572 (A151708 n + A151706 n).toNat

end

end A151707.P425445098057588915

/-! ## A151707.P17360086517946774020

`A151706(n)+A001281(A151708(n)-A151706(n))`
-/

namespace A151707.P17360086517946774020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151706 n + A001281 (A151708 n - A151706 n).toNat

end

end A151707.P17360086517946774020

/-! ## A151707.P8553838768149385319

`A151706(n)+A004525(A151708(n)-A151706(n))`
-/

namespace A151707.P8553838768149385319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151706 n + A004525 (A151708 n - A151706 n).toNat

end

end A151707.P8553838768149385319

/-! ## A151707.P5316079191882894116

`A001281(A151708(n)+A151706(n))`
-/

namespace A151707.P5316079191882894116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A151708 n + A151706 n).toNat

end

end A151707.P5316079191882894116

/-! ## A151707.P16245646143856165893

`A004525(A151708(n)+A151706(n))`
-/

namespace A151707.P16245646143856165893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A151708 n + A151706 n).toNat

end

end A151707.P16245646143856165893

/-!
# A151708: a(0)=1, a(1)=2; a(2^i+j)=2*a(j)+2*a(j+1) for 0 <= j < 2^i.

The programs for A151708, there is no canonical definition to state claims against.
-/

/-! ## A151708.P3613205252914684602

`A151707(n)+A151705(n)`
-/

namespace A151708.P3613205252914684602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151707 n + A151705 n

end

end A151708.P3613205252914684602

/-! ## A151708.P10255579863388343948

`A151706(n)+2*A151705(n)`
-/

namespace A151708.P10255579863388343948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151706 n + 2 * A151705 n

end

end A151708.P10255579863388343948

/-! ## A151708.P1037246682178827659

`2*A151707(n)-A151706(n)`
-/

namespace A151708.P1037246682178827659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A151707 n - A151706 n

end

end A151708.P1037246682178827659

/-! ## A151708.P4525561798382086020

`A151707(n)+A151869(n)-A151867(n)`
-/

namespace A151708.P4525561798382086020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151707 n + (A151869 n - A151867 n)

end

end A151708.P4525561798382086020

/-! ## A151708.P8945258190047427061

`A151706(n)+A005843(A151705(n))`
-/

namespace A151708.P8945258190047427061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151706 n + A005843 (A151705 n).toNat

end

end A151708.P8945258190047427061

/-! ## A151708.P322135229864780770

`A004277(A151707(n))-A151706(n)`
-/

namespace A151708.P322135229864780770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A151707 n).toNat - A151706 n

end

end A151708.P322135229864780770

/-! ## A151708.P16611952397694017352

`A151705(n)+A028310(A151706(n)+A151705(n))`
-/

namespace A151708.P16611952397694017352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151705 n + A028310 (A151706 n + A151705 n).toNat

end

end A151708.P16611952397694017352

/-!
# A151710: First differences of A160715.

The programs for A151710, there is no canonical definition to state claims against.
-/

/-! ## A151710.P5437978209273667099

`Δ[A160715(n)]`
-/

namespace A151710.P5437978209273667099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160715 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A151710.P5437978209273667099

/-! ## A151710.P17285220140667390401

`∏[3^∑{e}[xor(n, -n), 2-#]]-A173452(n+1)`
-/

namespace A151710.P17285220140667390401
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (-(n : ℤ))

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ (∑ p ∈ Nat.primeFactors (f2 n).natAbs, (2 - (Nat.factorization (f2 n).natAbs p : ℤ)) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j - (A173452 (n + 1) : ℚ)

end

end A151710.P17285220140667390401

/-! ## A151710.P11196269822400478903

`Δ[A160120(n)-A173068(n)]`
-/

namespace A151710.P11196269822400478903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160120 n - A173068 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A151710.P11196269822400478903

/-! ## A151710.P5597987601446115536

`A048883(n)-A173452(n+1)`
-/

namespace A151710.P5597987601446115536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048883 n - A173452 (n + 1)

end

end A151710.P5597987601446115536

/-! ## A151710.P13457675243817152178

`A160715(n+1)-A160715(n)`
-/

namespace A151710.P13457675243817152178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160715 (n + 1) - A160715 n

end

end A151710.P13457675243817152178

/-!
# A151712: a(n) = A048883(n) + 1.

The programs for A151712, the canonical program `A151712.P17763347096143698757` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A151712 has offset 0).

The definition of A151712 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A151712.P17763347096143698757

`A048883(n)+1`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A151712

/-- `A048883(n)+1` -/
def P17763347096143698757.Spec : Prop :=
  ∀ n, P17763347096143698757.a n = A151712 n

theorem P17763347096143698757.correct : P17763347096143698757.Spec := by
  intro n
  simp only [A151712]

end A151712

/-! ## A151712.P13594736046119871027

`3*a(and(n, n-1))-2` with `a(0)=2`
-/

namespace A151712.P13594736046119871027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  3 * a (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat - 2

end

end A151712.P13594736046119871027

namespace A151712

/-- `3*a(and(n, n-1))-2` -/
def P13594736046119871027.Spec : Prop :=
  ∀ n, P13594736046119871027.a n = A151712 n

end A151712

/-! ## A151712.P3051358135604968623

`lcm(3, a(and(n, n-1)))-2` with `a(0)=2`
-/

namespace A151712.P3051358135604968623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  (Int.lcm 3 (a (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat) : ℤ) - 2

end

end A151712.P3051358135604968623

namespace A151712

/-- `lcm(3, a(and(n, n-1)))-2` -/
def P3051358135604968623.Spec : Prop :=
  ∀ n, P3051358135604968623.a n = A151712 n

end A151712

/-! ## A151712.P17800229847502749253

`3*a(xor(n, -n)/2+n)-2` with `a(0)=2`
-/

namespace A151712.P17800229847502749253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  3 * a (SequenceMachineLib.roundAway ((Int.xor (n : ℤ) (-(n : ℤ)) : ℚ) / 2 + (n : ℚ))).toNat - 2

end

end A151712.P17800229847502749253

namespace A151712

/-- `3*a(xor(n, -n)/2+n)-2` -/
def P17800229847502749253.Spec : Prop :=
  ∀ n, P17800229847502749253.a n = A151712 n

end A151712

/-! ## A151712.P3534282086035929481

`2*A162784(n)`
-/

namespace A151712.P3534282086035929481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A162784 n

end

end A151712.P3534282086035929481

namespace A151712

/-- `2*A162784(n)` -/
def P3534282086035929481.Spec : Prop :=
  ∀ n, P3534282086035929481.a n = A151712 n

end A151712

/-! ## A151712.P8316493593207060737

`1+3^A000120(n)`
-/

namespace A151712.P8316493593207060737
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 + (3 : ℚ) ^ (A000120 n : ℤ)

end

end A151712.P8316493593207060737

namespace A151712

/-- `1+3^A000120(n)` -/
def P8316493593207060737.Spec : Prop :=
  ∀ n, P8316493593207060737.a n = (A151712 n : ℚ)

end A151712

/-! ## A151712.P15854877035928758561

`3^log2(A001316(n))+1`
-/

namespace A151712.P15854877035928758561
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (3 : ℝ) ^ (Real.logb 2 (A001316 n : ℝ)) + 1

end

end A151712.P15854877035928758561

namespace A151712

/-- `3^log2(A001316(n))+1` -/
def P15854877035928758561.Spec : Prop :=
  ∀ n, P15854877035928758561.a n = (A151712 n : ℝ)

end A151712

/-! ## A151712.P7783763453170110106

`A162349(n+1)/3+1`
-/

namespace A151712.P7783763453170110106
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A162349 (n + 1) : ℚ) / 3 + 1

end

end A151712.P7783763453170110106

namespace A151712

/-- `A162349(n+1)/3+1` -/
def P7783763453170110106.Spec : Prop :=
  ∀ n, P7783763453170110106.a n = (A151712 n : ℚ)

end A151712

/-! ## A151712.P4063089900664453156

`A161411(n+1)/4+1`
-/

namespace A151712.P4063089900664453156
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A161411 (n + 1) : ℚ) / 4 + 1

end

end A151712.P4063089900664453156

namespace A151712

/-- `A161411(n+1)/4+1` -/
def P4063089900664453156.Spec : Prop :=
  ∀ n, P4063089900664453156.a n = (A151712 n : ℚ)

end A151712

/-! ## A151712.P16713999311077857751

`3^(2*n-A005187(n))+1`
-/

namespace A151712.P16713999311077857751
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ ((2 * n : ℤ) - A005187 n : ℤ) + 1

end

end A151712.P16713999311077857751

namespace A151712

/-- `3^(2*n-A005187(n))+1` -/
def P16713999311077857751.Spec : Prop :=
  ∀ n, P16713999311077857751.a n = (A151712 n : ℚ)

end A151712

/-! ## A151712.P9742363979004024181

`A034472(A000120(n))`
-/

namespace A151712.P9742363979004024181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034472 (A000120 n).toNat

end

end A151712.P9742363979004024181

namespace A151712

/-- `A034472(A000120(n))` -/
def P9742363979004024181.Spec : Prop :=
  ∀ n, P9742363979004024181.a n = A151712 n

end A151712

/-! ## A151712.P3483214743895056778

`A061393(A001316(n))`
-/

namespace A151712.P3483214743895056778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061393 (A001316 n).toNat

end

end A151712.P3483214743895056778

namespace A151712

/-- `A061393(A001316(n))` -/
def P3483214743895056778.Spec : Prop :=
  ∀ n, P3483214743895056778.a n = A151712 n

end A151712

/-! ## A151712.P4294681481735487573

`A061393(A160713(n))`
-/

namespace A151712.P4294681481735487573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061393 (A160713 n).toNat

end

end A151712.P4294681481735487573

namespace A151712

/-- `A061393(A160713(n))` -/
def P4294681481735487573.Spec : Prop :=
  ∀ n, P4294681481735487573.a n = A151712 n

end A151712

/-! ## A151712.P17879594084862704891

`A003278(A001316(n)+1)`
-/

namespace A151712.P17879594084862704891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003278 (A001316 n + 1).toNat

end

end A151712.P17879594084862704891

namespace A151712

/-- `A003278(A001316(n)+1)` -/
def P17879594084862704891.Spec : Prop :=
  ∀ n, P17879594084862704891.a n = A151712 n

end A151712

/-! ## A151712.P9055164616562971841

`A094388(A000120(n)+1)`
-/

namespace A151712.P9055164616562971841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094388 (A000120 n + 1).toNat

end

end A151712.P9055164616562971841

namespace A151712

/-- `A094388(A000120(n)+1)` -/
def P9055164616562971841.Spec : Prop :=
  ∀ n, P9055164616562971841.a n = A151712 n

end A151712

/-! ## A151712.P356974281026415190

`A074330(A038573(n)+1)`
-/

namespace A151712.P356974281026415190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074330 (A038573 n + 1).toNat

end

end A151712.P356974281026415190

namespace A151712

/-- `A074330(A038573(n)+1)` -/
def P356974281026415190.Spec : Prop :=
  ∀ n, P356974281026415190.a n = A151712 n

end A151712

/-! ## A151712.P15685988540560342122

`A094388(A063787(n+1))`
-/

namespace A151712.P15685988540560342122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094388 (A063787 (n + 1)).toNat

end

end A151712.P15685988540560342122

namespace A151712

/-- `A094388(A063787(n+1))` -/
def P15685988540560342122.Spec : Prop :=
  ∀ n, P15685988540560342122.a n = A151712 n

end A151712

/-! ## A151712.P16493879991227871944

`A173537(A001316(n)+1)`
-/

namespace A151712.P16493879991227871944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173537 (A001316 n + 1).toNat

end

end A151712.P16493879991227871944

namespace A151712

/-- `A173537(A001316(n)+1)` -/
def P16493879991227871944.Spec : Prop :=
  ∀ n, P16493879991227871944.a n = A151712 n

end A151712

/-! ## A151712.P18250655483129577504

`2*A243066(A057334(n))`
-/

namespace A151712.P18250655483129577504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A243066 (A057334 n).toNat

end

end A151712.P18250655483129577504

namespace A151712

/-- `2*A243066(A057334(n))` -/
def P18250655483129577504.Spec : Prop :=
  ∀ n, P18250655483129577504.a n = A151712 n

end A151712

/-! ## A151712.P5467718680106749130

`A006046(Δ[A006046(n)])+1`
-/

namespace A151712.P5467718680106749130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006046 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006046 (f1 (n + 1) - f1 n).toNat + 1

end

end A151712.P5467718680106749130

namespace A151712

/-- `A006046(Δ[A006046(n)])+1` -/
def P5467718680106749130.Spec : Prop :=
  ∀ n, P5467718680106749130.a n = A151712 n

end A151712

/-!
# A151713: Weight distribution of [63,10,27] primitive binary BCH code.

The programs for A151713, there is no canonical definition to state claims against.
-/

/-! ## A151713.P13455138885370377922

`(char[n^3]*A058176(n))²`
-/

namespace A151713.P13455138885370377922
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) * A058176 n) ^ 2

end

end A151713.P13455138885370377922

/-! ## A151713.P7834067200183244364

`C(∏{p}[n+1, #], A010943(n))²`
-/

namespace A151713.P7834067200183244364
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∏ p ∈ Nat.primeFactors (f1 n), p) (A010943 n).toNat ^ 2

end

end A151713.P7834067200183244364

/-! ## A151713.P17601168237953748734

`A130287(a(n-1)+val(n², 3))²` with `a(0)=1`
-/

namespace A151713.P17601168237953748734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A130287 ((a (n - 1) + (SequenceMachineLib.valuation (n ^ 2) 3 : ℤ)).toNat + 10) ^ 2

end

end A151713.P17601168237953748734

/-! ## A151713.P5456850696188269422

`A335514(xor(2^val(n, 3), a(n-1)))²` with `a(0)=1`
-/

namespace A151713.P5456850696188269422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A335514 (Int.xor (2 ^ SequenceMachineLib.valuation n 3 : ℤ) (a (n - 1))).toNat ^ 2

end

end A151713.P5456850696188269422

/-! ## A151713.P9006984973155834839

`A375406(xor(2^val(n, 3), a(n-1)))²` with `a(0)=1`
-/

namespace A151713.P9006984973155834839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A375406 (Int.xor (2 ^ SequenceMachineLib.valuation n 3 : ℤ) (a (n - 1))).toNat ^ 2

end

end A151713.P9006984973155834839

/-!
# A151714: When A151552 is written as a triangle the rows converge to this.

The programs for A151714, there is no canonical definition to state claims against.
-/

/-! ## A151714.P9569061176717029513

`A151702(record[or(32, n)])`
-/

namespace A151714.P9569061176717029513
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 32 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151702 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A151714.P9569061176717029513

/-! ## A151714.P11589394889478038727

`A151702(record[xor(32, n)])`
-/

namespace A151714.P11589394889478038727
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 32 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151702 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A151714.P11589394889478038727

/-! ## A151714.P739832308970526783

`A151702((32/2)²+n)`
-/

namespace A151714.P739832308970526783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151702 (SequenceMachineLib.roundAway (((32 : ℚ) / 2) ^ 2 + (n : ℚ))).toNat

end

end A151714.P739832308970526783

/-! ## A151714.P16961017650750793815

`A151553(abs(ceil(n*sin(11))))`
-/

namespace A151714.P16961017650750793815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151553 |⌈(n : ℝ) * Real.sin (11 : ℝ)⌉|.toNat

end

end A151714.P16961017650750793815

/-! ## A151714.P8782269297520833241

`A151553(n-ceil(abs(sin(n))))`
-/

namespace A151714.P8782269297520833241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151553 ((n : ℤ) - ⌈|Real.sin (n : ℝ)|⌉).toNat

end

end A151714.P8782269297520833241

/-! ## A151714.P314527835756070633

`A151553(n-ceil(sin(n)²))`
-/

namespace A151714.P314527835756070633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151553 ((n : ℤ) - ⌈Real.sin (n : ℝ) ^ 2⌉).toNat

end

end A151714.P314527835756070633

/-! ## A151714.P6343331413872272875

`A151553((n-1)%(n+1))`
-/

namespace A151714.P6343331413872272875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151553 (Int.tmod ((n : ℤ) - 1) (n + 1 : ℤ)).toNat

end

end A151714.P6343331413872272875

/-! ## A151714.P11154841851763220816

`A151553(n-floor(atan(n+1)))`
-/

namespace A151714.P11154841851763220816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151553 ((n : ℤ) - ⌊Real.arctan (n + 1 : ℝ)⌋).toNat

end

end A151714.P11154841851763220816

/-! ## A151714.P12790746026494056227

`A151553(A289207(n+1))`
-/

namespace A151714.P12790746026494056227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151553 (A289207 (n + 1)).toNat

end

end A151714.P12790746026494056227

/-! ## A151714.P13516828280011694254

`A151844(n)+A151552(n)`
-/

namespace A151714.P13516828280011694254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151844 n + A151552 n

end

end A151714.P13516828280011694254

/-!
# A151715: Divisors of 8855.

The programs for A151715, there is no canonical definition to state claims against.
-/

/-! ## A151715.P15812665472158421

`record[gcd(A000027(2*(n+2)), A382809(n))]`
-/

namespace A151715.P15812665472158421
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000027 (2 * (n + 2))) (A382809 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A151715.P15812665472158421

/-!
# A151716: Positive integers whose Spanish names contain a prime number of letters.

The programs for A151716, there is no canonical definition to state claims against.
-/

/-! ## A151716.P7029011275930132151

`eq[0, A028422(A011762(n))]`
-/

namespace A151716.P7029011275930132151
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028422 (A011762 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A151716.P7029011275930132151

/-! ## A151716.P15052166986581720416

`eq[1, A045778(A011762(n)²)]`
-/

namespace A151716.P15052166986581720416
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045778 (A011762 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A151716.P15052166986581720416

/-! ## A151716.P4274428058768958901

`eq[1, A117358(A011762(n)²)]`
-/

namespace A151716.P4274428058768958901
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117358 (A011762 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A151716.P4274428058768958901

/-! ## A151716.P9744964288362957625

`eq[2, A000688(A011762(n)²)]`
-/

namespace A151716.P9744964288362957625
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000688 (A011762 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A151716.P9744964288362957625

/-! ## A151716.P13658212804286856770

`eq[2, A032741(A011762(n)²)]`
-/

namespace A151716.P13658212804286856770
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (A011762 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A151716.P13658212804286856770

/-! ## A151716.P12090554367137169739

`eq[2, A046951(A011762(n)²)]`
-/

namespace A151716.P12090554367137169739
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046951 (A011762 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A151716.P12090554367137169739

/-! ## A151716.P1308018945001582360

`eq[A011762(n), A020639(A011762(n)²)]`
-/

namespace A151716.P1308018945001582360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011762 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A011762 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A151716.P1308018945001582360

/-!
# A151717: Vertex-transitive TLF-planar graphs of degree n with periodic border (see reference for precise definition).

The programs for A151717, there is no canonical definition to state claims against.
-/

/-! ## A151717.P3662910991655190078

`xor((n²+2)/3*∑[n], ∑[lcm(2, 3*n)-n]%n!)`
-/

namespace A151717.P3662910991655190078
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 2 (3 * n) : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (SequenceMachineLib.roundAway ((n ^ 2 + 2 : ℚ) / 3 * ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ))) (Int.tmod (∑ j ∈ Finset.range (n + 1), f2 j) (Nat.factorial n : ℤ))

end

end A151717.P3662910991655190078

/-!
# A151718: Vertex-transitive TLF-planar graphs of degree n (see reference for precise definition).

The programs for A151718, there is no canonical definition to state claims against.
-/

/-! ## A151718.P7706080942384030054

`A318196(A310352(n))`
-/

namespace A151718.P7706080942384030054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318196 (A310352 n).toNat

end

end A151718.P7706080942384030054

/-!
# A151719: Normalized average squared end-to-end distance of n-step prudent walks.

The programs for A151719, there is no canonical definition to state claims against.
-/

/-! ## A151719.P118967242262197008

`A118313(n)-A173453(A102403(n))`
-/

namespace A151719.P118967242262197008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118313 n - A173453 (A102403 n).toNat

end

end A151719.P118967242262197008

/-! ## A151719.P3628153622717240512

`A118313(n)-A173453(A225258(n+2))`
-/

namespace A151719.P3628153622717240512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118313 n - A173453 (A225258 (n + 2)).toNat

end

end A151719.P3628153622717240512

/-!
# A151721: Weight distribution of [63,16,23] primitive binary BCH code.

The programs for A151721, there is no canonical definition to state claims against.
-/

/-! ## A151721.P11409760768817627148

`and(-(-1)^∑[n], A151722(n))`
-/

namespace A151721.P11409760768817627148
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-((-1) ^ (∑ j ∈ Finset.range (n + 1), f1 j))) (A151722 n)

end

end A151721.P11409760768817627148

/-! ## A151721.P10241817413444279690

`A151722(gcd(n, A003815(n)))`
-/

namespace A151721.P10241817413444279690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151722 (Int.gcd (n : ℤ) (A003815 n))

end

end A151721.P10241817413444279690

/-! ## A151721.P192420786210060119

`lcm(A102560(n), A151722(n))`
-/

namespace A151721.P192420786210060119
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A102560 n) (A151722 n)

end

end A151721.P192420786210060119

/-! ## A151721.P17006545804607284058

`Δ[A004525(n)]*A151722(n)`
-/

namespace A151721.P17006545804607284058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A151722 n

end

end A151721.P17006545804607284058

/-! ## A151721.P2687153896276345837

`A151722(n^Δ[A004525(n)])`
-/

namespace A151721.P2687153896276345837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151722 (SequenceMachineLib.roundAway ((n : ℚ) ^ (f1 (n + 1) - f1 n : ℤ))).toNat

end

end A151721.P2687153896276345837

/-! ## A151721.P1182065414838256422

`char[A003815(n)]*A151722(n)`
-/

namespace A151721.P1182065414838256422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003815 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A151722 n

end

end A151721.P1182065414838256422

/-! ## A151721.P6683601035926316628

`char[A014601(n)]*A151722(n)`
-/

namespace A151721.P6683601035926316628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014601 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A151722 n

end

end A151721.P6683601035926316628

/-! ## A151721.P6494380982486669798

`A000124(n)%2*A151722(n)`
-/

namespace A151721.P6494380982486669798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000124 n) 2 * A151722 n

end

end A151721.P6494380982486669798

/-! ## A151721.P17588643231259043733

`and(A151722(n), A359066(n+1))`
-/

namespace A151721.P17588643231259043733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A151722 n) (A359066 (n + 1))

end

end A151721.P17588643231259043733

/-!
# A151722: Weight distribution of [63,18,21] primitive binary BCH code.

The programs for A151722, there is no canonical definition to state claims against.
-/

/-! ## A151722.P6976805681900048113

`A195143(C(A332579(n), n))`
-/

namespace A151722.P6976805681900048113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195143 (Nat.choose (A332579 n).toNat n)

end

end A151722.P6976805681900048113

/-! ## A151722.P2282831262385679638

`A003892(A070048(n))*A023933(n)`
-/

namespace A151722.P2282831262385679638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003892 (A070048 n).toNat * A023933 n

end

end A151722.P2282831262385679638

/-! ## A151722.P6669437051942164536

`A000194(A076449(n))*A023933(n)`
-/

namespace A151722.P6669437051942164536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A076449 n).toNat * A023933 n

end

end A151722.P6669437051942164536

/-! ## A151722.P9544716579712180252

`A023933(n)*A123719(A080061(n))`
-/

namespace A151722.P9544716579712180252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023933 n * A123719 (A080061 n).toNat

end

end A151722.P9544716579712180252

/-! ## A151722.P10989921749830762158

`A023933(n)*A108499(A123490(n))`
-/

namespace A151722.P10989921749830762158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023933 n * A108499 (A123490 n).toNat

end

end A151722.P10989921749830762158

/-!
# A151723: Total number of ON states after n generations of cellular automaton based on hexagons.

The programs for A151723, there is no canonical definition to state claims against.
-/

/-! ## A151723.P8243809023967453714

`∑[A151724(n)]`
-/

namespace A151723.P8243809023967453714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151724 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A151723.P8243809023967453714

/-! ## A151723.P9885941494886600784

`A151724(n)+a(A023443(n))` with `a(0)=0`
-/

namespace A151723.P9885941494886600784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A151724 n + a (A023443 n).toNat

end

end A151723.P9885941494886600784

/-! ## A151723.P13166720628368251229

`a(n-1)+A001511(A000040(n+1))*A151724(n)` with `a(0)=0`
-/

namespace A151723.P13166720628368251229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + A001511 (A000040 (n + 1)).toNat * A151724 n

end

end A151723.P13166720628368251229

/-! ## A151723.P18129411188498125951

`∑[A008458(A170905(n))]-A008458(n)`
-/

namespace A151723.P18129411188498125951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 (A170905 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A008458 n

end

end A151723.P18129411188498125951

/-! ## A151723.P8197724077978392940

`A016921(A169780(n))-A008458(n)`
-/

namespace A151723.P8197724077978392940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016921 (A169780 n).toNat - A008458 n

end

end A151723.P8197724077978392940

/-! ## A151723.P13923156574847772293

`A016921(A169780(n))-(A008574(n)+2*n)`
-/

namespace A151723.P13923156574847772293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016921 (A169780 n).toNat - (A008574 n + (2 * n : ℤ))

end

end A151723.P13923156574847772293

/-! ## A151723.P11226680551181035366

`A008458(A169780(n))-A004273(A008486(n))`
-/

namespace A151723.P11226680551181035366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 (A169780 n).toNat - A004273 (A008486 n).toNat

end

end A151723.P11226680551181035366

/-! ## A151723.P14862897661121711611

`a(n-2)+3*(A256537(n)-1)` with `a(0)=0, a(1)=1, a(2)=7`
-/

namespace A151723.P14862897661121711611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 7] fun n a =>
  a (n - 2) + 3 * (A256537 n - 1)

end

end A151723.P14862897661121711611

/-! ## A151723.P7938660812801673263

`A032766(A256138(n+1)-A256139(n))`
-/

namespace A151723.P7938660812801673263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 (A256138 (n + 1) - A256139 n).toNat

end

end A151723.P7938660812801673263

/-!
# A151724: First differences of A151723.

The programs for A151724, there is no canonical definition to state claims against.
-/

/-! ## A151724.P16789388804164584483

`Δ[A151723(A004273(n)-n)]`
-/

namespace A151724.P16789388804164584483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151723 (A004273 n - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A151724.P16789388804164584483

/-! ## A151724.P14391447870164430151

`Δ[A151723(n-A057427(n))]`
-/

namespace A151724.P14391447870164430151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151723 ((n : ℤ) - A057427 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A151724.P14391447870164430151

/-! ## A151724.P55139518144303976

`Δ[A151723(A004524(A004273(n)))]`
-/

namespace A151724.P55139518144303976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151723 (A004524 (A004273 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A151724.P55139518144303976

/-! ## A151724.P3939112910112231300

`Δ[A151723(A004526(A004275(n)))]`
-/

namespace A151724.P3939112910112231300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151723 (A004526 (A004275 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A151724.P3939112910112231300

/-! ## A151724.P10808546179130223403

`A151723(n)-A151723(A004273(n)-n)`
-/

namespace A151724.P10808546179130223403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151723 n - A151723 (A004273 n - (n : ℤ)).toNat

end

end A151724.P10808546179130223403

/-! ## A151724.P18335617104283039129

`A151723(n)-A151723(n-A057427(n))`
-/

namespace A151724.P18335617104283039129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151723 n - A151723 ((n : ℤ) - A057427 n).toNat

end

end A151724.P18335617104283039129

/-! ## A151724.P6982553968789243828

`A151723(n)-A151723(n-and(1, A151723(n)))`
-/

namespace A151724.P6982553968789243828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151723 n - A151723 ((n : ℤ) - Int.land 1 (A151723 n)).toNat

end

end A151724.P6982553968789243828

/-! ## A151724.P15335897466930404503

`Δ[A151723(A318995(A001747(n+1)))]`
-/

namespace A151724.P15335897466930404503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151723 (A318995 (A001747 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A151724.P15335897466930404503

/-! ## A151724.P2274187606031055990

`A151723(n)-A151723(log2(A011782(n)))`
-/

namespace A151724.P2274187606031055990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151723 n - A151723 (SequenceMachineLib.roundAway (Real.logb 2 (A011782 n : ℝ))).toNat

end

end A151724.P2274187606031055990

/-! ## A151724.P826116062075359587

`Δ[A151723(log2(A011782(n)))]`
-/

namespace A151724.P826116062075359587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151723 (SequenceMachineLib.roundAway (Real.logb 2 (A011782 n : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A151724.P826116062075359587

/-! ## A151724.P465617417003988900

`A151723(n)-A151723(A259361(n²))`
-/

namespace A151724.P465617417003988900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151723 n - A151723 (A259361 (n ^ 2)).toNat

end

end A151724.P465617417003988900

/-! ## A151724.P8663000357648901599

`Δ[A151723(A259361(n²))]`
-/

namespace A151724.P8663000357648901599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151723 (A259361 (n ^ 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A151724.P8663000357648901599

/-!
# A151725: Number of ON states after n generations of cellular automaton rule described by the rulestring B1/S012345678.

The programs for A151725, there is no canonical definition to state claims against.
-/

/-! ## A151725.P1248034675284296282

`∑[A151726(n)]`
-/

namespace A151725.P1248034675284296282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151726 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A151725.P1248034675284296282

/-! ## A151725.P2995536265173495308

`A151726(n)+a(A023443(n))` with `a(0)=0`
-/

namespace A151725.P2995536265173495308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A151726 n + a (A023443 n).toNat

end

end A151725.P2995536265173495308

/-! ## A151725.P169716695215734288

`a(n-1)+A151726(n)+A000038(n)` with `a(0)=0`
-/

namespace A151725.P169716695215734288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + (A151726 n + A000038 n)

end

end A151725.P169716695215734288

/-! ## A151725.P676259388745692078

`A151726(n)+A129527(a(n-1))` with `a(0)=0`
-/

namespace A151725.P676259388745692078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A151726 n + A129527 (a (n - 1)).toNat

end

end A151725.P676259388745692078

/-! ## A151725.P12232058214751309518

`A214392(a(n-1))+A151726(n)` with `a(0)=0`
-/

namespace A151725.P12232058214751309518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A214392 (a (n - 1)).toNat + A151726 n

end

end A151725.P12232058214751309518

/-!
# A151726: First differences of A151725.

The programs for A151726, there is no canonical definition to state claims against.
-/

/-! ## A151726.P17869357195925208846

`Δ[A151725(n-ceil(n/(n+1)))]`
-/

namespace A151726.P17869357195925208846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151725 ((n : ℤ) - ⌈(n : ℚ) / (n + 1 : ℚ)⌉).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A151726.P17869357195925208846

/-! ## A151726.P1348136507791399612

`A151725(n)-A151725(A049615(∑[n]))`
-/

namespace A151726.P1348136507791399612
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151725 n - A151725 (A049615 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A151726.P1348136507791399612

/-!
# A151727: If A151726 is written as a triangle, this is what the rows converge to.

The programs for A151727, there is no canonical definition to state claims against.
-/

/-! ## A151727.P8874544137071297759

`4*A151728(n)`
-/

namespace A151727.P8874544137071297759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A151728 n

end

end A151727.P8874544137071297759

/-! ## A151727.P17070413194486350964

`A151726(n+65)`
-/

namespace A151727.P17070413194486350964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151726 (n + 65)

end

end A151727.P17070413194486350964

/-! ## A151727.P14625575066502315356

`8*A151729(n)+4`
-/

namespace A151727.P14625575066502315356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A151729 n + 4

end

end A151727.P14625575066502315356

/-! ## A151727.P12742059414023834779

`lcm(2, A151726(lt[n, 2*and(n, 2*n)]))`
-/

namespace A151727.P12742059414023834779
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.land n (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A151726 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n))

end

end A151727.P12742059414023834779

/-! ## A151727.P12430096346858224951

`A008574(A151728(n))`
-/

namespace A151727.P12430096346858224951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 (A151728 n).toNat

end

end A151727.P12430096346858224951

/-! ## A151727.P12662170395478999153

`A017113(A151729(n))`
-/

namespace A151727.P12662170395478999153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017113 (A151729 n).toNat

end

end A151727.P12662170395478999153

/-! ## A151727.P14274068690577867782

`A000027(lcm(4, A151728(n)))`
-/

namespace A151727.P14274068690577867782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (Int.lcm 4 (A151728 n))

end

end A151727.P14274068690577867782

/-! ## A151727.P12166462857819509118

`4*A004442(2*A151729(n))`
-/

namespace A151727.P12166462857819509118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A004442 (2 * A151729 n).toNat

end

end A151727.P12166462857819509118

/-! ## A151727.P8429106525966748270

`4*or(2*A151729(n), A007318(C(2, n)))`
-/

namespace A151727.P8429106525966748270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * Int.lor (2 * A151729 n) (A007318 (Nat.choose 2 n))

end

end A151727.P8429106525966748270

/-! ## A151727.P8686056783383930183

`Δ[4*A170880(n)]`
-/

namespace A151727.P8686056783383930183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A170880 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A151727.P8686056783383930183

/-!
# A151728: A151727/4.

The programs for A151728, there is no canonical definition to state claims against.
-/

/-! ## A151728.P12207502819490461261

`2*A151729(n)+1`
-/

namespace A151728.P12207502819490461261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A151729 n + 1

end

end A151728.P12207502819490461261

/-! ## A151728.P8953141908655729877

`A151726(n+65)/4`
-/

namespace A151728.P8953141908655729877
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A151726 (n + 65) : ℚ) / 4

end

end A151728.P8953141908655729877

/-! ## A151728.P11897727779322589044

`lcm(2, A151726(lt[n, 2*and(n, 2*n)]))/4`
-/

namespace A151728.P11897727779322589044
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.land n (2 * n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (A151726 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)) : ℚ) / 4

end

end A151728.P11897727779322589044

/-! ## A151728.P13432007785238216626

`A005408(A151729(n))`
-/

namespace A151728.P13432007785238216626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A151729 n).toNat

end

end A151728.P13432007785238216626

/-! ## A151728.P17732528856632456047

`A004273(A151729(n)+1)`
-/

namespace A151728.P17732528856632456047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A151729 n + 1).toNat

end

end A151728.P17732528856632456047

/-! ## A151728.P13749303723098708460

`A060747(A151729(n)+1)`
-/

namespace A151728.P13749303723098708460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060747 (A151729 n + 1).toNat

end

end A151728.P13749303723098708460

/-! ## A151728.P14090092541189771853

`A004442(2*A151729(n))`
-/

namespace A151728.P14090092541189771853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (2 * A151729 n).toNat

end

end A151728.P14090092541189771853

/-! ## A151728.P4044823296806891331

`A008619(4*A151729(n))`
-/

namespace A151728.P4044823296806891331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (4 * A151729 n).toNat

end

end A151728.P4044823296806891331

/-! ## A151728.P2562753053263657790

`or(2*A151729(n), A007318(C(2, n)))`
-/

namespace A151728.P2562753053263657790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (2 * A151729 n) (A007318 (Nat.choose 2 n))

end

end A151728.P2562753053263657790

/-!
# A151729: a(n) = (A151728(n)-1)/2.

The programs for A151729, there is no canonical definition to state claims against.
-/

/-! ## A151729.P711542660171332202

`(A151728(n)-1)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A151729.P711542660171332202
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A151728 n - 1 : ℚ) / 2

end

end A151729.P711542660171332202

/-! ## A151729.P10821688068667733422

`floor(A151726(n+65)/8)`
-/

namespace A151729.P10821688068667733422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A151726 (n + 65) : ℚ) / 8⌋

end

end A151729.P10821688068667733422

/-! ## A151729.P12573741462497256982

`A151747(n+1)-(a(n-1)+1)` with `a(0)=0`
-/

namespace A151729.P12573741462497256982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A151747 (n + 1) - (a (n - 1) + 1)

end

end A151729.P12573741462497256982

/-! ## A151729.P2025814690261408908

`floor(lcm(2, A151726(lt[n, 2*and(n, 2*n)]))/8)`
-/

namespace A151729.P2025814690261408908
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.land n (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Int.lcm 2 (A151726 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)) : ℚ) / 8⌋

end

end A151729.P2025814690261408908

/-! ## A151729.P11256303288237334916

`A025480(A151726(n+65)-1)`
-/

namespace A151729.P11256303288237334916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A151726 (n + 65) - 1).toNat

end

end A151729.P11256303288237334916

/-! ## A151729.P180451176803991394

`A002265(A151726(n+65)/2)`
-/

namespace A151729.P180451176803991394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (SequenceMachineLib.roundAway ((A151726 (n + 65) : ℚ) / 2)).toNat

end

end A151729.P180451176803991394

/-! ## A151729.P15344542912451512266

`A004526(A151726(n+65)/4)`
-/

namespace A151729.P15344542912451512266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (SequenceMachineLib.roundAway ((A151726 (n + 65) : ℚ) / 4)).toNat

end

end A151729.P15344542912451512266

/-! ## A151729.P14586182742614987154

`A028242(A151726(n+65)/4)`
-/

namespace A151729.P14586182742614987154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (SequenceMachineLib.roundAway ((A151726 (n + 65) : ℚ) / 4)).toNat

end

end A151729.P14586182742614987154

/-! ## A151729.P9113482306989852544

`A025480(xor(7, A151726(n+65)))`
-/

namespace A151729.P9113482306989852544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (Int.xor 7 (A151726 (n + 65))).toNat

end

end A151729.P9113482306989852544

/-! ## A151729.P13518847544263774266

`A001281(A151726(n+65)/4-1)`
-/

namespace A151729.P13518847544263774266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (SequenceMachineLib.roundAway ((A151726 (n + 65) : ℚ) / 4 - 1)).toNat

end

end A151729.P13518847544263774266

/-!
# A151730: Divisors of 9213.

The programs for A151730, there is no canonical definition to state claims against.
-/

/-! ## A151730.P171741235122156166

`record[gcd(A059993(n), A063258(n))]`
-/

namespace A151730.P171741235122156166
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A059993 n) (A063258 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A151730.P171741235122156166

/-! ## A151730.P13935884158372810239

`record[gcd(A215862(n), A267707(n))]`
-/

namespace A151730.P13935884158372810239
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A215862 n) (A267707 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A151730.P13935884158372810239

/-! ## A151730.P6999947202091439924

`record[gcd(A188475(3*n+2), A188475(n))]`
-/

namespace A151730.P6999947202091439924
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A188475 (3 * n + 2)) (A188475 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A151730.P6999947202091439924

/-!
# A151731: Number of ON states after n generations of cellular automaton based on square grid with each cell adjacent to its eight neighbors.

The programs for A151731, there is no canonical definition to state claims against.
-/

/-! ## A151731.P14103009442205065660

`∑[A151732(n)]`
-/

namespace A151731.P14103009442205065660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151732 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A151731.P14103009442205065660

/-! ## A151731.P16404153822310726944

`A151732(n)+a(A023443(n))` with `a(0)=0`
-/

namespace A151731.P16404153822310726944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A151732 n + a (A023443 n).toNat

end

end A151731.P16404153822310726944

/-! ## A151731.P4265449316962952263

`a(n-1)+A151732(n)+A000038(n)` with `a(0)=0`
-/

namespace A151731.P4265449316962952263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + (A151732 n + A000038 n)

end

end A151731.P4265449316962952263

/-! ## A151731.P13892342234993604795

`a(n-1)+A054977(n)*A151732(n)` with `a(0)=0`
-/

namespace A151731.P13892342234993604795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + A054977 n * A151732 n

end

end A151731.P13892342234993604795

/-! ## A151731.P18001736560651161705

`a(n-1)-ceil(1/A007318(n))+A151732(n)+1` with `a(0)=0, a(1)=2`
-/

namespace A151731.P18001736560651161705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n a =>
  a (n - 1) - ⌈1 / (A007318 n : ℚ)⌉ + (A151732 n + 1)

end

end A151731.P18001736560651161705

/-! ## A151731.P11127206703341660028

`∑[2*A151734(n)]`
-/

namespace A151731.P11127206703341660028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A151734 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A151731.P11127206703341660028

/-! ## A151731.P9259822053853316331

`A005843(∑[A151734(n)])`
-/

namespace A151731.P9259822053853316331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151734 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A151731.P9259822053853316331

/-! ## A151731.P4540849029452330931

`A005408(∑[A151734(n)])-1`
-/

namespace A151731.P4540849029452330931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151734 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (∑ j ∈ Finset.range (n + 1), f1 j).toNat - 1

end

end A151731.P4540849029452330931

/-! ## A151731.P11378399249049399083

`A004442(A005408(∑[A151734(n)]))`
-/

namespace A151731.P11378399249049399083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151734 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (A005408 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A151731.P11378399249049399083

/-! ## A151731.P17058653570413846477

`A014681(A004273(∑[A151734(n)]))`
-/

namespace A151731.P17058653570413846477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151734 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (A004273 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A151731.P17058653570413846477

/-!
# A151732: First differences of A151731.

The programs for A151732, there is no canonical definition to state claims against.
-/

/-! ## A151732.P4422700248768179139

`Δ[A151731(n-n²%(n+1))]`
-/

namespace A151732.P4422700248768179139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151731 (n - n ^ 2 % (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A151732.P4422700248768179139

/-! ## A151732.P876653755685644343

`Δ[A151731(A028310(n)-1)]`
-/

namespace A151732.P876653755685644343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151731 (A028310 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A151732.P876653755685644343

/-! ## A151732.P17960376321794790516

`Δ[A151731(A004273(n)-n)]`
-/

namespace A151732.P17960376321794790516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151731 (A004273 n - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A151732.P17960376321794790516

/-! ## A151732.P13757000669447320031

`A151731(n)-A151731(A028310(n)-1)`
-/

namespace A151732.P13757000669447320031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151731 n - A151731 (A028310 n - 1).toNat

end

end A151732.P13757000669447320031

/-! ## A151732.P12212878488843989944

`A151731(n)-A151731(A004273(n)-n)`
-/

namespace A151732.P12212878488843989944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151731 n - A151731 (A004273 n - (n : ℤ)).toNat

end

end A151732.P12212878488843989944

/-! ## A151732.P16812310708944043658

`Δ[A151731(A025480(A004275(n)))]`
-/

namespace A151732.P16812310708944043658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151731 (A025480 (A004275 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A151732.P16812310708944043658

/-! ## A151732.P13799826473691847386

`Δ[A151731(A004526(A004273(n)))]`
-/

namespace A151732.P13799826473691847386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151731 (A004526 (A004273 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A151732.P13799826473691847386

/-! ## A151732.P512564558861623369

`2*A151734(n)`
-/

namespace A151732.P512564558861623369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A151734 n

end

end A151732.P512564558861623369

/-! ## A151732.P8686728467796207986

`A005843(A151734(n))`
-/

namespace A151732.P8686728467796207986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A151734 n).toNat

end

end A151732.P8686728467796207986

/-! ## A151732.P11624663714679066991

`A004273(A151734(n)+1)-1`
-/

namespace A151732.P11624663714679066991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A151734 n + 1).toNat - 1

end

end A151732.P11624663714679066991

/-!
# A151733: A151731/2.

The programs for A151733, there is no canonical definition to state claims against.
-/

/-! ## A151733.P2960435971744516980

`∑[A151734(n)]`
-/

namespace A151733.P2960435971744516980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151734 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A151733.P2960435971744516980

/-! ## A151733.P7960037760930765669

`A151731(n)/2`
-/

namespace A151733.P7960037760930765669
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A151731 n : ℚ) / 2

end

end A151733.P7960037760930765669

/-! ## A151733.P12579283538240579625

`∑[A151732(n)/2]`
-/

namespace A151733.P12579283538240579625
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A151732 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A151733.P12579283538240579625

/-! ## A151733.P10470774151176487035

`A001281(A151731(n))`
-/

namespace A151733.P10470774151176487035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A151731 n).toNat

end

end A151733.P10470774151176487035

/-! ## A151733.P3547993714594444011

`A001281(∑[A151732(n)])`
-/

namespace A151733.P3547993714594444011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151732 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A151733.P3547993714594444011

/-! ## A151733.P2384597680804483132

`A004525(∑[A151732(n)])`
-/

namespace A151733.P2384597680804483132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151732 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A151733.P2384597680804483132

/-! ## A151733.P3187187237345386801

`A014682(∑[A151732(n)])`
-/

namespace A151733.P3187187237345386801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151732 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A151733.P3187187237345386801

/-! ## A151733.P1645659402241685049

`A025480(∑[A151732(n)])`
-/

namespace A151733.P1645659402241685049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151732 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A151733.P1645659402241685049

/-! ## A151733.P13158291775919675350

`abs(A001057(∑[A151732(n)]))`
-/

namespace A151733.P13158291775919675350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151732 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A001057 (∑ j ∈ Finset.range (n + 1), f1 j).toNat|

end

end A151733.P13158291775919675350

/-! ## A151733.P479047058180032523

`A002265(∑[2*A151732(n)])`
-/

namespace A151733.P479047058180032523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A151732 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A151733.P479047058180032523

/-!
# A151734: A151732/2.

The programs for A151734, there is no canonical definition to state claims against.
-/

/-! ## A151734.P8809357434038404924

`A151732(n)/2`
-/

namespace A151734.P8809357434038404924
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A151732 n : ℚ) / 2

end

end A151734.P8809357434038404924

/-! ## A151734.P1408801541760200973

`Δ[A151731(n-n²%(n+1))]/2`
-/

namespace A151734.P1408801541760200973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151731 (n - n ^ 2 % (n + 1))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / 2

end

end A151734.P1408801541760200973

/-! ## A151734.P3561818867473406479

`A001281(A151732(n))`
-/

namespace A151734.P3561818867473406479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A151732 n).toNat

end

end A151734.P3561818867473406479

/-! ## A151734.P6103834564099628621

`A004524(A151732(n)+1)`
-/

namespace A151734.P6103834564099628621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A151732 n + 1).toNat

end

end A151734.P6103834564099628621

/-! ## A151734.P18103885494388510927

`A004526(A151732(n)+1)`
-/

namespace A151734.P18103885494388510927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A151732 n + 1).toNat

end

end A151734.P18103885494388510927

/-! ## A151734.P16028567515592805919

`A028242(A151732(n)+1)`
-/

namespace A151734.P16028567515592805919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (A151732 n + 1).toNat

end

end A151734.P16028567515592805919

/-! ## A151734.P4355539351508141609

`A057979(A151732(n)+1)`
-/

namespace A151734.P4355539351508141609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (A151732 n + 1).toNat

end

end A151734.P4355539351508141609

/-! ## A151734.P291338815312391403

`A123108(A151732(n)+1)`
-/

namespace A151734.P291338815312391403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A151732 n + 1).toNat

end

end A151734.P291338815312391403

/-! ## A151734.P16226987431156478094

`A194161(A151732(n)+1)`
-/

namespace A151734.P16226987431156478094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194161 (A151732 n + 1).toNat

end

end A151734.P16226987431156478094

/-! ## A151734.P2214012972749341873

`A002265(2*A151732(n))`
-/

namespace A151734.P2214012972749341873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (2 * A151732 n).toNat

end

end A151734.P2214012972749341873

/-!
# A151735: a(0)=0, a(1)=1; for n>21, a(n) = (A151725(n)+7)/4.

The programs for A151735, there is no canonical definition to state claims against.
-/

/-! ## A151735.P5772834944597777529

`ceil(A151725(n)/4)+A329570(n+1)%2`
-/

namespace A151735.P5772834944597777529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A151725 n : ℚ) / 4⌉ + Int.tmod (A329570 (n + 1)) 2

end

end A151735.P5772834944597777529

/-! ## A151735.P8968375144855595886

`A130130(n)+A002265(A151725(n))`
-/

namespace A151735.P8968375144855595886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130130 n + A002265 (A151725 n).toNat

end

end A151735.P8968375144855595886

/-! ## A151735.P903250962454140787

`A130130(n)+A002265(∑[A151726(n)])`
-/

namespace A151735.P903250962454140787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151726 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130130 n + A002265 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A151735.P903250962454140787

/-! ## A151735.P5223575166015472681

`A130130(n)+A025480(∑[A151726(n)])`
-/

namespace A151735.P5223575166015472681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151726 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130130 n + A025480 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A151735.P5223575166015472681

/-! ## A151735.P9573463699857302030

`A107286(2*n)+A002265(A151725(n))`
-/

namespace A151735.P9573463699857302030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107286 (2 * n) + A002265 (A151725 n).toNat

end

end A151735.P9573463699857302030

/-! ## A151735.P2970663727409718293

`A107286(2*n)+A002265(∑[A151726(n)])`
-/

namespace A151735.P2970663727409718293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151726 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107286 (2 * n) + A002265 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A151735.P2970663727409718293

/-! ## A151735.P14543460134153684170

`A107286(2*n)+A025480(∑[A151726(n)])`
-/

namespace A151735.P14543460134153684170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151726 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107286 (2 * n) + A025480 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A151735.P14543460134153684170

/-!
# A151736: Weight distribution of [63,24,15] primitive binary BCH code.

The programs for A151736, there is no canonical definition to state claims against.
-/

/-! ## A151736.P11665669434933527401

`A001840(C(∑[ceil(n/3)+1], 4*n))`
-/

namespace A151736.P11665669434933527401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) / 3⌉ + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001840 (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j).toNat (4 * n))

end

end A151736.P11665669434933527401

/-! ## A151736.P14120082925325075111

`A052533(A213003(n)²)`
-/

namespace A151736.P14120082925325075111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052533 (A213003 n ^ 2).toNat

end

end A151736.P14120082925325075111

/-! ## A151736.P11532246183374934013

`A287481(A205295(n)+3)`
-/

namespace A151736.P11532246183374934013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287481 (A205295 n + 3).toNat

end

end A151736.P11532246183374934013

/-! ## A151736.P4395586114453185627

`A278945(C(A262876(n), n))`
-/

namespace A151736.P4395586114453185627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278945 (Nat.choose (A262876 n).toNat n)

end

end A151736.P4395586114453185627

/-! ## A151736.P2086664383839620551

`A278945(C(A340761(n), n))`
-/

namespace A151736.P2086664383839620551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278945 (Nat.choose (A340761 n).toNat n)

end

end A151736.P2086664383839620551

/-!
# A151737: First differences of A151735 (starting at A151735(2)).

The programs for A151737, there is no canonical definition to state claims against.
-/

/-! ## A151737.P15747038412118480717

`Δ[ceil(A151725(n)/4)]`
-/

namespace A151737.P15747038412118480717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A151725 n : ℚ) / 4⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A151737.P15747038412118480717

/-! ## A151737.P14968352162939437534

`ceil(A151726(n+1)/4)`
-/

namespace A151737.P14968352162939437534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A151726 (n + 1) : ℚ) / 4⌉

end

end A151737.P14968352162939437534

/-! ## A151737.P13047318999351712779

`A151726(abs(1-n)+2)/4`
-/

namespace A151737.P13047318999351712779
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A151726 (|1 - (n : ℤ)| + 2).toNat : ℚ) / 4

end

end A151737.P13047318999351712779

/-! ## A151737.P7428424119270954415

`A054576(Δ[A151725(n)])`
-/

namespace A151737.P7428424119270954415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151725 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054576 (f1 (n + 1) - f1 n).toNat

end

end A151737.P7428424119270954415

/-! ## A151737.P1494476293394286121

`A110651(Δ[A151725(n)])`
-/

namespace A151737.P1494476293394286121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151725 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110651 (f1 (n + 1) - f1 n).toNat

end

end A151737.P1494476293394286121

/-! ## A151737.P4284197455114983064

`A110655(Δ[A151725(n)])`
-/

namespace A151737.P4284197455114983064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151725 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110655 (f1 (n + 1) - f1 n).toNat

end

end A151737.P4284197455114983064

/-! ## A151737.P10978769535310960204

`A214392(Δ[A151725(n)])`
-/

namespace A151737.P10978769535310960204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151725 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214392 (f1 (n + 1) - f1 n).toNat

end

end A151737.P10978769535310960204

/-! ## A151737.P7248860130263268248

`A030065(A151726(n+1))`
-/

namespace A151737.P7248860130263268248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030065 (A151726 (n + 1)).toNat

end

end A151737.P7248860130263268248

/-! ## A151737.P3307065349709338346

`A025480(A151726(n+1)+1)`
-/

namespace A151737.P3307065349709338346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A151726 (n + 1) + 1).toNat

end

end A151737.P3307065349709338346

/-! ## A151737.P10635684880208887482

`(A151726(n+1)/4)^(A000040(n+1)%2)`
-/

namespace A151737.P10635684880208887482
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A151726 (n + 1) : ℚ) / 4) ^ (Int.tmod (A000040 (n + 1)) 2 : ℤ)

end

end A151737.P10635684880208887482

/-!
# A151738: Primes which are the sum of nine consecutive composite numbers.

The programs for A151738, the canonical program `A151738.P8616112178150566337` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A151738 has offset 1).

The definition of A151738 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 469 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A151738.P8616112178150566337

`p?[A053767(n+9)-A053767(n)]`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A151738

/-- `p?[A053767(n+9)-A053767(n)]` -/
def P8616112178150566337.Spec : Prop :=
  ∀ n, P8616112178150566337.a n = A151738 (n + 1)

theorem P8616112178150566337.correct : P8616112178150566337.Spec := by
  intro n
  simp only [A151738, Nat.add_sub_cancel]

end A151738

/-! ## A151738.P9030435773373296179

`p?[A051349(n+10)-A051349(n+1)]`
-/

namespace A151738.P9030435773373296179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051349 (n + 10) - A051349 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A151738.P9030435773373296179

namespace A151738

/-- `p?[A051349(n+10)-A051349(n+1)]` -/
def P9030435773373296179.Spec : Prop :=
  ∀ n, P9030435773373296179.a n = A151738 (n + 1)

end A151738

/-! ## A151738.P2928074159840684586

`∩[A000040(n+1), A053767(n+9)-A053767(n)]`
-/

namespace A151738.P2928074159840684586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053767 (n + 9) - A053767 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A151738.P2928074159840684586

namespace A151738

/-- `∩[A000040(n+1), A053767(n+9)-A053767(n)]` -/
def P2928074159840684586.Spec : Prop :=
  ∀ n, (P2928074159840684586.a n : ℤ) = A151738 (n + 1)

end A151738

/-! ## A151738.P14293183902769226733

`∩[A008578(n+2), A053767(n+9)-A053767(n)]`
-/

namespace A151738.P14293183902769226733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053767 (n + 9) - A053767 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A151738.P14293183902769226733

namespace A151738

/-- `∩[A008578(n+2), A053767(n+9)-A053767(n)]` -/
def P14293183902769226733.Spec : Prop :=
  ∀ n, (P14293183902769226733.a n : ℤ) = A151738 (n + 1)

end A151738

/-!
# A151739: Primes which are the sum of ten consecutive composite numbers.

The programs for A151739, the canonical program `A151739.P9308025043198049379` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A151739 has offset 1).

The definition of A151739 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 568 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A151739.P9308025043198049379

`p?[A051349(n+10)-A051349(n)]`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A151739

/-- `p?[A051349(n+10)-A051349(n)]` -/
def P9308025043198049379.Spec : Prop :=
  ∀ n, P9308025043198049379.a n = A151739 (n + 1)

theorem P9308025043198049379.correct : P9308025043198049379.Spec := by
  intro n
  simp only [A151739, Nat.add_sub_cancel]

end A151739

/-! ## A151739.P18055396930893686130

`p?[A053767(n+10)-A053767(n)]`
-/

namespace A151739.P18055396930893686130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053767 (n + 10) - A053767 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A151739.P18055396930893686130

namespace A151739

/-- `p?[A053767(n+10)-A053767(n)]` -/
def P18055396930893686130.Spec : Prop :=
  ∀ n, P18055396930893686130.a n = A151739 (n + 1)

end A151739

/-! ## A151739.P14156511610913355229

`p?[A175967(n+11)-A175967(n+1)]`
-/

namespace A151739.P14156511610913355229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175967 (n + 11) - A175967 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A151739.P14156511610913355229

namespace A151739

/-- `p?[A175967(n+11)-A175967(n+1)]` -/
def P14156511610913355229.Spec : Prop :=
  ∀ n, P14156511610913355229.a n = A151739 (n + 1)

end A151739

/-!
# A151740: Composites that are the sum of two consecutive composite numbers.

The programs for A151740, the canonical program `A151740.P2454433821023245285` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A151740 has offset 1).

The definition of A151740 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A151740.P2454433821023245285

`A167611(n+2)`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A151740

/-- `A167611(n+2)` -/
def P2454433821023245285.Spec : Prop :=
  ∀ n, P2454433821023245285.a n = A151740 (n + 1)

theorem P2454433821023245285.correct : P2454433821023245285.Spec := by
  intro n
  simp only [A151740, Nat.add_sub_cancel]

end A151740

/-! ## A151740.P15385023413978534713

`filter[A166037(n+1), A066247(#)]`
-/

namespace A151740.P15385023413978534713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166037 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A151740.P15385023413978534713

namespace A151740

/-- `filter[A166037(n+1), A066247(#)]` -/
def P15385023413978534713.Spec : Prop :=
  ∀ n, P15385023413978534713.a n = A151740 (n + 1)

end A151740

/-! ## A151740.P8555987057271444515

`filter[A166037(n+1), A202238(#)]`
-/

namespace A151740.P8555987057271444515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166037 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A202238 (f1 j).toNat = 1) n)

end

end A151740.P8555987057271444515

namespace A151740

/-- `filter[A166037(n+1), A202238(#)]` -/
def P8555987057271444515.Spec : Prop :=
  ∀ n, P8555987057271444515.a n = A151740 (n + 1)

end A151740

/-! ## A151740.P2522961932124242429

`filter[A166037(n+2), A005171(#)]`
-/

namespace A151740.P2522961932124242429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166037 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A151740.P2522961932124242429

namespace A151740

/-- `filter[A166037(n+2), A005171(#)]` -/
def P2522961932124242429.Spec : Prop :=
  ∀ n, P2522961932124242429.a n = A151740 (n + 1)

end A151740

/-! ## A151740.P3007968654856345164

`filter[A166037(n+2), A292438(#)]`
-/

namespace A151740.P3007968654856345164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166037 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A292438 (f1 j).toNat = 1) n)

end

end A151740.P3007968654856345164

namespace A151740

/-- `filter[A166037(n+2), A292438(#)]` -/
def P3007968654856345164.Spec : Prop :=
  ∀ n, P3007968654856345164.a n = A151740 (n + 1)

end A151740

/-! ## A151740.P13021458147766162441

`∩[A002808(n+1), A166037(n+1)]`
-/

namespace A151740.P13021458147766162441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166037 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A151740.P13021458147766162441

namespace A151740

/-- `∩[A002808(n+1), A166037(n+1)]` -/
def P13021458147766162441.Spec : Prop :=
  ∀ n, (P13021458147766162441.a n : ℤ) = A151740 (n + 1)

end A151740

/-! ## A151740.P16040429571007310888

`∩[A018252(n+2), A166037(n+2)]`
-/

namespace A151740.P16040429571007310888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166037 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A151740.P16040429571007310888

namespace A151740

/-- `∩[A018252(n+2), A166037(n+2)]` -/
def P16040429571007310888.Spec : Prop :=
  ∀ n, (P16040429571007310888.a n : ℤ) = A151740 (n + 1)

end A151740

/-! ## A151740.P1662981459050888175

`∩[A002808(n+1), A166039(n+1)-A002808(n+1)]`
-/

namespace A151740.P1662981459050888175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166039 (n + 1) - A002808 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A151740.P1662981459050888175

namespace A151740

/-- `∩[A002808(n+1), A166039(n+1)-A002808(n+1)]` -/
def P1662981459050888175.Spec : Prop :=
  ∀ n, (P1662981459050888175.a n : ℤ) = A151740 (n + 1)

end A151740

/-! ## A151740.P2693176158860491532

`∩[A141468(n+1), A166039(n+1)-A141468(n+1)]`
-/

namespace A151740.P2693176158860491532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166039 (n + 1) - A141468 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A151740.P2693176158860491532

namespace A151740

/-- `∩[A141468(n+1), A166039(n+1)-A141468(n+1)]` -/
def P2693176158860491532.Spec : Prop :=
  ∀ n, (P2693176158860491532.a n : ℤ) = A151740 (n + 1)

end A151740

/-! ## A151740.P9547070147170511645

`∩[A138592(n+1), A166037(n+1)]`
-/

namespace A151740.P9547070147170511645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138592 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166037 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A151740.P9547070147170511645

namespace A151740

/-- `∩[A138592(n+1), A166037(n+1)]` -/
def P9547070147170511645.Spec : Prop :=
  ∀ n, (P9547070147170511645.a n : ℤ) = A151740 (n + 1)

end A151740

/-! ## A151740.P4288039205700994109

`∩[A166037(n+1), A343311(n+1)]`
-/

namespace A151740.P4288039205700994109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166037 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343311 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A151740.P4288039205700994109

namespace A151740

/-- `∩[A166037(n+1), A343311(n+1)]` -/
def P4288039205700994109.Spec : Prop :=
  ∀ n, (P4288039205700994109.a n : ℤ) = A151740 (n + 1)

end A151740

/-! ## A151740.P9960210471363783059

`∩[A166037(n+1), A176423(n+1)]`
-/

namespace A151740.P9960210471363783059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166037 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176423 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A151740.P9960210471363783059

namespace A151740

/-- `∩[A166037(n+1), A176423(n+1)]` -/
def P9960210471363783059.Spec : Prop :=
  ∀ n, (P9960210471363783059.a n : ℤ) = A151740 (n + 1)

end A151740

/-! ## A151740.P6469301148370001475

`∩[A056653(n+1), A166039(n+1)-A056653(n+1)]`
-/

namespace A151740.P6469301148370001475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056653 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166039 (n + 1) - A056653 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A151740.P6469301148370001475

namespace A151740

/-- `∩[A056653(n+1), A166039(n+1)-A056653(n+1)]` -/
def P6469301148370001475.Spec : Prop :=
  ∀ n, (P6469301148370001475.a n : ℤ) = A151740 (n + 1)

end A151740

/-! ## A151740.P831560323522980887

`∩[A166037(n+1), A166039(n+1)-A166037(n+1)]`
-/

namespace A151740.P831560323522980887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166037 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166039 (n + 1) - A166037 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A151740.P831560323522980887

namespace A151740

/-- `∩[A166037(n+1), A166039(n+1)-A166037(n+1)]` -/
def P831560323522980887.Spec : Prop :=
  ∀ n, (P831560323522980887.a n : ℤ) = A151740 (n + 1)

end A151740

/-! ## A151740.P11236154394666007947

`∩[A111774(n+1), A166037(n+1)]`
-/

namespace A151740.P11236154394666007947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111774 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166037 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A151740.P11236154394666007947

namespace A151740

/-- `∩[A111774(n+1), A166037(n+1)]` -/
def P11236154394666007947.Spec : Prop :=
  ∀ n, (P11236154394666007947.a n : ℤ) = A151740 (n + 1)

end A151740

/-!
# A151741: Composite which are the sum of three consecutive composite numbers.

The programs for A151741, there is no canonical definition to state claims against.
-/

/-! ## A151741.P10069625043424719395

`filter[A166039(n+1), A005171(#)]`
-/

namespace A151741.P10069625043424719395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166039 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A151741.P10069625043424719395

/-! ## A151741.P14848251288331578778

`filter[A166039(n+1), A066247(#)]`
-/

namespace A151741.P14848251288331578778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166039 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A151741.P14848251288331578778

/-! ## A151741.P10143394998743678638

`filter[A166039(n+1), A202238(#)]`
-/

namespace A151741.P10143394998743678638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166039 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A202238 (f1 j).toNat = 1) n)

end

end A151741.P10143394998743678638

/-! ## A151741.P1726848400740714678

`∩[A002808(n+1), A166039(n+1)]`
-/

namespace A151741.P1726848400740714678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166039 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A151741.P1726848400740714678

/-! ## A151741.P9262797784326708732

`∩[A009188(n+1), A166039(n+1)]`
-/

namespace A151741.P9262797784326708732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009188 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166039 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A151741.P9262797784326708732

/-! ## A151741.P12715302058071908402

`∩[A018252(n+1), A166039(n+1)]`
-/

namespace A151741.P12715302058071908402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166039 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A151741.P12715302058071908402

/-! ## A151741.P6108607522263846034

`∩[A056653(n+1), A166039(n+1)]`
-/

namespace A151741.P6108607522263846034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056653 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166039 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A151741.P6108607522263846034

/-! ## A151741.P9400048661911664132

`∩[A062973(n+1), A166039(n+1)]`
-/

namespace A151741.P9400048661911664132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062973 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166039 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A151741.P9400048661911664132

/-! ## A151741.P14306462663762354176

`∩[A065090(n+1), A166039(n+1)]`
-/

namespace A151741.P14306462663762354176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065090 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166039 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A151741.P14306462663762354176

/-! ## A151741.P17346153034053616198

`∩[A111774(n+1), A166039(n+1)]`
-/

namespace A151741.P17346153034053616198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111774 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166039 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A151741.P17346153034053616198

/-!
# A151742: Composite numbers which are the sum of four consecutive composite numbers.

The programs for A151742, the canonical program `A151742.P737792101325545151` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A151742 has offset 1).

The definition of A151742 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A151742.P737792101325545151

`∩[A002808(n+1), A053767(n+4)-A053767(n)]`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A151742

/-- `∩[A002808(n+1), A053767(n+4)-A053767(n)]` -/
def P737792101325545151.Spec : Prop :=
  ∀ n, (P737792101325545151.a n : ℤ) = A151742 (n + 1)

theorem P737792101325545151.correct : P737792101325545151.Spec := by
  intro n
  simp only [A151742, Nat.add_sub_cancel]

end A151742

/-! ## A151742.P13310854714893915779

`∩[A018252(n+1), A051349(n+4)-A051349(n)]`
-/

namespace A151742.P13310854714893915779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051349 (n + 4) - A051349 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A151742.P13310854714893915779

namespace A151742

/-- `∩[A018252(n+1), A051349(n+4)-A051349(n)]` -/
def P13310854714893915779.Spec : Prop :=
  ∀ n, (P13310854714893915779.a n : ℤ) = A151742 (n + 1)

end A151742

/-! ## A151742.P17687604619838006624

`∩[A056653(n+1), A053767(n+4)-A053767(n)]`
-/

namespace A151742.P17687604619838006624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056653 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053767 (n + 4) - A053767 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A151742.P17687604619838006624

namespace A151742

/-- `∩[A056653(n+1), A053767(n+4)-A053767(n)]` -/
def P17687604619838006624.Spec : Prop :=
  ∀ n, (P17687604619838006624.a n : ℤ) = A151742 (n + 1)

end A151742

/-! ## A151742.P5613084376236670896

`∩[A018252(n+2), A053767(n+4)-A053767(n)]`
-/

namespace A151742.P5613084376236670896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053767 (n + 4) - A053767 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A151742.P5613084376236670896

namespace A151742

/-- `∩[A018252(n+2), A053767(n+4)-A053767(n)]` -/
def P5613084376236670896.Spec : Prop :=
  ∀ n, (P5613084376236670896.a n : ℤ) = A151742 (n + 1)

end A151742

/-! ## A151742.P11020599013910895006

`∩[A176423(n+1)+A166039(n+1), A176423(n+1)]`
-/

namespace A151742.P11020599013910895006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176423 (n + 1) + A166039 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176423 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A151742.P11020599013910895006

namespace A151742

/-- `∩[A176423(n+1)+A166039(n+1), A176423(n+1)]` -/
def P11020599013910895006.Spec : Prop :=
  ∀ n, (P11020599013910895006.a n : ℤ) = A151742 (n + 1)

end A151742

/-! ## A151742.P3194542132872017978

`∩[A141468(n+1), A166039(n+2)+A141468(n+1)]`
-/

namespace A151742.P3194542132872017978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166039 (n + 2) + A141468 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A151742.P3194542132872017978

namespace A151742

/-- `∩[A141468(n+1), A166039(n+2)+A141468(n+1)]` -/
def P3194542132872017978.Spec : Prop :=
  ∀ n, (P3194542132872017978.a n : ℤ) = A151742 (n + 1)

end A151742

/-!
# A151744: Primes which are the sum of two, three, four and five consecutive composite numbers.

The programs for A151744, there is no canonical definition to state claims against.
-/

/-! ## A151744.P8827100627080049379

`∩[A060330(n+1), A060339(n+1)]`
-/

namespace A151744.P8827100627080049379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060330 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060339 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A151744.P8827100627080049379

/-!
# A151746: G.f.: (1-2*x-5*x^2+4*x^3)/((1-4*x)*(1-x)^2).

The programs for A151746, the canonical program `A151746.P14378383464374205338` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A151746 has offset 0).

The definition of A151746 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A151746.P1765735924363350227

`∑[char[1]+ceil(4^n/3)]`
-/

namespace A151746.P1765735924363350227
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ) + ⌈(4 ^ n : ℚ) / 3⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A151746.P1765735924363350227

namespace A151746

/-- `∑[char[1]+ceil(4^n/3)]` -/
def P1765735924363350227.Spec : Prop :=
  ∀ n, P1765735924363350227.a n = A151746 n

end A151746

/-! ## A151746.P6390029526358740802

`∑[ceil(4^n/3)]+ceil(sin(n)²)`
-/

namespace A151746.P6390029526358740802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(4 ^ n : ℚ) / 3⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ⌈Real.sin (n : ℝ) ^ 2⌉

end

end A151746.P6390029526358740802

namespace A151746

/-- `∑[ceil(4^n/3)]+ceil(sin(n)²)` -/
def P6390029526358740802.Spec : Prop :=
  ∀ n, P6390029526358740802.a n = A151746 n

end A151746

/-! ## A151746.P14378383464374205338

`a(n-1)+ceil(4^n/3)` with `a(0)=1, a(1)=4`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A151746

/-- `a(n-1)+ceil(4^n/3)` -/
def P14378383464374205338.Spec : Prop :=
  ∀ n, P14378383464374205338.a n = A151746 n

theorem P14378383464374205338.correct : P14378383464374205338.Spec := by
  intro n
  simp only [A151746]

end A151746

/-! ## A151746.P14510414164862129466

`record[4*a(n-2)-(n+3)]` with `a(0)=1, a(1)=4`
-/

namespace A151746.P14510414164862129466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n f1 =>
  4 * f1 (n - 2) - (n + 3 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A151746.P14510414164862129466

namespace A151746

/-- `record[4*a(n-2)-(n+3)]` -/
def P14510414164862129466.Spec : Prop :=
  ∀ n, P14510414164862129466.a n = A151746 n

end A151746

/-! ## A151746.P10728994549823417716

`∑[ceil(4^n/3)]-(floor(acot(n))-1)`
-/

namespace A151746.P10728994549823417716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(4 ^ n : ℚ) / 3⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (⌊SequenceMachineLib.acot (n : ℝ)⌋ - 1)

end

end A151746.P10728994549823417716

namespace A151746

/-- `∑[ceil(4^n/3)]-(floor(acot(n))-1)` -/
def P10728994549823417716.Spec : Prop :=
  ∀ n, P10728994549823417716.a n = A151746 n

end A151746

/-! ## A151746.P996930747959669802

`2*(2*a(n-1)-(n+1))` with `a(0)=1, a(1)=4`
-/

namespace A151746.P996930747959669802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  2 * (2 * a (n - 1) - (n + 1 : ℤ))

end

end A151746.P996930747959669802

namespace A151746

/-- `2*(2*a(n-1)-(n+1))` -/
def P996930747959669802.Spec : Prop :=
  ∀ n, P996930747959669802.a n = A151746 n

end A151746

/-! ## A151746.P4664010747323671077

`2*(2*a(n-1)-1-n)` with `a(0)=1, a(1)=4`
-/

namespace A151746.P4664010747323671077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  2 * (2 * a (n - 1) - 1 - (n : ℤ))

end

end A151746.P4664010747323671077

namespace A151746

/-- `2*(2*a(n-1)-1-n)` -/
def P4664010747323671077.Spec : Prop :=
  ∀ n, P4664010747323671077.a n = A151746 n

end A151746

/-! ## A151746.P17937183944956101594

`record[A077898(n+1)+1]`
-/

namespace A151746.P17937183944956101594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077898 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A151746.P17937183944956101594

namespace A151746

/-- `record[A077898(n+1)+1]` -/
def P17937183944956101594.Spec : Prop :=
  ∀ n, P17937183944956101594.a n = A151746 n

end A151746

/-! ## A151746.P6139006021143067616

`record[∑[A077925(n+1)]+2]`
-/

namespace A151746.P6139006021143067616
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077925 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A151746.P6139006021143067616

namespace A151746

/-- `record[∑[A077925(n+1)]+2]` -/
def P6139006021143067616.Spec : Prop :=
  ∀ n, P6139006021143067616.a n = A151746 n

end A151746

/-! ## A151746.P7583203414502012998

`A077898(comp[2*(n+1)]+1)+1`
-/

namespace A151746.P7583203414502012998
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077898 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1) + 1

end

end A151746.P7583203414502012998

namespace A151746

/-- `A077898(comp[2*(n+1)]+1)+1` -/
def P7583203414502012998.Spec : Prop :=
  ∀ n, P7583203414502012998.a n = A151746 n

end A151746

/-! ## A151746.P12661023188061243886

`∑[A002450(n)+floor(3/(n+2))]+n`
-/

namespace A151746.P12661023188061243886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002450 n + ⌊3 / (n + 2 : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A151746.P12661023188061243886

namespace A151746

/-- `∑[A002450(n)+floor(3/(n+2))]+n` -/
def P12661023188061243886.Spec : Prop :=
  ∀ n, P12661023188061243886.a n = A151746 n

end A151746

/-! ## A151746.P1639630571722636296

`A073724(n)+A057427(n)`
-/

namespace A151746.P1639630571722636296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073724 n + A057427 n

end

end A151746.P1639630571722636296

namespace A151746

/-- `A073724(n)+A057427(n)` -/
def P1639630571722636296.Spec : Prop :=
  ∀ n, P1639630571722636296.a n = A151746 n

end A151746

/-! ## A151746.P5995713036976986077

`A073724(n)-A057428(n)`
-/

namespace A151746.P5995713036976986077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073724 n - A057428 n

end

end A151746.P5995713036976986077

namespace A151746

/-- `A073724(n)-A057428(n)` -/
def P5995713036976986077.Spec : Prop :=
  ∀ n, P5995713036976986077.a n = A151746 n

end A151746

/-! ## A151746.P7975681499511885688

`A036453(n+1)*A350717(n)`
-/

namespace A151746.P7975681499511885688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036453 (n + 1) * A350717 n

end

end A151746.P7975681499511885688

namespace A151746

/-- `A036453(n+1)*A350717(n)` -/
def P7975681499511885688.Spec : Prop :=
  ∀ n, P7975681499511885688.a n = A151746 n

end A151746

/-! ## A151746.P17260283801610700327

`∑[A163834(n)]+n-A004277(n)`
-/

namespace A151746.P17260283801610700327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163834 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ((n : ℤ) - A004277 n)

end

end A151746.P17260283801610700327

namespace A151746

/-- `∑[A163834(n)]+n-A004277(n)` -/
def P17260283801610700327.Spec : Prop :=
  ∀ n, P17260283801610700327.a n = A151746 n

end A151746

/-! ## A151746.P4024845906907804336

`A057427(n)+∑[∑[A123344(n)²]]`
-/

namespace A151746.P4024845906907804336
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123344 n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A151746.P4024845906907804336

namespace A151746

/-- `A057427(n)+∑[∑[A123344(n)²]]` -/
def P4024845906907804336.Spec : Prop :=
  ∀ n, P4024845906907804336.a n = A151746 n

end A151746

/-! ## A151746.P12911711746278507317

`∑[∑[A011782(n)²]]-A057428(n)`
-/

namespace A151746.P12911711746278507317
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A057428 n

end

end A151746.P12911711746278507317

namespace A151746

/-- `∑[∑[A011782(n)²]]-A057428(n)` -/
def P12911711746278507317.Spec : Prop :=
  ∀ n, P12911711746278507317.a n = A151746 n

end A151746

/-! ## A151746.P14768834233981344790

`∑[A023105(2*n+1)]-A028310(n)`
-/

namespace A151746.P14768834233981344790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023105 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A028310 n

end

end A151746.P14768834233981344790

namespace A151746

/-- `∑[A023105(2*n+1)]-A028310(n)` -/
def P14768834233981344790.Spec : Prop :=
  ∀ n, P14768834233981344790.a n = A151746 n

end A151746

/-! ## A151746.P10862871307519916947

`∑[A005578(2*n)]-A062157(2*n)`
-/

namespace A151746.P10862871307519916947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005578 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A062157 (2 * n)

end

end A151746.P10862871307519916947

namespace A151746

/-- `∑[A005578(2*n)]-A062157(2*n)` -/
def P10862871307519916947.Spec : Prop :=
  ∀ n, P10862871307519916947.a n = A151746 n

end A151746

/-!
# A151747: Except for boundary cases (n <= 3, j = 0, 1, 2^i-1), satisfies a(n) = a(2^i+j) = 2 a(j) + a(j+1), where n = 2^i + j, 0 <= j < 2^i .

The programs for A151747, there is no canonical definition to state claims against.
-/

/-! ## A151747.P10698021629743557609

`Δ[A170879(A259361(n²))]`
-/

namespace A151747.P10698021629743557609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170879 (A259361 (n ^ 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A151747.P10698021629743557609

/-! ## A151747.P2201218626014292386

`Δ[A170879(log2(A011782(n)))]`
-/

namespace A151747.P2201218626014292386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170879 (SequenceMachineLib.roundAway (Real.logb 2 (A011782 n : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A151747.P2201218626014292386

/-! ## A151747.P6825643104602372109

`Δ[A170879(A028310(n)-1)]`
-/

namespace A151747.P6825643104602372109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170879 (A028310 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A151747.P6825643104602372109

/-! ## A151747.P5407084594214405465

`Δ[A170879(val(A011782(n), 2))]`
-/

namespace A151747.P5407084594214405465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170879 (SequenceMachineLib.valuation (A011782 n).toNat 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A151747.P5407084594214405465

/-! ## A151747.P16577254871436005560

`Δ[A170879(A004273(n)-n)]`
-/

namespace A151747.P16577254871436005560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170879 (A004273 n - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A151747.P16577254871436005560

/-! ## A151747.P13974745497273482368

`Δ[A170879(n-A057427(n))]`
-/

namespace A151747.P13974745497273482368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170879 ((n : ℤ) - A057427 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A151747.P13974745497273482368

/-! ## A151747.P5243765690144466107

`Δ[A170879(A004526(A004273(n)))]`
-/

namespace A151747.P5243765690144466107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170879 (A004526 (A004273 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A151747.P5243765690144466107

/-! ## A151747.P13073989986735809285

`Δ[A170879(A004526(A004275(n)))]`
-/

namespace A151747.P13073989986735809285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170879 (A004526 (A004275 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A151747.P13073989986735809285

/-! ## A151747.P1127609231761490147

`Δ[A170879(A002262(A027379(n)))]`
-/

namespace A151747.P1127609231761490147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170879 (A002262 (A027379 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A151747.P1127609231761490147

/-! ## A151747.P1791272594718101985

`Δ[A170879(A023443(A028310(n)))]`
-/

namespace A151747.P1791272594718101985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170879 (A023443 (A028310 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A151747.P1791272594718101985

/-!
# A151748: If the first two terms of the rows of the triangle in A151747 are omitted, this is what the rows converge to.

The programs for A151748, there is no canonical definition to state claims against.
-/

/-! ## A151748.P10203195640449522098

`A151747(n+3)+2*A151747(n+2)`
-/

namespace A151748.P10203195640449522098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151747 (n + 3) + 2 * A151747 (n + 2)

end

end A151748.P10203195640449522098

/-! ## A151748.P10900539511902300624

`Δ[A153001(n)+A017077(A153006(n))]`
-/

namespace A151748.P10900539511902300624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153001 n + A017077 (A153006 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A151748.P10900539511902300624

/-! ## A151748.P13848724014270253919

`A151747(A062383(n+3)+n+2)`
-/

namespace A151748.P13848724014270253919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151747 (A062383 (n + 3) + (n + 2 : ℤ)).toNat

end

end A151748.P13848724014270253919

/-! ## A151748.P408358983586216012

`A151747(A151764(n+1)+33)`
-/

namespace A151748.P408358983586216012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151747 (A151764 (n + 1) + 33).toNat

end

end A151748.P408358983586216012

/-! ## A151748.P2048781060683366365

`Δ[A170879(n+33)]`
-/

namespace A151748.P2048781060683366365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170879 (n + 33)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A151748.P2048781060683366365

/-!
# A151749: a(0) = 1, a(1) = 3; a(n+2) = (a(n+1) + a(n))/2 if 2 divides (a(n+1) + a(n)), a(n+2) = a(n+1) + a(n) otherwise.

The programs for A151749, the canonical program `A151749.P17834038262675525206` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A151749 has offset 0).

The definition of A151749 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 925 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A151749.P17834038262675525206

`(a(n-1)+a(n-2))/gcd(2, a(n-1)+a(n-2))` with `a(0)=1, a(1)=3`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A151749

/-- `(a(n-1)+a(n-2))/gcd(2, a(n-1)+a(n-2))` -/
def P17834038262675525206.Spec : Prop :=
  ∀ n, P17834038262675525206.a n = (A151749 n : ℚ)

end A151749

/-! ## A151749.P13289296588459456735

`A120424(n+1)-a(n-1)` with `a(0)=1`
-/

namespace A151749.P13289296588459456735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A120424 (n + 1) - a (n - 1)

end

end A151749.P13289296588459456735

namespace A151749

/-- `A120424(n+1)-a(n-1)` -/
def P13289296588459456735.Spec : Prop :=
  ∀ n, P13289296588459456735.a n = A151749 n

end A151749

/-! ## A151749.P9575630837015353160

`lcm(2, A120424(n))/2`
-/

namespace A151749.P9575630837015353160
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (A120424 n) : ℚ) / 2

end

end A151749.P9575630837015353160

namespace A151749

/-- `lcm(2, A120424(n))/2` -/
def P9575630837015353160.Spec : Prop :=
  ∀ n, P9575630837015353160.a n = (A151749 n : ℚ)

end A151749

/-! ## A151749.P9231463348202932430

`A014682(lcm(2, A120424(n)))`
-/

namespace A151749.P9231463348202932430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (Int.lcm 2 (A120424 n))

end

end A151749.P9231463348202932430

namespace A151749

/-- `A014682(lcm(2, A120424(n)))` -/
def P9231463348202932430.Spec : Prop :=
  ∀ n, P9231463348202932430.a n = A151749 n

end A151749

/-! ## A151749.P12838913010363460581

`A026741(a(n-1)+a(n-2))` with `a(0)=1, a(1)=3`
-/

namespace A151749.P12838913010363460581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  A026741 (a (n - 1) + a (n - 2)).toNat

end

end A151749.P12838913010363460581

namespace A151749

/-- `A026741(a(n-1)+a(n-2))` -/
def P12838913010363460581.Spec : Prop :=
  ∀ n, P12838913010363460581.a n = A151749 n

end A151749

/-!
# A151752: a(n) is the unique n-digit number with all digits odd that is divisible by 5^n.

The programs for A151752, there is no canonical definition to state claims against.
-/

/-! ## A151752.P15899707437497859026

`∑[10^n*A151753(n+1)]`
-/

namespace A151752.P15899707437497859026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (10 ^ n : ℤ) * A151753 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A151752.P15899707437497859026

/-!
# A151753: Leading digits of A151752.

The programs for A151753, there is no canonical definition to state claims against.
-/

/-! ## A151753.P2305793051194010291

`1-2*(A158625(n+2)-4)`
-/

namespace A151753.P2305793051194010291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - 2 * (A158625 (n + 2) - 4)

end

end A151753.P2305793051194010291

/-!
# A151754: Number of n-digit numbers that are divisible by 5^n.

The programs for A151754, the canonical program `A151754.P817320134153810110` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A151754 has offset 1).

The definition of A151754 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A151754.P14220835761772336428

`floor(9*2^n/5)`
-/

namespace A151754.P14220835761772336428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊9 * ((2 ^ n : ℚ) / 5)⌋

end

end A151754.P14220835761772336428

namespace A151754

/-- `floor(9*2^n/5)` -/
def P14220835761772336428.Spec : Prop :=
  ∀ n, P14220835761772336428.a n = A151754 (n + 1)

end A151754

/-! ## A151754.P817320134153810110

`ogf((1+x^2-x^3)/(1-3x+3x^2-3x^3+2x^4))`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A151754

/-- `ogf((1+x^2-x^3)/(1-3x+3x^2-3x^3+2x^4))` -/
def P817320134153810110.Spec : Prop :=
  ∀ n, P817320134153810110.a n = A151754 (n + 1)

theorem P817320134153810110.correct : P817320134153810110.Spec := by
  intro n
  simp only [A151754, Nat.add_sub_cancel]

end A151754

/-! ## A151754.P5918197076003884760

`and(1, ∑[n])+2*a(n-1)` with `a(0)=1`
-/

namespace A151754.P5918197076003884760
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.land 1 (∑ j ∈ Finset.range (n + 1), f1 j) + 2 * a (n - 1)

end

end A151754.P5918197076003884760

namespace A151754

/-- `and(1, ∑[n])+2*a(n-1)` -/
def P5918197076003884760.Spec : Prop :=
  ∀ n, (P5918197076003884760.a n : ℤ) = A151754 (n + 1)

end A151754

/-! ## A151754.P11433353815424525541

`or(2*a(n-1), and(1, ∑[n]))` with `a(0)=1`
-/

namespace A151754.P11433353815424525541
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.lor (2 * a (n - 1)) (Nat.land 1 (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A151754.P11433353815424525541

namespace A151754

/-- `or(2*a(n-1), and(1, ∑[n]))` -/
def P11433353815424525541.Spec : Prop :=
  ∀ n, (P11433353815424525541.a n : ℤ) = A151754 (n + 1)

end A151754

/-! ## A151754.P13280713470232445783

`xor(2*a(n-1), and(1, ∑[n]))` with `a(0)=1`
-/

namespace A151754.P13280713470232445783
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.xor (2 * a (n - 1)) (Nat.land 1 (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A151754.P13280713470232445783

namespace A151754

/-- `xor(2*a(n-1), and(1, ∑[n]))` -/
def P13280713470232445783.Spec : Prop :=
  ∀ n, (P13280713470232445783.a n : ℤ) = A151754 (n + 1)

end A151754

/-! ## A151754.P8515904439436846250

`(a(n-1)+n)%2+2*a(n-1)` with `a(0)=1, a(1)=3`
-/

namespace A151754.P8515904439436846250
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3] fun n a =>
  (a (n - 1) + n) % 2 + 2 * a (n - 1)

end

end A151754.P8515904439436846250

namespace A151754

/-- `(a(n-1)+n)%2+2*a(n-1)` -/
def P8515904439436846250.Spec : Prop :=
  ∀ n, (P8515904439436846250.a n : ℤ) = A151754 (n + 1)

end A151754

/-! ## A151754.P11035134249781537486

`2*a(n-1)-(n-a(n-1))%2` with `a(0)=1, a(1)=3`
-/

namespace A151754.P11035134249781537486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  2 * a (n - 1) - Int.tmod ((n : ℤ) - a (n - 1)) 2

end

end A151754.P11035134249781537486

namespace A151754

/-- `2*a(n-1)-(n-a(n-1))%2` -/
def P11035134249781537486.Spec : Prop :=
  ∀ n, P11035134249781537486.a n = A151754 (n + 1)

end A151754

/-! ## A151754.P5287746386002913120

`a(n-1)+a(n-1)+(a(n-1)-n)%2` with `a(0)=1, a(1)=3`
-/

namespace A151754.P5287746386002913120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  a (n - 1) + (a (n - 1) + Int.tmod (a (n - 1) - (n : ℤ)) 2)

end

end A151754.P5287746386002913120

namespace A151754

/-- `a(n-1)+a(n-1)+(a(n-1)-n)%2` -/
def P5287746386002913120.Spec : Prop :=
  ∀ n, P5287746386002913120.a n = A151754 (n + 1)

end A151754

/-! ## A151754.P13044083711402318835

`a(n-1)-((n%a(n-1)-a(n-1))%2-a(n-1))` with `a(0)=1`
-/

namespace A151754.P13044083711402318835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) - (Int.tmod (Int.tmod (n : ℤ) (a (n - 1)) - a (n - 1)) 2 - a (n - 1))

end

end A151754.P13044083711402318835

namespace A151754

/-- `a(n-1)-((n%a(n-1)-a(n-1))%2-a(n-1))` -/
def P13044083711402318835.Spec : Prop :=
  ∀ n, P13044083711402318835.a n = A151754 (n + 1)

end A151754

/-! ## A151754.P121917254719343614

`xor(A000225(n), A262864(n))`
-/

namespace A151754.P121917254719343614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000225 n) (A262864 n)

end

end A151754.P121917254719343614

namespace A151754

/-- `xor(A000225(n), A262864(n))` -/
def P121917254719343614.Spec : Prop :=
  ∀ n, P121917254719343614.a n = A151754 (n + 1)

end A151754

/-! ## A151754.P5805899297618601865

`A007910(n)+A077854(n)-A100088(n)`
-/

namespace A151754.P5805899297618601865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007910 n + (A077854 n - A100088 n)

end

end A151754.P5805899297618601865

namespace A151754

/-- `A007910(n)+A077854(n)-A100088(n)` -/
def P5805899297618601865.Spec : Prop :=
  ∀ n, P5805899297618601865.a n = A151754 (n + 1)

end A151754

/-! ## A151754.P13585058951751586195

`A007679(n+1)+A077854(n)-A007909(n+1)`
-/

namespace A151754.P13585058951751586195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007679 (n + 1) + (A077854 n - A007909 (n + 1))

end

end A151754.P13585058951751586195

namespace A151754

/-- `A007679(n+1)+A077854(n)-A007909(n+1)` -/
def P13585058951751586195.Spec : Prop :=
  ∀ n, P13585058951751586195.a n = A151754 (n + 1)

end A151754

/-! ## A151754.P14042529566982770601

`A153893(n)-A262864(n)`
-/

namespace A151754.P14042529566982770601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153893 n - A262864 n

end

end A151754.P14042529566982770601

namespace A151754

/-- `A153893(n)-A262864(n)` -/
def P14042529566982770601.Spec : Prop :=
  ∀ n, P14042529566982770601.a n = A151754 (n + 1)

end A151754

/-! ## A151754.P8189812367640458286

`A081253(n+1)-A115451(n)`
-/

namespace A151754.P8189812367640458286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081253 (n + 1) - A115451 n

end

end A151754.P8189812367640458286

namespace A151754

/-- `A081253(n+1)-A115451(n)` -/
def P8189812367640458286.Spec : Prop :=
  ∀ n, P8189812367640458286.a n = A151754 (n + 1)

end A151754

/-! ## A151754.P664694892598575275

`A077854(n+1)-(A100088(n)+A007909(n+1))`
-/

namespace A151754.P664694892598575275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077854 (n + 1) - (A100088 n + A007909 (n + 1))

end

end A151754.P664694892598575275

namespace A151754

/-- `A077854(n+1)-(A100088(n)+A007909(n+1))` -/
def P664694892598575275.Spec : Prop :=
  ∀ n, P664694892598575275.a n = A151754 (n + 1)

end A151754

/-! ## A151754.P12378054053238220598

`A102653(n)/4`
-/

namespace A151754.P12378054053238220598
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A102653 n : ℚ) / 4

end

end A151754.P12378054053238220598

namespace A151754

/-- `A102653(n)/4` -/
def P12378054053238220598.Spec : Prop :=
  ∀ n, P12378054053238220598.a n = (A151754 (n + 1) : ℚ)

end A151754

/-!
# A151755: a(n) = 0 for n <= 4; for n >= 5, write n = 2^i + j, 0 <= j < 2^i; if j <= 2^i-2 then a(n) = 2*a(j) + a(j+1); if j = 2^i-1 then a(n) = 2*a(j) + a(j+1) + 1.

The programs for A151755, there is no canonical definition to state claims against.
-/

/-! ## A151755.P11305059135499492197

`A151795(n+63)`
-/

namespace A151755.P11305059135499492197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151795 (n + 63)

end

end A151755.P11305059135499492197

/-! ## A151755.P17552888184730684203

`A282673(A000265(3*n+1)+13)`
-/

namespace A151755.P17552888184730684203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282673 (A000265 (3 * n + 1) + 13).toNat

end

end A151755.P17552888184730684203

/-!
# A151756: The rows of (A151755 written as a triangle) converge to this sequence.

The programs for A151756, there is no canonical definition to state claims against.
-/

/-! ## A151756.P9936172804061429684

`Δ[A151755(n)]+3*A151755(n)`
-/

namespace A151756.P9936172804061429684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151755 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 3 * A151755 n

end

end A151756.P9936172804061429684

/-! ## A151756.P7516665024830066458

`A151755(n+1)+2*A151755(n)`
-/

namespace A151756.P7516665024830066458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151755 (n + 1) + 2 * A151755 n

end

end A151756.P7516665024830066458

/-! ## A151756.P6908026448953317702

`A008585(A151755(n))+Δ[A151755(n)]`
-/

namespace A151756.P6908026448953317702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151755 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 (A151755 n).toNat + (f1 (n + 1) - f1 n)

end

end A151756.P6908026448953317702

/-! ## A151756.P16398481330293329995

`A151755(n+1)+A005843(A151755(n))`
-/

namespace A151756.P16398481330293329995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151755 (n + 1) + A005843 (A151755 n).toNat

end

end A151756.P16398481330293329995

/-! ## A151756.P16190273647257354208

`Δ[A151795(n+63)]+3*A151795(n+63)`
-/

namespace A151756.P16190273647257354208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151795 (n + 63)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 3 * A151795 (n + 63)

end

end A151756.P16190273647257354208

/-!
# A151757: Positive integers n, excluding 1 and 2^i+1 for all i, having wt <= 3.

The programs for A151757, the canonical program `A151757.P16989372218347473348` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A151757 has offset 1).

The definition of A151757 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A151757.P16989372218347473348

`(A014311(n+1)+A000079(A056558(n)))/2`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A151757

/-- `(A014311(n+1)+A000079(A056558(n)))/2` -/
def P16989372218347473348.Spec : Prop :=
  ∀ n, P16989372218347473348.a n = (A151757 (n + 1) : ℚ)

end A151757

/-! ## A151757.P8139639330957404935

`lt[A166333(A166333(n)), A089050(2*n+1)]`
-/

namespace A151757.P8139639330957404935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166333 (A166333 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089050 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A151757.P8139639330957404935

namespace A151757

/-- `lt[A166333(A166333(n)), A089050(2*n+1)]` -/
def P8139639330957404935.Spec : Prop :=
  ∀ n, (P8139639330957404935.a n : ℤ) = A151757 (n + 1)

end A151757

/-! ## A151757.P13670955898015146246

`lt[log(A151779(n+1)), A151759(n)]`
-/

namespace A151757.P13670955898015146246
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.log (A151779 (n + 1) : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151759 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A151757.P13670955898015146246

namespace A151757

/-- `lt[log(A151779(n+1)), A151759(n)]` -/
def P13670955898015146246.Spec : Prop :=
  ∀ n, (P13670955898015146246.a n : ℤ) = A151757 (n + 1)

end A151757

/-! ## A151757.P5628039797935929330

`eq[A000120(A000120(n)+1), A089048(n)]`
-/

namespace A151757.P5628039797935929330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A000120 n + 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089048 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A151757.P5628039797935929330

namespace A151757

/-- `eq[A000120(A000120(n)+1), A089048(n)]` -/
def P5628039797935929330.Spec : Prop :=
  ∀ n, (P5628039797935929330.a n : ℤ) = A151757 (n + 1)

end A151757

/-! ## A151757.P5471315599735534953

`A046699(eq[3, A000217(n)%A046699(n+1)]+1)`
-/

namespace A151757.P5471315599735534953
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000217 n) (A046699 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046699 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A151757.P5471315599735534953

namespace A151757

/-- `A046699(eq[3, A000217(n)%A046699(n+1)]+1)` -/
def P5471315599735534953.Spec : Prop :=
  ∀ n, P5471315599735534953.a n = A151757 (n + 1)

end A151757

/-! ## A151757.P14116379806206705484

`A109168(A014311(n+1))`
-/

namespace A151757.P14116379806206705484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109168 (A014311 (n + 1)).toNat

end

end A151757.P14116379806206705484

namespace A151757

/-- `A109168(A014311(n+1))` -/
def P14116379806206705484.Spec : Prop :=
  ∀ n, P14116379806206705484.a n = A151757 (n + 1)

end A151757

/-! ## A151757.P3069250222286737063

`A046699(eq[3, A007843(n)-n]+1)`
-/

namespace A151757.P3069250222286737063
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007843 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046699 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A151757.P3069250222286737063

namespace A151757

/-- `A046699(eq[3, A007843(n)-n]+1)` -/
def P3069250222286737063.Spec : Prop :=
  ∀ n, P3069250222286737063.a n = A151757 (n + 1)

end A151757

/-! ## A151757.P7103003542268389198

`A046699(eq[1, A046699(n+1)-A026741(n+1)]+1)`
-/

namespace A151757.P7103003542268389198
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046699 (n + 1) - A026741 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046699 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A151757.P7103003542268389198

namespace A151757

/-- `A046699(eq[1, A046699(n+1)-A026741(n+1)]+1)` -/
def P7103003542268389198.Spec : Prop :=
  ∀ n, P7103003542268389198.a n = A151757 (n + 1)

end A151757

/-! ## A151757.P7439104100902982988

`A046699(eq[1, A046699(n+1)%A026741(n+1)]+1)`
-/

namespace A151757.P7439104100902982988
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A046699 (n + 1)) (A026741 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046699 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A151757.P7439104100902982988

namespace A151757

/-- `A046699(eq[1, A046699(n+1)%A026741(n+1)]+1)` -/
def P7439104100902982988.Spec : Prop :=
  ∀ n, P7439104100902982988.a n = A151757 (n + 1)

end A151757

/-!
# A151758: G.f.: Theta^2-Theta, where Theta = Sum_{k>=0} x^(2^k).

The programs for A151758, the canonical program `A151758.P108105294660586572` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A151758 has offset 0).

The definition of A151758 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A151758.P11391346146915157771

`2*A151774(n)-char[1]`
-/

namespace A151758.P11391346146915157771
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A151774 n - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A151758.P11391346146915157771

namespace A151758

/-- `2*A151774(n)-char[1]` -/
def P11391346146915157771.Spec : Prop :=
  ∀ n, P11391346146915157771.a n = A151758 n

end A151758

/-! ## A151758.P12270586767389375917

`A073267(n)-char[2^n]`
-/

namespace A151758.P12270586767389375917
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073267 n - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A151758.P12270586767389375917

namespace A151758

/-- `A073267(n)-char[2^n]` -/
def P12270586767389375917.Spec : Prop :=
  ∀ n, P12270586767389375917.a n = A151758 n

end A151758

/-! ## A151758.P15104699073379775345

`and(4, A001316(n))/2-char[1]`
-/

namespace A151758.P15104699073379775345
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land 4 (A001316 n) : ℚ) / 2 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℚ)

end

end A151758.P15104699073379775345

namespace A151758

/-- `and(4, A001316(n))/2-char[1]` -/
def P15104699073379775345.Spec : Prop :=
  ∀ n, P15104699073379775345.a n = (A151758 n : ℚ)

end A151758

/-! ## A151758.P16756927385329992380

`A151760(2*n)%4-char[2^n]`
-/

namespace A151758.P16756927385329992380
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A151760 (2 * n)) 4 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A151758.P16756927385329992380

namespace A151758

/-- `A151760(2*n)%4-char[2^n]` -/
def P16756927385329992380.Spec : Prop :=
  ∀ n, P16756927385329992380.a n = A151758 n

end A151758

/-! ## A151758.P943741400140243337

`A151762(3*n)%3-char[2^n]`
-/

namespace A151758.P943741400140243337
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A151762 (3 * n)) 3 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A151758.P943741400140243337

namespace A151758

/-- `A151762(3*n)%3-char[2^n]` -/
def P943741400140243337.Spec : Prop :=
  ∀ n, P943741400140243337.a n = A151758 n

end A151758

/-! ## A151758.P17350324890146279919

`A151761(2*n+1)%4-char[2^n]`
-/

namespace A151758.P17350324890146279919
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A151761 (2 * n + 1)) 4 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A151758.P17350324890146279919

namespace A151758

/-- `A151761(2*n+1)%4-char[2^n]` -/
def P17350324890146279919.Spec : Prop :=
  ∀ n, P17350324890146279919.a n = A151758 n

end A151758

/-! ## A151758.P17095053392299371986

`floor(A151759(2*n+1)/3)-char[2^n]`
-/

namespace A151758.P17095053392299371986
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A151759 (2 * n + 1) : ℚ) / 3⌋ - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A151758.P17095053392299371986

namespace A151758

/-- `floor(A151759(2*n+1)/3)-char[2^n]` -/
def P17095053392299371986.Spec : Prop :=
  ∀ n, P17095053392299371986.a n = A151758 n

end A151758

/-! ## A151758.P108105294660586572

`dr(A073267(n))-A209229(n)`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A151758

/-- `dr(A073267(n))-A209229(n)` -/
def P108105294660586572.Spec : Prop :=
  ∀ n, P108105294660586572.a n = A151758 n

theorem P108105294660586572.correct : P108105294660586572.Spec := by
  intro n
  simp only [A151758]

end A151758

/-! ## A151758.P10315352316481663190

`dr(A073267(n))-char[A000079(n)]`
-/

namespace A151758.P10315352316481663190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.digitalRoot (A073267 n) : ℤ) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A151758.P10315352316481663190

namespace A151758

/-- `dr(A073267(n))-char[A000079(n)]` -/
def P10315352316481663190.Spec : Prop :=
  ∀ n, P10315352316481663190.a n = A151758 n

end A151758

/-! ## A151758.P359217641197355581

`dr(A073267(n))-char[A062383(n)]`
-/

namespace A151758.P359217641197355581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062383 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.digitalRoot (A073267 n) : ℤ) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A151758.P359217641197355581

namespace A151758

/-- `dr(A073267(n))-char[A062383(n)]` -/
def P359217641197355581.Spec : Prop :=
  ∀ n, P359217641197355581.a n = A151758 n

end A151758

/-! ## A151758.P7673476132747733052

`dr(A073267(n))-char[A130321(n)]`
-/

namespace A151758.P7673476132747733052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130321 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.digitalRoot (A073267 n) : ℤ) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A151758.P7673476132747733052

namespace A151758

/-- `dr(A073267(n))-char[A130321(n)]` -/
def P7673476132747733052.Spec : Prop :=
  ∀ n, P7673476132747733052.a n = A151758 n

end A151758

/-! ## A151758.P15648266863120104208

`A005926(A001316(n)-1)-char[1]`
-/

namespace A151758.P15648266863120104208
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005926 (A001316 n - 1).toNat - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A151758.P15648266863120104208

namespace A151758

/-- `A005926(A001316(n)-1)-char[1]` -/
def P15648266863120104208.Spec : Prop :=
  ∀ n, P15648266863120104208.a n = A151758 n

end A151758

/-! ## A151758.P2842908231116668294

`A073267(n)²-A073267(2*n)`
-/

namespace A151758.P2842908231116668294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073267 n ^ 2 - A073267 (2 * n)

end

end A151758.P2842908231116668294

namespace A151758

/-- `A073267(n)²-A073267(2*n)` -/
def P2842908231116668294.Spec : Prop :=
  ∀ n, P2842908231116668294.a n = A151758 n

end A151758

/-! ## A151758.P630844861155959032

`A111113(2*n+1)+A073267(n)`
-/

namespace A151758.P630844861155959032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111113 (2 * n + 1) + A073267 n

end

end A151758.P630844861155959032

namespace A151758

/-- `A111113(2*n+1)+A073267(n)` -/
def P630844861155959032.Spec : Prop :=
  ∀ n, P630844861155959032.a n = A151758 n

end A151758

/-! ## A151758.P5693868994694202387

`A028617(A000120(n))-A000010(n+1)%2`
-/

namespace A151758.P5693868994694202387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028617 (A000120 n).toNat - Int.tmod (A000010 (n + 1)) 2

end

end A151758.P5693868994694202387

namespace A151758

/-- `A028617(A000120(n))-A000010(n+1)%2` -/
def P5693868994694202387.Spec : Prop :=
  ∀ n, P5693868994694202387.a n = A151758 n

end A151758

/-!
# A151759: G.f.: Theta^3, where Theta = Sum_{k>=0} x^(2^k).

The programs for A151759, there is no canonical definition to state claims against.
-/

/-! ## A151759.P7017765952106700994

`A073266(∑[A163985(n)-n]+4)`
-/

namespace A151759.P7017765952106700994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163985 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073266 (∑ j ∈ Finset.range (n + 1), f1 j + 4).toNat

end

end A151759.P7017765952106700994

/-! ## A151759.P4714053081127781071

`A073265(∑[n+1]+3)`
-/

namespace A151759.P4714053081127781071
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073265 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A151759.P4714053081127781071

/-!
# A151760: G.f.: Theta^4, where Theta = Sum_{k>=0} x^(2^k).

The programs for A151760, there is no canonical definition to state claims against.
-/

/-! ## A151760.P10617448047180255411

`A073265(A253145(n)+6+n)`
-/

namespace A151760.P10617448047180255411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073265 (A253145 n + 6 + (n : ℤ)).toNat

end

end A151760.P10617448047180255411

/-! ## A151760.P4777395284740378001

`A073265(A167614(n+1)+A057427(n))`
-/

namespace A151760.P4777395284740378001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073265 (A167614 (n + 1) + A057427 n).toNat

end

end A151760.P4777395284740378001

/-! ## A151760.P3768288200878518495

`A073265(A167614(n+1)-A057428(n))`
-/

namespace A151760.P3768288200878518495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073265 (A167614 (n + 1) - A057428 n).toNat

end

end A151760.P3768288200878518495

/-! ## A151760.P12686416591490410170

`A073265(A167614(n+1)+abs(A057428(n)))`
-/

namespace A151760.P12686416591490410170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073265 (A167614 (n + 1) + |A057428 n|).toNat

end

end A151760.P12686416591490410170

/-! ## A151760.P3229727154126961374

`A073265(A167614(n+1)+A057428(n)²)`
-/

namespace A151760.P3229727154126961374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073265 (A167614 (n + 1) + A057428 n ^ 2).toNat

end

end A151760.P3229727154126961374

/-! ## A151760.P17168778011468239962

`A073265(A167614(n+1)+char[A032742(n+1)])`
-/

namespace A151760.P17168778011468239962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073265 (A167614 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)).toNat

end

end A151760.P17168778011468239962

/-! ## A151760.P4168659518415960345

`A073265(A167614(n+1)+char[A038722(n+1)])`
-/

namespace A151760.P4168659518415960345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038722 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073265 (A167614 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)).toNat

end

end A151760.P4168659518415960345

/-! ## A151760.P2049025906543074813

`A073265(A167614(n+1)+char[A319717(n+1)])`
-/

namespace A151760.P2049025906543074813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319717 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073265 (A167614 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)).toNat

end

end A151760.P2049025906543074813

/-! ## A151760.P12644951024512393144

`A347785(n)-A347784(n)`
-/

namespace A151760.P12644951024512393144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347785 n - A347784 n

end

end A151760.P12644951024512393144

/-! ## A151760.P2109620429225885614

`A347786(n)-(A347784(n)+A151761(n))`
-/

namespace A151760.P2109620429225885614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347786 n - (A347784 n + A151761 n)

end

end A151760.P2109620429225885614

/-!
# A151761: G.f.: Theta^5, where Theta = Sum_{k>=0} x^(2^k).

The programs for A151761, there is no canonical definition to state claims against.
-/

/-! ## A151761.P3508737793296682602

`A073265(A167499(n+2))`
-/

namespace A151761.P3508737793296682602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073265 (A167499 (n + 2)).toNat

end

end A151761.P3508737793296682602

/-! ## A151761.P2918222049540645810

`A073265(Δ[A008778(n)]+7)`
-/

namespace A151761.P2918222049540645810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073265 (f1 (n + 1) - f1 n + 7).toNat

end

end A151761.P2918222049540645810

/-! ## A151761.P16564286926389160841

`A073265(A167614(n+2)+2)`
-/

namespace A151761.P16564286926389160841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073265 (A167614 (n + 2) + 2).toNat

end

end A151761.P16564286926389160841

/-! ## A151761.P7422731867854810651

`A073265(A000124(n+3)+4)`
-/

namespace A151761.P7422731867854810651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073265 (A000124 (n + 3) + 4).toNat

end

end A151761.P7422731867854810651

/-! ## A151761.P5100113694249338697

`A073265(∑[n+1]+A005843(n+5))`
-/

namespace A151761.P5100113694249338697
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073265 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + A005843 (n + 5)).toNat

end

end A151761.P5100113694249338697

/-! ## A151761.P10236408799310556356

`A347786(n)-A347785(n)`
-/

namespace A151761.P10236408799310556356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347786 n - A347785 n

end

end A151761.P10236408799310556356

/-! ## A151761.P10930492978985235336

`A347786(n)-(A347784(n)+A151760(n))`
-/

namespace A151761.P10930492978985235336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347786 n - (A347784 n + A151760 n)

end

end A151761.P10930492978985235336

/-! ## A151761.P5961598091504692936

`A347787(n)-(A347785(n)+A151762(n))`
-/

namespace A151761.P5961598091504692936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347787 n - (A347785 n + A151762 n)

end

end A151761.P5961598091504692936

/-!
# A151762: G.f.: Theta^6, where Theta = Sum_{k>=0} x^(2^k).

The programs for A151762, there is no canonical definition to state claims against.
-/

/-! ## A151762.P2406581346850879714

`A073265(A155212(n)+14)`
-/

namespace A151762.P2406581346850879714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073265 (A155212 n + 14).toNat

end

end A151762.P2406581346850879714

/-! ## A151762.P964634906502784657

`A073265(A000124(n+4)+5)`
-/

namespace A151762.P964634906502784657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073265 (A000124 (n + 4) + 5).toNat

end

end A151762.P964634906502784657

/-! ## A151762.P17229499473542560060

`A073265(A008574(n+4)+A000217(n))`
-/

namespace A151762.P17229499473542560060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073265 (A008574 (n + 4) + A000217 n).toNat

end

end A151762.P17229499473542560060

/-! ## A151762.P5645021123243261885

`A073265(A008486(n+5)+A000217(n+1))`
-/

namespace A151762.P5645021123243261885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073265 (A008486 (n + 5) + A000217 (n + 1)).toNat

end

end A151762.P5645021123243261885

/-! ## A151762.P14110373326093872982

`A073265(A027379(n+5)-A008486(n+3))`
-/

namespace A151762.P14110373326093872982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073265 (A027379 (n + 5) - A008486 (n + 3)).toNat

end

end A151762.P14110373326093872982

/-! ## A151762.P12345938598020230954

`A347787(n)-A347786(n)`
-/

namespace A151762.P12345938598020230954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347787 n - A347786 n

end

end A151762.P12345938598020230954

/-! ## A151762.P11679345444335966489

`A347787(n)-(A347785(n)+A151761(n))`
-/

namespace A151762.P11679345444335966489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347787 n - (A347785 n + A151761 n)

end

end A151762.P11679345444335966489

/-!
# A151763: If n is a prime == 1 mod 4 then a(n) = 1, if n is a prime == 3 mod 4 then a(n) = -1, otherwise a(n) = 0.

The programs for A151763, the canonical program `A151763.P3762323269702521577` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A151763 has offset 1).

The definition of A151763 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A151763.P148336720004404358

`(1-and(3, n))*A010051(n+1)`
-/

namespace A151763.P148336720004404358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (Nat.land 3 n : ℤ)) * A010051 (n + 1)

end

end A151763.P148336720004404358

namespace A151763

/-- `(1-and(3, n))*A010051(n+1)` -/
def P148336720004404358.Spec : Prop :=
  ∀ n, P148336720004404358.a n = A151763 (n + 1)

end A151763

/-! ## A151763.P17625708804472535901

`∑[(-1)^∑[n]]*A061007(n+1)`
-/

namespace A151763.P17625708804472535901
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A061007 (n + 1)

end

end A151763.P17625708804472535901

namespace A151763

/-- `∑[(-1)^∑[n]]*A061007(n+1)` -/
def P17625708804472535901.Spec : Prop :=
  ∀ n, P17625708804472535901.a n = A151763 (n + 1)

end A151763

/-! ## A151763.P11962290782078110422

`Δ[xor(n, floor(n/2))]%A049076(n+1)`
-/

namespace A151763.P11962290782078110422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) ⌊(n : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A049076 (n + 1))

end

end A151763.P11962290782078110422

namespace A151763

/-- `Δ[xor(n, floor(n/2))]%A049076(n+1)` -/
def P11962290782078110422.Spec : Prop :=
  ∀ n, P11962290782078110422.a n = A151763 (n + 1)

end A151763

/-! ## A151763.P3762323269702521577

`A005094(A118136(n))`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A151763

/-- `A005094(A118136(n))` -/
def P3762323269702521577.Spec : Prop :=
  ∀ n, P3762323269702521577.a n = A151763 (n + 1)

theorem P3762323269702521577.correct : P3762323269702521577.Spec := by
  intro n
  simp only [A151763, Nat.add_sub_cancel]

end A151763

/-! ## A151763.P1489055818427361318

`A005094(A014973(n+1))`
-/

namespace A151763.P1489055818427361318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005094 (A014973 (n + 1)).toNat

end

end A151763.P1489055818427361318

namespace A151763

/-- `A005094(A014973(n+1))` -/
def P1489055818427361318.Spec : Prop :=
  ∀ n, P1489055818427361318.a n = A151763 (n + 1)

end A151763

/-! ## A151763.P147869867032408847

`A005094(A089026(n+1))`
-/

namespace A151763.P147869867032408847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005094 (A089026 (n + 1)).toNat

end

end A151763.P147869867032408847

namespace A151763

/-- `A005094(A089026(n+1))` -/
def P147869867032408847.Spec : Prop :=
  ∀ n, P147869867032408847.a n = A151763 (n + 1)

end A151763

/-! ## A151763.P12878771804550805756

`A005094(A135681(n+1))`
-/

namespace A151763.P12878771804550805756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005094 (A135681 (n + 1)).toNat

end

end A151763.P12878771804550805756

namespace A151763

/-- `A005094(A135681(n+1))` -/
def P12878771804550805756.Spec : Prop :=
  ∀ n, P12878771804550805756.a n = A151763 (n + 1)

end A151763

/-! ## A151763.P15290005244155104724

`A101455(A061397(n+1))`
-/

namespace A151763.P15290005244155104724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101455 (A061397 (n + 1)).toNat

end

end A151763.P15290005244155104724

namespace A151763

/-- `A101455(A061397(n+1))` -/
def P15290005244155104724.Spec : Prop :=
  ∀ n, P15290005244155104724.a n = A151763 (n + 1)

end A151763

/-! ## A151763.P10925789172193555123

`A101455(A092509(n+1))`
-/

namespace A151763.P10925789172193555123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101455 (A092509 (n + 1)).toNat

end

end A151763.P10925789172193555123

namespace A151763

/-- `A101455(A092509(n+1))` -/
def P10925789172193555123.Spec : Prop :=
  ∀ n, P10925789172193555123.a n = A151763 (n + 1)

end A151763

/-! ## A151763.P1858124110181588622

`A010051(n+1)*A056594(n)`
-/

namespace A151763.P1858124110181588622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 1) * A056594 n

end

end A151763.P1858124110181588622

namespace A151763

/-- `A010051(n+1)*A056594(n)` -/
def P1858124110181588622.Spec : Prop :=
  ∀ n, P1858124110181588622.a n = A151763 (n + 1)

end A151763

/-! ## A151763.P4762412630452000238

`A010051(n+1)*A131379(n)`
-/

namespace A151763.P4762412630452000238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 1) * A131379 n

end

end A151763.P4762412630452000238

namespace A151763

/-- `A010051(n+1)*A131379(n)` -/
def P4762412630452000238.Spec : Prop :=
  ∀ n, P4762412630452000238.a n = A151763 (n + 1)

end A151763

/-! ## A151763.P3408948189823011720

`A056594(n)*A105661(n+1)`
-/

namespace A151763.P3408948189823011720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 n * A105661 (n + 1)

end

end A151763.P3408948189823011720

namespace A151763

/-- `A056594(n)*A105661(n+1)` -/
def P3408948189823011720.Spec : Prop :=
  ∀ n, P3408948189823011720.a n = A151763 (n + 1)

end A151763

/-! ## A151763.P17833386600924007741

`A043545(n)*A267133(n+1)`
-/

namespace A151763.P17833386600924007741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043545 n * A267133 (n + 1)

end

end A151763.P17833386600924007741

namespace A151763

/-- `A043545(n)*A267133(n+1)` -/
def P17833386600924007741.Spec : Prop :=
  ∀ n, P17833386600924007741.a n = A151763 (n + 1)

end A151763

/-! ## A151763.P9409452297755038544

`A056594(n)*A304438(n+1)`
-/

namespace A151763.P9409452297755038544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 n * A304438 (n + 1)

end

end A151763.P9409452297755038544

namespace A151763

/-- `A056594(n)*A304438(n+1)` -/
def P9409452297755038544.Spec : Prop :=
  ∀ n, P9409452297755038544.a n = A151763 (n + 1)

end A151763

/-! ## A151763.P7012068549917439489

`A056594(n)*A323153(n+1)`
-/

namespace A151763.P7012068549917439489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 n * A323153 (n + 1)

end

end A151763.P7012068549917439489

namespace A151763

/-- `A056594(n)*A323153(n+1)` -/
def P7012068549917439489.Spec : Prop :=
  ∀ n, P7012068549917439489.a n = A151763 (n + 1)

end A151763

/-! ## A151763.P17527100189750495808

`A056594(n)%A049076(n+1)`
-/

namespace A151763.P17527100189750495808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A056594 n) (A049076 (n + 1))

end

end A151763.P17527100189750495808

namespace A151763

/-- `A056594(n)%A049076(n+1)` -/
def P17527100189750495808.Spec : Prop :=
  ∀ n, P17527100189750495808.a n = A151763 (n + 1)

end A151763

/-! ## A151763.P2604157152107271657

`A158496(n)%A014973(n+1)`
-/

namespace A151763.P2604157152107271657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A158496 n) (A014973 (n + 1))

end

end A151763.P2604157152107271657

namespace A151763

/-- `A158496(n)%A014973(n+1)` -/
def P2604157152107271657.Spec : Prop :=
  ∀ n, P2604157152107271657.a n = A151763 (n + 1)

end A151763

/-! ## A151763.P16922885895803601879

`A131379(n)%A049076(n+1)`
-/

namespace A151763.P16922885895803601879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A131379 n) (A049076 (n + 1))

end

end A151763.P16922885895803601879

namespace A151763

/-- `A131379(n)%A049076(n+1)` -/
def P16922885895803601879.Spec : Prop :=
  ∀ n, P16922885895803601879.a n = A151763 (n + 1)

end A151763

/-! ## A151763.P4715507215640085370

`A267133(n+1)%A008904(n)`
-/

namespace A151763.P4715507215640085370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A267133 (n + 1)) (A008904 n)

end

end A151763.P4715507215640085370

namespace A151763

/-- `A267133(n+1)%A008904(n)` -/
def P4715507215640085370.Spec : Prop :=
  ∀ n, P4715507215640085370.a n = A151763 (n + 1)

end A151763

/-! ## A151763.P12627113030148909252

`A286299(n)%A049076(n+1)`
-/

namespace A151763.P12627113030148909252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A286299 n) (A049076 (n + 1))

end

end A151763.P12627113030148909252

namespace A151763

/-- `A286299(n)%A049076(n+1)` -/
def P12627113030148909252.Spec : Prop :=
  ∀ n, P12627113030148909252.a n = A151763 (n + 1)

end A151763

/-!
# A151764: a(n) = f(f(n)), where f(n) = A071786(n).

The programs for A151764, there is no canonical definition to state claims against.
-/

/-! ## A151764.P58708880924522361

`A071786(A071786(n+1))`
-/

namespace A151764.P58708880924522361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071786 (A071786 (n + 1)).toNat

end

end A151764.P58708880924522361

/-! ## A151764.P6518858130646487533

`∏{d}[n+1, A151765(A014963(#))]`
-/

namespace A151764.P6518858130646487533
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), A151765 (A014963 d).toNat

end

end A151764.P6518858130646487533

/-! ## A151764.P851171056857935395

`∏{e}[A181821(n+1), A151765(A000040(#))]`
-/

namespace A151764.P851171056857935395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181821 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A151765 (A000040 (Nat.factorization (f1 n).natAbs p)).toNat

end

end A151764.P851171056857935395

/-! ## A151764.P7441420645479744203

`A147351(A293669(n))+n`
-/

namespace A151764.P7441420645479744203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147351 (A293669 n).toNat + (n : ℤ)

end

end A151764.P7441420645479744203

/-! ## A151764.P445494623121032412

`A195644(A195644(n+1)+1)+n`
-/

namespace A151764.P445494623121032412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195644 (A195644 (n + 1) + 1).toNat + (n : ℤ)

end

end A151764.P445494623121032412

/-!
# A151765: a(n) = f(R(n)), where f(n) = A071786(n), R(n) = A004086(n).

The programs for A151765, there is no canonical definition to state claims against.
-/

/-! ## A151765.P14096986232517490682

`A071786(A004086(n+1))`
-/

namespace A151765.P14096986232517490682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071786 (A004086 (n + 1)).toNat

end

end A151765.P14096986232517490682

/-! ## A151765.P16163492065239321390

`A071786(n+1-A056965(n+1))`
-/

namespace A151765.P16163492065239321390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071786 ((n + 1 : ℤ) - A056965 (n + 1)).toNat

end

end A151765.P16163492065239321390

/-! ## A151765.P1439969851368154266

`A071786(A056964(n+1)-(n+1))`
-/

namespace A151765.P1439969851368154266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071786 (A056964 (n + 1) - (n + 1 : ℤ)).toNat

end

end A151765.P1439969851368154266

/-! ## A151765.P8147403889902841115

`A071786(A061205(n+1)/(n+1))`
-/

namespace A151765.P8147403889902841115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071786 (SequenceMachineLib.roundAway ((A061205 (n + 1) : ℚ) / (n + 1 : ℚ))).toNat

end

end A151765.P8147403889902841115

/-! ## A151765.P16827397443577967421

`∏{d}[A004086(n+1), A004086(A014963(#))]`
-/

namespace A151765.P16827397443577967421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A004086 (A014963 d).toNat

end

end A151765.P16827397443577967421

/-! ## A151765.P8695230553459070697

`A071786(A135020(2*(n+1)))`
-/

namespace A151765.P8695230553459070697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071786 (A135020 (2 * (n + 1))).toNat

end

end A151765.P8695230553459070697

/-!
# A151766: Records in A071786.

The programs for A151766, there is no canonical definition to state claims against.
-/

/-! ## A151766.P13938044747740525193

`record[A071786(n+1)]`
-/

namespace A151766.P13938044747740525193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071786 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A151766.P13938044747740525193

/-! ## A151766.P5635440126214192871

`A071786(A151767(n+1))`
-/

namespace A151766.P5635440126214192871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071786 (A151767 (n + 1)).toNat

end

end A151766.P5635440126214192871

/-! ## A151766.P12426042017398296235

`record[A071786(Δ[n²]-n)]%A008776(n)`
-/

namespace A151766.P12426042017398296235
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071786 ((f2 (n + 1) : ℤ) - (f2 n : ℤ) - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A008776 n)

end

end A151766.P12426042017398296235

/-! ## A151766.P10292067089111675361

`record[A071786(A328396(n))%A262392(n)]`
-/

namespace A151766.P10292067089111675361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A071786 (A328396 n).toNat) (A262392 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A151766.P10292067089111675361

/-! ## A151766.P11111725824511335698

`record[ratio[A071786(A152271(n))]]`
-/

namespace A151766.P11111725824511335698
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071786 (A152271 n).toNat

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A151766.P11111725824511335698

/-!
# A151767: Where records occur in A071786.

The programs for A151767, there is no canonical definition to state claims against.
-/

/-! ## A151767.P10299456070946333051

`eq[A067158(A061862(n+1)), A067169(n)]`
-/

namespace A151767.P10299456070946333051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067158 ((A061862 (n + 1)).toNat + 11)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067169 (n + 11)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A151767.P10299456070946333051

/-! ## A151767.P1346790533599094615

`lt[A001400(n), A071786(A028310(3*n))]`
-/

namespace A151767.P1346790533599094615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001400 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071786 (A028310 (3 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A151767.P1346790533599094615

/-! ## A151767.P3875864205044383497

`eq[2*A067158(A061862(n+1)), A067158(n)]`
-/

namespace A151767.P3875864205044383497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A067158 ((A061862 (n + 1)).toNat + 11)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067158 (n + 11)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A151767.P3875864205044383497

/-! ## A151767.P9949486272810226433

`lt[A050324(A286045(3*(n+1))), A153449(2*n)]`
-/

namespace A151767.P9949486272810226433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050324 (A286045 (3 * (n + 1))).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153449 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A151767.P9949486272810226433

/-!
# A151768: Complement of A071786.

The programs for A151768, there is no canonical definition to state claims against.
-/

/-! ## A151768.P15972601013756060958

`eq[char[A071786(n+1)], A000007(n)]`
-/

namespace A151768.P15972601013756060958
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071786 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A151768.P15972601013756060958

/-! ## A151768.P13104828177039443963

`∩[comp[A071786(n+1)], A057716(n+2)]`
-/

namespace A151768.P13104828177039443963
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071786 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057716 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f3 j = (x : ℤ)) n

end

end A151768.P13104828177039443963

/-! ## A151768.P11316099564220530125

`∩[comp[A071786(n+1)], A138302(n+3)]`
-/

namespace A151768.P11316099564220530125
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071786 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138302 (n + 3)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f3 j = (x : ℤ)) n

end

end A151768.P11316099564220530125

/-!
# A151769: Weight distribution of [63,30,13] primitive binary BCH code.

The programs for A151769, there is no canonical definition to state claims against.
-/

/-! ## A151769.P6306023075039532384

`∑{d}[C(∑[10*n-7]+8, ∑[9*n]), #]`
-/

namespace A151769.P6306023075039532384
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (10 * n : ℤ) - 7

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ j ∈ Finset.range (n + 1), f2 j + 8).toNat (∑ j ∈ Finset.range (n + 1), f3 j)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), d

end

end A151769.P6306023075039532384

/-! ## A151769.P1040596133925029472

`((n+1)*A281669(∑[n]+1))²`
-/

namespace A151769.P1040596133925029472
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) * A281669 (∑ j ∈ Finset.range (n + 1), f1 j + 1)) ^ 2

end

end A151769.P1040596133925029472

/-! ## A151769.P12339619582501038436

`A239590(ceil(or(n, (n*a(n-1))²)/12))²` with `a(0)=1`
-/

namespace A151769.P12339619582501038436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A239590 ⌈(Int.lor (n : ℤ) (((n : ℤ) * a (n - 1)) ^ 2) : ℚ) / 12⌉.toNat ^ 2

end

end A151769.P12339619582501038436

/-! ## A151769.P8239008492073189775

`C(A059514(n+1), ∑[∑{d}[n+1, n²%#]+1])²`
-/

namespace A151769.P8239008492073189775
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), n ^ 2 % d + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A059514 (n + 1)).toNat (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A151769.P8239008492073189775

/-! ## A151769.P16901483354598382091

`A273667(C(A251747(n), n))`
-/

namespace A151769.P16901483354598382091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273667 (Nat.choose (A251747 n).toNat n)

end

end A151769.P16901483354598382091

/-!
# A151770: Weight distribution of [63,36,11] primitive binary BCH code.

The programs for A151770, there is no canonical definition to state claims against.
-/

/-! ## A151770.P14571527013461732976

`A151724(C(A220681(n+1), 2*n))`
-/

namespace A151770.P14571527013461732976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151724 (Nat.choose (A220681 (n + 1)).toNat (2 * n))

end

end A151770.P14571527013461732976

/-! ## A151770.P17495704417473846269

`∏{p}[A094832(n), A277443(2*n+5)%#]`
-/

namespace A151770.P17495704417473846269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094832 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, Int.tmod (A277443 (2 * n + 5)) (p : ℤ)

end

end A151770.P17495704417473846269

/-! ## A151770.P2733852487395429580

`A303813(C(floor(2^(n/2)), 4*n))²%A056987(n+1)`
-/

namespace A151770.P2733852487395429580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A303813 (Nat.choose ⌊(2 : ℝ) ^ ((n : ℚ) / 2 : ℝ)⌋.toNat (4 * n)) ^ 2) (A056987 (n + 1))

end

end A151770.P2733852487395429580

/-! ## A151770.P6985356758948028923

`A144402(A144417(n)+A144394(n+4))`
-/

namespace A151770.P6985356758948028923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144402 (A144417 n + A144394 (n + 4)).toNat

end

end A151770.P6985356758948028923

/-! ## A151770.P14523987556901672231

`A324707(n+1)%A154638(A141020(n))`
-/

namespace A151770.P14523987556901672231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A324707 (n + 1)) (A154638 (A141020 n).toNat)

end

end A151770.P14523987556901672231

/-!
# A151771: Weight distribution of [63,39,9] primitive binary BCH code.

The programs for A151771, there is no canonical definition to state claims against.
-/

/-! ## A151771.P15876349288527744208

`A355627(A108694(n+1))`
-/

namespace A151771.P15876349288527744208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355627 ((A108694 (n + 1)).toNat + 10)

end

end A151771.P15876349288527744208

/-! ## A151771.P7082774677919763147

`A025925(n)*A258818(2^n)`
-/

namespace A151771.P7082774677919763147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025925 n * A258818 (2 ^ n)

end

end A151771.P7082774677919763147

/-! ## A151771.P10485778040967374989

`A029446(n)*A258818(2^n)`
-/

namespace A151771.P10485778040967374989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029446 n * A258818 (2 ^ n)

end

end A151771.P10485778040967374989

/-! ## A151771.P2082882703817024934

`A178577(C(4, A178571(3*n+2)))`
-/

namespace A151771.P2082882703817024934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178577 (Nat.choose 4 (A178571 (3 * n + 2)).toNat)

end

end A151771.P2082882703817024934

/-! ## A151771.P1255415087014528091

`A241340(C(A213598(n), or(1, 3*n+1)))`
-/

namespace A151771.P1255415087014528091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241340 (Nat.choose (A213598 n).toNat (Nat.lor 1 (3 * n + 1)))

end

end A151771.P1255415087014528091

/-!
# A151772: Weight distribution of [63,45,7] primitive binary BCH code.

The programs for A151772, there is no canonical definition to state claims against.
-/

/-! ## A151772.P8945330454133182783

`A342243(record[A330501(n)])`
-/

namespace A151772.P8945330454133182783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330501 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342243 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A151772.P8945330454133182783

/-! ## A151772.P1213298351637809384

`A241663(A216490(n+1))`
-/

namespace A151772.P1213298351637809384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241663 (A216490 (n + 1)).toNat

end

end A151772.P1213298351637809384

/-! ## A151772.P15859588201976976896

`A342243(A361680(n+1))`
-/

namespace A151772.P15859588201976976896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342243 (A361680 (n + 1)).toNat

end

end A151772.P15859588201976976896

/-! ## A151772.P7352245281752894868

`A342243(A139761(n)+2^n)`
-/

namespace A151772.P7352245281752894868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342243 (A139761 n + (2 ^ n : ℤ)).toNat

end

end A151772.P7352245281752894868

/-!
# A151773: Weight distribution of [63,51,5] primitive binary BCH code.

The programs for A151773, there is no canonical definition to state claims against.
-/

/-! ## A151773.P7161831734753305340

`char[∑[n²]]*A322367(n²)`
-/

namespace A151773.P7161831734753305340
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) * A322367 (n ^ 2)

end

end A151773.P7161831734753305340

/-!
# A151774: Characteristic function of numbers with binary weight 2 (A018900).

The programs for A151774, the canonical program `A151774.P15402501950599071548` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A151774 has offset 0).

The definition of A151774 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A151774.P18439338620822879207

`char[eq[3, a(and(n, n-1))+1]]` with `a(0)=1`
-/

namespace A151774.P18439338620822879207
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f3 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f3 =>
  f3 (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A151774.P18439338620822879207

namespace A151774

/-- `char[eq[3, a(and(n, n-1))+1]]` -/
def P18439338620822879207.Spec : Prop :=
  ∀ n, (P18439338620822879207.a n : ℤ) = A151774 n

end A151774

/-! ## A151774.P1011177633122035695

`char[eq[4, a(floor(n/2))+n%2]]` with `a(0)=2`
-/

namespace A151774.P1011177633122035695
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f3 : ℕ → ℕ := SequenceMachineLib.rec [2] fun n f3 =>
  f3 ⌊(n : ℚ) / 2⌋.toNat + n % 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A151774.P1011177633122035695

namespace A151774

/-- `char[eq[4, a(floor(n/2))+n%2]]` -/
def P1011177633122035695.Spec : Prop :=
  ∀ n, (P1011177633122035695.a n : ℤ) = A151774 n

end A151774

/-! ## A151774.P7314707843261306168

`val(A057334(n), 3)`
-/

namespace A151774.P7314707843261306168
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A057334 n).toNat 3

end

end A151774.P7314707843261306168

namespace A151774

/-- `val(A057334(n), 3)` -/
def P7314707843261306168.Spec : Prop :=
  ∀ n, (P7314707843261306168.a n : ℤ) = A151774 n

end A151774

/-! ## A151774.P14544974585152611338

`C(A073267(n), 2)`
-/

namespace A151774.P14544974585152611338
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A073267 n).toNat 2

end

end A151774.P14544974585152611338

namespace A151774

/-- `C(A073267(n), 2)` -/
def P14544974585152611338.Spec : Prop :=
  ∀ n, (P14544974585152611338.a n : ℤ) = A151774 n

end A151774

/-! ## A151774.P18430681447371097526

`char[A018900(n+1)]`
-/

namespace A151774.P18430681447371097526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018900 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A151774.P18430681447371097526

namespace A151774

/-- `char[A018900(n+1)]` -/
def P18430681447371097526.Spec : Prop :=
  ∀ n, (P18430681447371097526.a n : ℤ) = A151774 n

end A151774

/-! ## A151774.P7640785055018154290

`char[A048639(n+1)]`
-/

namespace A151774.P7640785055018154290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048639 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A151774.P7640785055018154290

namespace A151774

/-- `char[A048639(n+1)]` -/
def P7640785055018154290.Spec : Prop :=
  ∀ n, (P7640785055018154290.a n : ℤ) = A151774 n

end A151774

/-! ## A151774.P2819648445296754474

`char[eq[2, A050315(n)]]`
-/

namespace A151774.P2819648445296754474
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050315 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A151774.P2819648445296754474

namespace A151774

/-- `char[eq[2, A050315(n)]]` -/
def P2819648445296754474.Spec : Prop :=
  ∀ n, (P2819648445296754474.a n : ℤ) = A151774 n

end A151774

/-! ## A151774.P17337648094004428607

`char[eq[4, A001316(n)]]`
-/

namespace A151774.P17337648094004428607
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A151774.P17337648094004428607

namespace A151774

/-- `char[eq[4, A001316(n)]]` -/
def P17337648094004428607.Spec : Prop :=
  ∀ n, (P17337648094004428607.a n : ℤ) = A151774 n

end A151774

/-! ## A151774.P15402501950599071548

`C(C(2, A088512(n)), 2)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A151774

/-- `C(C(2, A088512(n)), 2)` -/
def P15402501950599071548.Spec : Prop :=
  ∀ n, (P15402501950599071548.a n : ℤ) = A151774 n

theorem P15402501950599071548.correct : P15402501950599071548.Spec := by
  intro n
  simp only [A151774]

end A151774

/-! ## A151774.P11178978078439982502

`A209229(and(n, n-1))`
-/

namespace A151774.P11178978078439982502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209229 (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat

end

end A151774.P11178978078439982502

namespace A151774

/-- `A209229(and(n, n-1))` -/
def P11178978078439982502.Spec : Prop :=
  ∀ n, P11178978078439982502.a n = A151774 n

end A151774

/-! ## A151774.P10612618127705476396

`char[A066884(∑[n+2])]`
-/

namespace A151774.P10612618127705476396
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066884 (∑ j ∈ Finset.range (n + 1), f2 j)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A151774.P10612618127705476396

namespace A151774

/-- `char[A066884(∑[n+2])]` -/
def P10612618127705476396.Spec : Prop :=
  ∀ n, (P10612618127705476396.a n : ℤ) = A151774 n

end A151774

/-! ## A151774.P8308828282702120996

`char[A239303(2*(n+1))]`
-/

namespace A151774.P8308828282702120996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239303 (2 * (n + 1))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A151774.P8308828282702120996

namespace A151774

/-- `char[A239303(2*(n+1))]` -/
def P8308828282702120996.Spec : Prop :=
  ∀ n, (P8308828282702120996.a n : ℤ) = A151774 n

end A151774

/-! ## A151774.P13689266654547533075

`char[A057168(a(n-1))]` with `a(0)=3`
-/

namespace A151774.P13689266654547533075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f1 =>
  A057168 (f1 (n - 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A151774.P13689266654547533075

namespace A151774

/-- `char[A057168(a(n-1))]` -/
def P13689266654547533075.Spec : Prop :=
  ∀ n, (P13689266654547533075.a n : ℤ) = A151774 n

end A151774

/-! ## A151774.P5790430051641871135

`C(A089049(2*n+1), 2)`
-/

namespace A151774.P5790430051641871135
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A089049 (2 * n + 1)).toNat 2

end

end A151774.P5790430051641871135

namespace A151774

/-- `C(A089049(2*n+1), 2)` -/
def P5790430051641871135.Spec : Prop :=
  ∀ n, (P5790430051641871135.a n : ℤ) = A151774 n

end A151774

/-! ## A151774.P17129646876086491908

`char[record[A057168(n+1)+1]]`
-/

namespace A151774.P17129646876086491908
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057168 (n + 1) + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A151774.P17129646876086491908

namespace A151774

/-- `char[record[A057168(n+1)+1]]` -/
def P17129646876086491908.Spec : Prop :=
  ∀ n, (P17129646876086491908.a n : ℤ) = A151774 n

end A151774

/-! ## A151774.P9546895401373665640

`char[A239303(n+1)]-char[1]`
-/

namespace A151774.P9546895401373665640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239303 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A151774.P9546895401373665640

namespace A151774

/-- `char[A239303(n+1)]-char[1]` -/
def P9546895401373665640.Spec : Prop :=
  ∀ n, P9546895401373665640.a n = A151774 n

end A151774

/-! ## A151774.P10097561062360622922

`char[eq[2, A273126(n+1)]+1]`
-/

namespace A151774.P10097561062360622922
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273126 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A151774.P10097561062360622922

namespace A151774

/-- `char[eq[2, A273126(n+1)]+1]` -/
def P10097561062360622922.Spec : Prop :=
  ∀ n, (P10097561062360622922.a n : ℤ) = A151774 n

end A151774

/-! ## A151774.P7257120406875050548

`A003982(A001316(n))`
-/

namespace A151774.P7257120406875050548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 (A001316 n).toNat

end

end A151774.P7257120406875050548

namespace A151774

/-- `A003982(A001316(n))` -/
def P7257120406875050548.Spec : Prop :=
  ∀ n, P7257120406875050548.a n = A151774 n

end A151774

/-! ## A151774.P1627331980087856608

`A008437(A038573(n))`
-/

namespace A151774.P1627331980087856608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008437 (A038573 n).toNat

end

end A151774.P1627331980087856608

namespace A151774

/-- `A008437(A038573(n))` -/
def P1627331980087856608.Spec : Prop :=
  ∀ n, P1627331980087856608.a n = A151774 n

end A151774

/-! ## A151774.P6892770106720885201

`A003815(A088512(n))`
-/

namespace A151774.P6892770106720885201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003815 (A088512 n).toNat

end

end A151774.P6892770106720885201

namespace A151774

/-- `A003815(A088512(n))` -/
def P6892770106720885201.Spec : Prop :=
  ∀ n, P6892770106720885201.a n = A151774 n

end A151774

/-!
# A151775: Triangle read by rows: T(n,k) = value of (d^2n/dx^2n) (tan^(2k)(x)/cos(x)) at the point x = 0.

The programs for A151775, there is no canonical definition to state claims against.
-/

/-! ## A151775.P8909933314801045332

`A008294(A061885(n))`
-/

namespace A151775.P8909933314801045332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008294 (A061885 n).toNat

end

end A151775.P8909933314801045332

/-! ## A151775.P11221940691204301326

`A008294(A057944(n)+n)`
-/

namespace A151775.P11221940691204301326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008294 (A057944 n + (n : ℤ)).toNat

end

end A151775.P11221940691204301326

/-! ## A151775.P4384175987789416425

`A008294(A004201(n+1)-1)`
-/

namespace A151775.P4384175987789416425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008294 (A004201 (n + 1) - 1).toNat

end

end A151775.P4384175987789416425

/-! ## A151775.P4739637442912829251

`A008294(2*n-A002262(n))`
-/

namespace A151775.P4739637442912829251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008294 ((2 * n : ℤ) - A002262 n).toNat

end

end A151775.P4739637442912829251

/-! ## A151775.P17009838916387173773

`A008294(n-A002262(n)+n)`
-/

namespace A151775.P17009838916387173773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008294 ((n : ℤ) - A002262 n + (n : ℤ)).toNat

end

end A151775.P17009838916387173773

/-! ## A151775.P7847109203967578966

`A008294(n-(A002262(n)-n))`
-/

namespace A151775.P7847109203967578966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008294 ((n : ℤ) - (A002262 n - (n : ℤ))).toNat

end

end A151775.P7847109203967578966

/-!
# A151776: Number of ON states after n generations of cellular automaton based on f.c.c. lattice with each cell adjacent to its twelve neighbors.

The programs for A151776, there is no canonical definition to state claims against.
-/

/-! ## A151776.P4957570377510257558

`∑[A151777(A028310(n))]-1`
-/

namespace A151776.P4957570377510257558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151777 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A151776.P4957570377510257558

/-! ## A151776.P8385954652411386252

`∑[A057427(n)*A151777(A028310(n))]`
-/

namespace A151776.P8385954652411386252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A151777 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A151776.P8385954652411386252

/-! ## A151776.P6573328086651097849

`∑[A151777(A028310(n))*A178489(n)]`
-/

namespace A151776.P6573328086651097849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151777 (A028310 n).toNat * A178489 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A151776.P6573328086651097849

/-! ## A151776.P18408457217509437060

`∑[A151777(A028310(n))%A001938(n)]`
-/

namespace A151776.P18408457217509437060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A151777 (A028310 n).toNat) (A001938 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A151776.P18408457217509437060

/-! ## A151776.P2458376938740919723

`∑[A000040(n+1)%2*A151777(A028310(n))]`
-/

namespace A151776.P2458376938740919723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 1)) 2 * A151777 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A151776.P2458376938740919723

/-!
# A151777: First differences of A151776.

The programs for A151777, there is no canonical definition to state claims against.
-/

/-! ## A151777.P16611019459137170685

`Δ[A151776(n)]`
-/

namespace A151777.P16611019459137170685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151776 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A151777.P16611019459137170685

/-! ## A151777.P2672876631828735692

`A151776(n+1)-A151776(n)`
-/

namespace A151777.P2672876631828735692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151776 (n + 1) - A151776 n

end

end A151777.P2672876631828735692

/-! ## A151777.P12383570233813324599

`record[A151776(A025856(n))]-A151776(n)`
-/

namespace A151777.P12383570233813324599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151776 (A025856 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A151776 n

end

end A151777.P12383570233813324599

/-!
# A151778: a(n) = A151777(n)/12.

The programs for A151778, there is no canonical definition to state claims against.
-/

/-! ## A151778.P11955741449557582040

`A151777(n+2)/12`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A151778.P11955741449557582040
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A151777 (n + 2) : ℚ) / 12

end

end A151778.P11955741449557582040

/-! ## A151778.P5061102091132768622

`Δ[A151776(n+1)/12]`
-/

namespace A151778.P5061102091132768622
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A151776 (n + 1) : ℚ) / 12

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A151778.P5061102091132768622

/-! ## A151778.P10843655892324644777

`A117358(Δ[A151776(n+1)])`
-/

namespace A151778.P10843655892324644777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151776 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117358 (f1 (n + 1) - f1 n).toNat

end

end A151778.P10843655892324644777

/-! ## A151778.P227733598727267885

`Δ[record[A151776(A025856(n))/12]]`
-/

namespace A151778.P227733598727267885
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A151776 (A025856 n).toNat : ℚ) / 12

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A151778.P227733598727267885

/-! ## A151778.P10310964344668502957

`A278529(Δ[A151776(n+1)]-3)`
-/

namespace A151778.P10310964344668502957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151776 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278529 (f1 (n + 1) - f1 n - 3).toNat

end

end A151778.P10310964344668502957

/-!
# A151779: a(1)=1; for n > 1, a(n)=6*5^{wt(n-1)-1}.

The programs for A151779, the canonical program `A151779.P14955371846823112406` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A151779 has offset 1).

The definition of A151779 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A151779.P13494667077015633388

`A209229(n)+5*a(and(n, n-1))` with `a(0)=1`
-/

namespace A151779.P13494667077015633388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A209229 n + 5 * a (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat

end

end A151779.P13494667077015633388

namespace A151779

/-- `A209229(n)+5*a(and(n, n-1))` -/
def P13494667077015633388.Spec : Prop :=
  ∀ n, P13494667077015633388.a n = A151779 (n + 1)

end A151779

/-! ## A151779.P14955371846823112406

`A003948(A000120(n))`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A151779

/-- `A003948(A000120(n))` -/
def P14955371846823112406.Spec : Prop :=
  ∀ n, P14955371846823112406.a n = A151779 (n + 1)

theorem P14955371846823112406.correct : P14955371846823112406.Spec := by
  intro n
  simp only [A151779, Nat.add_sub_cancel]

end A151779

/-! ## A151779.P6412500358307891621

`or(A000007(n), A168875(A000120(n)))`
-/

namespace A151779.P6412500358307891621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A168875 (A000120 n).toNat)

end

end A151779.P6412500358307891621

namespace A151779

/-- `or(A000007(n), A168875(A000120(n)))` -/
def P6412500358307891621.Spec : Prop :=
  ∀ n, P6412500358307891621.a n = A151779 (n + 1)

end A151779

/-! ## A151779.P4682861824996800159

`A269697(A038573(n))`
-/

namespace A151779.P4682861824996800159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269697 (A038573 n).toNat

end

end A151779.P4682861824996800159

namespace A151779

/-- `A269697(A038573(n))` -/
def P4682861824996800159.Spec : Prop :=
  ∀ n, P4682861824996800159.a n = A151779 (n + 1)

end A151779

/-! ## A151779.P16419783248343414440

`A033042(A151787(n+1))`
-/

namespace A151779.P16419783248343414440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033042 (A151787 (n + 1)).toNat

end

end A151779.P16419783248343414440

namespace A151779

/-- `A033042(A151787(n+1))` -/
def P16419783248343414440.Spec : Prop :=
  ∀ n, P16419783248343414440.a n = A151779 (n + 1)

end A151779

/-! ## A151779.P10086454704461630656

`A269697(A001316(n)-1)`
-/

namespace A151779.P10086454704461630656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269697 (A001316 n - 1).toNat

end

end A151779.P10086454704461630656

namespace A151779

/-- `A269697(A001316(n)-1)` -/
def P10086454704461630656.Spec : Prop :=
  ∀ n, P10086454704461630656.a n = A151779 (n + 1)

end A151779

/-! ## A151779.P17562107122511641794

`A269697(n-A048967(n))`
-/

namespace A151779.P17562107122511641794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269697 ((n : ℤ) - A048967 n).toNat

end

end A151779.P17562107122511641794

namespace A151779

/-- `A269697(n-A048967(n))` -/
def P17562107122511641794.Spec : Prop :=
  ∀ n, P17562107122511641794.a n = A151779 (n + 1)

end A151779

/-! ## A151779.P11047478783571332858

`∏{e}[A001316(n), A269697(A000225(#))]`
-/

namespace A151779.P11047478783571332858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A269697 (A000225 (Nat.factorization (f1 n).natAbs p)).toNat

end

end A151779.P11047478783571332858

namespace A151779

/-- `∏{e}[A001316(n), A269697(A000225(#))]` -/
def P11047478783571332858.Spec : Prop :=
  ∀ n, P11047478783571332858.a n = A151779 (n + 1)

end A151779

/-! ## A151779.P14848175703379661813

`A269697(sqrt(A269695(2*n))-1)`
-/

namespace A151779.P14848175703379661813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269697 (SequenceMachineLib.roundAway (Real.sqrt (A269695 (2 * n) : ℝ) - 1)).toNat

end

end A151779.P14848175703379661813

namespace A151779

/-- `A269697(sqrt(A269695(2*n))-1)` -/
def P14848175703379661813.Spec : Prop :=
  ∀ n, P14848175703379661813.a n = A151779 (n + 1)

end A151779

/-! ## A151779.P4623778310598709455

`A037453(A147582(n+1))`
-/

namespace A151779.P4623778310598709455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037453 (A147582 (n + 1)).toNat

end

end A151779.P4623778310598709455

namespace A151779

/-- `A037453(A147582(n+1))` -/
def P4623778310598709455.Spec : Prop :=
  ∀ n, P4623778310598709455.a n = A151779 (n + 1)

end A151779

/-! ## A151779.P10936682482011973405

`A037459(A151789(n+1))`
-/

namespace A151779.P10936682482011973405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037459 (A151789 (n + 1)).toNat

end

end A151779.P10936682482011973405

namespace A151779

/-- `A037459(A151789(n+1))` -/
def P10936682482011973405.Spec : Prop :=
  ∀ n, P10936682482011973405.a n = A151779 (n + 1)

end A151779

/-! ## A151779.P4543544662446995553

`A297469(a(A088512(n)))-1` with `a(0)=1`
-/

namespace A151779.P4543544662446995553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A297469 (a (A088512 n).toNat).toNat - 1

end

end A151779.P4543544662446995553

namespace A151779

/-- `A297469(a(A088512(n)))-1` -/
def P4543544662446995553.Spec : Prop :=
  ∀ n, P4543544662446995553.a n = A151779 (n + 1)

end A151779

/-!
# A151780: a(n) = 5^(wt(n) - 1) where wt(n) = A000120(n).

The programs for A151780, the canonical program `A151780.P8886922134318826222` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A151780 has offset 1).

The definition of A151780 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A151780.P4330287944944942268

`5^(n-∑[val(n+1, 2)])`
-/

namespace A151780.P4330287944944942268
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 : ℚ) ^ ((n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) : ℤ)

end

end A151780.P4330287944944942268

namespace A151780

/-- `5^(n-∑[val(n+1, 2)])` -/
def P4330287944944942268.Spec : Prop :=
  ∀ n, P4330287944944942268.a n = (A151780 (n + 1) : ℚ)

end A151780

/-! ## A151780.P8323624145592926988

`5^((n+1)%(∑[val(n+1, 2)]+1))`
-/

namespace A151780.P8323624145592926988
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 ^ ((n + 1) % (∑ j ∈ Finset.range (n + 1), f1 j + 1))

end

end A151780.P8323624145592926988

namespace A151780

/-- `5^((n+1)%(∑[val(n+1, 2)]+1))` -/
def P8323624145592926988.Spec : Prop :=
  ∀ n, (P8323624145592926988.a n : ℤ) = A151780 (n + 1)

end A151780

/-! ## A151780.P1604766908384280272

`5/5^val(n+1, 2)*a(n-1)` with `a(0)=1`
-/

namespace A151780.P1604766908384280272
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  5 / (5 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ) * a (n - 1)

end

end A151780.P1604766908384280272

namespace A151780

/-- `5/5^val(n+1, 2)*a(n-1)` -/
def P1604766908384280272.Spec : Prop :=
  ∀ n, P1604766908384280272.a n = (A151780 (n + 1) : ℚ)

end A151780

/-! ## A151780.P8886922134318826222

`a(ceil(n/2)-1)*a(gcd(2, n))` with `a(0)=1, a(1)=1, a(2)=5`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A151780

/-- `a(ceil(n/2)-1)*a(gcd(2, n))` -/
def P8886922134318826222.Spec : Prop :=
  ∀ n, (P8886922134318826222.a n : ℤ) = A151780 (n + 1)

theorem P8886922134318826222.correct : P8886922134318826222.Spec := by
  intro n
  simp only [A151780, Nat.add_sub_cancel]

end A151780

/-! ## A151780.P7335194082838130690

`5^A048881(n)`
-/

namespace A151780.P7335194082838130690
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 : ℚ) ^ (A048881 n : ℤ)

end

end A151780.P7335194082838130690

namespace A151780

/-- `5^A048881(n)` -/
def P7335194082838130690.Spec : Prop :=
  ∀ n, P7335194082838130690.a n = (A151780 (n + 1) : ℚ)

end A151780

/-! ## A151780.P3098302428381185217

`5^log2(A048896(n))`
-/

namespace A151780.P3098302428381185217
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (5 : ℝ) ^ (Real.logb 2 (A048896 n : ℝ))

end

end A151780.P3098302428381185217

namespace A151780

/-- `5^log2(A048896(n))` -/
def P3098302428381185217.Spec : Prop :=
  ∀ n, P3098302428381185217.a n = (A151780 (n + 1) : ℝ)

end A151780

/-! ## A151780.P13198993230810065689

`A256135(and(n, n+1))`
-/

namespace A151780.P13198993230810065689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256135 (Nat.land n (n + 1))

end

end A151780.P13198993230810065689

namespace A151780

/-- `A256135(and(n, n+1))` -/
def P13198993230810065689.Spec : Prop :=
  ∀ n, P13198993230810065689.a n = A151780 (n + 1)

end A151780

/-! ## A151780.P9957120398031947380

`Δ[A130667(n+1)/5]`
-/

namespace A151780.P9957120398031947380
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A130667 (n + 1) : ℚ) / 5

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A151780.P9957120398031947380

namespace A151780

/-- `Δ[A130667(n+1)/5]` -/
def P9957120398031947380.Spec : Prop :=
  ∀ n, P9957120398031947380.a n = (A151780 (n + 1) : ℚ)

end A151780

/-! ## A151780.P1038713256855911169

`A032532(A048896(n))`
-/

namespace A151780.P1038713256855911169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032532 (A048896 n).toNat

end

end A151780.P1038713256855911169

namespace A151780

/-- `A032532(A048896(n))` -/
def P1038713256855911169.Spec : Prop :=
  ∀ n, P1038713256855911169.a n = A151780 (n + 1)

end A151780

/-! ## A151780.P4924442799920566722

`A256135(A025480(n))`
-/

namespace A151780.P4924442799920566722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256135 (A025480 n).toNat

end

end A151780.P4924442799920566722

namespace A151780

/-- `A256135(A025480(n))` -/
def P4924442799920566722.Spec : Prop :=
  ∀ n, P4924442799920566722.a n = A151780 (n + 1)

end A151780

/-! ## A151780.P10804954610662998723

`A256135(A071055(n))`
-/

namespace A151780.P10804954610662998723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256135 (A071055 n).toNat

end

end A151780.P10804954610662998723

namespace A151780

/-- `A256135(A071055(n))` -/
def P10804954610662998723.Spec : Prop :=
  ∀ n, P10804954610662998723.a n = A151780 (n + 1)

end A151780

/-! ## A151780.P6844309148631066343

`A256135(A153733(n))`
-/

namespace A151780.P6844309148631066343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256135 (A153733 n).toNat

end

end A151780.P6844309148631066343

namespace A151780

/-- `A256135(A153733(n))` -/
def P6844309148631066343.Spec : Prop :=
  ∀ n, P6844309148631066343.a n = A151780 (n + 1)

end A151780

/-! ## A151780.P10928981470800307509

`A050358(A001316(n+1))`
-/

namespace A151780.P10928981470800307509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050358 (A001316 (n + 1)).toNat

end

end A151780.P10928981470800307509

namespace A151780

/-- `A050358(A001316(n+1))` -/
def P10928981470800307509.Spec : Prop :=
  ∀ n, P10928981470800307509.a n = A151780 (n + 1)

end A151780

/-! ## A151780.P2916280942112936522

`A074872(A178493(n+1))`
-/

namespace A151780.P2916280942112936522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074872 (A178493 (n + 1)).toNat

end

end A151780.P2916280942112936522

namespace A151780

/-- `A074872(A178493(n+1))` -/
def P2916280942112936522.Spec : Prop :=
  ∀ n, P2916280942112936522.a n = A151780 (n + 1)

end A151780

/-! ## A151780.P4183766724920570221

`A256135(A030109(n+1))`
-/

namespace A151780.P4183766724920570221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256135 (A030109 (n + 1)).toNat

end

end A151780.P4183766724920570221

namespace A151780

/-- `A256135(A030109(n+1))` -/
def P4183766724920570221.Spec : Prop :=
  ∀ n, P4183766724920570221.a n = A151780 (n + 1)

end A151780

/-! ## A151780.P18108657732617975983

`A256135(A053645(n+1))`
-/

namespace A151780.P18108657732617975983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256135 (A053645 (n + 1)).toNat

end

end A151780.P18108657732617975983

namespace A151780

/-- `A256135(A053645(n+1))` -/
def P18108657732617975983.Spec : Prop :=
  ∀ n, P18108657732617975983.a n = A151780 (n + 1)

end A151780

/-! ## A151780.P18356377375409125395

`A256135(A104594(n+1))`
-/

namespace A151780.P18356377375409125395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256135 (A104594 (n + 1)).toNat

end

end A151780.P18356377375409125395

namespace A151780

/-- `A256135(A104594(n+1))` -/
def P18356377375409125395.Spec : Prop :=
  ∀ n, P18356377375409125395.a n = A151780 (n + 1)

end A151780

/-! ## A151780.P14855352753367727395

`A256135(A048896(n)-1)`
-/

namespace A151780.P14855352753367727395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256135 (A048896 n - 1).toNat

end

end A151780.P14855352753367727395

namespace A151780

/-- `A256135(A048896(n)-1)` -/
def P14855352753367727395.Spec : Prop :=
  ∀ n, P14855352753367727395.a n = A151780 (n + 1)

end A151780

/-! ## A151780.P7699473450057062380

`A000351(A000120(n+1)-1)`
-/

namespace A151780.P7699473450057062380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000351 (A000120 (n + 1) - 1).toNat

end

end A151780.P7699473450057062380

namespace A151780

/-- `A000351(A000120(n+1)-1)` -/
def P7699473450057062380.Spec : Prop :=
  ∀ n, P7699473450057062380.a n = A151780 (n + 1)

end A151780

/-! ## A151780.P17517000064859891259

`A256135(A001316(n+1)-2)`
-/

namespace A151780.P17517000064859891259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256135 (A001316 (n + 1) - 2).toNat

end

end A151780.P17517000064859891259

namespace A151780

/-- `A256135(A001316(n+1)-2)` -/
def P17517000064859891259.Spec : Prop :=
  ∀ n, P17517000064859891259.a n = A151780 (n + 1)

end A151780

/-!
# A151781: Partial sums of A151779.

The programs for A151781, the canonical program `A151781.P6933814142392635971` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A151781 has offset 1).

The definition of A151781 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A151781.P6933814142392635971

`∑[A151779(n+1)]`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A151781

/-- `∑[A151779(n+1)]` -/
def P6933814142392635971.Spec : Prop :=
  ∀ n, P6933814142392635971.a n = A151781 (n + 1)

theorem P6933814142392635971.correct : P6933814142392635971.Spec := by
  intro n
  simp only [A151781, Nat.add_sub_cancel]

end A151781

/-! ## A151781.P2131597746900468729

`∑[A003948(A000120(n))]`
-/

namespace A151781.P2131597746900468729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003948 (A000120 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A151781.P2131597746900468729

namespace A151781

/-- `∑[A003948(A000120(n))]` -/
def P2131597746900468729.Spec : Prop :=
  ∀ n, P2131597746900468729.a n = A151781 (n + 1)

end A151781

/-! ## A151781.P664041547166869520

`∑[A269697(A038573(n))]`
-/

namespace A151781.P664041547166869520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269697 (A038573 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A151781.P664041547166869520

namespace A151781

/-- `∑[A269697(A038573(n))]` -/
def P664041547166869520.Spec : Prop :=
  ∀ n, P664041547166869520.a n = A151781 (n + 1)

end A151781

/-! ## A151781.P4939844203086665370

`∑[A033042(A151787(n+1))]`
-/

namespace A151781.P4939844203086665370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033042 (A151787 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A151781.P4939844203086665370

namespace A151781

/-- `∑[A033042(A151787(n+1))]` -/
def P4939844203086665370.Spec : Prop :=
  ∀ n, P4939844203086665370.a n = A151781 (n + 1)

end A151781

/-! ## A151781.P14152712099728890964

`∑[A269697(A001316(n)-1)]`
-/

namespace A151781.P14152712099728890964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269697 (A001316 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A151781.P14152712099728890964

namespace A151781

/-- `∑[A269697(A001316(n)-1)]` -/
def P14152712099728890964.Spec : Prop :=
  ∀ n, P14152712099728890964.a n = A151781 (n + 1)

end A151781

/-! ## A151781.P15453069942914097045

`∑[A269697(n-A048967(n))]`
-/

namespace A151781.P15453069942914097045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269697 ((n : ℤ) - A048967 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A151781.P15453069942914097045

namespace A151781

/-- `∑[A269697(n-A048967(n))]` -/
def P15453069942914097045.Spec : Prop :=
  ∀ n, P15453069942914097045.a n = A151781 (n + 1)

end A151781

/-! ## A151781.P6240161191411983215

`A151779(2*n+1)+a(n-1)` with `a(0)=1`
-/

namespace A151781.P6240161191411983215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A151779 (2 * n + 1) + a (n - 1)

end

end A151781.P6240161191411983215

namespace A151781

/-- `A151779(2*n+1)+a(n-1)` -/
def P6240161191411983215.Spec : Prop :=
  ∀ n, P6240161191411983215.a n = A151781 (n + 1)

end A151781

/-! ## A151781.P13407440347858719510

`∑[A037453(A147582(n+1))]`
-/

namespace A151781.P13407440347858719510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037453 (A147582 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A151781.P13407440347858719510

namespace A151781

/-- `∑[A037453(A147582(n+1))]` -/
def P13407440347858719510.Spec : Prop :=
  ∀ n, P13407440347858719510.a n = A151781 (n + 1)

end A151781

/-! ## A151781.P7167366315396644723

`∑[A000113(A256135(n))]`
-/

namespace A151781.P7167366315396644723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000113 (A256135 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A151781.P7167366315396644723

namespace A151781

/-- `∑[A000113(A256135(n))]` -/
def P7167366315396644723.Spec : Prop :=
  ∀ n, P7167366315396644723.a n = A151781 (n + 1)

end A151781

/-!
# A151782: a(1)=1; for n > 1, a(n)=8*7^{wt(n-1)-1}.

The programs for A151782, the canonical program `A151782.P6822546021068268693` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A151782 has offset 1).

The definition of A151782 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A151782.P12700583505052205424

`floor(7/acot(a(and(n, n-1))))` with `a(0)=1`
-/

namespace A151782.P12700583505052205424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊7 / SequenceMachineLib.acot (a (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat : ℝ)⌋

end

end A151782.P12700583505052205424

namespace A151782

/-- `floor(7/acot(a(and(n, n-1))))` -/
def P12700583505052205424.Spec : Prop :=
  ∀ n, P12700583505052205424.a n = A151782 (n + 1)

end A151782

/-! ## A151782.P6140474310604203352

`7^(n%2)*a(floor(n/2))` with `a(0)=1, a(1)=8`
-/

namespace A151782.P6140474310604203352
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 8] fun n a =>
  7 ^ (n % 2) * a ⌊(n : ℚ) / 2⌋.toNat

end

end A151782.P6140474310604203352

namespace A151782

/-- `7^(n%2)*a(floor(n/2))` -/
def P6140474310604203352.Spec : Prop :=
  ∀ n, (P6140474310604203352.a n : ℤ) = A151782 (n + 1)

end A151782

/-! ## A151782.P12303759837081299255

`char[2^n]+7*a(and(n, n-1))` with `a(0)=1`
-/

namespace A151782.P12303759837081299255
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (if ∃ j, f1 j = n then 1 else 0) + 7 * a (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat

end

end A151782.P12303759837081299255

namespace A151782

/-- `char[2^n]+7*a(and(n, n-1))` -/
def P12303759837081299255.Spec : Prop :=
  ∀ n, (P12303759837081299255.a n : ℤ) = A151782 (n + 1)

end A151782

/-! ## A151782.P6822546021068268693

`A003950(∑[∑{e}[xor(n, -n), 2-#]])`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A151782

/-- `A003950(∑[∑{e}[xor(n, -n), 2-#]])` -/
def P6822546021068268693.Spec : Prop :=
  ∀ n, P6822546021068268693.a n = A151782 (n + 1)

theorem P6822546021068268693.correct : P6822546021068268693.Spec := by
  intro n
  simp only [A151782, Nat.add_sub_cancel]

end A151782

/-! ## A151782.P10327741229646711782

`A168685(∑[∑{e}[xor(n, -n), 2-#]])`
-/

namespace A151782.P10327741229646711782
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (-(n : ℤ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n).natAbs, (2 - (Nat.factorization (f2 n).natAbs p : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168685 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A151782.P10327741229646711782

namespace A151782

/-- `A168685(∑[∑{e}[xor(n, -n), 2-#]])` -/
def P10327741229646711782.Spec : Prop :=
  ∀ n, P10327741229646711782.a n = A151782 (n + 1)

end A151782

/-! ## A151782.P5251354313823230659

`A168733(∑[∑{e}[xor(n, -n), 2-#]])`
-/

namespace A151782.P5251354313823230659
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (-(n : ℤ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n).natAbs, (2 - (Nat.factorization (f2 n).natAbs p : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168733 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A151782.P5251354313823230659

namespace A151782

/-- `A168733(∑[∑{e}[xor(n, -n), 2-#]])` -/
def P5251354313823230659.Spec : Prop :=
  ∀ n, P5251354313823230659.a n = A151782 (n + 1)

end A151782

/-! ## A151782.P9089900435373657452

`a(floor(n/2))*A000203(or(n+1, -2)²)` with `a(0)=1, a(1)=8`
-/

namespace A151782.P9089900435373657452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 8] fun n a =>
  a ⌊(n : ℚ) / 2⌋.toNat * A000203 (Int.lor (n + 1 : ℤ) (-2) ^ 2).toNat

end

end A151782.P9089900435373657452

namespace A151782

/-- `a(floor(n/2))*A000203(or(n+1, -2)²)` -/
def P9089900435373657452.Spec : Prop :=
  ∀ n, P9089900435373657452.a n = A151782 (n + 1)

end A151782

/-! ## A151782.P15725090545011390178

`A342611(A151787(n+1))`
-/

namespace A151782.P15725090545011390178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342611 (A151787 (n + 1)).toNat

end

end A151782.P15725090545011390178

namespace A151782

/-- `A342611(A151787(n+1))` -/
def P15725090545011390178.Spec : Prop :=
  ∀ n, P15725090545011390178.a n = A151782 (n + 1)

end A151782

/-! ## A151782.P1498028717663166888

`A037455(A147582(n+1))`
-/

namespace A151782.P1498028717663166888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037455 (A147582 (n + 1)).toNat

end

end A151782.P1498028717663166888

namespace A151782

/-- `A037455(A147582(n+1))` -/
def P1498028717663166888.Spec : Prop :=
  ∀ n, P1498028717663166888.a n = A151782 (n + 1)

end A151782

/-! ## A151782.P8707246565329940087

`A037461(A151789(n+1))`
-/

namespace A151782.P8707246565329940087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037461 (A151789 (n + 1)).toNat

end

end A151782.P8707246565329940087

namespace A151782

/-- `A037461(A151789(n+1))` -/
def P8707246565329940087.Spec : Prop :=
  ∀ n, P8707246565329940087.a n = A151782 (n + 1)

end A151782

/-!
# A151783: a(n) = 4^(wt(n) - 1) where wt(n) = A000120(n).

The programs for A151783, the canonical program `A151783.P15926003244653498625` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A151783 has offset 1).

The definition of A151783 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A151783.P13452615590414034055

`4^(n-∑[val(n+1, 2)])`
-/

namespace A151783.P13452615590414034055
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 : ℚ) ^ ((n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) : ℤ)

end

end A151783.P13452615590414034055

namespace A151783

/-- `4^(n-∑[val(n+1, 2)])` -/
def P13452615590414034055.Spec : Prop :=
  ∀ n, P13452615590414034055.a n = (A151783 (n + 1) : ℚ)

end A151783

/-! ## A151783.P15870728254946700098

`4^((n+1)%(∑[val(n+1, 2)]+1))`
-/

namespace A151783.P15870728254946700098
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 ^ ((n + 1) % (∑ j ∈ Finset.range (n + 1), f1 j + 1))

end

end A151783.P15870728254946700098

namespace A151783

/-- `4^((n+1)%(∑[val(n+1, 2)]+1))` -/
def P15870728254946700098.Spec : Prop :=
  ∀ n, (P15870728254946700098.a n : ℤ) = A151783 (n + 1)

end A151783

/-! ## A151783.P556279118899571112

`a(n-1)/(gcd(n+1, a(n-1))/2)²` with `a(0)=1, a(1)=1`
-/

namespace A151783.P556279118899571112
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) / ((Int.gcd (n + 1 : ℤ) (SequenceMachineLib.roundAway (a (n - 1))) : ℚ) / 2) ^ 2

end

end A151783.P556279118899571112

namespace A151783

/-- `a(n-1)/(gcd(n+1, a(n-1))/2)²` -/
def P556279118899571112.Spec : Prop :=
  ∀ n, P556279118899571112.a n = (A151783 (n + 1) : ℚ)

end A151783

/-! ## A151783.P15926003244653498625

`A048896(n)²`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A151783

/-- `A048896(n)²` -/
def P15926003244653498625.Spec : Prop :=
  ∀ n, P15926003244653498625.a n = A151783 (n + 1)

theorem P15926003244653498625.correct : P15926003244653498625.Spec := by
  intro n
  simp only [A151783, Nat.add_sub_cancel]

end A151783

/-! ## A151783.P859215043411603967

`4^A048881(n)`
-/

namespace A151783.P859215043411603967
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 : ℚ) ^ (A048881 n : ℤ)

end

end A151783.P859215043411603967

namespace A151783

/-- `4^A048881(n)` -/
def P859215043411603967.Spec : Prop :=
  ∀ n, P859215043411603967.a n = (A151783 (n + 1) : ℚ)

end A151783

/-! ## A151783.P1697700496569591863

`Δ[A193494(n)]²`
-/

namespace A151783.P1697700496569591863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193494 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2

end

end A151783.P1697700496569591863

namespace A151783

/-- `Δ[A193494(n)]²` -/
def P1697700496569591863.Spec : Prop :=
  ∀ n, P1697700496569591863.a n = A151783 (n + 1)

end A151783

/-! ## A151783.P11290488128002350656

`A102376(n+1)/4`
-/

namespace A151783.P11290488128002350656
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A102376 (n + 1) : ℚ) / 4

end

end A151783.P11290488128002350656

namespace A151783

/-- `A102376(n+1)/4` -/
def P11290488128002350656.Spec : Prop :=
  ∀ n, P11290488128002350656.a n = (A151783 (n + 1) : ℚ)

end A151783

/-! ## A151783.P8422671787406936109

`A102376(and(n, n+1))`
-/

namespace A151783.P8422671787406936109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102376 (Nat.land n (n + 1))

end

end A151783.P8422671787406936109

namespace A151783

/-- `A102376(and(n, n+1))` -/
def P8422671787406936109.Spec : Prop :=
  ∀ n, P8422671787406936109.a n = A151783 (n + 1)

end A151783

/-! ## A151783.P8145717791359305345

`A213178(and(n, n+1))`
-/

namespace A151783.P8145717791359305345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213178 (Nat.land n (n + 1))

end

end A151783.P8145717791359305345

namespace A151783

/-- `A213178(and(n, n+1))` -/
def P8145717791359305345.Spec : Prop :=
  ∀ n, P8145717791359305345.a n = A151783 (n + 1)

end A151783

/-! ## A151783.P3053423878804782686

`(A001316(n+1)/2)²`
-/

namespace A151783.P3053423878804782686
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A001316 (n + 1) : ℚ) / 2) ^ 2

end

end A151783.P3053423878804782686

namespace A151783

/-- `(A001316(n+1)/2)²` -/
def P3053423878804782686.Spec : Prop :=
  ∀ n, P3053423878804782686.a n = (A151783 (n + 1) : ℚ)

end A151783

/-! ## A151783.P15315689830666108915

`(A167275(n+1)/4)²`
-/

namespace A151783.P15315689830666108915
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A167275 (n + 1) : ℚ) / 4) ^ 2

end

end A151783.P15315689830666108915

namespace A151783

/-- `(A167275(n+1)/4)²` -/
def P15315689830666108915.Spec : Prop :=
  ∀ n, P15315689830666108915.a n = (A151783 (n + 1) : ℚ)

end A151783

/-! ## A151783.P16327741171427637609

`A151786(n+1)^(2/3)`
-/

namespace A151783.P16327741171427637609
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A151786 (n + 1) : ℝ) ^ ((2 : ℚ) / 3 : ℝ)

end

end A151783.P16327741171427637609

namespace A151783

/-- `A151786(n+1)^(2/3)` -/
def P16327741171427637609.Spec : Prop :=
  ∀ n, P16327741171427637609.a n = (A151783 (n + 1) : ℝ)

end A151783

/-! ## A151783.P12725180283615922619

`Δ[A006046(n+1)/2]²`
-/

namespace A151783.P12725180283615922619
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006046 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2

end

end A151783.P12725180283615922619

namespace A151783

/-- `Δ[A006046(n+1)/2]²` -/
def P12725180283615922619.Spec : Prop :=
  ∀ n, P12725180283615922619.a n = (A151783 (n + 1) : ℚ)

end A151783

/-! ## A151783.P14319890124260058618

`A000302(A048881(n))`
-/

namespace A151783.P14319890124260058618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000302 (A048881 n).toNat

end

end A151783.P14319890124260058618

namespace A151783

/-- `A000302(A048881(n))` -/
def P14319890124260058618.Spec : Prop :=
  ∀ n, P14319890124260058618.a n = A151783 (n + 1)

end A151783

/-! ## A151783.P5506960484369117385

`A051494(A071055(n))`
-/

namespace A151783.P5506960484369117385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051494 (A071055 n).toNat

end

end A151783.P5506960484369117385

namespace A151783

/-- `A051494(A071055(n))` -/
def P5506960484369117385.Spec : Prop :=
  ∀ n, P5506960484369117385.a n = A151783 (n + 1)

end A151783

/-! ## A151783.P3340380973497816190

`A102376(A025480(n))`
-/

namespace A151783.P3340380973497816190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102376 (A025480 n).toNat

end

end A151783.P3340380973497816190

namespace A151783

/-- `A102376(A025480(n))` -/
def P3340380973497816190.Spec : Prop :=
  ∀ n, P3340380973497816190.a n = A151783 (n + 1)

end A151783

/-! ## A151783.P9389581617266481357

`A102376(A153733(n))`
-/

namespace A151783.P9389581617266481357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102376 (A153733 n).toNat

end

end A151783.P9389581617266481357

namespace A151783

/-- `A102376(A153733(n))` -/
def P9389581617266481357.Spec : Prop :=
  ∀ n, P9389581617266481357.a n = A151783 (n + 1)

end A151783

/-! ## A151783.P2841788736619871339

`A000463(A001316(n+1))`
-/

namespace A151783.P2841788736619871339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (A001316 (n + 1)).toNat

end

end A151783.P2841788736619871339

namespace A151783

/-- `A000463(A001316(n+1))` -/
def P2841788736619871339.Spec : Prop :=
  ∀ n, P2841788736619871339.a n = A151783 (n + 1)

end A151783

/-! ## A151783.P9108337019699429066

`A102376(A030109(n+1))`
-/

namespace A151783.P9108337019699429066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102376 (A030109 (n + 1)).toNat

end

end A151783.P9108337019699429066

namespace A151783

/-- `A102376(A030109(n+1))` -/
def P9108337019699429066.Spec : Prop :=
  ∀ n, P9108337019699429066.a n = A151783 (n + 1)

end A151783

/-! ## A151783.P9059215396624839706

`A177241(A003602(n+1))`
-/

namespace A151783.P9059215396624839706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177241 (A003602 (n + 1)).toNat

end

end A151783.P9059215396624839706

namespace A151783

/-- `A177241(A003602(n+1))` -/
def P9059215396624839706.Spec : Prop :=
  ∀ n, P9059215396624839706.a n = A151783 (n + 1)

end A151783

/-!
# A151784: a(n) = 6^(wt(n) - 1) where wt(n) = A000120(n).

The programs for A151784, the canonical program `A151784.P5522688262615074896` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A151784 has offset 1).

The definition of A151784 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A151784.P14148775748813485713

`6^(n-∑[val(n+1, 2)])`
-/

namespace A151784.P14148775748813485713
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (6 : ℚ) ^ ((n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) : ℤ)

end

end A151784.P14148775748813485713

namespace A151784

/-- `6^(n-∑[val(n+1, 2)])` -/
def P14148775748813485713.Spec : Prop :=
  ∀ n, P14148775748813485713.a n = (A151784 (n + 1) : ℚ)

end A151784

/-! ## A151784.P9436038546168676718

`6^((n+1)%(∑[val(n+1, 2)]+1))`
-/

namespace A151784.P9436038546168676718
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 ^ ((n + 1) % (∑ j ∈ Finset.range (n + 1), f1 j + 1))

end

end A151784.P9436038546168676718

namespace A151784

/-- `6^((n+1)%(∑[val(n+1, 2)]+1))` -/
def P9436038546168676718.Spec : Prop :=
  ∀ n, (P9436038546168676718.a n : ℤ) = A151784 (n + 1)

end A151784

/-! ## A151784.P5137028163604166604

`6/6^val(n+1, 2)*a(n-1)` with `a(0)=1`
-/

namespace A151784.P5137028163604166604
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  6 / (6 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ) * a (n - 1)

end

end A151784.P5137028163604166604

namespace A151784

/-- `6/6^val(n+1, 2)*a(n-1)` -/
def P5137028163604166604.Spec : Prop :=
  ∀ n, P5137028163604166604.a n = (A151784 (n + 1) : ℚ)

end A151784

/-! ## A151784.P5522688262615074896

`a(ceil(n/2)-1)*a(gcd(2, n))` with `a(0)=1, a(1)=1, a(2)=6`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A151784

/-- `a(ceil(n/2)-1)*a(gcd(2, n))` -/
def P5522688262615074896.Spec : Prop :=
  ∀ n, (P5522688262615074896.a n : ℤ) = A151784 (n + 1)

theorem P5522688262615074896.correct : P5522688262615074896.Spec := by
  intro n
  simp only [A151784, Nat.add_sub_cancel]

end A151784

/-! ## A151784.P6170536051356203504

`6^A048881(n)`
-/

namespace A151784.P6170536051356203504
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (6 : ℚ) ^ (A048881 n : ℤ)

end

end A151784.P6170536051356203504

namespace A151784

/-- `6^A048881(n)` -/
def P6170536051356203504.Spec : Prop :=
  ∀ n, P6170536051356203504.a n = (A151784 (n + 1) : ℚ)

end A151784

/-! ## A151784.P3916050965572879253

`6^log2(A048896(n))`
-/

namespace A151784.P3916050965572879253
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (6 : ℝ) ^ (Real.logb 2 (A048896 n : ℝ))

end

end A151784.P3916050965572879253

namespace A151784

/-- `6^log2(A048896(n))` -/
def P3916050965572879253.Spec : Prop :=
  ∀ n, P3916050965572879253.a n = (A151784 (n + 1) : ℝ)

end A151784

/-! ## A151784.P10496972075304162640

`A256136(and(n, n+1))`
-/

namespace A151784.P10496972075304162640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256136 (Nat.land n (n + 1))

end

end A151784.P10496972075304162640

namespace A151784

/-- `A256136(and(n, n+1))` -/
def P10496972075304162640.Spec : Prop :=
  ∀ n, P10496972075304162640.a n = A151784 (n + 1)

end A151784

/-! ## A151784.P11012042587651073759

`A000400(A048881(n))`
-/

namespace A151784.P11012042587651073759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000400 (A048881 n).toNat

end

end A151784.P11012042587651073759

namespace A151784

/-- `A000400(A048881(n))` -/
def P11012042587651073759.Spec : Prop :=
  ∀ n, P11012042587651073759.a n = A151784 (n + 1)

end A151784

/-! ## A151784.P3003257872713676038

`A033043(A048896(n))`
-/

namespace A151784.P3003257872713676038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033043 (A048896 n).toNat

end

end A151784.P3003257872713676038

namespace A151784

/-- `A033043(A048896(n))` -/
def P3003257872713676038.Spec : Prop :=
  ∀ n, P3003257872713676038.a n = A151784 (n + 1)

end A151784

/-! ## A151784.P536586153121477159

`A256136(A025480(n))`
-/

namespace A151784.P536586153121477159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256136 (A025480 n).toNat

end

end A151784.P536586153121477159

namespace A151784

/-- `A256136(A025480(n))` -/
def P536586153121477159.Spec : Prop :=
  ∀ n, P536586153121477159.a n = A151784 (n + 1)

end A151784

/-! ## A151784.P1525455696439670668

`A256136(A071055(n))`
-/

namespace A151784.P1525455696439670668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256136 (A071055 n).toNat

end

end A151784.P1525455696439670668

namespace A151784

/-- `A256136(A071055(n))` -/
def P1525455696439670668.Spec : Prop :=
  ∀ n, P1525455696439670668.a n = A151784 (n + 1)

end A151784

/-! ## A151784.P6509750745019636434

`A256136(A153733(n))`
-/

namespace A151784.P6509750745019636434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256136 (A153733 n).toNat

end

end A151784.P6509750745019636434

namespace A151784

/-- `A256136(A153733(n))` -/
def P6509750745019636434.Spec : Prop :=
  ∀ n, P6509750745019636434.a n = A151784 (n + 1)

end A151784

/-! ## A151784.P13660682544950685464

`A256136(A030109(n+1))`
-/

namespace A151784.P13660682544950685464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256136 (A030109 (n + 1)).toNat

end

end A151784.P13660682544950685464

namespace A151784

/-- `A256136(A030109(n+1))` -/
def P13660682544950685464.Spec : Prop :=
  ∀ n, P13660682544950685464.a n = A151784 (n + 1)

end A151784

/-! ## A151784.P15198152844395429912

`A256136(A053645(n+1))`
-/

namespace A151784.P15198152844395429912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256136 (A053645 (n + 1)).toNat

end

end A151784.P15198152844395429912

namespace A151784

/-- `A256136(A053645(n+1))` -/
def P15198152844395429912.Spec : Prop :=
  ∀ n, P15198152844395429912.a n = A151784 (n + 1)

end A151784

/-! ## A151784.P5952311498393981793

`A256136(A104594(n+1))`
-/

namespace A151784.P5952311498393981793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256136 (A104594 (n + 1)).toNat

end

end A151784.P5952311498393981793

namespace A151784

/-- `A256136(A104594(n+1))` -/
def P5952311498393981793.Spec : Prop :=
  ∀ n, P5952311498393981793.a n = A151784 (n + 1)

end A151784

/-! ## A151784.P12394095759254887709

`A256136(A129760(n+1))`
-/

namespace A151784.P12394095759254887709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256136 (A129760 (n + 1)).toNat

end

end A151784.P12394095759254887709

namespace A151784

/-- `A256136(A129760(n+1))` -/
def P12394095759254887709.Spec : Prop :=
  ∀ n, P12394095759254887709.a n = A151784 (n + 1)

end A151784

/-! ## A151784.P10992769784074013414

`A256136(A048896(n)-1)`
-/

namespace A151784.P10992769784074013414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256136 (A048896 n - 1).toNat

end

end A151784.P10992769784074013414

namespace A151784

/-- `A256136(A048896(n)-1)` -/
def P10992769784074013414.Spec : Prop :=
  ∀ n, P10992769784074013414.a n = A151784 (n + 1)

end A151784

/-! ## A151784.P17256110124762154938

`A000400(A000120(n+1)-1)`
-/

namespace A151784.P17256110124762154938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000400 (A000120 (n + 1) - 1).toNat

end

end A151784.P17256110124762154938

namespace A151784

/-- `A000400(A000120(n+1)-1)` -/
def P17256110124762154938.Spec : Prop :=
  ∀ n, P17256110124762154938.a n = A151784 (n + 1)

end A151784

/-! ## A151784.P13239783242573952056

`A256136(A001316(n+1)-2)`
-/

namespace A151784.P13239783242573952056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256136 (A001316 (n + 1) - 2).toNat

end

end A151784.P13239783242573952056

namespace A151784

/-- `A256136(A001316(n+1)-2)` -/
def P13239783242573952056.Spec : Prop :=
  ∀ n, P13239783242573952056.a n = A151784 (n + 1)

end A151784

/-! ## A151784.P18054817133683125327

`A329886(A001316(n+1)-2)`
-/

namespace A151784.P18054817133683125327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329886 (A001316 (n + 1) - 2).toNat

end

end A151784.P18054817133683125327

namespace A151784

/-- `A329886(A001316(n+1)-2)` -/
def P18054817133683125327.Spec : Prop :=
  ∀ n, P18054817133683125327.a n = A151784 (n + 1)

end A151784

/-!
# A151785: a(n) = 7^(wt(n) - 1) where wt(n) is the binary weight of n (A000120).

The programs for A151785, the canonical program `A151785.P2507731394725536676` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A151785 has offset 1).

The definition of A151785 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A151785.P12918790780479787589

`7^(n-∑[val(n+1, 2)])`
-/

namespace A151785.P12918790780479787589
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (7 : ℚ) ^ ((n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) : ℤ)

end

end A151785.P12918790780479787589

namespace A151785

/-- `7^(n-∑[val(n+1, 2)])` -/
def P12918790780479787589.Spec : Prop :=
  ∀ n, P12918790780479787589.a n = (A151785 (n + 1) : ℚ)

end A151785

/-! ## A151785.P8645036015350725632

`7^((n+1)%(∑[val(n+1, 2)]+1))`
-/

namespace A151785.P8645036015350725632
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 ^ ((n + 1) % (∑ j ∈ Finset.range (n + 1), f1 j + 1))

end

end A151785.P8645036015350725632

namespace A151785

/-- `7^((n+1)%(∑[val(n+1, 2)]+1))` -/
def P8645036015350725632.Spec : Prop :=
  ∀ n, (P8645036015350725632.a n : ℤ) = A151785 (n + 1)

end A151785

/-! ## A151785.P2507731394725536676

`gcd(7, n%2)*a(ceil(n/2)-1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A151785

/-- `gcd(7, n%2)*a(ceil(n/2)-1)` -/
def P2507731394725536676.Spec : Prop :=
  ∀ n, (P2507731394725536676.a n : ℤ) = A151785 (n + 1)

theorem P2507731394725536676.correct : P2507731394725536676.Spec := by
  intro n
  simp only [A151785, Nat.add_sub_cancel]

end A151785

/-! ## A151785.P15934287455918407951

`7^A048881(n)`
-/

namespace A151785.P15934287455918407951
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (7 : ℚ) ^ (A048881 n : ℤ)

end

end A151785.P15934287455918407951

namespace A151785

/-- `7^A048881(n)` -/
def P15934287455918407951.Spec : Prop :=
  ∀ n, P15934287455918407951.a n = (A151785 (n + 1) : ℚ)

end A151785

/-! ## A151785.P4857131062796461796

`7^log2(A048896(n))`
-/

namespace A151785.P4857131062796461796
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (7 : ℝ) ^ (Real.logb 2 (A048896 n : ℝ))

end

end A151785.P4857131062796461796

namespace A151785

/-- `7^log2(A048896(n))` -/
def P4857131062796461796.Spec : Prop :=
  ∀ n, P4857131062796461796.a n = (A151785 (n + 1) : ℝ)

end A151785

/-! ## A151785.P7412701934115614925

`A161343(and(n, n+1))`
-/

namespace A151785.P7412701934115614925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161343 (Nat.land n (n + 1))

end

end A151785.P7412701934115614925

namespace A151785

/-- `A161343(and(n, n+1))` -/
def P7412701934115614925.Spec : Prop :=
  ∀ n, P7412701934115614925.a n = A151785 (n + 1)

end A151785

/-! ## A151785.P2075173822381395018

`A116522(A048896(n))`
-/

namespace A151785.P2075173822381395018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116522 (A048896 n).toNat

end

end A151785.P2075173822381395018

namespace A151785

/-- `A116522(A048896(n))` -/
def P2075173822381395018.Spec : Prop :=
  ∀ n, P2075173822381395018.a n = A151785 (n + 1)

end A151785

/-! ## A151785.P4627830504377375939

`A161343(A025480(n))`
-/

namespace A151785.P4627830504377375939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161343 (A025480 n).toNat

end

end A151785.P4627830504377375939

namespace A151785

/-- `A161343(A025480(n))` -/
def P4627830504377375939.Spec : Prop :=
  ∀ n, P4627830504377375939.a n = A151785 (n + 1)

end A151785

/-! ## A151785.P13264751635523264778

`A161343(A071055(n))`
-/

namespace A151785.P13264751635523264778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161343 (A071055 n).toNat

end

end A151785.P13264751635523264778

namespace A151785

/-- `A161343(A071055(n))` -/
def P13264751635523264778.Spec : Prop :=
  ∀ n, P13264751635523264778.a n = A151785 (n + 1)

end A151785

/-! ## A151785.P16001536545629295747

`A161343(A153733(n))`
-/

namespace A151785.P16001536545629295747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161343 (A153733 n).toNat

end

end A151785.P16001536545629295747

namespace A151785

/-- `A161343(A153733(n))` -/
def P16001536545629295747.Spec : Prop :=
  ∀ n, P16001536545629295747.a n = A151785 (n + 1)

end A151785

/-! ## A151785.P11420975781124839177

`A033044(A048896(n)+1)`
-/

namespace A151785.P11420975781124839177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033044 (A048896 n + 1).toNat

end

end A151785.P11420975781124839177

namespace A151785

/-- `A033044(A048896(n)+1)` -/
def P11420975781124839177.Spec : Prop :=
  ∀ n, P11420975781124839177.a n = A151785 (n + 1)

end A151785

/-! ## A151785.P11184066643255695509

`A161343(A030109(n+1))`
-/

namespace A151785.P11184066643255695509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161343 (A030109 (n + 1)).toNat

end

end A151785.P11184066643255695509

namespace A151785

/-- `A161343(A030109(n+1))` -/
def P11184066643255695509.Spec : Prop :=
  ∀ n, P11184066643255695509.a n = A151785 (n + 1)

end A151785

/-! ## A151785.P17930758690506282259

`A161343(A053645(n+1))`
-/

namespace A151785.P17930758690506282259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161343 (A053645 (n + 1)).toNat

end

end A151785.P17930758690506282259

namespace A151785

/-- `A161343(A053645(n+1))` -/
def P17930758690506282259.Spec : Prop :=
  ∀ n, P17930758690506282259.a n = A151785 (n + 1)

end A151785

/-! ## A151785.P13673435731526939057

`A161343(A104594(n+1))`
-/

namespace A151785.P13673435731526939057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161343 (A104594 (n + 1)).toNat

end

end A151785.P13673435731526939057

namespace A151785

/-- `A161343(A104594(n+1))` -/
def P13673435731526939057.Spec : Prop :=
  ∀ n, P13673435731526939057.a n = A151785 (n + 1)

end A151785

/-! ## A151785.P17026786769178689604

`A161343(A129760(n+1))`
-/

namespace A151785.P17026786769178689604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161343 (A129760 (n + 1)).toNat

end

end A151785.P17026786769178689604

namespace A151785

/-- `A161343(A129760(n+1))` -/
def P17026786769178689604.Spec : Prop :=
  ∀ n, P17026786769178689604.a n = A151785 (n + 1)

end A151785

/-! ## A151785.P15895048530739601551

`A000420(A000120(n+1)-1)`
-/

namespace A151785.P15895048530739601551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000420 (A000120 (n + 1) - 1).toNat

end

end A151785.P15895048530739601551

namespace A151785

/-- `A000420(A000120(n+1)-1)` -/
def P15895048530739601551.Spec : Prop :=
  ∀ n, P15895048530739601551.a n = A151785 (n + 1)

end A151785

/-! ## A151785.P7108495853968942179

`A161343(A001316(n+1)-2)`
-/

namespace A151785.P7108495853968942179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161343 (A001316 (n + 1) - 2).toNat

end

end A151785.P7108495853968942179

namespace A151785

/-- `A161343(A001316(n+1)-2)` -/
def P7108495853968942179.Spec : Prop :=
  ∀ n, P7108495853968942179.a n = A151785 (n + 1)

end A151785

/-! ## A151785.P5125160773739507368

`A116522(A001316(n+1)/2)`
-/

namespace A151785.P5125160773739507368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116522 (SequenceMachineLib.roundAway ((A001316 (n + 1) : ℚ) / 2)).toNat

end

end A151785.P5125160773739507368

namespace A151785

/-- `A116522(A001316(n+1)/2)` -/
def P5125160773739507368.Spec : Prop :=
  ∀ n, P5125160773739507368.a n = A151785 (n + 1)

end A151785

/-! ## A151785.P2455048051222069458

`A166653(A001316(n+1)/2)`
-/

namespace A151785.P2455048051222069458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166653 (SequenceMachineLib.roundAway ((A001316 (n + 1) : ℚ) / 2)).toNat

end

end A151785.P2455048051222069458

namespace A151785

/-- `A166653(A001316(n+1)/2)` -/
def P2455048051222069458.Spec : Prop :=
  ∀ n, P2455048051222069458.a n = A151785 (n + 1)

end A151785

/-! ## A151785.P6563439460550935714

`A166661(A001316(n+1)/2)`
-/

namespace A151785.P6563439460550935714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166661 (SequenceMachineLib.roundAway ((A001316 (n + 1) : ℚ) / 2)).toNat

end

end A151785.P6563439460550935714

namespace A151785

/-- `A166661(A001316(n+1)/2)` -/
def P6563439460550935714.Spec : Prop :=
  ∀ n, P6563439460550935714.a n = A151785 (n + 1)

end A151785

/-!
# A151786: a(n) = 8^(wt(n)-1) where wt(n) is the binary weight of n (A000120).

The programs for A151786, the canonical program `A151786.P9554746056082427030` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A151786 has offset 1).

The definition of A151786 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A151786.P9554746056082427030

`8^A048881(n)`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A151786

/-- `8^A048881(n)` -/
def P9554746056082427030.Spec : Prop :=
  ∀ n, P9554746056082427030.a n = (A151786 (n + 1) : ℚ)

end A151786

/-! ## A151786.P8661354849195443298

`8^(n-∑[val(n+1, 2)])`
-/

namespace A151786.P8661354849195443298
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (8 : ℚ) ^ ((n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) : ℤ)

end

end A151786.P8661354849195443298

namespace A151786

/-- `8^(n-∑[val(n+1, 2)])` -/
def P8661354849195443298.Spec : Prop :=
  ∀ n, P8661354849195443298.a n = (A151786 (n + 1) : ℚ)

end A151786

/-! ## A151786.P3315543141279994504

`A048896(n)^3`
-/

namespace A151786.P3315543141279994504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048896 n ^ 3

end

end A151786.P3315543141279994504

namespace A151786

/-- `A048896(n)^3` -/
def P3315543141279994504.Spec : Prop :=
  ∀ n, P3315543141279994504.a n = A151786 (n + 1)

end A151786

/-! ## A151786.P15521821019927518355

`Δ[A193494(n)]^3`
-/

namespace A151786.P15521821019927518355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193494 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 3

end

end A151786.P15521821019927518355

namespace A151786

/-- `Δ[A193494(n)]^3` -/
def P15521821019927518355.Spec : Prop :=
  ∀ n, P15521821019927518355.a n = A151786 (n + 1)

end A151786

/-! ## A151786.P9857242901446044965

`sqrt(A151783(n+1)^3)`
-/

namespace A151786.P9857242901446044965
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A151783 (n + 1) ^ 3 : ℝ)

end

end A151786.P9857242901446044965

namespace A151786

/-- `sqrt(A151783(n+1)^3)` -/
def P9857242901446044965.Spec : Prop :=
  ∀ n, P9857242901446044965.a n = (A151786 (n + 1) : ℝ)

end A151786

/-! ## A151786.P1064529335179466378

`Δ[A255764(n+1)/9]`
-/

namespace A151786.P1064529335179466378
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A255764 (n + 1) : ℚ) / 9

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A151786.P1064529335179466378

namespace A151786

/-- `Δ[A255764(n+1)/9]` -/
def P1064529335179466378.Spec : Prop :=
  ∀ n, P1064529335179466378.a n = (A151786 (n + 1) : ℚ)

end A151786

/-! ## A151786.P10587148227881591801

`(A001316(n+1)/2)^3`
-/

namespace A151786.P10587148227881591801
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A001316 (n + 1) : ℚ) / 2) ^ 3

end

end A151786.P10587148227881591801

namespace A151786

/-- `(A001316(n+1)/2)^3` -/
def P10587148227881591801.Spec : Prop :=
  ∀ n, P10587148227881591801.a n = (A151786 (n + 1) : ℚ)

end A151786

/-! ## A151786.P12931684392189328088

`8^(A000120(n+1)-1)`
-/

namespace A151786.P12931684392189328088
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (8 : ℚ) ^ (A000120 (n + 1) - 1 : ℤ)

end

end A151786.P12931684392189328088

namespace A151786

/-- `8^(A000120(n+1)-1)` -/
def P12931684392189328088.Spec : Prop :=
  ∀ n, P12931684392189328088.a n = (A151786 (n + 1) : ℚ)

end A151786

/-! ## A151786.P3481076186219577019

`8^A000120(and(n, n+1))`
-/

namespace A151786.P3481076186219577019
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (8 : ℚ) ^ (A000120 (Nat.land n (n + 1)) : ℤ)

end

end A151786.P3481076186219577019

namespace A151786

/-- `8^A000120(and(n, n+1))` -/
def P3481076186219577019.Spec : Prop :=
  ∀ n, P3481076186219577019.a n = (A151786 (n + 1) : ℚ)

end A151786

/-! ## A151786.P7748420287513266404

`8^(n-∑[A007814(n+1)])`
-/

namespace A151786.P7748420287513266404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (8 : ℚ) ^ ((n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j : ℤ)

end

end A151786.P7748420287513266404

namespace A151786

/-- `8^(n-∑[A007814(n+1)])` -/
def P7748420287513266404.Spec : Prop :=
  ∀ n, P7748420287513266404.a n = (A151786 (n + 1) : ℚ)

end A151786

/-! ## A151786.P11624269084676645166

`A000578(A048896(n))`
-/

namespace A151786.P11624269084676645166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (A048896 n).toNat

end

end A151786.P11624269084676645166

namespace A151786

/-- `A000578(A048896(n))` -/
def P11624269084676645166.Spec : Prop :=
  ∀ n, P11624269084676645166.a n = A151786 (n + 1)

end A151786

/-! ## A151786.P1794444274314901669

`A114803(A071055(n))`
-/

namespace A151786.P1794444274314901669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114803 (A071055 n).toNat

end

end A151786.P1794444274314901669

namespace A151786

/-- `A114803(A071055(n))` -/
def P1794444274314901669.Spec : Prop :=
  ∀ n, P1794444274314901669.a n = A151786 (n + 1)

end A151786

/-! ## A151786.P5123214108592338465

`A034828(A001316(n+1))`
-/

namespace A151786.P5123214108592338465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034828 (A001316 (n + 1)).toNat

end

end A151786.P5123214108592338465

namespace A151786

/-- `A034828(A001316(n+1))` -/
def P5123214108592338465.Spec : Prop :=
  ∀ n, P5123214108592338465.a n = A151786 (n + 1)

end A151786

/-! ## A151786.P16445777581962893829

`8^A000120(A153733(n))`
-/

namespace A151786.P16445777581962893829
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (8 : ℚ) ^ (A000120 (A153733 n).toNat : ℤ)

end

end A151786.P16445777581962893829

namespace A151786

/-- `8^A000120(A153733(n))` -/
def P16445777581962893829.Spec : Prop :=
  ∀ n, P16445777581962893829.a n = (A151786 (n + 1) : ℚ)

end A151786

/-! ## A151786.P10506172082002602665

`A001018(A000120(n+1)-1)`
-/

namespace A151786.P10506172082002602665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001018 (A000120 (n + 1) - 1).toNat

end

end A151786.P10506172082002602665

namespace A151786

/-- `A001018(A000120(n+1)-1)` -/
def P10506172082002602665.Spec : Prop :=
  ∀ n, P10506172082002602665.a n = A151786 (n + 1)

end A151786

/-! ## A151786.P9772144318708499275

`A000578(A001316(n+1)/2)`
-/

namespace A151786.P9772144318708499275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (SequenceMachineLib.roundAway ((A001316 (n + 1) : ℚ) / 2)).toNat

end

end A151786.P9772144318708499275

namespace A151786

/-- `A000578(A001316(n+1)/2)` -/
def P9772144318708499275.Spec : Prop :=
  ∀ n, P9772144318708499275.a n = A151786 (n + 1)

end A151786

/-! ## A151786.P327822018572722001

`A033045(A001316(n+1)/2)`
-/

namespace A151786.P327822018572722001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033045 (SequenceMachineLib.roundAway ((A001316 (n + 1) : ℚ) / 2)).toNat

end

end A151786.P327822018572722001

namespace A151786

/-- `A033045(A001316(n+1)/2)` -/
def P327822018572722001.Spec : Prop :=
  ∀ n, P327822018572722001.a n = A151786 (n + 1)

end A151786

/-! ## A151786.P4228109492045660078

`A161342(A001316(n+1)/2)`
-/

namespace A151786.P4228109492045660078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161342 (SequenceMachineLib.roundAway ((A001316 (n + 1) : ℚ) / 2)).toNat

end

end A151786.P4228109492045660078

namespace A151786

/-- `A161342(A001316(n+1)/2)` -/
def P4228109492045660078.Spec : Prop :=
  ∀ n, P4228109492045660078.a n = A151786 (n + 1)

end A151786

/-! ## A151786.P9019782110468843575

`A167303(A001316(n+1)/2)`
-/

namespace A151786.P9019782110468843575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167303 (SequenceMachineLib.roundAway ((A001316 (n + 1) : ℚ) / 2)).toNat

end

end A151786.P9019782110468843575

namespace A151786

/-- `A167303(A001316(n+1)/2)` -/
def P9019782110468843575.Spec : Prop :=
  ∀ n, P9019782110468843575.a n = A151786 (n + 1)

end A151786

/-! ## A151786.P17099023818014351498

`A048896(n)*A151783(n+1)`
-/

namespace A151786.P17099023818014351498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048896 n * A151783 (n + 1)

end

end A151786.P17099023818014351498

namespace A151786

/-- `A048896(n)*A151783(n+1)` -/
def P17099023818014351498.Spec : Prop :=
  ∀ n, P17099023818014351498.a n = A151786 (n + 1)

end A151786

/-!
# A151787: a(1)=1; for n > 1, a(n)=3*2^{wt(n-1)-1}.

The programs for A151787, the canonical program `A151787.P3022189616092416365` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A151787 has offset 1).

The definition of A151787 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A151787.P10318368502948875159

`char[2^n]+2*a(and(n, n-1))` with `a(0)=1`
-/

namespace A151787.P10318368502948875159
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (if ∃ j, f1 j = n then 1 else 0) + 2 * a (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat

end

end A151787.P10318368502948875159

namespace A151787

/-- `char[2^n]+2*a(and(n, n-1))` -/
def P10318368502948875159.Spec : Prop :=
  ∀ n, (P10318368502948875159.a n : ℤ) = A151787 (n + 1)

end A151787

/-! ## A151787.P14723138273812129364

`or(2*a(and(n, n-1)), char[2^n])` with `a(0)=1`
-/

namespace A151787.P14723138273812129364
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.lor (2 * a (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat) (if ∃ j, f1 j = n then 1 else 0)

end

end A151787.P14723138273812129364

namespace A151787

/-- `or(2*a(and(n, n-1)), char[2^n])` -/
def P14723138273812129364.Spec : Prop :=
  ∀ n, (P14723138273812129364.a n : ℤ) = A151787 (n + 1)

end A151787

/-! ## A151787.P6438301390122057332

`xor(2*a(and(n, n-1)), char[2^n])` with `a(0)=1`
-/

namespace A151787.P6438301390122057332
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.xor (2 * a (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat) (if ∃ j, f1 j = n then 1 else 0)

end

end A151787.P6438301390122057332

namespace A151787

/-- `xor(2*a(and(n, n-1)), char[2^n])` -/
def P6438301390122057332.Spec : Prop :=
  ∀ n, (P6438301390122057332.a n : ℤ) = A151787 (n + 1)

end A151787

/-! ## A151787.P3022189616092416365

`floor(A160713(n)/2)`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A151787

/-- `floor(A160713(n)/2)` -/
def P3022189616092416365.Spec : Prop :=
  ∀ n, P3022189616092416365.a n = A151787 (n + 1)

theorem P3022189616092416365.correct : P3022189616092416365.Spec := by
  intro n
  simp only [A151787, Nat.add_sub_cancel]

end A151787

/-! ## A151787.P295345490345936446

`floor(3*A001316(n)/2)`
-/

namespace A151787.P295345490345936446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(3 * A001316 n : ℚ) / 2⌋

end

end A151787.P295345490345936446

namespace A151787

/-- `floor(3*A001316(n)/2)` -/
def P295345490345936446.Spec : Prop :=
  ∀ n, P295345490345936446.a n = A151787 (n + 1)

end A151787

/-! ## A151787.P5264362552066785926

`A001969(a(and(n, n-1))+1)` with `a(0)=1`
-/

namespace A151787.P5264362552066785926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A001969 (a (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat + 1).toNat

end

end A151787.P5264362552066785926

namespace A151787

/-- `A001969(a(and(n, n-1))+1)` -/
def P5264362552066785926.Spec : Prop :=
  ∀ n, P5264362552066785926.a n = A151787 (n + 1)

end A151787

/-! ## A151787.P11596018717554936152

`3*A000010(2*a(and(n, n-1)))` with `a(0)=1`
-/

namespace A151787.P11596018717554936152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  3 * A000010 (2 * a (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat).toNat

end

end A151787.P11596018717554936152

namespace A151787

/-- `3*A000010(2*a(and(n, n-1)))` -/
def P11596018717554936152.Spec : Prop :=
  ∀ n, P11596018717554936152.a n = A151787 (n + 1)

end A151787

/-! ## A151787.P1498583407434573453

`A001175(A001316(n))`
-/

namespace A151787.P1498583407434573453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001175 (A001316 n).toNat

end

end A151787.P1498583407434573453

namespace A151787

/-- `A001175(A001316(n))` -/
def P1498583407434573453.Spec : Prop :=
  ∀ n, P1498583407434573453.a n = A151787 (n + 1)

end A151787

/-! ## A151787.P11011567084441524143

`A003945(A000120(n))`
-/

namespace A151787.P11011567084441524143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003945 (A000120 n).toNat

end

end A151787.P11011567084441524143

namespace A151787

/-- `A003945(A000120(n))` -/
def P11011567084441524143.Spec : Prop :=
  ∀ n, P11011567084441524143.a n = A151787 (n + 1)

end A151787

/-! ## A151787.P16617604669685205730

`A071044(A006257(n))`
-/

namespace A151787.P16617604669685205730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071044 (A006257 n).toNat

end

end A151787.P16617604669685205730

namespace A151787

/-- `A071044(A006257(n))` -/
def P16617604669685205730.Spec : Prop :=
  ∀ n, P16617604669685205730.a n = A151787 (n + 1)

end A151787

/-! ## A151787.P14643440134131799153

`A071044(A038573(n))`
-/

namespace A151787.P14643440134131799153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071044 (A038573 n).toNat

end

end A151787.P14643440134131799153

namespace A151787

/-- `A071044(A038573(n))` -/
def P14643440134131799153.Spec : Prop :=
  ∀ n, P14643440134131799153.a n = A151787 (n + 1)

end A151787

/-! ## A151787.P4898881215295854581

`A071044(A325401(n))`
-/

namespace A151787.P4898881215295854581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071044 (A325401 n).toNat

end

end A151787.P4898881215295854581

namespace A151787

/-- `A071044(A325401(n))` -/
def P4898881215295854581.Spec : Prop :=
  ∀ n, P4898881215295854581.a n = A151787 (n + 1)

end A151787

/-! ## A151787.P17875629706182663588

`A071044(A331856(n))`
-/

namespace A151787.P17875629706182663588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071044 (A331856 n).toNat

end

end A151787.P17875629706182663588

namespace A151787

/-- `A071044(A331856(n))` -/
def P17875629706182663588.Spec : Prop :=
  ∀ n, P17875629706182663588.a n = A151787 (n + 1)

end A151787

/-! ## A151787.P1620604498046086218

`A038572(A001316(n)+1)`
-/

namespace A151787.P1620604498046086218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038572 (A001316 n + 1).toNat

end

end A151787.P1620604498046086218

namespace A151787

/-- `A038572(A001316(n)+1)` -/
def P1620604498046086218.Spec : Prop :=
  ∀ n, P1620604498046086218.a n = A151787 (n + 1)

end A151787

/-! ## A151787.P9294027370942648180

`A071044(A001316(n)-1)`
-/

namespace A151787.P9294027370942648180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071044 (A001316 n - 1).toNat

end

end A151787.P9294027370942648180

namespace A151787

/-- `A071044(A001316(n)-1)` -/
def P9294027370942648180.Spec : Prop :=
  ∀ n, P9294027370942648180.a n = A151787 (n + 1)

end A151787

/-! ## A151787.P3727145110164196730

`A038572(A038573(n)+2)`
-/

namespace A151787.P3727145110164196730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038572 (A038573 n + 2).toNat

end

end A151787.P3727145110164196730

namespace A151787

/-- `A038572(A038573(n)+2)` -/
def P3727145110164196730.Spec : Prop :=
  ∀ n, P3727145110164196730.a n = A151787 (n + 1)

end A151787

/-! ## A151787.P12604954644245704599

`A105321(A001316(n)-1)`
-/

namespace A151787.P12604954644245704599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105321 (A001316 n - 1).toNat

end

end A151787.P12604954644245704599

namespace A151787

/-- `A105321(A001316(n)-1)` -/
def P12604954644245704599.Spec : Prop :=
  ∀ n, P12604954644245704599.a n = A151787 (n + 1)

end A151787

/-! ## A151787.P9235316645257265409

`A003188(A001316(2*n))`
-/

namespace A151787.P9235316645257265409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 (A001316 (2 * n)).toNat

end

end A151787.P9235316645257265409

namespace A151787

/-- `A003188(A001316(2*n))` -/
def P9235316645257265409.Spec : Prop :=
  ∀ n, P9235316645257265409.a n = A151787 (n + 1)

end A151787

/-! ## A151787.P760447264874496909

`A074323(2*A000120(n))`
-/

namespace A151787.P760447264874496909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074323 (2 * A000120 n).toNat

end

end A151787.P760447264874496909

namespace A151787

/-- `A074323(2*A000120(n))` -/
def P760447264874496909.Spec : Prop :=
  ∀ n, P760447264874496909.a n = A151787 (n + 1)

end A151787

/-! ## A151787.P10207711707238866879

`A285843(2*A000120(n))`
-/

namespace A151787.P10207711707238866879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285843 (2 * A000120 n).toNat

end

end A151787.P10207711707238866879

namespace A151787

/-- `A285843(2*A000120(n))` -/
def P10207711707238866879.Spec : Prop :=
  ∀ n, P10207711707238866879.a n = A151787 (n + 1)

end A151787

/-!
# A151788: Partial sums of A151787.

The programs for A151788, the canonical program `A151788.P582368776011827679` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A151788 has offset 1).

The definition of A151788 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A151788.P582368776011827679

`floor(∑[2*a(and(n, n-1))]/2)` with `a(0)=3`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A151788

/-- `floor(∑[2*a(and(n, n-1))]/2)` -/
def P582368776011827679.Spec : Prop :=
  ∀ n, P582368776011827679.a n = A151788 (n + 1)

theorem P582368776011827679.correct : P582368776011827679.Spec := by
  intro n
  simp only [A151788, Nat.add_sub_cancel]

end A151788

/-! ## A151788.P11597886178298866066

`∑[char[2^n]+2*a(and(n, n-1))]` with `a(0)=1`
-/

namespace A151788.P11597886178298866066
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  (if ∃ j, f2 j = n then 1 else 0) + 2 * f1 (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A151788.P11597886178298866066

namespace A151788

/-- `∑[char[2^n]+2*a(and(n, n-1))]` -/
def P11597886178298866066.Spec : Prop :=
  ∀ n, (P11597886178298866066.a n : ℤ) = A151788 (n + 1)

end A151788

/-! ## A151788.P13102748474574481347

`∑[A151787(n+1)]`
-/

namespace A151788.P13102748474574481347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151787 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A151788.P13102748474574481347

namespace A151788

/-- `∑[A151787(n+1)]` -/
def P13102748474574481347.Spec : Prop :=
  ∀ n, P13102748474574481347.a n = A151788 (n + 1)

end A151788

/-! ## A151788.P2108893378958034836

`3*A193494(n)+1`
-/

namespace A151788.P2108893378958034836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A193494 n + 1

end

end A151788.P2108893378958034836

namespace A151788

/-- `3*A193494(n)+1` -/
def P2108893378958034836.Spec : Prop :=
  ∀ n, P2108893378958034836.a n = A151788 (n + 1)

end A151788

/-! ## A151788.P3093668636152175094

`∑[A001969(a(and(n, n-1))+1)]` with `a(0)=1`
-/

namespace A151788.P3093668636152175094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A001969 (f1 (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A151788.P3093668636152175094

namespace A151788

/-- `∑[A001969(a(and(n, n-1))+1)]` -/
def P3093668636152175094.Spec : Prop :=
  ∀ n, P3093668636152175094.a n = A151788 (n + 1)

end A151788

/-! ## A151788.P9542238312754723393

`3*(A006046(n+1)-1)/2+1`
-/

namespace A151788.P9542238312754723393
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  3 * ((A006046 (n + 1) - 1 : ℚ) / 2) + 1

end

end A151788.P9542238312754723393

namespace A151788

/-- `3*(A006046(n+1)-1)/2+1` -/
def P9542238312754723393.Spec : Prop :=
  ∀ n, P9542238312754723393.a n = (A151788 (n + 1) : ℚ)

end A151788

/-! ## A151788.P8138491025569048736

`3*(∑[2^A000120(n)]-1)/2+1`
-/

namespace A151788.P8138491025569048736
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A000120 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  3 * ((∑ j ∈ Finset.range (n + 1), f1 j - 1) / 2) + 1

end

end A151788.P8138491025569048736

namespace A151788

/-- `3*(∑[2^A000120(n)]-1)/2+1` -/
def P8138491025569048736.Spec : Prop :=
  ∀ n, P8138491025569048736.a n = (A151788 (n + 1) : ℚ)

end A151788

/-! ## A151788.P11945122885372255608

`∑[A001175(A001316(n))]`
-/

namespace A151788.P11945122885372255608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001175 (A001316 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A151788.P11945122885372255608

namespace A151788

/-- `∑[A001175(A001316(n))]` -/
def P11945122885372255608.Spec : Prop :=
  ∀ n, P11945122885372255608.a n = A151788 (n + 1)

end A151788

/-! ## A151788.P1149070477312838796

`∑[A003945(A000120(n))]`
-/

namespace A151788.P1149070477312838796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003945 (A000120 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A151788.P1149070477312838796

namespace A151788

/-- `∑[A003945(A000120(n))]` -/
def P1149070477312838796.Spec : Prop :=
  ∀ n, P1149070477312838796.a n = A151788 (n + 1)

end A151788

/-! ## A151788.P8790562035217440044

`∑[A071044(A006257(n))]`
-/

namespace A151788.P8790562035217440044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071044 (A006257 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A151788.P8790562035217440044

namespace A151788

/-- `∑[A071044(A006257(n))]` -/
def P8790562035217440044.Spec : Prop :=
  ∀ n, P8790562035217440044.a n = A151788 (n + 1)

end A151788

/-! ## A151788.P1552068130193935071

`A233774(n)+A038573(n)`
-/

namespace A151788.P1552068130193935071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233774 n + A038573 n

end

end A151788.P1552068130193935071

namespace A151788

/-- `A233774(n)+A038573(n)` -/
def P1552068130193935071.Spec : Prop :=
  ∀ n, P1552068130193935071.a n = A151788 (n + 1)

end A151788

/-! ## A151788.P1329135589492508230

`∑[A038572(A001316(n)+1)]`
-/

namespace A151788.P1329135589492508230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038572 (A001316 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A151788.P1329135589492508230

namespace A151788

/-- `∑[A038572(A001316(n)+1)]` -/
def P1329135589492508230.Spec : Prop :=
  ∀ n, P1329135589492508230.a n = A151788 (n + 1)

end A151788

/-! ## A151788.P1649347540042619366

`∑[A071044(A001316(n)-1)]`
-/

namespace A151788.P1649347540042619366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071044 (A001316 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A151788.P1649347540042619366

namespace A151788

/-- `∑[A071044(A001316(n)-1)]` -/
def P1649347540042619366.Spec : Prop :=
  ∀ n, P1649347540042619366.a n = A151788 (n + 1)

end A151788

/-! ## A151788.P4333344956071756780

`∑[A038572(A038573(n)+2)]`
-/

namespace A151788.P4333344956071756780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038572 (A038573 n + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A151788.P4333344956071756780

namespace A151788

/-- `∑[A038572(A038573(n)+2)]` -/
def P4333344956071756780.Spec : Prop :=
  ∀ n, P4333344956071756780.a n = A151788 (n + 1)

end A151788

/-! ## A151788.P15231983806973739898

`∑[A105321(A001316(n)-1)]`
-/

namespace A151788.P15231983806973739898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105321 (A001316 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A151788.P15231983806973739898

namespace A151788

/-- `∑[A105321(A001316(n)-1)]` -/
def P15231983806973739898.Spec : Prop :=
  ∀ n, P15231983806973739898.a n = A151788 (n + 1)

end A151788

/-! ## A151788.P11238593169316185530

`A193494(n)+A006046(n+1)`
-/

namespace A151788.P11238593169316185530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193494 n + A006046 (n + 1)

end

end A151788.P11238593169316185530

namespace A151788

/-- `A193494(n)+A006046(n+1)` -/
def P11238593169316185530.Spec : Prop :=
  ∀ n, P11238593169316185530.a n = A151788 (n + 1)

end A151788

/-! ## A151788.P3772278872462354605

`A001316(n)+A233774(n)-1`
-/

namespace A151788.P3772278872462354605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 n + (A233774 n - 1)

end

end A151788.P3772278872462354605

namespace A151788

/-- `A001316(n)+A233774(n)-1` -/
def P3772278872462354605.Spec : Prop :=
  ∀ n, P3772278872462354605.a n = A151788 (n + 1)

end A151788

/-! ## A151788.P4170271342646431034

`A233774(n)+n-A048967(n)`
-/

namespace A151788.P4170271342646431034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233774 n + ((n : ℤ) - A048967 n)

end

end A151788.P4170271342646431034

namespace A151788

/-- `A233774(n)+n-A048967(n)` -/
def P4170271342646431034.Spec : Prop :=
  ∀ n, P4170271342646431034.a n = A151788 (n + 1)

end A151788

/-! ## A151788.P4690697625638621272

`A233774(n)+A048967(A001316(n))`
-/

namespace A151788.P4690697625638621272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233774 n + A048967 (A001316 n).toNat

end

end A151788.P4690697625638621272

namespace A151788

/-- `A233774(n)+A048967(A001316(n))` -/
def P4690697625638621272.Spec : Prop :=
  ∀ n, P4690697625638621272.a n = A151788 (n + 1)

end A151788

/-! ## A151788.P12859623630840245090

`∑[A003188(A131577(A000120(n)+1))]`
-/

namespace A151788.P12859623630840245090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 (A131577 (A000120 n + 1).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A151788.P12859623630840245090

namespace A151788

/-- `∑[A003188(A131577(A000120(n)+1))]` -/
def P12859623630840245090.Spec : Prop :=
  ∀ n, P12859623630840245090.a n = A151788 (n + 1)

end A151788

/-!
# A151789: a(1)=1; for n > 1, a(n)=5*4^{wt(n-1)-1}.

The programs for A151789, the canonical program `A151789.P17996027597902822247` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A151789 has offset 1).

The definition of A151789 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A151789.P18358659597162188190

`floor(4/acot(a(and(n, n-1))))` with `a(0)=1`
-/

namespace A151789.P18358659597162188190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊4 / SequenceMachineLib.acot (a (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat : ℝ)⌋

end

end A151789.P18358659597162188190

namespace A151789

/-- `floor(4/acot(a(and(n, n-1))))` -/
def P18358659597162188190.Spec : Prop :=
  ∀ n, P18358659597162188190.a n = A151789 (n + 1)

end A151789

/-! ## A151789.P6039483669187207742

`round(4/acot(a(and(n, n-1))))` with `a(0)=1`
-/

namespace A151789.P6039483669187207742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.roundAway (4 / SequenceMachineLib.acot (a (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat : ℝ))

end

end A151789.P6039483669187207742

namespace A151789

/-- `round(4/acot(a(and(n, n-1))))` -/
def P6039483669187207742.Spec : Prop :=
  ∀ n, P6039483669187207742.a n = A151789 (n + 1)

end A151789

/-! ## A151789.P17996027597902822247

`gcd(2, n+1)²*a(floor(n/2))` with `a(0)=1, a(1)=5`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A151789

/-- `gcd(2, n+1)²*a(floor(n/2))` -/
def P17996027597902822247.Spec : Prop :=
  ∀ n, (P17996027597902822247.a n : ℤ) = A151789 (n + 1)

theorem P17996027597902822247.correct : P17996027597902822247.Spec := by
  intro n
  simp only [A151789, Nat.add_sub_cancel]

end A151789

/-! ## A151789.P13789606366426011856

`4*a(n-1)/and(n, -n)²` with `a(0)=1, a(1)=5`
-/

namespace A151789.P13789606366426011856
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 5] fun n a =>
  4 * a (n - 1) / (Int.land (n : ℤ) (-(n : ℤ)) ^ 2 : ℚ)

end

end A151789.P13789606366426011856

namespace A151789

/-- `4*a(n-1)/and(n, -n)²` -/
def P13789606366426011856.Spec : Prop :=
  ∀ n, P13789606366426011856.a n = (A151789 (n + 1) : ℚ)

end A151789

/-! ## A151789.P15844737455555284114

`char[2^n]+4*a(and(n, n-1))` with `a(0)=1`
-/

namespace A151789.P15844737455555284114
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (if ∃ j, f1 j = n then 1 else 0) + 4 * a (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat

end

end A151789.P15844737455555284114

namespace A151789

/-- `char[2^n]+4*a(and(n, n-1))` -/
def P15844737455555284114.Spec : Prop :=
  ∀ n, (P15844737455555284114.a n : ℤ) = A151789 (n + 1)

end A151789

/-! ## A151789.P15654115852629648814

`or(4*a(and(n, n-1)), char[2^n])` with `a(0)=1`
-/

namespace A151789.P15654115852629648814
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.lor (4 * a (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat) (if ∃ j, f1 j = n then 1 else 0)

end

end A151789.P15654115852629648814

namespace A151789

/-- `or(4*a(and(n, n-1)), char[2^n])` -/
def P15654115852629648814.Spec : Prop :=
  ∀ n, (P15654115852629648814.a n : ℤ) = A151789 (n + 1)

end A151789

/-! ## A151789.P7699645208342568666

`xor(4*a(and(n, n-1)), char[2^n])` with `a(0)=1`
-/

namespace A151789.P7699645208342568666
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.xor (4 * a (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat) (if ∃ j, f1 j = n then 1 else 0)

end

end A151789.P7699645208342568666

namespace A151789

/-- `xor(4*a(and(n, n-1)), char[2^n])` -/
def P7699645208342568666.Spec : Prop :=
  ∀ n, (P7699645208342568666.a n : ℤ) = A151789 (n + 1)

end A151789

/-! ## A151789.P18403175819205044369

`4*a(n-1)/or(n, char[1]-n)²` with `a(0)=1, a(1)=5`
-/

namespace A151789.P18403175819205044369
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.rec [1, 5] fun n a =>
  4 * a (n - 1) / (Int.lor (n : ℤ) (((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) - (n : ℤ)) ^ 2 : ℚ)

end

end A151789.P18403175819205044369

namespace A151789

/-- `4*a(n-1)/or(n, char[1]-n)²` -/
def P18403175819205044369.Spec : Prop :=
  ∀ n, P18403175819205044369.a n = (A151789 (n + 1) : ℚ)

end A151789

/-! ## A151789.P5453928384470771764

`floor(5/4*A102376(n))`
-/

namespace A151789.P5453928384470771764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(5 : ℚ) / 4 * (A102376 n : ℚ)⌋

end

end A151789.P5453928384470771764

namespace A151789

/-- `floor(5/4*A102376(n))` -/
def P5453928384470771764.Spec : Prop :=
  ∀ n, P5453928384470771764.a n = A151789 (n + 1)

end A151789

/-! ## A151789.P17656041584140568417

`A003947(A000120(n))`
-/

namespace A151789.P17656041584140568417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003947 (A000120 n).toNat

end

end A151789.P17656041584140568417

namespace A151789

/-- `A003947(A000120(n))` -/
def P17656041584140568417.Spec : Prop :=
  ∀ n, P17656041584140568417.a n = A151789 (n + 1)

end A151789

/-! ## A151789.P6226917028605676976

`A032527(A001316(n))`
-/

namespace A151789.P6226917028605676976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032527 (A001316 n).toNat

end

end A151789.P6226917028605676976

namespace A151789

/-- `A032527(A001316(n))` -/
def P6226917028605676976.Spec : Prop :=
  ∀ n, P6226917028605676976.a n = A151789 (n + 1)

end A151789

/-! ## A151789.P8674096280447396368

`A269695(A038573(n))`
-/

namespace A151789.P8674096280447396368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269695 (A038573 n).toNat

end

end A151789.P8674096280447396368

namespace A151789

/-- `A269695(A038573(n))` -/
def P8674096280447396368.Spec : Prop :=
  ∀ n, P8674096280447396368.a n = A151789 (n + 1)

end A151789

/-! ## A151789.P8066761296144066664

`A269695(A246591(n))`
-/

namespace A151789.P8066761296144066664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269695 (A246591 n).toNat

end

end A151789.P8066761296144066664

namespace A151789

/-- `A269695(A246591(n))` -/
def P8066761296144066664.Spec : Prop :=
  ∀ n, P8066761296144066664.a n = A151789 (n + 1)

end A151789

/-! ## A151789.P4781028769538632926

`A269695(A331856(n))`
-/

namespace A151789.P4781028769538632926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269695 (A331856 n).toNat

end

end A151789.P4781028769538632926

namespace A151789

/-- `A269695(A331856(n))` -/
def P4781028769538632926.Spec : Prop :=
  ∀ n, P4781028769538632926.a n = A151789 (n + 1)

end A151789

/-! ## A151789.P3327462025225899397

`A000695(A151787(n+1))`
-/

namespace A151789.P3327462025225899397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000695 (A151787 (n + 1)).toNat

end

end A151789.P3327462025225899397

namespace A151789

/-- `A000695(A151787(n+1))` -/
def P3327462025225899397.Spec : Prop :=
  ∀ n, P3327462025225899397.a n = A151789 (n + 1)

end A151789

/-! ## A151789.P1705252629964547229

`A269695(A006257(n))`
-/

namespace A151789.P1705252629964547229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269695 (A006257 n).toNat

end

end A151789.P1705252629964547229

namespace A151789

/-- `A269695(A006257(n))` -/
def P1705252629964547229.Spec : Prop :=
  ∀ n, P1705252629964547229.a n = A151789 (n + 1)

end A151789

/-! ## A151789.P8154287813998971641

`A269695(A325401(n))`
-/

namespace A151789.P8154287813998971641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269695 (A325401 n).toNat

end

end A151789.P8154287813998971641

namespace A151789

/-- `A269695(A325401(n))` -/
def P8154287813998971641.Spec : Prop :=
  ∀ n, P8154287813998971641.a n = A151789 (n + 1)

end A151789

/-! ## A151789.P17443844079668122803

`A269695(A356354(n))`
-/

namespace A151789.P17443844079668122803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269695 (A356354 n).toNat

end

end A151789.P17443844079668122803

namespace A151789

/-- `A269695(A356354(n))` -/
def P17443844079668122803.Spec : Prop :=
  ∀ n, P17443844079668122803.a n = A151789 (n + 1)

end A151789

/-! ## A151789.P1417709735440305608

`A269695(A030101(n))`
-/

namespace A151789.P1417709735440305608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269695 (A030101 n).toNat

end

end A151789.P1417709735440305608

namespace A151789

/-- `A269695(A030101(n))` -/
def P1417709735440305608.Spec : Prop :=
  ∀ n, P1417709735440305608.a n = A151789 (n + 1)

end A151789

/-! ## A151789.P7375638561560015550

`A269695(A327296(n))`
-/

namespace A151789.P7375638561560015550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269695 (A327296 n).toNat

end

end A151789.P7375638561560015550

namespace A151789

/-- `A269695(A327296(n))` -/
def P7375638561560015550.Spec : Prop :=
  ∀ n, P7375638561560015550.a n = A151789 (n + 1)

end A151789

/-!
# A151790: Partial sums of A151789.

The programs for A151790, the canonical program `A151790.P8642806527336014293` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A151790 has offset 1).

The definition of A151790 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A151790.P11988978265177450981

`∑[floor(4/acot(a(and(n, n-1))))]` with `a(0)=1`
-/

namespace A151790.P11988978265177450981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  ⌊4 / SequenceMachineLib.acot (f1 (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A151790.P11988978265177450981

namespace A151790

/-- `∑[floor(4/acot(a(and(n, n-1))))]` -/
def P11988978265177450981.Spec : Prop :=
  ∀ n, P11988978265177450981.a n = A151790 (n + 1)

end A151790

/-! ## A151790.P7529822625095615017

`∑[char[2^n]+4*a(and(n, n-1))]` with `a(0)=1`
-/

namespace A151790.P7529822625095615017
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  (if ∃ j, f2 j = n then 1 else 0) + 4 * f1 (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A151790.P7529822625095615017

namespace A151790

/-- `∑[char[2^n]+4*a(and(n, n-1))]` -/
def P7529822625095615017.Spec : Prop :=
  ∀ n, (P7529822625095615017.a n : ℤ) = A151790 (n + 1)

end A151790

/-! ## A151790.P8642806527336014293

`∑[A151789(n+1)]`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A151790

/-- `∑[A151789(n+1)]` -/
def P8642806527336014293.Spec : Prop :=
  ∀ n, P8642806527336014293.a n = A151790 (n + 1)

theorem P8642806527336014293.correct : P8642806527336014293.Spec := by
  intro n
  simp only [A151790, Nat.add_sub_cancel]

end A151790

/-! ## A151790.P17100595031342013411

`∑[floor(5/4*A102376(n))]`
-/

namespace A151790.P17100595031342013411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(5 : ℚ) / 4 * (A102376 n : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A151790.P17100595031342013411

namespace A151790

/-- `∑[floor(5/4*A102376(n))]` -/
def P17100595031342013411.Spec : Prop :=
  ∀ n, P17100595031342013411.a n = A151790 (n + 1)

end A151790

/-! ## A151790.P1711717524857386785

`floor(A116520(2*(n+1))/4)`
-/

namespace A151790.P1711717524857386785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A116520 (2 * (n + 1)) : ℚ) / 4⌋

end

end A151790.P1711717524857386785

namespace A151790

/-- `floor(A116520(2*(n+1))/4)` -/
def P1711717524857386785.Spec : Prop :=
  ∀ n, P1711717524857386785.a n = A151790 (n + 1)

end A151790

/-! ## A151790.P1102689414484560103

`A001068(A116520(n+1))`
-/

namespace A151790.P1102689414484560103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001068 (A116520 (n + 1)).toNat

end

end A151790.P1102689414484560103

namespace A151790

/-- `A001068(A116520(n+1))` -/
def P1102689414484560103.Spec : Prop :=
  ∀ n, P1102689414484560103.a n = A151790 (n + 1)

end A151790

/-!
# A151791: a(1)=1; for n > 1, a(n) = 7*6^(wt(n-1)-1).

The programs for A151791, the canonical program `A151791.P13478145596251331691` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A151791 has offset 1).

The definition of A151791 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A151791.P2517540824492927468

`6^(n%2)*a(floor(n/2))` with `a(0)=1, a(1)=7`
-/

namespace A151791.P2517540824492927468
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 7] fun n a =>
  6 ^ (n % 2) * a ⌊(n : ℚ) / 2⌋.toNat

end

end A151791.P2517540824492927468

namespace A151791

/-- `6^(n%2)*a(floor(n/2))` -/
def P2517540824492927468.Spec : Prop :=
  ∀ n, (P2517540824492927468.a n : ℤ) = A151791 (n + 1)

end A151791

/-! ## A151791.P17647197305225619523

`char[2^n]+6*a(and(n, n-1))` with `a(0)=1`
-/

namespace A151791.P17647197305225619523
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (if ∃ j, f1 j = n then 1 else 0) + 6 * a (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat

end

end A151791.P17647197305225619523

namespace A151791

/-- `char[2^n]+6*a(and(n, n-1))` -/
def P17647197305225619523.Spec : Prop :=
  ∀ n, (P17647197305225619523.a n : ℤ) = A151791 (n + 1)

end A151791

/-! ## A151791.P13763073235239496414

`or(6*a(and(n, n-1)), char[2^n])` with `a(0)=1`
-/

namespace A151791.P13763073235239496414
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.lor (6 * a (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat) (if ∃ j, f1 j = n then 1 else 0)

end

end A151791.P13763073235239496414

namespace A151791

/-- `or(6*a(and(n, n-1)), char[2^n])` -/
def P13763073235239496414.Spec : Prop :=
  ∀ n, (P13763073235239496414.a n : ℤ) = A151791 (n + 1)

end A151791

/-! ## A151791.P11104674468516447934

`xor(6*a(and(n, n-1)), char[2^n])` with `a(0)=1`
-/

namespace A151791.P11104674468516447934
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.xor (6 * a (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat) (if ∃ j, f1 j = n then 1 else 0)

end

end A151791.P11104674468516447934

namespace A151791

/-- `xor(6*a(and(n, n-1)), char[2^n])` -/
def P11104674468516447934.Spec : Prop :=
  ∀ n, (P11104674468516447934.a n : ℤ) = A151791 (n + 1)

end A151791

/-! ## A151791.P13478145596251331691

`A003949(∑[∑{e}[xor(n, -n), 2-#]])`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A151791

/-- `A003949(∑[∑{e}[xor(n, -n), 2-#]])` -/
def P13478145596251331691.Spec : Prop :=
  ∀ n, P13478145596251331691.a n = A151791 (n + 1)

theorem P13478145596251331691.correct : P13478145596251331691.Spec := by
  intro n
  simp only [A151791, Nat.add_sub_cancel]

end A151791

/-! ## A151791.P5183550090424259841

`A168684(∑[∑{e}[xor(n, -n), 2-#]])`
-/

namespace A151791.P5183550090424259841
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (-(n : ℤ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n).natAbs, (2 - (Nat.factorization (f2 n).natAbs p : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168684 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A151791.P5183550090424259841

namespace A151791

/-- `A168684(∑[∑{e}[xor(n, -n), 2-#]])` -/
def P5183550090424259841.Spec : Prop :=
  ∀ n, P5183550090424259841.a n = A151791 (n + 1)

end A151791

/-! ## A151791.P1468646707205786831

`A003949(A000120(n))`
-/

namespace A151791.P1468646707205786831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003949 (A000120 n).toNat

end

end A151791.P1468646707205786831

namespace A151791

/-- `A003949(A000120(n))` -/
def P1468646707205786831.Spec : Prop :=
  ∀ n, P1468646707205786831.a n = A151791 (n + 1)

end A151791

/-! ## A151791.P13923263782226331783

`A033043(A151787(n+1))`
-/

namespace A151791.P13923263782226331783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033043 (A151787 (n + 1)).toNat

end

end A151791.P13923263782226331783

namespace A151791

/-- `A033043(A151787(n+1))` -/
def P13923263782226331783.Spec : Prop :=
  ∀ n, P13923263782226331783.a n = A151791 (n + 1)

end A151791

/-! ## A151791.P11403994321755126319

`A037454(A147582(n+1))`
-/

namespace A151791.P11403994321755126319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037454 (A147582 (n + 1)).toNat

end

end A151791.P11403994321755126319

namespace A151791

/-- `A037454(A147582(n+1))` -/
def P11403994321755126319.Spec : Prop :=
  ∀ n, P11403994321755126319.a n = A151791 (n + 1)

end A151791

/-! ## A151791.P91531767478119062

`A037460(A151789(n+1))`
-/

namespace A151791.P91531767478119062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037460 (A151789 (n + 1)).toNat

end

end A151791.P91531767478119062

namespace A151791

/-- `A037460(A151789(n+1))` -/
def P91531767478119062.Spec : Prop :=
  ∀ n, P91531767478119062.a n = A151791 (n + 1)

end A151791

/-!
# A151792: Partial sums of A151791.

The programs for A151792, the canonical program `A151792.P3133912318885071183` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A151792 has offset 1).

The definition of A151792 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A151792.P2259520229335891051

`∑[6^(n%2)*a(floor(n/2))]` with `a(0)=1, a(1)=7`
-/

namespace A151792.P2259520229335891051
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 7] fun n f1 =>
  6 ^ (n % 2) * f1 ⌊(n : ℚ) / 2⌋.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A151792.P2259520229335891051

namespace A151792

/-- `∑[6^(n%2)*a(floor(n/2))]` -/
def P2259520229335891051.Spec : Prop :=
  ∀ n, (P2259520229335891051.a n : ℤ) = A151792 (n + 1)

end A151792

/-! ## A151792.P11614249965985630814

`∑[char[2^n]+6*a(and(n, n-1))]` with `a(0)=1`
-/

namespace A151792.P11614249965985630814
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  (if ∃ j, f2 j = n then 1 else 0) + 6 * f1 (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A151792.P11614249965985630814

namespace A151792

/-- `∑[char[2^n]+6*a(and(n, n-1))]` -/
def P11614249965985630814.Spec : Prop :=
  ∀ n, (P11614249965985630814.a n : ℤ) = A151792 (n + 1)

end A151792

/-! ## A151792.P3133912318885071183

`∑[A151791(n+1)]`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A151792

/-- `∑[A151791(n+1)]` -/
def P3133912318885071183.Spec : Prop :=
  ∀ n, P3133912318885071183.a n = A151792 (n + 1)

theorem P3133912318885071183.correct : P3133912318885071183.Spec := by
  intro n
  simp only [A151792, Nat.add_sub_cancel]

end A151792

/-! ## A151792.P16019401626149119748

`∑[A003949(A000120(n))]`
-/

namespace A151792.P16019401626149119748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003949 (A000120 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A151792.P16019401626149119748

namespace A151792

/-- `∑[A003949(A000120(n))]` -/
def P16019401626149119748.Spec : Prop :=
  ∀ n, P16019401626149119748.a n = A151792 (n + 1)

end A151792

/-! ## A151792.P6375369090943639413

`floor(A116522(2*(n+1))/6)`
-/

namespace A151792.P6375369090943639413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A116522 (2 * (n + 1)) : ℚ) / 6⌋

end

end A151792.P6375369090943639413

namespace A151792

/-- `floor(A116522(2*(n+1))/6)` -/
def P6375369090943639413.Spec : Prop :=
  ∀ n, P6375369090943639413.a n = A151792 (n + 1)

end A151792

/-! ## A151792.P12051691707302210586

`round(A116522(2*n+2)/6)`
-/

namespace A151792.P12051691707302210586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A116522 (2 * n + 2) : ℚ) / 6)

end

end A151792.P12051691707302210586

namespace A151792

/-- `round(A116522(2*n+2)/6)` -/
def P12051691707302210586.Spec : Prop :=
  ∀ n, P12051691707302210586.a n = A151792 (n + 1)

end A151792

/-!
# A151793: Partial sums of A151782.

The programs for A151793, the canonical program `A151793.P2092265182392595412` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A151793 has offset 1).

The definition of A151793 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A151793.P7663661656529628426

`∑[floor(7/acot(a(and(n, n-1))))]` with `a(0)=1`
-/

namespace A151793.P7663661656529628426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  ⌊7 / SequenceMachineLib.acot (f1 (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A151793.P7663661656529628426

namespace A151793

/-- `∑[floor(7/acot(a(and(n, n-1))))]` -/
def P7663661656529628426.Spec : Prop :=
  ∀ n, P7663661656529628426.a n = A151793 (n + 1)

end A151793

/-! ## A151793.P17454728793455505883

`∑[7^(n%2)*a(floor(n/2))]` with `a(0)=1, a(1)=8`
-/

namespace A151793.P17454728793455505883
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 8] fun n f1 =>
  7 ^ (n % 2) * f1 ⌊(n : ℚ) / 2⌋.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A151793.P17454728793455505883

namespace A151793

/-- `∑[7^(n%2)*a(floor(n/2))]` -/
def P17454728793455505883.Spec : Prop :=
  ∀ n, (P17454728793455505883.a n : ℤ) = A151793 (n + 1)

end A151793

/-! ## A151793.P11947381590203609960

`∑[char[2^n]+7*a(and(n, n-1))]` with `a(0)=1`
-/

namespace A151793.P11947381590203609960
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  (if ∃ j, f2 j = n then 1 else 0) + 7 * f1 (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A151793.P11947381590203609960

namespace A151793

/-- `∑[char[2^n]+7*a(and(n, n-1))]` -/
def P11947381590203609960.Spec : Prop :=
  ∀ n, (P11947381590203609960.a n : ℤ) = A151793 (n + 1)

end A151793

/-! ## A151793.P2092265182392595412

`∑[A151782(n+1)]`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A151793

/-- `∑[A151782(n+1)]` -/
def P2092265182392595412.Spec : Prop :=
  ∀ n, P2092265182392595412.a n = A151793 (n + 1)

theorem P2092265182392595412.correct : P2092265182392595412.Spec := by
  intro n
  simp only [A151793, Nat.add_sub_cancel]

end A151793

/-! ## A151793.P16680698206954816502

`∑[floor(A160429(n+1)/7)]`
-/

namespace A151793.P16680698206954816502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A160429 (n + 1) : ℚ) / 7⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A151793.P16680698206954816502

namespace A151793

/-- `∑[floor(A160429(n+1)/7)]` -/
def P16680698206954816502.Spec : Prop :=
  ∀ n, P16680698206954816502.a n = A151793 (n + 1)

end A151793

/-!
# A151794: a(1)=2, a(2)=4, a(3)=6; a(n+3) = a(n+2)+ 2*a(n), n>=1.

The programs for A151794, the canonical program `A151794.P9394920412898082930` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A151794 has offset 1).

The definition of A151794 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A151794.P12836800720069877420

`ogf((2+2x-2x^2)/(1-x-2x^2))`
-/

namespace A151794.P12836800720069877420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 2, -2] [1, -1, -2] n

end

end A151794.P12836800720069877420

namespace A151794

/-- `ogf((2+2x-2x^2)/(1-x-2x^2))` -/
def P12836800720069877420.Spec : Prop :=
  ∀ n, P12836800720069877420.a n = A151794 (n + 1)

end A151794

/-! ## A151794.P9394920412898082930

`lcm(2, Δ[2*(n-a(n-1))])` with `a(0)=1`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A151794

/-- `lcm(2, Δ[2*(n-a(n-1))])` -/
def P9394920412898082930.Spec : Prop :=
  ∀ n, (P9394920412898082930.a n : ℤ) = A151794 (n + 1)

theorem P9394920412898082930.correct : P9394920412898082930.Spec := by
  intro n
  simp only [A151794, Nat.add_sub_cancel]

end A151794

/-! ## A151794.P1675964102295701206

`2*(a(n-1)-(-1)^n)` with `a(0)=2, a(1)=4`
-/

namespace A151794.P1675964102295701206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 4] fun n a =>
  2 * (a (n - 1) - (-1) ^ n)

end

end A151794.P1675964102295701206

namespace A151794

/-- `2*(a(n-1)-(-1)^n)` -/
def P1675964102295701206.Spec : Prop :=
  ∀ n, P1675964102295701206.a n = A151794 (n + 1)

end A151794

/-! ## A151794.P5273412603789642268

`a(n-1)+2*a(n-2)` with `a(0)=2, a(1)=4, a(2)=6`
-/

namespace A151794.P5273412603789642268
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 4, 6] fun n a =>
  a (n - 1) + 2 * a (n - 2)

end

end A151794.P5273412603789642268

namespace A151794

/-- `a(n-1)+2*a(n-2)` -/
def P5273412603789642268.Spec : Prop :=
  ∀ n, (P5273412603789642268.a n : ℤ) = A151794 (n + 1)

end A151794

/-! ## A151794.P7117690562930564852

`a(n-2)+a(n-1)+a(n-2)` with `a(0)=2, a(1)=4, a(2)=6`
-/

namespace A151794.P7117690562930564852
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 4, 6] fun n a =>
  a (n - 2) + (a (n - 1) + a (n - 2))

end

end A151794.P7117690562930564852

namespace A151794

/-- `a(n-2)+a(n-1)+a(n-2)` -/
def P7117690562930564852.Spec : Prop :=
  ∀ n, (P7117690562930564852.a n : ℤ) = A151794 (n + 1)

end A151794

/-! ## A151794.P3728773919566716371

`lcm(2, A084214(n+1))`
-/

namespace A151794.P3728773919566716371
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A084214 (n + 1))

end

end A151794.P3728773919566716371

namespace A151794

/-- `lcm(2, A084214(n+1))` -/
def P3728773919566716371.Spec : Prop :=
  ∀ n, (P3728773919566716371.a n : ℤ) = A151794 (n + 1)

end A151794

/-! ## A151794.P13297604815603749880

`abs(2*(2-A140360(n)))`
-/

namespace A151794.P13297604815603749880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 * (2 - A140360 n)|

end

end A151794.P13297604815603749880

namespace A151794

/-- `abs(2*(2-A140360(n)))` -/
def P13297604815603749880.Spec : Prop :=
  ∀ n, P13297604815603749880.a n = A151794 (n + 1)

end A151794

/-! ## A151794.P7103428081607094959

`2*floor(A171231(n)/2)`
-/

namespace A151794.P7103428081607094959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ⌊(A171231 n : ℚ) / 2⌋

end

end A151794.P7103428081607094959

namespace A151794

/-- `2*floor(A171231(n)/2)` -/
def P7103428081607094959.Spec : Prop :=
  ∀ n, P7103428081607094959.a n = A151794 (n + 1)

end A151794

/-! ## A151794.P13264667685442069018

`record[A078008(n)+ceil(2^(n-1))]`
-/

namespace A151794.P13264667685442069018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078008 n + ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A151794.P13264667685442069018

namespace A151794

/-- `record[A078008(n)+ceil(2^(n-1))]` -/
def P13264667685442069018.Spec : Prop :=
  ∀ n, P13264667685442069018.a n = A151794 (n + 1)

end A151794

/-! ## A151794.P16452761914329210032

`A062157(n)+A048573(n)`
-/

namespace A151794.P16452761914329210032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 n + A048573 n

end

end A151794.P16452761914329210032

namespace A151794

/-- `A062157(n)+A048573(n)` -/
def P16452761914329210032.Spec : Prop :=
  ∀ n, P16452761914329210032.a n = A151794 (n + 1)

end A151794

/-! ## A151794.P10457068981178020997

`A128209(n)+A026644(n)`
-/

namespace A151794.P10457068981178020997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128209 n + A026644 n

end

end A151794.P10457068981178020997

namespace A151794

/-- `A128209(n)+A026644(n)` -/
def P10457068981178020997.Spec : Prop :=
  ∀ n, P10457068981178020997.a n = A151794 (n + 1)

end A151794

/-! ## A151794.P17281065210137916819

`A283642(n)+A152046(n)`
-/

namespace A151794.P17281065210137916819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283642 n + A152046 n

end

end A151794.P17281065210137916819

namespace A151794

/-- `A283642(n)+A152046(n)` -/
def P17281065210137916819.Spec : Prop :=
  ∀ n, P17281065210137916819.a n = A151794 (n + 1)

end A151794

/-! ## A151794.P3189062914227308640

`A277955(n)+A255047(n)`
-/

namespace A151794.P3189062914227308640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277955 n + A255047 n

end

end A151794.P3189062914227308640

namespace A151794

/-- `A277955(n)+A255047(n)` -/
def P3189062914227308640.Spec : Prop :=
  ∀ n, P3189062914227308640.a n = A151794 (n + 1)

end A151794

/-! ## A151794.P18383464921660775317

`A378105(n)+A369491(n)`
-/

namespace A151794.P18383464921660775317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378105 n + A369491 n

end

end A151794.P18383464921660775317

namespace A151794

/-- `A378105(n)+A369491(n)` -/
def P18383464921660775317.Spec : Prop :=
  ∀ n, P18383464921660775317.a n = A151794 (n + 1)

end A151794

/-! ## A151794.P12666425965342639013

`A095121(n)-A153772(n)`
-/

namespace A151794.P12666425965342639013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095121 n - A153772 n

end

end A151794.P12666425965342639013

namespace A151794

/-- `A095121(n)-A153772(n)` -/
def P12666425965342639013.Spec : Prop :=
  ∀ n, P12666425965342639013.a n = A151794 (n + 1)

end A151794

/-! ## A151794.P12934272354545899440

`A198633(n)-A078008(n)`
-/

namespace A151794.P12934272354545899440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198633 n - A078008 n

end

end A151794.P12934272354545899440

namespace A151794

/-- `A198633(n)-A078008(n)` -/
def P12934272354545899440.Spec : Prop :=
  ∀ n, P12934272354545899440.a n = A151794 (n + 1)

end A151794

/-! ## A151794.P2395786982963049708

`A014113(n)+Δ[A155559(n)]`
-/

namespace A151794.P2395786982963049708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155559 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014113 n + (f1 (n + 1) - f1 n)

end

end A151794.P2395786982963049708

namespace A151794

/-- `A014113(n)+Δ[A155559(n)]` -/
def P2395786982963049708.Spec : Prop :=
  ∀ n, P2395786982963049708.a n = A151794 (n + 1)

end A151794

/-! ## A151794.P7622474247110101509

`A001045(n)+A026644(n)+1`
-/

namespace A151794.P7622474247110101509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 n + (A026644 n + 1)

end

end A151794.P7622474247110101509

namespace A151794

/-- `A001045(n)+A026644(n)+1` -/
def P7622474247110101509.Spec : Prop :=
  ∀ n, P7622474247110101509.a n = A151794 (n + 1)

end A151794

/-! ## A151794.P8669712462557612042

`A084214(n+1)+A000007(n)`
-/

namespace A151794.P8669712462557612042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084214 (n + 1) + A000007 n

end

end A151794.P8669712462557612042

namespace A151794

/-- `A084214(n+1)+A000007(n)` -/
def P8669712462557612042.Spec : Prop :=
  ∀ n, P8669712462557612042.a n = A151794 (n + 1)

end A151794

/-! ## A151794.P2325879056671591885

`A152046(n)+A001045(n+2)`
-/

namespace A151794.P2325879056671591885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152046 n + A001045 (n + 2)

end

end A151794.P2325879056671591885

namespace A151794

/-- `A152046(n)+A001045(n+2)` -/
def P2325879056671591885.Spec : Prop :=
  ∀ n, P2325879056671591885.a n = A151794 (n + 1)

end A151794

/-!
# A151795: Let P = g.f. for A151755, then g.f. for present sequence is G = (P-(x^7+x^15+x^31+x^63+...))/(1+2*x).

The programs for A151795, there is no canonical definition to state claims against.
-/

/-! ## A151795.P9483031902116043603

`A151755(n-(2^floor(log2(n+1))-1))`
-/

namespace A151795.P9483031902116043603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151755 ((n : ℤ) - ((2 ^ Nat.log 2 (n + 1) : ℤ) - 1)).toNat

end

end A151795.P9483031902116043603

/-! ## A151795.P574275657435230726

`dr(A151755(A053645(n+1)))`
-/

namespace A151795.P574275657435230726
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A151755 (A053645 (n + 1)).toNat)

end

end A151795.P574275657435230726

/-! ## A151795.P17713274234798720448

`A010194(n)*A151755(A053645(n+1))`
-/

namespace A151795.P17713274234798720448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010194 n * A151755 (A053645 (n + 1)).toNat

end

end A151795.P17713274234798720448

/-! ## A151795.P15315108707580109435

`A057427(n)*A151755(A053645(n+1))`
-/

namespace A151795.P15315108707580109435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A151755 (A053645 (n + 1)).toNat

end

end A151795.P15315108707580109435

/-! ## A151795.P15055192740773445453

`A151755(A053645(n+1))/A054977(n)`
-/

namespace A151795.P15055192740773445453
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A151755 (A053645 (n + 1)).toNat : ℚ) / (A054977 n : ℚ)

end

end A151795.P15055192740773445453

/-! ## A151795.P10479552195101504763

`A151755(A053645(n+1))%A046691(n)`
-/

namespace A151795.P10479552195101504763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A151755 (A053645 (n + 1)).toNat) (A046691 n)

end

end A151795.P10479552195101504763

/-! ## A151795.P13008097014338802439

`lcm(A033999(n), A151755(A053645(n+1)))`
-/

namespace A151795.P13008097014338802439
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A151755 (A053645 (n + 1)).toNat)

end

end A151795.P13008097014338802439

/-! ## A151795.P8181670277734179514

`and(A057428(n), A151755(A053645(n+1)))`
-/

namespace A151795.P8181670277734179514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A057428 n) (A151755 (A053645 (n + 1)).toNat)

end

end A151795.P8181670277734179514

/-! ## A151795.P3971590673624135787

`A151755(A053645(n+1))/(A000007(n)+1)`
-/

namespace A151795.P3971590673624135787
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A151755 (A053645 (n + 1)).toNat : ℚ) / (A000007 n + 1 : ℚ)

end

end A151795.P3971590673624135787

/-! ## A151795.P14071939371579425088

`A151755(A053645(n+1))/A057979(8*n)`
-/

namespace A151795.P14071939371579425088
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A151755 (A053645 (n + 1)).toNat : ℚ) / (A057979 (8 * n) : ℚ)

end

end A151795.P14071939371579425088

/-! ## A151795.P1450120205211494811

`A151755(A053645(n+1))^(A341620(n+1)+1)`
-/

namespace A151795.P1450120205211494811
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A151755 (A053645 (n + 1)).toNat : ℚ) ^ (A341620 (n + 1) + 1 : ℤ)

end

end A151795.P1450120205211494811

/-! ## A151795.P16494376284703625593

`and(1, A000040(n+1))*A151755(A053645(n+1))`
-/

namespace A151795.P16494376284703625593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A000040 (n + 1)) * A151755 (A053645 (n + 1)).toNat

end

end A151795.P16494376284703625593

/-! ## A151795.P6980528599229234261

`A000041(gcd(n, n+1))*A151755(A053645(n+1))`
-/

namespace A151795.P6980528599229234261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.gcd n (n + 1)) * A151755 (A053645 (n + 1)).toNat

end

end A151795.P6980528599229234261

/-! ## A151795.P1050266382992832366

`A151755(A053645(n+1))^A247507(∑{e}[n+1, #])`
-/

namespace A151795.P1050266382992832366
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A151755 (A053645 (n + 1)).toNat : ℚ) ^ (A247507 (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p) : ℤ)

end

end A151795.P1050266382992832366

/-! ## A151795.P11496025789141655357

`A151755(A053645(n+1))/A000010(n*char[9]+1)`
-/

namespace A151795.P11496025789141655357
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A151755 (A053645 (n + 1)).toNat : ℚ) / (A000010 (n * (if ∃ j, f1 j = n then 1 else 0) + 1) : ℚ)

end

end A151795.P11496025789141655357

/-! ## A151795.P12889078901969357833

`A151755(A053645(n+1))/A006530(n*char[9]+1)`
-/

namespace A151795.P12889078901969357833
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A151755 (A053645 (n + 1)).toNat : ℚ) / (A006530 (n * (if ∃ j, f1 j = n then 1 else 0) + 1) : ℚ)

end

end A151795.P12889078901969357833

/-! ## A151795.P1583879559138789175

`A151755(A053645(n+1))^A247502(∏{e}[n+1, #+1])`
-/

namespace A151795.P1583879559138789175
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A151755 (A053645 (n + 1)).toNat : ℚ) ^ (A247502 (∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1)) : ℤ)

end

end A151795.P1583879559138789175

/-! ## A151795.P15840964784267752234

`A151755(A053645(n+1))-a(A248218(n+1)-1)` with `a(0)=0, a(1)=0`
-/

namespace A151795.P15840964784267752234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n a =>
  A151755 (A053645 (n + 1)).toNat - a (A248218 (n + 1) - 1).toNat

end

end A151795.P15840964784267752234

/-! ## A151795.P17777551231839741211

`A007318(A291336(n))*A151755(A053645(n+1))`
-/

namespace A151795.P17777551231839741211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A291336 n).toNat * A151755 (A053645 (n + 1)).toNat

end

end A151795.P17777551231839741211

/-!
# A151797: Numbers which belong to just one of the two sequences A030229, A161918.

The programs for A151797, there is no canonical definition to state claims against.
-/

/-! ## A151797.P16524601972804096300

`∪[A046386(n+1), A067070(n+1)]`
-/

namespace A151797.P16524601972804096300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046386 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067070 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A151797.P16524601972804096300

/-! ## A151797.P9109922796887639935

`∪[A046386(n+1), A173543(n+1)]`
-/

namespace A151797.P9109922796887639935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046386 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173543 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A151797.P9109922796887639935

/-! ## A151797.P7038266107127069198

`∪[A046386(n+1), A254961(n+1)]`
-/

namespace A151797.P7038266107127069198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046386 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254961 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A151797.P7038266107127069198

/-! ## A151797.P12210775060929602100

`∪[A046386(n+1), A297647(A113626(n+1))]`
-/

namespace A151797.P12210775060929602100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046386 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297647 (A113626 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A151797.P12210775060929602100

/-! ## A151797.P12848724413405517567

`A181629(n+1)%A002385(A210506(n+1))`
-/

namespace A151797.P12848724413405517567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A181629 (n + 1)) (A002385 (A210506 (n + 1)).toNat)

end

end A151797.P12848724413405517567

/-!
# A151798: a(0)=1, a(1)=2, a(n)=4 for n>=2.

The programs for A151798, the canonical program `A151798.P700726338495979450` is in `Seq.B000.C021`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A151798 has offset 0).

The definition of A151798 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A151798.P700726338495979450

`2^ceil(atan(n))`

The canonical program, it is in `Seq.B000.C021`.
-/

namespace A151798

/-- `2^ceil(atan(n))` -/
def P700726338495979450.Spec : Prop :=
  ∀ n, P700726338495979450.a n = (A151798 n : ℚ)

end A151798

