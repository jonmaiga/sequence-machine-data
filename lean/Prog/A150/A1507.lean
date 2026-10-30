import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C015
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C031
import Seq.B000.C035
import Seq.B000.C037
import Seq.B000.C039
import Seq.B000.C047
import Seq.B000.C049
import Seq.B001.C000
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C013
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C003
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C002
import Seq.B004.C000
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B008.C000
import Seq.B010.C000
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
# A150700: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 1), (-1, 1, -1), (1, 0, 1), (1, 1, 0)}.

The programs for A150700, there is no canonical definition to state claims against.
-/

/-! ## A150700.P16750854650909317799

`A150692(n)+A001281(A150707(n)-A150692(n))`
-/

namespace A150700.P16750854650909317799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150692 n + A001281 (A150707 n - A150692 n).toNat

end

end A150700.P16750854650909317799

/-! ## A150700.P7534086709928147907

`A150692(n)+A004525(A150707(n)-A150692(n))`
-/

namespace A150700.P7534086709928147907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150692 n + A004525 (A150707 n - A150692 n).toNat

end

end A150700.P7534086709928147907

/-! ## A150700.P1530568677978754467

`A150692(n)+A004526(A150707(n)-A150692(n))`
-/

namespace A150700.P1530568677978754467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150692 n + A004526 (A150707 n - A150692 n).toNat

end

end A150700.P1530568677978754467

/-!
# A150701: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, -1), (-1, 1, 1), (1, 0, 1), (1, 1, 0)}.

The programs for A150701, there is no canonical definition to state claims against.
-/

/-! ## A150701.P17938050194063863579

`A004525(A150707(n)+A150694(n))`
-/

namespace A150701.P17938050194063863579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A150707 n + A150694 n).toNat

end

end A150701.P17938050194063863579

/-! ## A150701.P15689667221964458334

`A004526(A150707(n)+A150694(n))`
-/

namespace A150701.P15689667221964458334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A150707 n + A150694 n).toNat

end

end A150701.P15689667221964458334

/-! ## A150701.P3182893952255727016

`A025480(A150707(n)+A150694(n))`
-/

namespace A150701.P3182893952255727016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A150707 n + A150694 n).toNat

end

end A150701.P3182893952255727016

/-!
# A150702: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 1), (-1, 1, -1), (1, 0, 0), (1, 1, 1)}.

The programs for A150702, there is no canonical definition to state claims against.
-/

/-! ## A150702.P8049357900662480835

`A004277(A150693(n))-A150685(n)`
-/

namespace A150702.P8049357900662480835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A150693 n).toNat - A150685 n

end

end A150702.P8049357900662480835

/-! ## A150702.P4269200496846669674

`A004526(A150695(n))+A004525(A150708(n))`
-/

namespace A150702.P4269200496846669674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A150695 n).toNat + A004525 (A150708 n).toNat

end

end A150702.P4269200496846669674

/-! ## A150702.P4725653430082083153

`A004525(A150708(n)+A150695(n))`
-/

namespace A150702.P4725653430082083153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A150708 n + A150695 n).toNat

end

end A150702.P4725653430082083153

/-!
# A150703: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, 0, 1), (-1, 1, 0), (1, 0, 1), (1, 1, 0)}.

The programs for A150703, there is no canonical definition to state claims against.
-/

/-! ## A150703.P5836646140577287673

`A004151(A150704(n))`
-/

namespace A150703.P5836646140577287673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004151 (A150704 n).toNat

end

end A150703.P5836646140577287673

/-! ## A150703.P8431409929692202377

`A150704(A073789(n))`
-/

namespace A150703.P8431409929692202377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150704 (A073789 n).toNat

end

end A150703.P8431409929692202377

/-! ## A150703.P580474594950959416

`A150704(A171644(n))`
-/

namespace A150703.P580474594950959416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150704 (A171644 n).toNat

end

end A150703.P580474594950959416

/-! ## A150703.P17607963133710859779

`A150704(A004869(n+1))`
-/

namespace A150703.P17607963133710859779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150704 (A004869 (n + 1)).toNat

end

end A150703.P17607963133710859779

/-!
# A150705: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, -1), (-1, 1, 1), (1, 0, 0), (1, 1, 1)}.

The programs for A150705, there is no canonical definition to state claims against.
-/

/-! ## A150705.P8032813275892195654

`A004277(A150698(n))-A150692(n)`
-/

namespace A150705.P8032813275892195654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A150698 n).toNat - A150692 n

end

end A150705.P8032813275892195654

/-! ## A150705.P3118529324475230934

`A004277(A150699(n))-A150695(n)`
-/

namespace A150705.P3118529324475230934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A150699 n).toNat - A150695 n

end

end A150705.P3118529324475230934

/-! ## A150705.P5053189193428767344

`A004277(A150706(n))-A150708(n)`
-/

namespace A150705.P5053189193428767344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A150706 n).toNat - A150708 n

end

end A150705.P5053189193428767344

/-!
# A150706: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, -1), (-1, 1, 1), (1, 0, 0), (1, 1, 1)}.

The programs for A150706, there is no canonical definition to state claims against.
-/

/-! ## A150706.P6804157826923760375

`A004277(A150699(n))-A150690(n)`
-/

namespace A150706.P6804157826923760375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A150699 n).toNat - A150690 n

end

end A150706.P6804157826923760375

/-! ## A150706.P13237734682157435822

`A004525(A150708(n)+A150705(n))`
-/

namespace A150706.P13237734682157435822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A150708 n + A150705 n).toNat

end

end A150706.P13237734682157435822

/-! ## A150706.P5015988020896301779

`A004526(A150708(n)+A150705(n))`
-/

namespace A150706.P5015988020896301779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A150708 n + A150705 n).toNat

end

end A150706.P5015988020896301779

/-!
# A150707: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 1, -1), (-1, 1, 1), (1, 0, 1), (1, 1, 0)}.

The programs for A150707, there is no canonical definition to state claims against.
-/

/-! ## A150707.P6351448479566109404

`A004277(A150691(n))-A150682(n)`
-/

namespace A150707.P6351448479566109404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A150691 n).toNat - A150682 n

end

end A150707.P6351448479566109404

/-! ## A150707.P9898172635362963651

`A004277(A150698(n))-A150689(n)`
-/

namespace A150707.P9898172635362963651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A150698 n).toNat - A150689 n

end

end A150707.P9898172635362963651

/-! ## A150707.P8859077079140523472

`A004277(A150700(n))-A150692(n)`
-/

namespace A150707.P8859077079140523472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A150700 n).toNat - A150692 n

end

end A150707.P8859077079140523472

/-! ## A150707.P15282214353286808173

`A004277(A150701(n))-A150694(n)`
-/

namespace A150707.P15282214353286808173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A150701 n).toNat - A150694 n

end

end A150707.P15282214353286808173

/-!
# A150708: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 1, -1), (-1, 1, 1), (1, 0, 0), (1, 1, 1)}.

The programs for A150708, there is no canonical definition to state claims against.
-/

/-! ## A150708.P15301662730020653599

`A004277(A150699(n))-A150689(n)`
-/

namespace A150708.P15301662730020653599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A150699 n).toNat - A150689 n

end

end A150708.P15301662730020653599

/-! ## A150708.P8820165386135266561

`A004277(A150702(n))-A150695(n)`
-/

namespace A150708.P8820165386135266561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A150702 n).toNat - A150695 n

end

end A150708.P8820165386135266561

/-! ## A150708.P11348126437081024150

`A004277(A150706(n))-A150705(n)`
-/

namespace A150708.P11348126437081024150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A150706 n).toNat - A150705 n

end

end A150708.P11348126437081024150

/-! ## A150708.P1321641279637118086

`2*(A004277(A150693(n))-A150685(n))-A150695(n)`
-/

namespace A150708.P1321641279637118086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A004277 (A150693 n).toNat - A150685 n) - A150695 n

end

end A150708.P1321641279637118086

/-!
# A150709: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, 0, 1), (-1, 1, 1), (1, 0, 1), (1, 1, 0)}.

The programs for A150709, there is no canonical definition to state claims against.
-/

/-! ## A150709.P12354978484645352796

`A184156(A114500(n))+A150707(n)`
-/

namespace A150709.P12354978484645352796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184156 (A114500 n).toNat + A150707 n

end

end A150709.P12354978484645352796

