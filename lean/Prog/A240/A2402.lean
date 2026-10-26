import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
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
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C037
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C003
import Seq.B002.C005
import Seq.B003.C000
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B007.C000
import Seq.B009.C000
import Seq.B011.C000
import Seq.B012.C000
import Seq.B013.C000
import Seq.Opaque.C000
import Seq.Opaque.C001
import Seq.Opaque.C002
import Seq.Opaque.C003
import Seq.Opaque.C004
import Seq.Opaque.C005
import Seq.Opaque.C006
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
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023

/-!
# A240200: Number of partitions p of n such that mean(p) < multiplicity(max(p)).

The programs for A240200, there is no canonical definition to state claims against.
-/

/-! ## A240200.P12193799021753925803

`floor(A116902(abs(2-n)+2)+atan(n))`
-/

namespace A240200.P12193799021753925803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A116902 (|2 - (n : ℤ)| + 2).toNat : ℝ) + Real.arctan (n : ℝ)⌋

end

end A240200.P12193799021753925803

/-! ## A240200.P10593389717690638974

`A052810(n)%(A116901(n)+1)`
-/

namespace A240200.P10593389717690638974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A052810 n) (A116901 n + 1)

end

end A240200.P10593389717690638974

/-! ## A240200.P10268007810019128283

`A240201(n)-(A116900(n)+char[1])`
-/

namespace A240200.P10268007810019128283
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240201 n - (A116900 n + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ))

end

end A240200.P10268007810019128283

/-! ## A240200.P18921917313664519

`A000041(n)-A116901(A233583(n+1))`
-/

namespace A240200.P18921917313664519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A116901 (A233583 (n + 1)).toNat

end

end A240200.P18921917313664519

/-! ## A240200.P4643312671458002951

`(A116902(A028310(n))+1)%A000041(n)`
-/

namespace A240200.P4643312671458002951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A116902 (A028310 n).toNat + 1) (A000041 n)

end

end A240200.P4643312671458002951

/-! ## A240200.P3357373166775328869

`(A000041(n)-A116901(n))%A000041(n)`
-/

namespace A240200.P3357373166775328869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000041 n - A116901 n) (A000041 n)

end

end A240200.P3357373166775328869

/-! ## A240200.P7417088610949259095

`A240201(n)%A000041(n)-A116900(n)`
-/

namespace A240200.P7417088610949259095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A240201 n) (A000041 n) - A116900 n

end

end A240200.P7417088610949259095

/-! ## A240200.P12000542426393433627

`(A000065(n)*A116901(n))%A000041(n)`
-/

namespace A240200.P12000542426393433627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000065 n * A116901 n) (A000041 n)

end

end A240200.P12000542426393433627

/-! ## A240200.P1270826449765751512

`A000041(n)-(A116901(n)+char[A015161(n)])`
-/

namespace A240200.P1270826449765751512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015161 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - (A116901 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ))

end

end A240200.P1270826449765751512

/-!
# A240201: Number of partitions p of n such that mean(p) <= multiplicity(max(p)).

The programs for A240201, there is no canonical definition to state claims against.
-/

/-! ## A240201.P8004141995062952527

`A240200(A254667(n))+A116900(n)`
-/

namespace A240201.P8004141995062952527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240200 (A254667 n).toNat + A116900 n

end

end A240201.P8004141995062952527

/-! ## A240201.P7845575646124451267

`A052810(n)-(A116901(n)-A116900(n)+1)`
-/

namespace A240201.P7845575646124451267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052810 n - (A116901 n - A116900 n + 1)

end

end A240201.P7845575646124451267

/-! ## A240201.P13136279083654425897

`A035363(A004277(n))+A116900(n)-A116901(n)`
-/

namespace A240201.P13136279083654425897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 (A004277 n).toNat + (A116900 n - A116901 n)

end

end A240201.P13136279083654425897

/-! ## A240201.P10021938467811731441

`A052810(n)-(A240202(n)+1)`
-/

namespace A240201.P10021938467811731441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052810 n - (A240202 n + 1)

end

end A240201.P10021938467811731441

/-! ## A240201.P16365414382227369664

`A035363(A004277(n))-A240202(n)`
-/

namespace A240201.P16365414382227369664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 (A004277 n).toNat - A240202 n

end

end A240201.P16365414382227369664

/-!
# A240202: Number of partitions p of n such that mean(p) > multiplicity(max(p)).

The programs for A240202, there is no canonical definition to state claims against.
-/

/-! ## A240202.P4976374594152648717

`A116901(n)-A116900(n)`
-/

namespace A240202.P4976374594152648717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116901 n - A116900 n

end

end A240202.P4976374594152648717

/-! ## A240202.P11709539146352037040

`A000094(n+1)+n-A240201(n)`
-/

namespace A240202.P11709539146352037040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000094 (n + 1) + ((n : ℤ) - A240201 n)

end

end A240202.P11709539146352037040

/-! ## A240202.P12113194824681944459

`A000041(n)-A240201(A028310(n))`
-/

namespace A240202.P12113194824681944459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A240201 (A028310 n).toNat

end

end A240202.P12113194824681944459

/-! ## A240202.P17518317657301522269

`A035363(A004277(n))-A240201(n)`
-/

namespace A240202.P17518317657301522269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 (A004277 n).toNat - A240201 n

end

end A240202.P17518317657301522269

/-! ## A240202.P2205696546878717166

`∑[A002865(n)]-A240201(A028310(n))`
-/

namespace A240202.P2205696546878717166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A240201 (A028310 n).toNat

end

end A240202.P2205696546878717166

/-!
# A240203: Number of partitions p of n such that mean(p) < multiplicity(min(p)).

The programs for A240203, there is no canonical definition to state claims against.
-/

/-! ## A240203.P1714832863942936534

`A240204(n)-A240205(n)`
-/

namespace A240203.P1714832863942936534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240204 n - A240205 n

end

end A240203.P1714832863942936534

/-! ## A240203.P9946735528304031502

`record[A035377(n+1)]-A240079(n)`
-/

namespace A240203.P9946735528304031502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035377 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A240079 n

end

end A240203.P9946735528304031502

/-! ## A240203.P1175041081612681601

`A000041(n)-A240079(round(sqrt(n²+1)))`
-/

namespace A240203.P1175041081612681601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A240079 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

end

end A240203.P1175041081612681601

/-! ## A240203.P15020046618868789230

`A035363(A004277(n))-A240079(n)`
-/

namespace A240203.P15020046618868789230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 (A004277 n).toNat - A240079 n

end

end A240203.P15020046618868789230

/-! ## A240203.P2535589663315282119

`∑[A002865(n)]-A240079(A028310(n))`
-/

namespace A240203.P2535589663315282119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A240079 (A028310 n).toNat

end

end A240203.P2535589663315282119

/-!
# A240204: Number of partitions p of n such that mean(p) <= multiplicity(min(p)).

The programs for A240204, there is no canonical definition to state claims against.
-/

/-! ## A240204.P14777938327945012313

`A240203(n)+A240205(n)`
-/

namespace A240204.P14777938327945012313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240203 n + A240205 n

end

end A240204.P14777938327945012313

/-! ## A240204.P2592538898105626962

`A052810(n)-(A240206(n)+1)`
-/

namespace A240204.P2592538898105626962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052810 n - (A240206 n + 1)

end

end A240204.P2592538898105626962

/-! ## A240204.P16356511382036407032

`record[A035377(n+1)]-A240206(n)`
-/

namespace A240204.P16356511382036407032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035377 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A240206 n

end

end A240204.P16356511382036407032

/-! ## A240204.P12465667079393636617

`A035363(A004277(n))-A240206(n)`
-/

namespace A240204.P12465667079393636617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 (A004277 n).toNat - A240206 n

end

end A240204.P12465667079393636617

/-! ## A240204.P11734256687851346382

`A035377(A008486(n))-A240206(n)`
-/

namespace A240204.P11734256687851346382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035377 (A008486 n).toNat - A240206 n

end

end A240204.P11734256687851346382

/-!
# A240205: Number of partitions p of n such that mean(p) = multiplicity(min(p)).

The programs for A240205, there is no canonical definition to state claims against.
-/

/-! ## A240205.P3839379998475515734

`A240204(n)-A240203(n)`
-/

namespace A240205.P3839379998475515734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240204 n - A240203 n

end

end A240205.P3839379998475515734

/-! ## A240205.P10071603532585800600

`A240079(n)-A240206(n)`
-/

namespace A240205.P10071603532585800600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240079 n - A240206 n

end

end A240205.P10071603532585800600

/-! ## A240205.P17035236282852577647

`A052810(n)-(A240203(n)+1)-A240206(n)`
-/

namespace A240205.P17035236282852577647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052810 n - (A240203 n + 1) - A240206 n

end

end A240205.P17035236282852577647

/-! ## A240205.P2453401020647427570

`A240204(n)-(record[A035377(n+1)]-A240079(n))`
-/

namespace A240205.P2453401020647427570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035377 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240204 n - (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A240079 n)

end

end A240205.P2453401020647427570

/-! ## A240205.P6719765349337285535

`record[A035377(n+1)]-A240203(n)-A240206(n)`
-/

namespace A240205.P6719765349337285535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035377 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A240203 n - A240206 n

end

end A240205.P6719765349337285535

/-!
# A240206: Number of partitions p of n such that mean(p) > multiplicity(min(p)).

The programs for A240206, there is no canonical definition to state claims against.
-/

/-! ## A240206.P4438376200996676447

`A240079(n)-A240205(n)`
-/

namespace A240206.P4438376200996676447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240079 n - A240205 n

end

end A240206.P4438376200996676447

/-! ## A240206.P5361569264306374142

`A000041(n)-A240204(A028310(n))`
-/

namespace A240206.P5361569264306374142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A240204 (A028310 n).toNat

end

end A240206.P5361569264306374142

/-! ## A240206.P15088617814203183759

`A035363(A004277(n))-A240204(n)`
-/

namespace A240206.P15088617814203183759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 (A004277 n).toNat - A240204 n

end

end A240206.P15088617814203183759

/-! ## A240206.P5807063411037710774

`∑[A002865(n)]-A240204(A028310(n))`
-/

namespace A240206.P5807063411037710774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A240204 (A028310 n).toNat

end

end A240206.P5807063411037710774

/-! ## A240206.P11299572989695890153

`A139582(n)/2-A240204(A028310(n))`
-/

namespace A240206.P11299572989695890153
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A139582 n : ℚ) / 2 - (A240204 (A028310 n).toNat : ℚ)

end

end A240206.P11299572989695890153

/-!
# A240207: Number of partitions p of n such that median(p) < multiplicity(max(p)).

The programs for A240207, there is no canonical definition to state claims against.
-/

/-! ## A240207.P8372010504831509590

`A240208(n)-A240209(n)`
-/

namespace A240207.P8372010504831509590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240208 n - A240209 n

end

end A240207.P8372010504831509590

/-! ## A240207.P17459247107114384646

`A052810(n)-(A240211(n)+1)`
-/

namespace A240207.P17459247107114384646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052810 n - (A240211 n + 1)

end

end A240207.P17459247107114384646

/-! ## A240207.P6678087318491177930

`record[A035363(n+1)]-A240211(n)`
-/

namespace A240207.P6678087318491177930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A240211 n

end

end A240207.P6678087318491177930

/-! ## A240207.P502936902659529917

`record[A035444(n+1)]-A240211(n)`
-/

namespace A240207.P502936902659529917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035444 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A240211 n

end

end A240207.P502936902659529917

/-! ## A240207.P1940413768978319224

`A139582(n)/2-A240211(round(sqrt(n²+1)))`
-/

namespace A240207.P1940413768978319224
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A139582 n : ℚ) / 2 - (A240211 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat : ℚ)

end

end A240207.P1940413768978319224

/-!
# A240208: Number of partitions p of n such that median(p) <= multiplicity(max(p)).

The programs for A240208, there is no canonical definition to state claims against.
-/

/-! ## A240208.P15140482439897501800

`A240207(n)+A240209(n)`
-/

namespace A240208.P15140482439897501800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240207 n + A240209 n

end

end A240208.P15140482439897501800

/-! ## A240208.P6406150584210036228

`A052810(n)-(A240210(n)+1)`
-/

namespace A240208.P6406150584210036228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052810 n - (A240210 n + 1)

end

end A240208.P6406150584210036228

/-! ## A240208.P5390380335439071724

`record[A035363(n+1)]-A240210(n)`
-/

namespace A240208.P5390380335439071724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A240210 n

end

end A240208.P5390380335439071724

/-! ## A240208.P9629218693987442612

`record[A035444(n+1)]-A240210(n)`
-/

namespace A240208.P9629218693987442612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035444 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A240210 n

end

end A240208.P9629218693987442612

/-! ## A240208.P14199760957845859770

`A000094(n+1)+n-A240210(n)`
-/

namespace A240208.P14199760957845859770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000094 (n + 1) + ((n : ℤ) - A240210 n)

end

end A240208.P14199760957845859770

/-!
# A240209: Number of partitions p of n such that median(p) = multiplicity(max(p)).

The programs for A240209, there is no canonical definition to state claims against.
-/

/-! ## A240209.P2021959142425142771

`A240208(n)-A240207(n)`
-/

namespace A240209.P2021959142425142771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240208 n - A240207 n

end

end A240209.P2021959142425142771

/-! ## A240209.P9862569482598061103

`A240208(n)+A033880(A130321(n))*A240207(n)`
-/

namespace A240209.P9862569482598061103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240208 n + A033880 (A130321 n).toNat * A240207 n

end

end A240209.P9862569482598061103

/-! ## A240209.P439822514691942306

`A240211(n)-A240210(n)`
-/

namespace A240209.P439822514691942306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240211 n - A240210 n

end

end A240209.P439822514691942306

/-! ## A240209.P7679166827620592724

`A240211(n)+A057428(n)*A240210(n)`
-/

namespace A240209.P7679166827620592724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240211 n + A057428 n * A240210 n

end

end A240209.P7679166827620592724

/-! ## A240209.P2463141017045107664

`A052810(n)-(A240207(n)+1)-A240210(n)`
-/

namespace A240209.P2463141017045107664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052810 n - (A240207 n + 1) - A240210 n

end

end A240209.P2463141017045107664

/-!
# A240210: Number of partitions p of n such that median(p) > multiplicity(max(p)).

The programs for A240210, there is no canonical definition to state claims against.
-/

/-! ## A240210.P14932314672728475969

`A240211(n)-A240209(n)`
-/

namespace A240210.P14932314672728475969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240211 n - A240209 n

end

end A240210.P14932314672728475969

/-! ## A240210.P10047172949761171603

`A052810(n)-(A240208(n)+1)`
-/

namespace A240210.P10047172949761171603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052810 n - (A240208 n + 1)

end

end A240210.P10047172949761171603

/-! ## A240210.P11384200369620950812

`record[A035363(n+1)]-A240208(n)`
-/

namespace A240210.P11384200369620950812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A240208 n

end

end A240210.P11384200369620950812

/-! ## A240210.P6529532525191476789

`record[A035444(n+1)]-A240208(n)`
-/

namespace A240210.P6529532525191476789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035444 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A240208 n

end

end A240210.P6529532525191476789

/-! ## A240210.P18413071124645269751

`A000041(n)-A240208(A028310(n))`
-/

namespace A240210.P18413071124645269751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A240208 (A028310 n).toNat

end

end A240210.P18413071124645269751

/-!
# A240211: Number of partitions p of n such that median(p) >= multiplicity(max(p)).

The programs for A240211, there is no canonical definition to state claims against.
-/

/-! ## A240211.P14399927682543141841

`A240209(n)+A240210(n)`
-/

