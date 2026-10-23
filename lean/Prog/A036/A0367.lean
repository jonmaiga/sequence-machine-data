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
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C036
import Seq.B000.C037
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
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
# A036700: Number of Gaussian integers z=a+bi satisfying |z|<=n, a>=0, 0<=b

The programs for A036700, there is no canonical definition to state claims against.
-/

/-! ## A036700.P1621000627292895814

`∑[A036701(n)]`
-/

namespace A036700.P1621000627292895814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036701 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A036700.P1621000627292895814

/-! ## A036700.P4045576726230956549

`∑[floor(A036697(n)/2)]`
-/

namespace A036700.P4045576726230956549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A036697 n : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A036700.P4045576726230956549

/-! ## A036700.P17913053404901510834

`∑[ceil(A036694(n)/2)]`
-/

namespace A036700.P17913053404901510834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A036694 n : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A036700.P17913053404901510834

/-! ## A036700.P17384253630894344883

`∑[round(A036696(n)/4)]`
-/

namespace A036700.P17384253630894344883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A036696 n : ℚ) / 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A036700.P17384253630894344883

/-! ## A036700.P18158576763373309347

`A000603(n)-A036702(n)`
-/

namespace A036700.P18158576763373309347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000603 n - A036702 n

end

end A036700.P18158576763373309347

/-! ## A036700.P16484857959974734170

`A000603(n)-∑[A036703(n)]`
-/

namespace A036700.P16484857959974734170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036703 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000603 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A036700.P16484857959974734170

/-! ## A036700.P8378542169121250347

`∑[A036697(n)-A036703(n)]`
-/

namespace A036700.P8378542169121250347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036697 n - A036703 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A036700.P8378542169121250347

/-! ## A036700.P16845580816697483315

`∑[A036697(n)]-A036702(n)`
-/

namespace A036700.P16845580816697483315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036697 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A036702 n

end

end A036700.P16845580816697483315

/-! ## A036700.P13092493767292328843

`A036695(n)-(A036702(n)+A036698(n))`
-/

namespace A036700.P13092493767292328843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036695 n - (A036702 n + A036698 n)

end

end A036700.P13092493767292328843

/-! ## A036700.P15245405916918307476

`∑[A004526(A036697(n))]`
-/

namespace A036700.P15245405916918307476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A036697 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A036700.P15245405916918307476

/-! ## A036700.P11091495752128067646

`∑[A110654(A036694(n))]`
-/

namespace A036700.P11091495752128067646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A036694 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A036700.P11091495752128067646

/-! ## A036700.P15855081577449175642

`∑[A004526(A036694(n)+1)]`
-/

namespace A036700.P15855081577449175642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A036694 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A036700.P15855081577449175642

/-! ## A036700.P446106265380401783

`∑[A110654(A036697(n)-1)]`
-/

namespace A036700.P446106265380401783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A036697 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A036700.P446106265380401783

/-! ## A036700.P16862586598783894183

`∑[A008619(A036694(n)+1)-1]`
-/

namespace A036700.P16862586598783894183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A036694 n + 1).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A036700.P16862586598783894183

/-! ## A036700.P2653482997709727475

`∑[A008624(A036696(n))]`
-/

namespace A036700.P2653482997709727475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008624 (A036696 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A036700.P2653482997709727475

/-! ## A036700.P6127980594260498269

`∑[A002265(A036696(n)+1)]`
-/

namespace A036700.P6127980594260498269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A036696 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A036700.P6127980594260498269

/-! ## A036700.P16772166495552227599

`∑[A131508(A036696(n)+1)]`
-/

namespace A036700.P16772166495552227599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131508 (A036696 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A036700.P16772166495552227599

/-!
# A036701: a(n)=number of Gaussian integers z=a+bi satisfying n-1<|z|<=n, a>=0, 0<=b

The programs for A036701, there is no canonical definition to state claims against.
-/

/-! ## A036701.P13879590916722509445

`floor(A036697(n)/2)`
-/

namespace A036701.P13879590916722509445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A036697 n : ℚ) / 2⌋

end

end A036701.P13879590916722509445

/-! ## A036701.P10462505351102285953

`ceil(A036694(n)/2)`
-/

namespace A036701.P10462505351102285953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A036694 n : ℚ) / 2⌉

end

end A036701.P10462505351102285953

/-! ## A036701.P8203890722559237007

`round(A036696(n)/4)`
-/

namespace A036701.P8203890722559237007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A036696 n : ℚ) / 4)

end

end A036701.P8203890722559237007

/-! ## A036701.P4720187074109555276

`round(A036693(n)/8)`
-/

namespace A036701.P4720187074109555276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A036693 n : ℚ) / 8)

end

end A036701.P4720187074109555276

/-! ## A036701.P5004350861075300148

`A036697(n)-A036703(n)`
-/

namespace A036701.P5004350861075300148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036697 n - A036703 n

end

end A036701.P5004350861075300148

/-! ## A036701.P7148655992809229596

`round(A036694(n)/A000005(A008578(n+1)))`
-/

namespace A036701.P7148655992809229596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A036694 n : ℚ) / (A000005 (A008578 (n + 1)).toNat : ℚ))

end

end A036701.P7148655992809229596

/-! ## A036701.P2907507277017765959

`A004526(A036697(n))`
-/

namespace A036701.P2907507277017765959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A036697 n).toNat

end

end A036701.P2907507277017765959

/-! ## A036701.P3421919301070614985

`A110654(A036694(n))`
-/

namespace A036701.P3421919301070614985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A036694 n).toNat

end

end A036701.P3421919301070614985

/-! ## A036701.P14485165310734732507

`A004526(A036694(n)+1)`
-/

namespace A036701.P14485165310734732507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A036694 n + 1).toNat

end

end A036701.P14485165310734732507

/-! ## A036701.P12817941368860360634

`A123108(A036694(n)+1)`
-/

namespace A036701.P12817941368860360634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A036694 n + 1).toNat

end

end A036701.P12817941368860360634

/-! ## A036701.P16226026131793073649

`A110654(A036697(n)-1)`
-/

namespace A036701.P16226026131793073649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A036697 n - 1).toNat

end

end A036701.P16226026131793073649

/-! ## A036701.P2209472660049388714

`A008619(A036694(n)+1)-1`
-/

namespace A036701.P2209472660049388714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A036694 n + 1).toNat - 1

end

end A036701.P2209472660049388714

/-! ## A036701.P18348429244355727330

`A065033(A036697(n)+1)-1`
-/

namespace A036701.P18348429244355727330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A036697 n + 1).toNat - 1

end

end A036701.P18348429244355727330

/-! ## A036701.P6442731916616211080

`A065033(A036694(n)+2)-1`
-/

namespace A036701.P6442731916616211080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A036694 n + 2).toNat - 1

end

end A036701.P6442731916616211080

/-! ## A036701.P7245927744334657240

`A008619(A036697(n)+2)-2`
-/

namespace A036701.P7245927744334657240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A036697 n + 2).toNat - 2

end

end A036701.P7245927744334657240

/-! ## A036701.P9708466676503160550

`A036697(n)-A008619(A036697(n)-1)`
-/

namespace A036701.P9708466676503160550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036697 n - A008619 (A036697 n - 1).toNat

end

end A036701.P9708466676503160550

/-! ## A036701.P15263271886837501326

`A008624(A036696(n))`
-/

namespace A036701.P15263271886837501326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008624 (A036696 n).toNat

end

end A036701.P15263271886837501326

/-! ## A036701.P14484584209412699493

`A002265(A036696(n)+1)`
-/

namespace A036701.P14484584209412699493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A036696 n + 1).toNat

end

end A036701.P14484584209412699493

/-! ## A036701.P15987963791502175758

`A131508(A036696(n)+1)`
-/

namespace A036701.P15987963791502175758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131508 (A036696 n + 1).toNat

end

end A036701.P15987963791502175758

/-! ## A036701.P7498142047015255291

`A008621(A036696(n)+1)-1`
-/

namespace A036701.P7498142047015255291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (A036696 n + 1).toNat - 1

end

end A036701.P7498142047015255291

/-!
# A036702: a(n)=number of Gaussian integers z=a+bi satisfying |z|<=n, a>=0, 0<=b<=a.

The programs for A036702, there is no canonical definition to state claims against.
-/

/-! ## A036702.P7061825944400748914

`∑[A036703(n)]`
-/

namespace A036702.P7061825944400748914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036703 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A036702.P7061825944400748914

/-! ## A036702.P427013891264495003

`∑[round(A036697(n)/2)]`
-/

namespace A036702.P427013891264495003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A036697 n : ℚ) / 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A036702.P427013891264495003

/-! ## A036702.P7105910703056055142

`∑[ceil(A036696(n)/4)]`
-/

namespace A036702.P7105910703056055142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A036696 n : ℚ) / 4⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A036702.P7105910703056055142

/-! ## A036702.P12194106899003117920

`∑[ceil((A036694(n)+1)/2)]`
-/

namespace A036702.P12194106899003117920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A036694 n + 1 : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A036702.P12194106899003117920

/-! ## A036702.P377502169363032488

`A000603(n)-A036700(n)`
-/

namespace A036702.P377502169363032488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000603 n - A036700 n

end

end A036702.P377502169363032488

/-! ## A036702.P10739420179240652101

`A000603(n)-∑[A036701(n)]`
-/

namespace A036702.P10739420179240652101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036701 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000603 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A036702.P10739420179240652101

/-! ## A036702.P6938177890792129219

`∑[A036697(n)-A036701(n)]`
-/

namespace A036702.P6938177890792129219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036697 n - A036701 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A036702.P6938177890792129219

/-! ## A036702.P5892400930080697028

`∑[A036697(n)]-A036700(n)`
-/

namespace A036702.P5892400930080697028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036697 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A036700 n

end

end A036702.P5892400930080697028

/-! ## A036702.P8706576199075655455

`A036700(n)+A049472(n)+1`
-/

namespace A036702.P8706576199075655455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036700 n + (A049472 n + 1)

end

end A036702.P8706576199075655455

/-! ## A036702.P2939719993922607075

`∑[A036701(n)]+A049472(n)+1`
-/

namespace A036702.P2939719993922607075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036701 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (A049472 n + 1)

end

end A036702.P2939719993922607075

/-! ## A036702.P2399693307427558649

`∑[floor((A036697(n)+A036694(n)-1)/4)+1]`
-/

namespace A036702.P2399693307427558649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A036697 n + A036694 n - 1 : ℚ) / 4⌋ + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A036702.P2399693307427558649

/-! ## A036702.P4315541389522362250

`∑[A008619(A036694(n))]`
-/

namespace A036702.P4315541389522362250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A036694 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A036702.P4315541389522362250

/-! ## A036702.P4635303512434070155

`∑[A110654(A036697(n))]`
-/

namespace A036702.P4635303512434070155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A036697 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A036702.P4635303512434070155

/-! ## A036702.P1864224296666088716

`∑[A004526(A036697(n)+1)]`
-/

namespace A036702.P1864224296666088716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A036697 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A036702.P1864224296666088716

/-! ## A036702.P12945037210996117383

`∑[A110654(A036694(n)+1)]`
-/

namespace A036702.P12945037210996117383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A036694 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A036702.P12945037210996117383

/-! ## A036702.P4071648167115619420

`∑[A000463(or(1, A036694(n)))]`
-/

namespace A036702.P4071648167115619420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (Int.lor 1 (A036694 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A036702.P4071648167115619420

/-! ## A036702.P12745638629496971054

`∑[A008621(A036696(n))]`
-/

namespace A036702.P12745638629496971054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (A036696 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A036702.P12745638629496971054

/-! ## A036702.P3857237685558062921

`∑[A008624(A036696(n)-1)]`
-/

namespace A036702.P3857237685558062921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008624 (A036696 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A036702.P3857237685558062921

/-! ## A036702.P5470011084942965160

`∑[A002265(A036696(n)+3)]`
-/

namespace A036702.P5470011084942965160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A036696 n + 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A036702.P5470011084942965160

/-! ## A036702.P18048066102572368926

`A394684(n)+A063014(n)`
-/

namespace A036702.P18048066102572368926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394684 n + A063014 n

end

end A036702.P18048066102572368926

/-!
# A036703: a(n)=number of Gaussian integers z=a+bi satisfying n-1<|z|<=n, a>=0, 0<=b<=a.

The programs for A036703, there is no canonical definition to state claims against.
-/

/-! ## A036703.P11035351981476025077

`ceil(A036697(n)/2)`
-/

namespace A036703.P11035351981476025077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A036697 n : ℚ) / 2⌉

end

end A036703.P11035351981476025077

/-! ## A036703.P11652361848954990543

`ceil(A036696(n)/4)`
-/

namespace A036703.P11652361848954990543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A036696 n : ℚ) / 4⌉

end

end A036703.P11652361848954990543

/-! ## A036703.P16616852080896401530

`floor(A036694(n)/2)+1`
-/

namespace A036703.P16616852080896401530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A036694 n : ℚ) / 2⌋ + 1

end

end A036703.P16616852080896401530

/-! ## A036703.P16215286884716438436

`ceil((A036693(n)+1)/8)`
-/

namespace A036703.P16215286884716438436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A036693 n + 1 : ℚ) / 8⌉

end

end A036703.P16215286884716438436

/-! ## A036703.P3718159449647697090

`A036697(n)-A036701(n)`
-/

namespace A036703.P3718159449647697090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036697 n - A036701 n

end

end A036703.P3718159449647697090

/-! ## A036703.P3887886877459227012

`floor(A036697(n)-A036694(n)/2)`
-/

namespace A036703.P3887886877459227012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A036697 n : ℚ) - (A036694 n : ℚ) / 2⌋

end

end A036703.P3887886877459227012

/-! ## A036703.P16444463205758504788

`round(A036697(n)/A020639(2*(n+1)))`
-/

namespace A036703.P16444463205758504788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A036697 n : ℚ) / (A020639 (2 * (n + 1)) : ℚ))

end

end A036703.P16444463205758504788

/-! ## A036703.P3242538095534384831

`A008619(A036694(n))`
-/

namespace A036703.P3242538095534384831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A036694 n).toNat

end

end A036703.P3242538095534384831

/-! ## A036703.P12319679924430027948

`A065033(A036697(n))`
-/

namespace A036703.P12319679924430027948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A036697 n).toNat

end

end A036703.P12319679924430027948

/-! ## A036703.P13700268345930623019

`A004526(A036697(n)+1)`
-/

namespace A036703.P13700268345930623019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A036697 n + 1).toNat

end

end A036703.P13700268345930623019

/-! ## A036703.P17231624495271586406

`A065033(A036694(n)+1)`
-/

namespace A036703.P17231624495271586406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A036694 n + 1).toNat

end

end A036703.P17231624495271586406

/-! ## A036703.P11792303193905470787

`A110654(A036694(n)+1)`
-/

namespace A036703.P11792303193905470787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A036694 n + 1).toNat

end

end A036703.P11792303193905470787

/-! ## A036703.P8048277316602232200

`A004526(A036694(n)+2)`
-/

namespace A036703.P8048277316602232200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A036694 n + 2).toNat

end

end A036703.P8048277316602232200

/-! ## A036703.P975149216221623214

`A008619(A036697(n)-1)`
-/

namespace A036703.P975149216221623214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A036697 n - 1).toNat

end

end A036703.P975149216221623214

/-! ## A036703.P13620230422860424204

`A123108(A036694(n)+2)`
-/

namespace A036703.P13620230422860424204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A036694 n + 2).toNat

end

end A036703.P13620230422860424204

/-! ## A036703.P21779637024195542

`A000463(or(1, A036694(n)))`
-/

namespace A036703.P21779637024195542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (Int.lor 1 (A036694 n)).toNat

end

end A036703.P21779637024195542

/-! ## A036703.P7409567618515901908

`A001057(or(1, A036694(n)))`
-/

namespace A036703.P7409567618515901908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (Int.lor 1 (A036694 n)).toNat

end

end A036703.P7409567618515901908

/-! ## A036703.P16038074035692026678

`A003602(or(1, A036694(n)))`
-/

namespace A036703.P16038074035692026678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (Int.lor 1 (A036694 n)).toNat

end

end A036703.P16038074035692026678

/-! ## A036703.P12608929258768992781

`A008621(A036696(n))`
-/

namespace A036703.P12608929258768992781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (A036696 n).toNat

end

end A036703.P12608929258768992781

/-! ## A036703.P2237845798708450911

`A008624(A036696(n)-1)`
-/

namespace A036703.P2237845798708450911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008624 (A036696 n - 1).toNat

end

end A036703.P2237845798708450911

/-!
# A036704: a(n)=number of Gaussian integers z=a+bi satisfying |z|<=n+1/2.

The programs for A036704, the canonical program `A036704.P2788393936175939244` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A036704 has offset 0).

The definition of A036704 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A057655, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A036704.P2788393936175939244

`A057655(n²+n)`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A036704

/-- `A057655(n²+n)` -/
def P2788393936175939244.Spec : Prop :=
  ∀ n, P2788393936175939244.a n = A036704 n

theorem P2788393936175939244.correct : P2788393936175939244.Spec := by
  intro n
  simp only [A036704]

end A036704

/-! ## A036704.P16349615766204140458

`A136486(n)+A016813(n)`
-/

namespace A036704.P16349615766204140458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136486 n + A016813 n

end

end A036704.P16349615766204140458

namespace A036704

/-- `A136486(n)+A016813(n)` -/
def P16349615766204140458.Spec : Prop :=
  ∀ n, P16349615766204140458.a n = A036704 n

end A036704

/-! ## A036704.P14751461075148838594

`4*A036711(n)+1`
-/

namespace A036704.P14751461075148838594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A036711 n + 1

end

end A036704.P14751461075148838594

namespace A036704

/-- `4*A036711(n)+1` -/
def P14751461075148838594.Spec : Prop :=
  ∀ n, P14751461075148838594.a n = A036704 n

end A036704

/-! ## A036704.P4139511789072433916

`∑[4*A036706(n)]+1`
-/

namespace A036704.P4139511789072433916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A036706 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A036704.P4139511789072433916

namespace A036704

/-- `∑[4*A036706(n)]+1` -/
def P4139511789072433916.Spec : Prop :=
  ∀ n, P4139511789072433916.a n = A036704 n

end A036704

/-! ## A036704.P17082496378928273985

`∑[A036705(n)]`
-/

namespace A036704.P17082496378928273985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036705 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A036704.P17082496378928273985

namespace A036704

/-- `∑[A036705(n)]` -/
def P17082496378928273985.Spec : Prop :=
  ∀ n, P17082496378928273985.a n = A036704 n

end A036704

/-! ## A036704.P1405838845382842113

`A232705(2*n+1)+A000328(n)`
-/

namespace A036704.P1405838845382842113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232705 (2 * n + 1) + A000328 n

end

end A036704.P1405838845382842113

namespace A036704

/-- `A232705(2*n+1)+A000328(n)` -/
def P1405838845382842113.Spec : Prop :=
  ∀ n, P1405838845382842113.a n = A036704 n

end A036704

/-! ## A036704.P12760423554318924907

`A053411(Δ[n²])`
-/

namespace A036704.P12760423554318924907
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053411 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A036704.P12760423554318924907

namespace A036704

/-- `A053411(Δ[n²])` -/
def P12760423554318924907.Spec : Prop :=
  ∀ n, P12760423554318924907.a n = A036704 n

end A036704

/-! ## A036704.P1290739716215598924

`and(-3, A053411(2*n+1))`
-/

namespace A036704.P1290739716215598924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-3) (A053411 (2 * n + 1))

end

end A036704.P1290739716215598924

namespace A036704

/-- `and(-3, A053411(2*n+1))` -/
def P1290739716215598924.Spec : Prop :=
  ∀ n, P1290739716215598924.a n = A036704 n

end A036704

/-! ## A036704.P11173536557757527121

`A053411(2*n+1)+A025480(2*n)-n`
-/

namespace A036704.P11173536557757527121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053411 (2 * n + 1) + (A025480 (2 * n) - (n : ℤ))

end

end A036704.P11173536557757527121

namespace A036704

/-- `A053411(2*n+1)+A025480(2*n)-n` -/
def P11173536557757527121.Spec : Prop :=
  ∀ n, P11173536557757527121.a n = A036704 n

end A036704

/-! ## A036704.P12204037128652294389

`A051132(n+1)-A232705(2*(n+1))`
-/

namespace A036704.P12204037128652294389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051132 (n + 1) - A232705 (2 * (n + 1))

end

end A036704.P12204037128652294389

namespace A036704

/-- `A051132(n+1)-A232705(2*(n+1))` -/
def P12204037128652294389.Spec : Prop :=
  ∀ n, P12204037128652294389.a n = A036704 n

end A036704

/-! ## A036704.P12875441595208668615

`A053456(Δ[n²])`
-/

namespace A036704.P12875441595208668615
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053456 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A036704.P12875441595208668615

namespace A036704

/-- `A053456(Δ[n²])` -/
def P12875441595208668615.Spec : Prop :=
  ∀ n, P12875441595208668615.a n = A036704 n

end A036704

/-! ## A036704.P3282793332755169132

`record[A053456(A124625(n)+1)]`
-/

namespace A036704.P3282793332755169132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053456 (A124625 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A036704.P3282793332755169132

namespace A036704

/-- `record[A053456(A124625(n)+1)]` -/
def P3282793332755169132.Spec : Prop :=
  ∀ n, P3282793332755169132.a n = A036704 n

end A036704

/-! ## A036704.P7942434834100507386

`A333572(Δ[n²])+1`
-/

namespace A036704.P7942434834100507386
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333572 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + 1

end

end A036704.P7942434834100507386

namespace A036704

/-- `A333572(Δ[n²])+1` -/
def P7942434834100507386.Spec : Prop :=
  ∀ n, P7942434834100507386.a n = A036704 n

end A036704

/-! ## A036704.P6955436522028114989

`4*A333573(A005408(n))+1`
-/

namespace A036704.P6955436522028114989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A333573 (A005408 n).toNat + 1

end

end A036704.P6955436522028114989

namespace A036704

/-- `4*A333573(A005408(n))+1` -/
def P6955436522028114989.Spec : Prop :=
  ∀ n, P6955436522028114989.a n = A036704 n

end A036704

/-! ## A036704.P15914017796960768629

`A051233(2*n+1)`
-/

namespace A036704.P15914017796960768629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051233 (2 * n + 1)

end

end A036704.P15914017796960768629

namespace A036704

/-- `A051233(2*n+1)` -/
def P15914017796960768629.Spec : Prop :=
  ∀ n, P15914017796960768629.a n = A036704 n

end A036704

/-! ## A036704.P15976830048729149451

`∩[2*n+1, A053456(2*n+1)]`
-/

namespace A036704.P15976830048729149451
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053456 (2 * n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A036704.P15976830048729149451

namespace A036704

/-- `∩[2*n+1, A053456(2*n+1)]` -/
def P15976830048729149451.Spec : Prop :=
  ∀ n, (P15976830048729149451.a n : ℤ) = A036704 n

end A036704

/-!
# A036705: Number of Gaussian integers z=a+bi satisfying n - 1/2 < |z| <= n + 1/2.

The programs for A036705, there is no canonical definition to state claims against.
-/

/-! ## A036705.P9360405255856658894

`A000007(n)+4*A036706(n)`
-/

namespace A036705.P9360405255856658894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + 4 * A036706 n

end

end A036705.P9360405255856658894

/-! ## A036705.P2333782087930395298

`A008574(A036706(n))`
-/

namespace A036705.P2333782087930395298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 (A036706 n).toNat

end

end A036705.P2333782087930395298

/-! ## A036705.P14984677262968101529

`A008574(A036710(n)-1)`
-/

namespace A036705.P14984677262968101529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 (A036710 n - 1).toNat

end

end A036705.P14984677262968101529

/-! ## A036705.P13232412114522812809

`A004275(A036708(n))`
-/

namespace A036705.P13232412114522812809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A036708 n).toNat

end

end A036705.P13232412114522812809

/-! ## A036705.P7223753992044692875

`A004277(A036708(n)-1)`
-/

namespace A036705.P7223753992044692875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A036708 n - 1).toNat

end

end A036705.P7223753992044692875

/-! ## A036705.P13818438202149640840

`A257088(2*A036706(n))`
-/

namespace A036705.P13818438202149640840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257088 (2 * A036706 n).toNat

end

end A036705.P13818438202149640840

/-! ## A036705.P8251699261716882004

`A004273(2*A036706(n))+1`
-/

namespace A036705.P8251699261716882004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (2 * A036706 n).toNat + 1

end

end A036705.P8251699261716882004

/-! ## A036705.P12809864985335951257

`A004277(2*(A036710(n)-1))`
-/

namespace A036705.P12809864985335951257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (2 * (A036710 n - 1)).toNat

end

end A036705.P12809864985335951257

/-! ## A036705.P7910806392253645480

`A004275(2*A036710(n)-1)`
-/