/-!
# A150710: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (0, 0, 1), (0, 1, -1), (1, 0, 1), (1, 1, -1)}.

The programs for A150710, there is no canonical definition to state claims against.
-/

/-! ## A150710.P7846379652703380124

`A339658(A026787(n))-n`
-/

namespace A150710.P7846379652703380124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339658 (A026787 n).toNat - (n : ℤ)

end

end A150710.P7846379652703380124

/-! ## A150710.P2085524946485312546

`A344297(A263002(n))-n`
-/

namespace A150710.P2085524946485312546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344297 (A263002 n).toNat - (n : ℤ)

end

end A150710.P2085524946485312546

/-!
# A150711: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (0, 0, 1), (0, 1, -1), (1, 0, 1), (1, 1, -1)}.

The programs for A150711, there is no canonical definition to state claims against.
-/

/-! ## A150711.P12117442289662125102

`A233529(A002055(n+5))^ceil(sin(n)²)`
-/

namespace A150711.P12117442289662125102
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A233529 (A002055 (n + 5)).toNat : ℚ) ^ (⌈Real.sin (n : ℝ) ^ 2⌉ : ℤ)

end

end A150711.P12117442289662125102

/-! ## A150711.P2969578713270571579

`A149771(n)+Δ[A069004(A000670(n))]`
-/

namespace A150711.P2969578713270571579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069004 (A000670 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149771 n + (f1 (n + 1) - f1 n)

end

end A150711.P2969578713270571579

/-!
# A150713: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (0, 0, -1), (0, 1, -1), (0, 1, 1), (1, 0, 1)}.

The programs for A150713, there is no canonical definition to state claims against.
-/

/-! ## A150713.P18134775036568956707

`A160736(A034691(n))-A178691(n)`
-/

namespace A150713.P18134775036568956707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160736 (A034691 n).toNat - A178691 n

end

end A150713.P18134775036568956707

/-! ## A150713.P14547444651458066460

`A243169(A000110(n))+A000110(n+1)`
-/

namespace A150713.P14547444651458066460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243169 (A000110 n).toNat + A000110 (n + 1)

end

end A150713.P14547444651458066460

/-!
# A150714: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 0), (0, -1, 0), (1, 1, 0), (1, 1, 1)}.

The programs for A150714, there is no canonical definition to state claims against.
-/

/-! ## A150714.P12252587634546604279

`∑{#}[n, (-1)^(n-#)*C(n, #)*A151229(#)]`
-/

namespace A150714.P12252587634546604279
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (-1 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ) * (Nat.choose n k : ℚ) * (A151229 k : ℚ)

end

end A150714.P12252587634546604279

/-! ## A150714.P18016790656106236225

`A008621(or(A000096(n), A049349(n+1)))`
-/

namespace A150714.P18016790656106236225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (Int.lor (A000096 n) (A049349 (n + 1))).toNat

end

end A150714.P18016790656106236225

/-! ## A150714.P9208274538088464453

`A008621(or(A005449(n), A049349(n+1)))`
-/

namespace A150714.P9208274538088464453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (Int.lor (A005449 n) (A049349 (n + 1))).toNat

end

end A150714.P9208274538088464453

/-!
# A150715: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 0), (1, -1, 0), (1, 1, 0), (1, 1, 1)}.

The programs for A150715, there is no canonical definition to state claims against.
-/

/-! ## A150715.P14008029674613323981

`∑{#}[n, (-1)^(n-#)*C(n, #)*A151231(#)]`
-/

namespace A150715.P14008029674613323981
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (-1 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ) * (Nat.choose n k : ℚ) * (A151231 k : ℚ)

end

end A150715.P14008029674613323981

/-! ## A150715.P3831805029818974215

`A213219(A150116(n))`
-/

namespace A150715.P3831805029818974215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213219 (A150116 n).toNat

end

end A150715.P3831805029818974215

/-!
# A150716: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 1), (1, 0, -1), (1, 0, 1), (1, 1, 1)}.

The programs for A150716, there is no canonical definition to state claims against.
-/

/-! ## A150716.P6507193820775046446

`∑{#}[n, (-1)^(n-#)*C(n, #)*A151233(#)]`
-/

namespace A150716.P6507193820775046446
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (-1 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ) * (Nat.choose n k : ℚ) * (A151233 k : ℚ)

end

end A150716.P6507193820775046446

/-! ## A150716.P12720021284830025992

`A149463(n)+A002264(A151162(n))`
-/

namespace A150716.P12720021284830025992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149463 n + A002264 (A151162 n).toNat

end

end A150716.P12720021284830025992

/-! ## A150716.P13586105489739680033

`A008620(or(A244616(n), A332470(n+1)))`
-/

namespace A150716.P13586105489739680033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (Int.lor (A244616 n) (A332470 (n + 1))).toNat

end

end A150716.P13586105489739680033

/-!
# A150717: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, -1), (1, -1, 0), (1, 0, 1), (1, 1, 1)}.

The programs for A150717, there is no canonical definition to state claims against.
-/

/-! ## A150717.P7339742702192084350

`A000027(A150718(n))`
-/

namespace A150717.P7339742702192084350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A150718 n).toNat

end

end A150717.P7339742702192084350

/-! ## A150717.P17040521982859612423

`A150718(A002998(n))`
-/

namespace A150717.P17040521982859612423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150718 (A002998 n).toNat

end

end A150717.P17040521982859612423

/-! ## A150717.P9836221020031429059

`A150718(A039723(n))`
-/

namespace A150717.P9836221020031429059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150718 (A039723 n).toNat

end

end A150717.P9836221020031429059

/-! ## A150717.P3701608909448442295

`A150718(A046469(n))`
-/

namespace A150717.P3701608909448442295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150718 (A046469 n).toNat

end

end A150717.P3701608909448442295

/-! ## A150717.P9161470929291326653

`A150718(A051022(n))`
-/

namespace A150717.P9161470929291326653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150718 (A051022 n).toNat

end

end A150717.P9161470929291326653

/-!
# A150719: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 0), (0, 0, -1), (1, 0, 1), (1, 1, 0)}.

The programs for A150719, there is no canonical definition to state claims against.
-/

/-! ## A150719.P3345682204323660378

`A181807(A174192(n))`
-/

namespace A150719.P3345682204323660378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181807 (A174192 n).toNat

end

end A150719.P3345682204323660378

/-!
# A150720: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, -1), (0, 0, 1), (1, 0, -1), (1, 1, 1)}.

The programs for A150720, there is no canonical definition to state claims against.
-/

/-! ## A150720.P12256840429657667399

`A150721(n)-A010894(A049697(n))`
-/

namespace A150720.P12256840429657667399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150721 n - A010894 ((A049697 n).toNat + 21)

end

end A150720.P12256840429657667399

/-! ## A150720.P3330696893098871640

`A150721(n)-A025442(A268699(n))`
-/

namespace A150720.P3330696893098871640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150721 n - A025442 (A268699 n).toNat

end

end A150720.P3330696893098871640

/-! ## A150720.P636967016870514452

`A150721(n)-A010894(A314539(n+2))`
-/

namespace A150720.P636967016870514452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150721 n - A010894 ((A314539 (n + 2)).toNat + 21)

end

end A150720.P636967016870514452

/-!
# A150721: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, -1), (0, 0, 1), (1, 0, -1), (1, 1, 1)}.

The programs for A150721, there is no canonical definition to state claims against.
-/

/-! ## A150721.P18033843370985415138

`A150720(n)+A010894(A049697(n))`
-/

namespace A150721.P18033843370985415138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150720 n + A010894 ((A049697 n).toNat + 21)

end

end A150721.P18033843370985415138

/-! ## A150721.P13788832496181603728

`A150720(n)+A025442(A268699(n))`
-/

namespace A150721.P13788832496181603728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150720 n + A025442 (A268699 n).toNat

end

end A150721.P13788832496181603728

/-! ## A150721.P10090287709215726848

`A150720(n)+A010894(A314539(n+2))`
-/

namespace A150721.P10090287709215726848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150720 n + A010894 ((A314539 (n + 2)).toNat + 21)

end

end A150721.P10090287709215726848

/-!
# A150722: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 0), (1, 0, -1), (1, 0, 1), (1, 1, 0)}.

The programs for A150722, there is no canonical definition to state claims against.
-/

/-! ## A150722.P18089521563704158196

`A367758(A383136(n+1))`
-/