namespace A240211.P14399927682543141841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240209 n + A240210 n

end

end A240211.P14399927682543141841

/-! ## A240211.P10256343047480381427

`A052810(n)-(A240207(n)+1)`
-/

namespace A240211.P10256343047480381427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052810 n - (A240207 n + 1)

end

end A240211.P10256343047480381427

/-! ## A240211.P14579986701402993663

`record[A035363(n+1)]-A240207(n)`
-/

namespace A240211.P14579986701402993663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A240207 n

end

end A240211.P14579986701402993663

/-! ## A240211.P6822680753527151470

`record[A035444(n+1)]-A240207(n)`
-/

namespace A240211.P6822680753527151470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035444 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A240207 n

end

end A240211.P6822680753527151470

/-! ## A240211.P14516130985470304469

`A035363(A004277(n))-A240207(n)`
-/

namespace A240211.P14516130985470304469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 (A004277 n).toNat - A240207 n

end

end A240211.P14516130985470304469

/-!
# A240212: Number of partitions p of n such that median(p) < multiplicity(min(p)).

The programs for A240212, there is no canonical definition to state claims against.
-/

/-! ## A240212.P17440209226631728817

`A240213(n)-A240214(n)`
-/

namespace A240212.P17440209226631728817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240213 n - A240214 n

end

end A240212.P17440209226631728817

/-! ## A240212.P17131195179011283823

`A052810(n)-(A240216(n)+1)`
-/

namespace A240212.P17131195179011283823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052810 n - (A240216 n + 1)

end

end A240212.P17131195179011283823

/-! ## A240212.P11183974919277222544

`A000041(n)-A240216(n)-C(2, n+2)`
-/

namespace A240212.P11183974919277222544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A240216 n - (Nat.choose 2 (n + 2) : ℤ)

end

end A240212.P11183974919277222544

/-! ## A240212.P10806803199968837713

`A000041(n)-A240216(A028310(n))`
-/

namespace A240212.P10806803199968837713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A240216 (A028310 n).toNat

end

end A240212.P10806803199968837713

/-! ## A240212.P11234598656668002664

`A000041(n)-A240216(A065033(2*n))`
-/

namespace A240212.P11234598656668002664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A240216 (A065033 (2 * n)).toNat

end

end A240212.P11234598656668002664

/-!
# A240213: Number of partitions p of n such that median(p) <= multiplicity(min(p)).

The programs for A240213, there is no canonical definition to state claims against.
-/

/-! ## A240213.P11602549330264466397

`A240212(n)+A240214(n)`
-/

namespace A240213.P11602549330264466397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240212 n + A240214 n

end

end A240213.P11602549330264466397

/-! ## A240213.P1937333736544002380

`A052810(n)-(A240215(n)+1)`
-/

namespace A240213.P1937333736544002380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052810 n - (A240215 n + 1)

end

end A240213.P1937333736544002380

/-! ## A240213.P13541799851094266901

`A000094(n+1)+n-A240215(n)`
-/

namespace A240213.P13541799851094266901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000094 (n + 1) + ((n : ℤ) - A240215 n)

end

end A240213.P13541799851094266901

/-! ## A240213.P11544143228405172608

`A000041(n)-A240215(A000038(n)+n)`
-/

namespace A240213.P11544143228405172608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A240215 (A000038 n + (n : ℤ)).toNat

end

end A240213.P11544143228405172608

/-! ## A240213.P10671025868305639869

`A240212(n)+A240216(n)-A240215(n)`
-/

namespace A240213.P10671025868305639869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240212 n + (A240216 n - A240215 n)

end

end A240213.P10671025868305639869

/-!
# A240214: Number of partitions p of n such that median(p) = multiplicity(min(p)).

The programs for A240214, there is no canonical definition to state claims against.
-/

/-! ## A240214.P231993973085114827

`A240213(n)-A240212(n)`
-/

namespace A240214.P231993973085114827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240213 n - A240212 n

end

end A240214.P231993973085114827

/-! ## A240214.P2492088921531695918

`A240216(n)-A240215(n)`
-/

namespace A240214.P2492088921531695918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240216 n - A240215 n

end

end A240214.P2492088921531695918

/-! ## A240214.P12896258627477942233

`A052810(n)-(A240212(n)+1)-A240215(n)`
-/

namespace A240214.P12896258627477942233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052810 n - (A240212 n + 1) - A240215 n

end

end A240214.P12896258627477942233

/-! ## A240214.P2034318650191525547

`A240213(n)-(A052810(n)-(A240216(n)+1))`
-/

namespace A240214.P2034318650191525547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240213 n - (A052810 n - (A240216 n + 1))

end

end A240214.P2034318650191525547

/-! ## A240214.P3950315430624876470

`A000094(n+1)+n-A240212(n)-A240215(n)`
-/

namespace A240214.P3950315430624876470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000094 (n + 1) + ((n : ℤ) - A240212 n) - A240215 n

end

end A240214.P3950315430624876470

/-!
# A240215: Number of partitions p of n such that median(p) > multiplicity(min(p)).

The programs for A240215, there is no canonical definition to state claims against.
-/

/-! ## A240215.P3175151191266506339

`A240216(n)-A240214(n)`
-/

namespace A240215.P3175151191266506339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240216 n - A240214 n

end

end A240215.P3175151191266506339

/-! ## A240215.P1361296263656985769

`A052810(n)-(A240213(n)+1)`
-/

namespace A240215.P1361296263656985769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052810 n - (A240213 n + 1)

end

end A240215.P1361296263656985769

/-! ## A240215.P12683130061831544958

`A000094(n+1)+n-A240213(n)`
-/

namespace A240215.P12683130061831544958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000094 (n + 1) + ((n : ℤ) - A240213 n)

end

end A240215.P12683130061831544958

/-! ## A240215.P7015414038974925678

`A000041(n)-A240213(A028310(n))`
-/

namespace A240215.P7015414038974925678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A240213 (A028310 n).toNat

end

end A240215.P7015414038974925678

/-! ## A240215.P12241065453041904528

`∑[A002865(n)]-A240213(A028310(n))`
-/

namespace A240215.P12241065453041904528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A240213 (A028310 n).toNat

end

end A240215.P12241065453041904528

/-!
# A240216: Number of partitions p of n such that median(p) >= multiplicity(min(p)).

The programs for A240216, there is no canonical definition to state claims against.
-/

/-! ## A240216.P5384836972590824609

`A240215(n)+A240214(n)`
-/

namespace A240216.P5384836972590824609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240215 n + A240214 n

end

end A240216.P5384836972590824609

/-! ## A240216.P14144690396762122708

`A052810(n)-(A240212(n)+1)`
-/

namespace A240216.P14144690396762122708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052810 n - (A240212 n + 1)

end

end A240216.P14144690396762122708

/-! ## A240216.P18206037040534865482

`A000094(n+1)+n-A240212(n)`
-/

namespace A240216.P18206037040534865482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000094 (n + 1) + ((n : ℤ) - A240212 n)

end

end A240216.P18206037040534865482

/-! ## A240216.P10397043772121760729

`(A000041(n)-A240212(n))%(2^n)`
-/

namespace A240216.P10397043772121760729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000041 n - A240212 n) (2 ^ n : ℤ)

end

end A240216.P10397043772121760729

/-! ## A240216.P6447885649978229631

`A240213(n)+A240215(n)-A240212(n)`
-/

namespace A240216.P6447885649978229631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240213 n + (A240215 n - A240212 n)

end

end A240216.P6447885649978229631

/-!
# A240217: Number of partitions p of n such that median(p) < mean(p).

The programs for A240217, there is no canonical definition to state claims against.
-/

/-! ## A240217.P5462548477881774264

`Δ[A000070(n)]-A240221(n+1)`
-/

namespace A240217.P5462548477881774264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000070 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A240221 (n + 1)

end

end A240217.P5462548477881774264

/-! ## A240217.P4086285010044114847

`record[A035363(n)]-A240221(n+1)`
-/

namespace A240217.P4086285010044114847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A240221 (n + 1)

end

end A240217.P4086285010044114847

/-! ## A240217.P13625677071158659062

`record[A035444(n)]-A240221(n+1)`
-/

namespace A240217.P13625677071158659062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035444 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A240221 (n + 1)

end

end A240217.P13625677071158659062

/-! ## A240217.P3031972560134404185

`A000041(n+1)-A240221(n+1)`
-/

namespace A240217.P3031972560134404185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) - A240221 (n + 1)

end

end A240217.P3031972560134404185

/-! ## A240217.P17044819687852310308

`A240218(n+1)-A240219(n+1)`
-/

namespace A240217.P17044819687852310308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240218 (n + 1) - A240219 (n + 1)

end

end A240217.P17044819687852310308

/-!
# A240218: Number of partitions p of n such that median(p) <= mean(p).

The programs for A240218, there is no canonical definition to state claims against.
-/

/-! ## A240218.P6893749213704519028

`A240217(n+1)+A240219(n+1)`
-/

namespace A240218.P6893749213704519028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240217 (n + 1) + A240219 (n + 1)

end

end A240218.P6893749213704519028

/-! ## A240218.P5207232716165913911

`Δ[A000070(n)]-A240220(n+1)`
-/

namespace A240218.P5207232716165913911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000070 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A240220 (n + 1)

end

end A240218.P5207232716165913911

/-! ## A240218.P1606742985110478162

`record[A035363(n)]-A240220(n+1)`
-/

namespace A240218.P1606742985110478162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A240220 (n + 1)

end

end A240218.P1606742985110478162

/-! ## A240218.P14777634042078033038

`record[A035444(n)]-A240220(n+1)`
-/

namespace A240218.P14777634042078033038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035444 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A240220 (n + 1)

end

end A240218.P14777634042078033038

/-! ## A240218.P15426648197946642810

`A000041(n+1)-A240220(n+1)`
-/

namespace A240218.P15426648197946642810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) - A240220 (n + 1)

end

end A240218.P15426648197946642810

/-!
# A240219: Number of partitions p of n such that median(p) = mean(p).

The programs for A240219, there is no canonical definition to state claims against.
-/

/-! ## A240219.P925564375608277859

`A240218(n+1)-A240217(n+1)`
-/

namespace A240219.P925564375608277859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240218 (n + 1) - A240217 (n + 1)

end

end A240219.P925564375608277859

/-! ## A240219.P1246555388091765274

`A240221(n+1)-A240220(n+1)`
-/

namespace A240219.P1246555388091765274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240221 (n + 1) - A240220 (n + 1)

end

end A240219.P1246555388091765274

/-! ## A240219.P4982329685562720873

`A240221(n+1)+-A240220(n+1)%A000041(n)`
-/

namespace A240219.P4982329685562720873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240221 (n + 1) + Int.tmod (-A240220 (n + 1)) (A000041 n)

end

end A240219.P4982329685562720873

/-! ## A240219.P6066657764838213748

`A000041(n+1)-A359894(n+1)`
-/

namespace A240219.P6066657764838213748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) - A359894 (n + 1)

end

end A240219.P6066657764838213748

/-! ## A240219.P3845402899349938545

`A213598(n+1)-A359894(n+1)`
-/

namespace A240219.P3845402899349938545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213598 (n + 1) - A359894 (n + 1)

end

end A240219.P3845402899349938545

/-!
# A240220: Number of partitions p of n such that median(p) > mean(p).

The programs for A240220, there is no canonical definition to state claims against.
-/

/-! ## A240220.P10900587221397489756

`A240221(n+1)-A240219(n+1)`
-/

namespace A240220.P10900587221397489756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240221 (n + 1) - A240219 (n + 1)

end

end A240220.P10900587221397489756

/-! ## A240220.P16463626550129419365

`Δ[A000070(n)]-A240218(n+1)`
-/

namespace A240220.P16463626550129419365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000070 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A240218 (n + 1)

end

end A240220.P16463626550129419365

/-! ## A240220.P6368072996594606976

`record[A035363(n)]-A240218(n+1)`
-/

namespace A240220.P6368072996594606976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A240218 (n + 1)

end

end A240220.P6368072996594606976

/-! ## A240220.P14545221264407249102

`record[A035444(n)]-A240218(n+1)`
-/

namespace A240220.P14545221264407249102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035444 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A240218 (n + 1)

end

end A240220.P14545221264407249102

/-! ## A240220.P9123914073494347976

`A000041(n+1)-A240218(n+1)`
-/

namespace A240220.P9123914073494347976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) - A240218 (n + 1)

end

end A240220.P9123914073494347976

/-!
# A240221: Number of partitions p of n such that median(p) >= mean(p).

The programs for A240221, there is no canonical definition to state claims against.
-/

/-! ## A240221.P6887157454120528797

`A240219(n+1)+A240220(n+1)`
-/

namespace A240221.P6887157454120528797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240219 (n + 1) + A240220 (n + 1)

end

end A240221.P6887157454120528797

/-! ## A240221.P18315250904961393071

`Δ[A000070(n)]-A240217(n+1)`
-/

namespace A240221.P18315250904961393071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000070 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A240217 (n + 1)

end

end A240221.P18315250904961393071

/-! ## A240221.P15298940481442714544

`record[A035363(n)]-A240217(n+1)`
-/

namespace A240221.P15298940481442714544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A240217 (n + 1)

end

end A240221.P15298940481442714544

/-! ## A240221.P15508409410813828202

`record[A035444(n)]-A240217(n+1)`
-/

namespace A240221.P15508409410813828202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035444 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A240217 (n + 1)

end

end A240221.P15508409410813828202

/-! ## A240221.P4005631828127094532

`A000041(n+1)-A240217(n+1)`
-/

namespace A240221.P4005631828127094532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) - A240217 (n + 1)

end

end A240221.P4005631828127094532

/-!
# A240222: Rectangular array giving all start values M(n, k), k >= 1, for Collatz sequences following the pattern (udd)^(n-1) ud, n >= 1, read by antidiagonals.

The programs for A240222, the canonical program `A240222.P6875656897033139242` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A240222 has offset 1).

The definition of A240222 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A240222.P6875656897033139242

`1+2^(2*(col(n)+1)-1)*(row(n)-col(n))`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A240222

/-- `1+2^(2*(col(n)+1)-1)*(row(n)-col(n))` -/
def P6875656897033139242.Spec : Prop :=
  ∀ n, P6875656897033139242.a n = (A240222 (n + 1) : ℚ)

end A240222

/-! ## A240222.P6542429072244910789

`A046688(2*n+∑[char[∑[n]]]²+1)`
-/

namespace A240222.P6542429072244910789
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046688 (2 * n + ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 + 1))

end

end A240222.P6542429072244910789

namespace A240222

/-- `A046688(2*n+∑[char[∑[n]]]²+1)` -/
def P6542429072244910789.Spec : Prop :=
  ∀ n, P6542429072244910789.a n = A240222 (n + 1)

end A240222

/-! ## A240222.P2368298653950484602

`A000079(A158405(n+1))*A025581(n)+1`
-/

namespace A240222.P2368298653950484602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A158405 (n + 1)).toNat * A025581 n + 1

end

end A240222.P2368298653950484602

namespace A240222

/-- `A000079(A158405(n+1))*A025581(n)+1` -/
def P2368298653950484602.Spec : Prop :=
  ∀ n, P2368298653950484602.a n = A240222 (n + 1)

end A240222

/-! ## A240222.P11507699281866828770

`A141290(n+1)+1-A059268(n)²`
-/

namespace A240222.P11507699281866828770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141290 (n + 1) + (1 - A059268 n ^ 2)

end

end A240222.P11507699281866828770

namespace A240222

/-- `A141290(n+1)+1-A059268(n)²` -/
def P11507699281866828770.Spec : Prop :=
  ∀ n, P11507699281866828770.a n = A240222 (n + 1)