namespace A036705.P7910806392253645480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (2 * A036710 n - 1).toNat

end

end A036705.P7910806392253645480

/-! ## A036705.P12285737398032290650

`A004275(A036710(n)+A036710(n)-1)`
-/

namespace A036705.P12285737398032290650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A036710 n + (A036710 n - 1)).toNat

end

end A036705.P12285737398032290650

/-! ## A036705.P1296577287117538279

`A004275(A036710(n)-(1-A036710(n)))`
-/

namespace A036705.P1296577287117538279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A036710 n - (1 - A036710 n)).toNat

end

end A036705.P1296577287117538279

/-! ## A036705.P11854996388582097314

`A004277(A036710(n)+A036710(n)-2)`
-/

namespace A036705.P11854996388582097314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A036710 n + (A036710 n - 2)).toNat

end

end A036705.P11854996388582097314

/-! ## A036705.P6538534636831448191

`A004277(A036710(n)-(2-A036710(n)))`
-/

namespace A036705.P6538534636831448191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A036710 n - (2 - A036710 n)).toNat

end

end A036705.P6538534636831448191

/-! ## A036705.P6235923956340646445

`Δ[A053456(A028310(2*n)-1)]`
-/

namespace A036705.P6235923956340646445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053456 (A028310 (2 * n) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A036705.P6235923956340646445

/-! ## A036705.P2113031615205616001

`A065169(4*A036710(n))`
-/

namespace A036705.P2113031615205616001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065169 (4 * A036710 n).toNat

end

end A036705.P2113031615205616001

/-! ## A036705.P2508761772549809705

`A065033(8*A036706(n))`
-/

namespace A036705.P2508761772549809705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (8 * A036706 n).toNat

end

end A036705.P2508761772549809705

/-! ## A036705.P10915015529838465599

`A123108(8*A036706(n))`
-/

namespace A036705.P10915015529838465599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (8 * A036706 n).toNat

end

end A036705.P10915015529838465599

/-!
# A036706: a(n)=number of Gaussian integers z=a+bi satisfying n - 1/2 < |z| <= n + 1/2, a>0, b>=0.

The programs for A036706, there is no canonical definition to state claims against.
-/

/-! ## A036706.P17817765458710477030

`A036710(n)-1`
-/

namespace A036706.P17817765458710477030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036710 n - 1

end

end A036706.P17817765458710477030

/-! ## A036706.P15915227893079509740

`A057428(n+1)+A036710(n)`
-/

namespace A036706.P15915227893079509740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (n + 1) + A036710 n

end

end A036706.P15915227893079509740

/-! ## A036706.P1427937000852878296

`A036714(n)+A036716(n)-1`
-/

namespace A036706.P1427937000852878296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036714 n + (A036716 n - 1)

end

end A036706.P1427937000852878296

/-! ## A036706.P14483769309427296188

`A001478(n+1)+A036710(n)+n`
-/

namespace A036706.P14483769309427296188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001478 (n + 1) + (A036710 n + (n : ℤ))

end

end A036706.P14483769309427296188

/-! ## A036706.P2381588675497964548

`floor(A036705(n)/4)`
-/

namespace A036706.P2381588675497964548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A036705 n : ℚ) / 4⌋

end

end A036706.P2381588675497964548

/-! ## A036706.P13909057571280238393

`floor(A036708(n)/2)`
-/

namespace A036706.P13909057571280238393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A036708 n : ℚ) / 2⌋

end

end A036706.P13909057571280238393

/-! ## A036706.P15252259314849821729

`A036708(n)%A036710(n)`
-/

namespace A036706.P15252259314849821729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A036708 n) (A036710 n)

end

end A036706.P15252259314849821729

/-! ## A036706.P12920215985511785367

`A023443(A036710(n))`
-/

namespace A036706.P12920215985511785367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A036710 n).toNat

end

end A036706.P12920215985511785367

/-! ## A036706.P2236326761728285279

`A004524(A036708(n))`
-/

namespace A036706.P2236326761728285279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A036708 n).toNat

end

end A036706.P2236326761728285279

/-! ## A036706.P7320458770382595745

`A046667(2*A036710(n))`
-/

namespace A036706.P7320458770382595745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046667 (2 * A036710 n).toNat

end

end A036706.P7320458770382595745

/-! ## A036706.P10137201307845790775

`A263997(A036708(n)+2)-2`
-/

namespace A036706.P10137201307845790775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263997 (A036708 n + 2).toNat - 2

end

end A036706.P10137201307845790775

/-! ## A036706.P3710719644164279036

`A002265(A036705(n))`
-/

namespace A036706.P3710719644164279036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A036705 n).toNat

end

end A036706.P3710719644164279036

/-! ## A036706.P11345304428021211179

`A059169(4*A036710(n))`
-/

namespace A036706.P11345304428021211179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059169 (4 * A036710 n).toNat

end

end A036706.P11345304428021211179

/-! ## A036706.P13364231735062704593

`A008621(A036705(n)+1)-1`
-/

namespace A036706.P13364231735062704593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (A036705 n + 1).toNat - 1

end

end A036706.P13364231735062704593

/-! ## A036706.P5366068263150566917

`A008624(2*A036708(n)-1)`
-/

namespace A036706.P5366068263150566917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008624 (2 * A036708 n - 1).toNat

end

end A036706.P5366068263150566917

/-! ## A036706.P686820528753998215

`A008621(2*A036708(n))-1`
-/

namespace A036706.P686820528753998215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (2 * A036708 n).toNat - 1

end

end A036706.P686820528753998215

/-! ## A036706.P3095593043511929880

`A008624(A036708(n)+A036708(n)-1)`
-/

namespace A036706.P3095593043511929880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008624 (A036708 n + (A036708 n - 1)).toNat

end

end A036706.P3095593043511929880

/-! ## A036706.P3325320366510724136

`A008624(A036708(n)-(1-A036708(n)))`
-/

namespace A036706.P3325320366510724136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008624 (A036708 n - (1 - A036708 n)).toNat

end

end A036706.P3325320366510724136

/-! ## A036706.P2453540598887880260

`Δ[A014200(n²-n)]`
-/

namespace A036706.P2453540598887880260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014200 (n ^ 2 - n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A036706.P2453540598887880260

/-!
# A036707: a(n)=number of Gaussian integers z=a+bi satisfying |z|<=n+1/2, b>=0.

The programs for A036707, the canonical program `A036707.P3603739173683534618` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A036707 has offset 0).

The definition of A036707 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8116 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A036707.P3870791473722685645

`∑[2*A036710(n)-1]`
-/

namespace A036707.P3870791473722685645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A036710 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A036707.P3870791473722685645

namespace A036707

/-- `∑[2*A036710(n)-1]` -/
def P3870791473722685645.Spec : Prop :=
  ∀ n, P3870791473722685645.a n = A036707 n

end A036707

/-! ## A036707.P3603739173683534618

`2*A036711(n)+n+1`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A036707

/-- `2*A036711(n)+n+1` -/
def P3603739173683534618.Spec : Prop :=
  ∀ n, P3603739173683534618.a n = A036707 n

theorem P3603739173683534618.correct : P3603739173683534618.Spec := by
  intro n
  simp only [A036707]

end A036707

/-! ## A036707.P6971270669981928682

`2*A036709(n)-(n+1)`
-/

namespace A036707.P6971270669981928682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A036709 n - (n + 1 : ℤ)

end

end A036707.P6971270669981928682

namespace A036707

/-- `2*A036709(n)-(n+1)` -/
def P6971270669981928682.Spec : Prop :=
  ∀ n, P6971270669981928682.a n = A036707 n

end A036707

/-! ## A036707.P144035609892039818

`A036711(n)+A036709(n)`
-/

namespace A036707.P144035609892039818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036711 n + A036709 n

end

end A036707.P144035609892039818

namespace A036707

/-- `A036711(n)+A036709(n)` -/
def P144035609892039818.Spec : Prop :=
  ∀ n, P144035609892039818.a n = A036707 n

end A036707

/-! ## A036707.P14815066126402646147

`A136515(n)+A016777(n)`
-/

namespace A036707.P14815066126402646147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136515 n + A016777 n

end

end A036707.P14815066126402646147

namespace A036707

/-- `A136515(n)+A016777(n)` -/
def P14815066126402646147.Spec : Prop :=
  ∀ n, P14815066126402646147.a n = A036707 n

end A036707

/-! ## A036707.P6490467790040786788

`A036711(n)+∑[A036710(n)]`
-/

namespace A036707.P6490467790040786788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036710 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036711 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A036707.P6490467790040786788

namespace A036707

/-- `A036711(n)+∑[A036710(n)]` -/
def P6490467790040786788.Spec : Prop :=
  ∀ n, P6490467790040786788.a n = A036707 n

end A036707

/-! ## A036707.P15765660820386616079

`A001478(n+1)+2*A036709(n)`
-/

namespace A036707.P15765660820386616079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001478 (n + 1) + 2 * A036709 n

end

end A036707.P15765660820386616079

namespace A036707

/-- `A001478(n+1)+2*A036709(n)` -/
def P15765660820386616079.Spec : Prop :=
  ∀ n, P15765660820386616079.a n = A036707 n

end A036707

/-! ## A036707.P10855775540677929994

`∑[2*A036706(n)+1]`
-/

namespace A036707.P10855775540677929994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A036706 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A036707.P10855775540677929994

namespace A036707

/-- `∑[2*A036706(n)+1]` -/
def P10855775540677929994.Spec : Prop :=
  ∀ n, P10855775540677929994.a n = A036707 n

end A036707

/-! ## A036707.P2648033927234439960

`A036709(n)+∑[A036706(n)]`
-/

namespace A036707.P2648033927234439960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036706 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036709 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A036707.P2648033927234439960

namespace A036707

/-- `A036709(n)+∑[A036706(n)]` -/
def P2648033927234439960.Spec : Prop :=
  ∀ n, P2648033927234439960.a n = A036707 n

end A036707

/-! ## A036707.P3196462376022902753

`∑[A036710(n)+A036706(n)]`
-/

namespace A036707.P3196462376022902753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036710 n + A036706 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A036707.P3196462376022902753

namespace A036707

/-- `∑[A036710(n)+A036706(n)]` -/
def P3196462376022902753.Spec : Prop :=
  ∀ n, P3196462376022902753.a n = A036707 n

end A036707

/-! ## A036707.P14072809642930097817

`∑[A036708(n)]`
-/

namespace A036707.P14072809642930097817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036708 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A036707.P14072809642930097817

namespace A036707

/-- `∑[A036708(n)]` -/
def P14072809642930097817.Spec : Prop :=
  ∀ n, P14072809642930097817.a n = A036707 n

end A036707

/-! ## A036707.P3636311233556000135

`A136513(2*n+1)+3*n+1`
-/

namespace A036707.P3636311233556000135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136513 (2 * n + 1) + (3 * n + 1 : ℤ)

end

end A036707.P3636311233556000135

namespace A036707

/-- `A136513(2*n+1)+3*n+1` -/
def P3636311233556000135.Spec : Prop :=
  ∀ n, P3636311233556000135.a n = A036707 n

end A036707

/-! ## A036707.P4353166796329582379

`(A053411(2*n+1)+2*n+1)/2`
-/

namespace A036707.P4353166796329582379
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053411 (2 * n + 1) + (2 * n + 1 : ℤ) : ℚ) / 2

end

end A036707.P4353166796329582379

namespace A036707

/-- `(A053411(2*n+1)+2*n+1)/2` -/
def P4353166796329582379.Spec : Prop :=
  ∀ n, P4353166796329582379.a n = (A036707 n : ℚ)

end A036707

/-! ## A036707.P10218087264437178719

`(A053456(2*n+1)+2*n+1)/2`
-/

namespace A036707.P10218087264437178719
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053456 (2 * n + 1) + (2 * n + 1 : ℤ) : ℚ) / 2

end

end A036707.P10218087264437178719

namespace A036707

/-- `(A053456(2*n+1)+2*n+1)/2` -/
def P10218087264437178719.Spec : Prop :=
  ∀ n, P10218087264437178719.a n = (A036707 n : ℚ)

end A036707

/-! ## A036707.P15236451032681466707

`n+1+2*A333573(2*n+1)`
-/

namespace A036707.P15236451032681466707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + 2 * A333573 (2 * n + 1)

end

end A036707.P15236451032681466707

namespace A036707

/-- `n+1+2*A333573(2*n+1)` -/
def P15236451032681466707.Spec : Prop :=
  ∀ n, P15236451032681466707.a n = A036707 n

end A036707

/-! ## A036707.P16344371572872543873

`n+1+A333572(2*n+1)/2`
-/

namespace A036707.P16344371572872543873
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) + (A333572 (2 * n + 1) : ℚ) / 2

end

end A036707.P16344371572872543873

namespace A036707

/-- `n+1+A333572(2*n+1)/2` -/
def P16344371572872543873.Spec : Prop :=
  ∀ n, P16344371572872543873.a n = (A036707 n : ℚ)

end A036707

/-! ## A036707.P4854576985668447289

`A005408(A333573(2*n+1))+n`
-/

namespace A036707.P4854576985668447289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A333573 (2 * n + 1)).toNat + (n : ℤ)

end

end A036707.P4854576985668447289

namespace A036707

/-- `A005408(A333573(2*n+1))+n` -/
def P4854576985668447289.Spec : Prop :=
  ∀ n, P4854576985668447289.a n = A036707 n

end A036707

/-!
# A036708: a(n)=number of Gaussian integers z=a+bi satisfying n-1/2<|z|<=n+1/2, b>=0.

The programs for A036708, there is no canonical definition to state claims against.
-/

/-! ## A036708.P1191290112268355572

`2*A036706(n)+1`
-/

namespace A036708.P1191290112268355572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A036706 n + 1

end

end A036708.P1191290112268355572

/-! ## A036708.P14183239466979947759

`2*A036710(n)-1`
-/

namespace A036708.P14183239466979947759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A036710 n - 1

end

end A036708.P14183239466979947759

/-! ## A036708.P1936748244468379875

`floor(A036705(n)/2)+1`
-/

namespace A036708.P1936748244468379875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A036705 n : ℚ) / 2⌋ + 1

end

end A036708.P1936748244468379875

/-! ## A036708.P12391607233250462873

`A036710(n)+A036706(n)`
-/

namespace A036708.P12391607233250462873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036710 n + A036706 n

end

end A036708.P12391607233250462873

/-! ## A036708.P638682782519814850

`A000265(or(1, 2*A036706(n)))`
-/

namespace A036708.P638682782519814850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (Int.lor 1 (2 * A036706 n)).toNat

end

end A036708.P638682782519814850

/-! ## A036708.P6110415221906010927

`A000265(xor(1, 2*A036706(n)))`
-/

namespace A036708.P6110415221906010927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (Int.xor 1 (2 * A036706 n)).toNat

end

end A036708.P6110415221906010927

/-! ## A036708.P12721104194612261718

`2*(A036716(n)+A036714(n))-1`
-/

namespace A036708.P12721104194612261718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A036716 n + A036714 n) - 1

end

end A036708.P12721104194612261718

/-! ## A036708.P13184647315471180810

`xor(-(2*A036710(n)), -1%A000040(n+1))`
-/

namespace A036708.P13184647315471180810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (-(2 * A036710 n)) (Int.tmod (-1) (A000040 (n + 1)))

end

end A036708.P13184647315471180810

/-! ## A036708.P865056524524032590

`A004273(A036710(n))`
-/

namespace A036708.P865056524524032590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A036710 n).toNat

end

end A036708.P865056524524032590

/-! ## A036708.P2923244303001217520

`A005408(A036706(n))`
-/

namespace A036708.P2923244303001217520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A036706 n).toNat

end

end A036708.P2923244303001217520

/-! ## A036708.P12045891846375571269

`A004273(A036706(n)+1)`
-/

namespace A036708.P12045891846375571269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A036706 n + 1).toNat

end

end A036708.P12045891846375571269

/-! ## A036708.P11762302613115718721

`A005408(A036710(n)-1)`
-/

namespace A036708.P11762302613115718721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A036710 n - 1).toNat

end

end A036708.P11762302613115718721

/-! ## A036708.P10336377642875818035

`A004275(A036710(n)+1)-1`
-/

namespace A036708.P10336377642875818035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A036710 n + 1).toNat - 1

end

end A036708.P10336377642875818035

/-! ## A036708.P868699344463342826

`abs(3-A004277(A036710(n)+1))`
-/

namespace A036708.P868699344463342826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |3 - A004277 (A036710 n + 1).toNat|

end

end A036708.P868699344463342826

/-! ## A036708.P4133144805082979276

`A004442(2*A036706(n))`
-/

namespace A036708.P4133144805082979276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (2 * A036706 n).toNat

end

end A036708.P4133144805082979276

/-! ## A036708.P17451768764349802235

`A023443(2*A036710(n))`
-/

namespace A036708.P17451768764349802235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (2 * A036710 n).toNat

end

end A036708.P17451768764349802235

/-! ## A036708.P12210960771661692618

`A008619(A036705(n))`
-/

namespace A036708.P12210960771661692618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A036705 n).toNat

end

end A036708.P12210960771661692618

/-! ## A036708.P7201635703824792731

`A008619(4*A036706(n))`
-/

namespace A036708.P7201635703824792731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (4 * A036706 n).toNat

end

end A036708.P7201635703824792731

/-! ## A036708.P18057210377632653612

`A028242(4*A036706(n))`
-/

namespace A036708.P18057210377632653612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (4 * A036706 n).toNat

end

end A036708.P18057210377632653612

/-! ## A036708.P12721743725066143046

`A029579(4*A036706(n))`
-/

namespace A036708.P12721743725066143046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029579 (4 * A036706 n).toNat

end

end A036708.P12721743725066143046

/-!
# A036709: a(n)=number of Gaussian integers z=a+bi satisfying |z|<=n+1/2, a>=0, b>=0.

The programs for A036709, the canonical program `A036709.P8581218697881049908` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A036709 has offset 0).

The definition of A036709 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8580 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A036709.P15803277850106698577

`∑[A036710(n)]`
-/

namespace A036709.P15803277850106698577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036710 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A036709.P15803277850106698577

namespace A036709

/-- `∑[A036710(n)]` -/
def P15803277850106698577.Spec : Prop :=
  ∀ n, P15803277850106698577.a n = A036709 n

end A036709

/-! ## A036709.P8581218697881049908

`A136484(n)+Δ[n²]`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A036709

/-- `A136484(n)+Δ[n²]` -/
def P8581218697881049908.Spec : Prop :=
  ∀ n, P8581218697881049908.a n = A036709 n

theorem P8581218697881049908.correct : P8581218697881049908.Spec := by
  intro n
  simp only [A036709]

end A036709

/-! ## A036709.P14767921287661010860

`A036715(n)+A036713(n)`
-/

namespace A036709.P14767921287661010860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036715 n + A036713 n

end

end A036709.P14767921287661010860

namespace A036709

/-- `A036715(n)+A036713(n)` -/
def P14767921287661010860.Spec : Prop :=
  ∀ n, P14767921287661010860.a n = A036709 n

end A036709

/-! ## A036709.P3605020933212835225

`A036713(n)+∑[A036716(n)]`
-/

namespace A036709.P3605020933212835225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036716 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036713 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A036709.P3605020933212835225

namespace A036709

/-- `A036713(n)+∑[A036716(n)]` -/
def P3605020933212835225.Spec : Prop :=
  ∀ n, P3605020933212835225.a n = A036709 n

end A036709

/-! ## A036709.P1712489583704034280

`A036715(n)+∑[A036714(n)]`
-/

namespace A036709.P1712489583704034280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036714 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036715 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A036709.P1712489583704034280

namespace A036709

/-- `A036715(n)+∑[A036714(n)]` -/
def P1712489583704034280.Spec : Prop :=
  ∀ n, P1712489583704034280.a n = A036709 n

end A036709

/-! ## A036709.P10202310698205914114

`A005843(n)+A136484(n)+1`
-/

namespace A036709.P10202310698205914114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n + (A136484 n + 1)

end

end A036709.P10202310698205914114

namespace A036709

/-- `A005843(n)+A136484(n)+1` -/
def P10202310698205914114.Spec : Prop :=
  ∀ n, P10202310698205914114.a n = A036709 n

end A036709

/-! ## A036709.P9406799680064907343

`A036711(n)+1+n`
-/

namespace A036709.P9406799680064907343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036711 n + 1 + (n : ℤ)

end

end A036709.P9406799680064907343

namespace A036709

/-- `A036711(n)+1+n` -/
def P9406799680064907343.Spec : Prop :=
  ∀ n, P9406799680064907343.a n = A036709 n

end A036709

/-! ## A036709.P5968333999636081677

`1-(A001489(n)-A036711(n))`
-/

namespace A036709.P5968333999636081677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A001489 n - A036711 n)

end

end A036709.P5968333999636081677

namespace A036709

/-- `1-(A001489(n)-A036711(n))` -/
def P5968333999636081677.Spec : Prop :=
  ∀ n, P5968333999636081677.a n = A036709 n

end A036709

/-! ## A036709.P16484182177201196071

`(A036707(n)+1+n)/2`
-/

namespace A036709.P16484182177201196071
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A036707 n + 1 + (n : ℤ) : ℚ) / 2

end

end A036709.P16484182177201196071

namespace A036709

/-- `(A036707(n)+1+n)/2` -/
def P16484182177201196071.Spec : Prop :=
  ∀ n, P16484182177201196071.a n = (A036709 n : ℚ)

end A036709

/-! ## A036709.P18386885878321538663

`A036707(n)-A036711(n)`
-/

namespace A036709.P18386885878321538663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036707 n - A036711 n

end

end A036709.P18386885878321538663

namespace A036709

/-- `A036707(n)-A036711(n)` -/
def P18386885878321538663.Spec : Prop :=
  ∀ n, P18386885878321538663.a n = A036709 n

end A036709

/-! ## A036709.P14331651368017283113

`∑[A036706(n)+1]`
-/

namespace A036709.P14331651368017283113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036706 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A036709.P14331651368017283113

namespace A036709

/-- `∑[A036706(n)+1]` -/
def P14331651368017283113.Spec : Prop :=
  ∀ n, P14331651368017283113.a n = A036709 n

end A036709

/-! ## A036709.P12648293443830636930

`A036707(n)-∑[A036706(n)]`
-/

namespace A036709.P12648293443830636930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036706 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036707 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A036709.P12648293443830636930

namespace A036709

/-- `A036707(n)-∑[A036706(n)]` -/
def P12648293443830636930.Spec : Prop :=
  ∀ n, P12648293443830636930.a n = A036709 n

end A036709

/-! ## A036709.P16561009899033618380

`∑[(A036708(n)+1)/2]`
-/

namespace A036709.P16561009899033618380
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A036708 n + 1 : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A036709.P16561009899033618380

namespace A036709

/-- `∑[(A036708(n)+1)/2]` -/
def P16561009899033618380.Spec : Prop :=
  ∀ n, P16561009899033618380.a n = (A036709 n : ℚ)

end A036709

/-! ## A036709.P9896775705985370480

`A136483(2*n+1)+Δ[n²]`
-/

namespace A036709.P9896775705985370480
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136483 (2 * n + 1) + ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A036709.P9896775705985370480

namespace A036709

/-- `A136483(2*n+1)+Δ[n²]` -/
def P9896775705985370480.Spec : Prop :=
  ∀ n, P9896775705985370480.a n = A036709 n

end A036709

/-! ## A036709.P13468772240860518709

`A333462(2*n+1)+A000603(n)`
-/

namespace A036709.P13468772240860518709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333462 (2 * n + 1) + A000603 n

end

end A036709.P13468772240860518709

namespace A036709

/-- `A333462(2*n+1)+A000603(n)` -/
def P13468772240860518709.Spec : Prop :=
  ∀ n, P13468772240860518709.a n = A036709 n

end A036709

/-! ## A036709.P7697505453110792299

`∑[A008619(2*A036706(n))]`
-/

namespace A036709.P7697505453110792299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * A036706 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A036709.P7697505453110792299

namespace A036709

/-- `∑[A008619(2*A036706(n))]` -/
def P7697505453110792299.Spec : Prop :=
  ∀ n, P7697505453110792299.a n = A036709 n

end A036709

/-! ## A036709.P1537763827860754633

`∑[A008621(2*A036708(n))]`
-/

