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
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C030
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
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
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
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
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
import Seq.Opaque.C013
import Seq.Opaque.C014
import Seq.Opaque.C015
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
# A124700: Number of base 7 circular n-digit numbers with adjacent digits differing by 1 or less.

The programs for A124700, there is no canonical definition to state claims against.
-/

/-! ## A124700.P1312068489995687238

`A276562(A166136(n+4)+1)`
-/

namespace A124700.P1312068489995687238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276562 (A166136 (n + 4) + 1).toNat

end

end A124700.P1312068489995687238

/-! ## A124700.P8281537950609312731

`A276562(A167499(n+4)+2)`
-/

namespace A124700.P8281537950609312731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276562 (A167499 (n + 4) + 2).toNat

end

end A124700.P8281537950609312731

/-! ## A124700.P7861622143672862456

`A276562(A000124(n+5)+6)`
-/

namespace A124700.P7861622143672862456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276562 (A000124 (n + 5) + 6).toNat

end

end A124700.P7861622143672862456

/-! ## A124700.P5591516581576125904

`A276562(A000096(n+4)+8)`
-/

namespace A124700.P5591516581576125904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276562 (A000096 (n + 4) + 8).toNat

end

end A124700.P5591516581576125904

/-! ## A124700.P17361892220400313935

`A276562(A046691(n+3)+11)`
-/

namespace A124700.P17361892220400313935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276562 (A046691 (n + 3) + 11).toNat

end

end A124700.P17361892220400313935

/-!
# A124701: Number of base 8 circular n-digit numbers with adjacent digits differing by 1 or less.

The programs for A124701, there is no canonical definition to state claims against.
-/

/-! ## A124701.P17235654781050649323

`A276562(A166136(n+5)+2)`
-/

namespace A124701.P17235654781050649323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276562 (A166136 (n + 5) + 2).toNat

end

end A124701.P17235654781050649323

/-! ## A124701.P7786488005238089778

`A276562(A000124(n+6)+7)`
-/

namespace A124701.P7786488005238089778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276562 (A000124 (n + 6) + 7).toNat

end

end A124701.P7786488005238089778

/-! ## A124701.P5407400223719199787

`A276562(A000096(n+5)+9)`
-/

namespace A124701.P5407400223719199787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276562 (A000096 (n + 5) + 9).toNat

end

end A124701.P5407400223719199787

/-! ## A124701.P2676517992446724361

`A276562(eq[7, A002260(n+1)]+2)`
-/

namespace A124701.P2676517992446724361
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276562 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2)

end

end A124701.P2676517992446724361

/-! ## A124701.P11665208625432340993

`A276562(A161680(n+8)-(n-1))`
-/

namespace A124701.P11665208625432340993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276562 (A161680 (n + 8) - ((n : ℤ) - 1)).toNat

end

end A124701.P11665208625432340993

/-!
# A124702: Number of base 9 circular n-digit numbers with adjacent digits differing by 1 or less.

The programs for A124702, there is no canonical definition to state claims against.
-/

/-! ## A124702.P12282186797969376241

`A276562(A167499(n+6)+4)`
-/

namespace A124702.P12282186797969376241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276562 (A167499 (n + 6) + 4).toNat

end

end A124702.P12282186797969376241

/-! ## A124702.P4526968709107548103

`A276562(A000124(n+7)+8)`
-/

namespace A124702.P4526968709107548103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276562 (A000124 (n + 7) + 8).toNat

end

end A124702.P4526968709107548103

/-! ## A124702.P14183501527382721776

`A276562(A034856(n+6)+11)`
-/

namespace A124702.P14183501527382721776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276562 (A034856 (n + 6) + 11).toNat

end

end A124702.P14183501527382721776

/-! ## A124702.P7279666059171565437

`A276562(eq[7, A004736(n+1)]+16)`
-/

namespace A124702.P7279666059171565437
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276562 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 16)

end

end A124702.P7279666059171565437

/-! ## A124702.P5145144237172921160

`A276562(A000217(n+8)-(n-1))`
-/

namespace A124702.P5145144237172921160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276562 (A000217 (n + 8) - ((n : ℤ) - 1)).toNat

end

end A124702.P5145144237172921160

/-!
# A124703: Number of base 10 circular n-digit numbers with adjacent digits differing by 1 or less.

The programs for A124703, there is no canonical definition to state claims against.
-/

/-! ## A124703.P4386829403960050349

`A276562(A000124(n+8)+9)`
-/

namespace A124703.P4386829403960050349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276562 (A000124 (n + 8) + 9).toNat

end

end A124703.P4386829403960050349

/-! ## A124703.P7102099637964218176

`A276562(A000217(n+8)+10)`
-/

namespace A124703.P7102099637964218176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276562 (A000217 (n + 8) + 10).toNat

end

end A124703.P7102099637964218176

/-! ## A124703.P17830147186813103799

`A276562(eq[9, A002260(n+1)]+2)`
-/

namespace A124703.P17830147186813103799
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276562 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2)

end

end A124703.P17830147186813103799

/-! ## A124703.P11754176563916922061

`A020639(A339709(n))*A124705(n)-A124707(n)`
-/

namespace A124703.P11754176563916922061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A339709 n).toNat * A124705 n - A124707 n

end

end A124703.P11754176563916922061

/-!
# A124704: Number of base 11 circular n-digit numbers with adjacent digits differing by 1 or less.

The programs for A124704, there is no canonical definition to state claims against.
-/

/-! ## A124704.P6217377883475618050

`A276562(A167499(n+8)+6)`
-/

namespace A124704.P6217377883475618050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276562 (A167499 (n + 8) + 6).toNat

end

end A124704.P6217377883475618050

/-! ## A124704.P10370532531545519612

`A276562(A179865(n+11)-(n-1))`
-/

namespace A124704.P10370532531545519612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276562 (A179865 (n + 11) - ((n : ℤ) - 1)).toNat

end

end A124704.P10370532531545519612

/-! ## A124704.P10331840126410388932

`A000265(A124703(n)+A002426(n))`
-/

namespace A124704.P10331840126410388932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A124703 n + A002426 n).toNat

end

end A124704.P10331840126410388932

/-! ## A124704.P1209366551528009448

`A124719(n)%A008597(A002426(n))`
-/

namespace A124704.P1209366551528009448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A124719 n) (A008597 (A002426 n).toNat)

end

end A124704.P1209366551528009448

/-! ## A124704.P332229493623610071

`A000265(A124703(n)+A005213(2*n))`
-/

namespace A124704.P332229493623610071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A124703 n + A005213 (2 * n)).toNat

end

end A124704.P332229493623610071

/-!
# A124705: Number of base 12 circular n-digit numbers with adjacent digits differing by 1 or less.

The programs for A124705, there is no canonical definition to state claims against.
-/

/-! ## A124705.P6449069112194595553

`A276562(A000217(n+10)+12)`
-/

namespace A124705.P6449069112194595553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276562 (A000217 (n + 10) + 12).toNat

end

end A124705.P6449069112194595553

/-! ## A124705.P3576365927908286779

`A124704(n)+A014682(A124704(n)-A124702(n))`
-/

namespace A124705.P3576365927908286779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124704 n + A014682 (A124704 n - A124702 n).toNat

end

end A124705.P3576365927908286779

/-! ## A124705.P14260228217411683671

`A124704(n)+A014682(A124706(n)-A124704(n))`
-/

namespace A124705.P14260228217411683671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124704 n + A014682 (A124706 n - A124704 n).toNat

end

end A124705.P14260228217411683671

/-! ## A124705.P11195329954278707052

`A124706(n)-A014682(A124708(n)-A124706(n))`
-/

namespace A124705.P11195329954278707052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124706 n - A014682 (A124708 n - A124706 n).toNat

end

end A124705.P11195329954278707052

/-!
# A124706: Number of base 13 circular n-digit numbers with adjacent digits differing by 1 or less.

The programs for A124706, there is no canonical definition to state claims against.
-/

/-! ## A124706.P6761390998681681932

`A276562(A000124(n+11)+12)`
-/

namespace A124706.P6761390998681681932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276562 (A000124 (n + 11) + 12).toNat

end

end A124706.P6761390998681681932

/-! ## A124706.P4393128441103595695

`(A124707(n)+A124705(n))/A020639(2*A052551(2*n))`
-/

namespace A124706.P4393128441103595695
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A124707 n + A124705 n : ℚ) / (A020639 (2 * A052551 (2 * n)).toNat : ℚ)

end

end A124706.P4393128441103595695

/-! ## A124706.P3926112460654558075

`(A124707(n)+A124705(n))/A020639(A339709(n))`
-/

namespace A124706.P3926112460654558075
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A124707 n + A124705 n : ℚ) / (A020639 (A339709 n).toNat : ℚ)

end

end A124706.P3926112460654558075

/-! ## A124706.P15838226841967818085

`A000265(A124705(n)+A002426(n))`
-/

namespace A124706.P15838226841967818085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A124705 n + A002426 n).toNat

end

end A124706.P15838226841967818085

/-! ## A124706.P17899339799289148431

`A124783(n)%A008597(A002426(n))`
-/

namespace A124706.P17899339799289148431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A124783 n) (A008597 (A002426 n).toNat)

end

end A124706.P17899339799289148431

/-!
# A124707: Number of base 14 circular n-digit numbers with adjacent digits differing by 1 or less.

The programs for A124707, there is no canonical definition to state claims against.
-/

/-! ## A124707.P15115385082555550015

`A276562(A000124(n+12)+13)`
-/

namespace A124707.P15115385082555550015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276562 (A000124 (n + 12) + 13).toNat

end

end A124707.P15115385082555550015

/-! ## A124707.P2679022199672777329

`A124706(n)+A014682(A124706(n)-A124704(n))`
-/

namespace A124707.P2679022199672777329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124706 n + A014682 (A124706 n - A124704 n).toNat

end

end A124707.P2679022199672777329

/-! ## A124707.P2144153250379437995

`A124706(n)+A014682(A124708(n)-A124706(n))`
-/

namespace A124707.P2144153250379437995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124706 n + A014682 (A124708 n - A124706 n).toNat

end

end A124707.P2144153250379437995

/-! ## A124707.P7897470261672404267

`A124708(n)-A014682(A124710(n)-A124708(n))`
-/

namespace A124707.P7897470261672404267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124708 n - A014682 (A124710 n - A124708 n).toNat

end

end A124707.P7897470261672404267

/-!
# A124708: Number of base 15 circular n-digit numbers with adjacent digits differing by 1 or less.

The programs for A124708, there is no canonical definition to state claims against.
-/

/-! ## A124708.P13586118689118258798

`A124709(n)+A069517(A272566(n))-A002426(n)`
-/

namespace A124708.P13586118689118258798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124709 n + (A069517 (A272566 n).toNat - A002426 n)

end

end A124708.P13586118689118258798

/-! ## A124708.P3548168076883295610

`A008683(A288162(n+1))+A124709(n)-A002426(n)`
-/

namespace A124708.P3548168076883295610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A288162 (n + 1)).toNat + (A124709 n - A002426 n)

end

end A124708.P3548168076883295610

/-! ## A124708.P4180442951919893832

`(A124710(n)+A000265(A124706(n)))/2`
-/

namespace A124708.P4180442951919893832
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A124710 n + A000265 (A124706 n).toNat : ℚ) / 2

end

end A124708.P4180442951919893832

/-! ## A124708.P3195929256399968389

`A000265(A124707(n)+A002426(n))`
-/

namespace A124708.P3195929256399968389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A124707 n + A002426 n).toNat

end

end A124708.P3195929256399968389

/-! ## A124708.P12713825398473680761

`A000265(A124709(n)+A124707(n))`
-/

namespace A124708.P12713825398473680761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A124709 n + A124707 n).toNat

end

end A124708.P12713825398473680761

/-!
# A124709: Number of base 16 circular n-digit numbers with adjacent digits differing by 1 or less.

The programs for A124709, there is no canonical definition to state claims against.
-/

/-! ## A124709.P11218096624974519414

`A124708(n)+A014682(A124708(n)-A124706(n))`
-/

namespace A124709.P11218096624974519414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124708 n + A014682 (A124708 n - A124706 n).toNat

end

end A124709.P11218096624974519414

/-! ## A124709.P17934587149550034345

`A124708(n)+A014682(A124710(n)-A124708(n))`
-/

namespace A124709.P17934587149550034345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124708 n + A014682 (A124710 n - A124708 n).toNat

end

end A124709.P17934587149550034345

/-! ## A124709.P8513512986538642849

`A124710(n)-A014682(A124712(n)-A124710(n))`
-/

namespace A124709.P8513512986538642849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124710 n - A014682 (A124712 n - A124710 n).toNat

end

end A124709.P8513512986538642849

/-! ## A124709.P290540210727901450

`A020639(A339709(n))*A124707(n)-A124705(n)`
-/

namespace A124709.P290540210727901450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A339709 n).toNat * A124707 n - A124705 n

end

end A124709.P290540210727901450

/-! ## A124709.P16162337510623088154

`A124704(n)+A014682(A124714(n)-A124704(n))`
-/

namespace A124709.P16162337510623088154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124704 n + A014682 (A124714 n - A124704 n).toNat

end

end A124709.P16162337510623088154

/-!
# A124710: Number of base 17 circular n-digit numbers with adjacent digits differing by 1 or less.

The programs for A124710, there is no canonical definition to state claims against.
-/

/-! ## A124710.P8524475515477598887

`(A124709(n)+A002426(n))/A100762(A100759(n+1))`
-/

namespace A124710.P8524475515477598887
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A124709 n + A002426 n : ℚ) / (A100762 (A100759 (n + 1)).toNat : ℚ)

end

end A124710.P8524475515477598887

/-! ## A124710.P4184287065057425538

`A002426(n)+A124709(n)-A069517(A272566(n))`
-/

namespace A124710.P4184287065057425538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002426 n + (A124709 n - A069517 (A272566 n).toNat)

end

end A124710.P4184287065057425538

/-! ## A124710.P7980332931587596462

`A002426(n)+A124709(n)-A008683(A288162(n+1))`
-/

namespace A124710.P7980332931587596462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002426 n + (A124709 n - A008683 (A288162 (n + 1)).toNat)

end

end A124710.P7980332931587596462

/-! ## A124710.P23516640066813339

`A020639(A233928(n+1))*A124708(n)-A124706(n)`
-/

namespace A124710.P23516640066813339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A233928 (n + 1)).toNat * A124708 n - A124706 n

end

end A124710.P23516640066813339

/-! ## A124710.P11333142138866148164

`A000265(A124709(n)+A002426(n))`
-/

namespace A124710.P11333142138866148164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A124709 n + A002426 n).toNat

end

end A124710.P11333142138866148164

/-!
# A124711: Number of base 18 circular n-digit numbers with adjacent digits differing by 1 or less.

The programs for A124711, there is no canonical definition to state claims against.
-/

/-! ## A124711.P17300258223900333956

`A124710(n)+A014682(A124710(n)-A124708(n))`
-/

namespace A124711.P17300258223900333956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124710 n + A014682 (A124710 n - A124708 n).toNat

end

end A124711.P17300258223900333956

/-! ## A124711.P5218459353060668918

`A124710(n)+A014682(A124712(n)-A124710(n))`
-/

namespace A124711.P5218459353060668918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124710 n + A014682 (A124712 n - A124710 n).toNat

end

end A124711.P5218459353060668918

/-! ## A124711.P885551674896072259

`A124712(n)-A014682(A124714(n)-A124712(n))`
-/

namespace A124711.P885551674896072259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124712 n - A014682 (A124714 n - A124712 n).toNat

end

end A124711.P885551674896072259

/-! ## A124711.P17601048958652562305

`A124706(n)+A014682(A124716(n)-A124706(n))`
-/

namespace A124711.P17601048958652562305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124706 n + A014682 (A124716 n - A124706 n).toNat

end

end A124711.P17601048958652562305

/-! ## A124711.P13860513249490308659

`A124707(n)+A014682(A124715(n)-A124707(n))`
-/

namespace A124711.P13860513249490308659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124707 n + A014682 (A124715 n - A124707 n).toNat

end

end A124711.P13860513249490308659

/-!
# A124712: Number of base 19 circular n-digit numbers with adjacent digits differing by 1 or less.

The programs for A124712, there is no canonical definition to state claims against.
-/

/-! ## A124712.P15552322259498881676

`A000265(A124711(n)+A002426(n))`
-/

namespace A124712.P15552322259498881676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A124711 n + A002426 n).toNat

end

end A124712.P15552322259498881676

/-! ## A124712.P13898169942248459057

`A000265(A124711(n)+A005213(2*n))`
-/

namespace A124712.P13898169942248459057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A124711 n + A005213 (2 * n)).toNat

end

end A124712.P13898169942248459057

/-! ## A124712.P610201184612675160

`A000265(2*A124716(n)-A124726(n))`
-/

namespace A124712.P610201184612675160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (2 * A124716 n - A124726 n).toNat

end

end A124712.P610201184612675160

/-! ## A124712.P17718513430478092373

`A000265(A124711(n)+2*A097861(n)+1)`
-/

namespace A124712.P17718513430478092373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A124711 n + (2 * A097861 n + 1)).toNat

end

end A124712.P17718513430478092373

/-! ## A124712.P14038427396962780697

`A000265(A124711(n)+2*A257520(n)-1)`
-/

namespace A124712.P14038427396962780697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A124711 n + (2 * A257520 n - 1)).toNat

end

end A124712.P14038427396962780697

/-!
# A124713: Number of base 20 circular n-digit numbers with adjacent digits differing by 1 or less.

The programs for A124713, there is no canonical definition to state claims against.
-/

/-! ## A124713.P17736512913721572086

`A124712(n)+A014682(A124712(n)-A124710(n))`
-/

namespace A124713.P17736512913721572086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124712 n + A014682 (A124712 n - A124710 n).toNat

end

end A124713.P17736512913721572086

/-! ## A124713.P7987501241842597371

`A124712(n)+A014682(A124714(n)-A124712(n))`
-/

namespace A124713.P7987501241842597371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124712 n + A014682 (A124714 n - A124712 n).toNat

end

end A124713.P7987501241842597371

/-! ## A124713.P12477699153520679897

`A124714(n)-A014682(A124716(n)-A124714(n))`
-/

namespace A124713.P12477699153520679897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124714 n - A014682 (A124716 n - A124714 n).toNat

end

end A124713.P12477699153520679897

/-! ## A124713.P9104203906442545465

`A124709(n)+A014682(A124717(n)-A124709(n))`
-/

namespace A124713.P9104203906442545465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124709 n + A014682 (A124717 n - A124709 n).toNat

end

end A124713.P9104203906442545465

/-! ## A124713.P18162029064308568857

`A124710(n)+A014682(A124710(n)-A124704(n))`
-/

namespace A124713.P18162029064308568857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124710 n + A014682 (A124710 n - A124704 n).toNat

end

end A124713.P18162029064308568857

/-!
# A124714: Number of base 21 circular n-digit numbers with adjacent digits differing by 1 or less.

The programs for A124714, there is no canonical definition to state claims against.
-/

/-! ## A124714.P14177705122234728015

`2*A124710(n)-A000265(A124706(n))`
-/

namespace A124714.P14177705122234728015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A124710 n - A000265 (A124706 n).toNat

end

end A124714.P14177705122234728015

/-! ## A124714.P14169309088123267113

`A000265(A124713(n)+A002426(n))`
-/

namespace A124714.P14169309088123267113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A124713 n + A002426 n).toNat

end

end A124714.P14169309088123267113

/-! ## A124714.P9537504640292905558

`A000265(A124713(n)+A005213(2*n))`
-/

namespace A124714.P9537504640292905558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A124713 n + A005213 (2 * n)).toNat

end

end A124714.P9537504640292905558

/-! ## A124714.P2774898108043348137

`A000265(A124713(n)+2*A097861(n)+1)`
-/

namespace A124714.P2774898108043348137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A124713 n + (2 * A097861 n + 1)).toNat

end

end A124714.P2774898108043348137

/-! ## A124714.P18116754992958205404

`A000265(A124713(n)+2*A257520(n)-1)`
-/

namespace A124714.P18116754992958205404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A124713 n + (2 * A257520 n - 1)).toNat

end

end A124714.P18116754992958205404

/-!
# A124715: Number of base 22 circular n-digit numbers with adjacent digits differing by 1 or less.

The programs for A124715, there is no canonical definition to state claims against.
-/

/-! ## A124715.P14669947095152162841

`A124714(n)+A014682(A124714(n)-A124712(n))`
-/

namespace A124715.P14669947095152162841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124714 n + A014682 (A124714 n - A124712 n).toNat

end

end A124715.P14669947095152162841

/-! ## A124715.P7798397648068741918

`A124714(n)+A014682(A124716(n)-A124714(n))`
-/

namespace A124715.P7798397648068741918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124714 n + A014682 (A124716 n - A124714 n).toNat

end

end A124715.P7798397648068741918

/-! ## A124715.P12463658085010197121

`A124711(n)+A014682(A124719(n)-A124711(n))`
-/

namespace A124715.P12463658085010197121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124711 n + A014682 (A124719 n - A124711 n).toNat

end

end A124715.P12463658085010197121

/-! ## A124715.P13779555608584752454

`A124712(n)+A014682(A124712(n)-A124706(n))`
-/

namespace A124715.P13779555608584752454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124712 n + A014682 (A124712 n - A124706 n).toNat

end

end A124715.P13779555608584752454

/-! ## A124715.P3468712554355327939

`A124713(n)+A014682(A124713(n)-A124709(n))`
-/

namespace A124715.P3468712554355327939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124713 n + A014682 (A124713 n - A124709 n).toNat

end

end A124715.P3468712554355327939

/-!
# A124716: Number of base 23 circular n-digit numbers with adjacent digits differing by 1 or less.

The programs for A124716, there is no canonical definition to state claims against.
-/

/-! ## A124716.P11386252662625786462

`A000265(A124715(n)+A002426(n))`
-/

namespace A124716.P11386252662625786462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A124715 n + A002426 n).toNat

end

end A124716.P11386252662625786462

/-! ## A124716.P1020883097177748977

`A000265(A124715(n)+A005213(2*n))`
-/

namespace A124716.P1020883097177748977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A124715 n + A005213 (2 * n)).toNat

end

end A124716.P1020883097177748977

/-! ## A124716.P8401338188422516734

`A000265(2*A124712(n)-A124708(n))`
-/

namespace A124716.P8401338188422516734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (2 * A124712 n - A124708 n).toNat

end

end A124716.P8401338188422516734

/-! ## A124716.P14492805014333137525

`A000265(A124715(n)+2*A097861(n)+1)`
-/

namespace A124716.P14492805014333137525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A124715 n + (2 * A097861 n + 1)).toNat

end

end A124716.P14492805014333137525

/-! ## A124716.P17901507397371386523

`A000265(A124715(n)+2*A257520(n)-1)`
-/

namespace A124716.P17901507397371386523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A124715 n + (2 * A257520 n - 1)).toNat

end

end A124716.P17901507397371386523

/-!
# A124717: Number of base 24 circular n-digit numbers with adjacent digits differing by 1 or less.

The programs for A124717, there is no canonical definition to state claims against.
-/

/-! ## A124717.P3491191566728517608

`A124716(n)+A014682(A124716(n)-A124714(n))`
-/

namespace A124717.P3491191566728517608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124716 n + A014682 (A124716 n - A124714 n).toNat

end

end A124717.P3491191566728517608

/-! ## A124717.P5281396288694542470

`A124714(n)+A014682(A124714(n)-A124708(n))`
-/

namespace A124717.P5281396288694542470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124714 n + A014682 (A124714 n - A124708 n).toNat

end

end A124717.P5281396288694542470

/-! ## A124717.P7764548049055483580

`A124715(n)+A014682(A124715(n)-A124711(n))`
-/

namespace A124717.P7764548049055483580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124715 n + A014682 (A124715 n - A124711 n).toNat

end

end A124717.P7764548049055483580

/-! ## A124717.P658880533347646015

`A124714(n)+A014682(A124726(n)-A124714(n))`
-/

namespace A124717.P658880533347646015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124714 n + A014682 (A124726 n - A124714 n).toNat

end

end A124717.P658880533347646015

/-! ## A124717.P14986041224543236579

`A124715(n)+A014682(A124719(n)-A124715(n))`
-/

namespace A124717.P14986041224543236579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124715 n + A014682 (A124719 n - A124715 n).toNat

end

end A124717.P14986041224543236579

/-!
# A124718: Number of base 25 circular n-digit numbers with adjacent digits differing by 1 or less.

The programs for A124718, there is no canonical definition to state claims against.
-/

/-! ## A124718.P6437642169295286312

`A000265(A124717(n)+A002426(n))`
-/

namespace A124718.P6437642169295286312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A124717 n + A002426 n).toNat

end

end A124718.P6437642169295286312

/-! ## A124718.P1922180657132979605

`(A124716(n)+A000265(A124726(n)))/2`
-/

namespace A124718.P1922180657132979605
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A124716 n + A000265 (A124726 n).toNat : ℚ) / 2

end

end A124718.P1922180657132979605

/-! ## A124718.P17891448949777120737

`A000265((A124719(n)+A124717(n))/2)`
-/

namespace A124718.P17891448949777120737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (SequenceMachineLib.roundAway ((A124719 n + A124717 n : ℚ) / 2)).toNat

end

end A124718.P17891448949777120737

/-! ## A124718.P10607849798393812590

`(A124714(n)+A000265(A124784(n)))/2`
-/

namespace A124718.P10607849798393812590
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A124714 n + A000265 (A124784 n).toNat : ℚ) / 2

end

end A124718.P10607849798393812590

/-! ## A124718.P11576246136691763886

`A000265((A124783(n)+A124715(n))/2)`
-/

namespace A124718.P11576246136691763886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (SequenceMachineLib.roundAway ((A124783 n + A124715 n : ℚ) / 2)).toNat

end

end A124718.P11576246136691763886

/-!
# A124719: Number of base 26 circular n-digit numbers with adjacent digits differing by 1 or less.

The programs for A124719, there is no canonical definition to state claims against.
-/

/-! ## A124719.P11271409131975290970

`A124726(n)-A014682(A124784(n)-A124726(n))`
-/

namespace A124719.P11271409131975290970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124726 n - A014682 (A124784 n - A124726 n).toNat

end

end A124719.P11271409131975290970

/-! ## A124719.P4449407577082377101

`A124714(n)+A014682(A124714(n)-A124704(n))`
-/

namespace A124719.P4449407577082377101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124714 n + A014682 (A124714 n - A124704 n).toNat

end

end A124719.P4449407577082377101

/-! ## A124719.P8892021711711643412

`A124715(n)+A014682(A124715(n)-A124707(n))`
-/

namespace A124719.P8892021711711643412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124715 n + A014682 (A124715 n - A124707 n).toNat

end

end A124719.P8892021711711643412

/-! ## A124719.P6888717218022789105

`A124716(n)+A014682(A124716(n)-A124710(n))`
-/

namespace A124719.P6888717218022789105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124716 n + A014682 (A124716 n - A124710 n).toNat

end

end A124719.P6888717218022789105

/-! ## A124719.P7387301920721304704

`A124717(n)+A014682(A124717(n)-A124713(n))`
-/

namespace A124719.P7387301920721304704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124717 n + A014682 (A124717 n - A124713 n).toNat

end

end A124719.P7387301920721304704

/-!
# A124720: Number of ternary Lyndon words of length n with exactly two 1's.

The programs for A124720, the canonical program `A124720.P9080445122816140364` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A124720 has offset 3).

The definition of A124720 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A124720.P9080445122816140364

`4*a(n-1)-2*a(n-2)-8*a(n-3)+8*a(n-4)` with `a(0)=2, a(1)=5, a(2)=16, a(3)=38`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A124720

/-- `4*a(n-1)-2*a(n-2)-8*a(n-3)+8*a(n-4)` -/
def P9080445122816140364.Spec : Prop :=
  ∀ n, P9080445122816140364.a n = A124720 (n + 3)

theorem P9080445122816140364.correct : P9080445122816140364.Spec := by
  intro n
  simp only [A124720, Nat.add_sub_cancel]

end A124720

/-! ## A124720.P3112301817697232340

`A007179(n+1)+A001787(n+1)`
-/

namespace A124720.P3112301817697232340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007179 (n + 1) + A001787 (n + 1)

end

end A124720.P3112301817697232340

namespace A124720

/-- `A007179(n+1)+A001787(n+1)` -/
def P3112301817697232340.Spec : Prop :=
  ∀ n, P3112301817697232340.a n = A124720 (n + 3)

end A124720

/-! ## A124720.P1114300841324827376

`A178945(n+2)-A077957(n+1)`
-/

namespace A124720.P1114300841324827376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178945 (n + 2) - A077957 (n + 1)

end

end A124720.P1114300841324827376

namespace A124720

/-- `A178945(n+2)-A077957(n+1)` -/
def P1114300841324827376.Spec : Prop :=
  ∀ n, P1114300841324827376.a n = A124720 (n + 3)

end A124720

/-! ## A124720.P9757135163005150011

`A178945(n+2)-A131575(n+2)`
-/

namespace A124720.P9757135163005150011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178945 (n + 2) - A131575 (n + 2)

end

end A124720.P9757135163005150011

namespace A124720

/-- `A178945(n+2)-A131575(n+2)` -/
def P9757135163005150011.Spec : Prop :=
  ∀ n, P9757135163005150011.a n = A124720 (n + 3)

end A124720

/-! ## A124720.P8486505899685797791

`A171647(2*n+1)+A014236(n+1)/2`
-/

namespace A124720.P8486505899685797791
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A171647 (2 * n + 1) : ℚ) + (A014236 (n + 1) : ℚ) / 2

end

end A124720.P8486505899685797791

namespace A124720

/-- `A171647(2*n+1)+A014236(n+1)/2` -/
def P8486505899685797791.Spec : Prop :=
  ∀ n, P8486505899685797791.a n = (A124720 (n + 3) : ℚ)

end A124720

/-! ## A124720.P9430320318328497497

`A001445(n+2)+A079859(n+4)-A001445(n+3)`
-/

namespace A124720.P9430320318328497497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001445 (n + 2) + (A079859 (n + 4) - A001445 (n + 3))

end

end A124720.P9430320318328497497

namespace A124720

/-- `A001445(n+2)+A079859(n+4)-A001445(n+3)` -/
def P9430320318328497497.Spec : Prop :=
  ∀ n, P9430320318328497497.a n = A124720 (n + 3)

end A124720

/-! ## A124720.P2999383854587878982

`ogf((2-3x)/(1-4x+2x^2+8x^3-8x^4))`
-/

namespace A124720.P2999383854587878982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -3] [1, -4, 2, 8, -8] n

end

end A124720.P2999383854587878982

namespace A124720

/-- `ogf((2-3x)/(1-4x+2x^2+8x^3-8x^4))` -/
def P2999383854587878982.Spec : Prop :=
  ∀ n, P2999383854587878982.a n = A124720 (n + 3)

end A124720

/-! ## A124720.P9550378714722809974

`Δ[A036289(n)-A016116(n)]`
-/

namespace A124720.P9550378714722809974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036289 n - A016116 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A124720.P9550378714722809974

namespace A124720

/-- `Δ[A036289(n)-A016116(n)]` -/
def P9550378714722809974.Spec : Prop :=
  ∀ n, P9550378714722809974.a n = A124720 (n + 3)

end A124720

/-! ## A124720.P8881981650055300088

`Δ[n*A000079(n)-A016116(n)]`
-/

namespace A124720.P8881981650055300088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A000079 n - A016116 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A124720.P8881981650055300088

namespace A124720

/-- `Δ[n*A000079(n)-A016116(n)]` -/
def P8881981650055300088.Spec : Prop :=
  ∀ n, P8881981650055300088.a n = A124720 (n + 3)

end A124720

/-! ## A124720.P4858868115908624672

`A001787(n+2)-A178945(n+2)`
-/

namespace A124720.P4858868115908624672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001787 (n + 2) - A178945 (n + 2)

end

end A124720.P4858868115908624672

namespace A124720

/-- `A001787(n+2)-A178945(n+2)` -/
def P4858868115908624672.Spec : Prop :=
  ∀ n, P4858868115908624672.a n = A124720 (n + 3)

end A124720

/-! ## A124720.P16901167791900314474

`Δ[A001787(n+1)-A005418(n+2)]`
-/

namespace A124720.P16901167791900314474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001787 (n + 1) - A005418 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A124720.P16901167791900314474

namespace A124720

/-- `Δ[A001787(n+1)-A005418(n+2)]` -/
def P16901167791900314474.Spec : Prop :=
  ∀ n, P16901167791900314474.a n = A124720 (n + 3)

end A124720

/-! ## A124720.P16427432686730239312

`Δ[A001787(n+1)-A056326(n+2)]`
-/