namespace A150722.P18089521563704158196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367758 (A383136 (n + 1)).toNat

end

end A150722.P18089521563704158196

/-! ## A150722.P8327585349467993866

`A160736(A001333(n))-A375560(n)`
-/

namespace A150722.P8327585349467993866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160736 (A001333 n).toNat - A375560 n

end

end A150722.P8327585349467993866

/-!
# A150723: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 0), (0, 0, 1), (0, 1, 1), (1, 0, -1), (1, 1, -1)}.

The programs for A150723, there is no canonical definition to state claims against.
-/

/-! ## A150723.P5112705219498587337

`A150724(n)-A244606(A000079(n))`
-/

namespace A150723.P5112705219498587337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150724 n - A244606 (A000079 n).toNat

end

end A150723.P5112705219498587337

/-! ## A150723.P8866617412407001418

`A150724(n)-A244606(A052805(n))`
-/

namespace A150723.P8866617412407001418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150724 n - A244606 (A052805 n).toNat

end

end A150723.P8866617412407001418

/-!
# A150724: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, 0), (0, 0, -1), (1, 0, 1), (1, 1, 0)}.

The programs for A150724, there is no canonical definition to state claims against.
-/

/-! ## A150724.P11268212119440050857

`A244606(A000079(n))+A150723(n)`
-/

namespace A150724.P11268212119440050857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244606 (A000079 n).toNat + A150723 n

end

end A150724.P11268212119440050857

/-! ## A150724.P11223730416280600266

`A244606(A052805(n))+A150723(n)`
-/

namespace A150724.P11223730416280600266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244606 (A052805 n).toNat + A150723 n

end

end A150724.P11223730416280600266

/-!
# A150725: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, -1), (0, 1, 0), (1, -1, 0), (1, 1, 1)}.

The programs for A150725, there is no canonical definition to state claims against.
-/

/-! ## A150725.P1725898526296169218

`A150726(A073788(n))`
-/

namespace A150725.P1725898526296169218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150726 (A073788 n).toNat

end

end A150725.P1725898526296169218

/-! ## A150725.P17591635540958285465

`A150726(A171596(n))`
-/

namespace A150725.P17591635540958285465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150726 (A171596 n).toNat

end

end A150725.P17591635540958285465

/-! ## A150725.P16742845232079183791

`A204896(A150726(n))`
-/

namespace A150725.P16742845232079183791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204896 (A150726 n).toNat

end

end A150725.P16742845232079183791

/-!
# A150727: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, 0), (1, 0, -1), (1, 0, 1), (1, 1, 0)}.

The programs for A150727, there is no canonical definition to state claims against.
-/

/-! ## A150727.P13539926548498931544

`A100180(A086450(n)+A064831(n))`
-/

namespace A150727.P13539926548498931544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100180 (A086450 n + A064831 n).toNat

end

end A150727.P13539926548498931544

/-! ## A150727.P8616303440366693832

`A026526(n+1)-A064415(A294603(n))`
-/

namespace A150727.P8616303440366693832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026526 (n + 1) - A064415 (A294603 n).toNat

end

end A150727.P8616303440366693832

/-!
# A150728: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (0, 1, -1), (0, 1, 1), (1, 0, -1), (1, 0, 1)}.

The programs for A150728, there is no canonical definition to state claims against.
-/

/-! ## A150728.P8457231903763976794

`A350348(A150745(n))`
-/

namespace A150728.P8457231903763976794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350348 (A150745 n).toNat

end

end A150728.P8457231903763976794

/-! ## A150728.P8634083129234752982

`A150749(A001096(n))-A001221(A001470(n))`
-/

namespace A150728.P8634083129234752982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150749 (A001096 n).toNat - A001221 (A001470 n).toNat

end

end A150728.P8634083129234752982

/-!
# A150729: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (0, 0, -1), (0, 1, 1), (1, 0, 1), (1, 1, -1)}.

The programs for A150729, there is no canonical definition to state claims against.
-/

/-! ## A150729.P402154701523446008

`A014320(A369483(n))`
-/

namespace A150729.P402154701523446008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014320 (A369483 n).toNat

end

end A150729.P402154701523446008

/-! ## A150729.P3738326022053814052

`A150753(n)-A025459(A045503(n))`
-/

namespace A150729.P3738326022053814052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150753 n - A025459 (A045503 n).toNat

end

end A150729.P3738326022053814052

/-!
# A150730: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 1), (-1, 1, 1), (1, 0, -1), (1, 0, 0), (1, 1, 0)}.

The programs for A150730, there is no canonical definition to state claims against.
-/

/-! ## A150730.P12972902550602092432

`A195177(A272561(n)-1)+1`
-/

namespace A150730.P12972902550602092432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195177 (A272561 n - 1).toNat + 1

end

end A150730.P12972902550602092432

/-!
# A150731: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (0, 1, -1), (0, 1, 1), (1, 0, -1), (1, 0, 1)}.

The programs for A150731, there is no canonical definition to state claims against.
-/

/-! ## A150731.P1185466141762242387

`A214701(A150732(n)+A002264(n))`
-/

namespace A150731.P1185466141762242387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214701 (A150732 n + A002264 n).toNat

end

end A150731.P1185466141762242387

/-! ## A150731.P15284003358206390797

`A175000(A000040(n+1))+A014300(n+1)`
-/

namespace A150731.P15284003358206390797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175000 (A000040 (n + 1)).toNat + A014300 (n + 1)

end

end A150731.P15284003358206390797

/-!
# A150732: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (0, 0, -1), (0, 1, 1), (1, 0, 1), (1, 1, -1)}.

The programs for A150732, there is no canonical definition to state claims against.
-/

/-! ## A150732.P17259687784908427418

`A187185(6*A150928(n))`
-/

namespace A150732.P17259687784908427418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187185 (6 * A150928 n).toNat

end

end A150732.P17259687784908427418

/-!
# A150733: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, 0, 0), (0, 0, 1), (1, 0, -1), (1, 1, 1)}.

The programs for A150733, there is no canonical definition to state claims against.
-/

/-! ## A150733.P7693365673789443640

`A150734(n)%p?[2^n-1]`
-/

namespace A150733.P7693365673789443640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A150734 n) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A150733.P7693365673789443640

/-! ## A150733.P16282083291608327309

`A150734(A024642(n))`
-/

namespace A150733.P16282083291608327309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150734 (A024642 n).toNat

end

end A150733.P16282083291608327309

/-! ## A150733.P5069619008658240530

`A150734(A024643(n))`
-/

namespace A150733.P5069619008658240530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150734 (A024643 n).toNat

end

end A150733.P5069619008658240530

/-!
# A150735: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 0), (0, 0, -1), (1, 0, 1), (1, 1, 0)}.

The programs for A150735, there is no canonical definition to state claims against.
-/

/-! ## A150735.P5449405287497083328

`A150764(n)-A006855(A006841(n+1))`
-/

namespace A150735.P5449405287497083328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150764 n - A006855 (A006841 (n + 1)).toNat

end

end A150735.P5449405287497083328

/-! ## A150735.P11825803123709531907

`A048686(A110526(n+1))`
-/

namespace A150735.P11825803123709531907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048686 (A110526 (n + 1)).toNat

end

end A150735.P11825803123709531907

/-!
# A150736: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 0), (0, 1, -1), (1, 0, 1), (1, 1, 0)}.

The programs for A150736, there is no canonical definition to state claims against.
-/

/-! ## A150736.P13073052325258936263

`A150737(n)+A016389(A192871(n))`
-/

namespace A150736.P13073052325258936263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150737 n + A016389 (A192871 n).toNat

end

end A150736.P13073052325258936263

/-! ## A150736.P2886279738849672313

`A004151(A150737(n)-A025459(n))`
-/

namespace A150736.P2886279738849672313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004151 (A150737 n - A025459 n).toNat

end

end A150736.P2886279738849672313

/-! ## A150736.P9519539437975783404

`A028310(A150737(n)-A008651(n))`
-/

namespace A150736.P9519539437975783404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A150737 n - A008651 n).toNat

end

end A150736.P9519539437975783404

/-!
# A150737: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, -1, 0), (0, 1, -1), (1, 0, 1), (1, 1, 1)}.

The programs for A150737, there is no canonical definition to state claims against.
-/

/-! ## A150737.P6006876432539719928

`A150736(n)+A005089(A000699(n))`
-/