namespace A036709.P1537763827860754633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (2 * A036708 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A036709.P1537763827860754633

namespace A036709

/-- `∑[A008621(2*A036708(n))]` -/
def P1537763827860754633.Spec : Prop :=
  ∀ n, P1537763827860754633.a n = A036709 n

end A036709

/-! ## A036709.P15593288911150146961

`∑[A008624(2*A036708(n))]`
-/

namespace A036709.P15593288911150146961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008624 (2 * A036708 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A036709.P15593288911150146961

namespace A036709

/-- `∑[A008624(2*A036708(n))]` -/
def P15593288911150146961.Spec : Prop :=
  ∀ n, P15593288911150146961.a n = A036709 n

end A036709

/-! ## A036709.P4643131436601996564

`A333573(Δ[n²])+n+1`
-/

namespace A036709.P4643131436601996564
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333573 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + (n + 1 : ℤ)

end

end A036709.P4643131436601996564

namespace A036709

/-- `A333573(Δ[n²])+n+1` -/
def P4643131436601996564.Spec : Prop :=
  ∀ n, P4643131436601996564.a n = A036709 n

end A036709

/-! ## A036709.P15987242062553961007

`A333573(2*n+1)+1+n`
-/

namespace A036709.P15987242062553961007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333573 (2 * n + 1) + 1 + (n : ℤ)

end

end A036709.P15987242062553961007

namespace A036709

/-- `A333573(2*n+1)+1+n` -/
def P15987242062553961007.Spec : Prop :=
  ∀ n, P15987242062553961007.a n = A036709 n

end A036709

/-!
# A036710: a(n)=number of Gaussian integers z=a+bi satisfying n-1/2<|z|<=n+1/2, a>=0, b>=0.

The programs for A036710, there is no canonical definition to state claims against.
-/

/-! ## A036710.P4882880046790558781

`A036716(n)+A036714(n)`
-/

namespace A036710.P4882880046790558781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036716 n + A036714 n

end

end A036710.P4882880046790558781

/-! ## A036710.P14874068608649478816

`A036706(n)+1`
-/

namespace A036710.P14874068608649478816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036706 n + 1

end

end A036710.P14874068608649478816

/-! ## A036710.P9587171154258352368

`Δ[A036709(n)-A036706(n)]`
-/

namespace A036710.P9587171154258352368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036709 n - A036706 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A036710.P9587171154258352368

/-! ## A036710.P14530071767533374387

`floor(A036705(n)/4)+1`
-/

namespace A036710.P14530071767533374387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A036705 n : ℚ) / 4⌋ + 1

end

end A036710.P14530071767533374387

/-! ## A036710.P15523988584603418384

`round(A036708(n)/2)`
-/

namespace A036710.P15523988584603418384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A036708 n : ℚ) / 2)

end

end A036710.P15523988584603418384

/-! ## A036710.P1581961315683498902

`A036708(n)-A036706(n)`
-/

namespace A036710.P1581961315683498902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036708 n - A036706 n

end

end A036710.P1581961315683498902

/-! ## A036710.P9967280889311608390

`A000463(A036708(n))`
-/

namespace A036710.P9967280889311608390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (A036708 n).toNat

end

end A036710.P9967280889311608390

/-! ## A036710.P13383754742360395765

`A004524(A036708(n)+2)`
-/

namespace A036710.P13383754742360395765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A036708 n + 2).toNat

end

end A036710.P13383754742360395765

/-! ## A036710.P5873551358870125482

`A008619(2*A036706(n))`
-/

namespace A036710.P5873551358870125482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * A036706 n).toNat

end

end A036710.P5873551358870125482

/-! ## A036710.P17484276862628150886

`A028242(2*A036706(n))`
-/

namespace A036710.P17484276862628150886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (2 * A036706 n).toNat

end

end A036710.P17484276862628150886

/-! ## A036710.P9377599958537690746

`A029579(2*A036706(n))`
-/

namespace A036710.P9377599958537690746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029579 (2 * A036706 n).toNat

end

end A036710.P9377599958537690746

/-! ## A036710.P18225619393278942826

`1-A001057(2*A036706(n))`
-/

namespace A036710.P18225619393278942826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A001057 (2 * A036706 n).toNat

end

end A036710.P18225619393278942826

/-! ## A036710.P4176609073181877406

`A000463(or(1, 2*A036706(n)))`
-/

namespace A036710.P4176609073181877406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (Int.lor 1 (2 * A036706 n)).toNat

end

end A036710.P4176609073181877406

/-! ## A036710.P15160553891865350174

`A008611(3*A036706(n))`
-/

namespace A036710.P15160553891865350174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (3 * A036706 n).toNat

end

end A036710.P15160553891865350174

/-! ## A036710.P16114618069199812523

`A008620(3*A036706(n))`
-/

namespace A036710.P16114618069199812523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (3 * A036706 n).toNat

end

end A036710.P16114618069199812523

/-! ## A036710.P14829174292458057263

`A263997(A036708(n)+2*n)-n`
-/

namespace A036710.P14829174292458057263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263997 (A036708 n + (2 * n : ℤ)).toNat - (n : ℤ)

end

end A036710.P14829174292458057263

/-! ## A036710.P8320010440678913287

`A008621(A036705(n))`
-/

namespace A036710.P8320010440678913287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (A036705 n).toNat

end

end A036710.P8320010440678913287

/-! ## A036710.P7780270768205269590

`A008621(2*A036708(n))`
-/

namespace A036710.P7780270768205269590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (2 * A036708 n).toNat

end

end A036710.P7780270768205269590

/-! ## A036710.P2216261045499551549

`A008624(2*A036708(n))`
-/

namespace A036710.P2216261045499551549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008624 (2 * A036708 n).toNat

end

end A036710.P2216261045499551549

/-! ## A036710.P11092146309776121333

`A008621(4*A036706(n))`
-/

namespace A036710.P11092146309776121333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (4 * A036706 n).toNat

end

end A036710.P11092146309776121333

/-!
# A036711: a(n)=number of Gaussian integers z=a+bi satisfying |z|<=n+1/2, a>0, b>=0.

The programs for A036711, the canonical program `A036711.P14920642788416913369` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A036711 has offset 0).

The definition of A036711 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8470 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A036711.P12041894429800423004

`A136484(n)+n`
-/

namespace A036711.P12041894429800423004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136484 n + (n : ℤ)

end

end A036711.P12041894429800423004

namespace A036711

/-- `A136484(n)+n` -/
def P12041894429800423004.Spec : Prop :=
  ∀ n, P12041894429800423004.a n = A036711 n

end A036711

/-! ## A036711.P14920642788416913369

`floor(A036704(n)/4)`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A036711

/-- `floor(A036704(n)/4)` -/
def P14920642788416913369.Spec : Prop :=
  ∀ n, P14920642788416913369.a n = A036711 n

theorem P14920642788416913369.correct : P14920642788416913369.Spec := by
  intro n
  simp only [A036711]

end A036711

/-! ## A036711.P10780866814896361131

`∑[A036710(n)-1]`
-/

namespace A036711.P10780866814896361131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036710 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A036711.P10780866814896361131

namespace A036711

/-- `∑[A036710(n)-1]` -/
def P10780866814896361131.Spec : Prop :=
  ∀ n, P10780866814896361131.a n = A036711 n

end A036711

/-! ## A036711.P2970920513747267135

`A036709(n)-(n+1)`
-/

namespace A036711.P2970920513747267135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036709 n - (n + 1 : ℤ)

end

end A036711.P2970920513747267135

namespace A036711

/-- `A036709(n)-(n+1)` -/
def P2970920513747267135.Spec : Prop :=
  ∀ n, P2970920513747267135.a n = A036711 n

end A036711

/-! ## A036711.P2672448924000360744

`A136515(n)/2+n`
-/

namespace A036711.P2672448924000360744
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A136515 n : ℚ) / 2 + (n : ℚ)

end

end A036711.P2672448924000360744

namespace A036711

/-- `A136515(n)/2+n` -/
def P2672448924000360744.Spec : Prop :=
  ∀ n, P2672448924000360744.a n = (A036711 n : ℚ)

end A036711

/-! ## A036711.P9987549769734734152

`A136486(n)/4+n`
-/

namespace A036711.P9987549769734734152
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A136486 n : ℚ) / 4 + (n : ℚ)

end

end A036711.P9987549769734734152

namespace A036711

/-- `A136486(n)/4+n` -/
def P9987549769734734152.Spec : Prop :=
  ∀ n, P9987549769734734152.a n = (A036711 n : ℚ)

end A036711

/-! ## A036711.P12046830033254699887

`A005843(n)-(n-A136484(n))`
-/

namespace A036711.P12046830033254699887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n - ((n : ℤ) - A136484 n)

end

end A036711.P12046830033254699887

namespace A036711

/-- `A005843(n)-(n-A136484(n))` -/
def P12046830033254699887.Spec : Prop :=
  ∀ n, P12046830033254699887.a n = A036711 n

end A036711

/-! ## A036711.P9186210046217322728

`n-(A136484(n)-A136515(n))`
-/

namespace A036711.P9186210046217322728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (A136484 n - A136515 n)

end

end A036711.P9186210046217322728

namespace A036711

/-- `n-(A136484(n)-A136515(n))` -/
def P9186210046217322728.Spec : Prop :=
  ∀ n, P9186210046217322728.a n = A036711 n

end A036711

/-! ## A036711.P12074495854265330825

`A036715(n)+A036713(n)-(n+1)`
-/

namespace A036711.P12074495854265330825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036715 n + (A036713 n - (n + 1 : ℤ))

end

end A036711.P12074495854265330825

namespace A036711

/-- `A036715(n)+A036713(n)-(n+1)` -/
def P12074495854265330825.Spec : Prop :=
  ∀ n, P12074495854265330825.a n = A036711 n

end A036711

/-! ## A036711.P16227732426904586058

`(A036707(n)-(n+1))/2`
-/

namespace A036711.P16227732426904586058
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A036707 n - (n + 1 : ℤ) : ℚ) / 2

end

end A036711.P16227732426904586058

namespace A036711

/-- `(A036707(n)-(n+1))/2` -/
def P16227732426904586058.Spec : Prop :=
  ∀ n, P16227732426904586058.a n = (A036711 n : ℚ)

end A036711

/-! ## A036711.P17420223851894910924

`A036707(n)-A036709(n)`
-/

namespace A036711.P17420223851894910924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036707 n - A036709 n

end

end A036711.P17420223851894910924

namespace A036711

/-- `A036707(n)-A036709(n)` -/
def P17420223851894910924.Spec : Prop :=
  ∀ n, P17420223851894910924.a n = A036711 n

end A036711

/-! ## A036711.P6782715956376326856

`A036707(n)%∑[A036710(n)]`
-/

namespace A036711.P6782715956376326856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036710 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A036707 n) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A036711.P6782715956376326856

namespace A036711

/-- `A036707(n)%∑[A036710(n)]` -/
def P6782715956376326856.Spec : Prop :=
  ∀ n, P6782715956376326856.a n = A036711 n

end A036711

/-! ## A036711.P6003915769485959442

`∑[A036706(n)]`
-/

namespace A036711.P6003915769485959442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036706 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A036711.P6003915769485959442

namespace A036711

/-- `∑[A036706(n)]` -/
def P6003915769485959442.Spec : Prop :=
  ∀ n, P6003915769485959442.a n = A036711 n

end A036711

/-! ## A036711.P10955668390399480382

`∑[(A036708(n)-1)/2]`
-/

namespace A036711.P10955668390399480382
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A036708 n - 1 : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A036711.P10955668390399480382

namespace A036711

/-- `∑[(A036708(n)-1)/2]` -/
def P10955668390399480382.Spec : Prop :=
  ∀ n, P10955668390399480382.a n = (A036711 n : ℚ)

end A036711

/-! ## A036711.P13410946873658888125

`∑[A036708(n)]-A036709(n)`
-/

namespace A036711.P13410946873658888125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036708 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A036709 n

end

end A036711.P13410946873658888125

namespace A036711

/-- `∑[A036708(n)]-A036709(n)` -/
def P13410946873658888125.Spec : Prop :=
  ∀ n, P13410946873658888125.a n = A036711 n

end A036711

/-! ## A036711.P18246577812500300322

`∑[A036708(n)%A036710(n)]`
-/

namespace A036711.P18246577812500300322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A036708 n) (A036710 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A036711.P18246577812500300322

namespace A036711

/-- `∑[A036708(n)%A036710(n)]` -/
def P18246577812500300322.Spec : Prop :=
  ∀ n, P18246577812500300322.a n = A036711 n

end A036711

/-! ## A036711.P12784405252516713550

`A136483(Δ[n²])+n`
-/

namespace A036711.P12784405252516713550
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136483 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + (n : ℤ)

end

end A036711.P12784405252516713550

namespace A036711

/-- `A136483(Δ[n²])+n` -/
def P12784405252516713550.Spec : Prop :=
  ∀ n, P12784405252516713550.a n = A036711 n

end A036711

/-! ## A036711.P15390955914711215776

`A333573(Δ[n²])`
-/

namespace A036711.P15390955914711215776
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333573 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A036711.P15390955914711215776

namespace A036711

/-- `A333573(Δ[n²])` -/
def P15390955914711215776.Spec : Prop :=
  ∀ n, P15390955914711215776.a n = A036711 n

end A036711

/-! ## A036711.P17201969745117542679

`A333572(2*n+1)/4`
-/

namespace A036711.P17201969745117542679
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A333572 (2 * n + 1) : ℚ) / 4

end

end A036711.P17201969745117542679

namespace A036711

/-- `A333572(2*n+1)/4` -/
def P17201969745117542679.Spec : Prop :=
  ∀ n, P17201969745117542679.a n = (A036711 n : ℚ)

end A036711

/-! ## A036711.P13638804201547431129

`A333573(2*(n+1))-A333462(2*(n+1))`
-/

namespace A036711.P13638804201547431129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333573 (2 * (n + 1)) - A333462 (2 * (n + 1))

end

end A036711.P13638804201547431129

namespace A036711

/-- `A333573(2*(n+1))-A333462(2*(n+1))` -/
def P13638804201547431129.Spec : Prop :=
  ∀ n, P13638804201547431129.a n = A036711 n

end A036711

/-!
# A036713: a(n)=number of Gaussian integers z=a+bi satisfying |z|<=n+1/2, a>=0, 0<=b

The programs for A036713, there is no canonical definition to state claims against.
-/

/-! ## A036713.P16672588856989505802

`∑[A036714(n)]`
-/

namespace A036713.P16672588856989505802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036714 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A036713.P16672588856989505802

/-! ## A036713.P10814690595422451948

`∑[floor(A036710(n)/2)]`
-/

namespace A036713.P10814690595422451948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A036710 n : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A036713.P10814690595422451948

/-! ## A036713.P740433055598224182

`∑[A036710(n)-A036716(n)]`
-/

namespace A036713.P740433055598224182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036710 n - A036716 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A036713.P740433055598224182

/-! ## A036713.P251334879106645338

`∑[A036710(n)]-A036715(n)`
-/

namespace A036713.P251334879106645338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036710 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A036715 n

end

end A036713.P251334879106645338

/-! ## A036713.P8290766437963879916

`A036709(n)-A036715(n)`
-/

namespace A036713.P8290766437963879916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036709 n - A036715 n

end

end A036713.P8290766437963879916

/-! ## A036713.P7087189495651921804

`A036709(n)-∑[A036716(n)]`
-/

namespace A036713.P7087189495651921804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036716 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036709 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A036713.P7087189495651921804

/-! ## A036713.P8026395558675541776

`A036709(n)%(∑[A036716(n)]%A095667(n))`
-/

namespace A036713.P8026395558675541776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036716 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A036709 n) (Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A095667 n))

end

end A036713.P8026395558675541776

/-! ## A036713.P10846050737351096821

`∑[ceil(A036706(n)/2)]`
-/

namespace A036713.P10846050737351096821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A036706 n : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A036713.P10846050737351096821

/-! ## A036713.P4594219151557461513

`∑[A004526(A036710(n))]`
-/

namespace A036713.P4594219151557461513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A036710 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A036713.P4594219151557461513

/-! ## A036713.P5049459225292576705

`∑[A110654(A036706(n))]`
-/

namespace A036713.P5049459225292576705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A036706 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A036713.P5049459225292576705

/-! ## A036713.P4821255810611945412

`∑[A004526(A036706(n)+1)]`
-/

namespace A036713.P4821255810611945412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A036706 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A036713.P4821255810611945412

/-! ## A036713.P15307042359472769711

`∑[A028242(or(1, A036710(n)))]`
-/

namespace A036713.P15307042359472769711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (Int.lor 1 (A036710 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A036713.P15307042359472769711

/-! ## A036713.P15827013749058416687

`∑[A008624(A036708(n))]`
-/

namespace A036713.P15827013749058416687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008624 (A036708 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A036713.P15827013749058416687

/-! ## A036713.P2948114665579675016

`∑[A002265(2*A036710(n))]`
-/

namespace A036713.P2948114665579675016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (2 * A036710 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A036713.P2948114665579675016

/-!
# A036714: a(n)=number of Gaussian integers z=a+bi satisfying n-1/2<|z|<=n+1/2, a>=0, 0<=b

The programs for A036714, there is no canonical definition to state claims against.
-/

/-! ## A036714.P1736506275056486720

`floor(A036710(n)/2)`
-/

namespace A036714.P1736506275056486720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A036710 n : ℚ) / 2⌋

end

end A036714.P1736506275056486720

/-! ## A036714.P13317027362500957456

`A036710(n)-A036716(n)`
-/

namespace A036714.P13317027362500957456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036710 n - A036716 n

end

end A036714.P13317027362500957456

/-! ## A036714.P17861313902519341836

`ceil(A036706(n)/2)`
-/

namespace A036714.P17861313902519341836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A036706 n : ℚ) / 2⌉

end

end A036714.P17861313902519341836

/-! ## A036714.P13984175956617433087

`round(A036705(n)/8)`
-/

namespace A036714.P13984175956617433087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A036705 n : ℚ) / 8)

end

end A036714.P13984175956617433087

/-! ## A036714.P4095859498062053350

`round(A036708(n)/4)`
-/

namespace A036714.P4095859498062053350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A036708 n : ℚ) / 4)

end

end A036714.P4095859498062053350

/-! ## A036714.P3798232336548111815

`A004526(A036710(n))`
-/

namespace A036714.P3798232336548111815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A036710 n).toNat

end

end A036714.P3798232336548111815

/-! ## A036714.P14497696785245838989

`A110654(A036706(n))`
-/

namespace A036714.P14497696785245838989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A036706 n).toNat

end

end A036714.P14497696785245838989

/-! ## A036714.P17431392099007787076

`A004526(A036706(n)+1)`
-/

namespace A036714.P17431392099007787076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A036706 n + 1).toNat

end

end A036714.P17431392099007787076

/-! ## A036714.P12617891051170252888

`A123108(A036706(n)+1)`
-/

namespace A036714.P12617891051170252888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A036706 n + 1).toNat

end

end A036714.P12617891051170252888

/-! ## A036714.P15830247559703533948

`A004524(or(1, A036710(n)))`
-/

namespace A036714.P15830247559703533948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (Int.lor 1 (A036710 n)).toNat

end

end A036714.P15830247559703533948

/-! ## A036714.P1465490497269518814

`A028242(or(1, A036710(n)))`
-/

namespace A036714.P1465490497269518814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (Int.lor 1 (A036710 n)).toNat

end

end A036714.P1465490497269518814

/-! ## A036714.P1592039170393663906

`A008619(A036706(n)+1)-1`
-/

namespace A036714.P1592039170393663906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A036706 n + 1).toNat - 1

end

end A036714.P1592039170393663906

/-! ## A036714.P12086054249223531283

`A065033(A036710(n)+1)-1`
-/

namespace A036714.P12086054249223531283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A036710 n + 1).toNat - 1

end

end A036714.P12086054249223531283

/-! ## A036714.P8711101193915495272

`A065033(A036706(n)+2)-1`
-/

namespace A036714.P8711101193915495272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A036706 n + 2).toNat - 1

end

end A036714.P8711101193915495272

/-! ## A036714.P8749191205353962139

`A008624(A036708(n))`
-/

namespace A036714.P8749191205353962139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008624 (A036708 n).toNat

end

end A036714.P8749191205353962139

/-! ## A036714.P13607470164586713258

`A002265(2*A036710(n))`
-/

namespace A036714.P13607470164586713258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (2 * A036710 n).toNat

end

end A036714.P13607470164586713258

/-! ## A036714.P7092758719292998924

`A008621(A036708(n)+1)-1`
-/

namespace A036714.P7092758719292998924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (A036708 n + 1).toNat - 1

end

end A036714.P7092758719292998924

/-! ## A036714.P151992024374490229

`A002265(2*(A036706(n)+1))`
-/

namespace A036714.P151992024374490229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (2 * (A036706 n + 1)).toNat

end

end A036714.P151992024374490229

/-! ## A036714.P5138321917481325039

`A059169(2*(A036710(n)+1))`
-/

namespace A036714.P5138321917481325039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059169 (2 * (A036710 n + 1)).toNat

end

end A036714.P5138321917481325039

/-! ## A036714.P9510110511505450141

`A004524(A036708(n)+1)/2`
-/

namespace A036714.P9510110511505450141
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004524 (A036708 n + 1).toNat : ℚ) / 2

end

end A036714.P9510110511505450141

/-!
# A036715: a(n)=number of Gaussian integers z=a+bi satisfying |z|<=n+1/2, a>=0, 0<=b<=a.

The programs for A036715, there is no canonical definition to state claims against.
-/

/-! ## A036715.P14167262170926860248

`∑[A036716(n)]`
-/

namespace A036715.P14167262170926860248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036716 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A036715.P14167262170926860248

/-! ## A036715.P8316525392783067194

`∑[ceil(A036710(n)/2)]`
-/

namespace A036715.P8316525392783067194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A036710 n : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A036715.P8316525392783067194

/-! ## A036715.P5309201661933897484

`∑[A036710(n)-A036714(n)]`
-/

namespace A036715.P5309201661933897484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036710 n - A036714 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A036715.P5309201661933897484

/-! ## A036715.P261010347365966156

`∑[A036710(n)]-A036713(n)`
-/

namespace A036715.P261010347365966156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036710 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A036713 n

end

end A036715.P261010347365966156

/-! ## A036715.P4027165068167506441

`A036709(n)-A036713(n)`
-/

namespace A036715.P4027165068167506441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036709 n - A036713 n

end

end A036715.P4027165068167506441

/-! ## A036715.P9543999831455809046

`A036709(n)-∑[A036714(n)]`
-/

namespace A036715.P9543999831455809046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036714 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036709 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A036715.P9543999831455809046

/-! ## A036715.P7992311047339614919

`∑[A008619(A036706(n))]`
-/

namespace A036715.P7992311047339614919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A036706 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A036715.P7992311047339614919

/-! ## A036715.P7429359319024026088

`∑[A065033(A036710(n))]`
-/

namespace A036715.P7429359319024026088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A036710 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A036715.P7429359319024026088

/-! ## A036715.P4198253774307796034

`∑[A004526(A036710(n)+1)]`
-/

namespace A036715.P4198253774307796034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A036710 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A036715.P4198253774307796034

/-! ## A036715.P9806166139242242125

`∑[A110654(A036706(n)+1)]`
-/

namespace A036715.P9806166139242242125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A036706 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A036715.P9806166139242242125

/-! ## A036715.P4952222067634801989

`∑[A004526(A036706(n)+2)]`
-/

namespace A036715.P4952222067634801989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A036706 n + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A036715.P4952222067634801989

/-! ## A036715.P12306984546944659606

`∑[A001057(or(1, A036706(n)))]`
-/

namespace A036715.P12306984546944659606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (Int.lor 1 (A036706 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A036715.P12306984546944659606

/-! ## A036715.P15204320914519936167

`∑[A008621(A036708(n))]`
-/

namespace A036715.P15204320914519936167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (A036708 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A036715.P15204320914519936167

/-! ## A036715.P3113162292598244968

`∑[A008624(A036708(n)-1)]`
-/

namespace A036715.P3113162292598244968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008624 (A036708 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A036715.P3113162292598244968

/-! ## A036715.P1937247959394402447

`A073092(∑[2*n])`
-/

namespace A036715.P1937247959394402447
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073092 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A036715.P1937247959394402447

/-!
# A036716: a(n)=number of Gaussian integers z=a+bi satisfying n-1/2<|z|<=n+1/2, a>=0, 0<=b<=a.

The programs for A036716, there is no canonical definition to state claims against.
-/

/-! ## A036716.P8559862098918837164

`A036714(n)+char[comp[A063957(n+1)]]`
-/

namespace A036716.P8559862098918837164
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063957 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036714 n + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A036716.P8559862098918837164

/-! ## A036716.P6133099702950802700

`A036714(n)+char[A195176(n)-A195177(n)]`
-/

namespace A036716.P6133099702950802700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195176 n - A195177 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036714 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A036716.P6133099702950802700

/-! ## A036716.P4320780046454846345

`ceil(A036710(n)/2)`
-/

namespace A036716.P4320780046454846345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A036710 n : ℚ) / 2⌉

end

end A036716.P4320780046454846345

/-! ## A036716.P14623515921941228283

`A036710(n)-A036714(n)`
-/

namespace A036716.P14623515921941228283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036710 n - A036714 n

end

end A036716.P14623515921941228283

/-! ## A036716.P9101988196955327623

`round(A036710(n)/A020639(2*(n+1)))`
-/

namespace A036716.P9101988196955327623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A036710 n : ℚ) / (A020639 (2 * (n + 1)) : ℚ))

end

end A036716.P9101988196955327623

/-! ## A036716.P6756400908284358714

`floor(A036706(n)/2)+1`
-/

namespace A036716.P6756400908284358714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A036706 n : ℚ) / 2⌋ + 1