namespace A124720.P16427432686730239312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001787 (n + 1) - A056326 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A124720.P16427432686730239312

namespace A124720

/-- `Δ[A001787(n+1)-A056326(n+2)]` -/
def P16427432686730239312.Spec : Prop :=
  ∀ n, P16427432686730239312.a n = A124720 (n + 3)

end A124720

/-! ## A124720.P7865773678610966986

`Δ[(n+1)*A011782(n+1)-A005418(n+2)]`
-/

namespace A124720.P7865773678610966986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A011782 (n + 1) - A005418 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A124720.P7865773678610966986

namespace A124720

/-- `Δ[(n+1)*A011782(n+1)-A005418(n+2)]` -/
def P7865773678610966986.Spec : Prop :=
  ∀ n, P7865773678610966986.a n = A124720 (n + 3)

end A124720

/-! ## A124720.P3548831222766495230

`A123223(∑[n+3]+5)`
-/

namespace A124720.P3548831222766495230
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123223 (∑ j ∈ Finset.range (n + 1), f1 j + 5)

end

end A124720.P3548831222766495230

namespace A124720

/-- `A123223(∑[n+3]+5)` -/
def P3548831222766495230.Spec : Prop :=
  ∀ n, P3548831222766495230.a n = A124720 (n + 3)

end A124720

/-!
# A124721: Number of ternary Lyndon words with exactly three 1's.

The programs for A124721, there is no canonical definition to state claims against.
-/

/-! ## A124721.P7102912202644894664

`A123223(A167614(n+3))`
-/

namespace A124721.P7102912202644894664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123223 (A167614 (n + 3)).toNat

end

end A124721.P7102912202644894664

/-! ## A124721.P13526795920507655509

`A123223(A155212(n)+11)`
-/

namespace A124721.P13526795920507655509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123223 (A155212 n + 11).toNat

end

end A124721.P13526795920507655509

/-! ## A124721.P2476602999664729905

`A123223(A056000(n)+13)`
-/

namespace A124721.P2476602999664729905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123223 (A056000 n + 13).toNat

end

end A124721.P2476602999664729905

/-! ## A124721.P11338818075827999896

`record[A123223(A167499(n)-2)]`
-/

namespace A124721.P11338818075827999896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123223 (A167499 n - 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A124721.P11338818075827999896

/-! ## A124721.P7835629783501595487

`record[A123223(A055998(n)+6)]`
-/

namespace A124721.P7835629783501595487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123223 (A055998 n + 6).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A124721.P7835629783501595487

/-! ## A124721.P2767620487682774826

`A123223(A167499(n+3)-2)`
-/

namespace A124721.P2767620487682774826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123223 (A167499 (n + 3) - 2).toNat

end

end A124721.P2767620487682774826

/-! ## A124721.P11618741987536422533

`record[A123223(A167614(-xor(n, -1)))]`
-/

namespace A124721.P11618741987536422533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123223 (A167614 (-Int.xor (n : ℤ) (-1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A124721.P11618741987536422533

/-! ## A124721.P4531691707416535511

`A123223(A161680(n+6)-(n+2))`
-/

namespace A124721.P4531691707416535511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123223 (A161680 (n + 6) - (n + 2 : ℤ)).toNat

end

end A124721.P4531691707416535511

/-! ## A124721.P15223590214026247594

`record[A123223(A167614(A008619(n)))]`
-/

namespace A124721.P15223590214026247594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123223 (A167614 (A008619 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A124721.P15223590214026247594

/-!
# A124722: Number of ternary Lyndon words with exactly four 1's.

The programs for A124722, there is no canonical definition to state claims against.
-/

/-! ## A124722.P10172393088608464623

`A123223(A145018(n+6))`
-/

namespace A124722.P10172393088608464623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123223 (A145018 (n + 6)).toNat

end

end A124722.P10172393088608464623

/-! ## A124722.P11228925969828107059

`A123223(Δ[A264443(n)]+8)`
-/

namespace A124722.P11228925969828107059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123223 (f1 (n + 1) - f1 n + 8).toNat

end

end A124722.P11228925969828107059

/-! ## A124722.P2359835017323541126

`A123223(A166136(n+4)-2)`
-/

namespace A124722.P2359835017323541126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123223 (A166136 (n + 4) - 2).toNat

end

end A124722.P2359835017323541126

/-! ## A124722.P4955128114217506529

`A123223(A000096(n+4)+5)`
-/

namespace A124722.P4955128114217506529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123223 (A000096 (n + 4) + 5).toNat

end

end A124722.P4955128114217506529

/-! ## A124722.P1006510396292029428

`A123223(A161680(n+6)+4)`
-/

namespace A124722.P1006510396292029428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123223 (A161680 (n + 6) + 4).toNat

end

end A124722.P1006510396292029428

/-! ## A124722.P2376313694765509561

`A123223(A052905(n+3)-(n-3))`
-/

namespace A124722.P2376313694765509561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123223 (A052905 (n + 3) - ((n : ℤ) - 3)).toNat

end

end A124722.P2376313694765509561

/-!
# A124723: Number of ternary Lyndon words with exactly five 1's.

The programs for A124723, there is no canonical definition to state claims against.
-/

/-! ## A124723.P1749439419814723581

`A123223(A167499(n+5))`
-/

namespace A124723.P1749439419814723581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123223 (A167499 (n + 5)).toNat

end

end A124723.P1749439419814723581

/-! ## A124723.P3095094919398790054

`A123223(A167487(n+5)-2)`
-/

namespace A124723.P3095094919398790054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123223 (A167487 (n + 5) - 2).toNat

end

end A124723.P3095094919398790054

/-! ## A124723.P17565885552067563796

`A123223(A000124(n+6)+4)`
-/

namespace A124723.P17565885552067563796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123223 (A000124 (n + 6) + 4).toNat

end

end A124723.P17565885552067563796

/-! ## A124723.P14756776010853930697

`A123223(A000217(n+6)+5)`
-/

namespace A124723.P14756776010853930697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123223 (A000217 (n + 6) + 5).toNat

end

end A124723.P14756776010853930697

/-! ## A124723.P11466525447408338621

`A123223(A034856(n+5)+7)`
-/

namespace A124723.P11466525447408338621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123223 (A034856 (n + 5) + 7).toNat

end

end A124723.P11466525447408338621

/-!
# A124724: a(n) = (4/(n + 1)) * C(5*n, n).

The programs for A124724, there is no canonical definition to state claims against.
-/

/-! ## A124724.P13354009623342163209

`A334787(n)+A118971(round(sqrt(n²+1)))`
-/

namespace A124724.P13354009623342163209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334787 n + A118971 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

end

end A124724.P13354009623342163209

/-! ## A124724.P11898933168784503048

`4/(n+1)*A001449(n)`
-/

namespace A124724.P11898933168784503048
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  4 / (n + 1 : ℚ) * (A001449 n : ℚ)

end

end A124724.P11898933168784503048

/-! ## A124724.P10594286555500648315

`4*record[A009001(n)]*A002294(n)/(n+1)`
-/

namespace A124724.P10594286555500648315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009001 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  4 * ((f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A002294 n : ℚ) / (n + 1 : ℚ))

end

end A124724.P10594286555500648315

/-! ## A124724.P4888249519278954020

`4*C(5*n, n)/(n+1)`
-/

namespace A124724.P4888249519278954020
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  4 * ((Nat.choose (5 * n) n : ℚ) / (n + 1 : ℚ))

end

end A124724.P4888249519278954020

/-! ## A124724.P18119355033655339266

`ratio[A034385(n)]*A002294(n)`
-/

namespace A124724.P18119355033655339266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034385 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ) * (A002294 n : ℚ)

end

end A124724.P18119355033655339266

/-!
# A124725: Triangle read by rows: T(n,k) = binomial(n,k) + binomial(n,k+2) (0 <= k <= n).

The programs for A124725, the canonical program `A124725.P7594293503964547841` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A124725 has offset 0).

The definition of A124725 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A124725.P7594293503964547841

`A028326(n)-A131085(n)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A124725

/-- `A028326(n)-A131085(n)` -/
def P7594293503964547841.Spec : Prop :=
  ∀ n, P7594293503964547841.a n = A124725 n

theorem P7594293503964547841.correct : P7594293503964547841.Spec := by
  intro n
  simp only [A124725]

end A124725

/-! ## A124725.P2301393600432943495

`2*A007318(n)-A131085(n)`
-/

namespace A124725.P2301393600432943495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A007318 n - A131085 n

end

end A124725.P2301393600432943495

namespace A124725

/-- `2*A007318(n)-A131085(n)` -/
def P2301393600432943495.Spec : Prop :=
  ∀ n, P2301393600432943495.a n = A124725 n

end A124725

/-! ## A124725.P9408534681108434640

`A051601(n*A023532(n)+1)`
-/

namespace A124725.P9408534681108434640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051601 ((n : ℤ) * A023532 n + 1).toNat

end

end A124725.P9408534681108434640

namespace A124725

/-- `A051601(n*A023532(n)+1)` -/
def P9408534681108434640.Spec : Prop :=
  ∀ n, P9408534681108434640.a n = A124725 n

end A124725

/-! ## A124725.P12607345506364742580

`A051601(n+1)/A051340(n)`
-/

namespace A124725.P12607345506364742580
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051601 (n + 1) : ℚ) / (A051340 n : ℚ)

end

end A124725.P12607345506364742580

namespace A124725

/-- `A051601(n+1)/A051340(n)` -/
def P12607345506364742580.Spec : Prop :=
  ∀ n, P12607345506364742580.a n = (A124725 n : ℚ)

end A124725

/-! ## A124725.P14504334645136083791

`gcd(A051601(n+1), A132013(n))`
-/

namespace A124725.P14504334645136083791
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A051601 (n + 1)) (A132013 n)

end

end A124725.P14504334645136083791

namespace A124725

/-- `gcd(A051601(n+1), A132013(n))` -/
def P14504334645136083791.Spec : Prop :=
  ∀ n, (P14504334645136083791.a n : ℤ) = A124725 n

end A124725

/-! ## A124725.P656098863855611013

`A051601(gcd(n+1, A134402(n)))`
-/

namespace A124725.P656098863855611013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051601 (Int.gcd (n + 1 : ℤ) (A134402 n))

end

end A124725.P656098863855611013

namespace A124725

/-- `A051601(gcd(n+1, A134402(n)))` -/
def P656098863855611013.Spec : Prop :=
  ∀ n, P656098863855611013.a n = A124725 n

end A124725

/-! ## A124725.P14029126370776667820

`A051601((n+1)^Δ[A083920(n)])`
-/

namespace A124725.P14029126370776667820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083920 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051601 (SequenceMachineLib.roundAway ((n + 1 : ℚ) ^ (f1 (n + 1) - f1 n : ℤ))).toNat

end

end A124725.P14029126370776667820

namespace A124725

/-- `A051601((n+1)^Δ[A083920(n)])` -/
def P14029126370776667820.Spec : Prop :=
  ∀ n, P14029126370776667820.a n = A124725 n

end A124725

/-! ## A124725.P4735457138302520033

`A184049(n+1)+A007318(n)-A007318(n+1)`
-/

namespace A124725.P4735457138302520033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184049 (n + 1) + (A007318 n - A007318 (n + 1))

end

end A124725.P4735457138302520033

namespace A124725

/-- `A184049(n+1)+A007318(n)-A007318(n+1)` -/
def P4735457138302520033.Spec : Prop :=
  ∀ n, P4735457138302520033.a n = A124725 n

end A124725

/-! ## A124725.P4671209119675030716

`A051601(comp[∑[n]])-A051601(n)`
-/

namespace A124725.P4671209119675030716
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051601 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) - A051601 n

end

end A124725.P4671209119675030716

namespace A124725

/-- `A051601(comp[∑[n]])-A051601(n)` -/
def P4671209119675030716.Spec : Prop :=
  ∀ n, P4671209119675030716.a n = A124725 n

end A124725

/-! ## A124725.P14191855104563528620

`A028326(n)-A156644(∑[A035214(n)])`
-/

namespace A124725.P14191855104563528620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035214 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028326 n - A156644 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A124725.P14191855104563528620

namespace A124725

/-- `A028326(n)-A156644(∑[A035214(n)])` -/
def P14191855104563528620.Spec : Prop :=
  ∀ n, P14191855104563528620.a n = A124725 n

end A124725

/-! ## A124725.P2118751554030882315

`A159853(lt[1, A002262(n)])`
-/

namespace A124725.P2118751554030882315
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159853 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A124725.P2118751554030882315

namespace A124725

/-- `A159853(lt[1, A002262(n)])` -/
def P2118751554030882315.Spec : Prop :=
  ∀ n, P2118751554030882315.a n = A124725 n

end A124725

/-! ## A124725.P16551611387349441815

`A159853(lt[2, A002260(n+1)])`
-/

namespace A124725.P16551611387349441815
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159853 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A124725.P16551611387349441815

namespace A124725

/-- `A159853(lt[2, A002260(n+1)])` -/
def P16551611387349441815.Spec : Prop :=
  ∀ n, P16551611387349441815.a n = A124725 n

end A124725

/-! ## A124725.P17988040025647109416

`A159853(lt[3, A245093(n+1)])`
-/

namespace A124725.P17988040025647109416
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245093 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159853 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A124725.P17988040025647109416

namespace A124725

/-- `A159853(lt[3, A245093(n+1)])` -/
def P17988040025647109416.Spec : Prop :=
  ∀ n, P17988040025647109416.a n = A124725 n

end A124725

/-! ## A124725.P3505449918089040914

`A159853(lt[2, A004736(n+1)]+2)`
-/

namespace A124725.P3505449918089040914
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159853 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 2)

end

end A124725.P3505449918089040914

namespace A124725

/-- `A159853(lt[2, A004736(n+1)]+2)` -/
def P3505449918089040914.Spec : Prop :=
  ∀ n, P3505449918089040914.a n = A124725 n

end A124725

/-! ## A124725.P3333558230754783651

`A159853(A080036(A014132(n+1)))`
-/

namespace A124725.P3333558230754783651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159853 (A080036 (A014132 (n + 1)).toNat).toNat

end

end A124725.P3333558230754783651

namespace A124725

/-- `A159853(A080036(A014132(n+1)))` -/
def P3333558230754783651.Spec : Prop :=
  ∀ n, P3333558230754783651.a n = A124725 n

end A124725

/-! ## A124725.P1309767140369151284

`A159853(lt[A004736(n+1), A003056(n)])`
-/

namespace A124725.P1309767140369151284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159853 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A124725.P1309767140369151284

namespace A124725

/-- `A159853(lt[A004736(n+1), A003056(n)])` -/
def P1309767140369151284.Spec : Prop :=
  ∀ n, P1309767140369151284.a n = A124725 n

end A124725

/-!
# A124726: Number of base 27 circular n-digit numbers with adjacent digits differing by 1 or less.

The programs for A124726, there is no canonical definition to state claims against.
-/

/-! ## A124726.P15833874575928848705

`A000265(A124719(n)+A002426(n))`
-/

namespace A124726.P15833874575928848705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A124719 n + A002426 n).toNat

end

end A124726.P15833874575928848705

/-! ## A124726.P11120102275122667227

`A000265((A124783(n)+A124719(n))/2)`
-/

namespace A124726.P11120102275122667227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (SequenceMachineLib.roundAway ((A124783 n + A124719 n : ℚ) / 2)).toNat

end

end A124726.P11120102275122667227

/-! ## A124726.P8710627608936411636

`A000265(A124719(n)+2*A097861(n)+1)`
-/

namespace A124726.P8710627608936411636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A124719 n + (2 * A097861 n + 1)).toNat

end

end A124726.P8710627608936411636

/-! ## A124726.P15662808388075723045

`A000265(A124719(n)+2*A257520(n)-1)`
-/

namespace A124726.P15662808388075723045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A124719 n + (2 * A257520 n - 1)).toNat

end

end A124726.P15662808388075723045

/-! ## A124726.P16714682825365880102

`A000265(A124719(n)+∑[(1-n)*A167022(n)])`
-/

namespace A124726.P16714682825365880102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (n : ℤ)) * A167022 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A124719 n + ∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A124726.P16714682825365880102

/-!
# A124727: Triangle read by rows: T(n,k)=k*binomial(n-1,k-1)+binomial(n-1,k) (1<=k<=n).

The programs for A124727, there is no canonical definition to state claims against.
-/

/-! ## A124727.P4613532149745283115

`A128710(n)-A156644(n)`
-/

namespace A124727.P4613532149745283115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128710 n - A156644 n

end

end A124727.P4613532149745283115

/-! ## A124727.P5010642477247922995

`A206735(n+1)+A103406(n)`
-/

namespace A124727.P5010642477247922995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206735 (n + 1) + A103406 n

end

end A124727.P5010642477247922995

/-! ## A124727.P16715310846431177874

`A125026(n+1)-A216973(n)`
-/

namespace A124727.P16715310846431177874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125026 (n + 1) - A216973 n

end

end A124727.P16715310846431177874

/-! ## A124727.P4817732770322992327

`A141692(n)+A103450(comp[∑[n]])`
-/

namespace A124727.P4817732770322992327
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141692 n + A103450 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A124727.P4817732770322992327

/-! ## A124727.P13581634173439847902

`(A116666(n+1)+A110813(n))/2`
-/

namespace A124727.P13581634173439847902
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A116666 (n + 1) + A110813 n : ℚ) / 2

end

end A124727.P13581634173439847902

/-! ## A124727.P418997207404398360

`A103406(comp[∑[n]])-A093375(n+1)`
-/

namespace A124727.P418997207404398360
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103406 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) - A093375 (n + 1)

end

end A124727.P418997207404398360

/-! ## A124727.P1947689191639085202

`A103406(n)+A071919(A014132(n+1))`
-/

namespace A124727.P1947689191639085202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103406 n + A071919 (A014132 (n + 1)).toNat

end

end A124727.P1947689191639085202

/-! ## A124727.P11107829872058607497

`A128710(n)-A008482(A014132(n+1))`
-/

namespace A124727.P11107829872058607497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128710 n - A008482 (A014132 (n + 1)).toNat

end

end A124727.P11107829872058607497

/-! ## A124727.P1518751862378411521

`A135278(n)+A002262(n)*A007318(n)`
-/

namespace A124727.P1518751862378411521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135278 n + A002262 n * A007318 n

end

end A124727.P1518751862378411521

/-! ## A124727.P15470540813977568289

`A051601(n)+∏{d}[A034261(n+1), A014963(#)]`
-/

namespace A124727.P15470540813977568289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034261 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051601 n + ∏ d ∈ Nat.divisors (f1 n).natAbs, A014963 d

end

end A124727.P15470540813977568289

/-!
# A124728: Numbers k such that k, k+1, k+2 and k+3 are products of 4 primes.

The programs for A124728, there is no canonical definition to state claims against.
-/

/-! ## A124728.P16192215584103799842

`∩[A180150(n+1)-1, A180150(n+1)]`
-/

namespace A124728.P16192215584103799842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180150 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180150 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A124728.P16192215584103799842

/-! ## A124728.P964574659826629184

`filter[A045940(n+2), A065043(#)]`
-/

namespace A124728.P964574659826629184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045940 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A065043 (f1 j).toNat = 1) n)

end

end A124728.P964574659826629184

/-!
# A124730: Triangle, row sums = powers of 3.

The programs for A124730, there is no canonical definition to state claims against.
-/

/-! ## A124730.P2505153566341721526

`A019538(n+1)%A005496(A321331(n))`
-/

namespace A124730.P2505153566341721526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A019538 (n + 1)) (A005496 (A321331 n).toNat)

end

end A124730.P2505153566341721526

/-! ## A124730.P17648465325829778344

`A090582(A038722(n+1))%A005496(A321331(n))`
-/

namespace A124730.P17648465325829778344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A090582 (A038722 (n + 1)).toNat) (A005496 (A321331 n).toNat)

end

end A124730.P17648465325829778344

/-! ## A124730.P6825552045034986692

`A123937(A059268(n)^A300725(n+1)!)*A128119(n+1)`
-/

namespace A124730.P6825552045034986692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123937 (A059268 n ^ Nat.factorial (A300725 (n + 1)).toNat).toNat * A128119 (n + 1)

end

end A124730.P6825552045034986692

/-!
# A124731: Triangle, row sums = powers of 3, companion to A124730.

The programs for A124731, there is no canonical definition to state claims against.
-/

/-! ## A124731.P3575299015214344323

`A016116(A002262(n))*A140069(n+1)`
-/

namespace A124731.P3575299015214344323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 (A002262 n).toNat * A140069 (n + 1)

end

end A124731.P3575299015214344323

/-! ## A124731.P1356640017430422087

`A000188(A059268(n))*A140069(n+1)`
-/

namespace A124731.P1356640017430422087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (A059268 n).toNat * A140069 (n + 1)

end

end A124731.P1356640017430422087

/-! ## A124731.P8714464501392215497

`A016116(log2(A059268(n)))*A140069(n+1)`
-/

namespace A124731.P8714464501392215497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 (SequenceMachineLib.roundAway (Real.logb 2 (A059268 n : ℝ))).toNat * A140069 (n + 1)

end

end A124731.P8714464501392215497

/-! ## A124731.P16370409159504088859

`A106609(8*A140169(n))`
-/

namespace A124731.P16370409159504088859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106609 (8 * A140169 n).toNat

end

end A124731.P16370409159504088859

/-! ## A124731.P17201371345892928171

`A140169(n)%A002762(n)`
-/

namespace A124731.P17201371345892928171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A140169 n) (A002762 n)

end

end A124731.P17201371345892928171

/-!
# A124732: Triangle P*M, where P is the Pascal triangle written as an infinite lower triangular matrix and M is the infinite bidiagonal matrix with (1,2,1,2,...) in the main diagonal and (2,1,2,1,...) in the subdiagonal.

The programs for A124732, there is no canonical definition to state claims against.
-/

/-! ## A124732.P8995029553969971935

`A162590(A061579(n))+A133601(n)`
-/

namespace A124732.P8995029553969971935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162590 (A061579 n).toNat + A133601 n

end

end A124732.P8995029553969971935

/-! ## A124732.P8784424447512555929

`A162590(A038722(n+2))+A133601(n)`
-/

namespace A124732.P8784424447512555929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162590 (A038722 (n + 2)).toNat + A133601 n

end

end A124732.P8784424447512555929

/-! ## A124732.P379982966168210779

`A140182(n)+Δ[A162590(A061579(n))]`
-/

namespace A124732.P379982966168210779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162590 (A061579 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140182 n + (f1 (n + 1) - f1 n)

end

end A124732.P379982966168210779

/-! ## A124732.P12488569970609919580

`A140182(A187829(n+1))-Δ[A140183(n)]`
-/

namespace A124732.P12488569970609919580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140183 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140182 (A187829 (n + 1)).toNat - (f1 (n + 1) - f1 n)

end

end A124732.P12488569970609919580

/-!
# A124733: Triangle read by rows: row n is the first row of the matrix M[n]^(n-1), where M[n] is the n X n tridiagonal matrix with main diagonal (2,3,3,...) and super- and subdiagonals (1,1,1,...).

The programs for A124733, there is no canonical definition to state claims against.
-/

/-! ## A124733.P8613365116684049115

`2*A110165(n)-A126791(n)`
-/

namespace A124733.P8613365116684049115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A110165 n - A126791 n

end

end A124733.P8613365116684049115

/-! ## A124733.P1196958410501390871

`A110165(n)-A110165(n+1)%A110165(n)`
-/

namespace A124733.P1196958410501390871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110165 n - Int.tmod (A110165 (n + 1)) (A110165 n)

end

end A124733.P1196958410501390871

/-! ## A124733.P8196266762738892890

`A004277(A110165(n))-A126791(n)`
-/

namespace A124733.P8196266762738892890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A110165 n).toNat - A126791 n

end

end A124733.P8196266762738892890

/-!
# A124734: Table with all compositions sorted first by total, then by length and finally lexicographically.

The programs for A124734, there is no canonical definition to state claims against.
-/

/-! ## A124734.P10646671437417803291

`A124735(n+1)+1`
-/

namespace A124734.P10646671437417803291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124735 (n + 1) + 1

end

end A124734.P10646671437417803291

/-! ## A124734.P52020099242133296

`A337243(n+1)+A337259(n+1)-A296774(n+1)`
-/

namespace A124734.P52020099242133296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337243 (n + 1) + (A337259 (n + 1) - A296774 (n + 1))

end

end A124734.P52020099242133296

/-! ## A124734.P9824966605473507706

`A337259(A103754(n+2)+n)`
-/

namespace A124734.P9824966605473507706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337259 (A103754 (n + 2) + (n : ℤ)).toNat

end

end A124734.P9824966605473507706

/-! ## A124734.P10982454251387216681

`A337259(n+1)-A121373(A016754(n+2))`
-/

namespace A124734.P10982454251387216681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337259 (n + 1) - A121373 (A016754 (n + 2)).toNat

end

end A124734.P10982454251387216681

/-! ## A124734.P8975993527999826199

`A337259(A032548(n+1)*A167976(n+1))`
-/

namespace A124734.P8975993527999826199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337259 (A032548 (n + 1) * A167976 (n + 1)).toNat

end

end A124734.P8975993527999826199

/-!
# A124735: Table with all sequences of nonnegative integers sorted first by total plus length, then by length and finally lexicographically.

The programs for A124735, there is no canonical definition to state claims against.
-/

/-! ## A124735.P1813307221050663921

`A124734(n+1)-1`
-/

namespace A124735.P1813307221050663921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124734 (n + 1) - 1

end

end A124735.P1813307221050663921

/-! ## A124735.P15870656718928930486

`Δ[A124734(n)-(1-a(n-1))]` with `a(0)=1`
-/

namespace A124735.P15870656718928930486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A124734 n - (1 - f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A124735.P15870656718928930486

/-! ## A124735.P9326050663750891802

`A000378(A124734(n+1))`
-/

namespace A124735.P9326050663750891802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000378 (A124734 (n + 1)).toNat

end

end A124735.P9326050663750891802

/-! ## A124735.P7947095981780597475

`A057918(A124734(n+1)²)`
-/

namespace A124735.P7947095981780597475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057918 (A124734 (n + 1) ^ 2).toNat

end

end A124735.P7947095981780597475

/-! ## A124735.P7419291572873006846

`A071538(A124734(n+1)²)`
-/

namespace A124735.P7419291572873006846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071538 (A124734 (n + 1) ^ 2).toNat

end

end A124735.P7419291572873006846

/-! ## A124735.P15144770721759086373

`A086520(A124734(n+1)²)`
-/

namespace A124735.P15144770721759086373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086520 (A124734 (n + 1) ^ 2).toNat

end

end A124735.P15144770721759086373

/-! ## A124735.P17044120438453868750

`A023444(A124734(n+1)+1)`
-/

namespace A124735.P17044120438453868750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A124734 (n + 1) + 1).toNat

end

end A124735.P17044120438453868750

/-! ## A124735.P10843486473537400047

`A011867(A124734(n+1)+3)`
-/

namespace A124735.P10843486473537400047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011867 (A124734 (n + 1) + 3).toNat

end

end A124735.P10843486473537400047

/-! ## A124735.P7193943649113626057

`A023446(A124734(n+1)+3)`
-/

namespace A124735.P7193943649113626057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023446 (A124734 (n + 1) + 3).toNat

end

end A124735.P7193943649113626057

/-! ## A124735.P4165579512710612896

`A065423(2*A124734(n+1))`
-/

namespace A124735.P4165579512710612896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065423 (2 * A124734 (n + 1)).toNat

end

end A124735.P4165579512710612896

/-! ## A124735.P14242317674408765680

`A010875(A124734(n+1)+5)`
-/

namespace A124735.P14242317674408765680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010875 (A124734 (n + 1) + 5).toNat

end

end A124735.P14242317674408765680

/-! ## A124735.P17267999135164200659

`A000586(4*A124734(n+1))`
-/

namespace A124735.P17267999135164200659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000586 (4 * A124734 (n + 1)).toNat

end

end A124735.P17267999135164200659

/-! ## A124735.P18376883670242026644

`A124748(2^A124734(n+1))`
-/

namespace A124735.P18376883670242026644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124748 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A124734 (n + 1) : ℤ))).toNat

end

end A124735.P18376883670242026644

/-! ## A124735.P10485588032388009703

`A070198(n)%A124734(n+1)`
-/

namespace A124735.P10485588032388009703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A070198 n) (A124734 (n + 1))

end

end A124735.P10485588032388009703

/-! ## A124735.P15230981159898875928

`A196305(n)%A124734(n+1)`
-/

namespace A124735.P15230981159898875928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A196305 n) (A124734 (n + 1))

end

end A124735.P15230981159898875928

/-! ## A124735.P4765014294588786733

`A198277(n)%A124734(n+1)`
-/

namespace A124735.P4765014294588786733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A198277 n) (A124734 (n + 1))

end

end A124735.P4765014294588786733

/-! ## A124735.P3849134533811039281

`A200748(n)%A124734(n+1)`
-/

namespace A124735.P3849134533811039281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A200748 n) (A124734 (n + 1))

end

end A124735.P3849134533811039281

/-! ## A124735.P3156368204091695851

`A001633(∑{digits}[A124734(n+1), #])`
-/

namespace A124735.P3156368204091695851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124734 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001633 ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A124735.P3156368204091695851

/-! ## A124735.P16314304732038478721

`A030494(n+1)%A124734(n+1)`
-/

namespace A124735.P16314304732038478721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A030494 (n + 1)) (A124734 (n + 1))

end

end A124735.P16314304732038478721

/-! ## A124735.P9198249183828724794

`A048184(n+1)%A124734(n+1)`
-/

namespace A124735.P9198249183828724794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A048184 (n + 1)) (A124734 (n + 1))

end

end A124735.P9198249183828724794

/-!
# A124736: Table where row n has k C(n,k-1) times.

The programs for A124736, the canonical program `A124736.P895631553598970285` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A124736 has offset 0).

The definition of A124736 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A124737, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A124736.P895631553598970285

`A124737(n)+1`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A124736

/-- `A124737(n)+1` -/
def P895631553598970285.Spec : Prop :=
  ∀ n, P895631553598970285.a n = A124736 n

theorem P895631553598970285.correct : P895631553598970285.Spec := by
  intro n
  simp only [A124736]

end A124736

/-! ## A124736.P3064561196710576149

`∑{e}[A381500(n+1), #]`
-/

namespace A124736.P3064561196710576149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381500 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A124736.P3064561196710576149

namespace A124736

/-- `∑{e}[A381500(n+1), #]` -/
def P3064561196710576149.Spec : Prop :=
  ∀ n, (P3064561196710576149.a n : ℤ) = A124736 n

end A124736

/-! ## A124736.P6640696744660419789

`ceil(log2(n+2))-A124748(n)`
-/

namespace A124736.P6640696744660419789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (n + 2 : ℝ)⌉ - A124748 n

end

end A124736.P6640696744660419789

namespace A124736

/-- `ceil(log2(n+2))-A124748(n)` -/
def P6640696744660419789.Spec : Prop :=
  ∀ n, P6640696744660419789.a n = A124736 n

end A124736

/-! ## A124736.P10839806760305421330

`A000120(A187769(n+1))`
-/

namespace A124736.P10839806760305421330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A187769 (n + 1)).toNat

end

end A124736.P10839806760305421330

namespace A124736

/-- `A000120(A187769(n+1))` -/
def P10839806760305421330.Spec : Prop :=
  ∀ n, P10839806760305421330.a n = A124736 n

end A124736

/-! ## A124736.P10157552977357129138

`A000120(A209862(n+1))`
-/

namespace A124736.P10157552977357129138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A209862 (n + 1)).toNat

end

end A124736.P10157552977357129138

namespace A124736

/-- `A000120(A209862(n+1))` -/
def P10157552977357129138.Spec : Prop :=
  ∀ n, P10157552977357129138.a n = A124736 n

end A124736

/-! ## A124736.P1803180027145178136

`A000120(A351939(n))+1`
-/

namespace A124736.P1803180027145178136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A351939 n).toNat + 1

end

end A124736.P1803180027145178136

namespace A124736

/-- `A000120(A351939(n))+1` -/
def P1803180027145178136.Spec : Prop :=
  ∀ n, P1803180027145178136.a n = A124736 n

end A124736

/-! ## A124736.P8468897277324449203

`A000120(A359336(n))+1`
-/

namespace A124736.P8468897277324449203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A359336 n).toNat + 1

end

end A124736.P8468897277324449203

namespace A124736

/-- `A000120(A359336(n))+1` -/
def P8468897277324449203.Spec : Prop :=
  ∀ n, P8468897277324449203.a n = A124736 n

end A124736

/-! ## A124736.P13864110181299981140

`A000120(A359941(n))+1`
-/

namespace A124736.P13864110181299981140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A359941 n).toNat + 1