namespace A150737.P6006876432539719928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150736 n + A005089 (A000699 n).toNat

end

end A150737.P6006876432539719928

/-! ## A150737.P11585439197864251170

`A025459(n)+A004151(A150736(n))`
-/

namespace A150737.P11585439197864251170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025459 n + A004151 (A150736 n).toNat

end

end A150737.P11585439197864251170

/-! ## A150737.P5421013470043843291

`A028310(A150736(n)+A025459(n))`
-/

namespace A150737.P5421013470043843291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A150736 n + A025459 n).toNat

end

end A150737.P5421013470043843291

/-!
# A150738: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, -1), (0, 1, 1), (1, -1, 0), (1, 1, 1)}.

The programs for A150738, there is no canonical definition to state claims against.
-/

/-! ## A150738.P9449943622286253456

`A000027(A150739(n))`
-/

namespace A150738.P9449943622286253456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A150739 n).toNat

end

end A150738.P9449943622286253456

/-! ## A150738.P3581133382184421081

`A150739(A002998(n))`
-/

namespace A150738.P3581133382184421081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150739 (A002998 n).toNat

end

end A150738.P3581133382184421081

/-! ## A150738.P7281339832827085847

`A150739(A039723(n))`
-/

namespace A150738.P7281339832827085847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150739 (A039723 n).toNat

end

end A150738.P7281339832827085847

/-! ## A150738.P1920295834313269525

`A150739(A046469(n))`
-/

namespace A150738.P1920295834313269525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150739 (A046469 n).toNat

end

end A150738.P1920295834313269525

/-! ## A150738.P6524699887664136055

`A150739(A051022(n))`
-/

namespace A150738.P6524699887664136055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150739 (A051022 n).toNat

end

end A150738.P6524699887664136055

/-!
# A150740: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 1), (0, 0, -1), (1, 0, 1), (1, 1, 0)}.

The programs for A150740, there is no canonical definition to state claims against.
-/

/-! ## A150740.P584389777306161267

`A131141(A150761(n))`
-/

namespace A150740.P584389777306161267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131141 (A150761 n).toNat

end

end A150740.P584389777306161267

/-! ## A150740.P5991216737316519935

`A154958(xor(n, A048879(n)))`
-/

namespace A150740.P5991216737316519935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154958 (Int.xor (n : ℤ) (A048879 n)).toNat

end

end A150740.P5991216737316519935

/-!
# A150741: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, 0), (0, 1, -1), (1, 0, 1), (1, 1, 0)}.

The programs for A150741, there is no canonical definition to state claims against.
-/

/-! ## A150741.P8340775916578032235

`A270572(A270690(n)+2)`
-/

namespace A150741.P8340775916578032235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270572 (A270690 n + 2).toNat

end

end A150741.P8340775916578032235

/-! ## A150741.P4354593880725147645

`A270572(xor(2, A270690(n)))`
-/

namespace A150741.P4354593880725147645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270572 (Int.xor 2 (A270690 n)).toNat

end

end A150741.P4354593880725147645

/-!
# A150742: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 1, 0), (0, 0, -1), (1, 0, 1), (1, 1, 0)}.

The programs for A150742, there is no canonical definition to state claims against.
-/

/-! ## A150742.P2939093385255761682

`A068962(A044046(n+2)+2*n)`
-/

namespace A150742.P2939093385255761682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068962 (A044046 (n + 2) + (2 * n : ℤ)).toNat

end

end A150742.P2939093385255761682

/-! ## A150742.P3369630758409422999

`A049474(xor(A078898(n), A152802(n)))`
-/

namespace A150742.P3369630758409422999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049474 (Int.xor (A078898 n) (A152802 n)).toNat

end

end A150742.P3369630758409422999

/-!
# A150743: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 0), (1, 0, -1), (1, 0, 1), (1, 1, 0)}.

The programs for A150743, there is no canonical definition to state claims against.
-/

/-! ## A150743.P10474667284850486944

`A185284(n²)+A151302(n)-A342695(A056363(n))`
-/

namespace A150743.P10474667284850486944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 (n ^ 2) + A151302 n - A342695 (A056363 n).toNat

end

end A150743.P10474667284850486944

/-! ## A150743.P11562439873894081425

`A214701(A150764(n))`
-/

namespace A150743.P11562439873894081425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214701 (A150764 n).toNat

end

end A150743.P11562439873894081425

/-!
# A150744: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, -1, 1), (0, 1, -1), (1, 0, 1), (1, 1, 1)}.

The programs for A150744, there is no canonical definition to state claims against.
-/

/-! ## A150744.P15891895276528655465

`A130341(A150761(n))`
-/

namespace A150744.P15891895276528655465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130341 (A150761 n).toNat

end

end A150744.P15891895276528655465

/-! ## A150744.P15037714929675952870

`A154958(xor(n, A048879(n)))+char[4]`
-/

namespace A150744.P15037714929675952870
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154958 (Int.xor (n : ℤ) (A048879 n)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A150744.P15037714929675952870

/-!
# A150745: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, -1), (1, -1, 0), (1, 0, 1), (1, 1, 1)}.

The programs for A150745, there is no canonical definition to state claims against.
-/

/-! ## A150745.P16800814367507472950

`A150746(A073789(n))`
-/

namespace A150745.P16800814367507472950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150746 (A073789 n).toNat

end

end A150745.P16800814367507472950

/-! ## A150745.P5518232593122121305

`A150746(A171644(n))`
-/

namespace A150745.P5518232593122121305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150746 (A171644 n).toNat

end

end A150745.P5518232593122121305

/-! ## A150745.P15792700402752587999

`A150746(A004869(n+1))`
-/

namespace A150745.P15792700402752587999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150746 (A004869 (n + 1)).toNat

end

end A150745.P15792700402752587999

/-! ## A150745.P11275791792858016151

`A150746(A004880(n+1))`
-/

namespace A150745.P11275791792858016151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150746 (A004880 (n + 1)).toNat

end

end A150745.P11275791792858016151

/-!
# A150747: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, 1), (0, 0, -1), (1, 0, 1), (1, 1, 0)}.

The programs for A150747, there is no canonical definition to state claims against.
-/

/-! ## A150747.P12878865411437021383

`A005843(A150776(n))-A150811(n)`
-/

namespace A150747.P12878865411437021383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A150776 n).toNat - A150811 n

end

end A150747.P12878865411437021383

/-! ## A150747.P2035952708557512849

`A390395(A150929(n))`
-/

namespace A150747.P2035952708557512849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390395 (A150929 n).toNat

end

end A150747.P2035952708557512849

/-!
# A150748: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 0), (1, 0, 1), (1, 1, -1), (1, 1, 0)}.

The programs for A150748, there is no canonical definition to state claims against.
-/

/-! ## A150748.P10001485074464209998

`A150749(A001096(n))`
-/

namespace A150748.P10001485074464209998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150749 (A001096 n).toNat

end

end A150748.P10001485074464209998

/-! ## A150748.P8295535557832221779

`A194521(11*A150749(n))`
-/

namespace A150748.P8295535557832221779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194521 (11 * A150749 n).toNat

end

end A150748.P8295535557832221779

/-!
# A150749: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, -1), (0, 1, 1), (1, -1, 0), (1, 1, 1)}.

The programs for A150749, there is no canonical definition to state claims against.
-/

/-! ## A150749.P5440011141662770268

`A150750(A073789(n))`
-/

namespace A150749.P5440011141662770268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150750 (A073789 n).toNat

end

end A150749.P5440011141662770268

/-! ## A150749.P4792143115083513579

`A106610(A150750(n))`
-/

namespace A150749.P4792143115083513579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106610 (A150750 n).toNat

end

end A150749.P4792143115083513579

/-! ## A150749.P7994438965125893031

`A150750(A171644(n))`
-/

namespace A150749.P7994438965125893031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150750 (A171644 n).toNat

end

end A150749.P7994438965125893031

/-! ## A150749.P14003451519644758900

`A150750(A004869(n+1))`
-/

namespace A150749.P14003451519644758900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150750 (A004869 (n + 1)).toNat

end

end A150749.P14003451519644758900

/-!
# A150751: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, 0, 1), (0, 0, 1), (1, 0, -1), (1, 1, 1)}.

The programs for A150751, there is no canonical definition to state claims against.
-/

/-! ## A150751.P16729250875582560224

`xor(A150752(n), A185284(n²))`
-/