end

end A036716.P6756400908284358714

/-! ## A036716.P8540949586570500461

`A008619(A036706(n))`
-/

namespace A036716.P8540949586570500461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A036706 n).toNat

end

end A036716.P8540949586570500461

/-! ## A036716.P10111105290240363794

`A065033(A036710(n))`
-/

namespace A036716.P10111105290240363794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A036710 n).toNat

end

end A036716.P10111105290240363794

/-! ## A036716.P13434594975885604716

`A004526(A036710(n)+1)`
-/

namespace A036716.P13434594975885604716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A036710 n + 1).toNat

end

end A036716.P13434594975885604716

/-! ## A036716.P12146005058827787729

`A065033(A036706(n)+1)`
-/

namespace A036716.P12146005058827787729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A036706 n + 1).toNat

end

end A036716.P12146005058827787729

/-! ## A036716.P16443922774536092727

`A110654(A036706(n)+1)`
-/

namespace A036716.P16443922774536092727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A036706 n + 1).toNat

end

end A036716.P16443922774536092727

/-! ## A036716.P7761604671421988175

`A004526(A036706(n)+2)`
-/

namespace A036716.P7761604671421988175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A036706 n + 2).toNat

end

end A036716.P7761604671421988175

/-! ## A036716.P15792593469287996047

`A123108(A036706(n)+2)`
-/

namespace A036716.P15792593469287996047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A036706 n + 2).toNat

end

end A036716.P15792593469287996047

/-! ## A036716.P7687429123420699043

`A000463(or(1, A036706(n)))`
-/

namespace A036716.P7687429123420699043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (Int.lor 1 (A036706 n)).toNat

end

end A036716.P7687429123420699043

/-! ## A036716.P10942540765323945947

`A001057(or(1, A036706(n)))`
-/

namespace A036716.P10942540765323945947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (Int.lor 1 (A036706 n)).toNat

end

end A036716.P10942540765323945947

/-! ## A036716.P12592225969777162590

`A003602(or(1, A036706(n)))`
-/

namespace A036716.P12592225969777162590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (Int.lor 1 (A036706 n)).toNat

end

end A036716.P12592225969777162590

/-! ## A036716.P12319293894451013082

`A004524(or(1, A036710(n)+1))`
-/

namespace A036716.P12319293894451013082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (Int.lor 1 (A036710 n + 1)).toNat

end

end A036716.P12319293894451013082

/-! ## A036716.P12307158297295077280

`A028242(or(1, A036710(n)+1))`
-/

namespace A036716.P12307158297295077280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (Int.lor 1 (A036710 n + 1)).toNat

end

end A036716.P12307158297295077280

/-! ## A036716.P1577487341352663317

`A036710(n)-A004524(or(1, A036710(n)))`
-/

namespace A036716.P1577487341352663317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036710 n - A004524 (Int.lor 1 (A036710 n)).toNat

end

end A036716.P1577487341352663317

/-! ## A036716.P14566361580646426686

`A036710(n)-A028242(or(1, A036710(n)))`
-/

namespace A036716.P14566361580646426686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036710 n - A028242 (Int.lor 1 (A036710 n)).toNat

end

end A036716.P14566361580646426686

/-!
# A036717: G.f. satisfies A(x) = 1 + x*cycle_index(Alt(4), A(x)).

The programs for A036717, there is no canonical definition to state claims against.
-/

/-! ## A036717.P11340387020108398393

`A283970(A098057(n))`
-/

namespace A036717.P11340387020108398393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283970 (A098057 n).toNat

end

end A036717.P11340387020108398393

/-! ## A036717.P1327521070191187302

`A163101(A004149(n+1))`
-/

namespace A036717.P1327521070191187302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163101 (A004149 (n + 1)).toNat

end

end A036717.P1327521070191187302

/-! ## A036717.P14302784131365002509

`A383110(A317884(n+1))`
-/

namespace A036717.P14302784131365002509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383110 (A317884 (n + 1)).toNat

end

end A036717.P14302784131365002509

/-! ## A036717.P1070079982482322083

`A163101(A177794(n+2))`
-/

namespace A036717.P1070079982482322083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163101 (A177794 (n + 2)).toNat

end

end A036717.P1070079982482322083

/-! ## A036717.P3719947759792150352

`A140271(C(A034823(n), floor(n/3)))`
-/

namespace A036717.P3719947759792150352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140271 (Nat.choose (A034823 n).toNat ⌊(n : ℚ) / 3⌋.toNat)

end

end A036717.P3719947759792150352

/-!
# A036718: Number of rooted trees where each node has at most 4 children.

The programs for A036718, there is no canonical definition to state claims against.
-/

/-! ## A036718.P24837661355030772

`A299038(∑[n+5]+5)`
-/

namespace A036718.P24837661355030772
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299038 (∑ j ∈ Finset.range (n + 1), f1 j + 5)

end

end A036718.P24837661355030772

/-! ## A036718.P18412707508973883797

`A299038(A052905(n+2))%A168607(n)`
-/

namespace A036718.P18412707508973883797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A299038 (A052905 (n + 2)).toNat) (A168607 n)

end

end A036718.P18412707508973883797

/-! ## A036718.P8074128402791426598

`char[A004442(n)]+A299038(A052905(n+2))-1`
-/

namespace A036718.P8074128402791426598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) + (A299038 (A052905 (n + 2)).toNat - 1)

end

end A036718.P8074128402791426598

/-! ## A036718.P1145275041585984623

`A299038(A052905(n+2))-A209204(n+1)%3`
-/

namespace A036718.P1145275041585984623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299038 (A052905 (n + 2)).toNat - Int.tmod (A209204 (n + 1)) 3

end

end A036718.P1145275041585984623

/-! ## A036718.P13798788419111890116

`A299038(A052905(n+2))-A209205(n+1)%3`
-/

namespace A036718.P13798788419111890116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299038 (A052905 (n + 2)).toNat - Int.tmod (A209205 (n + 1)) 3

end

end A036718.P13798788419111890116

/-! ## A036718.P9942501719865532807

`A299038(A052905(n+2))+A186034(A211143(n))`
-/

namespace A036718.P9942501719865532807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299038 (A052905 (n + 2)).toNat + A186034 (A211143 n).toNat

end

end A036718.P9942501719865532807

/-! ## A036718.P8173899155935526648

`A298426(A033585(n)+5)`
-/

namespace A036718.P8173899155935526648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298426 (A033585 n + 5).toNat

end

end A036718.P8173899155935526648

/-!
# A036719: G.f. satisfies A(x) = 1 + x*cycle_index(Cyclic(4), A(x)).

The programs for A036719, there is no canonical definition to state claims against.
-/

/-! ## A036719.P6347340988002077702

`A226190(A339236(n)+A014335(n))`
-/

namespace A036719.P6347340988002077702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226190 (A339236 n + A014335 n).toNat

end

end A036719.P6347340988002077702

/-! ## A036719.P3128311082250235963

`A276796(A288388(n*A065941(n)))`
-/

namespace A036719.P3128311082250235963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276796 (A288388 ((n : ℤ) * A065941 n).toNat).toNat

end

end A036719.P3128311082250235963

/-! ## A036719.P17559596950505047721

`A276796(A288388(n)^A065941(n))`
-/

namespace A036719.P17559596950505047721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276796 (SequenceMachineLib.roundAway ((A288388 n : ℚ) ^ (A065941 n : ℤ))).toNat

end

end A036719.P17559596950505047721

/-! ## A036719.P13111886850163624976

`A002712(n)-A185214(A007083(n+4))`
-/

namespace A036719.P13111886850163624976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002712 n - A185214 (A007083 (n + 4)).toNat

end

end A036719.P13111886850163624976

/-!
# A036720: G.f. satisfies A(x) = 1 + x*cycle_index(Klein_4_group, A(x)).

The programs for A036720, there is no canonical definition to state claims against.
-/

/-! ## A036720.P11799500584996747304

`A167865(4*A080635(n))`
-/

namespace A036720.P11799500584996747304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167865 (4 * A080635 n).toNat

end

end A036720.P11799500584996747304

/-!
# A036721: G.f. satisfies A(x) = 1 + x*cycle_index(Sym(5), A(x)).

The programs for A036721, there is no canonical definition to state claims against.
-/

/-! ## A036721.P16295295207011748923

`A299038((n+4)²-∑[n+1])`
-/

namespace A036721.P16295295207011748923
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299038 ((n + 4) ^ 2 - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A036721.P16295295207011748923

/-! ## A036721.P13466332756045363173

`A299038(∑[n+6]+9)+A004197(∑[n])`
-/

namespace A036721.P13466332756045363173
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 6

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299038 (∑ j ∈ Finset.range (n + 1), f1 j + 9) + A004197 (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A036721.P13466332756045363173

/-! ## A036721.P15882130993711650728

`A299038(∑[n+6]+9)+A000038(n+1)`
-/

namespace A036721.P15882130993711650728
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299038 (∑ j ∈ Finset.range (n + 1), f1 j + 9) + A000038 (n + 1)

end

end A036721.P15882130993711650728

/-! ## A036721.P14377125559089185224

`A299038(∑[n+6]+9)%A205754(n+1)`
-/

namespace A036721.P14377125559089185224
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A299038 (∑ j ∈ Finset.range (n + 1), f1 j + 9)) (A205754 (n + 1))

end

end A036721.P14377125559089185224

/-! ## A036721.P2536677129313199134

`A299038(∑[n+6]+9)+A048105(A007947(n+1))`
-/

namespace A036721.P2536677129313199134
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299038 (∑ j ∈ Finset.range (n + 1), f1 j + 9) + A048105 (A007947 (n + 1)).toNat

end

end A036721.P2536677129313199134

/-! ## A036721.P3786785942303490074

`A299038(∑[n+6]+9)^A014963(A001747(n+1))`
-/

namespace A036721.P3786785942303490074
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 6

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A299038 (∑ j ∈ Finset.range (n + 1), f1 j + 9) : ℚ) ^ (A014963 (A001747 (n + 1)).toNat : ℤ)

end

end A036721.P3786785942303490074

/-! ## A036721.P7193678276586069800

`A299038(∑[n+6]+9)^A001221(A034444(n+1))`
-/

namespace A036721.P7193678276586069800
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 6

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A299038 (∑ j ∈ Finset.range (n + 1), f1 j + 9) : ℚ) ^ (A001221 (A034444 (n + 1)).toNat : ℤ)

end

end A036721.P7193678276586069800

/-! ## A036721.P7482003912565762563

`A299038(∑[n+6]+9)^A014963(A007782(n))`
-/

namespace A036721.P7482003912565762563
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 6

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A299038 (∑ j ∈ Finset.range (n + 1), f1 j + 9) : ℚ) ^ (A014963 (A007782 n).toNat : ℤ)

end

end A036721.P7482003912565762563

/-!
# A036722: G.f. satisfies A(x) = 1 + x*cycle_index(Sym(6), A(x)).

The programs for A036722, there is no canonical definition to state claims against.
-/

/-! ## A036722.P655371437198198004

`A299038(A000217(n+7)-7)`
-/

namespace A036722.P655371437198198004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299038 (A000217 (n + 7) - 7).toNat

end

end A036722.P655371437198198004

/-! ## A036722.P1474472301373247568

`A299038(Δ[A023551(n+2)]-1)`
-/

namespace A036722.P1474472301373247568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299038 (f1 (n + 1) - f1 n - 1).toNat

end

end A036722.P1474472301373247568

/-! ## A036722.P18290746302175857314

`A299038(A055999(A020705(n))-1)`
-/

namespace A036722.P18290746302175857314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299038 (A055999 (A020705 n).toNat - 1).toNat

end

end A036722.P18290746302175857314

/-! ## A036722.P15649503293065774544

`A299038(A055998(n+3)+A020735(n+3))`
-/

namespace A036722.P15649503293065774544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299038 (A055998 (n + 3) + A020735 (n + 3)).toNat

end

end A036722.P15649503293065774544

/-! ## A036722.P7473157874287073985

`A299038(A055998(n+7)-A005408(n+10))`
-/

namespace A036722.P7473157874287073985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299038 (A055998 (n + 7) - A005408 (n + 10)).toNat

end

end A036722.P7473157874287073985

/-!
# A036723: G.f. satisfies A(x) = 1 + x*cycle_index(G,A(x)) where G = cyclic group of order 2 generated by (1,2)(3,4).

The programs for A036723, there is no canonical definition to state claims against.
-/

/-! ## A036723.P10913977779656211319

`A398106(∑[n+3])`
-/

namespace A036723.P10913977779656211319
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398106 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A036723.P10913977779656211319

/-! ## A036723.P3219535158692412469

`ceil(∑[A355243(2*(n+1))/A038509(3*(n+1))])`
-/

namespace A036723.P3219535158692412469
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A355243 (2 * (n + 1)) : ℚ) / (A038509 (3 * (n + 1)) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ j ∈ Finset.range (n + 1), f1 j⌉

end

end A036723.P3219535158692412469

/-! ## A036723.P9255274112678970469

`A248227(A001003(n))-A241821(n)`
-/

namespace A036723.P9255274112678970469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248227 (A001003 n).toNat - A241821 n

end

end A036723.P9255274112678970469

/-!
# A036724: G.f. satisfies A(x) = 1 + x*cycle_index(G,A(x)) where G = cyclic group of order 2 generated by (1,2)(3,4)(5,6).

The programs for A036724, there is no canonical definition to state claims against.
-/

/-! ## A036724.P1780179996791253744

`A285764(A367725(n))`
-/

namespace A036724.P1780179996791253744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285764 (A367725 n).toNat

end

end A036724.P1780179996791253744

/-! ## A036724.P10842523673012359561

`A156077(A085695(n)+2)`
-/

namespace A036724.P10842523673012359561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156077 (A085695 n + 2).toNat

end

end A036724.P10842523673012359561

/-!
# A036725: G.f. satisfies A(x) = 1 + x*cycle_index(G,A(x)) where G = cyclic group of order 2 generated by (1,2)(3,4)(5,6)(7,8).

The programs for A036725, there is no canonical definition to state claims against.
-/

/-! ## A036725.P7820061615444879788

`A398106(A052905(n+2))`
-/

namespace A036725.P7820061615444879788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398106 (A052905 (n + 2)).toNat

end

end A036725.P7820061615444879788

/-! ## A036725.P11301560173448432570

`A398106(lt[A048882(n+4), (n-3)/4])`
-/

namespace A036725.P11301560173448432570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048882 (n + 4)

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 3 : ℚ) / 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398106 (SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n)

end

end A036725.P11301560173448432570

/-!
# A036726: G.f. satisfies A(x) = 1 + x*cycle_index(G,A(x)) where G = cyclic group of order 3 generated by (1,2,3)(4,5,6).

The programs for A036726, there is no canonical definition to state claims against.
-/

/-! ## A036726.P7679559533359143082

`A295809(n)+A105518(A330663(n))`
-/

namespace A036726.P7679559533359143082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295809 n + A105518 (A330663 n).toNat

end

end A036726.P7679559533359143082

/-! ## A036726.P1375277418606935628

`floor(sqrt(A278823(n!)))`
-/

namespace A036726.P1375277418606935628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A278823 (Nat.factorial n))

end

end A036726.P1375277418606935628

/-!
# A036727: G.f. satisfies A(x) = 1 + x*cycle_index(G,A(x)) where G = cyclic group of order 5 generated by (1,2,3,4,5).

The programs for A036727, there is no canonical definition to state claims against.
-/

/-! ## A036727.P10763373150531023417

`∑[xor(∑[n], A255436(n+2))]`
-/

namespace A036727.P10763373150531023417
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) (A255436 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A036727.P10763373150531023417

/-! ## A036727.P5161029410720729071

`A261585(2*A318113(n))`
-/

namespace A036727.P5161029410720729071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261585 (2 * A318113 n).toNat

end

end A036727.P5161029410720729071

/-! ## A036727.P3198413502872257521

`A226190(A161125(n)+A156565(n))`
-/

namespace A036727.P3198413502872257521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226190 (A161125 n + A156565 n).toNat

end

end A036727.P3198413502872257521

/-!
# A036728: G.f. satisfies A(x) = 1 + x*cycle_index(G,A(x)) where G = cyclic group of order 7 generated by (1,2,...,7).

The programs for A036728, there is no canonical definition to state claims against.
-/

/-! ## A036728.P8527184583875482036

`A187187(A150767(n))`
-/

namespace A036728.P8527184583875482036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187187 (A150767 n).toNat

end

end A036728.P8527184583875482036

/-! ## A036728.P12180146323395278266

`A248227(A165546(n))`
-/

namespace A036728.P12180146323395278266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248227 (A165546 n).toNat

end

end A036728.P12180146323395278266

/-! ## A036728.P17945512488239301380

`A081753(∑[A150798(n)])`
-/

namespace A036728.P17945512488239301380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150798 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081753 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A036728.P17945512488239301380

/-!
# A036729: G.f. satisfies A(x) = 1 + x*cycle_index(G,A(x)) where G = cyclic group of order 11 generated by (1,2,...,11).

The programs for A036729, there is no canonical definition to state claims against.
-/

/-! ## A036729.P7817845488330514742

`A285881(A183161(n)+A074650(n+1))`
-/

namespace A036729.P7817845488330514742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285881 (A183161 n + A074650 (n + 1)).toNat

end

end A036729.P7817845488330514742

/-! ## A036729.P11377492083784999652

`A285881(A183161(n))+A187080(3*n+4)`
-/

namespace A036729.P11377492083784999652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285881 (A183161 n).toNat + A187080 (3 * n + 4)

end

end A036729.P11377492083784999652

/-!
# A036730: G.f. satisfies A(x) = 1 + x*cycle_index(G,A(x)) where G = cyclic group of order 13 generated by (1,2,...,13).

The programs for A036730, there is no canonical definition to state claims against.
-/

/-! ## A036730.P8839230618410871692

`A126211(floor(6^n/3)+1)`
-/

namespace A036730.P8839230618410871692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126211 (⌊(6 ^ n : ℚ) / 3⌋ + 1).toNat

end

end A036730.P8839230618410871692

/-! ## A036730.P3054620335833826653

`A276514(a(n-1))+n-1` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A036730.P3054620335833826653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  A276514 (a (n - 1)).toNat + ((n : ℤ) - 1)

end

end A036730.P3054620335833826653

/-!
# A036731: G.f. satisfies A(x) = 1 + x*cycle_index(G,A(x)) where G = cyclic group of order 17 generated by (1,2,...,17).

The programs for A036731, there is no canonical definition to state claims against.
-/

/-! ## A036731.P11735861338347055229

`A261585(round(cosh(comp[2*(n+1)])))`
-/

namespace A036731.P11735861338347055229
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261585 (SequenceMachineLib.roundAway (Real.cosh (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℝ))).toNat

end

end A036731.P11735861338347055229

/-! ## A036731.P14538672713786265130

`A323622(A000203(∏[∏[2-n²%3]-1]))`
-/

namespace A036731.P14538672713786265130
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ((n ^ 2 % 3 : ℕ) : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323622 (A000203 (∏ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A036731.P14538672713786265130

/-!
# A036732: G.f. satisfies A(x) = 1 + x*cycle_index(G,A(x)) where G = cyclic group of order 19 generated by (1,2,...,19).

The programs for A036732, there is no canonical definition to state claims against.
-/

/-! ## A036732.P1026294664835703533

`A379006(A023001(n)+1)`
-/

namespace A036732.P1026294664835703533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379006 (A023001 n + 1).toNat

end

end A036732.P1026294664835703533

/-! ## A036732.P16239006917778812785

`A141256(A047853(n))-1`
-/

namespace A036732.P16239006917778812785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141256 (A047853 n).toNat - 1

end

end A036732.P16239006917778812785

/-!
# A036733: G.f. satisfies A(x) = 1 + x*cycle_index(G,A(x)) where G = cyclic group of order 23 generated by (1,2,...,23).

The programs for A036733, there is no canonical definition to state claims against.
-/

/-! ## A036733.P14699815395506519486

`A336772(a(n-1))` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A036733.P14699815395506519486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  A336772 (a (n - 1)).toNat

end

end A036733.P14699815395506519486

/-! ## A036733.P10641680507858804198

`A069522(3*a(n-1)+1)` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A036733.P10641680507858804198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  A069522 (3 * a (n - 1) + 1).toNat

end

end A036733.P10641680507858804198

/-!
# A036734: G.f. satisfies A(x) = 1 + x*cycle_index(G,A(x)) where G = cyclic group of order 29 generated by (1,2,...,29).

The programs for A036734, there is no canonical definition to state claims against.
-/

/-! ## A036734.P10533795228634658811

`A098181(A005836(2*(n+1))*A292574(n+2))`
-/

namespace A036734.P10533795228634658811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098181 (A005836 (2 * (n + 1)) * A292574 (n + 2)).toNat

end

end A036734.P10533795228634658811

/-!
# A036735: G.f. satisfies A(x) = 1 + x*cycle_index(G,A(x)) where G = cyclic group of order 31 generated by (1,2,...,31).

The programs for A036735, there is no canonical definition to state claims against.
-/

/-! ## A036735.P14169525650408119815

`A268448(a(n-1))` with `a(0)=1, a(1)=1, a(2)=1, a(3)=16`
-/

namespace A036735.P14169525650408119815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 16] fun n a =>
  A268448 (a (n - 1)).toNat

end

end A036735.P14169525650408119815

/-!
# A036736: G.f. satisfies A(x) = 1 + x*cycle_index(G,A(x)) where G = cyclic group of order 37 generated by (1,2,...,37).

The programs for A036736, there is no canonical definition to state claims against.
-/

/-! ## A036736.P10850338563121517586

`A030101(∑[n!]²)`
-/

namespace A036736.P10850338563121517586
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2)

end

end A036736.P10850338563121517586

/-!
# A036737: G.f. satisfies A(x) = 1 + x*cycle_index(G,A(x)) where G = cyclic group of order 41 generated by (1,2,...,41).

The programs for A036737, there is no canonical definition to state claims against.
-/

/-! ## A036737.P8645440037756206902

`A353292(n!²)`
-/

namespace A036737.P8645440037756206902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353292 (Nat.factorial n ^ 2)

end

end A036737.P8645440037756206902

/-!
# A036738: G.f. satisfies A(x) = 1 + x*cycle_index(G,A(x)) where G = cyclic group of order 43 generated by (1,2,...,43).

The programs for A036738, there is no canonical definition to state claims against.
-/

/-! ## A036738.P2700241864437874624

`A156253(C(33, ∑[round(n²/12)]))`
-/

namespace A036738.P2700241864437874624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n ^ 2 : ℚ) / 12)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156253 (Nat.choose 33 (∑ j ∈ Finset.range (n + 1), f1 j).toNat)

end

end A036738.P2700241864437874624

/-!
# A036739: a(n) = (n!)^n+1.

The programs for A036739, the canonical program `A036739.P16761960508121330883` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A036739 has offset 0).

The definition of A036739 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n!^n+1` (program `A036739.P16761960508121330883`, by `A036739.P16761960508121330883.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A036739.P16761960508121330883

`n!^n+1`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A036739

/-- `n!^n+1` -/
def P16761960508121330883.Spec : Prop :=
  ∀ n, (P16761960508121330883.a n : ℤ) = A036739 n

theorem P16761960508121330883.correct : P16761960508121330883.Spec := by
  intro n
  simp only [A036739]

end A036739

/-! ## A036739.P13245633556822508897

`or(2, n!^n)-1`
-/

namespace A036739.P13245633556822508897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 2 (Nat.factorial n ^ n) : ℤ) - 1

end

end A036739.P13245633556822508897

namespace A036739

/-- `or(2, n!^n)-1` -/
def P13245633556822508897.Spec : Prop :=
  ∀ n, P13245633556822508897.a n = A036739 n

end A036739

/-! ## A036739.P5219775751944511349

`xor(2, n!^n)-1`
-/

namespace A036739.P5219775751944511349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.xor 2 (Nat.factorial n ^ n) : ℤ) - 1

end

end A036739.P5219775751944511349

namespace A036739

/-- `xor(2, n!^n)-1` -/
def P5219775751944511349.Spec : Prop :=
  ∀ n, P5219775751944511349.a n = A036739 n

end A036739

/-! ## A036739.P13789586228421662532

`abs(xor(-1, n!^n))`
-/

namespace A036739.P13789586228421662532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor (-1) (Nat.factorial n ^ n : ℤ)|

end

end A036739.P13789586228421662532