end A240222

/-! ## A240222.P14757669141930057953

`A004761((A013609(n)/A007318(n))²+2)*A025581(n)+1`
-/

namespace A240222.P14757669141930057953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004761 (SequenceMachineLib.roundAway (((A013609 n : ℚ) / (A007318 n : ℚ)) ^ 2 + 2)).toNat * A025581 n + 1

end

end A240222.P14757669141930057953

namespace A240222

/-- `A004761((A013609(n)/A007318(n))²+2)*A025581(n)+1` -/
def P14757669141930057953.Spec : Prop :=
  ∀ n, P14757669141930057953.a n = A240222 (n + 1)

end A240222

/-!
# A240223: Rectangular companion array to M(n,k), given in A240222, showing the end numbers N(n, k), k >= 1, for the Collatz operation (udd)^(n-1) ud, n >= 1, read by antidiagonals.

The programs for A240223, the canonical program `A240223.P15448299095084412629` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A240223 has offset 0).

The definition of A240223 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A240223.P15448299095084412629

`2+3^(col(n)+1)*(row(n)-col(n))`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A240223

/-- `2+3^(col(n)+1)*(row(n)-col(n))` -/
def P15448299095084412629.Spec : Prop :=
  ∀ n, P15448299095084412629.a n = A240223 n

theorem P15448299095084412629.correct : P15448299095084412629.Spec := by
  intro n
  simp only [A240223]

end A240223

/-! ## A240223.P15684759072547362668

`A000244(A002262(n+1))*A025581(n)+2`
-/

namespace A240223.P15684759072547362668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 (A002262 (n + 1)).toNat * A025581 n + 2

end

end A240223.P15684759072547362668

namespace A240223

/-- `A000244(A002262(n+1))*A025581(n)+2` -/
def P15684759072547362668.Spec : Prop :=
  ∀ n, P15684759072547362668.a n = A240223 n

end A240223

/-!
# A240224: Irregular triangular array read by rows: row n gives a list of the partitions of n into distinct Fibonacci numbers. The order of the partitions is like in Abramowitz-Stegun.

The programs for A240224, there is no canonical definition to state claims against.
-/

/-! ## A240224.P5539622315304704869

`A061092(n)%A255054(A219045(n+3))`
-/

namespace A240224.P5539622315304704869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A061092 n) (A255054 (A219045 (n + 3)).toNat)

end

end A240224.P5539622315304704869

/-!
# A240226: 4-adic value of 1/n, n >= 1.

The programs for A240226, the canonical program `A240226.P5965855895015904533` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A240226 has offset 1).

The definition of A240226 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A240226.P3884305365434589847

`4^val(2*(n+1), 4)`
-/

namespace A240226.P3884305365434589847
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 ^ SequenceMachineLib.valuation (2 * (n + 1)) 4

end

end A240226.P3884305365434589847

namespace A240226

/-- `4^val(2*(n+1), 4)` -/
def P3884305365434589847.Spec : Prop :=
  ∀ n, (P3884305365434589847.a n : ℤ) = A240226 (n + 1)

end A240226

/-! ## A240226.P2885254346189307711

`4^ceil(val(n+1, 2)/2)`
-/

namespace A240226.P2885254346189307711
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 : ℚ) ^ (⌈(SequenceMachineLib.valuation (n + 1) 2 : ℚ) / 2⌉ : ℤ)

end

end A240226.P2885254346189307711

namespace A240226

/-- `4^ceil(val(n+1, 2)/2)` -/
def P2885254346189307711.Spec : Prop :=
  ∀ n, P2885254346189307711.a n = (A240226 (n + 1) : ℚ)

end A240226

/-! ## A240226.P5965855895015904533