end

end A124736.P13864110181299981140

namespace A124736

/-- `A000120(A359941(n))+1` -/
def P13864110181299981140.Spec : Prop :=
  ∀ n, P13864110181299981140.a n = A124736 n

end A124736

/-! ## A124736.P6635138171363608492

`A001221(A381500(n+1))`
-/

namespace A124736.P6635138171363608492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A381500 (n + 1)).toNat

end

end A124736.P6635138171363608492

namespace A124736

/-- `A001221(A381500(n+1))` -/
def P6635138171363608492.Spec : Prop :=
  ∀ n, P6635138171363608492.a n = A124736 n

end A124736

/-! ## A124736.P1914358500608120133

`A179752(A209643(n+1))`
-/

namespace A124736.P1914358500608120133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179752 (A209643 (n + 1)).toNat

end

end A124736.P1914358500608120133

namespace A124736

/-- `A179752(A209643(n+1))` -/
def P1914358500608120133.Spec : Prop :=
  ∀ n, P1914358500608120133.a n = A124736 n

end A124736

/-! ## A124736.P5042314652997298894

`A267109(A267103(n+2)-1)`
-/

namespace A124736.P5042314652997298894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267109 (A267103 (n + 2) - 1).toNat

end

end A124736.P5042314652997298894

namespace A124736

/-- `A267109(A267103(n+2)-1)` -/
def P5042314652997298894.Spec : Prop :=
  ∀ n, P5042314652997298894.a n = A124736 n

end A124736

/-! ## A124736.P3318725943862732852

`A048881(2*A187769(n+1))`
-/

namespace A124736.P3318725943862732852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048881 (2 * A187769 (n + 1)).toNat

end

end A124736.P3318725943862732852

namespace A124736

/-- `A048881(2*A187769(n+1))` -/
def P3318725943862732852.Spec : Prop :=
  ∀ n, P3318725943862732852.a n = A124736 n

end A124736

/-! ## A124736.P18426953678152578519

`A038374(A209641(n+1)/2)`
-/

namespace A124736.P18426953678152578519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038374 (SequenceMachineLib.roundAway ((A209641 (n + 1) : ℚ) / 2)).toNat

end

end A124736.P18426953678152578519

namespace A124736

/-- `A038374(A209641(n+1)/2)` -/
def P18426953678152578519.Spec : Prop :=
  ∀ n, P18426953678152578519.a n = A124736 n

end A124736

/-! ## A124736.P1004318467616564164

`∑{digits}[A069800(n+1), A043537(#)]`
-/

namespace A124736.P1004318467616564164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069800 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A043537 x).sum

end

end A124736.P1004318467616564164

namespace A124736

/-- `∑{digits}[A069800(n+1), A043537(#)]` -/
def P1004318467616564164.Spec : Prop :=
  ∀ n, P1004318467616564164.a n = A124736 n

end A124736

/-! ## A124736.P13380507058901965634

`∑{digits}[A069800(n+1), A048766(#)]`
-/

namespace A124736.P13380507058901965634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069800 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A048766 x).sum

end

end A124736.P13380507058901965634

namespace A124736

/-- `∑{digits}[A069800(n+1), A048766(#)]` -/
def P13380507058901965634.Spec : Prop :=
  ∀ n, P13380507058901965634.a n = A124736 n

end A124736

/-! ## A124736.P3337944259664033685

`∑{digits}[A069800(n+1), A010052(#²)]`
-/

namespace A124736.P3337944259664033685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069800 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A010052 (x ^ 2)).sum

end

end A124736.P3337944259664033685

namespace A124736

/-- `∑{digits}[A069800(n+1), A010052(#²)]` -/
def P3337944259664033685.Spec : Prop :=
  ∀ n, P3337944259664033685.a n = A124736 n

end A124736

/-! ## A124736.P12831874251908645265

`A000523(n+1)+1-A124748(n)`
-/

namespace A124736.P12831874251908645265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (n + 1) + (1 - A124748 n)

end

end A124736.P12831874251908645265

namespace A124736

/-- `A000523(n+1)+1-A124748(n)` -/
def P12831874251908645265.Spec : Prop :=
  ∀ n, P12831874251908645265.a n = A124736 n

end A124736

/-! ## A124736.P17642959608925432700

`2-(A000034(2*n)-A124737(n))`
-/

namespace A124736.P17642959608925432700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (A000034 (2 * n) - A124737 n)

end

end A124736.P17642959608925432700

namespace A124736

/-- `2-(A000034(2*n)-A124737(n))` -/
def P17642959608925432700.Spec : Prop :=
  ∀ n, P17642959608925432700.a n = A124736 n

end A124736

/-! ## A124736.P13761558446302382377

`2-(A007318(C(2, n))-A124737(n))`
-/

namespace A124736.P13761558446302382377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (A007318 (Nat.choose 2 n) - A124737 n)

end

end A124736.P13761558446302382377

namespace A124736

/-- `2-(A007318(C(2, n))-A124737(n))` -/
def P13761558446302382377.Spec : Prop :=
  ∀ n, P13761558446302382377.a n = A124736 n

end A124736

/-! ## A124736.P7052686394844178002

`1-(A008683(Δ[(2*n)²])-A124737(n))`
-/

namespace A124736.P7052686394844178002
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A008683 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - A124737 n)

end

end A124736.P7052686394844178002

namespace A124736

/-- `1-(A008683(Δ[(2*n)²])-A124737(n))` -/
def P7052686394844178002.Spec : Prop :=
  ∀ n, P7052686394844178002.a n = A124736 n

end A124736

/-!
# A124737: Table where row n has k C(n,k) times.

The programs for A124737, the canonical program `A124737.P11036561071292758021` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A124737 has offset 0).

The definition of A124737 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A124737.P1127585945507125719

`A124736(n)-1`
-/

namespace A124737.P1127585945507125719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124736 n - 1

end

end A124737.P1127585945507125719

namespace A124737

/-- `A124736(n)-1` -/
def P1127585945507125719.Spec : Prop :=
  ∀ n, P1127585945507125719.a n = A124737 n

end A124737

/-! ## A124737.P2010274872630269820

`floor(log2(n+1))-A124748(n)`
-/

namespace A124737.P2010274872630269820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.log 2 (n + 1) : ℤ) - A124748 n

end

end A124737.P2010274872630269820

namespace A124737

/-- `floor(log2(n+1))-A124748(n)` -/
def P2010274872630269820.Spec : Prop :=
  ∀ n, P2010274872630269820.a n = A124737 n

end A124737

/-! ## A124737.P17825173932069427334

`A000120(A351939(n))`
-/

namespace A124737.P17825173932069427334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A351939 n).toNat

end

end A124737.P17825173932069427334

namespace A124737

/-- `A000120(A351939(n))` -/
def P17825173932069427334.Spec : Prop :=
  ∀ n, P17825173932069427334.a n = A124737 n

end A124737

/-! ## A124737.P17499779004027137515

`A000120(A359336(n))`
-/

namespace A124737.P17499779004027137515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A359336 n).toNat

end

end A124737.P17499779004027137515

namespace A124737

/-- `A000120(A359336(n))` -/
def P17499779004027137515.Spec : Prop :=
  ∀ n, P17499779004027137515.a n = A124737 n

end A124737

/-! ## A124737.P18207800885755659413

`A000120(A359941(n))`
-/

namespace A124737.P18207800885755659413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A359941 n).toNat

end

end A124737.P18207800885755659413

namespace A124737

/-- `A000120(A359941(n))` -/
def P18207800885755659413.Spec : Prop :=
  ∀ n, P18207800885755659413.a n = A124737 n

end A124737

/-! ## A124737.P18356023805055382379

`A290251(A382467(n))`
-/

namespace A124737.P18356023805055382379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290251 (A382467 n).toNat

end

end A124737.P18356023805055382379

namespace A124737

/-- `A290251(A382467(n))` -/
def P18356023805055382379.Spec : Prop :=
  ∀ n, P18356023805055382379.a n = A124737 n

end A124737

/-! ## A124737.P8483129115403452726

`A126306(A209643(n+1))`
-/

namespace A124737.P8483129115403452726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126306 (A209643 (n + 1)).toNat

end

end A124737.P8483129115403452726

namespace A124737

/-- `A126306(A209643(n+1))` -/
def P8483129115403452726.Spec : Prop :=
  ∀ n, P8483129115403452726.a n = A124737 n

end A124737

/-! ## A124737.P1566309523264749436

`A080791(2*A382467(n))`
-/

namespace A124737.P1566309523264749436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080791 (2 * A382467 n).toNat

end

end A124737.P1566309523264749436

namespace A124737

/-- `A080791(2*A382467(n))` -/
def P1566309523264749436.Spec : Prop :=
  ∀ n, P1566309523264749436.a n = A124737 n

end A124737

/-! ## A124737.P14317920822089807569

`A070198(n)%A124736(n)`
-/

namespace A124737.P14317920822089807569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A070198 n) (A124736 n)

end

end A124737.P14317920822089807569

namespace A124737

/-- `A070198(n)%A124736(n)` -/
def P14317920822089807569.Spec : Prop :=
  ∀ n, P14317920822089807569.a n = A124737 n

end A124737

/-! ## A124737.P2076142013899275485

`A196305(n)%A124736(n)`
-/

namespace A124737.P2076142013899275485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A196305 n) (A124736 n)

end

end A124737.P2076142013899275485

namespace A124737

/-- `A196305(n)%A124736(n)` -/
def P2076142013899275485.Spec : Prop :=
  ∀ n, P2076142013899275485.a n = A124737 n

end A124737

/-! ## A124737.P3051256330454058966

`A198277(n)%A124736(n)`
-/

namespace A124737.P3051256330454058966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A198277 n) (A124736 n)

end

end A124737.P3051256330454058966

namespace A124737

/-- `A198277(n)%A124736(n)` -/
def P3051256330454058966.Spec : Prop :=
  ∀ n, P3051256330454058966.a n = A124737 n

end A124737

/-! ## A124737.P12306717226860159642

`A200748(n)%A124736(n)`
-/

namespace A124737.P12306717226860159642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A200748 n) (A124736 n)

end

end A124737.P12306717226860159642

namespace A124737

/-- `A200748(n)%A124736(n)` -/
def P12306717226860159642.Spec : Prop :=
  ∀ n, P12306717226860159642.a n = A124737 n

end A124737

/-! ## A124737.P11036561071292758021

`A002262(∑[char[∑[A007318(n)]]])`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A124737

/-- `A002262(∑[char[∑[A007318(n)]]])` -/
def P11036561071292758021.Spec : Prop :=
  ∀ n, P11036561071292758021.a n = A124737 n

theorem P11036561071292758021.correct : P11036561071292758021.Spec := by
  intro n
  simp only [A124737]

end A124737

/-! ## A124737.P5468432155717587625

`A000120(A187769(n+1))-1`
-/

namespace A124737.P5468432155717587625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A187769 (n + 1)).toNat - 1

end

end A124737.P5468432155717587625

namespace A124737

/-- `A000120(A187769(n+1))-1` -/
def P5468432155717587625.Spec : Prop :=
  ∀ n, P5468432155717587625.a n = A124737 n

end A124737

/-! ## A124737.P11044819805208347472

`A000120(A209862(n+1))-1`
-/

namespace A124737.P11044819805208347472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A209862 (n + 1)).toNat - 1

end

end A124737.P11044819805208347472

namespace A124737

/-- `A000120(A209862(n+1))-1` -/
def P11044819805208347472.Spec : Prop :=
  ∀ n, P11044819805208347472.a n = A124737 n

end A124737

/-! ## A124737.P8609605656004874409

`A048881(A187769(n+1)-1)`
-/

namespace A124737.P8609605656004874409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048881 (A187769 (n + 1) - 1).toNat

end

end A124737.P8609605656004874409

namespace A124737

/-- `A048881(A187769(n+1)-1)` -/
def P8609605656004874409.Spec : Prop :=
  ∀ n, P8609605656004874409.a n = A124737 n

end A124737

/-! ## A124737.P14325178319548253484

`A001221(A381500(n+1))-1`
-/

namespace A124737.P14325178319548253484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A381500 (n + 1)).toNat - 1

end

end A124737.P14325178319548253484

namespace A124737

/-- `A001221(A381500(n+1))-1` -/
def P14325178319548253484.Spec : Prop :=
  ∀ n, P14325178319548253484.a n = A124737 n

end A124737

/-! ## A124737.P16807290611756143180

`A267109(A087686(n+3)-1)`
-/

namespace A124737.P16807290611756143180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267109 (A087686 (n + 3) - 1).toNat

end

end A124737.P16807290611756143180

namespace A124737

/-- `A267109(A087686(n+3)-1)` -/
def P16807290611756143180.Spec : Prop :=
  ∀ n, P16807290611756143180.a n = A124737 n

end A124737

/-! ## A124737.P14520523852681365201

`A014081(A209641(n+1)/2)`
-/

namespace A124737.P14520523852681365201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014081 (SequenceMachineLib.roundAway ((A209641 (n + 1) : ℚ) / 2)).toNat

end

end A124737.P14520523852681365201

namespace A124737

/-- `A014081(A209641(n+1)/2)` -/
def P14520523852681365201.Spec : Prop :=
  ∀ n, P14520523852681365201.a n = A124737 n

end A124737

/-! ## A124737.P6579472926234218609

`A153881(n+2)+A124736(n)`
-/

namespace A124737.P6579472926234218609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153881 (n + 2) + A124736 n

end

end A124737.P6579472926234218609

namespace A124737

/-- `A153881(n+2)+A124736(n)` -/
def P6579472926234218609.Spec : Prop :=
  ∀ n, P6579472926234218609.a n = A124737 n

end A124737

/-!
# A124738: Irregular table where the n-th row consists of those positive integers which are coprime to both n and n+1 and which are <= n.

The programs for A124738, there is no canonical definition to state claims against.
-/

/-! ## A124738.P18093345442863883815

`A002262(eq[1, gcd(2*n, A002262(n))])`
-/

namespace A124738.P18093345442863883815
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (2 * n : ℤ) (A002262 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A124738.P18093345442863883815

/-! ## A124738.P1538922652115203708

`A128227(eq[A003989(n+1), A050873(n+1)])`
-/

namespace A124738.P1538922652115203708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003989 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050873 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128227 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A124738.P1538922652115203708

/-! ## A124738.P12432006035427946132

`A128227(eq[A003989(n+1), A054521(n+1)])`
-/

namespace A124738.P12432006035427946132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003989 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054521 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128227 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A124738.P12432006035427946132

/-! ## A124738.P1896287805549491540

`A193738(eq[A003989(n+1), A050873(n+1)])`
-/

namespace A124738.P1896287805549491540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003989 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050873 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193738 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A124738.P1896287805549491540

/-! ## A124738.P1821247707768218727

`A193738(eq[A003989(n+1), A054521(n+1)])`
-/

namespace A124738.P1821247707768218727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003989 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054521 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193738 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A124738.P1821247707768218727

/-! ## A124738.P16854802459564170972

`A128227(eq[A054531(n+1), A074712(n+1)])`
-/

namespace A124738.P16854802459564170972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054531 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074712 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128227 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A124738.P16854802459564170972

/-! ## A124738.P6424205222895500979

`A193738(eq[A054531(n+1), A074712(n+1)])`
-/

namespace A124738.P6424205222895500979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054531 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074712 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193738 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A124738.P6424205222895500979

/-! ## A124738.P12035286402200009429

`A193738(eq[A054521(n+1), A077478(n+1)])`
-/

namespace A124738.P12035286402200009429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054521 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077478 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193738 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A124738.P12035286402200009429

/-! ## A124738.P1461737736542439946

`A193738(eq[A003989(n+1), A231425(n+1)])`
-/

namespace A124738.P1461737736542439946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003989 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231425 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193738 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A124738.P1461737736542439946

/-! ## A124738.P14504276417769288303

`A193738(eq[A050873(n+1), A287957(n+1)])`
-/

namespace A124738.P14504276417769288303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050873 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287957 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193738 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A124738.P14504276417769288303

/-!
# A124739: a(n) = sum of those positive integers which are coprime to both n and n+1 and which are <= n.

The programs for A124739, there is no canonical definition to state claims against.
-/

/-! ## A124739.P416437742785719876

`A319057(A124740(n+1))+1`
-/

namespace A124739.P416437742785719876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319057 (A124740 (n + 1)).toNat + 1

end

end A124739.P416437742785719876

/-!
# A124740: a(n) = product of those positive integers which are coprime to both n and n+1 and which are <= n.

The programs for A124740, there is no canonical definition to state claims against.
-/

/-! ## A124740.P9677885643632696566

`gcd(Δ[A209388(n+1)], A055634(n))`
-/

namespace A124740.P9677885643632696566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209388 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (f1 (n + 1) - f1 n) (A055634 n)

end

end A124740.P9677885643632696566

/-! ## A124740.P17509403111966216300

`gcd(A209388(n+1), A209388(n+2))`
-/

namespace A124740.P17509403111966216300
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A209388 (n + 1)) (A209388 (n + 2))

end

end A124740.P17509403111966216300

/-! ## A124740.P2492402197384875510

`gcd(A124441(2*(n+1)), A124441(2*(n+2)))`
-/

namespace A124740.P2492402197384875510
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A124441 (2 * (n + 1))) (A124441 (2 * (n + 2)))

end

end A124740.P2492402197384875510

/-! ## A124740.P7960459559374315698

`gcd(Δ[A001783(n+1)], A239836(n))`
-/

namespace A124740.P7960459559374315698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001783 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (f1 (n + 1) - f1 n) (A239836 n)

end

end A124740.P7960459559374315698

/-! ## A124740.P15169951223448676986

`gcd(A001783(n+1), A001783(A242474(n+2)))`
-/

namespace A124740.P15169951223448676986
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001783 (n + 1)) (A001783 (A242474 (n + 2)).toNat)

end

end A124740.P15169951223448676986

/-!
# A124741: a(n) = largest of those positive integers which are coprime to both n and n+1 and which are <= n.

The programs for A124741, the canonical program `A124741.P16805278600356101561` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A124741 has offset 1).

The definition of A124741 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 571 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A124741.P12814070031764975942

`2-A214720(n+2)+n`
-/

namespace A124741.P12814070031764975942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A214720 (n + 2) + (n : ℤ)

end

end A124741.P12814070031764975942

namespace A124741

/-- `2-A214720(n+2)+n` -/
def P12814070031764975942.Spec : Prop :=
  ∀ n, P12814070031764975942.a n = A124741 (n + 1)

end A124741

/-! ## A124741.P11343441357047189970

`abs(abs(1-A053669(n+2))-(n+1))`
-/

namespace A124741.P11343441357047189970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(|1 - A053669 (n + 2)| - (n + 1 : ℤ))|

end

end A124741.P11343441357047189970

namespace A124741

/-- `abs(abs(1-A053669(n+2))-(n+1))` -/
def P11343441357047189970.Spec : Prop :=
  ∀ n, P11343441357047189970.a n = A124741 (n + 1)

end A124741

/-! ## A124741.P8823541142898039748

`2*(n+2)-A079578(A326178(n+1))`
-/

namespace A124741.P8823541142898039748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 2) : ℤ) - A079578 (A326178 (n + 1)).toNat

end

end A124741.P8823541142898039748

namespace A124741

/-- `2*(n+2)-A079578(A326178(n+1))` -/
def P8823541142898039748.Spec : Prop :=
  ∀ n, P8823541142898039748.a n = A124741 (n + 1)

end A124741

/-! ## A124741.P16463695592333139239

`n+2-A020652(A005728(n+1))`
-/

namespace A124741.P16463695592333139239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) - A020652 (A005728 (n + 1)).toNat

end

end A124741.P16463695592333139239

namespace A124741

/-- `n+2-A020652(A005728(n+1))` -/
def P16463695592333139239.Spec : Prop :=
  ∀ n, P16463695592333139239.a n = A124741 (n + 1)

end A124741

/-! ## A124741.P3585166534395908040

`n+2-A020652(A002088(n+1)+1)`
-/

namespace A124741.P3585166534395908040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) - A020652 (A002088 (n + 1) + 1).toNat

end

end A124741.P3585166534395908040

namespace A124741

/-- `n+2-A020652(A002088(n+1)+1)` -/
def P3585166534395908040.Spec : Prop :=
  ∀ n, P3585166534395908040.a n = A124741 (n + 1)

end A124741

/-! ## A124741.P11738661409645492869

`A038566(A015614(n+2))`
-/

namespace A124741.P11738661409645492869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038566 (A015614 (n + 2)).toNat

end

end A124741.P11738661409645492869

namespace A124741

/-- `A038566(A015614(n+2))` -/
def P11738661409645492869.Spec : Prop :=
  ∀ n, P11738661409645492869.a n = A124741 (n + 1)

end A124741

/-! ## A124741.P17862000999222320921

`A038566(∑[A000010(n+2)])`
-/

namespace A124741.P17862000999222320921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038566 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A124741.P17862000999222320921

namespace A124741

/-- `A038566(∑[A000010(n+2)])` -/
def P17862000999222320921.Spec : Prop :=
  ∀ n, P17862000999222320921.a n = A124741 (n + 1)

end A124741

/-! ## A124741.P17272071898633990619

`A038566(A002088(n+2)-1)`
-/

namespace A124741.P17272071898633990619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038566 (A002088 (n + 2) - 1).toNat

end

end A124741.P17272071898633990619

namespace A124741

/-- `A038566(A002088(n+2)-1)` -/
def P17272071898633990619.Spec : Prop :=
  ∀ n, P17272071898633990619.a n = A124741 (n + 1)

end A124741

/-! ## A124741.P16805278600356101561

`A038566(A092249(n+2)-1)`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A124741

/-- `A038566(A092249(n+2)-1)` -/
def P16805278600356101561.Spec : Prop :=
  ∀ n, P16805278600356101561.a n = A124741 (n + 1)

theorem P16805278600356101561.correct : P16805278600356101561.Spec := by
  intro n
  simp only [A124741, Nat.add_sub_cancel]

end A124741

/-! ## A124741.P1952266205386433023

`A038566(A005728(n+2)-2)`
-/

namespace A124741.P1952266205386433023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038566 (A005728 (n + 2) - 2).toNat

end

end A124741.P1952266205386433023

namespace A124741

/-- `A038566(A005728(n+2)-2)` -/
def P1952266205386433023.Spec : Prop :=
  ∀ n, P1952266205386433023.a n = A124741 (n + 1)

end A124741

/-! ## A124741.P4379326106981016057

`A038566(A049643(n+2)-2)`
-/

namespace A124741.P4379326106981016057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038566 (A049643 (n + 2) - 2).toNat

end

end A124741.P4379326106981016057

namespace A124741

/-- `A038566(A049643(n+2)-2)` -/
def P4379326106981016057.Spec : Prop :=
  ∀ n, P4379326106981016057.a n = A124741 (n + 1)

end A124741

/-! ## A124741.P17975749687072524974

`n+2-A038568(A049691(n+1))`
-/

namespace A124741.P17975749687072524974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) - A038568 (A049691 (n + 1)).toNat

end

end A124741.P17975749687072524974

namespace A124741

/-- `n+2-A038568(A049691(n+1))` -/
def P17975749687072524974.Spec : Prop :=
  ∀ n, P17975749687072524974.a n = A124741 (n + 1)

end A124741

/-! ## A124741.P17665551906382661401

`n+2-A038568(A206297(n+2))`
-/

namespace A124741.P17665551906382661401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) - A038568 (A206297 (n + 2)).toNat

end

end A124741.P17665551906382661401

namespace A124741

/-- `n+2-A038568(A206297(n+2))` -/
def P17665551906382661401.Spec : Prop :=
  ∀ n, P17665551906382661401.a n = A124741 (n + 1)

end A124741

/-! ## A124741.P12493851622404955482

`A038566(eq[1, A020653(n+1)]+1)`
-/

namespace A124741.P12493851622404955482
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020653 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038566 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A124741.P12493851622404955482

namespace A124741

/-- `A038566(eq[1, A020653(n+1)]+1)` -/
def P12493851622404955482.Spec : Prop :=
  ∀ n, P12493851622404955482.a n = A124741 (n + 1)

end A124741

/-! ## A124741.P3482246805035607094

`A038566(lt[A020653(n+1), 2]+1)`
-/

namespace A124741.P3482246805035607094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020653 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038566 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A124741.P3482246805035607094

namespace A124741

/-- `A038566(lt[A020653(n+1), 2]+1)` -/
def P3482246805035607094.Spec : Prop :=
  ∀ n, P3482246805035607094.a n = A124741 (n + 1)

end A124741

/-! ## A124741.P4273417430114758340

`A038569(2*lt[A020653(n+1), 2])`
-/

namespace A124741.P4273417430114758340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020653 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038569 (2 * SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A124741.P4273417430114758340

namespace A124741

/-- `A038569(2*lt[A020653(n+1), 2])` -/
def P4273417430114758340.Spec : Prop :=
  ∀ n, P4273417430114758340.a n = A124741 (n + 1)

end A124741

/-! ## A124741.P10012968760051894419

`A020652(eq[A020652(n+1)+1, A038567(n)])`
-/

namespace A124741.P10012968760051894419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020652 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038567 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020652 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A124741.P10012968760051894419

namespace A124741

/-- `A020652(eq[A020652(n+1)+1, A038567(n)])` -/
def P10012968760051894419.Spec : Prop :=
  ∀ n, P10012968760051894419.a n = A124741 (n + 1)

end A124741

/-! ## A124741.P11119300990582993266

`A038566(eq[A038566(n+1)+1, A038567(n)])`
-/

namespace A124741.P11119300990582993266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038566 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038567 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038566 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A124741.P11119300990582993266

namespace A124741

/-- `A038566(eq[A038566(n+1)+1, A038567(n)])` -/
def P11119300990582993266.Spec : Prop :=
  ∀ n, P11119300990582993266.a n = A124741 (n + 1)

end A124741

/-! ## A124741.P5637096152538328088

`A038566(A054430(A002088(n+1)))`
-/

namespace A124741.P5637096152538328088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038566 (A054430 (A002088 (n + 1)).toNat).toNat

end

end A124741.P5637096152538328088

namespace A124741

/-- `A038566(A054430(A002088(n+1)))` -/
def P5637096152538328088.Spec : Prop :=
  ∀ n, P5637096152538328088.a n = A124741 (n + 1)

end A124741

/-! ## A124741.P2841645693503616936

`A038566(A054430(A092249(n+1)))`
-/

namespace A124741.P2841645693503616936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038566 (A054430 (A092249 (n + 1)).toNat).toNat

end

end A124741.P2841645693503616936

namespace A124741

/-- `A038566(A054430(A092249(n+1)))` -/
def P2841645693503616936.Spec : Prop :=
  ∀ n, P2841645693503616936.a n = A124741 (n + 1)

end A124741

/-!
# A124742: Records in A124522.

The programs for A124742, there is no canonical definition to state claims against.
-/

/-! ## A124742.P4952050478730181780

`record[A124522(n+1)]`
-/

namespace A124742.P4952050478730181780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124522 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A124742.P4952050478730181780

/-! ## A124742.P10384061919076037277

`A124522(A124743(n+1))`
-/

namespace A124742.P10384061919076037277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124522 (A124743 (n + 1)).toNat

end

end A124742.P10384061919076037277

/-! ## A124742.P4864383594451680788

`record[A071558(2*(n+1))]`
-/

namespace A124742.P4864383594451680788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071558 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A124742.P4864383594451680788

/-! ## A124742.P17268835124298517589

`record[A071558(n+2+n)/round(n/(n+1))!]`
-/

namespace A124742.P17268835124298517589
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A071558 (n + 2 + n) : ℚ) / (Nat.factorial (SequenceMachineLib.roundAway ((n : ℚ) / (n + 1 : ℚ))).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A124742.P17268835124298517589

/-! ## A124742.P9284737305537268433

`A071558(2*A124743(n+1))`
-/

namespace A124742.P9284737305537268433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071558 (2 * A124743 (n + 1)).toNat

end

end A124742.P9284737305537268433

/-!
# A124744: Expansion of (1+x*y)/(1-x^2*y^2+x^3*y^2).

The programs for A124744, the canonical program `A124744.P713802155741888960` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A124744 has offset 0).

The definition of A124744 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A124744.P17391374463635848666

`(and(2, comp[∑[n]]+n)-1)*A124788(n)`
-/

namespace A124744.P17391374463635848666
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.land 2 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + n) : ℤ) - 1) * A124788 n

end

end A124744.P17391374463635848666

namespace A124744

/-- `(and(2, comp[∑[n]]+n)-1)*A124788(n)` -/
def P17391374463635848666.Spec : Prop :=
  ∀ n, P17391374463635848666.a n = A124744 n

end A124744

/-! ## A124744.P713802155741888960

`A097807(n)*A124788(n)`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A124744

/-- `A097807(n)*A124788(n)` -/
def P713802155741888960.Spec : Prop :=
  ∀ n, P713802155741888960.a n = A124744 n

theorem P713802155741888960.correct : P713802155741888960.Spec := by
  intro n
  simp only [A124744]

end A124744

/-! ## A124744.P10578457878118138251

`A124788(n)*A128257(n)`
-/

namespace A124744.P10578457878118138251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124788 n * A128257 n

end

end A124744.P10578457878118138251

namespace A124744

/-- `A124788(n)*A128257(n)` -/
def P10578457878118138251.Spec : Prop :=
  ∀ n, P10578457878118138251.a n = A124744 n

end A124744

/-! ## A124744.P2030723522061469878

`A124788(n)*A187034(n)`
-/

namespace A124744.P2030723522061469878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124788 n * A187034 n

end

end A124744.P2030723522061469878

namespace A124744

/-- `A124788(n)*A187034(n)` -/
def P2030723522061469878.Spec : Prop :=
  ∀ n, P2030723522061469878.a n = A124744 n

end A124744

/-! ## A124744.P557625194695467791

`A114116(n)*A124788(n)`
-/

namespace A124744.P557625194695467791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114116 n * A124788 n

end

end A124744.P557625194695467791

namespace A124744

/-- `A114116(n)*A124788(n)` -/
def P557625194695467791.Spec : Prop :=
  ∀ n, P557625194695467791.a n = A124744 n

end A124744

/-! ## A124744.P14478003336332847930

`A124788(n)*A155040(n)`
-/

namespace A124744.P14478003336332847930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124788 n * A155040 n

end

end A124744.P14478003336332847930

namespace A124744

/-- `A124788(n)*A155040(n)` -/
def P14478003336332847930.Spec : Prop :=
  ∀ n, P14478003336332847930.a n = A124744 n

end A124744

/-!
# A124745: Expansion of (1+x)/(1-x^2+x^3).

The programs for A124745, the canonical program `A124745.P14420194795115472129` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A124745 has offset 0).

The definition of A124745 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+x)/(1-x^2+x^3))` (program `A124745.P14420194795115472129`, by `A124745.P14420194795115472129.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A124745.P14420194795115472129

`ogf((1+x)/(1-x^2+x^3))`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A124745

/-- `ogf((1+x)/(1-x^2+x^3))` -/
def P14420194795115472129.Spec : Prop :=
  ∀ n, P14420194795115472129.a n = A124745 n

theorem P14420194795115472129.correct : P14420194795115472129.Spec := by
  intro n
  simp only [A124745]

end A124745

/-! ## A124745.P8957474839624364977

`a(n-2)-a(n-3)` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A124745.P8957474839624364977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  a (n - 2) - a (n - 3)

end

end A124745.P8957474839624364977

namespace A124745

/-- `a(n-2)-a(n-3)` -/
def P8957474839624364977.Spec : Prop :=
  ∀ n, P8957474839624364977.a n = A124745 n

end A124745

/-! ## A124745.P14494405848239467724

`(-1)^n*A078027(n)`
-/

namespace A124745.P14494405848239467724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A078027 n

end

end A124745.P14494405848239467724

namespace A124745

/-- `(-1)^n*A078027(n)` -/
def P14494405848239467724.Spec : Prop :=
  ∀ n, P14494405848239467724.a n = A124745 n

end A124745

/-! ## A124745.P9443142647242714156

`A078027(n)/A033999(n)`
-/

namespace A124745.P9443142647242714156
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A078027 n : ℚ) / (A033999 n : ℚ)

end

end A124745.P9443142647242714156

namespace A124745

/-- `A078027(n)/A033999(n)` -/
def P9443142647242714156.Spec : Prop :=
  ∀ n, P9443142647242714156.a n = (A124745 n : ℚ)

end A124745

/-! ## A124745.P11320879471540032188

`∑[(-1)^n*A000931(n)]`
-/

namespace A124745.P11320879471540032188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A000931 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A124745.P11320879471540032188

namespace A124745

/-- `∑[(-1)^n*A000931(n)]` -/
def P11320879471540032188.Spec : Prop :=
  ∀ n, P11320879471540032188.a n = A124745 n