namespace A036739

/-- `abs(xor(-1, n!^n))` -/
def P13789586228421662532.Spec : Prop :=
  ∀ n, P13789586228421662532.a n = A036739 n

end A036739

/-! ## A036739.P14780692316573918034

`-xor(-1, n!^n)`
-/

namespace A036739.P14780692316573918034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor (-1) (Nat.factorial n ^ n : ℤ)

end

end A036739.P14780692316573918034

namespace A036739

/-- `-xor(-1, n!^n)` -/
def P14780692316573918034.Spec : Prop :=
  ∀ n, P14780692316573918034.a n = A036739 n

end A036739

/-!
# A036740: a(n) = (n!)^n.

The programs for A036740, the canonical program `A036740.P447838899479434515` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A036740 has offset 0).

The definition of A036740 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n!^n` (program `A036740.P447838899479434515`, by `A036740.P447838899479434515.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A036740.P447838899479434515

`n!^n`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A036740

/-- `n!^n` -/
def P447838899479434515.Spec : Prop :=
  ∀ n, (P447838899479434515.a n : ℤ) = A036740 n

theorem P447838899479434515.correct : P447838899479434515.Spec := by
  intro n
  simp only [A036740]

end A036740

/-! ## A036740.P12148132062698821378

`exp(n*log(n!))`
-/

namespace A036740.P12148132062698821378
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.exp ((n : ℝ) * Real.log (Nat.factorial n : ℝ))

end

end A036740.P12148132062698821378

namespace A036740

/-- `exp(n*log(n!))` -/
def P12148132062698821378.Spec : Prop :=
  ∀ n, P12148132062698821378.a n = (A036740 n : ℝ)

end A036740

/-! ## A036740.P9075718257315788032

`∏[round(1/acot(n))]^n`
-/

namespace A036740.P9075718257315788032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (1 / SequenceMachineLib.acot (n : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) ^ n

end

end A036740.P9075718257315788032

namespace A036740

/-- `∏[round(1/acot(n))]^n` -/
def P9075718257315788032.Spec : Prop :=
  ∀ n, P9075718257315788032.a n = A036740 n

end A036740

/-! ## A036740.P2706276535180839036

`∏[ceil(abs(γ-n))]^n`
-/

namespace A036740.P2706276535180839036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈|Real.eulerMascheroniConstant - (n : ℝ)|⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) ^ n

end

end A036740.P2706276535180839036

namespace A036740

/-- `∏[ceil(abs(γ-n))]^n` -/
def P2706276535180839036.Spec : Prop :=
  ∀ n, P2706276535180839036.a n = A036740 n

end A036740

/-! ## A036740.P4591037532980013001

`A225816(A046092(n))`
-/

namespace A036740.P4591037532980013001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225816 (A046092 n).toNat

end

end A036740.P4591037532980013001

namespace A036740

/-- `A225816(A046092(n))` -/
def P4591037532980013001.Spec : Prop :=
  ∀ n, P4591037532980013001.a n = A036740 n

end A036740

/-!
# A036741: Values increase, Roman numerals increase lexicographically.

The programs for A036741, there is no canonical definition to state claims against.
-/

/-! ## A036741.P16538546925421950424

`comp[floor(n*sqrt(96))]`
-/

namespace A036741.P16538546925421950424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.sqrt (96 : ℝ)⌋

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A036741.P16538546925421950424

/-! ## A036741.P15363706344033331908

`round(∑[root(atan(n+1), 4)])`
-/

namespace A036741.P15363706344033331908
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan (n + 1 : ℝ) ^ (1 / (4 : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A036741.P15363706344033331908

/-! ## A036741.P2118598216399751763

`floor((atan(2)+n)*atan(2))`
-/

namespace A036741.P2118598216399751763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Real.arctan (2 : ℝ) + (n : ℝ)) * Real.arctan (2 : ℝ)⌋

end

end A036741.P2118598216399751763

/-! ## A036741.P10340560953320554150

`floor((n+1)/tanh(atan(9)))`
-/

namespace A036741.P10340560953320554150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) / Real.tanh (Real.arctan (9 : ℝ))⌋

end

end A036741.P10340560953320554150

/-! ## A036741.P12104424737638347584

`comp[floor(n*π²)]%48`
-/

namespace A036741.P12104424737638347584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.pi ^ 2⌋

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n % 48

end

end A036741.P12104424737638347584

/-!
# A036744: Penholodigital squares: squares containing each of the digits 1..9 exactly once.

The programs for A036744, there is no canonical definition to state claims against.
-/

/-! ## A036744.P12640145086778355487

`A071519(n+1)²`
-/

namespace A036744.P12640145086778355487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071519 (n + 1) ^ 2

end

end A036744.P12640145086778355487

/-! ## A036744.P1385822655908088013

`A352329(n+7)`
-/

namespace A036744.P1385822655908088013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352329 (n + 7)

end

end A036744.P1385822655908088013

/-! ## A036744.P3370211240180793127

`A294661(n+1)²`
-/

namespace A036744.P3370211240180793127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294661 (n + 1) ^ 2

end

end A036744.P3370211240180793127

/-! ## A036744.P8346102625159751815

`(3*A162859(n+1))²`
-/

namespace A036744.P8346102625159751815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * A162859 (n + 1)) ^ 2

end

end A036744.P8346102625159751815

/-!
# A036745: Squares including each digit exactly once.

The programs for A036745, there is no canonical definition to state claims against.
-/

/-! ## A036745.P1302603030909134415

`A339693(n+36)`
-/

namespace A036745.P1302603030909134415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339693 (n + 36)

end

end A036745.P1302603030909134415

/-! ## A036745.P5725279433809517756

`lcm(9, A054038(n+1)²)`
-/

namespace A036745.P5725279433809517756
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 9 (A054038 (n + 1) ^ 2)

end

end A036745.P5725279433809517756

/-! ## A036745.P17073640861016798747

`(3*floor(A066825(n+34)/3))²`
-/

namespace A036745.P17073640861016798747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * ⌊(A066825 (n + 34) : ℚ) / 3⌋) ^ 2

end

end A036745.P17073640861016798747

/-! ## A036745.P12416988356676843981

`A054038(A118759(n+1))²`
-/

namespace A036745.P12416988356676843981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054038 (A118759 (n + 1)).toNat ^ 2

end

end A036745.P12416988356676843981

/-! ## A036745.P13357159860013671091

`A054038(A266279(n+2))²`
-/

namespace A036745.P13357159860013671091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054038 (A266279 (n + 2)).toNat ^ 2

end

end A036745.P13357159860013671091

/-! ## A036745.P8233772732652066981

`or(A054038(n+1), A151878(n))²`
-/

namespace A036745.P8233772732652066981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A054038 (n + 1)) (A151878 n) ^ 2

end

end A036745.P8233772732652066981

/-!
# A036746: Numbers with "long" representations in Roman notation: given by last n letters from ...MMMDCCCLXXXVIII.

The programs for A036746, there is no canonical definition to state claims against.
-/

/-! ## A036746.P371782198268505268

`∑[A094636(∑[A022171(n)])]`
-/

namespace A036746.P371782198268505268
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022171 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094636 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A036746.P371782198268505268

/-!
# A036749: Number of strings of n distinct digits from 0-9 that are the last n digits of a square in base 7.

The programs for A036749, there is no canonical definition to state claims against.
-/

/-! ## A036749.P495284399259264654

`(7-n)*a(n-1)` with `a(0)=4, a(1)=18`
-/

namespace A036749.P495284399259264654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4, 18] fun n a =>
  (7 - (n : ℤ)) * a (n - 1)

end

end A036749.P495284399259264654

/-! ## A036749.P11682257540619358805

`A008585(A036752(n+1))-A000038(n)`
-/

namespace A036749.P11682257540619358805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 (A036752 (n + 1)).toNat - A000038 n

end

end A036749.P11682257540619358805

/-! ## A036749.P8777254723551802006

`A036752(n+1)*A081288(A000005(n+1))`
-/

namespace A036749.P8777254723551802006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036752 (n + 1) * A081288 (A000005 (n + 1)).toNat

end

end A036749.P8777254723551802006

/-!
# A036750: Number of strings of n distinct digits from 1-9 that are the last n digits of a square in base 7.

The programs for A036750, there is no canonical definition to state claims against.
-/

/-! ## A036750.P12596181088933146741

`∏[dr(3-8*n)]`
-/

namespace A036750.P12596181088933146741
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (3 - (8 * n : ℤ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A036750.P12596181088933146741

/-!
# A036751: Number of strings of n distinct digits from 0-9 that are the last n digits of a square in base 8.

The programs for A036751, there is no canonical definition to state claims against.
-/

/-! ## A036751.P8340929075136057455

`A252463(∏[A208274(n)+A002034(2*(n+2))])`
-/

namespace A036751.P8340929075136057455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208274 n + A002034 (2 * (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252463 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A036751.P8340929075136057455

/-!
# A036752: Number of strings of n distinct digits from 1-9 that are the last n digits of a square in base 8.

The programs for A036752, there is no canonical definition to state claims against.
-/

/-! ## A036752.P7385655344222536760

`∏[dr(3-8*(n-1))]`
-/

namespace A036752.P7385655344222536760
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (3 - 8 * ((n : ℤ) - 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A036752.P7385655344222536760

/-! ## A036752.P17951760656965949868

`(7-n)*a(n-1)` with `a(0)=2, a(1)=6`
-/

namespace A036752.P17951760656965949868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 6] fun n a =>
  (7 - (n : ℤ)) * a (n - 1)

end

end A036752.P17951760656965949868

/-! ## A036752.P4861865293629661236

`∏[p?[comp[∑[2*n]+7]]%7]`
-/

namespace A036752.P4861865293629661236
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j + 7

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n) % 7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A036752.P4861865293629661236

/-!
# A036753: Number of strings of n distinct digits from 0-9 that are the last n digits of a square in base 9.

The programs for A036753, there is no canonical definition to state claims against.
-/

/-! ## A036753.P1361336944392066049

`a(n-1)*A251984(A004719(n+1))` with `a(0)=4, a(1)=27`
-/

namespace A036753.P1361336944392066049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4, 27] fun n a =>
  a (n - 1) * A251984 (A004719 (n + 1)).toNat

end

end A036753.P1361336944392066049

/-! ## A036753.P1263926097941940958

`(10-A341540(ceil(A233020(n-1)/2))-n)*a(n-1)` with `a(0)=4, a(1)=27`
-/

namespace A036753.P1263926097941940958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4, 27] fun n a =>
  (10 - A341540 ⌈(A233020 (n - 1) : ℚ) / 2⌉.toNat - (n : ℤ)) * a (n - 1)

end

end A036753.P1263926097941940958

/-!
# A036754: Number of strings of n distinct digits from 1-9 that are the last n digits of a square in base 9.

The programs for A036754, there is no canonical definition to state claims against.
-/

/-! ## A036754.P16002314084097621363

`(8-n)*a(n-1)` with `a(0)=3`
-/

namespace A036754.P16002314084097621363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  (8 - (n : ℤ)) * a (n - 1)

end

end A036754.P16002314084097621363

/-! ## A036754.P9662887369736835203

`∏[dr(n+1-(n+2)!²)]`
-/

namespace A036754.P9662887369736835203
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot ((n + 1 : ℤ) - (Nat.factorial (n + 2) ^ 2 : ℤ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A036754.P9662887369736835203

/-! ## A036754.P11788620966607435543

`3*∏[A333884(n)]`
-/

namespace A036754.P11788620966607435543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333884 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A036754.P11788620966607435543

/-! ## A036754.P11017512659272703675

`A036753(n+2)/9`
-/

namespace A036754.P11017512659272703675
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A036753 (n + 2) : ℚ) / 9

end

end A036754.P11017512659272703675

/-!
# A036757: Number of tree-like heptagonal systems.

The programs for A036757, there is no canonical definition to state claims against.
-/

/-! ## A036757.P11908517882553581064

`A008611(A211474(n+1)+char[and(n, n+1)+n])`
-/

namespace A036757.P11908517882553581064
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land n (n + 1) + n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (A211474 (n + 1) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)).toNat

end

end A036757.P11908517882553581064

/-! ## A036757.P6114295203331103778

`or(A096803(n), A350529(A096802(n)))`
-/

namespace A036757.P6114295203331103778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A096803 n) (A350529 (A096802 n).toNat)

end

end A036757.P6114295203331103778

/-!
# A036758: Number of edge-rooted tree-like octagonal systems.

The programs for A036758, there is no canonical definition to state claims against.
-/

/-! ## A036758.P15936212664620683250

`2*A036759(2*(n+1))-A036759(2*n+1)`
-/

namespace A036758.P15936212664620683250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A036759 (2 * (n + 1)) - A036759 (2 * n + 1)

end

end A036758.P15936212664620683250

/-! ## A036758.P7688831191020035985

`A121112(n+2)/5`
-/

namespace A036758.P7688831191020035985
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A121112 (n + 2) : ℚ) / 5

end

end A036758.P7688831191020035985

/-! ## A036758.P380295555199648997

`A036759(n+1)+2*A121122(n+1)`
-/

namespace A036758.P380295555199648997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036759 (n + 1) + 2 * A121122 (n + 1)

end

end A036758.P380295555199648997

/-!
# A036759: Number of mirror-symmetrical edge-rooted tree-like octagonal systems.

The programs for A036759, there is no canonical definition to state claims against.
-/

/-! ## A036759.P1837641334448089506

`A036758(n+1)-2*A121122(n+1)`
-/

namespace A036759.P1837641334448089506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036758 (n + 1) - 2 * A121122 (n + 1)

end

end A036759.P1837641334448089506

/-! ## A036759.P6751732710183550069

`A121112(n+2)/5-2*A121122(n+1)`
-/

namespace A036759.P6751732710183550069
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A121112 (n + 2) : ℚ) / 5 - (2 * A121122 (n + 1) : ℚ)

end

end A036759.P6751732710183550069

/-!
# A036760: Number of tree-like octagonal systems.

The programs for A036760, there is no canonical definition to state claims against.
-/

/-! ## A036760.P16934337837384806113

`A054846(A338867(n))`
-/

namespace A036760.P16934337837384806113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054846 (A338867 n).toNat

end

end A036760.P16934337837384806113

/-! ## A036760.P17353393579406796899

`A289496(∑[A000168(n)])`
-/

namespace A036760.P17353393579406796899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000168 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289496 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A036760.P17353393579406796899

/-!
# A036761: Number of refactorable integers (A033950) of binary order (A029837) n.

The programs for A036761, there is no canonical definition to state claims against.
-/

/-! ## A036761.P17341830785124766416

`A371592(A329664(n))`
-/

namespace A036761.P17341830785124766416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371592 (A329664 n).toNat

end

end A036761.P17341830785124766416

/-! ## A036761.P10489614277836301599

`A025591(n)-A059841(A151257(n))`
-/

namespace A036761.P10489614277836301599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025591 n - A059841 (A151257 n).toNat

end

end A036761.P10489614277836301599

/-! ## A036761.P15024494584420485368

`A323621(A308990(2*n))+A000700(n)`
-/

namespace A036761.P15024494584420485368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323621 (A308990 (2 * n)).toNat + A000700 n

end

end A036761.P15024494584420485368

/-!
# A036762: The integer values of x/d(x) in order of magnitude of x in A033950.

The programs for A036762, the canonical program `A036762.P3331353246584791037` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A036762 has offset 1).

The definition of A036762 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A036762.P3331353246584791037

`A033950(n+1)/A039819(n+1)`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A036762

/-- `A033950(n+1)/A039819(n+1)` -/
def P3331353246584791037.Spec : Prop :=
  ∀ n, P3331353246584791037.a n = (A036762 (n + 1) : ℚ)

end A036762

/-! ## A036762.P7511118255373711107

`A090395(A033950(n+1))`
-/

namespace A036762.P7511118255373711107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090395 (A033950 (n + 1)).toNat

end

end A036762.P7511118255373711107

namespace A036762

/-- `A090395(A033950(n+1))` -/
def P7511118255373711107.Spec : Prop :=
  ∀ n, P7511118255373711107.a n = A036762 (n + 1)

end A036762

/-! ## A036762.P18186822331370780228

`A090395(record[(n+1)*A336040(n+1)])`
-/

namespace A036762.P18186822331370780228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A336040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090395 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A036762.P18186822331370780228

namespace A036762

/-- `A090395(record[(n+1)*A336040(n+1)])` -/
def P18186822331370780228.Spec : Prop :=
  ∀ n, P18186822331370780228.a n = A036762 (n + 1)

end A036762

/-! ## A036762.P7025034513219351407

`A090395(record[(n+1)*(2-A090387(n+1))])`
-/

namespace A036762.P7025034513219351407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (2 - A090387 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090395 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A036762.P7025034513219351407

namespace A036762

/-- `A090395(record[(n+1)*(2-A090387(n+1))])` -/
def P7025034513219351407.Spec : Prop :=
  ∀ n, P7025034513219351407.a n = A036762 (n + 1)

end A036762

/-! ## A036762.P16926114415341927299

`A090395(∪[A057265(n+1), A280353(n+1)])`
-/

namespace A036762.P16926114415341927299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057265 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280353 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090395 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A036762.P16926114415341927299

namespace A036762

/-- `A090395(∪[A057265(n+1), A280353(n+1)])` -/
def P16926114415341927299.Spec : Prop :=
  ∀ n, P16926114415341927299.a n = A036762 (n + 1)

end A036762

/-! ## A036762.P17265536271904952587

`A033950(n+1)/A000005(eq[n+1, A009230(n+1)]+1)`
-/

namespace A036762.P17265536271904952587
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009230 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033950 (n + 1) : ℚ) / (A000005 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1) : ℚ)

end

end A036762.P17265536271904952587

namespace A036762

/-- `A033950(n+1)/A000005(eq[n+1, A009230(n+1)]+1)` -/
def P17265536271904952587.Spec : Prop :=
  ∀ n, P17265536271904952587.a n = (A036762 (n + 1) : ℚ)

end A036762

/-! ## A036762.P8771695262665039892

`A334762(A033950(2*n+1-n))`
-/

namespace A036762.P8771695262665039892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334762 (A033950 (2 * n + 1 - n)).toNat

end

end A036762.P8771695262665039892

namespace A036762

/-- `A334762(A033950(2*n+1-n))` -/
def P8771695262665039892.Spec : Prop :=
  ∀ n, P8771695262665039892.a n = A036762 (n + 1)

end A036762

/-! ## A036762.P10658506179154229800

`A078709(2*A033950(n+1)-A033950(n+1))`
-/

namespace A036762.P10658506179154229800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078709 (2 * A033950 (n + 1) - A033950 (n + 1)).toNat

end

end A036762.P10658506179154229800

namespace A036762

/-- `A078709(2*A033950(n+1)-A033950(n+1))` -/
def P10658506179154229800.Spec : Prop :=
  ∀ n, P10658506179154229800.a n = A036762 (n + 1)

end A036762

/-! ## A036762.P2634300758308056365

`A033950(n+1)/∑{d}[A033950(n+1), A057427(#)]`
-/

namespace A036762.P2634300758308056365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033950 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033950 (n + 1) : ℚ) / ((∑ d ∈ Nat.divisors (f1 n).natAbs, A057427 d : ℤ) : ℚ)

end

end A036762.P2634300758308056365

namespace A036762

/-- `A033950(n+1)/∑{d}[A033950(n+1), A057427(#)]` -/
def P2634300758308056365.Spec : Prop :=
  ∀ n, P2634300758308056365.a n = (A036762 (n + 1) : ℚ)

end A036762

/-! ## A036762.P5547855678142356521

`A033950(n+1)/A183063(2*A033950(n+1))`
-/

namespace A036762.P5547855678142356521
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033950 (n + 1) : ℚ) / (A183063 (2 * A033950 (n + 1)).toNat : ℚ)

end

end A036762.P5547855678142356521

namespace A036762

/-- `A033950(n+1)/A183063(2*A033950(n+1))` -/
def P5547855678142356521.Spec : Prop :=
  ∀ n, P5547855678142356521.a n = (A036762 (n + 1) : ℚ)

end A036762

/-!
# A036763: Numbers k such that k*d(x) = x has no solution for x, where d (A000005) is the number of divisors; sequence gives impossible x/d(x) quotients in order of magnitude.

The programs for A036763, there is no canonical definition to state claims against.
-/

/-! ## A036763.P14999279747471514737

`eq[0, A036764(n+1)]+1`
-/

namespace A036763.P14999279747471514737
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036764 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A036763.P14999279747471514737

/-! ## A036763.P9871689539669132242

`A020725(eq[0, A036764(n+1)])`
-/

namespace A036763.P9871689539669132242
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036764 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A036763.P9871689539669132242

/-! ## A036763.P8479549563490810683

`A020725(lt[A036764(n+1), 1])`
-/

namespace A036763.P8479549563490810683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036764 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A036763.P8479549563490810683

/-! ## A036763.P9848613827033597011

`eq[A036764(A028310(n)), A055671(n)]`
-/

namespace A036763.P9848613827033597011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036764 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055671 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A036763.P9848613827033597011

/-! ## A036763.P5776539127110213613

`lt[A036764(A028310(n)), A004442(n)]`
-/

namespace A036763.P5776539127110213613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036764 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A036763.P5776539127110213613

/-! ## A036763.P17103162625452566019

`lt[A036764(A028310(n)), A023445(n)]`
-/

namespace A036763.P17103162625452566019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036764 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023445 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A036763.P17103162625452566019

/-! ## A036763.P9817633553689373927

`lt[A051521(n+1), 1]+1`
-/

namespace A036763.P9817633553689373927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051521 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A036763.P9817633553689373927

/-! ## A036763.P6224861087044180338

`eq[0, A051521(round(acot(n)+n))]`
-/

namespace A036763.P6224861087044180338
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051521 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A036763.P6224861087044180338

/-! ## A036763.P8428251914092251817

`eq[0, A051521(A028310(n))]`
-/

namespace A036763.P8428251914092251817
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051521 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A036763.P8428251914092251817

/-! ## A036763.P9772768525887773910

`A020725(eq[0, A051521(n+1)])`
-/

namespace A036763.P9772768525887773910
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051521 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A036763.P9772768525887773910

/-! ## A036763.P15571386677229008411

`A114637(eq[0, A051521(n+1)])`
-/

namespace A036763.P15571386677229008411
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051521 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114637 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A036763.P15571386677229008411

/-! ## A036763.P11001150279061608567

`A020725(lt[A051521(n+1), 1])`
-/

namespace A036763.P11001150279061608567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051521 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A036763.P11001150279061608567

/-! ## A036763.P2630853551856929939

`A114637(lt[A051521(n+1), 1])`
-/

namespace A036763.P2630853551856929939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051521 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114637 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A036763.P2630853551856929939

/-! ## A036763.P548891938920934751

`eq[A000007(n), A051521(n+1)]+1`
-/

namespace A036763.P548891938920934751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051521 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A036763.P548891938920934751

/-! ## A036763.P8020783033335976256

`eq[A000007(n), A051521(A000007(n)+n)]`
-/

namespace A036763.P8020783033335976256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051521 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A036763.P8020783033335976256

/-!
# A036764: If n can be expressed as m/d(m) for some m, where d(m) is the number of divisors of m (A000005), then a(n) is the smallest such m, otherwise a(n) = 0.

The programs for A036764, there is no canonical definition to state claims against.
-/

/-! ## A036764.P3642316698333375164

`(n+1)*A275473(n+1)`
-/

namespace A036764.P3642316698333375164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A275473 (n + 1)

end

end A036764.P3642316698333375164

/-!
# A036765: Number of ordered rooted trees with n non-root nodes and all outdegrees <= three.

The programs for A036765, there is no canonical definition to state claims against.
-/

/-! ## A036765.P14763726629378551610

`A246555(n+1)`
-/

namespace A036765.P14763726629378551610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246555 (n + 1)

end

end A036765.P14763726629378551610

/-! ## A036765.P11270336668762293228

`A005726(n+1)/(n+1)`
-/

namespace A036765.P11270336668762293228
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005726 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A036765.P11270336668762293228

/-! ## A036765.P14067057475962651261

`A064580(∑[n]+n)`
-/

namespace A036765.P14067057475962651261
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064580 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A036765.P14067057475962651261

/-! ## A036765.P18102260595684886704

`A213742(A034856(n+1))/(n+1)`
-/

namespace A036765.P18102260595684886704
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A213742 (A034856 (n + 1)).toNat : ℚ) / (n + 1 : ℚ)

end

end A036765.P18102260595684886704

/-! ## A036765.P11376717671433025690

`A288942(∑[n+3]+n+3)`
-/

namespace A036765.P11376717671433025690
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288942 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3))

end

end A036765.P11376717671433025690

/-! ## A036765.P4142027180414825391

`A008287(A095794(n+1))/(n+1)`
-/