`4^A244415(n+1)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A240226

/-- `4^A244415(n+1)` -/
def P5965855895015904533.Spec : Prop :=
  ∀ n, P5965855895015904533.a n = (A240226 (n + 1) : ℚ)

end A240226

/-! ## A240226.P2021308536303598251

`4^round(val(n+1, 2)/2)`
-/

namespace A240226.P2021308536303598251
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 : ℚ) ^ (SequenceMachineLib.roundAway ((SequenceMachineLib.valuation (n + 1) 2 : ℚ) / 2) : ℤ)

end

end A240226.P2021308536303598251

namespace A240226

/-- `4^round(val(n+1, 2)/2)` -/
def P2021308536303598251.Spec : Prop :=
  ∀ n, P2021308536303598251.a n = (A240226 (n + 1) : ℚ)

end A240226

/-! ## A240226.P10821596448248842522

`(2^val(n+2+n, 4))²`
-/

namespace A240226.P10821596448248842522
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 ^ SequenceMachineLib.valuation (n + 2 + n) 4) ^ 2

end

end A240226.P10821596448248842522

namespace A240226

/-- `(2^val(n+2+n, 4))²` -/
def P10821596448248842522.Spec : Prop :=
  ∀ n, (P10821596448248842522.a n : ℤ) = A240226 (n + 1)

end A240226

/-! ## A240226.P1457895887486831499

`4^dr(val(n+2+n, 4))`
-/

namespace A240226.P1457895887486831499
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 ^ SequenceMachineLib.digitalRoot (SequenceMachineLib.valuation (n + 2 + n) 4 : ℤ)

end

end A240226.P1457895887486831499

namespace A240226

/-- `4^dr(val(n+2+n, 4))` -/
def P1457895887486831499.Spec : Prop :=
  ∀ n, (P1457895887486831499.a n : ℤ) = A240226 (n + 1)

end A240226

/-! ## A240226.P9369325770829095292

`A056450(val(n+1, 2))`
-/

namespace A240226.P9369325770829095292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056450 (SequenceMachineLib.valuation (n + 1) 2)

end

end A240226.P9369325770829095292

namespace A240226

/-- `A056450(val(n+1, 2))` -/
def P9369325770829095292.Spec : Prop :=
  ∀ n, P9369325770829095292.a n = A240226 (n + 1)

end A240226

/-! ## A240226.P7746429502476798938

`4^A235127(2*(n+1))`
-/

namespace A240226.P7746429502476798938
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 : ℚ) ^ (A235127 (2 * (n + 1)) : ℤ)

end

end A240226.P7746429502476798938

namespace A240226

/-- `4^A235127(2*(n+1))` -/
def P7746429502476798938.Spec : Prop :=
  ∀ n, P7746429502476798938.a n = (A240226 (n + 1) : ℚ)

end A240226

/-! ## A240226.P11869263957285753123

`A272680(2^val(n+1, 2))`
-/

namespace A240226.P11869263957285753123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272680 (2 ^ SequenceMachineLib.valuation (n + 1) 2)

end

end A240226.P11869263957285753123

namespace A240226

/-- `A272680(2^val(n+1, 2))` -/
def P11869263957285753123.Spec : Prop :=
  ∀ n, P11869263957285753123.a n = A240226 (n + 1)

end A240226

/-! ## A240226.P13692160458533874994

`A053143(A006519(n+1))`
-/

namespace A240226.P13692160458533874994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053143 (A006519 (n + 1)).toNat

end

end A240226.P13692160458533874994

namespace A240226

/-- `A053143(A006519(n+1))` -/
def P13692160458533874994.Spec : Prop :=
  ∀ n, P13692160458533874994.a n = A240226 (n + 1)

end A240226

/-! ## A240226.P14508932826874501224

`A056450(A007814(n+1))`
-/

namespace A240226.P14508932826874501224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056450 (A007814 (n + 1)).toNat

end

end A240226.P14508932826874501224

namespace A240226

/-- `A056450(A007814(n+1))` -/
def P14508932826874501224.Spec : Prop :=
  ∀ n, P14508932826874501224.a n = A240226 (n + 1)

end A240226

/-! ## A240226.P12886080099041128472

`A008833(A171977(n+1))`
-/

namespace A240226.P12886080099041128472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008833 (A171977 (n + 1)).toNat

end

end A240226.P12886080099041128472

namespace A240226

/-- `A008833(A171977(n+1))` -/
def P12886080099041128472.Spec : Prop :=
  ∀ n, P12886080099041128472.a n = A240226 (n + 1)

end A240226

/-! ## A240226.P16384988147817230178

`A213173(A001511(n+1))`
-/

namespace A240226.P16384988147817230178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213173 (A001511 (n + 1)).toNat

end

end A240226.P16384988147817230178

namespace A240226

/-- `A213173(A001511(n+1))` -/
def P16384988147817230178.Spec : Prop :=
  ∀ n, P16384988147817230178.a n = A240226 (n + 1)

end A240226

/-! ## A240226.P10111563357459528594

`A060548(A059132(n)/2)²`
-/

namespace A240226.P10111563357459528594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060548 (SequenceMachineLib.roundAway ((A059132 n : ℚ) / 2)).toNat ^ 2

end

end A240226.P10111563357459528594

namespace A240226

/-- `A060548(A059132(n)/2)²` -/
def P10111563357459528594.Spec : Prop :=
  ∀ n, P10111563357459528594.a n = A240226 (n + 1)

end A240226

/-! ## A240226.P16498721894970061730

`A008833(2*A006519(n+1))`
-/

namespace A240226.P16498721894970061730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008833 (2 * A006519 (n + 1)).toNat

end

end A240226.P16498721894970061730

namespace A240226

/-- `A008833(2*A006519(n+1))` -/
def P16498721894970061730.Spec : Prop :=
  ∀ n, P16498721894970061730.a n = A240226 (n + 1)

end A240226

/-! ## A240226.P15388688727925184225

`A327939(2*A006519(n+1))`
-/

namespace A240226.P15388688727925184225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327939 (2 * A006519 (n + 1)).toNat

end

end A240226.P15388688727925184225

namespace A240226

/-- `A327939(2*A006519(n+1))` -/
def P15388688727925184225.Spec : Prop :=
  ∀ n, P15388688727925184225.a n = A240226 (n + 1)

end A240226

/-! ## A240226.P13536462744972663813

`A008833(2*A327512(n+1))`
-/

namespace A240226.P13536462744972663813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008833 (2 * A327512 (n + 1)).toNat

end

end A240226.P13536462744972663813

namespace A240226

/-- `A008833(2*A327512(n+1))` -/
def P13536462744972663813.Spec : Prop :=
  ∀ n, P13536462744972663813.a n = A240226 (n + 1)

end A240226

/-! ## A240226.P16219757897886543279

`A053143(gcd(n+1, A016807(n)))`
-/

namespace A240226.P16219757897886543279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053143 (Int.gcd (n + 1 : ℤ) (A016807 n))

end

end A240226.P16219757897886543279

namespace A240226

/-- `A053143(gcd(n+1, A016807(n)))` -/
def P16219757897886543279.Spec : Prop :=
  ∀ n, P16219757897886543279.a n = A240226 (n + 1)

end A240226

/-! ## A240226.P4312861567409648312

`gcd(A016808(n), A053143(n+1))`
-/

namespace A240226.P4312861567409648312
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A016808 n) (A053143 (n + 1))

end

end A240226.P4312861567409648312

namespace A240226

/-- `gcd(A016808(n), A053143(n+1))` -/
def P4312861567409648312.Spec : Prop :=
  ∀ n, (P4312861567409648312.a n : ℤ) = A240226 (n + 1)

end A240226

/-! ## A240226.P17158460921967317101

`gcd(A106475(n), A171977(n+1))`
-/

namespace A240226.P17158460921967317101
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A106475 n) (A171977 (n + 1))

end

end A240226.P17158460921967317101

namespace A240226

/-- `gcd(A106475(n), A171977(n+1))` -/
def P17158460921967317101.Spec : Prop :=
  ∀ n, (P17158460921967317101.a n : ℤ) = A240226 (n + 1)

end A240226

/-!
# A240227: All even positive integers which have at least one 'balanced' representation as a sum of three distinct nonzero squares.

The programs for A240227, there is no canonical definition to state claims against.
-/

/-! ## A240227.P8378915101466356566

`2*A024606(n+1)`
-/

namespace A240227.P8378915101466356566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A024606 (n + 1)

end

end A240227.P8378915101466356566

/-! ## A240227.P17498935958470109422

`A024606(A000027(n+1))+A024606(n+1)`
-/

namespace A240227.P17498935958470109422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024606 (A000027 (n + 1)).toNat + A024606 (n + 1)

end

end A240227.P17498935958470109422

/-! ## A240227.P17443408962946610409

`A024606(n+1)+A024606(n+1)%A257836(n+1)`
-/

namespace A240227.P17443408962946610409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024606 (n + 1) + Int.tmod (A024606 (n + 1)) (A257836 (n + 1))

end

end A240227.P17443408962946610409

/-! ## A240227.P17603804692737172933

`A004277(A024606(n+1))`
-/

namespace A240227.P17603804692737172933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A024606 (n + 1)).toNat

end

end A240227.P17603804692737172933

/-! ## A240227.P17375305226808213298

`A103517(A024606(n+1)-1)`
-/

namespace A240227.P17375305226808213298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 (A024606 (n + 1) - 1).toNat

end

end A240227.P17375305226808213298

/-! ## A240227.P12689235736995094149

`∑{e}[A238575(n+1), A024606(#+n)]`
-/

namespace A240227.P12689235736995094149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238575 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A024606 (Nat.factorization (f1 n).natAbs p + n)

end

end A240227.P12689235736995094149

/-! ## A240227.P15766632089578569198

`lt[6, A005928(A005943(3*n+1))]`
-/

namespace A240227.P15766632089578569198
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005928 (A005943 (3 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A240227.P15766632089578569198

/-!
# A240228: Multiplicities for the representation of even numbers as a balanced sum of three distinct nonzero squares.

The programs for A240228, there is no canonical definition to state claims against.
-/

/-! ## A240228.P1617248936988222899

`A005088(A024606(n+1))`
-/

namespace A240228.P1617248936988222899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005088 (A024606 (n + 1)).toNat

end

end A240228.P1617248936988222899

/-! ## A240228.P5277460051299140107

`p?[A052307(A004016(n))]-1`
-/

namespace A240228.P5277460051299140107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052307 (A004016 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 1

end

end A240228.P5277460051299140107

/-! ## A240228.P7732442778692254761

`4-p?[A341608(A035019(n))]`
-/

namespace A240228.P7732442778692254761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341608 (A035019 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 - f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A240228.P7732442778692254761

/-! ## A240228.P215460782018836382

`∑{p}[A024606(n+1), A092573(#)]`
-/

namespace A240228.P215460782018836382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024606 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A092573 p

end

end A240228.P215460782018836382

/-! ## A240228.P17687796139861083829

`gcd(2, p?[A341608(A035019(n+1))])`
-/

namespace A240228.P17687796139861083829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341608 (A035019 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A240228.P17687796139861083829

/-! ## A240228.P5465392895911967640

`A000700(p?[A000700(A004016(n))])`
-/

namespace A240228.P5465392895911967640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000700 (A004016 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000700 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A240228.P5465392895911967640

/-! ## A240228.P10871189102186415569

`A000120(p?[A052307(A004016(n))])`
-/

namespace A240228.P10871189102186415569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052307 (A004016 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A240228.P10871189102186415569

/-! ## A240228.P11203287480756369067

`A004396(p?[A052307(A004016(n))])`
-/

namespace A240228.P11203287480756369067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052307 (A004016 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A240228.P11203287480756369067

/-! ## A240228.P8468694378364424785

`A029053(p?[A052307(A004016(n))])`
-/

namespace A240228.P8468694378364424785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052307 (A004016 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029053 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A240228.P8468694378364424785

/-! ## A240228.P3481526118752864091

`A047994(p?[A052307(A004016(n))])`
-/

namespace A240228.P3481526118752864091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052307 (A004016 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047994 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A240228.P3481526118752864091

/-!
# A240229: a(n) is the shortest concatenation of the Fibonacci numbers F(1), F(2), ..., divisible by F(n) = A000045(n), n >= 1. a(n) = 0 if there is no such concatenation.

The programs for A240229, there is no canonical definition to state claims against.
-/

/-! ## A240229.P5650641899127156184

`A019523(or(A117816(2*n+1), A253074(n+1)))`
-/

namespace A240229.P5650641899127156184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019523 (Int.lor (A117816 (2 * n + 1)) (A253074 (n + 1))).toNat

end

end A240229.P5650641899127156184

/-! ## A240229.P17976270429725885434

`A019523(or(A163353(2*n+1), A253074(n+1)))`
-/

namespace A240229.P17976270429725885434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019523 (Int.lor (A163353 (2 * n + 1)) (A253074 (n + 1))).toNat

end

end A240229.P17976270429725885434

/-!
# A240230: Table for the unique factorization of integers >= 2 into terms of A186285 or their squares.

The programs for A240230, there is no canonical definition to state claims against.
-/

/-! ## A240230.P17785958752922993193

`A348477(n+1)^A082038(A212195(n+1))`
-/

namespace A240230.P17785958752922993193
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A348477 (n + 1) : ℚ) ^ (A082038 (A212195 (n + 1)).toNat : ℤ)

end

end A240230.P17785958752922993193

/-! ## A240230.P6852248596251835843

`A348477(n+1)^A071773(A332375(n+2))`
-/

namespace A240230.P6852248596251835843
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A348477 (n + 1) : ℚ) ^ (A071773 (A332375 (n + 2)).toNat : ℤ)

end

end A240230.P6852248596251835843

/-! ## A240230.P4546096049839013167

`A348477(n+1)^A014963(A267427(n+1))`
-/

namespace A240230.P4546096049839013167
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A348477 (n + 1) : ℚ) ^ (A014963 (A267427 (n + 1)).toNat : ℤ)

end

end A240230.P4546096049839013167

/-!
# A240231: Number of factors needed in the unique factorization of positive integers into terms of A186285 where any term is used at most twice.

The programs for A240231, the canonical program `A240231.P14758268946136650672` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A240231 has offset 1).

The definition of A240231 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A240231.P8891515881135077240

`∏{e}[∏{e}[n+1, 2^A053735(#)], #]`
-/

namespace A240231.P8891515881135077240
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), (2 : ℚ) ^ (A053735 (Nat.factorization (f2 n) p) : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f1 n)).natAbs, Nat.factorization (SequenceMachineLib.roundAway (f1 n)).natAbs p

end

end A240231.P8891515881135077240

namespace A240231

/-- `∏{e}[∏{e}[n+1, 2^A053735(#)], #]` -/
def P8891515881135077240.Spec : Prop :=
  ∀ n, (P8891515881135077240.a n : ℤ) = A240231 (n + 1)

end A240231

/-! ## A240231.P14758268946136650672

`A028310(∑{e}[n+1, A053735(#)])`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A240231

/-- `A028310(∑{e}[n+1, A053735(#)])` -/
def P14758268946136650672.Spec : Prop :=
  ∀ n, P14758268946136650672.a n = A240231 (n + 1)

theorem P14758268946136650672.correct : P14758268946136650672.Spec := by
  intro n
  simp only [A240231, Nat.add_sub_cancel]

end A240231

/-! ## A240231.P4278126540370204442

`A028310(A056239(A038148(n+1)))`
-/

namespace A240231.P4278126540370204442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A056239 (A038148 (n + 1)).toNat).toNat

end

end A240231.P4278126540370204442

namespace A240231

/-- `A028310(A056239(A038148(n+1)))` -/
def P4278126540370204442.Spec : Prop :=
  ∀ n, P4278126540370204442.a n = A240231 (n + 1)

end A240231

/-! ## A240231.P5020001182222765706

`A056239(A038148(n+1)*A054977(n))`
-/

namespace A240231.P5020001182222765706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (A038148 (n + 1) * A054977 n).toNat

end

end A240231.P5020001182222765706

namespace A240231

/-- `A056239(A038148(n+1)*A054977(n))` -/
def P5020001182222765706.Spec : Prop :=
  ∀ n, P5020001182222765706.a n = A240231 (n + 1)

end A240231

/-! ## A240231.P14872081912514524658

`A056239(A038148(n+1))+A217220(n)%2`
-/

namespace A240231.P14872081912514524658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (A038148 (n + 1)).toNat + Int.tmod (A217220 n) 2

end

end A240231.P14872081912514524658

namespace A240231

/-- `A056239(A038148(n+1))+A217220(n)%2` -/
def P14872081912514524658.Spec : Prop :=
  ∀ n, P14872081912514524658.a n = A240231 (n + 1)

end A240231

/-! ## A240231.P934732543112374784

`∑{e}[A045965(n+1), A053735(#)]`
-/

namespace A240231.P934732543112374784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045965 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A053735 (Nat.factorization (f1 n).natAbs p)

end

end A240231.P934732543112374784

namespace A240231

/-- `∑{e}[A045965(n+1), A053735(#)]` -/
def P934732543112374784.Spec : Prop :=
  ∀ n, P934732543112374784.a n = A240231 (n + 1)

end A240231

/-! ## A240231.P7701786342288599653

`∑{e}[A045966(n+1), A053735(#)]`
-/

namespace A240231.P7701786342288599653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045966 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A053735 (Nat.factorization (f1 n).natAbs p)

end

end A240231.P7701786342288599653

namespace A240231

/-- `∑{e}[A045966(n+1), A053735(#)]` -/
def P7701786342288599653.Spec : Prop :=
  ∀ n, P7701786342288599653.a n = A240231 (n + 1)

end A240231

/-! ## A240231.P4261755975703303962

`∑{e}[A045967(n+1), A008611(#)]`
-/

namespace A240231.P4261755975703303962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045967 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A008611 (Nat.factorization (f1 n).natAbs p)

end

end A240231.P4261755975703303962

namespace A240231

/-- `∑{e}[A045967(n+1), A008611(#)]` -/
def P4261755975703303962.Spec : Prop :=
  ∀ n, P4261755975703303962.a n = A240231 (n + 1)

end A240231

/-! ## A240231.P15290038510965342569

`A055642(∏{e}[(n+1)², A004767(A103637(#))])`
-/

namespace A240231.P15290038510965342569
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (∏ p ∈ Nat.primeFactors (f1 n), A004767 (A103637 (Nat.factorization (f1 n) p)).toNat).toNat

end

end A240231.P15290038510965342569

namespace A240231

/-- `A055642(∏{e}[(n+1)², A004767(A103637(#))])` -/
def P15290038510965342569.Spec : Prop :=
  ∀ n, P15290038510965342569.a n = A240231 (n + 1)

end A240231

/-! ## A240231.P12244203946283883463

`∑{digits}[A320390(n+1), A000119(A036803(#+1)+#)]`
-/

namespace A240231.P12244203946283883463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320390 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A000119 (A036803 (x + 1) + (x : ℤ)).toNat).sum

end

end A240231.P12244203946283883463

namespace A240231

/-- `∑{digits}[A320390(n+1), A000119(A036803(#+1)+#)]` -/
def P12244203946283883463.Spec : Prop :=
  ∀ n, P12244203946283883463.a n = A240231 (n + 1)

end A240231

/-!
# A240232: a(n) is the smallest positive integer such that prime(n) + a(n) and prime(n) + a(n)^2 are both prime numbers.

The programs for A240232, there is no canonical definition to state claims against.
-/

/-! ## A240232.P13299026655349674512

`A243145(A000040(n+1))`
-/

namespace A240232.P13299026655349674512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243145 (A000040 (n + 1)).toNat

end

end A240232.P13299026655349674512

/-! ## A240232.P12886452605134334324

`A243145(A006005(n+1))`
-/

namespace A240232.P12886452605134334324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243145 (A006005 (n + 1)).toNat

end

end A240232.P12886452605134334324

/-! ## A240232.P14701915027114851302

`A243145(A008578(n+2))`
-/

namespace A240232.P14701915027114851302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243145 (A008578 (n + 2)).toNat

end

end A240232.P14701915027114851302

/-! ## A240232.P11860009826529424407

`A243145(A075643(n+2))`
-/

namespace A240232.P11860009826529424407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243145 (A075643 (n + 2)).toNat

end

end A240232.P11860009826529424407

/-! ## A240232.P6447081712416176922

`A243145(A182986(n+2))`
-/

namespace A240232.P6447081712416176922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243145 (A182986 (n + 2)).toNat

end

end A240232.P6447081712416176922

/-! ## A240232.P14102174008874178921

`A243145(record[A006530(n+2)])`
-/

namespace A240232.P14102174008874178921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243145 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A240232.P14102174008874178921

/-! ## A240232.P6997807659634380226

`A243145(record[A014963(n+2)])`
-/

namespace A240232.P6997807659634380226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243145 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A240232.P6997807659634380226

/-! ## A240232.P8465521073080761704

`A243145(record[A020639(n+2)])`
-/

namespace A240232.P8465521073080761704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243145 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A240232.P8465521073080761704

/-! ## A240232.P9814628746395752271

`A243145(A006093(n+1)+1)`
-/

namespace A240232.P9814628746395752271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243145 (A006093 (n + 1) + 1).toNat

end

end A240232.P9814628746395752271

/-! ## A240232.P5627014018311907468

`A243145(A100484(n+1)/2)`
-/

namespace A240232.P5627014018311907468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243145 (SequenceMachineLib.roundAway ((A100484 (n + 1) : ℚ) / 2)).toNat

end

end A240232.P5627014018311907468

/-! ## A240232.P6763526535249710957

`A243145(A001747(n+2)/2)`
-/

namespace A240232.P6763526535249710957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243145 (SequenceMachineLib.roundAway ((A001747 (n + 2) : ℚ) / 2)).toNat

end

end A240232.P6763526535249710957

/-! ## A240232.P5995750208575007739

`A243145(A034694(A006093(n+1)))`
-/

namespace A240232.P5995750208575007739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243145 (A034694 (A006093 (n + 1)).toNat).toNat

end

end A240232.P5995750208575007739

/-! ## A240232.P3709069127355096967

`A243145(A006530(A001747(n+2)))`
-/

namespace A240232.P3709069127355096967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243145 (A006530 (A001747 (n + 2)).toNat).toNat

end

end A240232.P3709069127355096967

/-!
# A240233: a(n) is the smallest prime number such that both a(n) + 6n and a(n) + 12n are prime numbers.

The programs for A240233, there is no canonical definition to state claims against.
-/

/-! ## A240233.P5388084797565502984

`A160129(n+1)%(6*(n+1))`
-/

namespace A240233.P5388084797565502984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A160129 (n + 1)) (6 * (n + 1) : ℤ)

end

end A240233.P5388084797565502984

/-! ## A240233.P5014231098328732178

`A160129(n+1)-Δ[A003215(n)]`
-/

namespace A240233.P5014231098328732178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003215 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160129 (n + 1) - (f1 (n + 1) - f1 n)

end

end A240233.P5014231098328732178

/-! ## A240233.P2225853937274447418

`A160129(n+1)-A008458(n+1)`
-/

namespace A240233.P2225853937274447418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160129 (n + 1) - A008458 (n + 1)

end

end A240233.P2225853937274447418

/-! ## A240233.P14884551757924775228

`A160129(n+1)+n+1-A008589(n+1)`
-/

namespace A240233.P14884551757924775228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160129 (n + 1) + ((n + 1 : ℤ) - A008589 (n + 1))

end

end A240233.P14884551757924775228

/-! ## A240233.P9092613221072129682

`A160129(n+1)-A005843(A005843(n+1)+n+1)`
-/

namespace A240233.P9092613221072129682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160129 (n + 1) - A005843 (A005843 (n + 1) + (n + 1 : ℤ)).toNat

end

end A240233.P9092613221072129682

/-!
# A240234: Least number k such that k*n^k + 1 is prime, or 0 if no such number exists.

The programs for A240234, there is no canonical definition to state claims against.
-/

/-! ## A240234.P1609722323417670791

`A067059(9*n!)`
-/

namespace A240234.P1609722323417670791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067059 (9 * Nat.factorial n)

end

end A240234.P1609722323417670791

/-!
# A240236: Triangle read by rows: sum of digits of n in base k, for 2<=k<=n.

The programs for A240236, there is no canonical definition to state claims against.
-/

/-! ## A240236.P5269718400892656016

`A138530(∑[char[∑[n+1]]]+n+3)`
-/

namespace A240236.P5269718400892656016
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138530 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3))

end

end A240236.P5269718400892656016

/-! ## A240236.P12394066118201722563

`A090109(A138530(comp[∑[n]]+1))`
-/

namespace A240236.P12394066118201722563
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090109 (A138530 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1)).toNat

end

end A240236.P12394066118201722563

/-! ## A240236.P17215614167575383165

`∑{digits}[A004053(n+2), #]`
-/

namespace A240236.P17215614167575383165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004053 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A240236.P17215614167575383165

/-! ## A240236.P5584237635362090689

`∑{digits}[A004209(∑[char[∑[n]]]²-n+1), #]`
-/

namespace A240236.P5584237635362090689
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004209 ((((∑ j ∈ Finset.range (n + 1), f2 j) ^ 2 : ℕ) : ℤ) - (n : ℤ) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A240236.P5584237635362090689

/-! ## A240236.P4770208878487943821

`dr(A004053(n+2)%A235026(n+1))`
-/

namespace A240236.P4770208878487943821
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (Int.tmod (A004053 (n + 2)) (A235026 (n + 1)))

end

end A240236.P4770208878487943821

/-! ## A240236.P3391201140075592286

`dr(A004053(n+2)+A000007(A000124(n)))`
-/

namespace A240236.P3391201140075592286
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A004053 (n + 2) + A000007 (A000124 n).toNat)

end

end A240236.P3391201140075592286

/-! ## A240236.P6776452826131478622

`A010888(A004053(n+2)-9)`
-/

namespace A240236.P6776452826131478622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010888 (A004053 (n + 2) - 9).toNat

end

end A240236.P6776452826131478622

/-! ## A240236.P11828158755519421083

`A007953(A004053(n+2))`
-/

namespace A240236.P11828158755519421083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A004053 (n + 2)).toNat

end

end A240236.P11828158755519421083

/-! ## A240236.P10916036065820182410

`A010888(or(char[1], A004053(n+2)))`
-/

namespace A240236.P10916036065820182410
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010888 (Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A004053 (n + 2))).toNat

end

end A240236.P10916036065820182410

/-! ## A240236.P2424106454755997169

`A010888(A004053(n+2))+A000007(n+1)`
-/

namespace A240236.P2424106454755997169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010888 (A004053 (n + 2)).toNat + A000007 (n + 1)

end

end A240236.P2424106454755997169

/-! ## A240236.P13679125137255316390

`A004092(5*A004053(n+2))`
-/

namespace A240236.P13679125137255316390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004092 (5 * A004053 (n + 2)).toNat

end

end A240236.P13679125137255316390

/-!
# A240237: Concatenated digits of pyramidalized numbers: Write the decimal digits of n (a nonnegative integer) and take successive absolute differences ("pyramidalization"), then concatenate, from left to right, all the digits in each level of the pyramid, and finally concatenate those results for all levels, from the base up. The result is a(n).

The programs for A240237, there is no canonical definition to state claims against.
-/

/-! ## A240237.P16963840221231693179

`A056142(n)-A055641(A281850(n))`
-/

namespace A240237.P16963840221231693179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056142 n - A055641 (A281850 n).toNat

end