end A124745

/-! ## A124745.P6085521912833792025

`A114775(2*(n+1))-A114775(2*n+3)`
-/

namespace A124745.P6085521912833792025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114775 (2 * (n + 1)) - A114775 (2 * n + 3)

end

end A124745.P6085521912833792025

namespace A124745

/-- `A114775(2*(n+1))-A114775(2*n+3)` -/
def P6085521912833792025.Spec : Prop :=
  ∀ n, P6085521912833792025.a n = A124745 n

end A124745

/-! ## A124745.P8172365075859026408

`(-1)^n*Δ[Δ[A134816(n+2)]]`
-/

namespace A124745.P8172365075859026408
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134816 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * (f1 (n + 1) - f1 n)

end

end A124745.P8172365075859026408

namespace A124745

/-- `(-1)^n*Δ[Δ[A134816(n+2)]]` -/
def P8172365075859026408.Spec : Prop :=
  ∀ n, P8172365075859026408.a n = A124745 n

end A124745

/-! ## A124745.P5692184739818622546

`A077883(n)+∑[1-A077883(n)]`
-/

namespace A124745.P5692184739818622546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A077883 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077883 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A124745.P5692184739818622546

namespace A124745

/-- `A077883(n)+∑[1-A077883(n)]` -/
def P5692184739818622546.Spec : Prop :=
  ∀ n, P5692184739818622546.a n = A124745 n

end A124745

/-!
# A124746: Expansion of (1+x^2)/(1-x^4+x^5).

The programs for A124746, the canonical program `A124746.P15554860249565403500` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A124746 has offset 0).

The definition of A124746 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+x^2)/(1-x^4+x^5))` (program `A124746.P15554860249565403500`, by `A124746.P15554860249565403500.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A124746.P15554860249565403500

`ogf((1+x^2)/(1-x^4+x^5))`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A124746

/-- `ogf((1+x^2)/(1-x^4+x^5))` -/
def P15554860249565403500.Spec : Prop :=
  ∀ n, P15554860249565403500.a n = A124746 n

theorem P15554860249565403500.correct : P15554860249565403500.Spec := by
  intro n
  simp only [A124746]

end A124746

/-! ## A124746.P11213888067110756021

`(-1)^n*A124789(n)`
-/

namespace A124746.P11213888067110756021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A124789 n

end

end A124746.P11213888067110756021

namespace A124746

/-- `(-1)^n*A124789(n)` -/
def P11213888067110756021.Spec : Prop :=
  ∀ n, P11213888067110756021.a n = A124746 n

end A124746

/-! ## A124746.P890212106841910979

`a(n-4)-a(n-5)` with `a(0)=1, a(1)=0, a(2)=1, a(3)=0, a(4)=1`
-/

namespace A124746.P890212106841910979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1, 0, 1] fun n a =>
  a (n - 4) - a (n - 5)

end

end A124746.P890212106841910979

namespace A124746

/-- `a(n-4)-a(n-5)` -/
def P890212106841910979.Spec : Prop :=
  ∀ n, P890212106841910979.a n = A124746 n

end A124746

/-! ## A124746.P13992996564602118098

`∑[(1-2*n%2)*A103372(n+1)]`
-/

namespace A124746.P13992996564602118098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - ((2 * (n % 2) : ℕ) : ℤ)) * A103372 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A124746.P13992996564602118098

namespace A124746

/-- `∑[(1-2*n%2)*A103372(n+1)]` -/
def P13992996564602118098.Spec : Prop :=
  ∀ n, P13992996564602118098.a n = A124746 n

end A124746

/-! ## A124746.P1847320935506831080

`A124789(n)/A033999(n+2)`
-/

namespace A124746.P1847320935506831080
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A124789 n : ℚ) / (A033999 (n + 2) : ℚ)

end

end A124746.P1847320935506831080

namespace A124746

/-- `A124789(n)/A033999(n+2)` -/
def P1847320935506831080.Spec : Prop :=
  ∀ n, P1847320935506831080.a n = (A124746 n : ℚ)

end A124746

/-! ## A124746.P10633095073764604365

`A124789(n)/A056594(A005843(n))`
-/

namespace A124746.P10633095073764604365
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A124789 n : ℚ) / (A056594 (A005843 n).toNat : ℚ)

end

end A124746.P10633095073764604365

namespace A124746

/-- `A124789(n)/A056594(A005843(n))` -/
def P10633095073764604365.Spec : Prop :=
  ∀ n, P10633095073764604365.a n = (A124746 n : ℚ)

end A124746

/-!
# A124747: Inverse of number triangle A124744.

The programs for A124747, there is no canonical definition to state claims against.
-/

/-! ## A124747.P1049683838922033313

`A000120(A269948(n))-A004197(n)`
-/

namespace A124747.P1049683838922033313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A269948 n).toNat - A004197 n

end

end A124747.P1049683838922033313

/-! ## A124747.P3440258338188253841

`gcd(A102669(A288972(n)), A124744(n))`
-/

namespace A124747.P3440258338188253841
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A102669 (A288972 n).toNat) (A124744 n)

end

end A124747.P3440258338188253841

/-! ## A124747.P13294861449890736873

`A008481(A250486(n)+A113998(n+1))`
-/

namespace A124747.P13294861449890736873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008481 (A250486 n + A113998 (n + 1)).toNat

end

end A124747.P13294861449890736873

/-! ## A124747.P9273588220240107878

`A001221(C(A054722(n+1), A004736(n+1))+1)`
-/

namespace A124747.P9273588220240107878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Nat.choose (A054722 (n + 1)).toNat (A004736 (n + 1)).toNat + 1)

end

end A124747.P9273588220240107878

/-! ## A124747.P1671580023176258275

`A124788(n)+A124760(A022168(n))`
-/

namespace A124747.P1671580023176258275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124788 n + A124760 (A022168 n).toNat

end

end A124747.P1671580023176258275

/-!
# A124748: Table where row n has k C(n,k) times, in reverse order.

The programs for A124748, the canonical program `A124748.P5609394966842096316` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A124748 has offset 0).

The definition of A124748 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A124748.P5459030117372661326

`val(A209644(n+1), 10)`
-/

namespace A124748.P5459030117372661326
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A209644 (n + 1)).toNat 10

end

end A124748.P5459030117372661326

namespace A124748

/-- `val(A209644(n+1), 10)` -/
def P5459030117372661326.Spec : Prop :=
  ∀ n, (P5459030117372661326.a n : ℤ) = A124748 n

end A124748

/-! ## A124748.P223315182153682644

`∑{digits}[A069800(n+1), #-1]`
-/

namespace A124748.P223315182153682644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069800 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => (x : ℤ) - 1).sum

end

end A124748.P223315182153682644

namespace A124748

/-- `∑{digits}[A069800(n+1), #-1]` -/
def P223315182153682644.Spec : Prop :=
  ∀ n, P223315182153682644.a n = A124748 n

end A124748

/-! ## A124748.P16648235637229789608

`floor(log2(n+1)-A124737(n))`
-/

namespace A124748.P16648235637229789608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.logb 2 (n + 1 : ℝ) - (A124737 n : ℝ)⌋

end

end A124748.P16648235637229789608

namespace A124748

/-- `floor(log2(n+1)-A124737(n))` -/
def P16648235637229789608.Spec : Prop :=
  ∀ n, P16648235637229789608.a n = A124748 n

end A124748

/-! ## A124748.P16508524319963680006

`ceil(log2(n+2)-A124736(n))`
-/

namespace A124748.P16508524319963680006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (n + 2 : ℝ) - (A124736 n : ℝ)⌉

end

end A124748.P16508524319963680006

namespace A124748

/-- `ceil(log2(n+2)-A124736(n))` -/
def P16508524319963680006.Spec : Prop :=
  ∀ n, P16508524319963680006.a n = A124748 n

end A124748

/-! ## A124748.P2334528069307236018

`A023416(A187769(n+1))`
-/

namespace A124748.P2334528069307236018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 (A187769 (n + 1)).toNat

end

end A124748.P2334528069307236018

namespace A124748

/-- `A023416(A187769(n+1))` -/
def P2334528069307236018.Spec : Prop :=
  ∀ n, P2334528069307236018.a n = A124748 n

end A124748

/-! ## A124748.P15602962661507476479

`A023416(A209862(n+1))`
-/

namespace A124748.P15602962661507476479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 (A209862 (n + 1)).toNat

end

end A124748.P15602962661507476479

namespace A124748

/-- `A023416(A209862(n+1))` -/
def P15602962661507476479.Spec : Prop :=
  ∀ n, P15602962661507476479.a n = A124748 n

end A124748

/-! ## A124748.P13801669284709945120

`A127284(A209643(n+1))`
-/

namespace A124748.P13801669284709945120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127284 (A209643 (n + 1)).toNat

end

end A124748.P13801669284709945120

namespace A124748

/-- `A127284(A209643(n+1))` -/
def P13801669284709945120.Spec : Prop :=
  ∀ n, P13801669284709945120.a n = A124748 n

end A124748

/-! ## A124748.P136264747057387340

`∑[A036987(n)]-A124736(n)`
-/

namespace A124748.P136264747057387340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036987 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A124736 n

end

end A124748.P136264747057387340

namespace A124748

/-- `∑[A036987(n)]-A124736(n)` -/
def P136264747057387340.Spec : Prop :=
  ∀ n, P136264747057387340.a n = A124748 n

end A124748

/-! ## A124748.P9089557540143824259

`A037800(A209641(n+1)/2)`
-/

namespace A124748.P9089557540143824259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037800 (SequenceMachineLib.roundAway ((A209641 (n + 1) : ℚ) / 2)).toNat

end

end A124748.P9089557540143824259

namespace A124748

/-- `A037800(A209641(n+1)/2)` -/
def P9089557540143824259.Spec : Prop :=
  ∀ n, P9089557540143824259.a n = A124748 n

end A124748

/-! ## A124748.P5609394966842096316

`A000523(n+1)-A124737(n)`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A124748

/-- `A000523(n+1)-A124737(n)` -/
def P5609394966842096316.Spec : Prop :=
  ∀ n, P5609394966842096316.a n = A124748 n

theorem P5609394966842096316.correct : P5609394966842096316.Spec := by
  intro n
  simp only [A124748]

end A124748

/-! ## A124748.P4333745946698209702

`A070939(n+1)-A124736(n)`
-/

namespace A124748.P4333745946698209702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (n + 1) - A124736 n

end

end A124748.P4333745946698209702

namespace A124748

/-- `A070939(n+1)-A124736(n)` -/
def P4333745946698209702.Spec : Prop :=
  ∀ n, P4333745946698209702.a n = A124748 n

end A124748

/-! ## A124748.P6379021107497631200

`A113473(n+1)-A124736(n)`
-/

namespace A124748.P6379021107497631200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113473 (n + 1) - A124736 n

end

end A124748.P6379021107497631200

namespace A124748

/-- `A113473(n+1)-A124736(n)` -/
def P6379021107497631200.Spec : Prop :=
  ∀ n, P6379021107497631200.a n = A124748 n

end A124748

/-! ## A124748.P8414786895265767117

`A025581(∑[char[A163866(n+1)]])`
-/

namespace A124748.P8414786895265767117
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163866 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A124748.P8414786895265767117

namespace A124748

/-- `A025581(∑[char[A163866(n+1)]])` -/
def P8414786895265767117.Spec : Prop :=
  ∀ n, P8414786895265767117.a n = A124748 n

end A124748

/-! ## A124748.P2149808136720477610

`∑[char[A000225(n)]]-A124736(n)`
-/

namespace A124748.P2149808136720477610
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A124736 n

end

end A124748.P2149808136720477610

namespace A124748

/-- `∑[char[A000225(n)]]-A124736(n)` -/
def P2149808136720477610.Spec : Prop :=
  ∀ n, P2149808136720477610.a n = A124748 n

end A124748

/-! ## A124748.P15664014290175977099

`Δ[A001855(n+1)]-A124736(n)`
-/

namespace A124748.P15664014290175977099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001855 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A124736 n

end

end A124748.P15664014290175977099

namespace A124748

/-- `Δ[A001855(n+1)]-A124736(n)` -/
def P15664014290175977099.Spec : Prop :=
  ∀ n, P15664014290175977099.a n = A124748 n

end A124748

/-! ## A124748.P15831727380987685102

`A000523(n+1)+1-A124736(n)`
-/

namespace A124748.P15831727380987685102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (n + 1) + (1 - A124736 n)

end

end A124748.P15831727380987685102

namespace A124748

/-- `A000523(n+1)+1-A124736(n)` -/
def P15831727380987685102.Spec : Prop :=
  ∀ n, P15831727380987685102.a n = A124748 n

end A124748

/-! ## A124748.P3518405588603355169

`n+2-(A124736(n)+∑[A014963(n+1)%2])`
-/

namespace A124748.P3518405588603355169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A014963 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) - (A124736 n + ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A124748.P3518405588603355169

namespace A124748

/-- `n+2-(A124736(n)+∑[A014963(n+1)%2])` -/
def P3518405588603355169.Spec : Prop :=
  ∀ n, P3518405588603355169.a n = A124748 n

end A124748

/-! ## A124748.P9527571200592680755

`A000120(A003817(n+1)-A187769(n+1))`
-/

namespace A124748.P9527571200592680755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A003817 (n + 1) - A187769 (n + 1)).toNat

end

end A124748.P9527571200592680755

namespace A124748

/-- `A000120(A003817(n+1)-A187769(n+1))` -/
def P9527571200592680755.Spec : Prop :=
  ∀ n, P9527571200592680755.a n = A124748 n

end A124748

/-! ## A124748.P6443104892785827287

`A001222(∏[A014963(2*(n+1))])-A124736(n)`
-/

namespace A124748.P6443104892785827287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (∏ j ∈ Finset.range (n + 1), f1 j).toNat - A124736 n

end

end A124748.P6443104892785827287

namespace A124748

/-- `A001222(∏[A014963(2*(n+1))])-A124736(n)` -/
def P6443104892785827287.Spec : Prop :=
  ∀ n, P6443104892785827287.a n = A124748 n

end A124748

/-!
# A124749: Expansion of (1+x*y+x^2*y^2)/(1-x^3*y^3+x^4*y^3).

The programs for A124749, there is no canonical definition to state claims against.
-/

/-! ## A124749.P15274618272724996687

`ceil(A136250(n+1)/Δ[A136234(n)])`
-/

namespace A124749.P15274618272724996687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136234 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A136250 (n + 1) : ℚ) / (f1 (n + 1) - f1 n : ℚ)⌉

end

end A124749.P15274618272724996687

/-! ## A124749.P398087945564692179

`ceil(A136250(n+1)/Δ[A136235(n)])`
-/

namespace A124749.P398087945564692179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136235 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A136250 (n + 1) : ℚ) / (f1 (n + 1) - f1 n : ℚ)⌉

end

end A124749.P398087945564692179

/-! ## A124749.P13075107598527595865

`ceil(A008864(n+1)/Δ[A113394(n)])`
-/

namespace A124749.P13075107598527595865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113394 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A008864 (n + 1) : ℚ) / (f1 (n + 1) - f1 n : ℚ)⌉

end

end A124749.P13075107598527595865

/-! ## A124749.P9272351541875774831

`A120111(n)%A387144(n+1)`
-/

namespace A124749.P9272351541875774831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A120111 n) (A387144 (n + 1))

end

end A124749.P9272351541875774831

/-! ## A124749.P14238033939505054508

`A113428(floor(A008298(n+1)/(n+2)))`
-/

namespace A124749.P14238033939505054508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113428 ⌊(A008298 (n + 1) : ℚ) / (n + 2 : ℚ)⌋.toNat

end

end A124749.P14238033939505054508

/-!
# A124750: Expansion of (1 + x + x^2)/(1 - x^3 + x^4).

The programs for A124750, the canonical program `A124750.P18346345891701629167` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A124750 has offset 0).

The definition of A124750 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+x+x^2)/(1-x^3+x^4))` (program `A124750.P18346345891701629167`, by `A124750.P18346345891701629167.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A124750.P18346345891701629167

`ogf((1+x+x^2)/(1-x^3+x^4))`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A124750

/-- `ogf((1+x+x^2)/(1-x^3+x^4))` -/
def P18346345891701629167.Spec : Prop :=
  ∀ n, P18346345891701629167.a n = A124750 n

theorem P18346345891701629167.correct : P18346345891701629167.Spec := by
  intro n
  simp only [A124750]

end A124750

/-! ## A124750.P17354865511261314290

`a(n-3)-a(n-4)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1`
-/

namespace A124750.P17354865511261314290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 1] fun n a =>
  a (n - 3) - a (n - 4)

end

end A124750.P17354865511261314290

namespace A124750

/-- `a(n-3)-a(n-4)` -/
def P17354865511261314290.Spec : Prop :=
  ∀ n, P17354865511261314290.a n = A124750 n

end A124750

/-! ## A124750.P17678989987821807185

`A001584(n)+A001584(n)-A079398(n+1)`
-/

namespace A124750.P17678989987821807185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001584 n + (A001584 n - A079398 (n + 1))

end

end A124750.P17678989987821807185

namespace A124750

/-- `A001584(n)+A001584(n)-A079398(n+1)` -/
def P17678989987821807185.Spec : Prop :=
  ∀ n, P17678989987821807185.a n = A124750 n

end A124750

/-!
# A124751: Expansion of (1+x^2+x^4)/(1-x^6+x^7).

The programs for A124751, the canonical program `A124751.P899322920580823379` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A124751 has offset 0).

The definition of A124751 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+x^2+x^4)/(1-x^6+x^7))` (program `A124751.P899322920580823379`, by `A124751.P899322920580823379.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A124751.P899322920580823379

`ogf((1+x^2+x^4)/(1-x^6+x^7))`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A124751

/-- `ogf((1+x^2+x^4)/(1-x^6+x^7))` -/
def P899322920580823379.Spec : Prop :=
  ∀ n, P899322920580823379.a n = A124751 n

theorem P899322920580823379.correct : P899322920580823379.Spec := by
  intro n
  simp only [A124751]

end A124751

/-! ## A124751.P5051064926766341288

`∑[A033999(n)*A103374(n+1)]`
-/

namespace A124751.P5051064926766341288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A103374 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A124751.P5051064926766341288

namespace A124751

/-- `∑[A033999(n)*A103374(n+1)]` -/
def P5051064926766341288.Spec : Prop :=
  ∀ n, P5051064926766341288.a n = A124751 n

end A124751

/-! ## A124751.P11690018624857184421

`∑[∑[A127841(n+1)]*A033999(n)]`
-/

namespace A124751.P11690018624857184421
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127841 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) * A033999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A124751.P11690018624857184421

namespace A124751

/-- `∑[∑[A127841(n+1)]*A033999(n)]` -/
def P11690018624857184421.Spec : Prop :=
  ∀ n, P11690018624857184421.a n = A124751 n

end A124751

/-! ## A124751.P11136322441994520258

`1-∑[A062157(n)*A103374(n+1)]`
-/

namespace A124751.P11136322441994520258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 n * A103374 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A124751.P11136322441994520258

namespace A124751

/-- `1-∑[A062157(n)*A103374(n+1)]` -/
def P11136322441994520258.Spec : Prop :=
  ∀ n, P11136322441994520258.a n = A124751 n

end A124751

/-! ## A124751.P4421567772699214021

`∑[∑[A127841(n+1)]*A034947(2*n+1)]`
-/

namespace A124751.P4421567772699214021
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127841 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) * A034947 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A124751.P4421567772699214021

namespace A124751

/-- `∑[∑[A127841(n+1)]*A034947(2*n+1)]` -/
def P4421567772699214021.Spec : Prop :=
  ∀ n, P4421567772699214021.a n = A124751 n

end A124751

/-! ## A124751.P10102068113006805188

`∑[A010892(A016777(n))*A103374(n+1)]`
-/

namespace A124751.P10102068113006805188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 (A016777 n).toNat * A103374 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A124751.P10102068113006805188

namespace A124751

/-- `∑[A010892(A016777(n))*A103374(n+1)]` -/
def P10102068113006805188.Spec : Prop :=
  ∀ n, P10102068113006805188.a n = A124751 n

end A124751

/-! ## A124751.P6892888319413094622

`∑[A062157(A141310(n))*A103374(n+1)]`
-/

namespace A124751.P6892888319413094622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 (A141310 n).toNat * A103374 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A124751.P6892888319413094622

namespace A124751

/-- `∑[A062157(A141310(n))*A103374(n+1)]` -/
def P6892888319413094622.Spec : Prop :=
  ∀ n, P6892888319413094622.a n = A124751 n

end A124751

/-!
# A124752: Inverse of number triangle A124749.

The programs for A124752, there is no canonical definition to state claims against.
-/

/-! ## A124752.P14741274386636953114

`∏{p}[A096334(n), A004197(#)]`
-/

namespace A124752.P14741274386636953114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096334 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A004197 p

end

end A124752.P14741274386636953114

/-! ## A124752.P18395678706156700809

`∏{p}[A096334(n), A029349(#)]`
-/

namespace A124752.P18395678706156700809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096334 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A029349 p

end

end A124752.P18395678706156700809

/-! ## A124752.P250146191847943427

`∏{p}[A096334(n), A070088(#)]`
-/

namespace A124752.P250146191847943427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096334 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A070088 p

end

end A124752.P250146191847943427

/-! ## A124752.P16837642040728128040

`∏{p}[A096334(n), A135665(#)]`
-/

namespace A124752.P16837642040728128040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096334 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A135665 p

end

end A124752.P16837642040728128040

/-! ## A124752.P6507479308340699298

`∏{p}[A096334(n), A185714(#)]`
-/

namespace A124752.P6507479308340699298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096334 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A185714 p

end

end A124752.P6507479308340699298

/-!
# A124753: a(3n+k) = (k+1)*binomial(4n+k, n)/(3n+k+1), where k is n reduced mod 3.

The programs for A124753, there is no canonical definition to state claims against.
-/

/-! ## A124753.P14793030186549803224

`A124752(A167614(n+2))`
-/

namespace A124753.P14793030186549803224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124752 (A167614 (n + 2)).toNat

end

end A124753.P14793030186549803224

/-! ## A124753.P15309387006556875326

`A124752(A008805(2*(n+2))+3)`
-/

namespace A124753.P15309387006556875326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124752 (A008805 (2 * (n + 2)) + 3).toNat

end

end A124753.P15309387006556875326

/-! ## A124753.P12330616643115771655

`A124752(A000217(n+4)-A028310(n))`
-/

namespace A124753.P12330616643115771655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124752 (A000217 (n + 4) - A028310 n).toNat

end

end A124753.P12330616643115771655

/-! ## A124753.P12391193962825710925

`A084080(abs(1-n))`
-/

namespace A124753.P12391193962825710925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084080 |1 - (n : ℤ)|.toNat

end

end A124753.P12391193962825710925

/-! ## A124753.P11114533162460889009

`or(char[1], A084080(n-A165471(n²)))`
-/

namespace A124753.P11114533162460889009
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A084080 ((n : ℤ) - A165471 (n ^ 2)).toNat)

end

end A124753.P11114533162460889009

/-!
# A124754: Alternating sum of compositions in standard order.

The programs for A124754, the canonical program `A124754.P14560867097318014973` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A124754 has offset 0).

The definition of A124754 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A124754.P14560867097318014973

`a(floor(n/2))-A106400(n)` with `a(0)=0, a(1)=1, a(2)=2, a(3)=0`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A124754

/-- `a(floor(n/2))-A106400(n)` -/
def P14560867097318014973.Spec : Prop :=
  ∀ n, P14560867097318014973.a n = A124754 n

theorem P14560867097318014973.correct : P14560867097318014973.Spec := by
  intro n
  simp only [A124754]

end A124754

/-! ## A124754.P1394869192357771526

`A145037(A006068(n))`
-/

namespace A124754.P1394869192357771526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145037 (A006068 n).toNat

end

end A124754.P1394869192357771526

namespace A124754

/-- `A145037(A006068(n))` -/
def P1394869192357771526.Spec : Prop :=
  ∀ n, P1394869192357771526.a n = A124754 n

end A124754

/-! ## A124754.P5412339297065420088

`A209281(n+1)-A346633(n)`
-/

namespace A124754.P5412339297065420088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209281 (n + 1) - A346633 n

end

end A124754.P5412339297065420088

namespace A124754

/-- `A209281(n+1)-A346633(n)` -/
def P5412339297065420088.Spec : Prop :=
  ∀ n, P5412339297065420088.a n = A124754 n

end A124754

/-! ## A124754.P7675377620123011386

`A089215(n+1)-(A346633(n)+1)`
-/

namespace A124754.P7675377620123011386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089215 (n + 1) - (A346633 n + 1)

end

end A124754.P7675377620123011386

namespace A124754

/-- `A089215(n+1)-(A346633(n)+1)` -/
def P7675377620123011386.Spec : Prop :=
  ∀ n, P7675377620123011386.a n = A124754 n

end A124754

/-! ## A124754.P15186737937650862747

`A029837(n+1)-2*A346633(n)`
-/

namespace A124754.P15186737937650862747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029837 (n + 1) - 2 * A346633 n

end

end A124754.P15186737937650862747

namespace A124754

/-- `A029837(n+1)-2*A346633(n)` -/
def P15186737937650862747.Spec : Prop :=
  ∀ n, P15186737937650862747.a n = A124754 n

end A124754

/-! ## A124754.P2346680113992636372

`2*A209281(n+1)-A029837(n+1)`
-/

namespace A124754.P2346680113992636372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A209281 (n + 1) - A029837 (n + 1)

end

end A124754.P2346680113992636372

namespace A124754

/-- `2*A209281(n+1)-A029837(n+1)` -/
def P2346680113992636372.Spec : Prop :=
  ∀ n, P2346680113992636372.a n = A124754 n

end A124754

/-! ## A124754.P16244863001278849806

`A000007(n)-A037861(A006068(n))`
-/

namespace A124754.P16244863001278849806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n - A037861 (A006068 n).toNat

end

end A124754.P16244863001278849806

namespace A124754

/-- `A000007(n)-A037861(A006068(n))` -/
def P16244863001278849806.Spec : Prop :=
  ∀ n, P16244863001278849806.a n = A124754 n

end A124754

/-! ## A124754.P41890683485942862

`A085144(A000069(n+1))`
-/

namespace A124754.P41890683485942862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085144 (A000069 (n + 1)).toNat

end

end A124754.P41890683485942862

namespace A124754

/-- `A085144(A000069(n+1))` -/
def P41890683485942862.Spec : Prop :=
  ∀ n, P41890683485942862.a n = A124754 n

end A124754

/-! ## A124754.P9220866632274707686

`A085144(eq[0, A010059(n)])`
-/

namespace A124754.P9220866632274707686
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010059 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085144 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A124754.P9220866632274707686

namespace A124754

/-- `A085144(eq[0, A010059(n)])` -/
def P9220866632274707686.Spec : Prop :=
  ∀ n, P9220866632274707686.a n = A124754 n

end A124754

/-! ## A124754.P16586849267007984525

`A085144(lt[0, A010060(n)])`
-/

namespace A124754.P16586849267007984525
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085144 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A124754.P16586849267007984525

namespace A124754

/-- `A085144(lt[0, A010060(n)])` -/
def P16586849267007984525.Spec : Prop :=
  ∀ n, P16586849267007984525.a n = A124754 n

end A124754

/-! ## A124754.P7980751388065244942

`A085144(eq[1, A010060(n)])`
-/

namespace A124754.P7980751388065244942
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085144 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A124754.P7980751388065244942

namespace A124754

/-- `A085144(eq[1, A010060(n)])` -/
def P7980751388065244942.Spec : Prop :=
  ∀ n, P7980751388065244942.a n = A124754 n

end A124754

/-! ## A124754.P965607830791070775

`A085144(lt[A106400(n), 0])`
-/

namespace A124754.P965607830791070775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106400 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085144 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A124754.P965607830791070775

namespace A124754

/-- `A085144(lt[A106400(n), 0])` -/
def P965607830791070775.Spec : Prop :=
  ∀ n, P965607830791070775.a n = A124754 n

end A124754

/-! ## A124754.P9812149056173197751

`A085144(lt[1, A001285(n)])`
-/

namespace A124754.P9812149056173197751
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001285 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085144 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A124754.P9812149056173197751

namespace A124754

/-- `A085144(lt[1, A001285(n)])` -/
def P9812149056173197751.Spec : Prop :=
  ∀ n, P9812149056173197751.a n = A124754 n

end A124754

/-! ## A124754.P1834856001379365627

`A085144(eq[2, A001285(n)])`
-/

namespace A124754.P1834856001379365627
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001285 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085144 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A124754.P1834856001379365627

namespace A124754

/-- `A085144(eq[2, A001285(n)])` -/
def P1834856001379365627.Spec : Prop :=
  ∀ n, P1834856001379365627.a n = A124754 n

end A124754

/-! ## A124754.P8630251068238084171

`A085144(lt[A010059(n), 1])`
-/

namespace A124754.P8630251068238084171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010059 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085144 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A124754.P8630251068238084171

namespace A124754

/-- `A085144(lt[A010059(n), 1])` -/
def P8630251068238084171.Spec : Prop :=
  ∀ n, P8630251068238084171.a n = A124754 n

end A124754

/-! ## A124754.P4030217701320302333

`A085144(comp[n*A010059(n)])`
-/

namespace A124754.P4030217701320302333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A010059 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085144 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A124754.P4030217701320302333

namespace A124754

/-- `A085144(comp[n*A010059(n)])` -/
def P4030217701320302333.Spec : Prop :=
  ∀ n, P4030217701320302333.a n = A124754 n

end A124754

/-! ## A124754.P14795447275271139732

`A085144(A010059(n)+2*n)`
-/

namespace A124754.P14795447275271139732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085144 (A010059 n + (2 * n : ℤ)).toNat

end

end A124754.P14795447275271139732

namespace A124754

/-- `A085144(A010059(n)+2*n)` -/
def P14795447275271139732.Spec : Prop :=
  ∀ n, P14795447275271139732.a n = A124754 n

end A124754

/-! ## A124754.P14818643755681902161

`A085144(A010059(n)+n+n)`
-/

namespace A124754.P14818643755681902161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085144 (A010059 n + (n : ℤ) + (n : ℤ)).toNat

end

end A124754.P14818643755681902161

namespace A124754

/-- `A085144(A010059(n)+n+n)` -/
def P14818643755681902161.Spec : Prop :=
  ∀ n, P14818643755681902161.a n = A124754 n

end A124754

/-! ## A124754.P622923699578460914

`A085144(eq[1, A254377(2*n+1)])`
-/

namespace A124754.P622923699578460914
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254377 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085144 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A124754.P622923699578460914

namespace A124754

/-- `A085144(eq[1, A254377(2*n+1)])` -/
def P622923699578460914.Spec : Prop :=
  ∀ n, P622923699578460914.a n = A124754 n

end A124754

/-! ## A124754.P13746783281817898248

`A085144(1-A010060(n)+2*n)`
-/

namespace A124754.P13746783281817898248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085144 (1 - A010060 n + (2 * n : ℤ)).toNat

end

end A124754.P13746783281817898248

namespace A124754

/-- `A085144(1-A010060(n)+2*n)` -/
def P13746783281817898248.Spec : Prop :=
  ∀ n, P13746783281817898248.a n = A124754 n

end A124754

/-!
# A124755: Binomial sum of compositions in standard order.

The programs for A124755, there is no canonical definition to state claims against.
-/

/-! ## A124755.P10619337822057860072

`A167866(A045753(n+1)-A245928(n))`
-/

namespace A124755.P10619337822057860072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167866 (A045753 (n + 1) - A245928 n).toNat

end

end A124755.P10619337822057860072

/-! ## A124755.P12467433166167731640

`A097637(n)+A001221(A026336(n))`
-/

namespace A124755.P12467433166167731640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097637 n + A001221 (A026336 n).toNat

end

end A124755.P12467433166167731640

/-!
# A124756: Inverse binomial sum of compositions in standard order.

The programs for A124756, there is no canonical definition to state claims against.
-/

/-! ## A124756.P17220077531609791791

`A306754(Δ[n²])`
-/

namespace A124756.P17220077531609791791
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306754 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A124756.P17220077531609791791

/-! ## A124756.P7015964536059809473

`A306754(2*n+1)%10`
-/

namespace A124756.P7015964536059809473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A306754 (2 * n + 1)) 10

end

end A124756.P7015964536059809473

/-! ## A124756.P6485790013221471259

`and(-1, A306754(A005408(n)))`
-/

namespace A124756.P6485790013221471259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A306754 (A005408 n).toNat)

end

end A124756.P6485790013221471259

/-! ## A124756.P1217452913175256706

`A057427(n)*A306754(2*n+1)`
-/