namespace A036765.P4142027180414825391
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008287 (A095794 (n + 1)).toNat : ℚ) / (n + 1 : ℚ)

end

end A036765.P4142027180414825391

/-!
# A036766: Number of ordered rooted trees with n non-root nodes and all outdegrees <= four.

The programs for A036766, there is no canonical definition to state claims against.
-/

/-! ## A036766.P2120313599524225972

`A135413(n+1)/(n+1)`
-/

namespace A036766.P2120313599524225972
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A135413 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A036766.P2120313599524225972

/-! ## A036766.P2304946538652595319

`A213743(∑[n+2]-1)/(n+1)`
-/

namespace A036766.P2304946538652595319
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A213743 (∑ j ∈ Finset.range (n + 1), f1 j - 1) : ℚ) / (n + 1 : ℚ)

end

end A036766.P2304946538652595319

/-! ## A036766.P11246360173498286506

`A288942(A052905(n+2))`
-/

namespace A036766.P11246360173498286506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288942 (A052905 (n + 2)).toNat

end

end A036766.P11246360173498286506

/-! ## A036766.P8950067453073685051

`A288942(A056115(n)+10)`
-/

namespace A036766.P8950067453073685051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288942 (A056115 n + 10).toNat

end

end A036766.P8950067453073685051

/-! ## A036766.P7546030648056725044

`A288942(A000096(n+3)+n+1)`
-/

namespace A036766.P7546030648056725044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288942 (A000096 (n + 3) + (n + 1 : ℤ)).toNat

end

end A036766.P7546030648056725044

/-! ## A036766.P18438452793763268782

`A288942(eq[4, A025581(n)])`
-/

namespace A036766.P18438452793763268782
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288942 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A036766.P18438452793763268782

/-!
# A036767: Number of ordered rooted trees with n non-root nodes and all outdegrees <= five.

The programs for A036767, there is no canonical definition to state claims against.
-/

/-! ## A036767.P16195612750904431755

`A288942((n+4)²-∑[n+1])`
-/

namespace A036767.P16195612750904431755
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288942 ((n + 4) ^ 2 - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A036767.P16195612750904431755

/-! ## A036767.P2787229592438850456

`or(char[1], A288942(A055999(n+3)))`
-/

namespace A036767.P2787229592438850456
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A288942 (A055999 (n + 3)).toNat)

end

end A036767.P2787229592438850456

/-! ## A036767.P5700941730675029558

`gcd(A000038(n), A288942(A055999(n+3)))`
-/

namespace A036767.P5700941730675029558
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A288942 (A055999 (n + 3)).toNat)

end

end A036767.P5700941730675029558

/-! ## A036767.P15988440351417568231

`A288942(A055999(n+3))+A000038(n+1)`
-/

namespace A036767.P15988440351417568231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288942 (A055999 (n + 3)).toNat + A000038 (n + 1)

end

end A036767.P15988440351417568231

/-! ## A036767.P6524736094422620774

`A029635(∑[n+1])*A288942(A055999(n+3))`
-/

namespace A036767.P6524736094422620774
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029635 (∑ j ∈ Finset.range (n + 1), f1 j) * A288942 (A055999 (n + 3)).toNat

end

end A036767.P6524736094422620774

/-! ## A036767.P10725656252235568108

`char[A053645(n+1)]*A288942(A055999(n+3))`
-/

namespace A036767.P10725656252235568108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053645 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A288942 (A055999 (n + 3)).toNat

end

end A036767.P10725656252235568108

/-! ## A036767.P4857864467368389302

`A029644(A000196(n)²)*A288942(A055999(n+3))`
-/

namespace A036767.P4857864467368389302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029644 (A000196 n ^ 2).toNat * A288942 (A055999 (n + 3)).toNat

end

end A036767.P4857864467368389302

/-! ## A036767.P17112155545387999911

`A001222(A034844(n+1))*A288942(A055999(n+3))`
-/

namespace A036767.P17112155545387999911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A034844 (n + 1)).toNat * A288942 (A055999 (n + 3)).toNat

end

end A036767.P17112155545387999911

/-! ## A036767.P7492595489643494164

`A029644(n²)*A288942(A055999(n+3))`
-/

namespace A036767.P7492595489643494164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029644 (n ^ 2) * A288942 (A055999 (n + 3)).toNat

end

end A036767.P7492595489643494164

/-!
# A036768: Number of ordered rooted trees with n non-root nodes and all outdegrees <= six.

The programs for A036768, there is no canonical definition to state claims against.
-/

/-! ## A036768.P1436506350186297641

`A213745(∑[n+2]-1)/(n+1)`
-/

namespace A036768.P1436506350186297641
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A213745 (∑ j ∈ Finset.range (n + 1), f1 j - 1) : ℚ) / (n + 1 : ℚ)

end

end A036768.P1436506350186297641

/-! ## A036768.P27999574638867579

`A288942(2*n+∑[n+5]+16)`
-/

namespace A036768.P27999574638867579
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288942 (2 * n + (∑ j ∈ Finset.range (n + 1), f1 j + 16))

end

end A036768.P27999574638867579

/-! ## A036768.P6821327275797617909

`abs(1-A288942(eq[6, A025581(n)]))+1`
-/

namespace A036768.P6821327275797617909
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A288942 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)| + 1

end

end A036768.P6821327275797617909

/-! ## A036768.P4336584984248068077

`A288942(eq[6, A025581(n)])+A000007(n+1)`
-/

namespace A036768.P4336584984248068077
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288942 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) + A000007 (n + 1)

end

end A036768.P4336584984248068077

/-! ## A036768.P2115453837227399611

`1-(A000027(n+1)-A288942(eq[6, A025581(n)]))+n`
-/

namespace A036768.P2115453837227399611
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A000027 (n + 1) - A288942 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)) + (n : ℤ)

end

end A036768.P2115453837227399611

/-!
# A036769: Number of ordered rooted trees with n non-root nodes and all outdegrees <= seven.

The programs for A036769, there is no canonical definition to state claims against.
-/

/-! ## A036769.P14748744652120248580

`A288942(A155212(n+4))`
-/

namespace A036769.P14748744652120248580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288942 (A155212 (n + 4)).toNat

end

end A036769.P14748744652120248580

/-! ## A036769.P267992619891785917

`A288942(A000217(n+8)-8)`
-/

namespace A036769.P267992619891785917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288942 (A000217 (n + 8) - 8).toNat

end

end A036769.P267992619891785917

/-! ## A036769.P9987186187464095840

`A288942(eq[6, A144328(n+1)]+2*n+1)`
-/

namespace A036769.P9987186187464095840
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288942 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + (2 * n + 1))

end

end A036769.P9987186187464095840

/-! ## A036769.P7901123446064171996

`A288942(eq[7, A025581(n)])`
-/

namespace A036769.P7901123446064171996
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288942 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A036769.P7901123446064171996

/-! ## A036769.P4764155862375352682

`A288942(eq[8, A004736(n+1)])`
-/

namespace A036769.P4764155862375352682
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288942 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A036769.P4764155862375352682

/-!
# A036770: Number of labeled rooted trees with a degree constraint: (2*n)!/(2^n) * C(2*n+1, n).

The programs for A036770, the canonical program `A036770.P5168123838259192498` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A036770 has offset 0).

The definition of A036770 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A036770.P5168123838259192498

`(2*n)!/2^n*C(2*n+1, n)`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A036770

/-- `(2*n)!/2^n*C(2*n+1, n)` -/
def P5168123838259192498.Spec : Prop :=
  ∀ n, P5168123838259192498.a n = (A036770 n : ℚ)

end A036770

/-! ## A036770.P273098477594603186

`(2*n)!*∏[(2*n+1)/(n+1)]`
-/

namespace A036770.P273098477594603186
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℚ) / (n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (2 * n) : ℚ) * (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A036770.P273098477594603186

namespace A036770

/-- `(2*n)!*∏[(2*n+1)/(n+1)]` -/
def P273098477594603186.Spec : Prop :=
  ∀ n, P273098477594603186.a n = (A036770 n : ℚ)

end A036770

/-! ## A036770.P11010251366069876102

`(4-6/(n+1))*a(n-1)*C(Δ[n²], 2)` with `a(0)=1`
-/

namespace A036770.P11010251366069876102
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (4 - 6 / (n + 1 : ℚ)) * a (n - 1) * (Nat.choose ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat 2 : ℚ)

end

end A036770.P11010251366069876102

namespace A036770

/-- `(4-6/(n+1))*a(n-1)*C(Δ[n²], 2)` -/
def P11010251366069876102.Spec : Prop :=
  ∀ n, P11010251366069876102.a n = (A036770 n : ℚ)

end A036770

/-! ## A036770.P12071067027100699914

`n*(4-6/(n+1))*a(n-1)*Δ[n²]` with `a(0)=1`
-/

namespace A036770.P12071067027100699914
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℚ) * ((4 - 6 / (n + 1 : ℚ)) * a (n - 1)) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℚ)

end

end A036770.P12071067027100699914

namespace A036770

/-- `n*(4-6/(n+1))*a(n-1)*Δ[n²]` -/
def P12071067027100699914.Spec : Prop :=
  ∀ n, P12071067027100699914.a n = (A036770 n : ℚ)

end A036770

/-! ## A036770.P3618962551473024406

`(4-n/∑[n])*a(n-1)*abs(n*(1-2*n))` with `a(0)=1`
-/

namespace A036770.P3618962551473024406
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (4 - (n : ℚ) / ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ)) * a (n - 1) * (|(n : ℤ) * (1 - (2 * n : ℤ))| : ℚ)

end

end A036770.P3618962551473024406

namespace A036770

/-- `(4-n/∑[n])*a(n-1)*abs(n*(1-2*n))` -/
def P3618962551473024406.Spec : Prop :=
  ∀ n, P3618962551473024406.a n = (A036770 n : ℚ)

end A036770

/-!
# A036771: Number of labeled rooted trees with a degree constraint: ((3*n)!/(6^n)) * binomial(3*n + 1, n).

The programs for A036771, the canonical program `A036771.P5101841492775926033` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A036771 has offset 0).

The definition of A036771 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A036771.P5101841492775926033

`(3*n)!/6^n*C(3*n+1, n)`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A036771

/-- `(3*n)!/6^n*C(3*n+1, n)` -/
def P5101841492775926033.Spec : Prop :=
  ∀ n, P5101841492775926033.a n = (A036771 n : ℚ)

end A036771

/-! ## A036771.P15468303927349219366

`A014606(n)*A045721(n)`
-/

namespace A036771.P15468303927349219366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014606 n * A045721 n

end

end A036771.P15468303927349219366

namespace A036771

/-- `A014606(n)*A045721(n)` -/
def P15468303927349219366.Spec : Prop :=
  ∀ n, P15468303927349219366.a n = A036771 n

end A036771

/-! ## A036771.P2725173334723739685

`record[A144484(n)]*A014606(n)`
-/

namespace A036771.P2725173334723739685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144484 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A014606 n

end

end A036771.P2725173334723739685

namespace A036771

/-- `record[A144484(n)]*A014606(n)` -/
def P2725173334723739685.Spec : Prop :=
  ∀ n, P2725173334723739685.a n = A036771 n

end A036771

/-! ## A036771.P17846838933948652847

`A014606(n)*A065942(2*n+1)`
-/

namespace A036771.P17846838933948652847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014606 n * A065942 (2 * n + 1)

end

end A036771.P17846838933948652847

namespace A036771

/-- `A014606(n)*A065942(2*n+1)` -/
def P17846838933948652847.Spec : Prop :=
  ∀ n, P17846838933948652847.a n = A036771 n

end A036771

/-! ## A036771.P3166883183586030942

`A014606(n)*A144484(A000217(n))`
-/

namespace A036771.P3166883183586030942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014606 n * A144484 (A000217 n).toNat

end

end A036771.P3166883183586030942

namespace A036771

/-- `A014606(n)*A144484(A000217(n))` -/
def P3166883183586030942.Spec : Prop :=
  ∀ n, P3166883183586030942.a n = A036771 n

end A036771

/-!
# A036772: Number of labeled rooted trees with a degree constraint: ((4*n)!/(24^n)) * binomial(4*n+1, n).

The programs for A036772, the canonical program `A036772.P8193967344979955466` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A036772 has offset 0).

The definition of A036772 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A036772.P8193967344979955466

`(4*n)!/24^n*C(4*n+1, n)`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A036772

/-- `(4*n)!/24^n*C(4*n+1, n)` -/
def P8193967344979955466.Spec : Prop :=
  ∀ n, P8193967344979955466.a n = (A036772 n : ℚ)

end A036772

/-!
# A036774: Number of labeled rooted unordered binary trees (each node has out-degree <= 2).

The programs for A036774, there is no canonical definition to state claims against.
-/

/-! ## A036774.P17785236156541597131

`A325201(∑[n+3]+1)`
-/

namespace A036774.P17785236156541597131
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325201 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A036774.P17785236156541597131

/-! ## A036774.P12585958928531220986

`record[A325201(A131819(n+1))]`
-/

namespace A036774.P12585958928531220986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325201 (A131819 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A036774.P12585958928531220986

/-! ## A036774.P8863301698114256639

`record[A325201(record[A097807(n)+n])]`
-/

namespace A036774.P8863301698114256639
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097807 n + (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325201 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A036774.P8863301698114256639

/-! ## A036774.P10621344774534327063

`record[A325201(n+1)^A155040(n)]`
-/

namespace A036774.P10621344774534327063
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A325201 (n + 1) : ℚ) ^ (A155040 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A036774.P10621344774534327063

/-!
# A036775: a(n) is the number of labeled rooted trees on a set of size n where each node has at most 3 neighbors that are further away from the root than the node itself.

The programs for A036775, there is no canonical definition to state claims against.
-/

/-! ## A036775.P7704789665024718653

`A325201(∑[n+4]+3)`
-/

namespace A036775.P7704789665024718653
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325201 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A036775.P7704789665024718653

/-! ## A036775.P3550952684417054207

`A141209(n)-A209640(2^(n+1))`
-/

namespace A036775.P3550952684417054207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141209 n - A209640 (2 ^ (n + 1))

end

end A036775.P3550952684417054207

/-!
# A036776: a(n) is the number of labeled rooted trees on a set of size n where each node has at most 4 neighbors that are further away from the root than the node itself.

The programs for A036776, there is no canonical definition to state claims against.
-/

/-! ## A036776.P8799503606587724819

`A325201(Δ[A264443(n)])`
-/

namespace A036776.P8799503606587724819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325201 (f1 (n + 1) - f1 n).toNat

end

end A036776.P8799503606587724819

/-! ## A036776.P17766051358622486388

`A325201(A046691(n+3))`
-/

namespace A036776.P17766051358622486388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325201 (A046691 (n + 3)).toNat

end

end A036776.P17766051358622486388

/-! ## A036776.P4365094724095835860

`A325201(A056115(n)+11)`
-/

namespace A036776.P4365094724095835860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325201 (A056115 n + 11).toNat

end

end A036776.P4365094724095835860

/-! ## A036776.P15300310858115363748

`A325201(eq[3, A152157(n)])`
-/

namespace A036776.P15300310858115363748
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325201 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A036776.P15300310858115363748

/-!
# A036777: Number of labeled rooted trees with a degree constraint (described in the comments below).

The programs for A036777, there is no canonical definition to state claims against.
-/

/-! ## A036777.P5144298123040952579

`A325205(n)-A185264(A000124(n))`
-/

namespace A036777.P5144298123040952579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325205 n - A185264 (A000124 n).toNat

end

end A036777.P5144298123040952579

/-! ## A036777.P11626725134957285406

`A325206(n)-A185264(A000124(n))`
-/

namespace A036777.P11626725134957285406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325206 n - A185264 (A000124 n).toNat

end

end A036777.P11626725134957285406

/-! ## A036777.P9724216944895348802

`A325207(n)-A185264(A000124(n))`
-/

namespace A036777.P9724216944895348802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325207 n - A185264 (A000124 n).toNat

end

end A036777.P9724216944895348802

/-! ## A036777.P7525907065882242660

`A325208(n)-A185264(A000124(n))`
-/

namespace A036777.P7525907065882242660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325208 n - A185264 (A000124 n).toNat

end

end A036777.P7525907065882242660

/-!
# A036778: Number of labeled rooted trees on 2n+1 nodes each node having an even number of children.

The programs for A036778, there is no canonical definition to state claims against.
-/

/-! ## A036778.P12227806876435529324

`Δ[n²]*A143601(n)`
-/

namespace A036778.P12227806876435529324
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) * A143601 n

end

end A036778.P12227806876435529324

/-! ## A036778.P11207392901644691483

`Δ[n²]*A058014(2*n)`
-/

namespace A036778.P11207392901644691483
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) * A058014 (2 * n)

end

end A036778.P11207392901644691483

/-! ## A036778.P14956424100574272898

`lcm(Δ[A000290(n)], A143601(n))`
-/

namespace A036778.P14956424100574272898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (f1 (n + 1) - f1 n) (A143601 n)

end

end A036778.P14956424100574272898

/-!
# A036779: Greedy sequence such that no term is the average of three others.

The programs for A036779, the canonical program `A036779.P249363070567097633` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A036779 has offset 1).

The definition of A036779 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 317 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A036779.P10153113116273466454

`lt[A332205(A065359(n)+n), 2]`
-/

namespace A036779.P10153113116273466454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332205 (A065359 n + (n : ℤ)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A036779.P10153113116273466454

namespace A036779

/-- `lt[A332205(A065359(n)+n), 2]` -/
def P10153113116273466454.Spec : Prop :=
  ∀ n, (P10153113116273466454.a n : ℤ) = A036779 (n + 1)

end A036779

/-! ## A036779.P249363070567097633

`record[and(n+1, A057300(A010060(n+1)+n))]`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A036779

/-- `record[and(n+1, A057300(A010060(n+1)+n))]` -/
def P249363070567097633.Spec : Prop :=
  ∀ n, P249363070567097633.a n = A036779 (n + 1)

theorem P249363070567097633.correct : P249363070567097633.Spec := by
  intro n
  simp only [A036779, Nat.add_sub_cancel]

end A036779

/-! ## A036779.P15749503422561795642

`eq[A005536(n), A059620(n)]`
-/

namespace A036779.P15749503422561795642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005536 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059620 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A036779.P15749503422561795642

namespace A036779

/-- `eq[A005536(n), A059620(n)]` -/
def P15749503422561795642.Spec : Prop :=
  ∀ n, (P15749503422561795642.a n : ℤ) = A036779 (n + 1)

end A036779

/-! ## A036779.P10163220855317675352

`eq[A005536(n), A084091(n)]`
-/

namespace A036779.P10163220855317675352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005536 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084091 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A036779.P10163220855317675352

namespace A036779

/-- `eq[A005536(n), A084091(n)]` -/
def P10163220855317675352.Spec : Prop :=
  ∀ n, (P10163220855317675352.a n : ℤ) = A036779 (n + 1)

end A036779

/-! ## A036779.P17151618401370874980

`eq[A131533(n), A334222(n)]`
-/

namespace A036779.P17151618401370874980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131533 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334222 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A036779.P17151618401370874980

namespace A036779

/-- `eq[A131533(n), A334222(n)]` -/
def P17151618401370874980.Spec : Prop :=
  ∀ n, (P17151618401370874980.a n : ℤ) = A036779 (n + 1)

end A036779

/-! ## A036779.P6841813417003878230

`eq[A131531(n+1), A332205(n)]`
-/

namespace A036779.P6841813417003878230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131531 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332205 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A036779.P6841813417003878230

namespace A036779

/-- `eq[A131531(n+1), A332205(n)]` -/
def P6841813417003878230.Spec : Prop :=
  ∀ n, (P6841813417003878230.a n : ℤ) = A036779 (n + 1)

end A036779

/-! ## A036779.P13281501496988554626

`eq[A131531(n+1), A335359(n)]`
-/

namespace A036779.P13281501496988554626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131531 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335359 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A036779.P13281501496988554626

namespace A036779

/-- `eq[A131531(n+1), A335359(n)]` -/
def P13281501496988554626.Spec : Prop :=
  ∀ n, (P13281501496988554626.a n : ℤ) = A036779 (n + 1)

end A036779

/-! ## A036779.P6034533996143199406

`eq[A328979(n+1), A332205(n)]`
-/

namespace A036779.P6034533996143199406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328979 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332205 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A036779.P6034533996143199406

namespace A036779

/-- `eq[A328979(n+1), A332205(n)]` -/
def P6034533996143199406.Spec : Prop :=
  ∀ n, (P6034533996143199406.a n : ℤ) = A036779 (n + 1)

end A036779

/-! ## A036779.P14303178201585892068

`eq[A328979(n+1), A335359(n)]`
-/

namespace A036779.P14303178201585892068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328979 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335359 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A036779.P14303178201585892068

namespace A036779

/-- `eq[A328979(n+1), A335359(n)]` -/
def P14303178201585892068.Spec : Prop :=
  ∀ n, (P14303178201585892068.a n : ℤ) = A036779 (n + 1)

end A036779

/-! ## A036779.P9266474709578840733

`eq[A332205(n), A337923(n+1)]`
-/

namespace A036779.P9266474709578840733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332205 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337923 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A036779.P9266474709578840733

namespace A036779

/-- `eq[A332205(n), A337923(n+1)]` -/
def P9266474709578840733.Spec : Prop :=
  ∀ n, (P9266474709578840733.a n : ℤ) = A036779 (n + 1)

end A036779

/-! ## A036779.P8677550798406021336

`eq[A334234(n), A348536(n+1)]`
-/

namespace A036779.P8677550798406021336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334234 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348536 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A036779.P8677550798406021336

namespace A036779

/-- `eq[A334234(n), A348536(n+1)]` -/
def P8677550798406021336.Spec : Prop :=
  ∀ n, (P8677550798406021336.a n : ℤ) = A036779 (n + 1)

end A036779

/-!
# A036781: a(n) = n + Sum_{k=0..n} k!.

The programs for A036781, the canonical program `A036781.P5149650523530966486` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A036781 has offset 0).

The definition of A036781 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A036781.P5149650523530966486

`a(n-1)+1+n!` with `a(0)=1`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A036781

/-- `a(n-1)+1+n!` -/
def P5149650523530966486.Spec : Prop :=
  ∀ n, (P5149650523530966486.a n : ℤ) = A036781 n

theorem P5149650523530966486.correct : P5149650523530966486.Spec := by
  intro n
  simp only [A036781]

end A036781

/-! ## A036781.P1360035897893120312

`∑[n!]+n`
-/

namespace A036781.P1360035897893120312
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n

end

end A036781.P1360035897893120312

namespace A036781

/-- `∑[n!]+n` -/
def P1360035897893120312.Spec : Prop :=
  ∀ n, (P1360035897893120312.a n : ℤ) = A036781 n

end A036781

/-! ## A036781.P200875686114354126

`n-or(4, ∑[-n!])`
-/