end A240237.P16963840221231693179

/-! ## A240237.P18118282258700067981

`(A056142(n)-A107846(n))%A249573(n)`
-/

namespace A240237.P18118282258700067981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A056142 n - A107846 n) (A249573 n)

end

end A240237.P18118282258700067981

/-! ## A240237.P13844871164840913299

`(A056142(n)-A321537(n))*A008833(A143385(n+1))`
-/

namespace A240237.P13844871164840913299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A056142 n - A321537 n) * A008833 (A143385 (n + 1)).toNat

end

end A240237.P13844871164840913299

/-! ## A240237.P11466888256998333032

`eq[1, A245474(A213217(n))]`
-/

namespace A240237.P11466888256998333032
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245474 (A213217 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A240237.P11466888256998333032

/-! ## A240237.P5016227436339678495

`eq[A027870(n), A069958(n)]`
-/

namespace A240237.P5016227436339678495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027870 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069958 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A240237.P5016227436339678495

/-!
# A240238: a(n) is the prime p for which A135952(n) divides Fibonacci(p).

The programs for A240238, there is no canonical definition to state claims against.
-/

/-! ## A240238.P18197331249786183550

`A001177(A135952(n+1))`
-/

namespace A240238.P18197331249786183550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001177 (A135952 (n + 1)).toNat

end

end A240238.P18197331249786183550

/-! ## A240238.P18280679515076762158

`p?[A001177(A001690(n+1))]`
-/

namespace A240238.P18280679515076762158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001177 (A001690 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A240238.P18280679515076762158

/-! ## A240238.P8903096554026932167

`p?[A001177(A147956(n+1))]`
-/

namespace A240238.P8903096554026932167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001177 (A147956 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A240238.P8903096554026932167

/-! ## A240238.P14840018987658669030

`p?[A001177(n+1)*A005092(n+1)]`
-/

namespace A240238.P14840018987658669030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001177 (n + 1) * A005092 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A240238.P14840018987658669030

/-! ## A240238.P1588683816831565557

`p?[A001177(n+1)*A054494(n+1)]`
-/

namespace A240238.P1588683816831565557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001177 (n + 1) * A054494 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A240238.P1588683816831565557

/-!
# A240239: a(n) is one-half of the integer approximated by A135952(n)/A240238(n).

The programs for A240239, there is no canonical definition to state claims against.
-/

/-! ## A240239.P9946719544046788549

`ceil(A028242(A135952(n+1))/A240238(n+1))`
-/

namespace A240239.P9946719544046788549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A028242 (A135952 (n + 1)).toNat : ℚ) / (A240238 (n + 1) : ℚ)⌉

end

end A240239.P9946719544046788549

/-! ## A240239.P11987930919967914421

`gcd(A102363(n), A287531(A005179(n+1)))`
-/

namespace A240239.P11987930919967914421
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A102363 n) (A287531 (A005179 (n + 1)).toNat)

end

end A240239.P11987930919967914421

/-! ## A240239.P14035711263204087806

`A242012(A072134(n+1))`
-/

namespace A240239.P14035711263204087806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242012 (A072134 (n + 1)).toNat

end

end A240239.P14035711263204087806

/-! ## A240239.P14120864936327530889

`gcd(A089859(n), A238872(A174266(n+1)))`
-/

namespace A240239.P14120864936327530889
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A089859 n) (A238872 (A174266 (n + 1)).toNat)

end

end A240239.P14120864936327530889

/-!
# A240244: Number of n X n 0..3 arrays with no element equal to the sum of elements to its left or the sum of the elements above it or the sum of the elements diagonally to its northwest or the sum of the elements antidiagonally to its northeast, modulo 4.

The programs for A240244, there is no canonical definition to state claims against.
-/

/-! ## A240244.P2756225800733764308

`A240250(∑[4*n]+1)`
-/

namespace A240244.P2756225800733764308
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240250 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A240244.P2756225800733764308

/-! ## A240244.P14496805480557970658

`lcm((-1)^n, A240250((n+1)²+n²))`
-/

namespace A240244.P14496805480557970658
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A240250 ((n + 1) ^ 2 + n ^ 2))

end

end A240244.P14496805480557970658

/-! ## A240244.P12890434632267675212

`A240250(A001844(n))+A011741(n)`
-/

namespace A240244.P12890434632267675212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240250 (A001844 n).toNat + A011741 n

end

end A240244.P12890434632267675212

/-!
# A240245: Number of nX3 0..3 arrays with no element equal to the sum of elements to its left or the sum of elements above it or the sum of the elements diagonally to its northwest or the sum of the elements antidiagonally to its northeast, modulo 4.

The programs for A240245, there is no canonical definition to state claims against.
-/

/-! ## A240245.P11336439521334448307

`A240250(∑[n+3]+1)`
-/

namespace A240245.P11336439521334448307
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240250 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A240245.P11336439521334448307

/-! ## A240245.P898967705830389214

`xor(char[21], A240250(A052905(n)+3))`
-/

namespace A240245.P898967705830389214
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  21

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A240250 (A052905 n + 3).toNat)

end

end A240245.P898967705830389214

/-!
# A240246: Number of n X 4 0..3 arrays with no element equal to the sum of elements to its left or the sum of elements above it or the sum of the elements diagonally to its northwest or the sum of the elements antidiagonally to its northeast, modulo 4.

The programs for A240246, there is no canonical definition to state claims against.
-/

/-! ## A240246.P16576584658291697112

`A240250(A141214(n+1))`
-/

namespace A240246.P16576584658291697112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240250 (A141214 (n + 1)).toNat

end

end A240246.P16576584658291697112

/-! ## A240246.P8341162040240575291

`A240250(A055998(n+2))`
-/

namespace A240246.P8341162040240575291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240250 (A055998 (n + 2)).toNat

end

end A240246.P8341162040240575291

/-! ## A240246.P15640577025310088653

`A240250(A155212(n)+5)`
-/

namespace A240246.P15640577025310088653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240250 (A155212 n + 5).toNat

end

end A240246.P15640577025310088653

/-! ## A240246.P15492288502321232520

`A240250(A056000(n)+7)`
-/

namespace A240246.P15492288502321232520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240250 (A056000 n + 7).toNat

end

end A240246.P15492288502321232520

/-! ## A240246.P15911966270350201297

`A240250(eq[3, A193592(n)])`
-/

namespace A240246.P15911966270350201297
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240250 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A240246.P15911966270350201297

/-!
# A240247: Number of nX5 0..3 arrays with no element equal to the sum of elements to its left or the sum of elements above it or the sum of the elements diagonally to its northwest or the sum of the elements antidiagonally to its northeast, modulo 4.

The programs for A240247, there is no canonical definition to state claims against.
-/

/-! ## A240247.P8195394051339318701

`A240250(Δ[A264443(n)])`
-/

namespace A240247.P8195394051339318701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240250 (f1 (n + 1) - f1 n).toNat

end

end A240247.P8195394051339318701

/-! ## A240247.P3885398704995294269

`A240250(A046691(n+3))`
-/

namespace A240247.P3885398704995294269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240250 (A046691 (n + 3)).toNat

end

end A240247.P3885398704995294269

/-! ## A240247.P12692916194998712759

`A240250(A056115(n)+11)`
-/

namespace A240247.P12692916194998712759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240250 (A056115 n + 11).toNat

end

end A240247.P12692916194998712759

/-! ## A240247.P17162298591888668755

`A240250(eq[2, A092921(n)])`
-/

namespace A240247.P17162298591888668755
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092921 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240250 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A240247.P17162298591888668755

/-! ## A240247.P6843919616678158828

`A240250(eq[4, A193592(n)])`
-/

namespace A240247.P6843919616678158828
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240250 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A240247.P6843919616678158828

/-!
# A240248: Number of nX6 0..3 arrays with no element equal to the sum of elements to its left or the sum of elements above it or the sum of the elements diagonally to its northwest or the sum of the elements antidiagonally to its northeast, modulo 4.

The programs for A240248, there is no canonical definition to state claims against.
-/

/-! ## A240248.P4688215394003669212

`A240250(A052905(n+3))`
-/

namespace A240248.P4688215394003669212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240250 (A052905 (n + 3)).toNat

end

end A240248.P4688215394003669212

/-! ## A240248.P16317370319134603845

`A240250(A056119(n)+16)`
-/

namespace A240248.P16317370319134603845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240250 (A056119 n + 16).toNat

end

end A240248.P16317370319134603845

/-! ## A240248.P5183267100429281353

`A240250(eq[3, A219347(n)])`
-/

namespace A240248.P5183267100429281353
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240250 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A240248.P5183267100429281353

/-! ## A240248.P3774960760420849716

`A240250(eq[5, A193592(n)])`
-/

namespace A240248.P3774960760420849716
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240250 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A240248.P3774960760420849716

/-! ## A240248.P5961162824235018584

`A240250(eq[8, A258709(n)])`
-/

namespace A240248.P5961162824235018584
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258709 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240250 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A240248.P5961162824235018584

/-!
# A240249: Number of nX7 0..3 arrays with no element equal to the sum of elements to its left or the sum of elements above it or the sum of the elements diagonally to its northwest or the sum of the elements antidiagonally to its northeast, modulo 4.

The programs for A240249, there is no canonical definition to state claims against.
-/

/-! ## A240249.P17520976655718970907

`A240250(A055999(n+4))`
-/

namespace A240249.P17520976655718970907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240250 (A055999 (n + 4)).toNat

end

end A240249.P17520976655718970907

/-! ## A240249.P17493730704059393328

`A240250(eq[4, A219347(n)])`
-/

namespace A240249.P17493730704059393328
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240250 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A240249.P17493730704059393328

/-! ## A240249.P340764854382439722

`A240250(eq[6, A193592(n)])`
-/

namespace A240249.P340764854382439722
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240250 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A240249.P340764854382439722

/-! ## A240249.P17179714970762009833

`A240250(A155212(n+3)+2)`
-/

namespace A240249.P17179714970762009833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240250 (A155212 (n + 3) + 2).toNat

end

end A240249.P17179714970762009833

/-!
# A240251: Number of 2Xn 0..3 arrays with no element equal to the sum of elements to its left or the sum of the elements above it or the sum of the elements diagonally to its northwest or the sum of the elements antidiagonally to its northeast, modulo 4.

The programs for A240251, there is no canonical definition to state claims against.
-/

/-! ## A240251.P12071498896488520233

`A240250(∑[n+1]+2)`
-/

namespace A240251.P12071498896488520233
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240250 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A240251.P12071498896488520233

/-!
# A240252: Number of 3Xn 0..3 arrays with no element equal to the sum of elements to its left or the sum of the elements above it or the sum of the elements diagonally to its northwest or the sum of the elements antidiagonally to its northeast, modulo 4.

The programs for A240252, there is no canonical definition to state claims against.
-/

/-! ## A240252.P3725976888093593989

`A240250(∑[n+2]+4)`
-/

namespace A240252.P3725976888093593989
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240250 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A240252.P3725976888093593989

/-! ## A240252.P13931838262558627959

`lcm(2, A240250(A167614(n+1)))`
-/

namespace A240252.P13931838262558627959
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A240250 (A167614 (n + 1)).toNat)

end

end A240252.P13931838262558627959

/-! ## A240252.P13818726612582133210

`A240250(A167614(n+1))+A011741(n)`
-/

namespace A240252.P13818726612582133210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240250 (A167614 (n + 1)).toNat + A011741 n

end

end A240252.P13818726612582133210

/-! ## A240252.P7179993989033567725

`A240250(A167614(n+1))+A014083(n)`
-/

namespace A240252.P7179993989033567725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240250 (A167614 (n + 1)).toNat + A014083 n

end

end A240252.P7179993989033567725

/-! ## A240252.P555848277714836126

`A240250(A167614(n+1))+A093391(n)`
-/

namespace A240252.P555848277714836126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240250 (A167614 (n + 1)).toNat + A093391 n

end

end A240252.P555848277714836126

/-!
# A240253: Number of 4Xn 0..3 arrays with no element equal to the sum of elements to its left or the sum of the elements above it or the sum of the elements diagonally to its northwest or the sum of the elements antidiagonally to its northeast, modulo 4.

The programs for A240253, there is no canonical definition to state claims against.
-/

/-! ## A240253.P8822461859860581112

`A240250(A141214(n)+7)`
-/

namespace A240253.P8822461859860581112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240250 (A141214 n + 7).toNat

end

end A240253.P8822461859860581112

/-! ## A240253.P13614767800552559169

`A240250(A052905(n)+9)`
-/

namespace A240253.P13614767800552559169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240250 (A052905 n + 9).toNat

end

end A240253.P13614767800552559169

/-! ## A240253.P2088423040515993148

`A240250(A055999(n)+10)`
-/

namespace A240253.P2088423040515993148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240250 (A055999 n + 10).toNat

end

end A240253.P2088423040515993148

/-! ## A240253.P6578447199472311901

`A240250(eq[5, A066657(n)])`
-/

namespace A240253.P6578447199472311901
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240250 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A240253.P6578447199472311901

/-! ## A240253.P12126342646719949366

`A240250(A167614(n+2)+1)`
-/

namespace A240253.P12126342646719949366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240250 (A167614 (n + 2) + 1).toNat

end

end A240253.P12126342646719949366

/-!
# A240254: Number of 5Xn 0..3 arrays with no element equal to the sum of elements to its left or the sum of the elements above it or the sum of the elements diagonally to its northwest or the sum of the elements antidiagonally to its northeast, modulo 4.

The programs for A240254, there is no canonical definition to state claims against.
-/

/-! ## A240254.P15336963113864308777

`A240250(A167499(n+3))`
-/

namespace A240254.P15336963113864308777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240250 (A167499 (n + 3)).toNat

end

end A240254.P15336963113864308777

/-! ## A240254.P7744090309889139768

`A240250(A155212(n)+13)`
-/

namespace A240254.P7744090309889139768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240250 (A155212 n + 13).toNat

end

end A240254.P7744090309889139768

/-! ## A240254.P1112588594704793087

`A240250(A056000(n)+15)`
-/

namespace A240254.P1112588594704793087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240250 (A056000 n + 15).toNat

end

end A240254.P1112588594704793087

/-! ## A240254.P13618319841501486867

`A240250(eq[7, A066657(n)])`
-/

namespace A240254.P13618319841501486867
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240250 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A240254.P13618319841501486867

/-! ## A240254.P13446069307695698250

`A240250(A167614(n+3)+2)`
-/

namespace A240254.P13446069307695698250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240250 (A167614 (n + 3) + 2).toNat

end

end A240254.P13446069307695698250

/-!
# A240255: Number of 6Xn 0..3 arrays with no element equal to the sum of elements to its left or the sum of the elements above it or the sum of the elements diagonally to its northwest or the sum of the elements antidiagonally to its northeast, modulo 4.

The programs for A240255, there is no canonical definition to state claims against.
-/

/-! ## A240255.P12897625225184762203

`A240250(A166136(n+4))`
-/

namespace A240255.P12897625225184762203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240250 (A166136 (n + 4)).toNat

end

end A240255.P12897625225184762203

/-! ## A240255.P4742634849040813536

`A240250(A056115(n)+21)`
-/

namespace A240255.P4742634849040813536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240250 (A056115 n + 21).toNat

end

end A240255.P4742634849040813536

/-! ## A240255.P17438246912592783257

`A240250(A167499(n+4)+1)`
-/

namespace A240255.P17438246912592783257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240250 (A167499 (n + 4) + 1).toNat

end

end A240255.P17438246912592783257

/-! ## A240255.P2914940286482551740

`A240250(A167487(n+4)-1)`
-/