namespace A150751.P16729250875582560224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A150752 n) (A185284 (n ^ 2))

end

end A150751.P16729250875582560224

/-! ## A150751.P9688197400062435088

`A150752(n)-A051344(A017966(n))`
-/

namespace A150751.P9688197400062435088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150752 n - A051344 (A017966 n).toNat

end

end A150751.P9688197400062435088

/-! ## A150751.P10592558272554483780

`A150752(n)-A004198(A150744(n))`
-/

namespace A150751.P10592558272554483780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150752 n - A004198 (A150744 n).toNat

end

end A150751.P10592558272554483780

/-!
# A150752: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, 0, 1), (1, 0, 0), (1, 1, -1), (1, 1, 1)}.

The programs for A150752, there is no canonical definition to state claims against.
-/

/-! ## A150752.P12899313865138580080

`xor(A150751(n), A185284(n²))`
-/

namespace A150752.P12899313865138580080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A150751 n) (A185284 (n ^ 2))

end

end A150752.P12899313865138580080

/-! ## A150752.P4324290619975289020

`A150751(n)+A051344(A017966(n))`
-/

namespace A150752.P4324290619975289020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150751 n + A051344 (A017966 n).toNat

end

end A150752.P4324290619975289020

/-! ## A150752.P763398199486192260

`A150751(n)+A004198(A150744(n))`
-/

namespace A150752.P763398199486192260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150751 n + A004198 (A150744 n).toNat

end

end A150752.P763398199486192260

/-!
# A150753: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 1), (1, 0, -1), (1, 0, 1), (1, 1, 0)}.

The programs for A150753, there is no canonical definition to state claims against.
-/

/-! ## A150753.P8739870591352245388

`A004525(A150769(n)+A150730(n))`
-/

namespace A150753.P8739870591352245388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A150769 n + A150730 n).toNat

end

end A150753.P8739870591352245388

/-! ## A150753.P7320697350689528772

`A150729(n)+A025459(A045503(n))`
-/

namespace A150753.P7320697350689528772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150729 n + A025459 (A045503 n).toNat

end

end A150753.P7320697350689528772

/-!
# A150754: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, 0), (1, 0, 1), (1, 1, -1), (1, 1, 0)}.

The programs for A150754, there is no canonical definition to state claims against.
-/

/-! ## A150754.P9984206191717893847

`A185284(n²)+A151302(n)`
-/

namespace A150754.P9984206191717893847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 (n ^ 2) + A151302 n

end

end A150754.P9984206191717893847

/-! ## A150754.P500557074266034879

`A319114(A355266(n))+A151302(n)`
-/

namespace A150754.P500557074266034879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319114 (A355266 n).toNat + A151302 n

end

end A150754.P500557074266034879

/-!
# A150755: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 1, 0), (1, 0, -1), (1, 0, 1), (1, 1, 0)}.

The programs for A150755, there is no canonical definition to state claims against.
-/

/-! ## A150755.P10930051784808153360

`A037918(A123764(n+1))`
-/

namespace A150755.P10930051784808153360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037918 (A123764 (n + 1)).toNat

end

end A150755.P10930051784808153360

/-!
# A150756: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (0, 1, -1), (0, 1, 1), (1, 0, 1), (1, 1, -1)}.

The programs for A150756, there is no canonical definition to state claims against.
-/

/-! ## A150756.P7240002884771463960

`xor(A150799(n), A248333(A002478(n)))`
-/

namespace A150756.P7240002884771463960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A150799 n) (A248333 (A002478 n).toNat)

end

end A150756.P7240002884771463960

/-! ## A150756.P13749165173438599621

`A364349(∑[∑[A138785(n+1)]])`
-/

namespace A150756.P13749165173438599621
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138785 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364349 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A150756.P13749165173438599621

/-!
# A150757: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, 1), (1, 0, -1), (1, 0, 1), (1, 1, 0)}.

The programs for A150757, there is no canonical definition to state claims against.
-/

/-! ## A150757.P17679072313560029958

`A315650(A150913(n))/6`
-/

namespace A150757.P17679072313560029958
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A315650 (A150913 n).toNat : ℚ) / 6

end

end A150757.P17679072313560029958

/-! ## A150757.P7117042858503934969

`A112565(n)+A002471(A062024(n))`
-/

namespace A150757.P7117042858503934969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112565 n + A002471 (A062024 n).toNat

end

end A150757.P7117042858503934969

/-!
# A150758: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (0, 1, -1), (0, 1, 1), (1, 0, 1), (1, 1, -1)}.

The programs for A150758, there is no canonical definition to state claims against.
-/

/-! ## A150758.P15094301958749095210

`A089840(A339843(n))+A008549(n)`
-/

namespace A150758.P15094301958749095210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089840 (A339843 n).toNat + A008549 n

end

end A150758.P15094301958749095210

/-!
# A150759: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 0), (0, 0, -1), (0, 0, 1), (1, 1, 1)}.

The programs for A150759, there is no canonical definition to state claims against.
-/

/-! ## A150759.P2694815220581018397

`A150760(n)%p?[2^n-1]`
-/

namespace A150759.P2694815220581018397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A150760 n) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A150759.P2694815220581018397

/-! ## A150759.P1563353363384777062

`A150760(A073788(n))`
-/

namespace A150759.P1563353363384777062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150760 (A073788 n).toNat

end

end A150759.P1563353363384777062

/-! ## A150759.P5485174693480740264

`A075054(A150760(n))`
-/

namespace A150759.P5485174693480740264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075054 (A150760 n).toNat

end

end A150759.P5485174693480740264

/-!
# A150760: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (0, 1, -1), (1, 0, -1), (1, 1, 0), (1, 1, 1)}.

The programs for A150760, there is no canonical definition to state claims against.
-/

/-! ## A150760.P12562118006271182489

`or(A150759(n), A333787(A150743(n)))`
-/

namespace A150760.P12562118006271182489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A150759 n) (A333787 (A150743 n).toNat)

end

end A150760.P12562118006271182489

/-!
# A150761: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 0), (0, -1, 0), (0, 0, -1), (0, 1, 1), (1, 0, 1)}.

The programs for A150761, there is no canonical definition to state claims against.
-/

/-! ## A150761.P17609966444926657694

`A072747(A150279(n+1))`
-/

namespace A150761.P17609966444926657694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072747 (A150279 (n + 1)).toNat

end

end A150761.P17609966444926657694

/-! ## A150761.P18202614809154490657

`A004277(A150763(n))-A150764(n)`
-/

namespace A150761.P18202614809154490657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A150763 n).toNat - A150764 n

end

end A150761.P18202614809154490657

/-!
# A150762: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 1), (0, 0, -1), (0, 0, 1), (1, 1, 1)}.

The programs for A150762, there is no canonical definition to state claims against.
-/

/-! ## A150762.P7117213991662384937

`2*A151238(n)-A151254(n)`
-/

namespace A150762.P7117213991662384937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A151238 n - A151254 n

end

end A150762.P7117213991662384937

/-! ## A150762.P15019505862869782448

`A000007(n)+(2*A151238(n))%A151254(n)`
-/

namespace A150762.P15019505862869782448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + Int.tmod (2 * A151238 n) (A151254 n)

end

end A150762.P15019505862869782448

/-! ## A150762.P16172754142927090038

`A028310((2*A151238(n))%A151254(n))`
-/

namespace A150762.P16172754142927090038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (Int.tmod (2 * A151238 n) (A151254 n)).toNat

end

end A150762.P16172754142927090038

/-! ## A150762.P8730212873051975064

`A028310(A151238(n)+A151238(n)-A151254(n))`
-/

namespace A150762.P8730212873051975064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A151238 n + (A151238 n - A151254 n)).toNat

end

end A150762.P8730212873051975064

/-!
# A150763: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 0), (0, -1, 0), (0, 1, -1), (0, 1, 1), (1, 1, 0)}.

The programs for A150763, there is no canonical definition to state claims against.
-/

/-! ## A150763.P16431759664368045047

`A150289(n)+A002265(A150775(n))`
-/

namespace A150763.P16431759664368045047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150289 n + A002265 (A150775 n).toNat

end

end A150763.P16431759664368045047

/-! ## A150763.P12672535340182713287

`A004525(A150764(n)+A150761(n))`
-/

namespace A150763.P12672535340182713287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A150764 n + A150761 n).toNat

end