namespace A124756.P1217452913175256706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A306754 (2 * n + 1)

end

end A124756.P1217452913175256706

/-! ## A124756.P10264294589124927613

`A158388(n)*A306754(2*n+1)`
-/

namespace A124756.P10264294589124927613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158388 n * A306754 (2 * n + 1)

end

end A124756.P10264294589124927613

/-! ## A124756.P1215078032417157736

`A306754(A016825(n))-C(2, n+2)`
-/

namespace A124756.P1215078032417157736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306754 (A016825 n).toNat - (Nat.choose 2 (n + 2) : ℤ)

end

end A124756.P1215078032417157736

/-! ## A124756.P12870048844818870980

`A306754(2*n+1)+A268384(2*n)`
-/

namespace A124756.P12870048844818870980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306754 (2 * n + 1) + A268384 (2 * n)

end

end A124756.P12870048844818870980

/-! ## A124756.P7359027635872238646

`A306754(2*n+1)/A007318(C(2, n))`
-/

namespace A124756.P7359027635872238646
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A306754 (2 * n + 1) : ℚ) / (A007318 (Nat.choose 2 n) : ℚ)

end

end A124756.P7359027635872238646

/-! ## A124756.P4625715835534012875

`A306754(2*n+1)^A007318(C(3, n))`
-/

namespace A124756.P4625715835534012875
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A306754 (2 * n + 1) : ℚ) ^ (A007318 (Nat.choose 3 n) : ℤ)

end

end A124756.P4625715835534012875

/-! ## A124756.P12643414126962196696

`A306754(2*n+1)+A209229(2*n+3)`
-/

namespace A124756.P12643414126962196696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306754 (2 * n + 1) + A209229 (2 * n + 3)

end

end A124756.P12643414126962196696

/-! ## A124756.P17871237536298840290

`A008683(gcd(n, n+1))*A306754(2*n+1)`
-/

namespace A124756.P17871237536298840290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (Nat.gcd n (n + 1)) * A306754 (2 * n + 1)

end

end A124756.P17871237536298840290

/-! ## A124756.P17973776547687562849

`A306754(2*n+1)+C(n, A000108(n+1))`
-/

namespace A124756.P17973776547687562849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306754 (2 * n + 1) + (Nat.choose n (A000108 (n + 1)).toNat : ℤ)

end

end A124756.P17973776547687562849

/-! ## A124756.P11227793243895460069

`or(char[A000041((n+2)²)], A306754(2*n+1))`
-/

namespace A124756.P11227793243895460069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 ((n + 2) ^ 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A306754 (2 * n + 1))

end

end A124756.P11227793243895460069

/-! ## A124756.P5892793343757523780

`A306754(A005408(n))+A000007(n+1)`
-/

namespace A124756.P5892793343757523780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306754 (A005408 n).toNat + A000007 (n + 1)

end

end A124756.P5892793343757523780

/-! ## A124756.P13868527653713983497

`(1-A000007(n))*A306754(A005408(n))`
-/

namespace A124756.P13868527653713983497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A000007 n) * A306754 (A005408 n).toNat

end

end A124756.P13868527653713983497

/-! ## A124756.P9174269607762081946

`A007318(C(2, n))*A306754(A005408(n))`
-/

namespace A124756.P9174269607762081946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A306754 (A005408 n).toNat

end

end A124756.P9174269607762081946

/-! ## A124756.P8063699467657369773

`A306754(A005408(n))^A014963(∑[n+1])`
-/

namespace A124756.P8063699467657369773
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A306754 (A005408 n).toNat : ℚ) ^ (A014963 (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ)

end

end A124756.P8063699467657369773

/-! ## A124756.P16215948141133613022

`A306754(A005408(n))+A008683(4*(n+1))`
-/

namespace A124756.P16215948141133613022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306754 (A005408 n).toNat + A008683 (4 * (n + 1))

end

end A124756.P16215948141133613022

/-! ## A124756.P10381618139485152893

`A306754(A005408(n))/A014963(4*n+2)`
-/

namespace A124756.P10381618139485152893
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A306754 (A005408 n).toNat : ℚ) / (A014963 (4 * n + 2) : ℚ)

end

end A124756.P10381618139485152893

/-! ## A124756.P12417378647409705245

`A000108(C(2, n+2))*A306754(A005408(n))`
-/

namespace A124756.P12417378647409705245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (Nat.choose 2 (n + 2)) * A306754 (A005408 n).toNat

end

end A124756.P12417378647409705245

/-!
# A124757: Zero-based weighted sum of compositions in standard order.

The programs for A124757, the canonical program `A124757.P9485539278718531348` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A124757 has offset 0).

The definition of A124757 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A124757.P12639887332413814071

`A029931(n)-ceil(log2(n+1))`
-/

namespace A124757.P12639887332413814071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029931 n - ⌈Real.logb 2 (n + 1 : ℝ)⌉

end

end A124757.P12639887332413814071

namespace A124757

/-- `A029931(n)-ceil(log2(n+1))` -/
def P12639887332413814071.Spec : Prop :=
  ∀ n, P12639887332413814071.a n = A124757 n

end A124757

/-! ## A124757.P9485539278718531348

`a(∑[char[2*n]]-1)+n-A011371(n)-1` with `a(0)=0`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A124757

/-- `a(∑[char[2*n]]-1)+n-A011371(n)-1` -/
def P9485539278718531348.Spec : Prop :=
  ∀ n, P9485539278718531348.a n = A124757 n

theorem P9485539278718531348.correct : P9485539278718531348.Spec := by
  intro n
  simp only [A124757]

end A124757

/-! ## A124757.P4636181343458823532

`A073642(A006257(n))`
-/

namespace A124757.P4636181343458823532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073642 (A006257 n).toNat

end

end A124757.P4636181343458823532

namespace A124757

/-- `A073642(A006257(n))` -/
def P4636181343458823532.Spec : Prop :=
  ∀ n, P4636181343458823532.a n = A124757 n

end A124757

/-! ## A124757.P4068935425701309685

`A029931(n-A053644(n))`
-/

namespace A124757.P4068935425701309685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029931 ((n : ℤ) - A053644 n).toNat

end

end A124757.P4068935425701309685

namespace A124757

/-- `A029931(n-A053644(n))` -/
def P4068935425701309685.Spec : Prop :=
  ∀ n, P4068935425701309685.a n = A124757 n

end A124757

/-! ## A124757.P14141740867872312556

`A073642(n)-A080791(n)`
-/

namespace A124757.P14141740867872312556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073642 n - A080791 n

end

end A124757.P14141740867872312556

namespace A124757

/-- `A073642(n)-A080791(n)` -/
def P14141740867872312556.Spec : Prop :=
  ∀ n, P14141740867872312556.a n = A124757 n

end A124757

/-! ## A124757.P10906380368930599709

`A283981(n)-A283982(n)`
-/

namespace A124757.P10906380368930599709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283981 n - A283982 n

end

end A124757.P10906380368930599709

namespace A124757

/-- `A283981(n)-A283982(n)` -/
def P10906380368930599709.Spec : Prop :=
  ∀ n, P10906380368930599709.a n = A124757 n

end A124757

/-! ## A124757.P1332781152946142185

`A073642(2*n-A003817(n))`
-/

namespace A124757.P1332781152946142185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073642 ((2 * n : ℤ) - A003817 n).toNat

end

end A124757.P1332781152946142185

namespace A124757

/-- `A073642(2*n-A003817(n))` -/
def P1332781152946142185.Spec : Prop :=
  ∀ n, P1332781152946142185.a n = A124757 n

end A124757

/-! ## A124757.P16815759990288178150

`A073642(n-A003817(n)+n)`
-/

namespace A124757.P16815759990288178150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073642 ((n : ℤ) - A003817 n + (n : ℤ)).toNat

end

end A124757.P16815759990288178150

namespace A124757

/-- `A073642(n-A003817(n)+n)` -/
def P16815759990288178150.Spec : Prop :=
  ∀ n, P16815759990288178150.a n = A124757 n

end A124757

/-! ## A124757.P2162467025208501272

`A073642(n-(A003817(n)-n))`
-/

namespace A124757.P2162467025208501272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073642 ((n : ℤ) - (A003817 n - (n : ℤ))).toNat

end

end A124757.P2162467025208501272

namespace A124757

/-- `A073642(n-(A003817(n)-n))` -/
def P2162467025208501272.Spec : Prop :=
  ∀ n, P2162467025208501272.a n = A124757 n

end A124757

/-! ## A124757.P13041817483844395666

`log2(A029930(n)/(A003817(n)+1))`
-/

namespace A124757.P13041817483844395666
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 ((A029930 n : ℚ) / (A003817 n + 1 : ℚ) : ℝ)

end

end A124757.P13041817483844395666

namespace A124757

/-- `log2(A029930(n)/(A003817(n)+1))` -/
def P13041817483844395666.Spec : Prop :=
  ∀ n, P13041817483844395666.a n = (A124757 n : ℝ)

end A124757

/-! ## A124757.P10636410118848786823

`A073642(and(A035327(n)+n, A005843(n)))`
-/

namespace A124757.P10636410118848786823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073642 (Int.land (A035327 n + (n : ℤ)) (A005843 n)).toNat

end

end A124757.P10636410118848786823

namespace A124757

/-- `A073642(and(A035327(n)+n, A005843(n)))` -/
def P10636410118848786823.Spec : Prop :=
  ∀ n, P10636410118848786823.a n = A124757 n

end A124757

/-! ## A124757.P1750079495379387488

`A073642(and(n-A035327(n), A005843(n)))`
-/

namespace A124757.P1750079495379387488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073642 (Int.land ((n : ℤ) - A035327 n) (A005843 n)).toNat

end

end A124757.P1750079495379387488

namespace A124757

/-- `A073642(and(n-A035327(n), A005843(n)))` -/
def P1750079495379387488.Spec : Prop :=
  ∀ n, P1750079495379387488.a n = A124757 n

end A124757

/-! ## A124757.P1461817640488117398

`A000120(n)*A029837(n+1)-A359042(n)`
-/

namespace A124757.P1461817640488117398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n * A029837 (n + 1) - A359042 n

end

end A124757.P1461817640488117398

namespace A124757

/-- `A000120(n)*A029837(n+1)-A359042(n)` -/
def P1461817640488117398.Spec : Prop :=
  ∀ n, P1461817640488117398.a n = A124757 n

end A124757

/-! ## A124757.P11699696124680080764

`A231204(n)-A359495(2*n+1)`
-/

namespace A124757.P11699696124680080764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231204 n - A359495 (2 * n + 1)

end

end A124757.P11699696124680080764

namespace A124757

/-- `A231204(n)-A359495(2*n+1)` -/
def P11699696124680080764.Spec : Prop :=
  ∀ n, P11699696124680080764.a n = A124757 n

end A124757

/-! ## A124757.P8525981909890349940

`log2(A029930(n))-A002487(A003817(n))`
-/

namespace A124757.P8525981909890349940
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A029930 n : ℝ) - (A002487 (A003817 n).toNat : ℝ)

end

end A124757.P8525981909890349940

namespace A124757

/-- `log2(A029930(n))-A002487(A003817(n))` -/
def P8525981909890349940.Spec : Prop :=
  ∀ n, P8525981909890349940.a n = (A124757 n : ℝ)

end A124757

/-! ## A124757.P14214987689403231587

`A073642(A053645(2*n+1))`
-/

namespace A124757.P14214987689403231587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073642 (A053645 (2 * n + 1)).toNat

end

end A124757.P14214987689403231587

namespace A124757

/-- `A073642(A053645(2*n+1))` -/
def P14214987689403231587.Spec : Prop :=
  ∀ n, P14214987689403231587.a n = A124757 n

end A124757

/-! ## A124757.P6613994843428770597

`A073642(n)-A023416(2*n+1)`
-/

namespace A124757.P6613994843428770597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073642 n - A023416 (2 * n + 1)

end

end A124757.P6613994843428770597

namespace A124757

/-- `A073642(n)-A023416(2*n+1)` -/
def P6613994843428770597.Spec : Prop :=
  ∀ n, P6613994843428770597.a n = A124757 n

end A124757

/-! ## A124757.P13472374154601653460

`A073642(2*n)-A000523(2*n+1)`
-/

namespace A124757.P13472374154601653460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073642 (2 * n) - A000523 (2 * n + 1)

end

end A124757.P13472374154601653460

namespace A124757

/-- `A073642(2*n)-A000523(2*n+1)` -/
def P13472374154601653460.Spec : Prop :=
  ∀ n, P13472374154601653460.a n = A124757 n

end A124757

/-! ## A124757.P15717650354365083437

`A073642(2*n)+1-A070939(2*n)`
-/

namespace A124757.P15717650354365083437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073642 (2 * n) + (1 - A070939 (2 * n))

end

end A124757.P15717650354365083437

namespace A124757

/-- `A073642(2*n)+1-A070939(2*n)` -/
def P15717650354365083437.Spec : Prop :=
  ∀ n, P15717650354365083437.a n = A124757 n

end A124757

/-!
# A124758: Product of the parts of the compositions in standard order.

The programs for A124758, the canonical program `A124758.P9212637883237908806` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A124758 has offset 0).

The definition of A124758 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A124758.P16613971227272763008

`A366799(A036044(n))`
-/

namespace A124758.P16613971227272763008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366799 (A036044 n).toNat

end

end A124758.P16613971227272763008

namespace A124758

/-- `A366799(A036044(n))` -/
def P16613971227272763008.Spec : Prop :=
  ∀ n, P16613971227272763008.a n = A124758 n

end A124758

/-! ## A124758.P11099110270088157510

`A366799(A261693(n))`
-/

namespace A124758.P11099110270088157510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366799 (A261693 n).toNat

end

end A124758.P11099110270088157510

namespace A124758

/-- `A366799(A261693(n))` -/
def P11099110270088157510.Spec : Prop :=
  ∀ n, P11099110270088157510.a n = A124758 n

end A124758

/-! ## A124758.P3216583056140917650

`A003963(A333219(n+1))`
-/

namespace A124758.P3216583056140917650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (A333219 (n + 1)).toNat

end

end A124758.P3216583056140917650

namespace A124758

/-- `A003963(A333219(n+1))` -/
def P3216583056140917650.Spec : Prop :=
  ∀ n, P3216583056140917650.a n = A124758 n

end A124758

/-! ## A124758.P5008445633782883733

`A324183(A030109(n+1))`
-/

namespace A124758.P5008445633782883733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324183 (A030109 (n + 1)).toNat

end

end A124758.P5008445633782883733

namespace A124758

/-- `A324183(A030109(n+1))` -/
def P5008445633782883733.Spec : Prop :=
  ∀ n, P5008445633782883733.a n = A124758 n

end A124758

/-! ## A124758.P12809994505958480242

`A106737(n-A006257(n))`
-/

namespace A124758.P12809994505958480242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106737 ((n : ℤ) - A006257 n).toNat

end

end A124758.P12809994505958480242

namespace A124758

/-- `A106737(n-A006257(n))` -/
def P12809994505958480242.Spec : Prop :=
  ∀ n, P12809994505958480242.a n = A124758 n

end A124758

/-! ## A124758.P16129986018458437268

`A366797(A366389(n+1))`
-/

namespace A124758.P16129986018458437268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366797 (A366389 (n + 1)).toNat

end

end A124758.P16129986018458437268

namespace A124758

/-- `A366797(A366389(n+1))` -/
def P16129986018458437268.Spec : Prop :=
  ∀ n, P16129986018458437268.a n = A124758 n

end A124758

/-! ## A124758.P6676727347787491629

`A167489(A006068(n))`
-/

namespace A124758.P6676727347787491629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167489 (A006068 n).toNat

end

end A124758.P6676727347787491629

namespace A124758

/-- `A167489(A006068(n))` -/
def P6676727347787491629.Spec : Prop :=
  ∀ n, P6676727347787491629.a n = A124758 n

end A124758

/-! ## A124758.P2228672280275413840

`A167489(A341916(n))`
-/

namespace A124758.P2228672280275413840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167489 (A341916 n).toNat

end

end A124758.P2228672280275413840

namespace A124758

/-- `A167489(A341916(n))` -/
def P2228672280275413840.Spec : Prop :=
  ∀ n, P2228672280275413840.a n = A124758 n

end A124758

/-! ## A124758.P15265450180472473937

`A106737(A086099(2*n)-n)`
-/

namespace A124758.P15265450180472473937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106737 (A086099 (2 * n) - (n : ℤ)).toNat

end

end A124758.P15265450180472473937

namespace A124758

/-- `A106737(A086099(2*n)-n)` -/
def P15265450180472473937.Spec : Prop :=
  ∀ n, P15265450180472473937.a n = A124758 n

end A124758

/-! ## A124758.P9212637883237908806

`A161225(Δ[n²])+1`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A124758

/-- `A161225(Δ[n²])+1` -/
def P9212637883237908806.Spec : Prop :=
  ∀ n, P9212637883237908806.a n = A124758 n

theorem P9212637883237908806.correct : P9212637883237908806.Spec := by
  intro n
  simp only [A124758]

end A124758

/-! ## A124758.P5376580488429936286

`A167489(A038558(n))`
-/

namespace A124758.P5376580488429936286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167489 (A038558 n).toNat

end

end A124758.P5376580488429936286

namespace A124758

/-- `A167489(A038558(n))` -/
def P5376580488429936286.Spec : Prop :=
  ∀ n, P5376580488429936286.a n = A124758 n

end A124758

/-! ## A124758.P12365949988477129029

`A000005(A278533(2*n+1))/2`
-/

namespace A124758.P12365949988477129029
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000005 (A278533 (2 * n + 1)).toNat : ℚ) / 2

end

end A124758.P12365949988477129029

namespace A124758

/-- `A000005(A278533(2*n+1))/2` -/
def P12365949988477129029.Spec : Prop :=
  ∀ n, P12365949988477129029.a n = (A124758 n : ℚ)

end A124758

/-! ## A124758.P721519726440841422

`A167489(A227351(A048680(n)))`
-/

namespace A124758.P721519726440841422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167489 (A227351 (A048680 n).toNat).toNat

end

end A124758.P721519726440841422

namespace A124758

/-- `A167489(A227351(A048680(n)))` -/
def P721519726440841422.Spec : Prop :=
  ∀ n, P721519726440841422.a n = A124758 n

end A124758

/-! ## A124758.P3233159698058597694

`A227355(A048680(n+1)-1)`
-/

namespace A124758.P3233159698058597694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227355 (A048680 (n + 1) - 1).toNat

end

end A124758.P3233159698058597694

namespace A124758

/-- `A227355(A048680(n+1)-1)` -/
def P3233159698058597694.Spec : Prop :=
  ∀ n, P3233159698058597694.a n = A124758 n

end A124758

/-! ## A124758.P10101251860088046394

`A359250(A000788(2*n+1)-1)`
-/

namespace A124758.P10101251860088046394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359250 (A000788 (2 * n + 1) - 1).toNat

end

end A124758.P10101251860088046394

namespace A124758

/-- `A359250(A000788(2*n+1)-1)` -/
def P10101251860088046394.Spec : Prop :=
  ∀ n, P10101251860088046394.a n = A124758 n

end A124758

/-! ## A124758.P2716416915226623151

`A324183(A115352(n))`
-/

namespace A124758.P2716416915226623151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324183 (A115352 n).toNat

end

end A124758.P2716416915226623151

namespace A124758

/-- `A324183(A115352(n))` -/
def P2716416915226623151.Spec : Prop :=
  ∀ n, P2716416915226623151.a n = A124758 n

end A124758

/-! ## A124758.P10533766229215882376

`A227355(A048680(2*n))`
-/

namespace A124758.P10533766229215882376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227355 (A048680 (2 * n)).toNat

end

end A124758.P10533766229215882376

namespace A124758

/-- `A227355(A048680(2*n))` -/
def P10533766229215882376.Spec : Prop :=
  ∀ n, P10533766229215882376.a n = A124758 n

end A124758

/-! ## A124758.P7142174200334901076

`A000005(A253563(2*n+1))/2`
-/

namespace A124758.P7142174200334901076
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000005 (A253563 (2 * n + 1)).toNat : ℚ) / 2

end

end A124758.P7142174200334901076

namespace A124758

/-- `A000005(A253563(2*n+1))/2` -/
def P7142174200334901076.Spec : Prop :=
  ∀ n, P7142174200334901076.a n = (A124758 n : ℚ)

end A124758

/-! ## A124758.P6386865309259216882

`∏{digits}[A275536(2*n+1), #]`
-/

namespace A124758.P6386865309259216882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275536 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).prod

end

end A124758.P6386865309259216882

namespace A124758

/-- `∏{digits}[A275536(2*n+1), #]` -/
def P6386865309259216882.Spec : Prop :=
  ∀ n, (P6386865309259216882.a n : ℤ) = A124758 n

end A124758

/-! ## A124758.P8927490247280887084

`A106737(A335587(n))`
-/

namespace A124758.P8927490247280887084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106737 (A335587 n).toNat

end

end A124758.P8927490247280887084

namespace A124758

/-- `A106737(A335587(n))` -/
def P8927490247280887084.Spec : Prop :=
  ∀ n, P8927490247280887084.a n = A124758 n

end A124758

/-!
# A124759: Sum of products of consecutive terms for compositions in standard order.

The programs for A124759, the canonical program `A124759.P11258392673958110948` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A124759 has offset 0).

The definition of A124759 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8193 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A124759.P11258392673958110948

`A285097(n)+a(A004526(n))` with `a(0)=0`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A124759

/-- `A285097(n)+a(A004526(n))` -/
def P11258392673958110948.Spec : Prop :=
  ∀ n, P11258392673958110948.a n = A124759 n

theorem P11258392673958110948.correct : P11258392673958110948.Spec := by
  intro n
  simp only [A124759]

end A124759

/-! ## A124759.P12066203824606346352

`A285097(n)+a(A123108(n))` with `a(0)=0`
-/

namespace A124759.P12066203824606346352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A285097 n + a (A123108 n).toNat

end

end A124759.P12066203824606346352

namespace A124759

/-- `A285097(n)+a(A123108(n))` -/
def P12066203824606346352.Spec : Prop :=
  ∀ n, P12066203824606346352.a n = A124759 n

end A124759

/-! ## A124759.P12602039335153416844

`A328615(A000051(n)-A283985(n))`
-/

namespace A124759.P12602039335153416844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328615 (A000051 n - A283985 n).toNat

end

end A124759.P12602039335153416844

namespace A124759

/-- `A328615(A000051(n)-A283985(n))` -/
def P12602039335153416844.Spec : Prop :=
  ∀ n, P12602039335153416844.a n = A124759 n

end A124759

/-! ## A124759.P1955064999086668648

`A328615(A000079(n)-A283985(n))`
-/

namespace A124759.P1955064999086668648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328615 (A000079 n - A283985 n).toNat

end

end A124759.P1955064999086668648

namespace A124759

/-- `A328615(A000079(n)-A283985(n))` -/
def P1955064999086668648.Spec : Prop :=
  ∀ n, P1955064999086668648.a n = A124759 n

end A124759

/-! ## A124759.P15173812125345603371

`A131576(lcm(A000069(n+1), A000204(n+1)))`
-/

namespace A124759.P15173812125345603371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131576 (Int.lcm (A000069 (n + 1)) (A000204 (n + 1)))

end

end A124759.P15173812125345603371

namespace A124759

/-- `A131576(lcm(A000069(n+1), A000204(n+1)))` -/
def P15173812125345603371.Spec : Prop :=
  ∀ n, P15173812125345603371.a n = A124759 n

end A124759

/-!
# A124760: Number of rises for compositions in standard order.

The programs for A124760, there is no canonical definition to state claims against.
-/

/-! ## A124760.P14835805966155305335

`A124765(n)-ceil(abs(sin(n)))`
-/

namespace A124760.P14835805966155305335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124765 n - ⌈|Real.sin (n : ℝ)|⌉

end

end A124760.P14835805966155305335

/-! ## A124760.P16954975349861331798

`A124765(A028310(n))-1`
-/

namespace A124760.P16954975349861331798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124765 (A028310 n).toNat - 1

end

end A124760.P16954975349861331798

/-! ## A124760.P7974279245076638374

`A124765(n)+A057428(n)`
-/

namespace A124760.P7974279245076638374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124765 n + A057428 n

end

end A124760.P7974279245076638374

/-! ## A124760.P14070126001592485243

`A124765(n)-A057427(n)`
-/

namespace A124760.P14070126001592485243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124765 n - A057427 n

end

end A124760.P14070126001592485243

/-! ## A124760.P15742838550228209142

`A124765(A000007(n)+n)-1`
-/

namespace A124760.P15742838550228209142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124765 (A000007 n + (n : ℤ)).toNat - 1

end

end A124760.P15742838550228209142

/-! ## A124760.P1159123223364323799

`A124765(n)-(1-A000007(n))`
-/

namespace A124760.P1159123223364323799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124765 n - (1 - A000007 n)

end

end A124760.P1159123223364323799

/-! ## A124760.P17790824389172491452

`gcd(A124765(n), A278222(n))-1`
-/

namespace A124760.P17790824389172491452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd (A124765 n) (A278222 n) : ℤ) - 1

end

end A124760.P17790824389172491452

/-! ## A124760.P4932770789619743630

`A124765(n)-A001221(A303809(n+1))`
-/

namespace A124760.P4932770789619743630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124765 n - A001221 (A303809 (n + 1)).toNat

end

end A124760.P4932770789619743630

/-! ## A124760.P16082373280419794188

`A124765(n)-A124765(A001316(n)-1)`
-/

namespace A124760.P16082373280419794188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124765 n - A124765 (A001316 n - 1).toNat

end

end A124760.P16082373280419794188

/-! ## A124760.P16423579015623818870

`A124765(Δ[n²])-1`
-/

namespace A124760.P16423579015623818870
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124765 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - 1

end

end A124760.P16423579015623818870

/-! ## A124760.P5312425408074811568

`A000120(n)-A124768(n)`
-/

namespace A124760.P5312425408074811568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n - A124768 n

end

end A124760.P5312425408074811568

/-! ## A124760.P16738032810760915556

`A124764(n)-A124762(n)`
-/

namespace A124760.P16738032810760915556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124764 n - A124762 n

end

end A124760.P16738032810760915556

/-! ## A124760.P16488502829893853743

`A124767(n)-A124766(n)`
-/

namespace A124760.P16488502829893853743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124767 n - A124766 n

end

end A124760.P16488502829893853743

/-! ## A124760.P18262191135883083057

`A124763(A001316(n)-1)-A124763(n)`
-/

namespace A124760.P18262191135883083057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124763 (A001316 n - 1).toNat - A124763 n

end

end A124760.P18262191135883083057

/-! ## A124760.P3502881534157868857

`A124761(n)+A124764(n)-A124763(n)`
-/

namespace A124760.P3502881534157868857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124761 n + (A124764 n - A124763 n)

end

end A124760.P3502881534157868857

/-! ## A124760.P17728721649492713355

`A124761(n)+A124765(n)-A124766(n)`
-/

namespace A124760.P17728721649492713355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124761 n + (A124765 n - A124766 n)

end

end A124760.P17728721649492713355

/-! ## A124760.P610098738527218262

`A124763(n)+A124765(n)-A124768(n)`
-/

namespace A124760.P610098738527218262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124763 n + (A124765 n - A124768 n)

end

end A124760.P610098738527218262

/-! ## A124760.P471670359864727032

`A124764(n)+A124765(n)-A124769(n)`
-/

namespace A124760.P471670359864727032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124764 n + (A124765 n - A124769 n)

end

end A124760.P471670359864727032

/-!
# A124761: Number of falls for compositions in standard order.

The programs for A124761, there is no canonical definition to state claims against.
-/

/-! ## A124761.P15638029900368866033

`ceil(log(A124766(n)!))`
-/

namespace A124761.P15638029900368866033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.log (Nat.factorial (A124766 n).toNat : ℝ)⌉

end

end A124761.P15638029900368866033

/-! ## A124761.P15796843176198920455

`A124766(ceil(abs(γ-n)))-1`
-/

namespace A124761.P15796843176198920455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124766 ⌈|Real.eulerMascheroniConstant - (n : ℝ)|⌉.toNat - 1

end

end A124761.P15796843176198920455

/-! ## A124761.P6741165041428422760

`5%A124766(round(sqrt(n²+1)))`
-/

namespace A124761.P6741165041428422760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 5 (A124766 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat)

end

end A124761.P6741165041428422760

/-! ## A124761.P11490600308615731327

`∑[∑{e}[xor(n, -n), 2-#]]-A124769(n)`
-/

namespace A124761.P11490600308615731327
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (-(n : ℤ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n).natAbs, (2 - (Nat.factorization (f2 n).natAbs p : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A124769 n

end

end A124761.P11490600308615731327

/-! ## A124761.P18390538603772277007

`n%(∑[∑{e}[xor(n, -n), 2-#]]-A124764(n)-n-1)`
-/

namespace A124761.P18390538603772277007
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (-(n : ℤ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n).natAbs, (2 - (Nat.factorization (f2 n).natAbs p : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n : ℤ) (∑ j ∈ Finset.range (n + 1), f1 j - A124764 n - (n : ℤ) - 1)

end

end A124761.P18390538603772277007

/-! ## A124761.P249346008980110981

`A124760(A145341(n+1))`
-/

namespace A124761.P249346008980110981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124760 (A145341 (n + 1)).toNat

end

end A124761.P249346008980110981

/-! ## A124761.P4622728647867403632

`A000120(n)-A124769(n)`
-/

namespace A124761.P4622728647867403632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n - A124769 n

end

end A124761.P4622728647867403632

/-! ## A124761.P13468169604948465229

`A124763(n)-A124762(n)`
-/

namespace A124761.P13468169604948465229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124763 n - A124762 n

end

end A124761.P13468169604948465229

/-! ## A124761.P15640502759728021017

`A124767(n)-A124765(n)`
-/

namespace A124761.P15640502759728021017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124767 n - A124765 n

end

end A124761.P15640502759728021017

/-! ## A124761.P11174118139435336536

`A124760(A057889(2*n+1))`
-/

namespace A124761.P11174118139435336536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124760 (A057889 (2 * n + 1)).toNat

end

end A124761.P11174118139435336536

/-! ## A124761.P10811276366103297401

`A000007(n)+A124766(n)-1`
-/

namespace A124761.P10811276366103297401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (A124766 n - 1)

end

end A124761.P10811276366103297401

/-! ## A124761.P15110195900815914789

`(A124766(n)-1)*A057427(n)`
-/

namespace A124761.P15110195900815914789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A124766 n - 1) * A057427 n

end

end A124761.P15110195900815914789

/-! ## A124761.P16074176443585683316

`gcd(A000122(n), A124766(n))-1`
-/

namespace A124761.P16074176443585683316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd (A000122 n) (A124766 n) : ℤ) - 1

end

end A124761.P16074176443585683316

/-! ## A124761.P8669675786363200238

`floor(A124766(n)-n/A000041(n))`
-/

namespace A124761.P8669675786363200238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A124766 n : ℚ) - (n : ℚ) / (A000041 n : ℚ)⌋

end

end A124761.P8669675786363200238

/-! ## A124761.P15757707638652671300

`(A124766(n)-1)%gcd(2, A000010(n+2))²`
-/

namespace A124761.P15757707638652671300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A124766 n - 1) (Int.gcd 2 (A000010 (n + 2)) ^ 2 : ℤ)

end

end A124761.P15757707638652671300

/-! ## A124761.P13487084011211579336

`A124769(A038573(n))-A124769(n)`
-/

namespace A124761.P13487084011211579336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124769 (A038573 n).toNat - A124769 n

end

end A124761.P13487084011211579336

/-! ## A124761.P1729128492523088520

`A001221((A000120(n)-A124764(n))!)`
-/

namespace A124761.P1729128492523088520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Nat.factorial (A000120 n - A124764 n).toNat)

end

end A124761.P1729128492523088520

/-! ## A124761.P9102490029908017723

`A001222((A000120(n)-A124764(n))!)`
-/

namespace A124761.P9102490029908017723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Nat.factorial (A000120 n - A124764 n).toNat)

end

end A124761.P9102490029908017723

/-! ## A124761.P3020159258598619044

`A001222(A006530(n+1)^(A124766(n)-1))`
-/

namespace A124761.P3020159258598619044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((A006530 (n + 1) : ℚ) ^ (A124766 n - 1 : ℤ))).toNat

end

end A124761.P3020159258598619044

/-! ## A124761.P4405042542166320961

`(A124766(n)-1)*A008683(2*A000040(n+1))`
-/

namespace A124761.P4405042542166320961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A124766 n - 1) * A008683 (2 * A000040 (n + 1)).toNat

end

end A124761.P4405042542166320961

/-!
# A124762: Number of levels for compositions in standard order.

The programs for A124762, there is no canonical definition to state claims against.
-/