namespace A240255.P2914940286482551740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240250 (A167487 (n + 4) - 1).toNat

end

end A240255.P2914940286482551740

/-! ## A240255.P11751212699124633831

`A240250(A000124(n+5)+5)`
-/

namespace A240255.P11751212699124633831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240250 (A000124 (n + 5) + 5).toNat

end

end A240255.P11751212699124633831

/-!
# A240256: Number of nX2 0..3 arrays with no element equal to one plus the sum of elements to its left or one plus the sum of elements above it or one plus the sum of the elements diagonally to its northwest or one plus the sum of the elements antidiagonally to its northeast, modulo 4.

The programs for A240256, there is no canonical definition to state claims against.
-/

/-! ## A240256.P13067741703224857600

`A240260(∑[n+2])`
-/

namespace A240256.P13067741703224857600
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240260 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A240256.P13067741703224857600

/-! ## A240256.P10082949556631387496

`record[A240260(abs(A201163(n)))]`
-/

namespace A240256.P10082949556631387496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240260 |A201163 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A240256.P10082949556631387496

/-! ## A240256.P4586116555304624343

`record[A240260(Δ[A003453(n+5)])]`
-/

namespace A240256.P4586116555304624343
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003453 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240260 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A240256.P4586116555304624343

/-! ## A240256.P18008150839956188939

`record[A240260(A000096(val(n+1, 2)+1))]`
-/

namespace A240256.P18008150839956188939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240260 (A000096 (SequenceMachineLib.valuation (n + 1) 2 + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A240256.P18008150839956188939

/-! ## A240256.P1710670989284930506

`record[gcd(A054654(n+2), A240260(n+2))]`
-/

namespace A240256.P1710670989284930506
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A054654 (n + 2)) (A240260 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A240256.P1710670989284930506

/-!
# A240257: Number of nX3 0..3 arrays with no element equal to one plus the sum of elements to its left or one plus the sum of elements above it or one plus the sum of the elements diagonally to its northwest or one plus the sum of the elements antidiagonally to its northeast, modulo 4.

The programs for A240257, there is no canonical definition to state claims against.
-/

/-! ## A240257.P10447886794620069882

`A240260(∑[n+3]+1)`
-/

namespace A240257.P10447886794620069882
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240260 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A240257.P10447886794620069882

/-! ## A240257.P12869130685980951990

`A000034(2*n)*A240260(A034856(n+2))`
-/

namespace A240257.P12869130685980951990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (2 * n) * A240260 (A034856 (n + 2)).toNat

end

end A240257.P12869130685980951990

/-! ## A240257.P15609692600737405104

`A240260(A034856(n+2))%A028083(n+1)`
-/

namespace A240257.P15609692600737405104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A240260 (A034856 (n + 2)).toNat) (A028083 (n + 1))

end

end A240257.P15609692600737405104

/-!
# A240258: Number of n X 4 0..3 arrays with no element equal to one plus the sum of elements to its left or one plus the sum of elements above it or one plus the sum of the elements diagonally to its northwest or one plus the sum of the elements antidiagonally to its northeast, modulo 4.

The programs for A240258, there is no canonical definition to state claims against.
-/

/-! ## A240258.P4338601376225525012

`A240260(A141214(n+1))`
-/

namespace A240258.P4338601376225525012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240260 (A141214 (n + 1)).toNat

end

end A240258.P4338601376225525012

/-! ## A240258.P12019753590522908030

`A240260(A027379(n+2))`
-/

namespace A240258.P12019753590522908030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240260 (A027379 (n + 2)).toNat

end

end A240258.P12019753590522908030

/-! ## A240258.P6452870549282872787

`A240260(A055998(n+2))`
-/

namespace A240258.P6452870549282872787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240260 (A055998 (n + 2)).toNat

end

end A240258.P6452870549282872787

/-! ## A240258.P7134968868906721664

`A240260(A155212(n)+5)`
-/

namespace A240258.P7134968868906721664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240260 (A155212 n + 5).toNat

end

end A240258.P7134968868906721664

/-! ## A240258.P11512939430583938994

`A240260(A056000(n)+7)`
-/

namespace A240258.P11512939430583938994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240260 (A056000 n + 7).toNat

end

end A240258.P11512939430583938994

/-!
# A240259: Number of nX5 0..3 arrays with no element equal to one plus the sum of elements to its left or one plus the sum of elements above it or one plus the sum of the elements diagonally to its northwest or one plus the sum of the elements antidiagonally to its northeast, modulo 4.

The programs for A240259, there is no canonical definition to state claims against.
-/

/-! ## A240259.P6716184601796066510

`A240260(C(n+6, 2)-4)`
-/

namespace A240259.P6716184601796066510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240260 (Nat.choose (n + 6) 2 - 4)

end

end A240259.P6716184601796066510

/-! ## A240259.P560063082625824472

`A240260(Δ[A264443(n)])`
-/

namespace A240259.P560063082625824472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240260 (f1 (n + 1) - f1 n).toNat

end

end A240259.P560063082625824472

/-! ## A240259.P10030754176969950386

`A240260(A046691(n+3))`
-/

namespace A240259.P10030754176969950386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240260 (A046691 (n + 3)).toNat

end

end A240259.P10030754176969950386

/-! ## A240259.P2386357832150967183

`A240260(eq[2, A092921(n)])`
-/

namespace A240259.P2386357832150967183
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092921 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240260 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A240259.P2386357832150967183

/-!
# A240261: Number of 2Xn 0..3 arrays with no element equal to one plus the sum of elements to its left or one plus the sum of the elements above it or one plus the sum of the elements diagonally to its northwest or one plus the sum of the elements antidiagonally to its northeast, modulo 4.

The programs for A240261, there is no canonical definition to state claims against.
-/

/-! ## A240261.P4602528960432509379

`A240260(∑[n+1]+2)`
-/

namespace A240261.P4602528960432509379
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240260 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A240261.P4602528960432509379

/-! ## A240261.P8676624991582641671

`record[A240260(A133263(Δ[ceil(sqrt(n^3))]))]`
-/

namespace A240261.P8676624991582641671
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (n ^ 3 : ℝ)⌉

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240260 (A133263 (f2 (n + 1) - f2 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A240261.P8676624991582641671

/-! ## A240261.P4531782265358077058

`record[root(A240260(n+2), A183917(n+1))]`
-/

namespace A240261.P4531782265358077058
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A240260 (n + 2) : ℝ) ^ (1 / (A183917 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A240261.P4531782265358077058

/-! ## A240261.P3786763179237125343

`record[A240260(n+3)/A185628(n)]`
-/

namespace A240261.P3786763179237125343
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A240260 (n + 3) : ℚ) / (A185628 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A240261.P3786763179237125343

/-!
# A240262: Number of 3 X n 0..3 arrays with no element equal to one plus the sum of elements to its left or one plus the sum of the elements above it or one plus the sum of the elements diagonally to its northwest or one plus the sum of the elements antidiagonally to its northeast, modulo 4.

The programs for A240262, there is no canonical definition to state claims against.
-/

/-! ## A240262.P16027745979176845990

`A240260(∑[n+2]+4)`
-/

namespace A240262.P16027745979176845990
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240260 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A240262.P16027745979176845990

/-! ## A240262.P575072648063804035

`lcm((-1)^val(n+1, 2), A240260(A167614(n+1)))`
-/

namespace A240262.P575072648063804035
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ SequenceMachineLib.valuation (n + 1) 2) (A240260 (A167614 (n + 1)).toNat)

end

end A240262.P575072648063804035

/-! ## A240262.P15940890982298881591

`A240260(A167614(n+1))+A067168(n)`
-/

namespace A240262.P15940890982298881591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240260 (A167614 (n + 1)).toNat + A067168 (n + 10)

end

end A240262.P15940890982298881591

/-! ## A240262.P3106205446629426006

`A240260(A167614(n+1))+A084904(n)`
-/

namespace A240262.P3106205446629426006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240260 (A167614 (n + 1)).toNat + A084904 n

end

end A240262.P3106205446629426006

/-! ## A240262.P3733225241050971639

`A240260(A167614(n+1))+A107846(n)`
-/

namespace A240262.P3733225241050971639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240260 (A167614 (n + 1)).toNat + A107846 n

end

end A240262.P3733225241050971639

/-!
# A240263: Number of 4Xn 0..3 arrays with no element equal to one plus the sum of elements to its left or one plus the sum of the elements above it or one plus the sum of the elements diagonally to its northwest or one plus the sum of the elements antidiagonally to its northeast, modulo 4.

The programs for A240263, there is no canonical definition to state claims against.
-/

/-! ## A240263.P5307887766822895487

`A240260(∑[n+3]+7)`
-/

namespace A240263.P5307887766822895487
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240260 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A240263.P5307887766822895487

/-! ## A240263.P11039262194661653547

`A057427(n+2)*A240260(A052905(n)+9)`
-/

namespace A240263.P11039262194661653547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (n + 2) * A240260 (A052905 n + 9).toNat

end

end A240263.P11039262194661653547

/-! ## A240263.P4938621184065190081

`A240260(A052905(n)+9)+A090192(2*(n+1))`
-/

namespace A240263.P4938621184065190081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240260 (A052905 n + 9).toNat + A090192 (2 * (n + 1))

end

end A240263.P4938621184065190081

/-! ## A240263.P5560373589711725537

`A240260(A055999(n)+10)^A033940(A046386(n+1))`
-/

namespace A240263.P5560373589711725537
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A240260 (A055999 n + 10).toNat : ℚ) ^ (A033940 (A046386 (n + 1)).toNat : ℤ)

end

end A240263.P5560373589711725537

/-!
# A240265: Numbers that divide the concatenation of their aliquot divisors, in ascending order.

The programs for A240265, there is no canonical definition to state claims against.
-/

/-! ## A240265.P16046644854692821612

`A175325(a(n-1)+1)` with `a(0)=1`
-/

namespace A240265.P16046644854692821612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A175325 (a (n - 1) + 1).toNat

end

end A240265.P16046644854692821612

/-!
# A240266: Number of n X 2 0..3 arrays with no element equal to zero plus the sum of elements to its left or one plus the sum of elements above it or one plus the sum of the elements diagonally to its northwest, modulo 4.

The programs for A240266, there is no canonical definition to state claims against.
-/

/-! ## A240266.P2664263930599393542

`A240271(∑[n+2])`
-/

namespace A240266.P2664263930599393542
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240271 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A240266.P2664263930599393542

/-! ## A240266.P3458274693192677721

`record[A240271(abs(A201163(n)))]`
-/

namespace A240266.P3458274693192677721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240271 |A201163 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A240266.P3458274693192677721

/-! ## A240266.P7682171501625502540

`lcm(A033999(n), A240271(A000096(n+1)))`
-/

namespace A240266.P7682171501625502540
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A240271 (A000096 (n + 1)).toNat)

end

end A240266.P7682171501625502540

/-! ## A240266.P15149827629079829500

`A033999(2*n)*A240271(A000096(n+1))`
-/

namespace A240266.P15149827629079829500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (2 * n) * A240271 (A000096 (n + 1)).toNat

end

end A240266.P15149827629079829500

/-! ## A240266.P10699218677216466888

`A240271(A000096(n+1))%A253935(n+1)`
-/

namespace A240266.P10699218677216466888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A240271 (A000096 (n + 1)).toNat) (A253935 (n + 1))

end

end A240266.P10699218677216466888

/-!
# A240267: Number of nX3 0..3 arrays with no element equal to zero plus the sum of elements to its left or one plus the sum of elements above it or one plus the sum of the elements diagonally to its northwest, modulo 4.

The programs for A240267, there is no canonical definition to state claims against.
-/

/-! ## A240267.P11657834011850177479

`A240271(∑[n+3]+1)`
-/

namespace A240267.P11657834011850177479
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240271 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A240267.P11657834011850177479

/-! ## A240267.P11761751153577223616

`record[A240271(lt[A239599(n+1), n])]`
-/

namespace A240267.P11761751153577223616
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239599 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240271 (SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A240267.P11761751153577223616

/-! ## A240267.P16273408249240572434

`record[A240271(lt[A241356(n+1), n])]`
-/

namespace A240267.P16273408249240572434
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241356 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240271 (SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A240267.P16273408249240572434

/-!
# A240268: Number of nX4 0..3 arrays with no element equal to zero plus the sum of elements to its left or one plus the sum of elements above it or one plus the sum of the elements diagonally to its northwest, modulo 4.

The programs for A240268, there is no canonical definition to state claims against.
-/

/-! ## A240268.P6236335946786544299

`A240271(∑[n+4]+3)`
-/

namespace A240268.P6236335946786544299
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240271 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A240268.P6236335946786544299

/-! ## A240268.P1804625662289444309

`A240271(A055998(n+2))+A000038(2*n+1)`
-/

namespace A240268.P1804625662289444309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240271 (A055998 (n + 2)).toNat + A000038 (2 * n + 1)

end

end A240268.P1804625662289444309

/-!
# A240269: Number of nX5 0..3 arrays with no element equal to zero plus the sum of elements to its left or one plus the sum of elements above it or one plus the sum of the elements diagonally to its northwest, modulo 4.

The programs for A240269, there is no canonical definition to state claims against.
-/

/-! ## A240269.P15246732597448850550

`A240271(∑[n+5]+6)`
-/

namespace A240269.P15246732597448850550
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240271 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A240269.P15246732597448850550

/-!
# A240270: Number of n X 6 0..3 arrays with no element equal to zero plus the sum of elements to its left or one plus the sum of elements above it or one plus the sum of the elements diagonally to its northwest, modulo 4.

The programs for A240270, there is no canonical definition to state claims against.
-/

/-! ## A240270.P15440995587627892710

`A240271(A052905(n+3))`
-/

namespace A240270.P15440995587627892710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240271 (A052905 (n + 3)).toNat

end

end A240270.P15440995587627892710

/-! ## A240270.P14397448848045584371

`A240271(eq[3, A219347(n)])`
-/

namespace A240270.P14397448848045584371
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240271 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A240270.P14397448848045584371

/-! ## A240270.P9075458708642724958

`A240271(eq[3, A274661(n)])`
-/

namespace A240270.P9075458708642724958
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274661 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240271 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A240270.P9075458708642724958

/-! ## A240270.P7286111119565078983

`A240271(eq[5, A193592(n)])`
-/

namespace A240270.P7286111119565078983
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240271 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A240270.P7286111119565078983

/-!
# A240272: Number of 2Xn 0..3 arrays with no element equal to zero plus the sum of elements to its left or one plus the sum of the elements above it or one plus the sum of the elements diagonally to its northwest, modulo 4.

The programs for A240272, there is no canonical definition to state claims against.
-/

/-! ## A240272.P502895064294665083

`A240271(∑[n+1]+2)`
-/

namespace A240272.P502895064294665083
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240271 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A240272.P502895064294665083

/-! ## A240272.P12419312714560291558

`record[A240271(n+3)/A049385(n+1)]`
-/

namespace A240272.P12419312714560291558
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A240271 (n + 3) : ℚ) / (A049385 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A240272.P12419312714560291558

/-!
# A240273: Number of 3Xn 0..3 arrays with no element equal to zero plus the sum of elements to its left or one plus the sum of the elements above it or one plus the sum of the elements diagonally to its northwest, modulo 4.

The programs for A240273, there is no canonical definition to state claims against.
-/

/-! ## A240273.P3380504883593709626

`A240271(∑[n+2]+4)`
-/

namespace A240273.P3380504883593709626
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240271 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A240273.P3380504883593709626

/-! ## A240273.P15198737066822358891

`A240271(A167614(n+1))+A025466(n)`
-/

namespace A240273.P15198737066822358891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240271 (A167614 (n + 1)).toNat + A025466 n

end

end A240273.P15198737066822358891

/-! ## A240273.P17898999293911124790

`A240271(A167614(n+1))+A025469(n)`
-/

namespace A240273.P17898999293911124790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240271 (A167614 (n + 1)).toNat + A025469 n

end

end A240273.P17898999293911124790

/-! ## A240273.P7481472876072396766

`A240271(A167614(n+1))+A066035(n)`
-/

namespace A240273.P7481472876072396766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240271 (A167614 (n + 1)).toNat + A066035 n

end

end A240273.P7481472876072396766

/-! ## A240273.P12578619043241957035

`A264668(n)+A240271(A167614(n+1))`
-/

namespace A240273.P12578619043241957035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264668 n + A240271 (A167614 (n + 1)).toNat

end

end A240273.P12578619043241957035

/-!
# A240274: Number of 4Xn 0..3 arrays with no element equal to zero plus the sum of elements to its left or one plus the sum of the elements above it or one plus the sum of the elements diagonally to its northwest, modulo 4.

The programs for A240274, there is no canonical definition to state claims against.
-/

/-! ## A240274.P12227171052556495159

`A240271(∑[n+3]+7)`
-/

namespace A240274.P12227171052556495159
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240271 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A240274.P12227171052556495159

/-! ## A240274.P8216807947607990776

`or(C(2, n+2), A240271(A055999(n)+10))`
-/

namespace A240274.P8216807947607990776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (Nat.choose 2 (n + 2) : ℤ) (A240271 (A055999 n + 10).toNat)

end

end A240274.P8216807947607990776

/-! ## A240274.P3439023248752941200

`A240271(A055999(n)+10)+A210718(n)`
-/

namespace A240274.P3439023248752941200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240271 (A055999 n + 10).toNat + A210718 n

end

end A240274.P3439023248752941200

/-! ## A240274.P12395633853712251343

`A240271(A055999(n)+10)+char[A044862(n+1)]`
-/

namespace A240274.P12395633853712251343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044862 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240271 (A055999 n + 10).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A240274.P12395633853712251343

/-! ## A240274.P9030006188211501984

`A240271(A055999(n)+10)+A055641(8*n+7)`
-/

namespace A240274.P9030006188211501984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240271 (A055999 n + 10).toNat + A055641 (8 * n + 7)

end

end A240274.P9030006188211501984

/-!
# A240275: Number of 5Xn 0..3 arrays with no element equal to zero plus the sum of elements to its left or one plus the sum of the elements above it or one plus the sum of the elements diagonally to its northwest, modulo 4.

The programs for A240275, there is no canonical definition to state claims against.
-/

/-! ## A240275.P735200319602438635

`A240271(∑[n+3]+n+12)`
-/

namespace A240275.P735200319602438635
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240271 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 12))