end A150763.P12672535340182713287

/-! ## A150763.P8145013093020530375

`A004526(A150764(n)+A150761(n))`
-/

namespace A150763.P8145013093020530375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A150764 n + A150761 n).toNat

end

end A150763.P8145013093020530375

/-!
# A150764: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 0), (1, -1, 0), (1, 0, -1), (1, 0, 1), (1, 1, 0)}.

The programs for A150764, there is no canonical definition to state claims against.
-/

/-! ## A150764.P14771747066373765831

`A004277(A150763(n))-A150761(n)`
-/

namespace A150764.P14771747066373765831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A150763 n).toNat - A150761 n

end

end A150764.P14771747066373765831

/-! ## A150764.P2949366696574518549

`A150735(n)+A006855(A006841(n+1))`
-/

namespace A150764.P2949366696574518549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150735 n + A006855 (A006841 (n + 1)).toNat

end

end A150764.P2949366696574518549

/-! ## A150764.P17052229485192098265

`A004277(A150763(n))-A072747(A150279(n+1))`
-/

namespace A150764.P17052229485192098265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A150763 n).toNat - A072747 (A150279 (n + 1)).toNat

end

end A150764.P17052229485192098265

/-!
# A150765: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 0), (0, 0, -1), (1, 0, 0), (1, 1, 1)}.

The programs for A150765, there is no canonical definition to state claims against.
-/

/-! ## A150765.P17693678508962498616

`A210357(∑[A150813(n)])`
-/

namespace A150765.P17693678508962498616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150813 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210357 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A150765.P17693678508962498616

/-! ## A150765.P12645075773050822321

`A054519(n)*A292050(A120895(n))`
-/

namespace A150765.P12645075773050822321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054519 n * A292050 (A120895 n).toNat

end

end A150765.P12645075773050822321

/-!
# A150766: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 0), (0, 1, -1), (1, 0, 0), (1, 1, 1)}.

The programs for A150766, there is no canonical definition to state claims against.
-/

/-! ## A150766.P4716663221538706306

`A390395(A151307(n))`
-/

namespace A150766.P4716663221538706306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390395 (A151307 n).toNat

end

end A150766.P4716663221538706306

/-! ## A150766.P8900787144433627416

`A103221(A024318(3*n+4))`
-/

namespace A150766.P8900787144433627416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 (A024318 (3 * n + 4)).toNat

end

end A150766.P8900787144433627416

/-!
# A150767: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 0), (0, 1, -1), (1, 0, 1), (1, 1, 0)}.

The programs for A150767, there is no canonical definition to state claims against.
-/

/-! ## A150767.P8792830930751267896

`A247784(A152802(n))`
-/

namespace A150767.P8792830930751267896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247784 (A152802 n).toNat

end

end A150767.P8792830930751267896

/-! ## A150767.P3315710923636578651

`A020915(A264977(n)+A084059(n))`
-/

namespace A150767.P3315710923636578651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020915 (A264977 n + A084059 n).toNat

end

end A150767.P3315710923636578651

/-!
# A150768: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, 0), (0, 0, -1), (1, 0, 0), (1, 1, 1)}.

The programs for A150768, there is no canonical definition to state claims against.
-/

/-! ## A150768.P13584868844484045052

`A149796(n)+A008615(A000302(n))`
-/

namespace A150768.P13584868844484045052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149796 n + A008615 (A000302 n).toNat

end

end A150768.P13584868844484045052

/-! ## A150768.P13472656223631198399

`A004526(A150794(n)+A150764(n))`
-/

namespace A150768.P13472656223631198399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A150794 n + A150764 n).toNat

end

end A150768.P13472656223631198399

/-!
# A150769: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 1), (0, 0, -1), (1, 0, 1), (1, 1, 0)}.

The programs for A150769, there is no canonical definition to state claims against.
-/

/-! ## A150769.P12043687911210689640

`A075054(A150770(n))`
-/

namespace A150769.P12043687911210689640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075054 (A150770 n).toNat

end

end A150769.P12043687911210689640

/-! ## A150769.P2409056152444209912

`A014681(A150770(n)-(n-abs(1-n)))`
-/

namespace A150769.P2409056152444209912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (A150770 n - ((n : ℤ) - |1 - (n : ℤ)|)).toNat

end

end A150769.P2409056152444209912

/-! ## A150769.P13159631402471973416

`A246962(A054719(n))+A150770(n)`
-/

namespace A150769.P13159631402471973416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246962 (A054719 n).toNat + A150770 n

end

end A150769.P13159631402471973416

/-!
# A150770: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 0), (0, 0, -1), (1, 0, 0), (1, 1, 1)}.

The programs for A150770, there is no canonical definition to state claims against.
-/

/-! ## A150770.P11944335229821092550

`A150769(n)+A004198(A150768(n))`
-/

namespace A150770.P11944335229821092550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150769 n + A004198 (A150768 n).toNat

end

end A150770.P11944335229821092550

/-! ## A150770.P12783589743247591598

`A004526(A150771(n)+A150769(n))`
-/

namespace A150770.P12783589743247591598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A150771 n + A150769 n).toNat

end

end A150770.P12783589743247591598

/-! ## A150770.P2681423125429187390

`A114112(A150769(n))+A085141(n)`
-/

namespace A150770.P2681423125429187390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114112 (A150769 n).toNat + A085141 n

end

end A150770.P2681423125429187390

/-!
# A150771: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, 0), (0, 1, -1), (1, 0, 0), (1, 1, 1)}.

The programs for A150771, there is no canonical definition to state claims against.
-/

/-! ## A150771.P1862439977447598898

`A325645(A150769(n))`
-/

namespace A150771.P1862439977447598898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325645 (A150769 n).toNat

end

end A150771.P1862439977447598898

/-! ## A150771.P15033338311493159808

`A332442(A288018(n))+A150770(n)`
-/

namespace A150771.P15033338311493159808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332442 (A288018 n).toNat + A150770 n

end

end A150771.P15033338311493159808

/-! ## A150771.P14318454529439002175

`A185063(A056401(n+1))+A150769(n)`
-/

namespace A150771.P14318454529439002175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185063 (A056401 (n + 1)).toNat + A150769 n

end

end A150771.P14318454529439002175

/-!
# A150772: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 1), (0, 1, -1), (1, 0, 1), (1, 1, 0)}.

The programs for A150772, there is no canonical definition to state claims against.
-/

/-! ## A150772.P11222509239664080998

`A325645(A150794(n))-A372194(n)`
-/

namespace A150772.P11222509239664080998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325645 (A150794 n).toNat - A372194 n

end

end A150772.P11222509239664080998

/-! ## A150772.P14813701638013351234

`A325645(A150795(n)-A372194(n))`
-/

namespace A150772.P14813701638013351234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325645 (A150795 n - A372194 n).toNat

end

end A150772.P14813701638013351234

/-! ## A150772.P18080794757019167135

`A150793(n)+A025427(A150806(n))-A372194(n)`
-/

namespace A150772.P18080794757019167135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150793 n + A025427 (A150806 n).toNat - A372194 n

end

end A150772.P18080794757019167135

/-!
# A150773: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 0), (0, 1, -1), (1, 0, 0), (1, 1, 1)}.

The programs for A150773, there is no canonical definition to state claims against.
-/

/-! ## A150773.P9603410423940850661

`A130655(n)+A054404(A084509(n))`
-/

namespace A150773.P9603410423940850661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130655 n + A054404 (A084509 n).toNat

end

end A150773.P9603410423940850661

/-! ## A150773.P16766173882878366847

`A076885(A150600(n+1))`
-/

namespace A150773.P16766173882878366847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076885 (A150600 (n + 1)).toNat

end

end A150773.P16766173882878366847

/-!
# A150774: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 1, 0), (0, 1, -1), (1, 0, 1), (1, 1, 0)}.

The programs for A150774, there is no canonical definition to state claims against.
-/

/-! ## A150774.P8435323733534078104

`A350348(A150775(n))`
-/

namespace A150774.P8435323733534078104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350348 (A150775 n).toNat

end

end A150774.P8435323733534078104

/-! ## A150774.P12605084578286876991

`A194640(∑[A150953(n)])`
-/

namespace A150774.P12605084578286876991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150953 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194640 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A150774.P12605084578286876991

/-!
# A150775: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 1, 0), (0, 0, -1), (1, 0, 0), (1, 1, 1)}.