namespace A036781.P200875686114354126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(Nat.factorial n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - Int.lor 4 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A036781.P200875686114354126

namespace A036781

/-- `n-or(4, ∑[-n!])` -/
def P200875686114354126.Spec : Prop :=
  ∀ n, P200875686114354126.a n = A036781 n

end A036781

/-! ## A036781.P6942388140774413445

`2*n-(n-∑[n!])`
-/

namespace A036781.P6942388140774413445
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - ((n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ))

end

end A036781.P6942388140774413445

namespace A036781

/-- `2*n-(n-∑[n!])` -/
def P6942388140774413445.Spec : Prop :=
  ∀ n, P6942388140774413445.a n = A036781 n

end A036781

/-! ## A036781.P1900419187043087692

`∑[n!-(floor(acot(n))-1)]`
-/

namespace A036781.P1900419187043087692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) - (⌊SequenceMachineLib.acot (n : ℝ)⌋ - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A036781.P1900419187043087692

namespace A036781

/-- `∑[n!-(floor(acot(n))-1)]` -/
def P1900419187043087692.Spec : Prop :=
  ∀ n, P1900419187043087692.a n = A036781 n

end A036781

/-! ## A036781.P11525230508437918120

`∑[∏[round(1/acot(n))]]+n`
-/

namespace A036781.P11525230508437918120
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (1 / SequenceMachineLib.acot (n : ℝ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A036781.P11525230508437918120

namespace A036781

/-- `∑[∏[round(1/acot(n))]]+n` -/
def P11525230508437918120.Spec : Prop :=
  ∀ n, P11525230508437918120.a n = A036781 n

end A036781

/-! ## A036781.P675027451697696359

`∑[n*a(n-1)]+n` with `a(0)=1`
-/

namespace A036781.P675027451697696359
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  n * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n

end

end A036781.P675027451697696359

namespace A036781

/-- `∑[n*a(n-1)]+n` -/
def P675027451697696359.Spec : Prop :=
  ∀ n, (P675027451697696359.a n : ℤ) = A036781 n

end A036781

/-! ## A036781.P2126909787433590367

`n-1-xor(-1, ∑[n!])`
-/

namespace A036781.P2126909787433590367
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1 - Int.xor (-1) ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A036781.P2126909787433590367

namespace A036781

/-- `n-1-xor(-1, ∑[n!])` -/
def P2126909787433590367.Spec : Prop :=
  ∀ n, P2126909787433590367.a n = A036781 n

end A036781

/-! ## A036781.P2547260244289949205

`n-∑[n*a(n-1)]` with `a(0)=-1`
-/

namespace A036781.P2547260244289949205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [-1] fun n f1 =>
  (n : ℤ) * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A036781.P2547260244289949205

namespace A036781

/-- `n-∑[n*a(n-1)]` -/
def P2547260244289949205.Spec : Prop :=
  ∀ n, P2547260244289949205.a n = A036781 n

end A036781

/-! ## A036781.P15648770628150053366

`a(n-1)-xor(-1, n!)` with `a(0)=1`
-/

namespace A036781.P15648770628150053366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) - Int.xor (-1) (Nat.factorial n : ℤ)

end

end A036781.P15648770628150053366

namespace A036781

/-- `a(n-1)-xor(-1, n!)` -/
def P15648770628150053366.Spec : Prop :=
  ∀ n, P15648770628150053366.a n = A036781 n

end A036781

/-!
# A036782: a(n) = n - 1 + Sum_{j=0..n} j!.

The programs for A036782, the canonical program `A036782.P7982926472072455360` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A036782 has offset 0).

The definition of A036782 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A036782.P7982926472072455360

`A036781(n)-1`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A036782

/-- `A036781(n)-1` -/
def P7982926472072455360.Spec : Prop :=
  ∀ n, P7982926472072455360.a n = A036782 n

theorem P7982926472072455360.correct : P7982926472072455360.Spec := by
  intro n
  simp only [A036782]

end A036782

/-! ## A036782.P15551511123835739918

`∑[n!+1]-2`
-/

namespace A036782.P15551511123835739918
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 2

end

end A036782.P15551511123835739918

namespace A036782

/-- `∑[n!+1]-2` -/
def P15551511123835739918.Spec : Prop :=
  ∀ n, P15551511123835739918.a n = A036782 n

end A036782

/-! ## A036782.P3135230733781692875

`n-(1-∑[n!])`
-/

namespace A036782.P3135230733781692875
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (1 - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ))

end

end A036782.P3135230733781692875

namespace A036782

/-- `n-(1-∑[n!])` -/
def P3135230733781692875.Spec : Prop :=
  ∀ n, P3135230733781692875.a n = A036782 n

end A036782

/-! ## A036782.P510753003579568389

`∑[lcm(n!, dr(n))]+n`
-/

namespace A036782.P510753003579568389
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (Nat.factorial n) (SequenceMachineLib.digitalRoot (n : ℤ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n

end

end A036782.P510753003579568389

namespace A036782

/-- `∑[lcm(n!, dr(n))]+n` -/
def P510753003579568389.Spec : Prop :=
  ∀ n, (P510753003579568389.a n : ℤ) = A036782 n

end A036782

/-! ## A036782.P6607042627768363044

`xor(4, ∑[n!]+3)+n`
-/

namespace A036782.P6607042627768363044
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 4 (∑ j ∈ Finset.range (n + 1), f1 j + 3) + n

end

end A036782.P6607042627768363044

namespace A036782

/-- `xor(4, ∑[n!]+3)+n` -/
def P6607042627768363044.Spec : Prop :=
  ∀ n, (P6607042627768363044.a n : ℤ) = A036782 n

end A036782

/-! ## A036782.P11168554579355500859

`∑[n!%∑[n!]]+n`
-/

namespace A036782.P11168554579355500859
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n % (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n

end

end A036782.P11168554579355500859

namespace A036782

/-- `∑[n!%∑[n!]]+n` -/
def P11168554579355500859.Spec : Prop :=
  ∀ n, (P11168554579355500859.a n : ℤ) = A036782 n

end A036782

/-! ## A036782.P1390835022095098861

`∑[C(n!, ceil(acot(n)))]+n`
-/

namespace A036782.P1390835022095098861
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.factorial n) ⌈SequenceMachineLib.acot (n : ℝ)⌉.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n

end

end A036782.P1390835022095098861

namespace A036782

/-- `∑[C(n!, ceil(acot(n)))]+n` -/
def P1390835022095098861.Spec : Prop :=
  ∀ n, (P1390835022095098861.a n : ℤ) = A036782 n

end A036782

/-! ## A036782.P3877277246926110256

`a(n-1)+n!+1` with `a(0)=0`
-/

namespace A036782.P3877277246926110256
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + (Nat.factorial n + 1)

end

end A036782.P3877277246926110256

namespace A036782

/-- `a(n-1)+n!+1` -/
def P3877277246926110256.Spec : Prop :=
  ∀ n, (P3877277246926110256.a n : ℤ) = A036782 n

end A036782

/-! ## A036782.P3194622387037569404

`∑[n!*ceil(sin(n)²)]+n`
-/

namespace A036782.P3194622387037569404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * ⌈Real.sin (n : ℝ) ^ 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A036782.P3194622387037569404

namespace A036782

/-- `∑[n!*ceil(sin(n)²)]+n` -/
def P3194622387037569404.Spec : Prop :=
  ∀ n, P3194622387037569404.a n = A036782 n

end A036782

/-! ## A036782.P3398392566467695230

`∑[n*a(n-1)]+n` with `a(0)=0, a(1)=1`
-/

namespace A036782.P3398392566467695230
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  n * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n

end

end A036782.P3398392566467695230

namespace A036782

/-- `∑[n*a(n-1)]+n` -/
def P3398392566467695230.Spec : Prop :=
  ∀ n, (P3398392566467695230.a n : ℤ) = A036782 n

end A036782

/-!
# A036783: G.f. satisfies A(x) = 1 + x*cycle_index(G,A(x)) where G = tetragonal pyramid group of order 4 with cycle index (z1^5+2*z1*z4+z1*z2^2)/4.

The programs for A036783, there is no canonical definition to state claims against.
-/

/-! ## A036783.P14084650118987777707

`A256502(A049155(n))`
-/

namespace A036783.P14084650118987777707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256502 (A049155 n).toNat

end

end A036783.P14084650118987777707

/-! ## A036783.P16357569960334654046

`A276798(A150984(n))`
-/

namespace A036783.P16357569960334654046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276798 (A150984 n).toNat

end

end A036783.P16357569960334654046

/-! ## A036783.P3138243305743370253

`A256502(A049172(n+1))`
-/

namespace A036783.P3138243305743370253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256502 (A049172 (n + 1)).toNat

end

end A036783.P3138243305743370253

/-!
# A036784: G.f. satisfies A(x) = 1 + x*cycle_index(G,A(x)) where G = tetragonal pyramid group of order 8 with cycle index (z1^5+2*z1*z4+3*z1*z2^2+2*z1^3*z2)/8.

The programs for A036784, there is no canonical definition to state claims against.
-/

/-! ## A036784.P7291148222103808118

`A097992(A151057(n))`
-/

namespace A036784.P7291148222103808118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097992 (A151057 n).toNat

end

end A036784.P7291148222103808118

/-! ## A036784.P12742643499542575886

`A387141(A150768(n))`
-/

namespace A036784.P12742643499542575886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387141 (A150768 n).toNat

end

end A036784.P12742643499542575886

/-! ## A036784.P5476359710277502881

`A008615(A151057(n)+1)`
-/

namespace A036784.P5476359710277502881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (A151057 n + 1).toNat

end

end A036784.P5476359710277502881

/-!
# A036785: Numbers divisible by the squares of two distinct primes.

The programs for A036785, there is no canonical definition to state claims against.
-/

/-! ## A036785.P5758585121773504884

`sqrt(A378900(n+1))`
-/

namespace A036785.P5758585121773504884
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A378900 (n + 1) : ℝ)

end

end A036785.P5758585121773504884

/-! ## A036785.P4731760612530631907

`∪[A072412(n+1), A072413(n+1)]`
-/

namespace A036785.P4731760612530631907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072412 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072413 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A036785.P4731760612530631907

/-! ## A036785.P5958457203982783068

`∪[A318720(n+1), A338539(n+1)]`
-/

namespace A036785.P5958457203982783068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318720 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338539 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A036785.P5958457203982783068

/-! ## A036785.P11836245795266427274

`filter[A048111(n+1), A353625(#)]`
-/

namespace A036785.P11836245795266427274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048111 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353625 (f1 j).toNat = 1) n)

end

end A036785.P11836245795266427274

/-! ## A036785.P5194471789459759109

`filter[A082295(n+1), A353625(#)]`
-/

namespace A036785.P5194471789459759109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082295 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353625 (f1 j).toNat = 1) n)

end

end A036785.P5194471789459759109

/-! ## A036785.P1752541346214134706

`filter[A274241(n+1), A353625(#)]`
-/

namespace A036785.P1752541346214134706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274241 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353625 (f1 j).toNat = 1) n)

end

end A036785.P1752541346214134706

/-! ## A036785.P4362153114150547779

`filter[A375397(n+1), A353625(#)]`
-/

namespace A036785.P4362153114150547779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375397 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353625 (f1 j).toNat = 1) n)

end

end A036785.P4362153114150547779

/-! ## A036785.P3164573164818799416

`filter[A360768(n+1), A353625(#)]`
-/

namespace A036785.P3164573164818799416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360768 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353625 (f1 j).toNat = 1) n)

end

end A036785.P3164573164818799416

/-! ## A036785.P760903315609510083

`filter[A038838(n+1), A353625(#)]`
-/

namespace A036785.P760903315609510083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038838 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353625 (f1 j).toNat = 1) n)

end

end A036785.P760903315609510083

/-! ## A036785.P4414194024878698243

`filter[A378878(n+1), A353625(#)]`
-/

namespace A036785.P4414194024878698243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378878 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353625 (f1 j).toNat = 1) n)

end

end A036785.P4414194024878698243

/-! ## A036785.P2645508272182069587

`filter[A048108(n+1), A353625(#)]`
-/

namespace A036785.P2645508272182069587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048108 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353625 (f1 j).toNat = 1) n)

end

end A036785.P2645508272182069587

/-! ## A036785.P11833134859865620008

`eq[1, A353625(n+1)]+1`
-/

namespace A036785.P11833134859865620008
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353625 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A036785.P11833134859865620008

/-! ## A036785.P12005651175727850828

`filter[A284342(n+1), A353625(#)]`
-/

namespace A036785.P12005651175727850828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284342 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353625 (f1 j).toNat = 1) n)

end

end A036785.P12005651175727850828

/-! ## A036785.P10936475583176256660

`filter[A393201(n+1), A353625(#)]`
-/

namespace A036785.P10936475583176256660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393201 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353625 (f1 j).toNat = 1) n)

end

end A036785.P10936475583176256660

/-! ## A036785.P230504966988305872

`filter[A274188(n+1), A353625(#)]`
-/

namespace A036785.P230504966988305872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274188 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353625 (f1 j).toNat = 1) n)

end

end A036785.P230504966988305872

/-! ## A036785.P12365136790422625582

`filter[A376271(n+1), A353625(#)]`
-/

namespace A036785.P12365136790422625582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376271 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353625 (f1 j).toNat = 1) n)

end

end A036785.P12365136790422625582

/-! ## A036785.P8123135882485191647

`filter[A062171(n+1), A353625(#)]`
-/

namespace A036785.P8123135882485191647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062171 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353625 (f1 j).toNat = 1) n)

end

end A036785.P8123135882485191647

/-! ## A036785.P14736338371596445553

`filter[A320632(n+1), A353625(#)]`
-/

namespace A036785.P14736338371596445553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320632 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353625 (f1 j).toNat = 1) n)

end

end A036785.P14736338371596445553

/-! ## A036785.P6060800649604984830

`filter[A289554(n+1), A353625(#)]`
-/

namespace A036785.P6060800649604984830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289554 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353625 (f1 j).toNat = 1) n)

end

end A036785.P6060800649604984830

/-! ## A036785.P13569314494263918591

`filter[A033987(n+1), A353625(#)]`
-/

namespace A036785.P13569314494263918591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033987 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353625 (f1 j).toNat = 1) n)

end

end A036785.P13569314494263918591

/-!
# A036786: Length of Roman notation for n < length of decimal representation.

The programs for A036786, there is no canonical definition to state claims against.
-/

/-! ## A036786.P6417513291853851707

`lt[A006968(n+1), A055642(n+3)]+1`
-/

namespace A036786.P6417513291853851707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006968 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A036786.P6417513291853851707

/-! ## A036786.P114681492535126040

`lt[10^A006968(A000007(n)+n), n+1]`
-/

namespace A036786.P114681492535126040
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (10 : ℚ) ^ (A006968 (A000007 n + (n : ℤ)).toNat : ℤ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n

end

end A036786.P114681492535126040

/-! ## A036786.P11825287402506139506

`lt[A006968(A028310(n)), A055642(n)]`
-/

namespace A036786.P11825287402506139506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006968 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A036786.P11825287402506139506

/-! ## A036786.P3028343024903249235

`lt[A006968(A028310(n)), A004218(n+1)]`
-/

namespace A036786.P3028343024903249235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006968 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004218 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A036786.P3028343024903249235

/-! ## A036786.P15420517468466255546

`lt[A006968(A233583(n+1)), A055642(n)]`
-/

namespace A036786.P15420517468466255546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006968 (A233583 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A036786.P15420517468466255546

/-!
# A036787: Length of Roman notation for n = length of decimal representation.

The programs for A036787, there is no canonical definition to state claims against.
-/

/-! ## A036787.P12942093029904655763

`eq[A004218(n+1), A006968(A028310(n))]`
-/

namespace A036787.P12942093029904655763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004218 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006968 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A036787.P12942093029904655763

/-! ## A036787.P4356290503643267862

`eq[A092196(n+1)-A092197(n+1), A055642(n+1)]+1`
-/

namespace A036787.P4356290503643267862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092196 (n + 1) - A092197 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A036787.P4356290503643267862

/-! ## A036787.P963872915386952250

`eq[A006968(n+1), A276502(n+1)]+1`
-/

namespace A036787.P963872915386952250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006968 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276502 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A036787.P963872915386952250

/-! ## A036787.P14917991276692544568

`A036788(lt[A094153(n+1), A105269(n+1)])`
-/

namespace A036787.P14917991276692544568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094153 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105269 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036788 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A036787.P14917991276692544568

/-! ## A036787.P10925661020066203486

`A036788(lt[A000293(n), A061493(3*n+1)])`
-/

namespace A036787.P10925661020066203486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000293 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061493 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036788 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A036787.P10925661020066203486

/-!
# A036788: Length of Roman notation for n <= length of decimal representation.

The programs for A036788, there is no canonical definition to state claims against.
-/

/-! ## A036788.P5048665772506574065

`lt[A006968(A028310(n)), A004218(n+1)+1]`
-/

namespace A036788.P5048665772506574065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006968 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004218 (n + 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A036788.P5048665772506574065

/-! ## A036788.P16023437426959219932

`∪[A036786(n+1), A036787(n+1)]`
-/

namespace A036788.P16023437426959219932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036786 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036787 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A036788.P16023437426959219932

/-! ## A036788.P17836417079164356612

`record[A076313(A036786(n+1))]`
-/

namespace A036788.P17836417079164356612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076313 (A036786 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A036788.P17836417079164356612

/-!
# A036789: a(n) = Sum_{i=0..n} floor((2*i + 2)/(n - i + 1)).

The programs for A036789, the canonical program `A036789.P17804873214700713588` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A036789 has offset 0).

The definition of A036789 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A036789.P17804873214700713588

`A022821(n+2)-(n+1)`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A036789

/-- `A022821(n+2)-(n+1)` -/
def P17804873214700713588.Spec : Prop :=
  ∀ n, P17804873214700713588.a n = A036789 n

theorem P17804873214700713588.correct : P17804873214700713588.Spec := by
  intro n
  simp only [A036789]

end A036789

/-! ## A036789.P1774975380798615104

`∑[Δ[A062550(n+1)]-3]`
-/

namespace A036789.P1774975380798615104
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062550 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A036789.P1774975380798615104

namespace A036789

/-- `∑[Δ[A062550(n+1)]-3]` -/
def P1774975380798615104.Spec : Prop :=
  ∀ n, P1774975380798615104.a n = A036789 n

end A036789

/-! ## A036789.P12894185205525603637

`∑[A092405(2*n+3)-3]`
-/

namespace A036789.P12894185205525603637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092405 (2 * n + 3) - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A036789.P12894185205525603637

namespace A036789

/-- `∑[A092405(2*n+3)-3]` -/
def P12894185205525603637.Spec : Prop :=
  ∀ n, P12894185205525603637.a n = A036789 n

end A036789

/-! ## A036789.P12357715049142387053

`A062550(n+2)-3*(n+2)`
-/

namespace A036789.P12357715049142387053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062550 (n + 2) - (3 * (n + 2) : ℤ)

end

end A036789.P12357715049142387053

namespace A036789

/-- `A062550(n+2)-3*(n+2)` -/
def P12357715049142387053.Spec : Prop :=
  ∀ n, P12357715049142387053.a n = A036789 n

end A036789

/-! ## A036789.P15831969872196308885

`∑[Δ[A006218(2*(n+1))]-3]`
-/

namespace A036789.P15831969872196308885
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 (2 * (n + 1))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A036789.P15831969872196308885

namespace A036789

/-- `∑[Δ[A006218(2*(n+1))]-3]` -/
def P15831969872196308885.Spec : Prop :=
  ∀ n, P15831969872196308885.a n = A036789 n

end A036789

/-! ## A036789.P8673851135171877122

`A077025(n+2)+A002541(n+2)`
-/

namespace A036789.P8673851135171877122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077025 (n + 2) + A002541 (n + 2)

end

end A036789.P8673851135171877122

namespace A036789

/-- `A077025(n+2)+A002541(n+2)` -/
def P8673851135171877122.Spec : Prop :=
  ∀ n, P8673851135171877122.a n = A036789 n

end A036789

/-! ## A036789.P10673633099519325147

`A075989(n+2)+2*A002541(n+2)`
-/

namespace A036789.P10673633099519325147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075989 (n + 2) + 2 * A002541 (n + 2)

end

end A036789.P10673633099519325147

namespace A036789

/-- `A075989(n+2)+2*A002541(n+2)` -/
def P10673633099519325147.Spec : Prop :=
  ∀ n, P10673633099519325147.a n = A036789 n

end A036789

/-! ## A036789.P5237556179268816194

`A339217(n+2)-(n+2)`
-/

namespace A036789.P5237556179268816194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339217 (n + 2) - (n + 2 : ℤ)

end

end A036789.P5237556179268816194

namespace A036789

/-- `A339217(n+2)-(n+2)` -/
def P5237556179268816194.Spec : Prop :=
  ∀ n, P5237556179268816194.a n = A036789 n

end A036789

/-! ## A036789.P3016218222862644843

`A366968(2*(n+2))`
-/

namespace A036789.P3016218222862644843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366968 (2 * (n + 2))

end

end A036789.P3016218222862644843

namespace A036789

/-- `A366968(2*(n+2))` -/
def P3016218222862644843.Spec : Prop :=
  ∀ n, P3016218222862644843.a n = A036789 n

end A036789

/-! ## A036789.P9766851454969406947

`∑[A092338(2*(n+2))-2]`
-/

namespace A036789.P9766851454969406947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092338 (2 * (n + 2)) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A036789.P9766851454969406947

namespace A036789

/-- `∑[A092338(2*(n+2))-2]` -/
def P9766851454969406947.Spec : Prop :=
  ∀ n, P9766851454969406947.a n = A036789 n

end A036789

/-! ## A036789.P10113883986479818801

`A325459(2*(n+2))+n+1`
-/

namespace A036789.P10113883986479818801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325459 (2 * (n + 2)) + (n + 1 : ℤ)

end

end A036789.P10113883986479818801

namespace A036789

/-- `A325459(2*(n+2))+n+1` -/
def P10113883986479818801.Spec : Prop :=
  ∀ n, P10113883986479818801.a n = A036789 n

end A036789

/-! ## A036789.P3938275705002066425

`A002541(2*(n+2))-(n+2)`
-/

namespace A036789.P3938275705002066425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002541 (2 * (n + 2)) - (n + 2 : ℤ)

end

end A036789.P3938275705002066425

namespace A036789

/-- `A002541(2*(n+2))-(n+2)` -/
def P3938275705002066425.Spec : Prop :=
  ∀ n, P3938275705002066425.a n = A036789 n

end A036789

/-! ## A036789.P14746579010530727295

`∑[A274010(A103517(n+1))-1]`
-/

namespace A036789.P14746579010530727295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274010 (A103517 (n + 1)).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A036789.P14746579010530727295

namespace A036789

/-- `∑[A274010(A103517(n+1))-1]` -/
def P14746579010530727295.Spec : Prop :=
  ∀ n, P14746579010530727295.a n = A036789 n

end A036789

/-! ## A036789.P11495805469392290458

`A049993(2*(n+2))-A014406(2*(n+2))`
-/

namespace A036789.P11495805469392290458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049993 (2 * (n + 2)) - A014406 (2 * (n + 2))

end

end A036789.P11495805469392290458

namespace A036789

/-- `A049993(2*(n+2))-A014406(2*(n+2))` -/
def P11495805469392290458.Spec : Prop :=
  ∀ n, P11495805469392290458.a n = A036789 n

end A036789

/-!
# A036791: Continued fraction for (2/Pi)*Integral_{x=0..Pi} sin(x)/x.

The programs for A036791, there is no canonical definition to state claims against.
-/

/-! ## A036791.P13730627121186270124

`gcd(A025660(A330763(n+1)), A313924(n))`
-/

namespace A036791.P13730627121186270124
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A025660 (A330763 (n + 1)).toNat) (A313924 n)

end

end A036791.P13730627121186270124

/-! ## A036791.P15115328243503951047

`gcd(A110049(A313360(n)), A313364(n))`
-/

namespace A036791.P15115328243503951047
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A110049 (A313360 n).toNat) (A313364 n)

end

end A036791.P15115328243503951047

/-! ## A036791.P11127692256570039343

`gcd(A000037(n+2), A000037(A063670(n+2)))`
-/

namespace A036791.P11127692256570039343
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000037 (n + 2)) (A000037 (A063670 (n + 2)).toNat)

end

end A036791.P11127692256570039343

/-! ## A036791.P16442634937345976180

`A080577(A270890(n+4)*A300273(3*n+5))`
-/

namespace A036791.P16442634937345976180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080577 (A270890 (n + 4) * A300273 (3 * n + 5)).toNat

end

end A036791.P16442634937345976180

/-!
# A036794: Number of sequences of length n with a_{i-1} < a_i <= a_1 + ... + a_{i-1} + 1.

The programs for A036794, there is no canonical definition to state claims against.
-/

/-! ## A036794.P4003741446734164243

`A289234(A060132(n!))`
-/

namespace A036794.P4003741446734164243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289234 (A060132 (Nat.factorial n)).toNat

end

end A036794.P4003741446734164243

/-! ## A036794.P15043993258226445298

`A003970(A005117(n^n))`
-/

namespace A036794.P15043993258226445298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003970 (A005117 (n ^ n)).toNat

end

end A036794.P15043993258226445298

/-!
# A036795: Integers that can be decomposed into sums of different Fibonacci numbers of even argument.

The programs for A036795, the canonical program `A036795.P10115071211355073936` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A036795 has offset 0).

The definition of A036795 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4097 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A036795.P10115071211355073936

`A062879(n+1)+1-A062877(n)`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A036795

/-- `A062879(n+1)+1-A062877(n)` -/
def P10115071211355073936.Spec : Prop :=
  ∀ n, P10115071211355073936.a n = A036795 n

theorem P10115071211355073936.correct : P10115071211355073936.Spec := by
  intro n
  simp only [A036795]

end A036795

/-! ## A036795.P6694879078302167669

`A062879(n+1)+2-A036796(n)`
-/

namespace A036795.P6694879078302167669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062879 (n + 1) + (2 - A036796 n)

end

end A036795.P6694879078302167669

namespace A036795

/-- `A062879(n+1)+2-A036796(n)` -/
def P6694879078302167669.Spec : Prop :=
  ∀ n, P6694879078302167669.a n = A036795 n

end A036795

/-! ## A036795.P2998516789962577487

`A054204(2*n+1)-A062879(n+1)`
-/

namespace A036795.P2998516789962577487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054204 (2 * n + 1) - A062879 (n + 1)

end

end A036795.P2998516789962577487

namespace A036795

/-- `A054204(2*n+1)-A062879(n+1)` -/
def P2998516789962577487.Spec : Prop :=
  ∀ n, P2998516789962577487.a n = A036795 n

end A036795

/-! ## A036795.P7592322090159486521

`A036796(2*n)-A062877(n)`
-/