end

end A240275.P735200319602438635

/-! ## A240275.P4752679634387077672

`lcm(1-and(2, n), A240271(A167499(n+3)))`
-/

namespace A240275.P4752679634387077672
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (1 - (Nat.land 2 n : ℤ)) (A240271 (A167499 (n + 3)).toNat)

end

end A240275.P4752679634387077672

/-!
# A240276: Number of 6Xn 0..3 arrays with no element equal to zero plus the sum of elements to its left or one plus the sum of the elements above it or one plus the sum of the elements diagonally to its northwest, modulo 4.

The programs for A240276, there is no canonical definition to state claims against.
-/

/-! ## A240276.P10084255161457999943

`A240271(A056115(n)+21)`
-/

namespace A240276.P10084255161457999943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240271 (A056115 n + 21).toNat

end

end A240276.P10084255161457999943

/-! ## A240276.P17801913921487667849

`A240271(A167499(n+4)+1)`
-/

namespace A240276.P17801913921487667849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240271 (A167499 (n + 4) + 1).toNat

end

end A240276.P17801913921487667849

/-! ## A240276.P16256938295933858594

`A240271(A167614(n+4)+3)`
-/

namespace A240276.P16256938295933858594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240271 (A167614 (n + 4) + 3).toNat

end

end A240276.P16256938295933858594

/-! ## A240276.P7393859761278873792

`A240271(A000124(n+5)+5)`
-/

namespace A240276.P7393859761278873792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240271 (A000124 (n + 5) + 5).toNat

end

end A240276.P7393859761278873792

/-! ## A240276.P16255761203687947835

`A240271(A000217(n+5)+6)`
-/

namespace A240276.P16255761203687947835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240271 (A000217 (n + 5) + 6).toNat

end

end A240276.P16255761203687947835

/-!
# A240277: Minimal number of people such that exactly n days are required to spread gossip.

The programs for A240277, the canonical program `A240277.P4182653147727925551` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A240277 has offset 0).

The definition of A240277 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A240277.P4182653147727925551

`3*a(n-1)-2*a(n-2)` with `a(0)=1, a(1)=2, a(2)=4, a(3)=3, a(4)=5`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A240277

/-- `3*a(n-1)-2*a(n-2)` -/
def P4182653147727925551.Spec : Prop :=
  ∀ n, P4182653147727925551.a n = A240277 n

theorem P4182653147727925551.correct : P4182653147727925551.Spec := by
  intro n
  simp only [A240277]

end A240277

/-! ## A240277.P5681050829949440691

`ogf((1-x-5x^3+4x^4)/(1-3x+2x^2))`
-/

namespace A240277.P5681050829949440691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1, 0, -5, 4] [1, -3, 2] n

end

end A240277.P5681050829949440691

namespace A240277

/-- `ogf((1-x-5x^3+4x^4)/(1-3x+2x^2))` -/
def P5681050829949440691.Spec : Prop :=
  ∀ n, P5681050829949440691.a n = A240277 n

end A240277

/-! ## A240277.P13161363716949039318

`lcm(2, a(n-1))-1` with `a(0)=1, a(1)=2, a(2)=4`
-/

namespace A240277.P13161363716949039318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 4] fun n a =>
  (Int.lcm 2 (a (n - 1)) : ℤ) - 1

end

end A240277.P13161363716949039318

namespace A240277

/-- `lcm(2, a(n-1))-1` -/
def P13161363716949039318.Spec : Prop :=
  ∀ n, P13161363716949039318.a n = A240277 n

end A240277

/-! ## A240277.P5090155507420313337

`2*a(n-1)-1` with `a(0)=1, a(1)=2, a(2)=4, a(3)=3`
-/

namespace A240277.P5090155507420313337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 4, 3] fun n a =>
  2 * a (n - 1) - 1

end

end A240277.P5090155507420313337

namespace A240277

/-- `2*a(n-1)-1` -/
def P5090155507420313337.Spec : Prop :=
  ∀ n, P5090155507420313337.a n = A240277 n

end A240277

/-! ## A240277.P11513987540466905770

`a(n-1)+2^(n-3)` with `a(0)=1, a(1)=2, a(2)=4, a(3)=3`
-/

namespace A240277.P11513987540466905770
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 2, 4, 3] fun n a =>
  a (n - 1) + (2 : ℚ) ^ ((n : ℤ) - 3 : ℤ)

end

end A240277.P11513987540466905770

namespace A240277

/-- `a(n-1)+2^(n-3)` -/
def P11513987540466905770.Spec : Prop :=
  ∀ n, P11513987540466905770.a n = (A240277 n : ℚ)

end A240277

/-! ## A240277.P1934254535850557779

`a(n-1)+a(n-1)-1` with `a(0)=1, a(1)=2, a(2)=4, a(3)=3`
-/

namespace A240277.P1934254535850557779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 4, 3] fun n a =>
  a (n - 1) + a (n - 1) - 1

end

end A240277.P1934254535850557779

namespace A240277

/-- `a(n-1)+a(n-1)-1` -/
def P1934254535850557779.Spec : Prop :=
  ∀ n, P1934254535850557779.a n = A240277 n

end A240277

/-! ## A240277.P15198941116023134700

`and(∑[A098011(n+1)], A083329(n))`
-/

namespace A240277.P15198941116023134700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098011 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (∑ j ∈ Finset.range (n + 1), f1 j) (A083329 n)

end

end A240277.P15198941116023134700

namespace A240277

/-- `and(∑[A098011(n+1)], A083329(n))` -/
def P15198941116023134700.Spec : Prop :=
  ∀ n, P15198941116023134700.a n = A240277 n

end A240277

/-! ## A240277.P4993457302525073740

`A257113(n+1)-A078485(n+1)`
-/

namespace A240277.P4993457302525073740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257113 (n + 1) - A078485 (n + 1)

end

end A240277.P4993457302525073740

namespace A240277

/-- `A257113(n+1)-A078485(n+1)` -/
def P4993457302525073740.Spec : Prop :=
  ∀ n, P4993457302525073740.a n = A240277 n

end A240277

/-! ## A240277.P12920984688464390297

`A323227(n)-n%A145267(n)`
-/

namespace A240277.P12920984688464390297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323227 n - Int.tmod (n : ℤ) (A145267 n)

end

end A240277.P12920984688464390297

namespace A240277

/-- `A323227(n)-n%A145267(n)` -/
def P12920984688464390297.Spec : Prop :=
  ∀ n, P12920984688464390297.a n = A240277 n

end A240277

/-! ## A240277.P11120397993621288000

`A131816(∑[n]+n-A163985(n))`
-/

namespace A240277.P11120397993621288000
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131816 (((∑ j ∈ Finset.range (n + 1), f1 j + n : ℕ) : ℤ) - A163985 n).toNat

end

end A240277.P11120397993621288000

namespace A240277

/-- `A131816(∑[n]+n-A163985(n))` -/
def P11120397993621288000.Spec : Prop :=
  ∀ n, P11120397993621288000.a n = A240277 n

end A240277

/-! ## A240277.P10212482183714875767

`A166444(n)+A014963(A179865(n+1))`
-/

namespace A240277.P10212482183714875767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166444 n + A014963 (A179865 (n + 1)).toNat

end

end A240277.P10212482183714875767

namespace A240277

/-- `A166444(n)+A014963(A179865(n+1))` -/
def P10212482183714875767.Spec : Prop :=
  ∀ n, P10212482183714875767.a n = A240277 n

end A240277

/-!
# A240279: Number of nX2 0..3 arrays with no element equal to one plus the sum of elements to its left or two plus the sum of elements above it or zero plus the sum of the elements diagonally to its northwest, modulo 4.

The programs for A240279, there is no canonical definition to state claims against.
-/

/-! ## A240279.P11986606642754671065

`A240284(∑[n+2])`
-/

namespace A240279.P11986606642754671065
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240284 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A240279.P11986606642754671065

/-! ## A240279.P10983551109310670320

`record[A240284(abs(A201163(n)))]`
-/

namespace A240279.P10983551109310670320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240284 |A201163 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A240279.P10983551109310670320

/-! ## A240279.P5205456007917421112

`record[A240284(Δ[A003453(n+5)])]`
-/

namespace A240279.P5205456007917421112
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003453 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240284 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A240279.P5205456007917421112

/-! ## A240279.P16875721774561563315

`record[A240284(n+2)/A022167(n+2)]`
-/

namespace A240279.P16875721774561563315
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A240284 (n + 2) : ℚ) / (A022167 (n + 2) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A240279.P16875721774561563315

/-! ## A240279.P6576232565110429300

`A240284(A000096(n+1))%A016960(n)`
-/

namespace A240279.P6576232565110429300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A240284 (A000096 (n + 1)).toNat) (A016960 n)

end

end A240279.P6576232565110429300

/-!
# A240280: Number of nX3 0..3 arrays with no element equal to one plus the sum of elements to its left or two plus the sum of elements above it or zero plus the sum of the elements diagonally to its northwest, modulo 4.

The programs for A240280, there is no canonical definition to state claims against.
-/

/-! ## A240280.P5897188802165381421

`A240284(∑[n+3]+1)`
-/

namespace A240280.P5897188802165381421
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240284 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A240280.P5897188802165381421

/-! ## A240280.P10156718938645779228

`A240284(A034856(n+2))%A081506(n+1)`
-/

namespace A240280.P10156718938645779228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A240284 (A034856 (n + 2)).toNat) (A081506 (n + 1))

end

end A240280.P10156718938645779228

/-!
# A240281: Number of n X 4 0..3 arrays with no element equal to one plus the sum of elements to its left or two plus the sum of elements above it or zero plus the sum of the elements diagonally to its northwest, modulo 4.

The programs for A240281, there is no canonical definition to state claims against.
-/

/-! ## A240281.P11308232915345023795

`A240284(∑[n+3]+n+4)`
-/

namespace A240281.P11308232915345023795
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240284 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 4))

end

end A240281.P11308232915345023795

/-! ## A240281.P14966729007205859005

`lcm(1-and(2, n), A240284(A055998(n+2)))`
-/

namespace A240281.P14966729007205859005
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (1 - (Nat.land 2 n : ℤ)) (A240284 (A055998 (n + 2)).toNat)

end

end A240281.P14966729007205859005

/-! ## A240281.P3950987524752201160

`A240284(A055998(n+2))%A013737(n)`
-/

namespace A240281.P3950987524752201160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A240284 (A055998 (n + 2)).toNat) (A013737 n)

end

end A240281.P3950987524752201160

/-! ## A240281.P9514979500782030724

`lcm(A209972(n), A240284(A055998(n+2)))`
-/

namespace A240281.P9514979500782030724
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A209972 n) (A240284 (A055998 (n + 2)).toNat)

end

end A240281.P9514979500782030724

/-! ## A240281.P17808390920743402861

`lcm(A240284(A141214(n+1)), A356153(n+1))`
-/

namespace A240281.P17808390920743402861
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A240284 (A141214 (n + 1)).toNat) (A356153 (n + 1))

end

end A240281.P17808390920743402861

/-!
# A240282: Number of nX5 0..3 arrays with no element equal to one plus the sum of elements to its left or two plus the sum of elements above it or zero plus the sum of the elements diagonally to its northwest, modulo 4.

The programs for A240282, there is no canonical definition to state claims against.
-/

/-! ## A240282.P75695598654499621

`A240284(∑[n+5]+6)`
-/

namespace A240282.P75695598654499621
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240284 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A240282.P75695598654499621

/-!
# A240283: Number of nX6 0..3 arrays with no element equal to one plus the sum of elements to its left or two plus the sum of elements above it or zero plus the sum of the elements diagonally to its northwest, modulo 4.

The programs for A240283, there is no canonical definition to state claims against.
-/

/-! ## A240283.P44429305873369698

`A240284(A052905(n+3))`
-/

namespace A240283.P44429305873369698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240284 (A052905 (n + 3)).toNat

end

end A240283.P44429305873369698

/-! ## A240283.P12578147721949729363

`A240284(A056119(n)+16)`
-/

namespace A240283.P12578147721949729363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240284 (A056119 n + 16).toNat

end

end A240283.P12578147721949729363

/-! ## A240283.P9334525721268823904

`A240284(eq[3, A219347(n)])`
-/

namespace A240283.P9334525721268823904
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240284 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A240283.P9334525721268823904

/-! ## A240283.P2965378324291520527

`A240284(eq[5, A152157(n)])`
-/

namespace A240283.P2965378324291520527
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240284 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A240283.P2965378324291520527

/-! ## A240283.P977511519410408531

`A240284(eq[5, A193592(n)])`
-/

namespace A240283.P977511519410408531
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240284 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A240283.P977511519410408531

/-!
# A240285: Number of 2 X n 0..3 arrays with no element equal to one plus the sum of elements to its left or two plus the sum of the elements above it or zero plus the sum of the elements diagonally to its northwest, modulo 4.

The programs for A240285, there is no canonical definition to state claims against.
-/

/-! ## A240285.P8868285805209031918