The programs for A150775, there is no canonical definition to state claims against.
-/

/-! ## A150775.P15790025186151827003

`A054345(A083692(n))`
-/

namespace A150775.P15790025186151827003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054345 (A083692 n).toNat

end

end A150775.P15790025186151827003

/-! ## A150775.P302502598219707499

`A240163(A150116(n))`
-/

namespace A150775.P302502598219707499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240163 (A150116 n).toNat

end

end A150775.P302502598219707499

/-!
# A150776: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, 1), (0, 1, -1), (1, 0, 1), (1, 1, 0)}.

The programs for A150776, there is no canonical definition to state claims against.
-/

/-! ## A150776.P1988587474252172923

`A005843(A150815(n))-A150851(n)`
-/

namespace A150776.P1988587474252172923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A150815 n).toNat - A150851 n

end

end A150776.P1988587474252172923

/-! ## A150776.P7434601963863232830

`A237270(5^n-∑{d}[n+1, #%or(1, #)])`
-/

namespace A150776.P7434601963863232830
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237270 (5 ^ n - ∑ d ∈ Nat.divisors (f1 n), d % Nat.lor 1 d)

end

end A150776.P7434601963863232830

/-!
# A150778: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 1, 0), (0, 1, -1), (1, 0, 0), (1, 1, 1)}.

The programs for A150778, there is no canonical definition to state claims against.
-/

/-! ## A150778.P4264776505939112021

`A110545(A150797(n))`
-/

namespace A150778.P4264776505939112021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110545 (A150797 n).toNat

end

end A150778.P4264776505939112021

/-! ## A150778.P12534455428189851709

`A023022(4*A150797(n))`
-/

namespace A150778.P12534455428189851709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023022 (4 * A150797 n).toNat

end

end A150778.P12534455428189851709

/-!
# A150779: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 0), (1, 0, -1), (1, 0, 0), (1, 1, 1)}.

The programs for A150779, there is no canonical definition to state claims against.
-/

/-! ## A150779.P14920647966358137602

`A139281(A007718(n))+A004254(n)`
-/

namespace A150779.P14920647966358137602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139281 (A007718 n).toNat + A004254 n

end

end A150779.P14920647966358137602

/-! ## A150779.P10064686928958973511

`A150768(n)+A055168(A111343(n))`
-/

namespace A150779.P10064686928958973511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150768 n + A055168 (A111343 n).toNat

end

end A150779.P10064686928958973511

/-!
# A150780: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 1), (1, 0, -1), (1, 0, 1), (1, 1, 0)}.

The programs for A150780, there is no canonical definition to state claims against.
-/

/-! ## A150780.P13241190663139461273

`A002266(A272806(n))+1`
-/

namespace A150780.P13241190663139461273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002266 (A272806 n).toNat + 1

end

end A150780.P13241190663139461273

/-! ## A150780.P3908950511381666771

`A008616(2*A272806(n))`
-/

namespace A150780.P3908950511381666771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008616 (2 * A272806 n).toNat

end

end A150780.P3908950511381666771

/-!
# A150781: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, 0), (1, 0, -1), (1, 0, 0), (1, 1, 1)}.

The programs for A150781, there is no canonical definition to state claims against.
-/

/-! ## A150781.P3893449417689732382

`A187185(A271005(n))`
-/

namespace A150781.P3893449417689732382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187185 (A271005 n).toNat

end

end A150781.P3893449417689732382

/-! ## A150781.P10546860402015648238

`A150783(n)-A185245(8*n)`
-/

namespace A150781.P10546860402015648238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150783 n - A185245 (8 * n)

end

end A150781.P10546860402015648238

/-!
# A150782: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 0), (1, 0, 0), (1, 1, -1), (1, 1, 1)}.

The programs for A150782, there is no canonical definition to state claims against.
-/

/-! ## A150782.P7039325123593906195

`A322526(C(2*n, 2)+1)`
-/

namespace A150782.P7039325123593906195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322526 (Nat.choose (2 * n) 2 + 1)

end

end A150782.P7039325123593906195

/-! ## A150782.P11284488741308039152

`A322526(2*n²+1-n)`
-/

namespace A150782.P11284488741308039152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322526 ((2 * n ^ 2 : ℤ) + (1 - (n : ℤ))).toNat

end

end A150782.P11284488741308039152

/-!
# A150783: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 0), (1, 0, -1), (1, 0, 0), (1, 1, 1)}.

The programs for A150783, there is no canonical definition to state claims against.
-/

/-! ## A150783.P5919385756868267270

`A131967(A279562(n))+A008549(n)`
-/

namespace A150783.P5919385756868267270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131967 (A279562 n).toNat + A008549 n

end

end A150783.P5919385756868267270

/-! ## A150783.P2540907370352525504

`A206437(A279569(n))+A008549(n)`
-/

namespace A150783.P2540907370352525504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206437 (A279569 n).toNat + A008549 n

end

end A150783.P2540907370352525504

/-!
# A150784: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 0), (1, 0, 1), (1, 1, -1), (1, 1, 0)}.

The programs for A150784, there is no canonical definition to state claims against.
-/

/-! ## A150784.P1135569206587767696

`A279484(3^n+7^n+1)+A150801(n)`
-/

namespace A150784.P1135569206587767696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279484 (3 ^ n + (7 ^ n + 1)) + A150801 n

end

end A150784.P1135569206587767696

/-! ## A150784.P10521060518562928465

`A053735(A000312(n))+A008549(n)`
-/

namespace A150784.P10521060518562928465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053735 (A000312 n).toNat + A008549 n

end

end A150784.P10521060518562928465

/-!
# A150785: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 1), (1, 0, 1), (1, 1, -1), (1, 1, 0)}.

The programs for A150785, there is no canonical definition to state claims against.
-/

/-! ## A150785.P7131982920284224884

`A214701(A150816(n))`
-/

namespace A150785.P7131982920284224884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214701 (A150816 n).toNat

end

end A150785.P7131982920284224884

/-! ## A150785.P17156244971310914482

`A008621(A270686(n)+A063759(n))`
-/

namespace A150785.P17156244971310914482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (A270686 n + A063759 n).toNat

end

end A150785.P17156244971310914482

/-!
# A150786: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, 0), (1, 0, 0), (1, 1, -1), (1, 1, 1)}.

The programs for A150786, there is no canonical definition to state claims against.
-/

/-! ## A150786.P4751560102996189684

`A161655(A150758(n))`
-/

namespace A150786.P4751560102996189684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161655 (A150758 n).toNat

end

end A150786.P4751560102996189684

/-! ## A150786.P10145870104971521395

`A358305(A000108(n))+A000984(n)`
-/

namespace A150786.P10145870104971521395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358305 (A000108 n).toNat + A000984 n

end

end A150786.P10145870104971521395

/-!
# A150787: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 1, 0), (1, 0, -1), (1, 0, 0), (1, 1, 1)}.

The programs for A150787, there is no canonical definition to state claims against.
-/

/-! ## A150787.P14289517111703241674

`A264749(A293801(n+6))`
-/

namespace A150787.P14289517111703241674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264749 (A293801 (n + 6)).toNat

end

end A150787.P14289517111703241674

/-! ## A150787.P7822061868077804316

`A245573(A245580(n+1))-A374998(n+1)`
-/

namespace A150787.P7822061868077804316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245573 (A245580 (n + 1)).toNat - A374998 (n + 1)

end

end A150787.P7822061868077804316

/-!
# A150788: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 1, 0), (1, 0, 1), (1, 1, -1), (1, 1, 0)}.

The programs for A150788, there is no canonical definition to state claims against.
-/

/-! ## A150788.P17944123613282405906

`A060775(A226880(n+1))+A008549(n)`
-/

namespace A150788.P17944123613282405906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060775 (A226880 (n + 1)).toNat + A008549 n

end

end A150788.P17944123613282405906

/-! ## A150788.P1785105877824445185

`A228397(n+1)+A089867(A002529(n))`
-/

namespace A150788.P1785105877824445185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228397 (n + 1) + A089867 (A002529 n).toNat

end

end A150788.P1785105877824445185

/-!
# A150789: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 0), (1, 0, 0), (1, 1, -1), (1, 1, 1)}.

The programs for A150789, there is no canonical definition to state claims against.
-/

/-! ## A150789.P9697198038880761977

`A118363(n+1)*A325368(A000110(n))`
-/