namespace A036795.P7592322090159486521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036796 (2 * n) - A062877 n

end

end A036795.P7592322090159486521

namespace A036795

/-- `A036796(2*n)-A062877(n)` -/
def P7592322090159486521.Spec : Prop :=
  ∀ n, P7592322090159486521.a n = A036795 n

end A036795

/-! ## A036795.P5261988485699057502

`A054204(2*n+1)-A062877(2*n)`
-/

namespace A036795.P5261988485699057502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054204 (2 * n + 1) - A062877 (2 * n)

end

end A036795.P5261988485699057502

namespace A036795

/-- `A054204(2*n+1)-A062877(2*n)` -/
def P5261988485699057502.Spec : Prop :=
  ∀ n, P5261988485699057502.a n = A036795 n

end A036795

/-! ## A036795.P5457446541714183029

`A036796(Δ[n²])-A036796(n)`
-/

namespace A036795.P5457446541714183029
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036796 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - A036796 n

end

end A036795.P5457446541714183029

namespace A036795

/-- `A036796(Δ[n²])-A036796(n)` -/
def P5457446541714183029.Spec : Prop :=
  ∀ n, P5457446541714183029.a n = A036795 n

end A036795

/-! ## A036795.P18227567988338453203

`A062877(Δ[n²])-A062877(n)`
-/

namespace A036795.P18227567988338453203
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062877 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - A062877 n

end

end A036795.P18227567988338453203

namespace A036795

/-- `A062877(Δ[n²])-A062877(n)` -/
def P18227567988338453203.Spec : Prop :=
  ∀ n, P18227567988338453203.a n = A036795 n

end A036795

/-! ## A036795.P16215761206230686071

`A001950(a(floor(n/2)))-A059841(n)` with `a(0)=1`
-/

namespace A036795.P16215761206230686071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A001950 (a ⌊(n : ℚ) / 2⌋.toNat).toNat - A059841 n

end

end A036795.P16215761206230686071

namespace A036795

/-- `A001950(a(floor(n/2)))-A059841(n)` -/
def P16215761206230686071.Spec : Prop :=
  ∀ n, P16215761206230686071.a n = A036795 n

end A036795

/-! ## A036795.P4204753530466772898

`A026351(A062877(n))`
-/

namespace A036795.P4204753530466772898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026351 (A062877 n).toNat

end

end A036795.P4204753530466772898

namespace A036795

/-- `A026351(A062877(n))` -/
def P4204753530466772898.Spec : Prop :=
  ∀ n, P4204753530466772898.a n = A036795 n

end A036795

/-! ## A036795.P14832930610092286504

`A189625(A036796(n))`
-/

namespace A036795.P14832930610092286504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189625 (A036796 n).toNat

end

end A036795.P14832930610092286504

namespace A036795

/-- `A189625(A036796(n))` -/
def P14832930610092286504.Spec : Prop :=
  ∀ n, P14832930610092286504.a n = A036795 n

end A036795

/-! ## A036795.P13059066198690388341

`A026351(A036796(n)-1)`
-/

namespace A036795.P13059066198690388341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026351 (A036796 n - 1).toNat

end

end A036795.P13059066198690388341

namespace A036795

/-- `A026351(A036796(n)-1)` -/
def P13059066198690388341.Spec : Prop :=
  ∀ n, P13059066198690388341.a n = A036795 n

end A036795

/-! ## A036795.P5110258336909320251

`A005206(A062879(n+1)+1)`
-/

namespace A036795.P5110258336909320251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005206 (A062879 (n + 1) + 1).toNat

end

end A036795.P5110258336909320251

namespace A036795

/-- `A005206(A062879(n+1)+1)` -/
def P5110258336909320251.Spec : Prop :=
  ∀ n, P5110258336909320251.a n = A036795 n

end A036795

/-! ## A036795.P17798921023559988463

`A036796(2*n)-A023443(A036796(n))`
-/

namespace A036795.P17798921023559988463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036796 (2 * n) - A023443 (A036796 n).toNat

end

end A036795.P17798921023559988463

namespace A036795

/-- `A036796(2*n)-A023443(A036796(n))` -/
def P17798921023559988463.Spec : Prop :=
  ∀ n, P17798921023559988463.a n = A036795 n

end A036795

/-! ## A036795.P5343227145543832104

`record[1-A309076(n)]`
-/

namespace A036795.P5343227145543832104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A309076 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A036795.P5343227145543832104

namespace A036795

/-- `record[1-A309076(n)]` -/
def P5343227145543832104.Spec : Prop :=
  ∀ n, P5343227145543832104.a n = A036795 n

end A036795

/-! ## A036795.P4600771473424545377

`record[∑[A356399(n+1)]-n]`
-/

namespace A036795.P4600771473424545377
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356399 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A036795.P4600771473424545377

namespace A036795

/-- `record[∑[A356399(n+1)]-n]` -/
def P4600771473424545377.Spec : Prop :=
  ∀ n, P4600771473424545377.a n = A036795 n

end A036795

/-! ## A036795.P17679490942418591899

`A194964(A171070(n+1))`
-/

namespace A036795.P17679490942418591899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194964 (A171070 (n + 1)).toNat

end

end A036795.P17679490942418591899

namespace A036795

/-- `A194964(A171070(n+1))` -/
def P17679490942418591899.Spec : Prop :=
  ∀ n, P17679490942418591899.a n = A036795 n

end A036795

/-! ## A036795.P10005777471255747572

`A019444(A062877(Δ[n²]))`
-/

namespace A036795.P10005777471255747572
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019444 (A062877 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat

end

end A036795.P10005777471255747572

namespace A036795

/-- `A019444(A062877(Δ[n²]))` -/
def P10005777471255747572.Spec : Prop :=
  ∀ n, P10005777471255747572.a n = A036795 n

end A036795

/-! ## A036795.P15007409211385615625

`1-A309076(A062877(2*n))`
-/

namespace A036795.P15007409211385615625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A309076 (A062877 (2 * n)).toNat

end

end A036795.P15007409211385615625

namespace A036795

/-- `1-A309076(A062877(2*n))` -/
def P15007409211385615625.Spec : Prop :=
  ∀ n, P15007409211385615625.a n = A036795 n

end A036795

/-! ## A036795.P17376246445870849177

`A000201(A062877(2*n+1))-A062877(2*n)`
-/

namespace A036795.P17376246445870849177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000201 (A062877 (2 * n + 1)).toNat - A062877 (2 * n)

end

end A036795.P17376246445870849177

namespace A036795

/-- `A000201(A062877(2*n+1))-A062877(2*n)` -/
def P17376246445870849177.Spec : Prop :=
  ∀ n, P17376246445870849177.a n = A036795 n

end A036795

/-! ## A036795.P13904483200141155195

`A381607(A003278(n+1))`
-/

namespace A036795.P13904483200141155195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381607 (A003278 (n + 1)).toNat

end

end A036795.P13904483200141155195

namespace A036795

/-- `A381607(A003278(n+1))` -/
def P13904483200141155195.Spec : Prop :=
  ∀ n, P13904483200141155195.a n = A036795 n

end A036795

/-!
# A036796: Integers that can be decomposed into sums of different Fibonacci numbers of odd argument.

The programs for A036796, the canonical program `A036796.P3277589454516055024` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A036796 has offset 0).

The definition of A036796 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4097 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A036796.P3277589454516055024

`a(and(n, 1-n)/2)+a(n-2)` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A036796

/-- `a(and(n, 1-n)/2)+a(n-2)` -/
def P3277589454516055024.Spec : Prop :=
  ∀ n, (P3277589454516055024.a n : ℤ) = A036796 n

theorem P3277589454516055024.correct : P3277589454516055024.Spec := by
  intro n
  simp only [A036796]

end A036796

/-! ## A036796.P6489367482070407946

`A062877(n)+1`
-/

namespace A036796.P6489367482070407946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062877 n + 1

end

end A036796.P6489367482070407946

namespace A036796

/-- `A062877(n)+1` -/
def P6489367482070407946.Spec : Prop :=
  ∀ n, P6489367482070407946.a n = A036796 n

end A036796

/-! ## A036796.P12571693211838758814

`∑[A001519(∑{e}[or(n, -n), #])]`
-/

namespace A036796.P12571693211838758814
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (-(n : ℤ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001519 (∑ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.factorization (f2 n).natAbs p)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A036796.P12571693211838758814

namespace A036796

/-- `∑[A001519(∑{e}[or(n, -n), #])]` -/
def P12571693211838758814.Spec : Prop :=
  ∀ n, P12571693211838758814.a n = A036796 n

end A036796

/-! ## A036796.P4663333273826286350

`A062879(and(n, -2)/2+1)-or(1, n)+n+2`
-/

namespace A036796.P4663333273826286350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062879 (SequenceMachineLib.roundAway ((Int.land (n : ℤ) (-2) : ℚ) / 2 + 1)).toNat - (Nat.lor 1 n : ℤ) + (n : ℤ) + 2

end

end A036796.P4663333273826286350

namespace A036796

/-- `A062879(and(n, -2)/2+1)-or(1, n)+n+2` -/
def P4663333273826286350.Spec : Prop :=
  ∀ n, P4663333273826286350.a n = A036796 n

end A036796

/-! ## A036796.P18268764690114812914

`∑[A001519(val(A008486(n), 2))]`
-/

namespace A036796.P18268764690114812914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001519 (SequenceMachineLib.valuation (A008486 n).toNat 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A036796.P18268764690114812914

namespace A036796

/-- `∑[A001519(val(A008486(n), 2))]` -/
def P18268764690114812914.Spec : Prop :=
  ∀ n, P18268764690114812914.a n = A036796 n

end A036796

/-! ## A036796.P1917388597925367418

`A171070(n+1)-A062879(n+1)`
-/

namespace A036796.P1917388597925367418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171070 (n + 1) - A062879 (n + 1)

end

end A036796.P1917388597925367418

namespace A036796

/-- `A171070(n+1)-A062879(n+1)` -/
def P1917388597925367418.Spec : Prop :=
  ∀ n, P1917388597925367418.a n = A036796 n

end A036796

/-! ## A036796.P5997266002069314234

`A062879(n+1)+2-A036795(n)`
-/

namespace A036796.P5997266002069314234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062879 (n + 1) + (2 - A036795 n)

end

end A036796.P5997266002069314234

namespace A036796

/-- `A062879(n+1)+2-A036795(n)` -/
def P5997266002069314234.Spec : Prop :=
  ∀ n, P5997266002069314234.a n = A036796 n

end A036796

/-! ## A036796.P14604009456200182143

`A005408(n)-(2*n-A062877(n))`
-/

namespace A036796.P14604009456200182143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n - ((2 * n : ℤ) - A062877 n)

end

end A036796.P14604009456200182143

namespace A036796

/-- `A005408(n)-(2*n-A062877(n))` -/
def P14604009456200182143.Spec : Prop :=
  ∀ n, P14604009456200182143.a n = A036796 n

end A036796

/-! ## A036796.P4187336569932998217

`eq[0, A356326(n)]+1`
-/

namespace A036796.P4187336569932998217
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356326 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A036796.P4187336569932998217

namespace A036796

/-- `eq[0, A356326(n)]+1` -/
def P4187336569932998217.Spec : Prop :=
  ∀ n, (P4187336569932998217.a n : ℤ) = A036796 n

end A036796

/-! ## A036796.P17707430524185131958

`record[A309076(n)+1]`
-/

namespace A036796.P17707430524185131958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309076 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A036796.P17707430524185131958

namespace A036796

/-- `record[A309076(n)+1]` -/
def P17707430524185131958.Spec : Prop :=
  ∀ n, P17707430524185131958.a n = A036796 n

end A036796

/-! ## A036796.P6322720408267612293

`A019446(A036795(n))`
-/

namespace A036796.P6322720408267612293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019446 (A036795 n).toNat

end

end A036796.P6322720408267612293

namespace A036796

/-- `A019446(A036795(n))` -/
def P6322720408267612293.Spec : Prop :=
  ∀ n, P6322720408267612293.a n = A036796 n

end A036796

/-! ## A036796.P8491533356958057262

`A008619(2*A062877(n))`
-/

namespace A036796.P8491533356958057262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * A062877 n).toNat

end

end A036796.P8491533356958057262

namespace A036796

/-- `A008619(2*A062877(n))` -/
def P8491533356958057262.Spec : Prop :=
  ∀ n, P8491533356958057262.a n = A036796 n

end A036796

/-! ## A036796.P3538881429055069329

`A052938(2*A062877(n))`
-/

namespace A036796.P3538881429055069329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052938 (2 * A062877 n).toNat

end

end A036796.P3538881429055069329

namespace A036796

/-- `A052938(2*A062877(n))` -/
def P3538881429055069329.Spec : Prop :=
  ∀ n, P3538881429055069329.a n = A036796 n

end A036796

/-! ## A036796.P15713693102764458885

`A000463(or(1, 2*A062877(n)))`
-/

namespace A036796.P15713693102764458885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (Int.lor 1 (2 * A062877 n)).toNat

end

end A036796.P15713693102764458885

namespace A036796

/-- `A000463(or(1, 2*A062877(n)))` -/
def P15713693102764458885.Spec : Prop :=
  ∀ n, P15713693102764458885.a n = A036796 n

end A036796

/-! ## A036796.P5893683272277354165

`A008611(3*A062877(n))`
-/

namespace A036796.P5893683272277354165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (3 * A062877 n).toNat

end

end A036796.P5893683272277354165

namespace A036796

/-- `A008611(3*A062877(n))` -/
def P5893683272277354165.Spec : Prop :=
  ∀ n, P5893683272277354165.a n = A036796 n

end A036796

/-! ## A036796.P17311199021431660189

`A008620(3*A062877(n))`
-/

namespace A036796.P17311199021431660189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (3 * A062877 n).toNat

end

end A036796.P17311199021431660189

namespace A036796

/-- `A008620(3*A062877(n))` -/
def P17311199021431660189.Spec : Prop :=
  ∀ n, P17311199021431660189.a n = A036796 n

end A036796

/-! ## A036796.P12270605307144230706

`A060065(A171070(n+1))+1`
-/

namespace A036796.P12270605307144230706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060065 (A171070 (n + 1)).toNat + 1

end

end A036796.P12270605307144230706

namespace A036796

/-- `A060065(A171070(n+1))+1` -/
def P12270605307144230706.Spec : Prop :=
  ∀ n, P12270605307144230706.a n = A036796 n

end A036796

/-! ## A036796.P8632934742174578167

`A334415(A062879(n+1))+1`
-/

namespace A036796.P8632934742174578167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334415 (A062879 (n + 1)).toNat + 1

end

end A036796.P8632934742174578167

namespace A036796

/-- `A334415(A062879(n+1))+1` -/
def P8632934742174578167.Spec : Prop :=
  ∀ n, P8632934742174578167.a n = A036796 n

end A036796

/-! ## A036796.P15409669687304826157

`A189663(A062879(n+1)+2)`
-/

namespace A036796.P15409669687304826157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189663 (A062879 (n + 1) + 2).toNat

end

end A036796.P15409669687304826157

namespace A036796

/-- `A189663(A062879(n+1)+2)` -/
def P15409669687304826157.Spec : Prop :=
  ∀ n, P15409669687304826157.a n = A036796 n

end A036796

/-! ## A036796.P4870676947915536494

`A008621(4*A062877(n))`
-/

namespace A036796.P4870676947915536494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (4 * A062877 n).toNat

end

end A036796.P4870676947915536494

namespace A036796

/-- `A008621(4*A062877(n))` -/
def P4870676947915536494.Spec : Prop :=
  ∀ n, P4870676947915536494.a n = A036796 n

end A036796

/-!
# A036797: Iccanobif (or iccanobiF) primes: primes which are Fibonacci numbers when reversed.

The programs for A036797, there is no canonical definition to state claims against.
-/

/-! ## A036797.P5630981718525789687

`p?[A004170(n)]`
-/

namespace A036797.P5630981718525789687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004170 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A036797.P5630981718525789687

/-! ## A036797.P8970035815848386691

`record[p?[A004091(A325402(n))]]`
-/

namespace A036797.P8970035815848386691
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004091 (A325402 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A036797.P8970035815848386691

/-! ## A036797.P12795291487806818101

`A000040(A036972(n+1))`
-/

namespace A036797.P12795291487806818101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A036972 (n + 1)).toNat

end

end A036797.P12795291487806818101

/-! ## A036797.P7650529620668785251

`filter[A004170(n), A358220(#)]`
-/

namespace A036797.P7650529620668785251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004170 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358220 (f1 j).toNat = 1) n)

end

end A036797.P7650529620668785251

/-! ## A036797.P7463123878378702607

`record[A020639(A004170(n+3))]`
-/

namespace A036797.P7463123878378702607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A004170 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A036797.P7463123878378702607

/-!
# A036799: a(n) = 2 + 2^(n+1)*(n-1).

The programs for A036799, the canonical program `A036799.P11890976520549442909` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A036799 has offset 0).

The definition of A036799 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2+2^(n+1)*(n-1)` (program `A036799.P11890976520549442909`, by `A036799.P11890976520549442909.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A036799.P11890976520549442909

`2+2^(n+1)*(n-1)`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A036799

/-- `2+2^(n+1)*(n-1)` -/
def P11890976520549442909.Spec : Prop :=
  ∀ n, P11890976520549442909.a n = A036799 n

theorem P11890976520549442909.correct : P11890976520549442909.Spec := by
  intro n
  simp only [A036799]

end A036799

/-! ## A036799.P16005141772054829641

`2*A000337(n)`
-/

namespace A036799.P16005141772054829641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000337 n

end

end A036799.P16005141772054829641

namespace A036799

/-- `2*A000337(n)` -/
def P16005141772054829641.Spec : Prop :=
  ∀ n, P16005141772054829641.a n = A036799 n

end A036799

/-! ## A036799.P16383921353409924859

`∑[ogf(2x/(1-4x+4x^2))]`
-/

namespace A036799.P16383921353409924859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 2] [1, -4, 4] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A036799.P16383921353409924859

namespace A036799

/-- `∑[ogf(2x/(1-4x+4x^2))]` -/
def P16383921353409924859.Spec : Prop :=
  ∀ n, P16383921353409924859.a n = A036799 n

end A036799

/-! ## A036799.P13152326055931022402

`ogf(2x/(1-5x+8x^2-4x^3))`
-/

namespace A036799.P13152326055931022402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 2] [1, -5, 8, -4] n

end

end A036799.P13152326055931022402

namespace A036799

/-- `ogf(2x/(1-5x+8x^2-4x^3))` -/
def P13152326055931022402.Spec : Prop :=
  ∀ n, P13152326055931022402.a n = A036799 n

end A036799

/-! ## A036799.P7645769612453132319

`∑[n*∑[2*a(n-1)]]` with `a(0)=1, a(1)=1`
-/

namespace A036799.P7645769612453132319
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n f2 =>
  2 * f2 (n - 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A036799.P7645769612453132319

namespace A036799

/-- `∑[n*∑[2*a(n-1)]]` -/
def P7645769612453132319.Spec : Prop :=
  ∀ n, (P7645769612453132319.a n : ℤ) = A036799 n

end A036799

/-! ## A036799.P15383469020862485944

`2*(2^n-(1-a(n-1)))` with `a(0)=0`
-/

namespace A036799.P15383469020862485944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  2 * ((2 ^ n : ℤ) - (1 - a (n - 1)))

end

end A036799.P15383469020862485944

namespace A036799

/-- `2*(2^n-(1-a(n-1)))` -/
def P15383469020862485944.Spec : Prop :=
  ∀ n, P15383469020862485944.a n = A036799 n

theorem P15383469020862485944.correct : P15383469020862485944.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A036799, Nat.add_sub_cancel, A036799.P15383469020862485944.a, A036799.P11890976520549442909.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A036799, Nat.add_sub_cancel, A036799.P15383469020862485944.a, A036799.P11890976520549442909.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A036799

/-! ## A036799.P1673051533778668333

`∑[a(n-1)+a(n-1)+2^n]` with `a(0)=0`
-/

namespace A036799.P1673051533778668333
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 (n - 1) + (f1 (n - 1) + 2 ^ n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A036799.P1673051533778668333

namespace A036799

/-- `∑[a(n-1)+a(n-1)+2^n]` -/
def P1673051533778668333.Spec : Prop :=
  ∀ n, (P1673051533778668333.a n : ℤ) = A036799 n

end A036799

/-! ## A036799.P16291076585175152185

`∑[A036289(n)]`
-/

namespace A036799.P16291076585175152185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036289 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A036799.P16291076585175152185

namespace A036799

/-- `∑[A036289(n)]` -/
def P16291076585175152185.Spec : Prop :=
  ∀ n, P16291076585175152185.a n = A036799 n

end A036799

/-! ## A036799.P15317335909814332531

`∑[A097064(n+1)]`
-/

namespace A036799.P15317335909814332531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097064 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A036799.P15317335909814332531

namespace A036799

/-- `∑[A097064(n+1)]` -/
def P15317335909814332531.Spec : Prop :=
  ∀ n, P15317335909814332531.a n = A036799 n

end A036799

/-! ## A036799.P13352870055170475840

`∑[2*A001787(n)]`
-/

namespace A036799.P13352870055170475840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001787 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A036799.P13352870055170475840

namespace A036799

/-- `∑[2*A001787(n)]` -/
def P13352870055170475840.Spec : Prop :=
  ∀ n, P13352870055170475840.a n = A036799 n

end A036799

/-! ## A036799.P11415183640834839417

`∑[A093968(2*n)]`
-/

namespace A036799.P11415183640834839417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093968 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A036799.P11415183640834839417

namespace A036799

/-- `∑[A093968(2*n)]` -/
def P11415183640834839417.Spec : Prop :=
  ∀ n, P11415183640834839417.a n = A036799 n

end A036799

/-! ## A036799.P3560455956546557600

`2*(A048495(n)-1)`
-/

namespace A036799.P3560455956546557600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A048495 n - 1)

end

end A036799.P3560455956546557600

namespace A036799

/-- `2*(A048495(n)-1)` -/
def P3560455956546557600.Spec : Prop :=
  ∀ n, P3560455956546557600.a n = A036799 n

end A036799

/-! ## A036799.P12996890010519973032

`2*∑[A097067(n+1)]`
-/

namespace A036799.P12996890010519973032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097067 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A036799.P12996890010519973032

namespace A036799

/-- `2*∑[A097067(n+1)]` -/
def P12996890010519973032.Spec : Prop :=
  ∀ n, P12996890010519973032.a n = A036799 n

end A036799

/-! ## A036799.P5007994847608589870

`2*∑[A139756(n+1)]`
-/

namespace A036799.P5007994847608589870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139756 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A036799.P5007994847608589870

namespace A036799

/-- `2*∑[A139756(n+1)]` -/
def P5007994847608589870.Spec : Prop :=
  ∀ n, P5007994847608589870.a n = A036799 n

end A036799

/-! ## A036799.P14300165244198719454

`2*(1-A159964(n))`
-/

namespace A036799.P14300165244198719454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (1 - A159964 n)

end

end A036799.P14300165244198719454

namespace A036799

/-- `2*(1-A159964(n))` -/
def P14300165244198719454.Spec : Prop :=
  ∀ n, P14300165244198719454.a n = A036799 n

end A036799

/-! ## A036799.P17652727445476431314

`A291526(n+2)/2`
-/

namespace A036799.P17652727445476431314
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A291526 (n + 2) : ℚ) / 2

end

end A036799.P17652727445476431314

namespace A036799

/-- `A291526(n+2)/2` -/
def P17652727445476431314.Spec : Prop :=
  ∀ n, P17652727445476431314.a n = (A036799 n : ℚ)

end A036799

/-! ## A036799.P6408648494354732188

`∑[A058922(n+1)]/2`
-/

namespace A036799.P6408648494354732188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058922 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A036799.P6408648494354732188

namespace A036799

/-- `∑[A058922(n+1)]/2` -/
def P6408648494354732188.Spec : Prop :=
  ∀ n, P6408648494354732188.a n = (A036799 n : ℚ)

end A036799

/-! ## A036799.P10822023494423158333

`(A045618(n)-(n+1))/2`
-/

namespace A036799.P10822023494423158333
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045618 n - (n + 1 : ℤ) : ℚ) / 2

end

end A036799.P10822023494423158333

namespace A036799

/-- `(A045618(n)-(n+1))/2` -/
def P10822023494423158333.Spec : Prop :=
  ∀ n, P10822023494423158333.a n = (A036799 n : ℚ)

end A036799

/-! ## A036799.P9348454222705680159

`A045618(n)%A181527(n)`
-/

namespace A036799.P9348454222705680159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A045618 n) (A181527 n)

end

end A036799.P9348454222705680159

namespace A036799

/-- `A045618(n)%A181527(n)` -/
def P9348454222705680159.Spec : Prop :=
  ∀ n, P9348454222705680159.a n = A036799 n

end A036799