/-! ## A124762.P15715812320407291182

`∑[∑{e}[xor(n, -n), 2-#]]-A124767(n)`
-/

namespace A124762.P15715812320407291182
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (-(n : ℤ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n).natAbs, (2 - (Nat.factorization (f2 n).natAbs p : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A124767 n

end

end A124762.P15715812320407291182

/-! ## A124762.P11426541038685062693

`A000120(n)-A124767(n)`
-/

namespace A124762.P11426541038685062693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n - A124767 n

end

end A124762.P11426541038685062693

/-! ## A124762.P4963189690910765504

`A124763(n)-A124761(n)`
-/

namespace A124762.P4963189690910765504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124763 n - A124761 n

end

end A124762.P4963189690910765504

/-! ## A124762.P3979876451383170225

`A124764(n)-A124760(n)`
-/

namespace A124762.P3979876451383170225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124764 n - A124760 n

end

end A124762.P3979876451383170225

/-! ## A124762.P16325319100968350602

`A124768(n)-A124766(n)`
-/

namespace A124762.P16325319100968350602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124768 n - A124766 n

end

end A124762.P16325319100968350602

/-! ## A124762.P8222199754526226696

`A124769(n)-A124765(n)`
-/

namespace A124762.P8222199754526226696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124769 n - A124765 n

end

end A124762.P8222199754526226696

/-! ## A124762.P1051251908734432108

`log2(A001316(n))-A124767(n)`
-/

namespace A124762.P1051251908734432108
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A001316 n : ℝ) - (A124767 n : ℝ)

end

end A124762.P1051251908734432108

/-! ## A124762.P15466171865381089326

`dr(A007088(n))-A124767(n)`
-/

namespace A124762.P15466171865381089326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.digitalRoot (A007088 n) : ℤ) - A124767 n

end

end A124762.P15466171865381089326

/-! ## A124762.P16350276512566427599

`A048881(2*n)-A124767(n)`
-/

namespace A124762.P16350276512566427599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048881 (2 * n) - A124767 n

end

end A124762.P16350276512566427599

/-! ## A124762.P6122354173746477511

`n-(A124767(n)+A011371(n))`
-/

namespace A124762.P6122354173746477511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (A124767 n + A011371 n)

end

end A124762.P6122354173746477511

/-! ## A124762.P9715247732899341642

`2*n-A005187(n)-A124767(n)`
-/

namespace A124762.P9715247732899341642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - A005187 n - A124767 n

end

end A124762.P9715247732899341642

/-! ## A124762.P2814765781851883580

`A005811(A006068(n))-A124767(n)`
-/

namespace A124762.P2814765781851883580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 (A006068 n).toNat - A124767 n

end

end A124762.P2814765781851883580

/-! ## A124762.P4971475862125974485

`A001222(A019565(n))-A124767(n)`
-/

namespace A124762.P4971475862125974485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A019565 n).toNat - A124767 n

end

end A124762.P4971475862125974485

/-! ## A124762.P11798061869772106050

`A001222(A048883(n))-A124767(n)`
-/

namespace A124762.P11798061869772106050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A048883 n).toNat - A124767 n

end

end A124762.P11798061869772106050

/-! ## A124762.P713912497155745453

`A001222(A286588(n))-A124767(n)`
-/

namespace A124762.P713912497155745453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A286588 n).toNat - A124767 n

end

end A124762.P713912497155745453

/-! ## A124762.P11567797875774495126

`A005811(A341916(n))-A124767(n)`
-/

namespace A124762.P11567797875774495126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 (A341916 n).toNat - A124767 n

end

end A124762.P11567797875774495126

/-! ## A124762.P17377770104166246318

`A000120(n)-(A124765(n)+A124761(n))`
-/

namespace A124762.P17377770104166246318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n - (A124765 n + A124761 n)

end

end A124762.P17377770104166246318

/-! ## A124762.P8664802074119922242

`A124765(A114994(n))+A124764(n)-A124765(n)`
-/

namespace A124762.P8664802074119922242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124765 (A114994 n).toNat + (A124764 n - A124765 n)

end

end A124762.P8664802074119922242

/-! ## A124762.P6083000376152786504

`A114994(A000120(n)-A124761(n)-A124765(n))`
-/

namespace A124762.P6083000376152786504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114994 (A000120 n - A124761 n - A124765 n).toNat

end

end A124762.P6083000376152786504

/-!
# A124763: Number of non-rises (levels or falls) for compositions in standard order.

The programs for A124763, there is no canonical definition to state claims against.
-/

/-! ## A124763.P6175754520351381694

`A124761(n)+A124762(n)`
-/

namespace A124763.P6175754520351381694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124761 n + A124762 n

end

end A124763.P6175754520351381694

/-! ## A124763.P17989349115241888480

`floor(log(cosh(A124768(n))))`
-/

namespace A124763.P17989349115241888480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.log (Real.cosh (A124768 n : ℝ))⌋

end

end A124763.P17989349115241888480

/-! ## A124763.P18219725216195156591

`A124768(gcd(n, C(2, n)))-1`
-/

namespace A124763.P18219725216195156591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124768 (Nat.gcd n (Nat.choose 2 n)) - 1

end

end A124763.P18219725216195156591

/-! ## A124763.P4285242708460864550

`A124768(ceil(abs(γ-n)))-1`
-/

namespace A124763.P4285242708460864550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124768 ⌈|Real.eulerMascheroniConstant - (n : ℝ)|⌉.toNat - 1

end

end A124763.P4285242708460864550

/-! ## A124763.P7772522451238461152

`∑[∑{e}[xor(n, -n), 2-#]]-A124765(n)`
-/

namespace A124763.P7772522451238461152
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (-(n : ℤ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n).natAbs, (2 - (Nat.factorization (f2 n).natAbs p : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A124765 n

end

end A124763.P7772522451238461152

/-! ## A124763.P7790116482852353292

`A000120(n)-A124765(n)`
-/

namespace A124763.P7790116482852353292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n - A124765 n

end

end A124763.P7790116482852353292

/-! ## A124763.P17977961843014305604

`log2(A001316(n))-A124765(n)`
-/

namespace A124763.P17977961843014305604
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A001316 n : ℝ) - (A124765 n : ℝ)

end

end A124763.P17977961843014305604

/-! ## A124763.P10298147441748425894

`(A124768(n)-1)*A057427(n)`
-/

namespace A124763.P10298147441748425894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A124768 n - 1) * A057427 n

end

end A124763.P10298147441748425894

/-! ## A124763.P4123624025364003365

`A134824(2*n)+A124768(n)`
-/

namespace A124763.P4123624025364003365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134824 (2 * n) + A124768 n

end

end A124763.P4123624025364003365

/-! ## A124763.P1421038552581952936

`A124768(n)+1-A000032(C(2, n+2))`
-/

namespace A124763.P1421038552581952936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124768 n + 1 - A000032 (Nat.choose 2 (n + 2))

end

end A124763.P1421038552581952936

/-! ## A124763.P10565122445705407210

`A001222(A019565(n))-A124765(n)`
-/

namespace A124763.P10565122445705407210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A019565 n).toNat - A124765 n

end

end A124763.P10565122445705407210

/-! ## A124763.P640159901742682993

`A001222(A268444(n))-A124765(n)`
-/

namespace A124763.P640159901742682993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A268444 n).toNat - A124765 n

end

end A124763.P640159901742682993

/-! ## A124763.P11306670085515827906

`A001222(A278222(n))-A124765(n)`
-/

namespace A124763.P11306670085515827906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A278222 n).toNat - A124765 n

end

end A124763.P11306670085515827906

/-! ## A124763.P14911918061642126220

`A005811(A341916(n))-A124765(n)`
-/

namespace A124763.P14911918061642126220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 (A341916 n).toNat - A124765 n

end

end A124763.P14911918061642126220

/-! ## A124763.P14086756110144251628

`A329697(A048883(n))-A124765(n)`
-/

namespace A124763.P14086756110144251628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329697 (A048883 n).toNat - A124765 n

end

end A124763.P14086756110144251628

/-! ## A124763.P6048732092905180209

`A124764(n)+A124766(n)-A124765(n)`
-/

namespace A124763.P6048732092905180209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124764 n + (A124766 n - A124765 n)

end

end A124763.P6048732092905180209

/-!
# A124764: Number of non-falls (levels or rises) for compositions in standard order.

The programs for A124764, there is no canonical definition to state claims against.
-/

/-! ## A124764.P18064042555814764337

`A124760(n)+A124762(n)`
-/

namespace A124764.P18064042555814764337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124760 n + A124762 n

end

end A124764.P18064042555814764337

/-! ## A124764.P14231646130720962392

`floor(log(cosh(A124769(n))))`
-/

namespace A124764.P14231646130720962392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.log (Real.cosh (A124769 n : ℝ))⌋

end

end A124764.P14231646130720962392

/-! ## A124764.P17426262276602780439

`A124769(floor(acot(n)+n))-1`
-/

namespace A124764.P17426262276602780439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124769 ⌊SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌋.toNat - 1

end

end A124764.P17426262276602780439

/-! ## A124764.P12844543143729561500

`A124769(round(acot(n)+n))-1`
-/

namespace A124764.P12844543143729561500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124769 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat - 1

end

end A124764.P12844543143729561500

/-! ## A124764.P2446604361240916670

`A124769(abs(1-n)+1)-1`
-/

namespace A124764.P2446604361240916670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124769 (|1 - (n : ℤ)| + 1).toNat - 1

end

end A124764.P2446604361240916670

/-! ## A124764.P11750568795528717456

`∑[∑{e}[xor(n, -n), 2-#]]-A124766(n)`
-/

namespace A124764.P11750568795528717456
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (-(n : ℤ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n).natAbs, (2 - (Nat.factorization (f2 n).natAbs p : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A124766 n

end

end A124764.P11750568795528717456

/-! ## A124764.P18418090898033181180

`59%A124769(A028310(n))`
-/

namespace A124764.P18418090898033181180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 59 (A124769 (A028310 n).toNat)

end

end A124764.P18418090898033181180

/-! ## A124764.P5360438516590130267

`A000120(n)-A124766(n)`
-/

namespace A124764.P5360438516590130267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n - A124766 n

end

end A124764.P5360438516590130267

/-! ## A124764.P2702577318080499977

`log2(A001316(n))-A124766(n)`
-/

namespace A124764.P2702577318080499977
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A001316 n : ℝ) - (A124766 n : ℝ)

end

end A124764.P2702577318080499977

/-! ## A124764.P2673574671434299989

`(A124769(n)-1)*A057427(n)`
-/

namespace A124764.P2673574671434299989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A124769 n - 1) * A057427 n

end

end A124764.P2673574671434299989

/-! ## A124764.P1907186912877547302

`floor(A124769(n)-n/A000041(n))`
-/

namespace A124764.P1907186912877547302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A124769 n : ℚ) - (n : ℚ) / (A000041 n : ℚ)⌋

end

end A124764.P1907186912877547302

/-! ## A124764.P12320739104009978344

`A000120(n)-A124765(A114994(n))-A124761(n)`
-/

namespace A124764.P12320739104009978344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n - A124765 (A114994 n).toNat - A124761 n

end

end A124764.P12320739104009978344

/-! ## A124764.P13688241487203262955

`A124762(n)+A124765(n)-A001221(A303809(n+1))`
-/

namespace A124764.P13688241487203262955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124762 n + (A124765 n - A001221 (A303809 (n + 1)).toNat)

end

end A124764.P13688241487203262955

/-!
# A124765: Number of monotonically decreasing runs for compositions in standard order.

The programs for A124765, there is no canonical definition to state claims against.
-/

/-! ## A124765.P5293792672536510117

`ceil(A124760(n)+abs(sin(n)))`
-/

namespace A124765.P5293792672536510117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A124760 n : ℝ) + |Real.sin (n : ℝ)|⌉

end

end A124765.P5293792672536510117

/-! ## A124765.P15492797585917444608

`A124760(n)+A057427(n)`
-/

namespace A124765.P15492797585917444608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124760 n + A057427 n

end

end A124765.P15492797585917444608

/-! ## A124765.P11135569551333862742

`A124760(n)-A057428(n)`
-/

namespace A124765.P11135569551333862742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124760 n - A057428 n

end

end A124765.P11135569551333862742

/-! ## A124765.P15462254713295510665

`A124760(n)+1-A000007(n)`
-/

namespace A124765.P15462254713295510665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124760 n + (1 - A000007 n)

end

end A124765.P15462254713295510665

/-! ## A124765.P3369232641263236549

`A124760(n)+A019426(2*n)`
-/

namespace A124765.P3369232641263236549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124760 n + A019426 (2 * n)

end

end A124765.P3369232641263236549

/-! ## A124765.P11642895688066410166

`A124760(n)+n/A028310(n)`
-/

namespace A124765.P11642895688066410166
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A124760 n : ℚ) + (n : ℚ) / (A028310 n : ℚ)

end

end A124765.P11642895688066410166

/-! ## A124765.P6983483610136255523

`A124760(n)+gcd(n, A153151(n))`
-/

namespace A124765.P6983483610136255523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124760 n + (Int.gcd (n : ℤ) (A153151 n) : ℤ)

end

end A124765.P6983483610136255523

/-! ## A124765.P1395841667305343693

`A124760(n)+a(A001221(n))` with `a(0)=0, a(1)=1`
-/

namespace A124765.P1395841667305343693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A124760 n + a (A001221 n).toNat

end

end A124765.P1395841667305343693

/-! ## A124765.P13729618626691963026

`A124760(n)+a(A032548(n))` with `a(0)=0, a(1)=1`
-/

namespace A124765.P13729618626691963026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A124760 n + a (A032548 n).toNat

end

end A124765.P13729618626691963026

/-! ## A124765.P17736734846416689755

`A124760(n)+A098058(n+1)%2`
-/

namespace A124765.P17736734846416689755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124760 n + Int.tmod (A098058 (n + 1)) 2

end

end A124765.P17736734846416689755

/-! ## A124765.P4628666336006497079

`A124760(n)+A124625(A001223(n+1))`
-/

namespace A124765.P4628666336006497079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124760 n + A124625 (A001223 (n + 1)).toNat

end

end A124765.P4628666336006497079

/-! ## A124765.P3293758290146400367

`A124760(n)+A124625(A046933(n+1)+1)`
-/

namespace A124765.P3293758290146400367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124760 n + A124625 (A046933 (n + 1) + 1).toNat

end

end A124765.P3293758290146400367

/-! ## A124765.P6705296647687220286

`A124760(n)+A005917(n+2)%(n+1)`
-/

namespace A124765.P6705296647687220286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124760 n + Int.tmod (A005917 (n + 2)) (n + 1 : ℤ)

end

end A124765.P6705296647687220286

/-! ## A124765.P14153317852507290590

`A124760(n)+A124625(Δ[A000040(n+1)])`
-/

namespace A124765.P14153317852507290590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124760 n + A124625 (f1 (n + 1) - f1 n).toNat

end

end A124765.P14153317852507290590

/-! ## A124765.P7539010840567243413

`A124760(n)+A057428(n)*A057428(n+1)`
-/

namespace A124765.P7539010840567243413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124760 n + A057428 n * A057428 (n + 1)

end

end A124765.P7539010840567243413

/-! ## A124765.P3308227838413900129

`A124760(n)+A124625(A004277(n))`
-/

namespace A124765.P3308227838413900129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124760 n + A124625 (A004277 n).toNat

end

end A124765.P3308227838413900129

/-! ## A124765.P14808374747710219127

`A124760(n)+A124625(A000040(n+1)-1)`
-/

namespace A124765.P14808374747710219127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124760 n + A124625 (A000040 (n + 1) - 1).toNat

end

end A124765.P14808374747710219127

/-! ## A124765.P17801097407249932546

`A124760(A153151(8*n)+7)`
-/

namespace A124765.P17801097407249932546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124760 (A153151 (8 * n) + 7).toNat

end

end A124765.P17801097407249932546

/-! ## A124765.P2893611062206846808

`A000120(n)-A124763(n)`
-/

namespace A124765.P2893611062206846808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n - A124763 n

end

end A124765.P2893611062206846808

/-!
# A124766: Number of monotonically increasing runs for compositions in standard order.

The programs for A124766, there is no canonical definition to state claims against.
-/

/-! ## A124766.P14820840672887577870

`ceil(A124761(n)+abs(sin(n)))`
-/

namespace A124766.P14820840672887577870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A124761 n : ℝ) + |Real.sin (n : ℝ)|⌉

end

end A124766.P14820840672887577870

/-! ## A124766.P11931598761688311475

`∑[∑{e}[xor(n, -n), 2-#]]-A124764(n)`
-/

namespace A124766.P11931598761688311475
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (-(n : ℤ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n).natAbs, (2 - (Nat.factorization (f2 n).natAbs p : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A124764 n

end

end A124766.P11931598761688311475

/-! ## A124766.P7574746264734969771

`A124761(n)+A057427(n)`
-/

namespace A124766.P7574746264734969771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124761 n + A057427 n

end

end A124766.P7574746264734969771

/-! ## A124766.P11845658729793710522

`A178334(n)+A124761(n)`
-/

namespace A124766.P11845658729793710522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 n + A124761 n

end

end A124766.P11845658729793710522

/-! ## A124766.P981061716312515256

`A000120(n)-A124764(n)`
-/

namespace A124766.P981061716312515256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n - A124764 n

end

end A124766.P981061716312515256

/-! ## A124766.P11078591793617303941

`A124761(n)-A057428(n)`
-/

namespace A124766.P11078591793617303941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124761 n - A057428 n

end

end A124766.P11078591793617303941

/-! ## A124766.P5965372012707962074

`A124767(n)-A124760(n)`
-/

namespace A124766.P5965372012707962074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124767 n - A124760 n

end

end A124766.P5965372012707962074

/-! ## A124766.P18192517268028745166

`A124768(n)-A124762(n)`
-/

namespace A124766.P18192517268028745166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124768 n - A124762 n

end

end A124766.P18192517268028745166

/-! ## A124766.P13570082070180717704

`A124761(n)+1-A000007(n)`
-/

namespace A124766.P13570082070180717704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124761 n + (1 - A000007 n)

end

end A124766.P13570082070180717704

/-! ## A124766.P1144327458972503514

`A124761(n)+n/A028310(n)`
-/

namespace A124766.P1144327458972503514
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A124761 n : ℚ) + (n : ℚ) / (A028310 n : ℚ)

end

end A124766.P1144327458972503514

/-! ## A124766.P1074278320150754663

`A124761(n)+A000045(ceil(n/63))`
-/

namespace A124766.P1074278320150754663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124761 n + A000045 ⌈(n : ℚ) / 63⌉.toNat

end

end A124766.P1074278320150754663

/-! ## A124766.P6816477411058572732

`A124761(n)+A000040(n+1)%2`
-/

namespace A124766.P6816477411058572732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124761 n + Int.tmod (A000040 (n + 1)) 2

end

end A124766.P6816477411058572732

/-! ## A124766.P4810873551427889664

`∑{e}[A006530(n+1), A124761(n)+#]`
-/

namespace A124766.P4810873551427889664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, (A124761 n + (Nat.factorization (f1 n).natAbs p : ℤ))

end

end A124766.P4810873551427889664

/-! ## A124766.P10954385862369958762

`∑{e}[A020639(n+1), A124761(n)+#]`
-/

namespace A124766.P10954385862369958762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, (A124761 n + (Nat.factorization (f1 n).natAbs p : ℤ))

end

end A124766.P10954385862369958762

/-! ## A124766.P17224193211458473444

`A124761(n)+A001221(A001316(n))`
-/

namespace A124766.P17224193211458473444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124761 n + A001221 (A001316 n).toNat

end

end A124766.P17224193211458473444

/-! ## A124766.P11704112925591850835

`A124761(n)+A001221(A048883(n))`
-/

namespace A124766.P11704112925591850835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124761 n + A001221 (A048883 n).toNat

end

end A124766.P11704112925591850835

/-! ## A124766.P3588725247992208561

`A124761(n)+A001221(A137688(n))`
-/

namespace A124766.P3588725247992208561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124761 n + A001221 (A137688 n).toNat

end

end A124766.P3588725247992208561

/-! ## A124766.P5333510974727464059

`A124765(A114994(n))+A124761(n)`
-/

namespace A124766.P5333510974727464059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124765 (A114994 n).toNat + A124761 n

end

end A124766.P5333510974727464059

/-! ## A124766.P13698812950020583505

`A124761(n)+A124765(n)-A124760(n)`
-/

namespace A124766.P13698812950020583505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124761 n + (A124765 n - A124760 n)

end

end A124766.P13698812950020583505

/-!
# A124767: Number of level runs for compositions in standard order.

The programs for A124767, there is no canonical definition to state claims against.
-/

/-! ## A124767.P12462968947458178333

`A124765(A145342(n+1)-1)+A124765(Δ[n²])-1`
-/

namespace A124767.P12462968947458178333
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124765 (A145342 (n + 1) - 1).toNat + (A124765 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - 1)

end

end A124767.P12462968947458178333

/-! ## A124767.P11968811430058471441

`A124760(A145341(n+1))+A124760(n)+A057427(n)`
-/

namespace A124767.P11968811430058471441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124760 (A145341 (n + 1)).toNat + (A124760 n + A057427 n)

end

end A124767.P11968811430058471441

/-! ## A124767.P514327501166000081

`A124760(A145341(n+1))+A124760(n)-A057428(n)`
-/

namespace A124767.P514327501166000081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124760 (A145341 (n + 1)).toNat + (A124760 n - A057428 n)

end

end A124767.P514327501166000081

/-! ## A124767.P2332692722727220690

`A124760(A057889(2*n+1))+A124760(n)+A057427(n)`
-/

namespace A124767.P2332692722727220690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124760 (A057889 (2 * n + 1)).toNat + (A124760 n + A057427 n)

end

end A124767.P2332692722727220690

/-! ## A124767.P18002415988803406347

`A124760(A057889(2*n+1))+A124760(n)-A057428(n)`
-/

namespace A124767.P18002415988803406347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124760 (A057889 (2 * n + 1)).toNat + (A124760 n - A057428 n)

end

end A124767.P18002415988803406347

/-! ## A124767.P16002121751720382613

`A124760(A145341(n+1))+A124760(n)+n/A028310(n)`
-/

namespace A124767.P16002121751720382613
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A124760 (A145341 (n + 1)).toNat : ℚ) + ((A124760 n : ℚ) + (n : ℚ) / (A028310 n : ℚ))

end

end A124767.P16002121751720382613

/-! ## A124767.P12218691954119677189

`A124760(A145341(n+1))+A124760(n)+A098058(n+1)%2`
-/

namespace A124767.P12218691954119677189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124760 (A145341 (n + 1)).toNat + (A124760 n + Int.tmod (A098058 (n + 1)) 2)

end

end A124767.P12218691954119677189

/-! ## A124767.P10184990027442620835

`A124760(A145341(n+1))+A124760(n)+A005917(n+2)%(n+1)`
-/

namespace A124767.P10184990027442620835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124760 (A145341 (n + 1)).toNat + (A124760 n + Int.tmod (A005917 (n + 2)) (n + 1 : ℤ))

end

end A124767.P10184990027442620835

/-! ## A124767.P4702228106939949682

`A353745(A057335(n))`
-/

namespace A124767.P4702228106939949682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353745 (A057335 n).toNat

end

end A124767.P4702228106939949682

/-! ## A124767.P17406684923071635949

`∑[∑{e}[xor(n, -n), 2-#]]-A124762(n)`
-/

namespace A124767.P17406684923071635949
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (-(n : ℤ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n).natAbs, (2 - (Nat.factorization (f2 n).natAbs p : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A124762 n

end

end A124767.P17406684923071635949

/-! ## A124767.P15998128963668142203

`A124765(n)+A124761(n)`
-/

namespace A124767.P15998128963668142203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124765 n + A124761 n

end

end A124767.P15998128963668142203

/-! ## A124767.P8054622059376955141

`A124766(n)+A124760(n)`
-/

namespace A124767.P8054622059376955141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124766 n + A124760 n

end

end A124767.P8054622059376955141

/-! ## A124767.P10024388984680523302

`A000120(n)-A124762(n)`
-/

namespace A124767.P10024388984680523302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n - A124762 n

end

end A124767.P10024388984680523302

/-! ## A124767.P9722342357729205659

`log2(A001316(n))-A124762(n)`
-/

namespace A124767.P9722342357729205659
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A001316 n : ℝ) - (A124762 n : ℝ)

end

end A124767.P9722342357729205659

/-! ## A124767.P16443713107744528970

`dr(A007088(n)-A124762(n))`
-/

namespace A124767.P16443713107744528970
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A007088 n - A124762 n)

end

end A124767.P16443713107744528970

/-! ## A124767.P3995399489211491058

`∑[A088705(n)]-A124762(n)`
-/

namespace A124767.P3995399489211491058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088705 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A124762 n

end

end A124767.P3995399489211491058

/-! ## A124767.P11186978341969173381

`n-(A124762(n)+A011371(n))`
-/

namespace A124767.P11186978341969173381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (A124762 n + A011371 n)

end

end A124767.P11186978341969173381

/-! ## A124767.P12790560501503980259

`abs(A124762(n)-A324467(n)/3)`
-/

namespace A124767.P12790560501503980259
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A124762 n : ℚ) - (A324467 n : ℚ) / 3|

end

end A124767.P12790560501503980259

/-! ## A124767.P5689430685031544510

`A005811(A341916(n))-A124762(n)`
-/

namespace A124767.P5689430685031544510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 (A341916 n).toNat - A124762 n

end

end A124767.P5689430685031544510

/-! ## A124767.P16770181978834002534

`A329697(A048883(n))-A124762(n)`
-/

namespace A124767.P16770181978834002534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329697 (A048883 n).toNat - A124762 n

end

end A124767.P16770181978834002534

/-!
# A124768: Number of strictly increasing runs for compositions in standard order.

The programs for A124768, there is no canonical definition to state claims against.
-/

/-! ## A124768.P13730914708597433652

`ceil(A124763(n)+abs(sin(n)))`
-/

namespace A124768.P13730914708597433652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A124763 n : ℝ) + |Real.sin (n : ℝ)|⌉

end

end A124768.P13730914708597433652

/-! ## A124768.P11637510200351884237

`∑[∑{e}[xor(n, -n), 2-#]]-A124760(n)`
-/

namespace A124768.P11637510200351884237
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (-(n : ℤ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n).natAbs, (2 - (Nat.factorization (f2 n).natAbs p : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A124760 n

end

end A124768.P11637510200351884237

/-! ## A124768.P13689460303095346972

`(∑[∑{e}[xor(n, -n), 2-#]]-A124765(n)+1)%(n+1)`
-/

namespace A124768.P13689460303095346972
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (-(n : ℤ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n).natAbs, (2 - (Nat.factorization (f2 n).natAbs p : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j - A124765 n + 1) (n + 1 : ℤ)

end

end A124768.P13689460303095346972

/-! ## A124768.P2920167498543628733

`A124763(n)+A057427(n)`
-/

namespace A124768.P2920167498543628733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124763 n + A057427 n

end

end A124768.P2920167498543628733

/-! ## A124768.P16458538721274030843

`A124766(n)+A124762(n)`
-/

namespace A124768.P16458538721274030843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124766 n + A124762 n

end

end A124768.P16458538721274030843

/-! ## A124768.P682271427464333279

`A178334(n)+A124763(n)`
-/

namespace A124768.P682271427464333279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 n + A124763 n

end

end A124768.P682271427464333279

/-! ## A124768.P16087286748427494502

`A000120(n)-A124760(n)`
-/

namespace A124768.P16087286748427494502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n - A124760 n

end

end A124768.P16087286748427494502

/-! ## A124768.P14692968238811631169

`A124763(n)-A057428(n)`
-/

namespace A124768.P14692968238811631169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124763 n - A057428 n

end

end A124768.P14692968238811631169

/-! ## A124768.P15056636524278692957

`A124763(n)+char[A000174(n)]`
-/

namespace A124768.P15056636524278692957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000174 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124763 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A124768.P15056636524278692957

/-! ## A124768.P4756152244816587252

`ceil(A124763(n)+n/A000041(n))`
-/

namespace A124768.P4756152244816587252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A124763 n : ℚ) + (n : ℚ) / (A000041 n : ℚ)⌉

end

end A124768.P4756152244816587252

/-! ## A124768.P10888079987580502368

`A124763(n)+A000040(n+1)%2`
-/

namespace A124768.P10888079987580502368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124763 n + Int.tmod (A000040 (n + 1)) 2

end

end A124768.P10888079987580502368

/-! ## A124768.P14498392785421588901

`A000120(n)+1-A124765(2*n+1)`
-/

namespace A124768.P14498392785421588901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n + 1 - A124765 (2 * n + 1)

end

end A124768.P14498392785421588901

/-! ## A124768.P9184493659925607069

`log2(A001316(n))+1-A124765(2*n+1)`
-/

namespace A124768.P9184493659925607069
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A001316 n : ℝ) + 1 - (A124765 (2 * n + 1) : ℝ)

end

end A124768.P9184493659925607069

/-! ## A124768.P8020609090345828636

`A124763(n)+A001221(A001316(n))`
-/

namespace A124768.P8020609090345828636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124763 n + A001221 (A001316 n).toNat

end

end A124768.P8020609090345828636

/-! ## A124768.P9946301337003342880

`A124763(n)+A001221(A048883(n))`
-/

namespace A124768.P9946301337003342880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124763 n + A001221 (A048883 n).toNat

end

end A124768.P9946301337003342880

/-! ## A124768.P10417035931226778839

`A124763(n)+A001221(A137688(n))`
-/

namespace A124768.P10417035931226778839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124763 n + A001221 (A137688 n).toNat

end

end A124768.P10417035931226778839

/-! ## A124768.P5191486690374688582

`A001222(A001316(n))-A124760(n)`
-/

namespace A124768.P5191486690374688582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A001316 n).toNat - A124760 n

end

end A124768.P5191486690374688582

/-! ## A124768.P6078847448474608142

`A001221(A019565(n))-A124760(n)`
-/

namespace A124768.P6078847448474608142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A019565 n).toNat - A124760 n

end

end A124768.P6078847448474608142

/-! ## A124768.P10496769382482269702

`A124763(n)+A001221(A020639(n+1))`
-/

namespace A124768.P10496769382482269702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124763 n + A001221 (A020639 (n + 1)).toNat

end

end A124768.P10496769382482269702

/-!
# A124769: Number of strictly decreasing runs for compositions in standard order.

The programs for A124769, there is no canonical definition to state claims against.
-/

/-! ## A124769.P10222305928874266609

`ceil(A124764(n)+abs(sin(n)))`
-/

namespace A124769.P10222305928874266609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A124764 n : ℝ) + |Real.sin (n : ℝ)|⌉

end

end A124769.P10222305928874266609

/-! ## A124769.P5281820691552689916

`∑[∑{e}[xor(n, -n), 2-#]]-A124761(n)`
-/

namespace A124769.P5281820691552689916
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (-(n : ℤ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n).natAbs, (2 - (Nat.factorization (f2 n).natAbs p : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A124761 n

end

end A124769.P5281820691552689916

/-! ## A124769.P12504201455592107509

`A124764(n)+A057427(n)`
-/

namespace A124769.P12504201455592107509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124764 n + A057427 n

end

end A124769.P12504201455592107509

/-! ## A124769.P311298221648995968

`A124765(n)+A124762(n)`
-/

namespace A124769.P311298221648995968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124765 n + A124762 n

end

end A124769.P311298221648995968

/-! ## A124769.P709998091318263339

`A178334(n)+A124764(n)`
-/

namespace A124769.P709998091318263339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 n + A124764 n

end

end A124769.P709998091318263339

/-! ## A124769.P9963640543169723514

`A000120(n)-A124761(n)`
-/

namespace A124769.P9963640543169723514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n - A124761 n

end

end A124769.P9963640543169723514

/-! ## A124769.P154271375878448822

`A124764(n)-A057428(n)`
-/

namespace A124769.P154271375878448822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124764 n - A057428 n

end

end A124769.P154271375878448822

/-! ## A124769.P13396954662616738386

`log2(A001316(n))-A124761(n)`
-/

namespace A124769.P13396954662616738386
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A001316 n : ℝ) - (A124761 n : ℝ)

end

end A124769.P13396954662616738386

/-! ## A124769.P1115164454643317613

`A124764(n)+char[A000174(n)]`
-/

namespace A124769.P1115164454643317613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000174 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124764 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A124769.P1115164454643317613

/-! ## A124769.P17730402421276108568

`A124764(n)+1-A000007(n)`
-/

namespace A124769.P17730402421276108568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124764 n + (1 - A000007 n)

end

end A124769.P17730402421276108568

/-! ## A124769.P14516173460857689431

`A124764(n)+A000040(n+1)%2`
-/

namespace A124769.P14516173460857689431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124764 n + Int.tmod (A000040 (n + 1)) 2

end

end A124769.P14516173460857689431

/-! ## A124769.P6176262293662003251

`∑{e}[A006530(n+1), A124764(n)+#]`
-/

namespace A124769.P6176262293662003251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, (A124764 n + (Nat.factorization (f1 n).natAbs p : ℤ))

end

end A124769.P6176262293662003251

/-! ## A124769.P8059669224654143619

`∑{e}[A020639(n+1), A124764(n)+#]`
-/

namespace A124769.P8059669224654143619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, (A124764 n + (Nat.factorization (f1 n).natAbs p : ℤ))

end

end A124769.P8059669224654143619

/-! ## A124769.P14604396511307007284

`floor(A124764(n)+atan(A005117(n+1)))`
-/

namespace A124769.P14604396511307007284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A124764 n : ℝ) + Real.arctan (A005117 (n + 1) : ℝ)⌋

end

end A124769.P14604396511307007284

/-! ## A124769.P9472415335497149105

`A124764(n)+log2(A000032(C(2, n+2)))`
-/

namespace A124769.P9472415335497149105
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A124764 n : ℝ) + Real.logb 2 (A000032 (Nat.choose 2 (n + 2)) : ℝ)