`A240284(∑[n+1]+2)`
-/

namespace A240285.P8868285805209031918
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240284 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A240285.P8868285805209031918

/-! ## A240285.P10378742108458956070

`record[A240284(A256910(n)+2)]`
-/

namespace A240285.P10378742108458956070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240284 (A256910 n + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A240285.P10378742108458956070

/-! ## A240285.P7643044168533912480

`record[A010054(n)*A240284(n+2)]`
-/

namespace A240285.P7643044168533912480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A240284 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A240285.P7643044168533912480

/-! ## A240285.P6876252493769660854

`record[A240284(n+2)/A022166(n)]`
-/

namespace A240285.P6876252493769660854
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A240284 (n + 2) : ℚ) / (A022166 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A240285.P6876252493769660854

/-! ## A240285.P1763911358582876780

`record[A240284(n+2)/A022167(n)]`
-/

namespace A240285.P1763911358582876780
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A240284 (n + 2) : ℚ) / (A022167 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A240285.P1763911358582876780

/-!
# A240286: Number of 3Xn 0..3 arrays with no element equal to one plus the sum of elements to its left or two plus the sum of the elements above it or zero plus the sum of the elements diagonally to its northwest, modulo 4.

The programs for A240286, there is no canonical definition to state claims against.
-/

/-! ## A240286.P12168402708096233177

`A240284(∑[n+2]+4)`
-/

namespace A240286.P12168402708096233177
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240284 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A240286.P12168402708096233177

/-! ## A240286.P9114232738325071465

`record[A240284(A167614(∑{e}[n+1, #]+1))]`
-/

namespace A240286.P9114232738325071465
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240284 (A167614 (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A240286.P9114232738325071465

/-! ## A240286.P12337523501574358415

`A240284(A167614(n+1))+A185284(n)`
-/

namespace A240286.P12337523501574358415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240284 (A167614 (n + 1)).toNat + A185284 n

end

end A240286.P12337523501574358415

/-! ## A240286.P17186307888709046932

`A240284(A167614(n+1))*A262681(n)`
-/

namespace A240286.P17186307888709046932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240284 (A167614 (n + 1)).toNat * A262681 n

end

end A240286.P17186307888709046932

/-! ## A240286.P9042297231934727642

`lcm(A020985(n), A240284(A167614(n+1)))`
-/

namespace A240286.P9042297231934727642
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A240284 (A167614 (n + 1)).toNat)

end

end A240286.P9042297231934727642

/-!
# A240287: Number of 4Xn 0..3 arrays with no element equal to one plus the sum of elements to its left or two plus the sum of the elements above it or zero plus the sum of the elements diagonally to its northwest, modulo 4.

The programs for A240287, there is no canonical definition to state claims against.
-/

/-! ## A240287.P18210585560640310172

`A240284(∑[n+3]+7)`
-/

namespace A240287.P18210585560640310172
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240284 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A240287.P18210585560640310172

/-! ## A240287.P4289381737157995900

`A240284(A055999(n)+10)+A210718(n)`
-/

namespace A240287.P4289381737157995900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240284 (A055999 n + 10).toNat + A210718 n

end

end A240287.P4289381737157995900

/-! ## A240287.P9892793363589175398

`A240284(A055999(n)+10)+char[A044862(n+1)]`
-/

namespace A240287.P9892793363589175398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044862 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240284 (A055999 n + 10).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A240287.P9892793363589175398

/-! ## A240287.P13031034667809184890

`A240284(A055999(n)+10)+A055641(8*n+7)`
-/

namespace A240287.P13031034667809184890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240284 (A055999 n + 10).toNat + A055641 (8 * n + 7)

end

end A240287.P13031034667809184890

/-!
# A240288: Number of 5Xn 0..3 arrays with no element equal to one plus the sum of elements to its left or two plus the sum of the elements above it or zero plus the sum of the elements diagonally to its northwest, modulo 4.

The programs for A240288, there is no canonical definition to state claims against.
-/

/-! ## A240288.P8030430716720764173

`A240284(∑[n+3]+n+12)`
-/

namespace A240288.P8030430716720764173
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240284 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 12))

end

end A240288.P8030430716720764173

/-! ## A240288.P6958975013179884765

`A240284(A056000(n)+15)+A006983(n+1)`
-/

namespace A240288.P6958975013179884765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240284 (A056000 n + 15).toNat + A006983 (n + 1)

end

end A240288.P6958975013179884765

/-! ## A240288.P3358480440725881110

`A240284(A056000(n)+15)+A085980(n+1)`
-/

namespace A240288.P3358480440725881110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240284 (A056000 n + 15).toNat + A085980 (n + 1)

end

end A240288.P3358480440725881110

/-! ## A240288.P1625514573707106893

`A240284(A167499(n+3))%A057093(n+4)`
-/

namespace A240288.P1625514573707106893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A240284 (A167499 (n + 3)).toNat) (A057093 (n + 4))

end

end A240288.P1625514573707106893

/-! ## A240288.P390712806239014180

`A240284(A056000(n)+15)%A001929(n+4)`
-/

namespace A240288.P390712806239014180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A240284 (A056000 n + 15).toNat) (A001929 (n + 4))

end

end A240288.P390712806239014180

/-!
# A240289: Number of 6 X n 0..3 arrays with no element equal to one plus the sum of elements to its left or two plus the sum of the elements above it or zero plus the sum of the elements diagonally to its northwest, modulo 4.

The programs for A240289, there is no canonical definition to state claims against.
-/

/-! ## A240289.P2089208580504167034

`A240284(A056115(n)+21)`
-/

namespace A240289.P2089208580504167034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240284 (A056115 n + 21).toNat

end

end A240289.P2089208580504167034

/-! ## A240289.P4503567832942636930

`A240284(A167499(n+4)+1)`
-/

namespace A240289.P4503567832942636930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240284 (A167499 (n + 4) + 1).toNat

end

end A240289.P4503567832942636930

/-! ## A240289.P11446175262430331037

`A240284(A167614(n+4)+3)`
-/

namespace A240289.P11446175262430331037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240284 (A167614 (n + 4) + 3).toNat

end

end A240289.P11446175262430331037

/-! ## A240289.P8322695373626718065

`A240284(A000217(n+5)+6)`
-/

namespace A240289.P8322695373626718065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240284 (A000217 (n + 5) + 6).toNat

end

end A240289.P8322695373626718065

/-! ## A240289.P16653856342956353995

`A240284(A246172(n+1)+20)`
-/

namespace A240289.P16653856342956353995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240284 (A246172 (n + 1) + 20).toNat

end

end A240289.P16653856342956353995

/-!
# A240290: Number of n X 2 0..3 arrays with no element equal to zero plus the sum of elements to its left or two plus the sum of elements above it or two plus the sum of the elements diagonally to its northwest, modulo 4.

The programs for A240290, there is no canonical definition to state claims against.
-/

/-! ## A240290.P13351924418328542599

`A240295(∑[n+2])`
-/

namespace A240290.P13351924418328542599
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240295 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A240290.P13351924418328542599

/-! ## A240290.P9652937596808141998

`record[A240295(abs(A201163(n)))]`
-/

namespace A240290.P9652937596808141998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240295 |A201163 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A240290.P9652937596808141998

/-!
# A240291: Number of nX3 0..3 arrays with no element equal to zero plus the sum of elements to its left or two plus the sum of elements above it or two plus the sum of the elements diagonally to its northwest, modulo 4.

The programs for A240291, there is no canonical definition to state claims against.
-/

/-! ## A240291.P12107734743273041431

`A240295(∑[n+3]+1)`
-/

namespace A240291.P12107734743273041431
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240295 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A240291.P12107734743273041431

/-!
# A240292: Number of n X 4 0..3 arrays with no element equal to zero plus the sum of elements to its left or two plus the sum of elements above it or two plus the sum of the elements diagonally to its northwest, modulo 4.

The programs for A240292, there is no canonical definition to state claims against.
-/

/-! ## A240292.P119948891456628937

`A240295(∑[n+3]+n+4)`
-/

namespace A240292.P119948891456628937
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240295 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 4))

end

end A240292.P119948891456628937

/-! ## A240292.P3361232372981039045

`lcm(2, A240295(A141214(n+1)))`
-/

namespace A240292.P3361232372981039045
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A240295 (A141214 (n + 1)).toNat)

end

end A240292.P3361232372981039045

/-! ## A240292.P8991062817779216220

`A240295(A141214(n+1))%A240291(2*(n+1))`
-/

namespace A240292.P8991062817779216220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A240295 (A141214 (n + 1)).toNat) (A240291 (2 * (n + 1)))

end

end A240292.P8991062817779216220

/-!
# A240293: Number of nX5 0..3 arrays with no element equal to zero plus the sum of elements to its left or two plus the sum of elements above it or two plus the sum of the elements diagonally to its northwest, modulo 4.

The programs for A240293, there is no canonical definition to state claims against.
-/

/-! ## A240293.P5722911471168087548

`A240295(∑[n+5]+6)`
-/

namespace A240293.P5722911471168087548
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240295 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A240293.P5722911471168087548

/-! ## A240293.P14042629768134449704

`lcm(2, A240295(A046691(n+3)))`
-/

namespace A240293.P14042629768134449704
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A240295 (A046691 (n + 3)).toNat)

end

end A240293.P14042629768134449704

/-! ## A240293.P1433032298077817226

`A240351(n+2)+A240295(A046691(n+3))`
-/

namespace A240293.P1433032298077817226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240351 (n + 2) + A240295 (A046691 (n + 3)).toNat

end

end A240293.P1433032298077817226

/-! ## A240293.P161532776844041055

`A057427(n+4)*A240295(A046691(n+3))`
-/

namespace A240293.P161532776844041055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (n + 4) * A240295 (A046691 (n + 3)).toNat

end

end A240293.P161532776844041055

/-! ## A240293.P3578056945856222998

`A240329(3*n+2)+A240295(A046691(n+3))`
-/

namespace A240293.P3578056945856222998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240329 (3 * n + 2) + A240295 (A046691 (n + 3)).toNat

end

end A240293.P3578056945856222998

/-!
# A240294: Number of nX6 0..3 arrays with no element equal to zero plus the sum of elements to its left or two plus the sum of elements above it or two plus the sum of the elements diagonally to its northwest, modulo 4.

The programs for A240294, there is no canonical definition to state claims against.
-/

/-! ## A240294.P8234834703877477900

`A240295(A052905(n+3))`
-/

namespace A240294.P8234834703877477900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240295 (A052905 (n + 3)).toNat

end

end A240294.P8234834703877477900

/-! ## A240294.P11096015429330052738

`A240295(A056119(n)+16)`
-/

namespace A240294.P11096015429330052738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240295 (A056119 n + 16).toNat

end

end A240294.P11096015429330052738

/-! ## A240294.P2858915392471238395

`A240295(eq[3, A219347(n)])`
-/

namespace A240294.P2858915392471238395
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240295 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A240294.P2858915392471238395

/-! ## A240294.P13236487964943618630

`A240295(eq[3, A274661(n)])`
-/

namespace A240294.P13236487964943618630
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274661 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240295 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A240294.P13236487964943618630

/-!
# A240296: Number of 2Xn 0..3 arrays with no element equal to zero plus the sum of elements to its left or two plus the sum of the elements above it or two plus the sum of the elements diagonally to its northwest, modulo 4.

The programs for A240296, there is no canonical definition to state claims against.
-/

/-! ## A240296.P9921378108909737333

`A240295(∑[n+1]+2)`
-/

namespace A240296.P9921378108909737333
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240295 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A240296.P9921378108909737333

/-! ## A240296.P8538572620843273134

`record[gcd(A025581(n), A240295(n+3))]`
-/

namespace A240296.P8538572620843273134
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A025581 n) (A240295 (n + 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A240296.P8538572620843273134

/-! ## A240296.P3118064733834694128

`A240295(A133263(n+1))+A063524(2*n)`
-/

namespace A240296.P3118064733834694128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240295 (A133263 (n + 1)).toNat + A063524 (2 * n)

end

end A240296.P3118064733834694128

/-! ## A240296.P10432833739690794304

`A317542(3*n)+A240295(A133263(n+1))`
-/

namespace A240296.P10432833739690794304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317542 (3 * n) + A240295 (A133263 (n + 1)).toNat

end

end A240296.P10432833739690794304

/-! ## A240296.P12909649046397669566

`A234959(3*n+5)*A240295(A133263(n+1))`
-/

namespace A240296.P12909649046397669566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234959 (3 * n + 5) * A240295 (A133263 (n + 1)).toNat

end

end A240296.P12909649046397669566

/-!
# A240297: Number of 3Xn 0..3 arrays with no element equal to zero plus the sum of elements to its left or two plus the sum of the elements above it or two plus the sum of the elements diagonally to its northwest, modulo 4.

The programs for A240297, there is no canonical definition to state claims against.
-/

/-! ## A240297.P8863261944771100358

`A240295(∑[n+2]+4)`
-/

namespace A240297.P8863261944771100358
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240295 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A240297.P8863261944771100358

/-! ## A240297.P7483716726770503765

`lcm(2, A240295(A167614(n+1)))`
-/

namespace A240297.P7483716726770503765
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A240295 (A167614 (n + 1)).toNat)

end

end A240297.P7483716726770503765

/-! ## A240297.P17600859189991322853

`A240295(A167614(n+1))+A011735(n)`
-/

namespace A240297.P17600859189991322853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240295 (A167614 (n + 1)).toNat + A011735 n

end

end A240297.P17600859189991322853

/-! ## A240297.P1593941690816362448

`A240295(A167614(n+1))+A184955(n)`
-/

namespace A240297.P1593941690816362448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240295 (A167614 (n + 1)).toNat + A184955 n

end

end A240297.P1593941690816362448

/-! ## A240297.P1286576225436644944

`A240295(A167614(n+1))+A185284(n)`
-/

namespace A240297.P1286576225436644944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240295 (A167614 (n + 1)).toNat + A185284 n

end

end A240297.P1286576225436644944

/-!
# A240298: Number of 4Xn 0..3 arrays with no element equal to zero plus the sum of elements to its left or two plus the sum of the elements above it or two plus the sum of the elements diagonally to its northwest, modulo 4.

The programs for A240298, there is no canonical definition to state claims against.
-/

/-! ## A240298.P4542915550177471350

`A240295(∑[n+3]+7)`
-/

namespace A240298.P4542915550177471350
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240295 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A240298.P4542915550177471350

/-! ## A240298.P2210866461272608829

`A240295(A055999(n)+10)+A210718(n)`
-/

namespace A240298.P2210866461272608829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240295 (A055999 n + 10).toNat + A210718 n

end

end A240298.P2210866461272608829

/-! ## A240298.P5531919610011435570

`A240295(A055999(n)+10)+char[A044862(n+1)]`
-/

namespace A240298.P5531919610011435570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044862 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240295 (A055999 n + 10).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A240298.P5531919610011435570

/-! ## A240298.P14851483158108090811

`A240295(A055999(n)+10)+A055641(8*n+7)`
-/

namespace A240298.P14851483158108090811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240295 (A055999 n + 10).toNat + A055641 (8 * n + 7)

end

end A240298.P14851483158108090811

/-!
# A240299: Number of 5Xn 0..3 arrays with no element equal to zero plus the sum of elements to its left or two plus the sum of the elements above it or two plus the sum of the elements diagonally to its northwest, modulo 4.

The programs for A240299, there is no canonical definition to state claims against.
-/

/-! ## A240299.P1674624633540435638

`A240295(∑[n+3]+n+12)`
-/

namespace A240299.P1674624633540435638
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240295 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 12))

end

end A240299.P1674624633540435638