namespace A150789.P9697198038880761977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118363 (n + 1) * A325368 (A000110 n).toNat

end

end A150789.P9697198038880761977

/-! ## A150789.P15512128679538174362

`A184402(A000088(n))*A351007(n+4)`
-/

namespace A150789.P15512128679538174362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184402 (A000088 n).toNat * A351007 (n + 4)

end

end A150789.P15512128679538174362

/-!
# A150790: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, 1), (1, 0, 1), (1, 1, -1), (1, 1, 0)}.

The programs for A150790, there is no canonical definition to state claims against.
-/

/-! ## A150790.P17726633540346945748

`A222249(A150791(n)-A002265(n))`
-/

namespace A150790.P17726633540346945748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222249 (A150791 n - A002265 n).toNat

end

end A150790.P17726633540346945748

/-! ## A150790.P3513301850059975598

`A222249(A150791(n)-A061358(n))`
-/

namespace A150790.P3513301850059975598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222249 (A150791 n - A061358 n).toNat

end

end A150790.P3513301850059975598

/-! ## A150790.P10018122859023447616

`A222249(A150791(n)-A089049(n))`
-/

namespace A150790.P10018122859023447616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222249 (A150791 n - A089049 n).toNat

end

end A150790.P10018122859023447616

/-!
# A150791: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 1, 1), (1, 0, -1), (1, 0, 1), (1, 1, 0)}.

The programs for A150791, there is no canonical definition to state claims against.
-/

/-! ## A150791.P10656780295620818600

`A150790(n)+A025458(A150790(n))`
-/

namespace A150791.P10656780295620818600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150790 n + A025458 (A150790 n).toNat

end

end A150791.P10656780295620818600

/-! ## A150791.P17608979980476766959

`A222249(A150790(n))+A002265(n)`
-/

namespace A150791.P17608979980476766959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222249 (A150790 n).toNat + A002265 n

end

end A150791.P17608979980476766959

/-! ## A150791.P14343317475113636823

`A222249(A150790(n))+A061358(n)`
-/

namespace A150791.P14343317475113636823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222249 (A150790 n).toNat + A061358 n

end

end A150791.P14343317475113636823

/-!
# A150792: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 1, 0), (1, 0, 0), (1, 1, -1), (1, 1, 1)}.

The programs for A150792, there is no canonical definition to state claims against.
-/

/-! ## A150792.P10405404930828980007

`A164707(A089586(n+6))`
-/

namespace A150792.P10405404930828980007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164707 (A089586 (n + 6)).toNat

end

end A150792.P10405404930828980007

/-! ## A150792.P13014638950500105434

`A008624(or(4, A300581(n)))`
-/

namespace A150792.P13014638950500105434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008624 (Int.lor 4 (A300581 n)).toNat

end

end A150792.P13014638950500105434

/-!
# A150793: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 0), (0, -1, 0), (0, 1, -1), (1, 0, 1), (1, 1, 0)}.

The programs for A150793, there is no canonical definition to state claims against.
-/

/-! ## A150793.P11738943311568770171

`A150795(n)-A025427(A150806(n))`
-/

namespace A150793.P11738943311568770171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150795 n - A025427 (A150806 n).toNat

end

end A150793.P11738943311568770171

/-! ## A150793.P6182622751953513474

`A325645(A150794(n))-A025427(A150806(n))`
-/

namespace A150793.P6182622751953513474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325645 (A150794 n).toNat - A025427 (A150806 n).toNat

end

end A150793.P6182622751953513474

/-!
# A150794: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 0), (0, 0, 1), (1, 0, -1), (1, 1, 1)}.

The programs for A150794, there is no canonical definition to state claims against.
-/

/-! ## A150794.P9524748668585866220

`A150795(A001096(n))`
-/

namespace A150794.P9524748668585866220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150795 (A001096 n).toNat

end

end A150794.P9524748668585866220

/-! ## A150794.P11958348071849338320

`A150795(n)^A176307(C(n, floor(n/2))-1)`
-/

namespace A150794.P11958348071849338320
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A150795 n : ℚ) ^ (A176307 (Nat.choose n ⌊(n : ℚ) / 2⌋.toNat - 1) : ℤ)

end

end A150794.P11958348071849338320

/-!
# A150795: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, 0), (0, 0, 1), (1, 0, -1), (1, 1, 1)}.

The programs for A150795, there is no canonical definition to state claims against.
-/

/-! ## A150795.P3443695674681308233

`A325645(A150794(n))`
-/

namespace A150795.P3443695674681308233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325645 (A150794 n).toNat

end

end A150795.P3443695674681308233

/-! ## A150795.P2123096112822780537

`A150793(n)+A025427(A150806(n))`
-/

namespace A150795.P2123096112822780537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150793 n + A025427 (A150806 n).toNat

end

end A150795.P2123096112822780537

/-! ## A150795.P7645244698240438126

`A372194(n)+A325645(A150772(n))`
-/

namespace A150795.P7645244698240438126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372194 n + A325645 (A150772 n).toNat

end

end A150795.P7645244698240438126

/-!
# A150796: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 0), (0, -1, 1), (1, 0, -1), (1, 0, 1), (1, 1, 0)}.

The programs for A150796, there is no canonical definition to state claims against.
-/

/-! ## A150796.P8901580662762329914

`A004525(∑[∑[A150948(n)]])`
-/

namespace A150796.P8901580662762329914
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150948 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A150796.P8901580662762329914

/-! ## A150796.P12261601081852893474

`A194977(A018088(n)*A316473(n+1))`
-/

namespace A150796.P12261601081852893474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194977 (A018088 n * A316473 (n + 1)).toNat

end

end A150796.P12261601081852893474

/-! ## A150796.P14658998175494287293

`A151087(n)+n-A230980(A151087(n))`
-/

namespace A150796.P14658998175494287293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151087 n + ((n : ℤ) - A230980 (A151087 n).toNat)

end

end A150796.P14658998175494287293

/-!
# A150797: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 0), (0, -1, 0), (0, 1, -1), (0, 1, 1), (1, 0, 1)}.

The programs for A150797, there is no canonical definition to state claims against.
-/

/-! ## A150797.P5364120348700039826

`A151476(n)+A074840(A150817(n))`
-/

namespace A150797.P5364120348700039826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151476 n + A074840 (A150817 n).toNat

end

end A150797.P5364120348700039826

/-! ## A150797.P7602395049360973327

`A097337(A150628(n)+A150616(n))`
-/

namespace A150797.P7602395049360973327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097337 (A150628 n + A150616 n).toNat

end

end A150797.P7602395049360973327

/-! ## A150797.P4508122247103591545

`A028310(A150799(n)-A069912(n))`
-/

namespace A150797.P4508122247103591545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A150799 n - A069912 n).toNat

end

end A150797.P4508122247103591545

/-!
# A150798: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 0), (0, -1, 0), (0, 1, 1), (1, 1, -1), (1, 1, 0)}.

The programs for A150798, there is no canonical definition to state claims against.
-/

/-! ## A150798.P14974726708883195505

`A160546(A150767(n))`
-/

namespace A150798.P14974726708883195505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160546 (A150767 n).toNat

end

end A150798.P14974726708883195505

/-! ## A150798.P15148385041010037694

`A262868(A150520(n+1))`
-/

namespace A150798.P15148385041010037694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262868 (A150520 (n + 1)).toNat

end

end A150798.P15148385041010037694

/-! ## A150798.P3891901830435592849

`or(A150794(n), A164089(A150775(n)))`
-/

namespace A150798.P3891901830435592849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A150794 n) (A164089 (A150775 n).toNat)

end

end A150798.P3891901830435592849

/-!
# A150799: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 1), (0, 0, -1), (1, 0, 0), (1, 1, 1)}.

The programs for A150799, there is no canonical definition to state claims against.
-/

/-! ## A150799.P17873609457866716094

`A074135(A150800(n))`
-/

namespace A150799.P17873609457866716094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074135 (A150800 n).toNat

end

end A150799.P17873609457866716094

/-! ## A150799.P1128988204934266524

`A085898(A150797(n))`
-/

namespace A150799.P1128988204934266524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085898 (A150797 n).toNat

end

end A150799.P1128988204934266524

/-! ## A150799.P3468722041683684790

`∑[A004525(∑[A150950(n)])]`
-/

namespace A150799.P3468722041683684790
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150950 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A150799.P3468722041683684790