end

end A124769.P9472415335497149105

/-! ## A124769.P13467185846350050203

`A124764(n)+A000045(n²%(n+1))`
-/

namespace A124769.P13467185846350050203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124764 n + A000045 (n ^ 2 % (n + 1))

end

end A124769.P13467185846350050203

/-! ## A124769.P299293334456445295

`A124764(n)+∑[n]%A006530(n+2)`
-/

namespace A124769.P299293334456445295
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124764 n + Int.tmod ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (A006530 (n + 2))

end

end A124769.P299293334456445295

/-! ## A124769.P3427877379007124333

`A008683(2*(n+1)²)+A124764(n)+1`
-/

namespace A124769.P3427877379007124333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (2 * (n + 1) ^ 2) + (A124764 n + 1)

end

end A124769.P3427877379007124333

/-! ## A124769.P9216876205390013795

`A124764(n)+A001221(A001316(n))`
-/

namespace A124769.P9216876205390013795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124764 n + A001221 (A001316 n).toNat

end

end A124769.P9216876205390013795

/-! ## A124769.P13461563658677344172

`A124765(A114994(n))+A124764(n)`
-/

namespace A124769.P13461563658677344172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124765 (A114994 n).toNat + A124764 n

end

end A124769.P13461563658677344172

/-!
# A124770: Number of distinct nonempty subsequences for compositions in standard order.

The programs for A124770, there is no canonical definition to state claims against.
-/

/-! ## A124770.P7338701474746170227

`A124771(n)-1`
-/

namespace A124770.P7338701474746170227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124771 n - 1

end

end A124770.P7338701474746170227

/-! ## A124770.P16705056525532277272

`A023443(A124771(n))`
-/

namespace A124770.P16705056525532277272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A124771 n).toNat

end

end A124770.P16705056525532277272

/-! ## A124770.P5144022710865158332

`A057918(A124771(n)²)`
-/

namespace A124770.P5144022710865158332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057918 (A124771 n ^ 2).toNat

end

end A124770.P5144022710865158332

/-! ## A124770.P16702977299853813855

`A259361(A124771(n)²)`
-/

namespace A124770.P16702977299853813855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259361 (A124771 n ^ 2).toNat

end

end A124770.P16702977299853813855

/-! ## A124770.P7110216999619463889

`A140106(2*A124771(n))`
-/

namespace A124770.P7110216999619463889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140106 (2 * A124771 n).toNat

end

end A124770.P7110216999619463889

/-! ## A124770.P17700232519448490983

`A259361(A124771(n)^2)`
-/

namespace A124770.P17700232519448490983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259361 (A124771 n ^ 2).toNat

end

end A124770.P17700232519448490983

/-! ## A124770.P7134328441054286262

`A056220(A124771(n)²)%A124771(n)`
-/

namespace A124770.P7134328441054286262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A056220 (A124771 n ^ 2).toNat) (A124771 n)

end

end A124770.P7134328441054286262

/-! ## A124770.P10782502808396592584

`A142463(A124771(n)²)%A124771(n)`
-/

namespace A124770.P10782502808396592584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A142463 (A124771 n ^ 2).toNat) (A124771 n)

end

end A124770.P10782502808396592584

/-! ## A124770.P16698779237202689537

`A057918(2*A124771(n)*A124771(n))`
-/

namespace A124770.P16698779237202689537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057918 (2 * A124771 n * A124771 n).toNat

end

end A124770.P16698779237202689537

/-! ## A124770.P558946762816268263

`(A124771(n)+n)%A163327(A163327(n+1))`
-/

namespace A124770.P558946762816268263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A124771 n + (n : ℤ)) (A163327 (A163327 (n + 1)).toNat)

end

end A124770.P558946762816268263

/-! ## A124770.P5552799751683080038

`A158210(A105439(n+1))+A124771(n)`
-/

namespace A124770.P5552799751683080038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158210 (A105439 (n + 1)).toNat + A124771 n

end

end A124770.P5552799751683080038

/-! ## A124770.P6525199537912571871

`A070198(n)%A124771(n)`
-/

namespace A124770.P6525199537912571871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A070198 n) (A124771 n)

end

end A124770.P6525199537912571871

/-! ## A124770.P11033051953219104745

`A079782(n+1)%A124771(n)`
-/

namespace A124770.P11033051953219104745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A079782 (n + 1)) (A124771 n)

end

end A124770.P11033051953219104745

/-! ## A124770.P4608680113407993230

`A083685(n+1)%A124771(n)`
-/

namespace A124770.P4608680113407993230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A083685 (n + 1)) (A124771 n)

end

end A124770.P4608680113407993230

/-! ## A124770.P948474079292983932

`A121934(n+1)%A124771(n)`
-/

namespace A124770.P948474079292983932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A121934 (n + 1)) (A124771 n)

end

end A124770.P948474079292983932

/-! ## A124770.P13793611984498419602

`∑{d}[A011782(A124771(n)), A001221(#)]`
-/

namespace A124770.P13793611984498419602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A124771 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A001221 d

end

end A124770.P13793611984498419602

/-! ## A124770.P18048812120939535863

`A046079(2^A124771(n))`
-/

namespace A124770.P18048812120939535863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046079 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A124771 n : ℤ))).toNat

end

end A124770.P18048812120939535863

/-! ## A124770.P8113888885198073295

`A001222(A000010(2^A124771(n)))`
-/

namespace A124770.P8113888885198073295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A000010 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A124771 n : ℤ))).toNat).toNat

end

end A124770.P8113888885198073295

/-! ## A124770.P1810139540567983177

`A030494(n+1)%A124771(n)`
-/

namespace A124770.P1810139540567983177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A030494 (n + 1)) (A124771 n)

end

end A124770.P1810139540567983177

/-! ## A124770.P15555617024456511763

`A072828(n+1)%A124771(n)`
-/

namespace A124770.P15555617024456511763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A072828 (n + 1)) (A124771 n)

end

end A124770.P15555617024456511763

/-!
# A124771: Number of distinct subsequences for compositions in standard order.

The programs for A124771, there is no canonical definition to state claims against.
-/

/-! ## A124771.P16074345150654719742

`A124770(n)+1`
-/

namespace A124771.P16074345150654719742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124770 n + 1

end

end A124771.P16074345150654719742

/-! ## A124771.P5103049765306329035

`A008619(2*A124770(n))`
-/

namespace A124771.P5103049765306329035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * A124770 n).toNat

end

end A124771.P5103049765306329035

/-! ## A124771.P11905129017856359226

`A028242(2*A124770(n))`
-/

namespace A124771.P11905129017856359226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (2 * A124770 n).toNat

end

end A124771.P11905129017856359226

/-! ## A124771.P4106882543013254478

`A029579(2*A124770(n))`
-/

namespace A124771.P4106882543013254478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029579 (2 * A124770 n).toNat

end

end A124771.P4106882543013254478

/-! ## A124771.P7604922305319187918

`A008612(6*A124770(n))`
-/

namespace A124771.P7604922305319187918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008612 (6 * A124770 n).toNat

end

end A124771.P7604922305319187918

/-! ## A124771.P8039004532559668532

`A000124(n)-(A000217(n)-A124770(n))`
-/

namespace A124771.P8039004532559668532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 n - (A000217 n - A124770 n)

end

end A124771.P8039004532559668532

/-! ## A124771.P5892232518900746732

`A016777(n)-(A008585(n)-A124770(n))`
-/

namespace A124771.P5892232518900746732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 n - (A008585 n - A124770 n)

end

end A124771.P5892232518900746732

/-! ## A124771.P8191097635613574989

`A000005(2^A124770(n))`
-/

namespace A124771.P8191097635613574989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A124770 n : ℤ))).toNat

end

end A124771.P8191097635613574989

/-! ## A124771.P14042901878913345315

`A028326(∑[n])-(1-A124770(n))`
-/

namespace A124771.P14042901878913345315
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028326 (∑ j ∈ Finset.range (n + 1), f1 j) - (1 - A124770 n)

end

end A124771.P14042901878913345315

/-! ## A124771.P17212967289420285865

`A070939(2^A124770(n))`
-/

namespace A124771.P17212967289420285865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A124770 n : ℤ))).toNat

end

end A124771.P17212967289420285865

/-! ## A124771.P16153084791016043250

`A124754(2^A124770(n))`
-/

namespace A124771.P16153084791016043250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124754 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A124770 n : ℤ))).toNat

end

end A124771.P16153084791016043250

/-! ## A124771.P11839275130512290080

`A124755(2^A124770(n))`
-/

namespace A124771.P11839275130512290080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124755 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A124770 n : ℤ))).toNat

end

end A124771.P11839275130512290080

/-!
# A124772: Number of set partitions associated with compositions in standard order.

The programs for A124772, there is no canonical definition to state claims against.
-/

/-! ## A124772.P11600469737083628091

`A124773(n)/A246660(A035327(n))`
-/

namespace A124772.P11600469737083628091
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A124773 n : ℚ) / (A246660 (A035327 n).toNat : ℚ)

end

end A124772.P11600469737083628091

/-! ## A124772.P11068735770512674834

`A124773(n)/A246660(A036044(n))`
-/

namespace A124772.P11068735770512674834
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A124773 n : ℚ) / (A246660 (A036044 n).toNat : ℚ)

end

end A124772.P11068735770512674834

/-! ## A124772.P16187550843643291871

`A124773(n)/A246660(A080079(n+1))`
-/

namespace A124772.P16187550843643291871
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A124773 n : ℚ) / (A246660 (A080079 (n + 1)).toNat : ℚ)

end

end A124772.P16187550843643291871

/-!
# A124773: Number of permutations associated with compositions in standard order.

The programs for A124773, there is no canonical definition to state claims against.
-/

/-! ## A124773.P1869044853504155887

`A096111(A035327(or(1, n)))`
-/

namespace A124773.P1869044853504155887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096111 (A035327 (Nat.lor 1 n)).toNat

end

end A124773.P1869044853504155887

/-! ## A124773.P5146081483279913062

`A306549(A030101(or(1, n)))`
-/

namespace A124773.P5146081483279913062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306549 (A030101 (Nat.lor 1 n)).toNat

end

end A124773.P5146081483279913062

/-! ## A124773.P17076326251904650880

`A096111(and(-2, A035327(n)))`
-/

namespace A124773.P17076326251904650880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096111 (Int.land (-2) (A035327 n)).toNat

end

end A124773.P17076326251904650880

/-! ## A124773.P4522280601268697332

`A121663(floor(A035327(n)/2))`
-/

namespace A124773.P4522280601268697332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121663 ⌊(A035327 n : ℚ) / 2⌋.toNat

end

end A124773.P4522280601268697332

/-! ## A124773.P10967045057192328030

`A096111(A035327(n)-log2(gcd(2, n)))`
-/

namespace A124773.P10967045057192328030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096111 (SequenceMachineLib.roundAway ((A035327 n : ℝ) - Real.logb 2 (Nat.gcd 2 n : ℝ))).toNat

end

end A124773.P10967045057192328030

/-! ## A124773.P11213984710794734045

`A096111(A035327(n)-char[2*n])`
-/

namespace A124773.P11213984710794734045
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096111 (A035327 n - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)).toNat

end

end A124773.P11213984710794734045

/-! ## A124773.P8080475515025200021

`A121663(A004526(A035327(n)))`
-/

namespace A124773.P8080475515025200021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121663 (A004526 (A035327 n).toNat).toNat

end

end A124773.P8080475515025200021

/-! ## A124773.P1343549949563247921

`A306549(A145341(A008619(n)))`
-/

namespace A124773.P1343549949563247921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306549 (A145341 (A008619 n).toNat).toNat

end

end A124773.P1343549949563247921

/-! ## A124773.P3072761053602079349

`A096111(A035327(Δ[A000982(n)]))`
-/

namespace A124773.P3072761053602079349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000982 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096111 (A035327 (f1 (n + 1) - f1 n).toNat).toNat

end

end A124773.P3072761053602079349

/-! ## A124773.P1592367961199935833

`A096111(A035327(A059841(n)+n))`
-/

namespace A124773.P1592367961199935833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096111 (A035327 (A059841 n + (n : ℤ)).toNat).toNat

end

end A124773.P1592367961199935833

/-!
# A124774: Multinomial coefficients for compositions in standard order.

The programs for A124774, the canonical program `A124774.P3934546550650410657` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A124774 has offset 0).

The definition of A124774 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8192 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A124774.P16328901464523409930

`A392945(A209861(n))`
-/

namespace A124774.P16328901464523409930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392945 (A209861 n).toNat

end

end A124774.P16328901464523409930

namespace A124774

/-- `A392945(A209861(n))` -/
def P16328901464523409930.Spec : Prop :=
  ∀ n, P16328901464523409930.a n = A124774 n

end A124774

/-! ## A124774.P15616314537629220499

`A318762(A333219(n+1))`
-/

namespace A124774.P15616314537629220499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318762 (A333219 (n + 1)).toNat

end

end A124774.P15616314537629220499

namespace A124774

/-- `A318762(A333219(n+1))` -/
def P15616314537629220499.Spec : Prop :=
  ∀ n, P15616314537629220499.a n = A124774 n

end A124774

/-! ## A124774.P3934546550650410657

`A383718(A006068(n))`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A124774

/-- `A383718(A006068(n))` -/
def P3934546550650410657.Spec : Prop :=
  ∀ n, P3934546550650410657.a n = A124774 n

theorem P3934546550650410657.correct : P3934546550650410657.Spec := by
  intro n
  simp only [A124774]

end A124774

/-! ## A124774.P12085349585720470900

`A383718(A341916(n))`
-/

namespace A124774.P12085349585720470900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383718 (A341916 n).toNat

end

end A124774.P12085349585720470900

namespace A124774

/-- `A383718(A341916(n))` -/
def P12085349585720470900.Spec : Prop :=
  ∀ n, P12085349585720470900.a n = A124774 n

end A124774

/-! ## A124774.P16527805510062055878

`A318808(2*A333219(n+1))`
-/

namespace A124774.P16527805510062055878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318808 (2 * A333219 (n + 1)).toNat

end

end A124774.P16527805510062055878

namespace A124774

/-- `A318808(2*A333219(n+1))` -/
def P16527805510062055878.Spec : Prop :=
  ∀ n, P16527805510062055878.a n = A124774 n

end A124774

/-! ## A124774.P1527112701505453687

`A318810(2*A333219(n+1))`
-/

namespace A124774.P1527112701505453687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318810 (2 * A333219 (n + 1)).toNat

end

end A124774.P1527112701505453687

namespace A124774

/-- `A318810(2*A333219(n+1))` -/
def P1527112701505453687.Spec : Prop :=
  ∀ n, P1527112701505453687.a n = A124774 n

end A124774

/-! ## A124774.P4352323270934953565

`A318808(A333219(n+1)+A333219(n+1))`
-/

namespace A124774.P4352323270934953565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318808 (A333219 (n + 1) + A333219 (n + 1)).toNat

end

end A124774.P4352323270934953565

namespace A124774

/-- `A318808(A333219(n+1)+A333219(n+1))` -/
def P4352323270934953565.Spec : Prop :=
  ∀ n, P4352323270934953565.a n = A124774 n

end A124774

/-! ## A124774.P16532204717611057448

`A318762(∏{e}[A057335(n), A000040(#)])`
-/

namespace A124774.P16532204717611057448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057335 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318762 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000040 (Nat.factorization (f1 n).natAbs p)).toNat

end

end A124774.P16532204717611057448

namespace A124774

/-- `A318762(∏{e}[A057335(n), A000040(#)])` -/
def P16532204717611057448.Spec : Prop :=
  ∀ n, P16532204717611057448.a n = A124774 n

end A124774

/-! ## A124774.P16401336229242718182

`A318810(2*∏{e}[A057335(n), A000040(#)])`
-/

namespace A124774.P16401336229242718182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057335 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318810 (2 * (∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000040 (Nat.factorization (f1 n).natAbs p))).toNat

end

end A124774.P16401336229242718182

namespace A124774

/-- `A318810(2*∏{e}[A057335(n), A000040(#)])` -/
def P16401336229242718182.Spec : Prop :=
  ∀ n, P16401336229242718182.a n = A124774 n

end A124774

/-! ## A124774.P1652551716840022780

`A321648(A019565(n))`
-/

namespace A124774.P1652551716840022780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321648 (A019565 n).toNat

end

end A124774.P1652551716840022780

namespace A124774

/-- `A321648(A019565(n))` -/
def P1652551716840022780.Spec : Prop :=
  ∀ n, P1652551716840022780.a n = A124774 n

end A124774

/-!
# A124778: Number of unlabeled unordered rooted forests associated with compositions in standard order.

The programs for A124778, there is no canonical definition to state claims against.
-/

/-! ## A124778.P2175380682488386652

`char[comp[and(2^floor(log2(n+1))-1, or(n, floor(n/2)))]]+1`
-/

namespace A124778.P2175380682488386652
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((2 ^ Nat.log 2 (n + 1) : ℤ) - 1) (Int.lor (n : ℤ) ⌊(n : ℚ) / 2⌋)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f1 j = n then 1 else 0) + 1

end

end A124778.P2175380682488386652

/-! ## A124778.P5599128132542282717

`val(A341392(n), 6)+1`
-/

namespace A124778.P5599128132542282717
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A341392 n).toNat 6 + 1

end

end A124778.P5599128132542282717

/-! ## A124778.P7484427515383824627

`A056976(Δ[n²])+1`
-/

namespace A124778.P7484427515383824627
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056976 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + 1

end

end A124778.P7484427515383824627

/-! ## A124778.P11161598880270132313

`and(∑[n], A087116(n))!`
-/

namespace A124778.P11161598880270132313
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (Int.land ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (A087116 n)).toNat

end

end A124778.P11161598880270132313

/-! ## A124778.P12842356079253259064

`char[A004752(n+1)]+1`
-/

namespace A124778.P12842356079253259064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004752 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f1 j = (n : ℤ) then 1 else 0) + 1

end

end A124778.P12842356079253259064

/-!
# A124779: a(n) = gcd(A(n), A(n+2))/gcd(d(n), d(n+2)) where A(n) = Sum_{k=0..n} n!/k! and d(n) = gcd(A(n), n!).

The programs for A124779, there is no canonical definition to state claims against.
-/

/-! ## A124779.P8020119968883470129

`A124780(n)/A124781(n)`
-/

namespace A124779.P8020119968883470129
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A124780 n : ℚ) / (A124781 n : ℚ)

end

end A124779.P8020119968883470129

/-! ## A124779.P461483917317816572

`A123901(n)/A124782(n)`
-/

namespace A124779.P461483917317816572
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A123901 n : ℚ) / (A124782 n : ℚ)

end

end A124779.P461483917317816572

/-! ## A124779.P1172074150122418120

`C(A124780(n), (n+3)/A123901(n))`
-/

namespace A124779.P1172074150122418120
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A124780 n).toNat (SequenceMachineLib.roundAway ((n + 3 : ℚ) / (A123901 n : ℚ))).toNat

end

end A124779.P1172074150122418120

/-! ## A124779.P3093064207724590915

`(n+3)/A124782(n)-A124781(n)+1`
-/

namespace A124779.P3093064207724590915
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℚ) / (A124782 n : ℚ) - (A124781 n : ℚ) + 1

end

end A124779.P3093064207724590915

/-! ## A124779.P10349249512909140689

`A222257(A124780(n)-A124781(n))`
-/

namespace A124779.P10349249512909140689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222257 (A124780 n - A124781 n).toNat

end

end A124779.P10349249512909140689

/-! ## A124779.P9285000302041174476

`A006530(C(A124780(n), A124781(n)))`
-/

namespace A124779.P9285000302041174476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (Nat.choose (A124780 n).toNat (A124781 n).toNat)

end

end A124779.P9285000302041174476

/-! ## A124779.P6894250293640801854

`A014963(C(A124780(n), A124781(n)))`
-/

namespace A124779.P6894250293640801854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (Nat.choose (A124780 n).toNat (A124781 n).toNat)

end

end A124779.P6894250293640801854

/-! ## A124779.P4019771021022493127

`A020639(C(A123901(n), A124782(n)))`
-/

namespace A124779.P4019771021022493127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (Nat.choose (A123901 n).toNat (A124782 n).toNat)

end

end A124779.P4019771021022493127

/-! ## A124779.P9571025277813456564

`A020639(C(A124780(n), A124781(n)))`
-/

namespace A124779.P9571025277813456564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (Nat.choose (A124780 n).toNat (A124781 n).toNat)

end

end A124779.P9571025277813456564

/-! ## A124779.P15386405863030572803

`A004442(xor(A124780(n), A124781(n)))`
-/

namespace A124779.P15386405863030572803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (Int.xor (A124780 n) (A124781 n)).toNat

end

end A124779.P15386405863030572803

/-! ## A124779.P2163686939797073952

`A006530(A124780(n)+1-A124781(n))`
-/

namespace A124779.P2163686939797073952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A124780 n + (1 - A124781 n)).toNat

end

end A124779.P2163686939797073952

/-! ## A124779.P2346587516350698711

`A014963(A124780(n)+1-A124781(n))`
-/

namespace A124779.P2346587516350698711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A124780 n + (1 - A124781 n)).toNat

end

end A124779.P2346587516350698711

/-! ## A124779.P5487519732393745390

`A020639(A124780(n)+1-A124781(n))`
-/

namespace A124779.P5487519732393745390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A124780 n + (1 - A124781 n)).toNat

end

end A124779.P5487519732393745390

/-! ## A124779.P3381913302706482297

`A335423(A124780(n)+1-A124781(n))`
-/

namespace A124779.P3381913302706482297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335423 (A124780 n + (1 - A124781 n)).toNat

end

end A124779.P3381913302706482297

/-! ## A124779.P7651247850668536258

`A006530(1-(A124781(n)-A124780(n)))`
-/

namespace A124779.P7651247850668536258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (1 - (A124781 n - A124780 n)).toNat

end

end A124779.P7651247850668536258

/-! ## A124779.P4417146094495858122

`A020639(1-(A124781(n)-A124780(n)))`
-/

namespace A124779.P4417146094495858122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (1 - (A124781 n - A124780 n)).toNat

end

end A124779.P4417146094495858122

/-! ## A124779.P3939309953924091724

`gcd(A073838(n+1), A124780(n))`
-/

namespace A124779.P3939309953924091724
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A073838 (n + 1)) (A124780 n)

end

end A124779.P3939309953924091724

/-! ## A124779.P11247914303274733377

`A335423(A124780(n)*A124781(n))`
-/

namespace A124779.P11247914303274733377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335423 (A124780 n * A124781 n).toNat

end

end A124779.P11247914303274733377

/-!
# A124780: a(n) = gcd(A(n), A(n+2)) where A(n) = A000522(n) = Sum_{k=0..n} n!/k!.

The programs for A124780, there is no canonical definition to state claims against.
-/

/-! ## A124780.P12742724995363858286

`(n+3)/A124782(n)`
-/

namespace A124780.P12742724995363858286
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℚ) / (A124782 n : ℚ)

end

end A124780.P12742724995363858286

/-! ## A124780.P8382815552616335662

`A123901(n)/A124782(n)*A124781(n)`
-/

namespace A124780.P8382815552616335662
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A123901 n : ℚ) / (A124782 n : ℚ) * (A124781 n : ℚ)

end

end A124780.P8382815552616335662

/-! ## A124780.P12380893129763151172

`gcd(n+3, A093101(2*n+3))`
-/

namespace A124780.P12380893129763151172
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 3 : ℤ) (A093101 (2 * n + 3))

end

end A124780.P12380893129763151172

/-! ## A124780.P177405985770876269

`A124781(2*n+3)/gcd(2, n)`
-/

namespace A124780.P177405985770876269
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A124781 (2 * n + 3) : ℚ) / (Nat.gcd 2 n : ℚ)

end

end A124780.P177405985770876269

/-! ## A124780.P13405070491017179463

`A124781(3*(n+2))`
-/

namespace A124780.P13405070491017179463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124781 (3 * (n + 2))

end

end A124780.P13405070491017179463

/-! ## A124780.P11385880266169622064

`A124779(n)*A124781(n)`
-/

namespace A124780.P11385880266169622064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124779 n * A124781 n

end

end A124780.P11385880266169622064

/-! ## A124780.P666395273489278470

`A248666(∏{p}[n+3, #])`
-/

namespace A124780.P666395273489278470
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248666 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A124780.P666395273489278470

/-! ## A124780.P12428056492927852529

`gcd(n+3, A143918(n))`
-/

namespace A124780.P12428056492927852529
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 3 : ℤ) (A143918 n)

end

end A124780.P12428056492927852529

/-! ## A124780.P11022178091233120390

`gcd(A000027(n+1)+2, A000522(n))`
-/

namespace A124780.P11022178091233120390
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000027 (n + 1) + 2) (A000522 n)

end

end A124780.P11022178091233120390

/-!
# A124781: a(n) = gcd(A093101(n), A093101(n+2)) where A093101(n) = gcd(n!, A(n)) and A(n) = A000522(n) = Sum_{k=0..n} n!/k!.

The programs for A124781, there is no canonical definition to state claims against.
-/

/-! ## A124781.P6461069564605458143

`(n+3)/A123901(n)`
-/

namespace A124781.P6461069564605458143
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℚ) / (A123901 n : ℚ)

end

end A124781.P6461069564605458143

/-! ## A124781.P9645137723268765574

`gcd(n+3, A093101(n))`
-/

namespace A124781.P9645137723268765574
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 3 : ℤ) (A093101 n)

end

end A124781.P9645137723268765574

/-! ## A124781.P5572022893236595530

`gcd(A093101(n)², A124780(n))`
-/

namespace A124781.P5572022893236595530
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A093101 n ^ 2) (A124780 n)

end

end A124781.P5572022893236595530

/-! ## A124781.P14933962456578020254

`A124780(n)/A123901(n)*A124782(n)`
-/

namespace A124781.P14933962456578020254
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A124780 n : ℚ) / (A123901 n : ℚ) * (A124782 n : ℚ)

end

end A124781.P14933962456578020254

/-! ## A124781.P13473110202525896319

`gcd(A028552(n)-A093101(n), A028552(n))`
-/

namespace A124781.P13473110202525896319
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A028552 n - A093101 n) (A028552 n)

end

end A124781.P13473110202525896319

/-! ## A124781.P766828460358521480

`A124780((n%A093101(n))%A124780(n))`
-/

namespace A124781.P766828460358521480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124780 (Int.tmod (Int.tmod (n : ℤ) (A093101 n)) (A124780 n)).toNat

end

end A124781.P766828460358521480

/-! ## A124781.P7948690547914260024

`A124780(n)/A124779(n)`
-/

namespace A124781.P7948690547914260024
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A124780 n : ℚ) / (A124779 n : ℚ)

end

end A124781.P7948690547914260024

/-! ## A124781.P17340027297182007801

`A124780(C(n, A124779(n)))`
-/

namespace A124781.P17340027297182007801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124780 (Nat.choose n (A124779 n).toNat)

end

end A124781.P17340027297182007801

/-! ## A124781.P12440155293981511040

`(n+3)/(A124779(n)*A124782(n))`
-/

namespace A124781.P12440155293981511040
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℚ) / (A124779 n * A124782 n : ℚ)

end

end A124781.P12440155293981511040

/-! ## A124781.P18346509869108937851

`gcd(A034386(n), A124780(n))`
-/

namespace A124781.P18346509869108937851
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A034386 n) (A124780 n)

end

end A124781.P18346509869108937851

/-!
# A124782: a(n) = (n+3)/gcd(A(n), A(n+2)) where A(n) = A000522(n) = Sum_{k=0..n} n!/k!.

The programs for A124782, there is no canonical definition to state claims against.
-/

/-! ## A124782.P208028333149663752

`(n+3)/A124780(n)`
-/

namespace A124782.P208028333149663752
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℚ) / (A124780 n : ℚ)

end

end A124782.P208028333149663752

/-! ## A124782.P14262707950960546665

`Δ[A082111(n)]/(2*A124780(n))`
-/

namespace A124782.P14262707950960546665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082111 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (2 * A124780 n : ℚ)

end

end A124782.P14262707950960546665

/-! ## A124782.P7447105275338495061

`A123901(n)/A124780(n)*A124781(n)`
-/

namespace A124782.P7447105275338495061
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A123901 n : ℚ) / (A124780 n : ℚ) * (A124781 n : ℚ)

end

end A124782.P7447105275338495061

/-! ## A124782.P2655788535139896735

`A123901(3*(n+2))/3`
-/

namespace A124782.P2655788535139896735
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A123901 (3 * (n + 2)) : ℚ) / 3

end

end A124782.P2655788535139896735

/-! ## A124782.P15194390943972678107

`(n+3)/A124781(3*(n+2))`
-/

namespace A124782.P15194390943972678107
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℚ) / (A124781 (3 * (n + 2)) : ℚ)

end

end A124782.P15194390943972678107

/-! ## A124782.P12705621642579239987

`1/A124779(n)*A123901(n)`
-/

namespace A124782.P12705621642579239987
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (A124779 n : ℚ) * (A123901 n : ℚ)

end

end A124782.P12705621642579239987

/-! ## A124782.P16851385367971759721

`(n+3)/(A124779(n)*A124781(n))`
-/

namespace A124782.P16851385367971759721
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℚ) / (A124779 n * A124781 n : ℚ)

end

end A124782.P16851385367971759721

/-!
# A124783: Number of base 28 circular n-digit numbers with adjacent digits differing by 1 or less.

The programs for A124783, there is no canonical definition to state claims against.
-/

/-! ## A124783.P7056855390092440096

`A124726(n)+A014682(A124784(n)-A124726(n))`
-/

namespace A124783.P7056855390092440096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124726 n + A014682 (A124784 n - A124726 n).toNat

end

end A124783.P7056855390092440096

/-! ## A124783.P7645612723498304632

`A124784(n)-A014682(A124803(n)-A124784(n))`
-/

namespace A124783.P7645612723498304632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124784 n - A014682 (A124803 n - A124784 n).toNat

end

end A124783.P7645612723498304632

/-! ## A124783.P14450550220244482783

`A124716(n)+A014682(A124716(n)-A124706(n))`
-/

namespace A124783.P14450550220244482783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124716 n + A014682 (A124716 n - A124706 n).toNat

end

end A124783.P14450550220244482783

/-! ## A124783.P9914704997965375666

`A124717(n)+A014682(A124717(n)-A124709(n))`
-/

namespace A124783.P9914704997965375666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124717 n + A014682 (A124717 n - A124709 n).toNat

end

end A124783.P9914704997965375666

/-! ## A124783.P2606716956619810508

`A124719(n)+A014682(A124719(n)-A124715(n))`
-/

namespace A124783.P2606716956619810508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124719 n + A014682 (A124719 n - A124715 n).toNat

end

end A124783.P2606716956619810508

/-!
# A124784: Number of base 29 circular n-digit numbers with adjacent digits differing by 1 or less.

The programs for A124784, there is no canonical definition to state claims against.
-/

/-! ## A124784.P16019567506468434496

`A002426(n)+A124783(n)%A181553(n)`
-/

namespace A124784.P16019567506468434496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002426 n + Int.tmod (A124783 n) (A181553 n)

end

end A124784.P16019567506468434496

/-! ## A124784.P14838045370951579925

`A000265(A124783(n)+A002426(n))`
-/

namespace A124784.P14838045370951579925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A124783 n + A002426 n).toNat

end

end A124784.P14838045370951579925

/-! ## A124784.P11374877295500348850

`A000265(A124783(n)+A005213(2*n))`
-/

namespace A124784.P11374877295500348850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A124783 n + A005213 (2 * n)).toNat

end

end A124784.P11374877295500348850

/-! ## A124784.P5440889171816599297

`A000265(A124783(n)+2*A097861(n)+1)`
-/

namespace A124784.P5440889171816599297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A124783 n + (2 * A097861 n + 1)).toNat

end

end A124784.P5440889171816599297

/-! ## A124784.P17662475804116369915

`A000265(A124783(n)+2*A257520(n)-1)`
-/

namespace A124784.P17662475804116369915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A124783 n + (2 * A257520 n - 1)).toNat

end

end A124784.P17662475804116369915

/-!
# A124785: Semiprime sopfr of semiprimes A115585.

The programs for A124785, there is no canonical definition to state claims against.
-/

/-! ## A124785.P12034700023160662055

`A001414(A115585(n+1))`
-/

namespace A124785.P12034700023160662055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (A115585 (n + 1)).toNat

end

end A124785.P12034700023160662055

/-! ## A124785.P8395437703045285889

`A275314(2*A115585(n+1))`
-/

namespace A124785.P8395437703045285889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275314 (2 * A115585 (n + 1)).toNat

end

end A124785.P8395437703045285889

/-! ## A124785.P537370841100939416

`A319703(2*A115585(n+1))`
-/

namespace A124785.P537370841100939416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319703 (2 * A115585 (n + 1)).toNat

end

end A124785.P537370841100939416

/-! ## A124785.P7494394514295265088

`filter[A068318(n+1), A064911(#)]`
-/

namespace A124785.P7494394514295265088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068318 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A124785.P7494394514295265088

/-! ## A124785.P1235036992290527293

`∑{d}[A115585(n+1), A089389(#)]`
-/

namespace A124785.P1235036992290527293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115585 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A089389 d

end

end A124785.P1235036992290527293

/-! ## A124785.P11582913310093858820

`∑{d}[A115585(n+1), A120007(#)]`
-/

namespace A124785.P11582913310093858820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115585 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A120007 d

end

end A124785.P11582913310093858820

/-! ## A124785.P15011870431063477390

`∑{d}[A115585(n+1), A300251(#)]`
-/

namespace A124785.P15011870431063477390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115585 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A300251 d

end

end A124785.P15011870431063477390

/-! ## A124785.P11171891917718842561

`A074320(∏{p}[A115585(n+1), #])`
-/

namespace A124785.P11171891917718842561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115585 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074320 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A124785.P11171891917718842561

/-! ## A124785.P4804766485737296374

`A003415(∑{d}[A115585(n+1), A000010(#)])`
-/

namespace A124785.P4804766485737296374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115585 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d).toNat

end

end A124785.P4804766485737296374

/-! ## A124785.P16158216654382513171

`A089389(A115585(n+1))%A000041(n+7)`
-/

namespace A124785.P16158216654382513171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A089389 (A115585 (n + 1)).toNat) (A000041 (n + 7))

end

end A124785.P16158216654382513171

/-!
# A124788: Triangle read by rows: expansion of (1+x*y)/(1-x^2*y^2-x^3*y^2).

The programs for A124788, the canonical program `A124788.P14755828261857917216` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A124788 has offset 0).

The definition of A124788 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A124788.P2642808766216402157

`abs(A124744(n))`
-/

namespace A124788.P2642808766216402157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A124744 n|

end

end A124788.P2642808766216402157

namespace A124788

/-- `abs(A124744(n))` -/
def P2642808766216402157.Spec : Prop :=
  ∀ n, P2642808766216402157.a n = A124788 n

end A124788

/-! ## A124788.P11478391941242890192

`C(A004526(n-C(∑[char[∑[n]]], 2)), C(comp[∑[n]]-n, 2)-(n+1))`
-/

namespace A124788.P11478391941242890192
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A004526 (n - Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2)).toNat ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f4 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n + 1 : ℤ)).toNat

end

end A124788.P11478391941242890192

namespace A124788

/-- `C(A004526(n-C(∑[char[∑[n]]], 2)), C(comp[∑[n]]-n, 2)-(n+1))` -/
def P11478391941242890192.Spec : Prop :=
  ∀ n, (P11478391941242890192.a n : ℤ) = A124788 n

end A124788

/-! ## A124788.P14218501819013171541

`A097807(n)*A124744(n)`
-/

namespace A124788.P14218501819013171541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097807 n * A124744 n

end

end A124788.P14218501819013171541

namespace A124788

/-- `A097807(n)*A124744(n)` -/
def P14218501819013171541.Spec : Prop :=
  ∀ n, P14218501819013171541.a n = A124788 n

end A124788

/-! ## A124788.P10429055339412471679

`A124744(n)*A128257(n)`
-/

namespace A124788.P10429055339412471679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124744 n * A128257 n

end

end A124788.P10429055339412471679

namespace A124788

/-- `A124744(n)*A128257(n)` -/
def P10429055339412471679.Spec : Prop :=
  ∀ n, P10429055339412471679.a n = A124788 n

end A124788

/-! ## A124788.P7639961036815738931

`A124744(n)*A187034(n)`
-/

namespace A124788.P7639961036815738931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124744 n * A187034 n

end

end A124788.P7639961036815738931

namespace A124788

/-- `A124744(n)*A187034(n)` -/
def P7639961036815738931.Spec : Prop :=
  ∀ n, P7639961036815738931.a n = A124788 n

end A124788

/-! ## A124788.P13249910008430738440

`gcd(A000038(n), A124744(n))`
-/

namespace A124788.P13249910008430738440
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A124744 n)

end

end A124788.P13249910008430738440

namespace A124788

/-- `gcd(A000038(n), A124744(n))` -/
def P13249910008430738440.Spec : Prop :=
  ∀ n, (P13249910008430738440.a n : ℤ) = A124788 n

end A124788

/-! ## A124788.P9422030730882192452

`C(A004526(n-C(∑[char[∑[n]]], 2)), A025581(n))`
-/

namespace A124788.P9422030730882192452
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A004526 (n - Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2)).toNat (A025581 n).toNat

end

end A124788.P9422030730882192452

namespace A124788

/-- `C(A004526(n-C(∑[char[∑[n]]], 2)), A025581(n))` -/
def P9422030730882192452.Spec : Prop :=
  ∀ n, (P9422030730882192452.a n : ℤ) = A124788 n

end A124788

/-! ## A124788.P359835603630185439

`C(A004526(A002262(n)), C(comp[∑[n]]-n, 2)-(n+1))`
-/

namespace A124788.P359835603630185439
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A004526 (A002262 n).toNat).toNat ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n + 1 : ℤ)).toNat

end

end A124788.P359835603630185439

namespace A124788

/-- `C(A004526(A002262(n)), C(comp[∑[n]]-n, 2)-(n+1))` -/
def P359835603630185439.Spec : Prop :=
  ∀ n, (P359835603630185439.a n : ℤ) = A124788 n

end A124788

/-! ## A124788.P14755828261857917216

`C(A004526(A002262(n)), A025581(n))`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A124788

/-- `C(A004526(A002262(n)), A025581(n))` -/
def P14755828261857917216.Spec : Prop :=
  ∀ n, (P14755828261857917216.a n : ℤ) = A124788 n

theorem P14755828261857917216.correct : P14755828261857917216.Spec := by
  intro n
  simp only [A124788]

end A124788

/-! ## A124788.P2557116812142293248

`C(A004526(A003984(n)), A025581(n))`
-/

namespace A124788.P2557116812142293248
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A004526 (A003984 n).toNat).toNat (A025581 n).toNat

end

end A124788.P2557116812142293248

namespace A124788

/-- `C(A004526(A003984(n)), A025581(n))` -/
def P2557116812142293248.Spec : Prop :=
  ∀ n, (P2557116812142293248.a n : ℤ) = A124788 n

end A124788

/-! ## A124788.P11189955217143470032

`C(A004526(A191532(n)), A025581(n))`
-/

namespace A124788.P11189955217143470032
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A004526 (A191532 n).toNat).toNat (A025581 n).toNat

end

end A124788.P11189955217143470032

namespace A124788

/-- `C(A004526(A191532(n)), A025581(n))` -/
def P11189955217143470032.Spec : Prop :=
  ∀ n, (P11189955217143470032.a n : ℤ) = A124788 n

end A124788

/-! ## A124788.P6535826987161402309

`C(A004526(A144328(n+1)), A025581(n))`
-/

namespace A124788.P6535826987161402309
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A004526 (A144328 (n + 1)).toNat).toNat (A025581 n).toNat

end

end A124788.P6535826987161402309

namespace A124788

/-- `C(A004526(A144328(n+1)), A025581(n))` -/
def P6535826987161402309.Spec : Prop :=
  ∀ n, (P6535826987161402309.a n : ℤ) = A124788 n

end A124788

/-! ## A124788.P995093247950776440

`C(A002265(A158405(n+1)), A025581(n))`
-/

namespace A124788.P995093247950776440
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A002265 (A158405 (n + 1)).toNat).toNat (A025581 n).toNat

end

end A124788.P995093247950776440

namespace A124788

/-- `C(A002265(A158405(n+1)), A025581(n))` -/
def P995093247950776440.Spec : Prop :=
  ∀ n, (P995093247950776440.a n : ℤ) = A124788 n

end A124788

/-! ## A124788.P1564490272391737780

`C(A002265(A204022(n+1)), A025581(n))`
-/

namespace A124788.P1564490272391737780
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A002265 (A204022 (n + 1)).toNat).toNat (A025581 n).toNat

end

end A124788.P1564490272391737780

namespace A124788

/-- `C(A002265(A204022(n+1)), A025581(n))` -/
def P1564490272391737780.Spec : Prop :=
  ∀ n, (P1564490272391737780.a n : ℤ) = A124788 n

end A124788

/-! ## A124788.P4229073719721522891

`C(A123108(A002262(n)), A144257(n+1))`
-/

namespace A124788.P4229073719721522891
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A123108 (A002262 n).toNat).toNat (A144257 (n + 1)).toNat

end

end A124788.P4229073719721522891

namespace A124788

/-- `C(A123108(A002262(n)), A144257(n+1))` -/
def P4229073719721522891.Spec : Prop :=
  ∀ n, (P4229073719721522891.a n : ℤ) = A124788 n

end A124788

/-! ## A124788.P10787208131750653780

`C(A319571(A143844(n)), A025581(n))`
-/

namespace A124788.P10787208131750653780
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A319571 (A143844 n).toNat).toNat (A025581 n).toNat

end

end A124788.P10787208131750653780

namespace A124788

/-- `C(A319571(A143844(n)), A025581(n))` -/
def P10787208131750653780.Spec : Prop :=
  ∀ n, (P10787208131750653780.a n : ℤ) = A124788 n

end A124788

/-! ## A124788.P13887357455472818409

`C(A235127(A059268(n)), A025581(n))`
-/

namespace A124788.P13887357455472818409
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A235127 (A059268 n).toNat).toNat (A025581 n).toNat

end

end A124788.P13887357455472818409

namespace A124788

/-- `C(A235127(A059268(n)), A025581(n))` -/
def P13887357455472818409.Spec : Prop :=
  ∀ n, (P13887357455472818409.a n : ℤ) = A124788 n

end A124788

/-! ## A124788.P17253818313958278767

`C(A346698(2^(n-C(∑[char[∑[n]]], 2))), C(comp[∑[n]]-n, 2)-(n+1))`
-/

namespace A124788.P17253818313958278767
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A346698 (SequenceMachineLib.roundAway ((2 : ℚ) ^ ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) : ℤ))).toNat).toNat ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f4 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n + 1 : ℤ)).toNat

end

end A124788.P17253818313958278767

namespace A124788

/-- `C(A346698(2^(n-C(∑[char[∑[n]]], 2))), C(comp[∑[n]]-n, 2)-(n+1))` -/
def P17253818313958278767.Spec : Prop :=
  ∀ n, (P17253818313958278767.a n : ℤ) = A124788 n

end A124788

/-! ## A124788.P9506332515272798006

`C(A037827(2^(n-C(∑[char[∑[n]]], 2))), C(comp[∑[n]]-n, 2)-(n+1))`
-/

namespace A124788.P9506332515272798006
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A037827 (SequenceMachineLib.roundAway ((2 : ℚ) ^ ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) : ℤ))).toNat).toNat ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f4 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n + 1 : ℤ)).toNat

end

end A124788.P9506332515272798006

namespace A124788

/-- `C(A037827(2^(n-C(∑[char[∑[n]]], 2))), C(comp[∑[n]]-n, 2)-(n+1))` -/
def P9506332515272798006.Spec : Prop :=
  ∀ n, (P9506332515272798006.a n : ℤ) = A124788 n

end A124788

/-! ## A124788.P2514548591403250191

`C(A160380(2^(n-C(∑[char[∑[n]]], 2))), C(comp[∑[n]]-n, 2)-(n+1))`
-/

namespace A124788.P2514548591403250191
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A160380 (SequenceMachineLib.roundAway ((2 : ℚ) ^ ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) : ℤ))).toNat).toNat ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f4 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n + 1 : ℤ)).toNat

end

end A124788.P2514548591403250191

namespace A124788

/-- `C(A160380(2^(n-C(∑[char[∑[n]]], 2))), C(comp[∑[n]]-n, 2)-(n+1))` -/
def P2514548591403250191.Spec : Prop :=
  ∀ n, (P2514548591403250191.a n : ℤ) = A124788 n

end A124788

/-!
# A124789: Expansion of (1+x^2)/(1-x^4-x^5).

The programs for A124789, the canonical program `A124789.P14096060932190346506` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A124789 has offset 0).

The definition of A124789 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+x^2)/(1-x^4-x^5))` (program `A124789.P14096060932190346506`, by `A124789.P14096060932190346506.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A124789.P14096060932190346506

`ogf((1+x^2)/(1-x^4-x^5))`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A124789

/-- `ogf((1+x^2)/(1-x^4-x^5))` -/
def P14096060932190346506.Spec : Prop :=
  ∀ n, P14096060932190346506.a n = A124789 n

theorem P14096060932190346506.correct : P14096060932190346506.Spec := by
  intro n
  simp only [A124789]

end A124789

/-! ## A124789.P3048365902660940800

`(-1)^n*A124746(n)`
-/

namespace A124789.P3048365902660940800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A124746 n

end

end A124789.P3048365902660940800

namespace A124789

/-- `(-1)^n*A124746(n)` -/
def P3048365902660940800.Spec : Prop :=
  ∀ n, P3048365902660940800.a n = A124789 n

end A124789

/-! ## A124789.P4368703573494389466

`a(n-4)+a(n-5)` with `a(0)=1, a(1)=0, a(2)=1, a(3)=0, a(4)=1`
-/

namespace A124789.P4368703573494389466
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 1, 0, 1] fun n a =>
  a (n - 4) + a (n - 5)

end

end A124789.P4368703573494389466

namespace A124789

/-- `a(n-4)+a(n-5)` -/
def P4368703573494389466.Spec : Prop :=
  ∀ n, (P4368703573494389466.a n : ℤ) = A124789 n

end A124789

/-! ## A124789.P8620845895538894327

`A127839(n+4)+A017827(n)`
-/

namespace A124789.P8620845895538894327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127839 (n + 4) + A017827 n

end

end A124789.P8620845895538894327

namespace A124789

/-- `A127839(n+4)+A017827(n)` -/
def P8620845895538894327.Spec : Prop :=
  ∀ n, P8620845895538894327.a n = A124789 n

end A124789

/-! ## A124789.P1126881598906292494

`A017827(abs(2-n))+A017827(n)`
-/

namespace A124789.P1126881598906292494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017827 |2 - (n : ℤ)|.toNat + A017827 n

end

end A124789.P1126881598906292494

namespace A124789

/-- `A017827(abs(2-n))+A017827(n)` -/
def P1126881598906292494.Spec : Prop :=
  ∀ n, P1126881598906292494.a n = A124789 n

end A124789

/-! ## A124789.P10411141075931000338

`A127839(n+4)+A127839(n+6)`
-/

namespace A124789.P10411141075931000338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127839 (n + 4) + A127839 (n + 6)

end

end A124789.P10411141075931000338

namespace A124789

/-- `A127839(n+4)+A127839(n+6)` -/
def P10411141075931000338.Spec : Prop :=
  ∀ n, P10411141075931000338.a n = A124789 n

end A124789

/-! ## A124789.P16371504829339358470

`A103372(n+1)-a(n-1)` with `a(0)=1`
-/

namespace A124789.P16371504829339358470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A103372 (n + 1) - a (n - 1)

end

end A124789.P16371504829339358470

namespace A124789

/-- `A103372(n+1)-a(n-1)` -/
def P16371504829339358470.Spec : Prop :=
  ∀ n, P16371504829339358470.a n = A124789 n

end A124789

/-! ## A124789.P9172964597974347385

`Δ[A103372(n+3)+A103372(n+5)]`
-/

namespace A124789.P9172964597974347385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103372 (n + 3) + A103372 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A124789.P9172964597974347385

namespace A124789

/-- `Δ[A103372(n+3)+A103372(n+5)]` -/
def P9172964597974347385.Spec : Prop :=
  ∀ n, P9172964597974347385.a n = A124789 n

end A124789

/-! ## A124789.P15485265950641310869

`abs(A124746(n))`
-/

namespace A124789.P15485265950641310869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A124746 n|

end

end A124789.P15485265950641310869

namespace A124789

/-- `abs(A124746(n))` -/
def P15485265950641310869.Spec : Prop :=
  ∀ n, P15485265950641310869.a n = A124789 n

end A124789

/-! ## A124789.P7294159699171297616

`gcd(A000038(n), A124746(n))`
-/

namespace A124789.P7294159699171297616
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A124746 n)

end

end A124789.P7294159699171297616

namespace A124789

/-- `gcd(A000038(n), A124746(n))` -/
def P7294159699171297616.Spec : Prop :=
  ∀ n, (P7294159699171297616.a n : ℤ) = A124789 n

end A124789

/-! ## A124789.P13486952338918972567

`lcm(A020985(n), A124746(n))`
-/

namespace A124789.P13486952338918972567
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A124746 n)

end

end A124789.P13486952338918972567

namespace A124789

/-- `lcm(A020985(n), A124746(n))` -/
def P13486952338918972567.Spec : Prop :=
  ∀ n, (P13486952338918972567.a n : ℤ) = A124789 n

end A124789

/-!
# A124790: A generalized Motzkin triangle.

The programs for A124790, there is no canonical definition to state claims against.
-/

/-! ## A124790.P10355644734062643900

`A004218(ceil(exp(A237619(n))))`
-/

namespace A124790.P10355644734062643900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004218 ⌈Real.exp (A237619 n : ℝ)⌉.toNat

end

end A124790.P10355644734062643900

/-! ## A124790.P8912967739228961248

`A121289(lcm(6, A269954(n)))`
-/

namespace A124790.P8912967739228961248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121289 (Int.lcm 6 (A269954 n))

end

end A124790.P8912967739228961248

/-! ## A124790.P10878063770540939094

`A127322(A285849(n)+A152140(n))`
-/

namespace A124790.P10878063770540939094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127322 (A285849 n + A152140 n).toNat

end

end A124790.P10878063770540939094

/-! ## A124790.P16083677399047642645

`A007814(A213275(n)+A320606(n+1)²)`
-/

namespace A124790.P16083677399047642645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A213275 n + A320606 (n + 1) ^ 2).toNat

end

end A124790.P16083677399047642645

/-! ## A124790.P6748080684238668894

`A083537(A213275(n)+A320606(n+1)²)`
-/

namespace A124790.P6748080684238668894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083537 (A213275 n + A320606 (n + 1) ^ 2).toNat

end

end A124790.P6748080684238668894

/-!
# A124791: Row sums of number triangle A124790.

The programs for A124791, there is no canonical definition to state claims against.
-/

/-! ## A124791.P9963206190618784072

`round((n-1)*(2*a(n-1)+3*a(n-2))/(n+1))` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A124791.P9963206190618784072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  SequenceMachineLib.roundAway (((n : ℤ) - 1 : ℚ) * ((2 * a (n - 1) + 3 * a (n - 2) : ℚ) / (n + 1 : ℚ)))

end

end A124791.P9963206190618784072

/-! ## A124791.P9807500238006040899

`or(1, floor((n-1)*(2*a(n-1)+3*a(n-2))/(n+1)))` with `a(0)=1, a(1)=1`
-/

namespace A124791.P9807500238006040899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  Int.lor 1 ⌊((n : ℤ) - 1 : ℚ) * ((2 * a (n - 1) + 3 * a (n - 2) : ℚ) / (n + 1 : ℚ))⌋

end

end A124791.P9807500238006040899

/-! ## A124791.P5246380982035823589

`abs(1-A372023(n+1))`
-/

namespace A124791.P5246380982035823589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A372023 (n + 1)|

end

end A124791.P5246380982035823589

/-! ## A124791.P14590309873697581737

`2*A005043(n)-(-1)^n`
-/

namespace A124791.P14590309873697581737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A005043 n - (-1) ^ n

end

end A124791.P14590309873697581737

/-! ## A124791.P13873253928660731813

`abs(1-2*A099323(n+1))`
-/

namespace A124791.P13873253928660731813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - 2 * A099323 (n + 1)|

end

end A124791.P13873253928660731813

/-!
# A124792: Numbers k such that k and A001414(k) are 3-almost primes.

The programs for A124792, there is no canonical definition to state claims against.
-/

/-! ## A124792.P10864972770967569098

`∩[A045835(n+1), A217856(n+1)]`
-/

namespace A124792.P10864972770967569098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045835 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217856 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A124792.P10864972770967569098

/-! ## A124792.P3114211208374187954

`∩[A014612(n+1), A045835(n+1)]`
-/

namespace A124792.P3114211208374187954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014612 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045835 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A124792.P3114211208374187954

/-! ## A124792.P2666381271520202432

`filter[A045835(n+1), A101605(#)]`
-/

namespace A124792.P2666381271520202432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045835 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A101605 (f1 j).toNat = 1) n)

end

end A124792.P2666381271520202432

/-!
# A124793: Numbers in a perpendicular plane intersecting a 3D clockwise spiral produced by powers of 2.

The programs for A124793, there is no canonical definition to state claims against.
-/

/-! ## A124793.P3622641722196275287

`A286164(A355781(n))+A002426(2*n)`
-/

namespace A124793.P3622641722196275287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286164 (A355781 n).toNat + A002426 (2 * n)

end

end A124793.P3622641722196275287

/-!
# A124794: Coefficients of incomplete Bell polynomials in the prime factorization order.

The programs for A124794, the canonical program `A124794.P1483708906814642805` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A124794 has offset 1).

The definition of A124794 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A124794.P1483708906814642805

`A318762(n+1)/A112624(n+1)`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A124794

/-- `A318762(n+1)/A112624(n+1)` -/
def P1483708906814642805.Spec : Prop :=
  ∀ n, P1483708906814642805.a n = (A124794 (n + 1) : ℚ)

end A124794

/-! ## A124794.P7824337552132962345

`A318762(n+1)/A321898(A181819(n+1))`
-/

namespace A124794.P7824337552132962345
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A318762 (n + 1) : ℚ) / (A321898 (A181819 (n + 1)).toNat : ℚ)

end

end A124794.P7824337552132962345

namespace A124794

/-- `A318762(n+1)/A321898(A181819(n+1))` -/
def P7824337552132962345.Spec : Prop :=
  ∀ n, P7824337552132962345.a n = (A124794 (n + 1) : ℚ)

end A124794

/-! ## A124794.P8507223796218578708

`A318810(A103517(n))/A112624(n+1)`
-/

namespace A124794.P8507223796218578708
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A318810 (A103517 n).toNat : ℚ) / (A112624 (n + 1) : ℚ)

end

end A124794.P8507223796218578708

namespace A124794

/-- `A318810(A103517(n))/A112624(n+1)` -/
def P8507223796218578708.Spec : Prop :=
  ∀ n, P8507223796218578708.a n = (A124794 (n + 1) : ℚ)

end A124794

/-! ## A124794.P10368096497899292778

`A124795(n+1)/A321898(A064989(n+1))`
-/

namespace A124794.P10368096497899292778
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A124795 (n + 1) : ℚ) / (A321898 (A064989 (n + 1)).toNat : ℚ)

end

end A124794.P10368096497899292778

namespace A124794

/-- `A124795(n+1)/A321898(A064989(n+1))` -/
def P10368096497899292778.Spec : Prop :=
  ∀ n, P10368096497899292778.a n = (A124794 (n + 1) : ℚ)

end A124794

/-!
# A124795: Number of permutations with given cycle structure, in the prime factorization order.

The programs for A124795, the canonical program `A124795.P5552241123278455388` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A124795 has offset 1).

The definition of A124795 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 352 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A124795.P5552241123278455388

`A124794(n+1)*A321898(A064989(n+1))`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A124795

/-- `A124794(n+1)*A321898(A064989(n+1))` -/
def P5552241123278455388.Spec : Prop :=
  ∀ n, P5552241123278455388.a n = A124795 (n + 1)

theorem P5552241123278455388.correct : P5552241123278455388.Spec := by
  intro n
  simp only [A124795, Nat.add_sub_cancel]

end A124795

/-! ## A124795.P8231441731711589954

`A321898(A064989(n+1))/A112624(n+1)*A318762(n+1)`
-/

namespace A124795.P8231441731711589954
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A321898 (A064989 (n + 1)).toNat : ℚ) / (A112624 (n + 1) : ℚ) * (A318762 (n + 1) : ℚ)

end

end A124795.P8231441731711589954

namespace A124795

/-- `A321898(A064989(n+1))/A112624(n+1)*A318762(n+1)` -/
def P8231441731711589954.Spec : Prop :=
  ∀ n, P8231441731711589954.a n = (A124795 (n + 1) : ℚ)

end A124795

/-! ## A124795.P16334334679589462362

`abs(A319191(n+1))`
-/

namespace A124795.P16334334679589462362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A319191 (n + 1)|

end

end A124795.P16334334679589462362

namespace A124795

/-- `abs(A319191(n+1))` -/
def P16334334679589462362.Spec : Prop :=
  ∀ n, P16334334679589462362.a n = A124795 (n + 1)

end A124795

/-! ## A124795.P794997923439353092

`gcd(A000038(n), A319191(n+1))`
-/

namespace A124795.P794997923439353092
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A319191 (n + 1))

end

end A124795.P794997923439353092

namespace A124795

/-- `gcd(A000038(n), A319191(n+1))` -/
def P794997923439353092.Spec : Prop :=
  ∀ n, (P794997923439353092.a n : ℤ) = A124795 (n + 1)

end A124795

/-! ## A124795.P1564167177921947801

`lcm(A020985(n), A319191(n+1))`
-/

namespace A124795.P1564167177921947801
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A319191 (n + 1))

end

end A124795.P1564167177921947801

namespace A124795

/-- `lcm(A020985(n), A319191(n+1))` -/
def P1564167177921947801.Spec : Prop :=
  ∀ n, (P1564167177921947801.a n : ℤ) = A124795 (n + 1)

end A124795

/-!
# A124797: Sum of cyclic permutations of 123...n seen as number written in base n+1: ((n+1)^n-1)*(n+1)/2.

The programs for A124797, the canonical program `A124797.P16800705820579186151` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A124797 has offset 1).

The definition of A124797 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A124797.P16800705820579186151

`((n+2)^(n+1)-1)*(n+2)/2`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A124797

/-- `((n+2)^(n+1)-1)*(n+2)/2` -/
def P16800705820579186151.Spec : Prop :=
  ∀ n, P16800705820579186151.a n = (A124797 (n + 1) : ℚ)

end A124797

/-! ## A124797.P12773785388551745192

`A117694(n+2)-(n+2)`
-/

namespace A124797.P12773785388551745192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117694 (n + 2) - (n + 2 : ℤ)

end

end A124797.P12773785388551745192

namespace A124797

/-- `A117694(n+2)-(n+2)` -/
def P12773785388551745192.Spec : Prop :=
  ∀ n, P12773785388551745192.a n = A124797 (n + 1)

end A124797

/-! ## A124797.P13359989128197755269

`A214698(n+2)+∑[n+1]`
-/

namespace A124797.P13359989128197755269
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214698 (n + 2) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A124797.P13359989128197755269

namespace A124797

/-- `A214698(n+2)+∑[n+1]` -/
def P13359989128197755269.Spec : Prop :=
  ∀ n, P13359989128197755269.a n = A124797 (n + 1)

end A124797

/-! ## A124797.P13272329428562285881

`∑[Δ[A168658(n+1)]-A000035(n)]`
-/

namespace A124797.P13272329428562285881
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168658 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - A000035 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A124797.P13272329428562285881

namespace A124797

/-- `∑[Δ[A168658(n+1)]-A000035(n)]` -/
def P13272329428562285881.Spec : Prop :=
  ∀ n, P13272329428562285881.a n = A124797 (n + 1)

end A124797

/-! ## A124797.P13379490380530586373

`Δ[A214698(n+1)]+A066068(n+1)/2`
-/

namespace A124797.P13379490380530586373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214698 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) + (A066068 (n + 1) : ℚ) / 2

end

end A124797.P13379490380530586373

namespace A124797

/-- `Δ[A214698(n+1)]+A066068(n+1)/2` -/
def P13379490380530586373.Spec : Prop :=
  ∀ n, P13379490380530586373.a n = (A124797 (n + 1) : ℚ)

end A124797

/-! ## A124797.P16228404293261055993

`Δ[A214698(n+1)]+(A014566(n+1)+n)/2`
-/

namespace A124797.P16228404293261055993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214698 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) + (A014566 (n + 1) + (n : ℤ) : ℚ) / 2

end

end A124797.P16228404293261055993

namespace A124797

/-- `Δ[A214698(n+1)]+(A014566(n+1)+n)/2` -/
def P16228404293261055993.Spec : Prop :=
  ∀ n, P16228404293261055993.a n = (A124797 (n + 1) : ℚ)

end A124797

/-! ## A124797.P9819524594862998884

`Δ[A214698(n+1)]+round((A000312(n+1)+n)/2)`
-/

namespace A124797.P9819524594862998884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214698 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + SequenceMachineLib.roundAway ((A000312 (n + 1) + (n : ℤ) : ℚ) / 2)

end

end A124797.P9819524594862998884

namespace A124797

/-- `Δ[A214698(n+1)]+round((A000312(n+1)+n)/2)` -/
def P9819524594862998884.Spec : Prop :=
  ∀ n, P9819524594862998884.a n = A124797 (n + 1)

end A124797

/-! ## A124797.P4543575020931660406

`A061190(n+2)/2`
-/

namespace A124797.P4543575020931660406
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A061190 (n + 2) : ℚ) / 2

end

end A124797.P4543575020931660406

namespace A124797

/-- `A061190(n+2)/2` -/
def P4543575020931660406.Spec : Prop :=
  ∀ n, P4543575020931660406.a n = (A124797 (n + 1) : ℚ)

end A124797

/-! ## A124797.P6698469873433556335

`floor(A006091(n+2)/2)`
-/

namespace A124797.P6698469873433556335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A006091 (n + 2) : ℚ) / 2⌋

end

end A124797.P6698469873433556335

namespace A124797

/-- `floor(A006091(n+2)/2)` -/
def P6698469873433556335.Spec : Prop :=
  ∀ n, P6698469873433556335.a n = A124797 (n + 1)

end A124797

/-!
# A124799: Number of base 30 circular n-digit numbers with adjacent digits differing by 1 or less.

The programs for A124799, there is no canonical definition to state claims against.
-/

/-! ## A124799.P6949836247885234933

`A124784(n)+A014682(A124784(n)-A124726(n))`
-/

namespace A124799.P6949836247885234933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124784 n + A014682 (A124784 n - A124726 n).toNat

end

end A124799.P6949836247885234933

/-! ## A124799.P13451168214456809571

`A124784(n)+A014682(A124803(n)-A124784(n))`
-/

namespace A124799.P13451168214456809571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124784 n + A014682 (A124803 n - A124784 n).toNat

end

end A124799.P13451168214456809571

/-! ## A124799.P6761520819528598726

`A124719(n)+A014682(A124719(n)-A124711(n))`
-/

namespace A124799.P6761520819528598726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124719 n + A014682 (A124719 n - A124711 n).toNat

end

end A124799.P6761520819528598726

/-! ## A124799.P15258698794536301162

`A124726(n)+A014682(A124726(n)-A124714(n))`
-/

namespace A124799.P15258698794536301162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124726 n + A014682 (A124726 n - A124714 n).toNat

end

end A124799.P15258698794536301162

/-! ## A124799.P4272286284672587152

`A124783(n)+A014682(A124783(n)-A124717(n))`
-/

namespace A124799.P4272286284672587152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124783 n + A014682 (A124783 n - A124717 n).toNat

end

end A124799.P4272286284672587152

