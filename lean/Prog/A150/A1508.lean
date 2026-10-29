import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
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
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C040
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C011
import Seq.B002.C000
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C001
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
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
# A150800: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 0), (0, 0, 1), (1, 0, -1), (1, 1, 1)}.

The programs for A150800, there is no canonical definition to state claims against.
-/

/-! ## A150800.P11302258197877004260

`A260944(A150805(n))+A150799(n)`
-/

namespace A150800.P11302258197877004260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260944 (A150805 n).toNat + A150799 n

end

end A150800.P11302258197877004260

/-! ## A150800.P858132934534285777

`A150801(A001096(n))`
-/

namespace A150800.P858132934534285777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150801 (A001096 n).toNat

end

end A150800.P858132934534285777

/-!
# A150801: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 1, 0), (0, 0, 1), (1, 0, -1), (1, 1, 1)}.

The programs for A150801, there is no canonical definition to state claims against.
-/

/-! ## A150801.P4697105366757202240

`A123108(A150809(n)+A150794(n))`
-/

namespace A150801.P4697105366757202240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A150809 n + A150794 n).toNat

end

end A150801.P4697105366757202240

/-! ## A150801.P7001812961995485984

`A150803(n)-A025427(A150834(n))`
-/

namespace A150801.P7001812961995485984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150803 n - A025427 (A150834 n).toNat

end

end A150801.P7001812961995485984

/-!
# A150802: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 1), (0, 1, -1), (1, 0, 0), (1, 1, 1)}.

The programs for A150802, there is no canonical definition to state claims against.
-/

/-! ## A150802.P12186480795701962650

`A248227(A151113(n))`
-/

namespace A150802.P12186480795701962650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248227 (A151113 n).toNat

end

end A150802.P12186480795701962650

/-!
# A150803: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 0), (1, -1, 0), (1, 0, 1), (1, 1, -1), (1, 1, 0)}.

The programs for A150803, there is no canonical definition to state claims against.
-/

/-! ## A150803.P2963634960364648036

`A150801(n)+A025427(A150834(n))`
-/

namespace A150803.P2963634960364648036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150801 n + A025427 (A150834 n).toNat

end

end A150803.P2963634960364648036

/-! ## A150803.P12123239603922505737

`A255072(A243585(n)+n)`
-/

namespace A150803.P12123239603922505737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255072 (A243585 n + (n : ℤ)).toNat

end

end A150803.P12123239603922505737

/-!
# A150804: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 0), (0, -1, 1), (0, 1, 1), (1, 0, -1), (1, 0, 1)}.

The programs for A150804, there is no canonical definition to state claims against.
-/

/-! ## A150804.P14275761362432673117

`A004525(A256182(n)+A073663(n))`
-/

namespace A150804.P14275761362432673117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A256182 n + A073663 n).toNat

end

end A150804.P14275761362432673117

/-! ## A150804.P13094428615228681550

`A150806(n)-A056977(A150799(n))`
-/

namespace A150804.P13094428615228681550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150806 n - A056977 (A150799 n).toNat

end

end A150804.P13094428615228681550

/-! ## A150804.P16745336466459884975

`A150806(n)-A056977(A150818(n))`
-/

namespace A150804.P16745336466459884975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150806 n - A056977 (A150818 n).toNat

end

end A150804.P16745336466459884975

/-!
# A150805: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 1), (0, 0, 1), (1, 0, -1), (1, 1, 1)}.

The programs for A150805, there is no canonical definition to state claims against.
-/

/-! ## A150805.P6425564766799348904

`A214701(A150830(n))`
-/

namespace A150805.P6425564766799348904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214701 (A150830 n).toNat

end

end A150805.P6425564766799348904

/-!
# A150806: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, 1), (0, 0, 1), (1, 0, -1), (1, 1, 1)}.

The programs for A150806, there is no canonical definition to state claims against.
-/

/-! ## A150806.P17212766272389228033

`A150804(n)+A056977(A150799(n))`
-/

namespace A150806.P17212766272389228033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150804 n + A056977 (A150799 n).toNat

end

end A150806.P17212766272389228033

/-! ## A150806.P17183848208329291337

`A150804(n)+A056977(A150818(n))`
-/

namespace A150806.P17183848208329291337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150804 n + A056977 (A150818 n).toNat

end

end A150806.P17183848208329291337

/-! ## A150806.P7280100711234181590

`A150804(n)+A056977(A150824(n))`
-/

namespace A150806.P7280100711234181590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150804 n + A056977 (A150824 n).toNat

end

end A150806.P7280100711234181590

/-!
# A150807: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 1), (0, 1, -1), (1, 0, 1), (1, 1, 0)}.

The programs for A150807, there is no canonical definition to state claims against.
-/

/-! ## A150807.P10332230157610056965

`A004526(A150818(n)+A150798(n))`
-/

namespace A150807.P10332230157610056965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A150818 n + A150798 n).toNat

end

end A150807.P10332230157610056965

/-! ## A150807.P13597331491957768807

`A123108(A150818(n)+A150798(n))`
-/

namespace A150807.P13597331491957768807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A150818 n + A150798 n).toNat

end

end A150807.P13597331491957768807

/-!
# A150808: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 1), (0, 0, -1), (1, 0, 0), (1, 1, 1)}.

The programs for A150808, there is no canonical definition to state claims against.
-/

/-! ## A150808.P610529037986338344

`A110654(A150811(n)+A150803(n))`
-/

namespace A150808.P610529037986338344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A150811 n + A150803 n).toNat

end

end A150808.P610529037986338344

/-! ## A150808.P15933476568063245999

`A150809(A001096(n))`
-/

namespace A150808.P15933476568063245999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150809 (A001096 n).toNat

end

end A150808.P15933476568063245999

/-!
# A150809: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, 1), (0, 0, -1), (1, 0, 0), (1, 1, 1)}.

The programs for A150809, there is no canonical definition to state claims against.
-/

/-! ## A150809.P5959290664744975454

`A150813(n)-A025427(A150834(n))`
-/

namespace A150809.P5959290664744975454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150813 n - A025427 (A150834 n).toNat

end

end A150809.P5959290664744975454

/-! ## A150809.P8353627551819233665

`or(A150808(n), A263280(A150818(n)))`
-/

namespace A150809.P8353627551819233665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A150808 n) (A263280 (A150818 n).toNat)

end

end A150809.P8353627551819233665

/-! ## A150809.P3258331424379030578

`A028310(or(A138226(n+1), A150808(n)))`
-/

namespace A150809.P3258331424379030578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (Int.lor (A138226 (n + 1)) (A150808 n)).toNat

end

end A150809.P3258331424379030578

/-!
# A150810: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 0), (0, -1, 1), (0, 1, -1), (0, 1, 1), (1, 0, 1)}.

The programs for A150810, there is no canonical definition to state claims against.
-/

/-! ## A150810.P14142196148809912151

`A004526(A150813(n)+A150809(n))`
-/

namespace A150810.P14142196148809912151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A150813 n + A150809 n).toNat

end

end A150810.P14142196148809912151

/-! ## A150810.P4488368120926856306

`A110654(A150815(n)+A150801(n))`
-/

namespace A150810.P4488368120926856306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A150815 n + A150801 n).toNat

end

end A150810.P4488368120926856306

/-! ## A150810.P15212796726828237404

`A123108(A150813(n)+A150809(n))`
-/

namespace A150810.P15212796726828237404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A150813 n + A150809 n).toNat

end

end A150810.P15212796726828237404

/-!
# A150811: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, 1), (0, 1, -1), (1, 0, 0), (1, 1, 1)}.

The programs for A150811, there is no canonical definition to state claims against.
-/

/-! ## A150811.P14927688692987736455

`A150833(n)-A139352(A001063(n))`
-/

namespace A150811.P14927688692987736455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150833 n - A139352 (A001063 n).toNat

end

end A150811.P14927688692987736455

/-! ## A150811.P17746065561707824541

`A005843(A150776(n))-A150747(n)`
-/

namespace A150811.P17746065561707824541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A150776 n).toNat - A150747 n

end

end A150811.P17746065561707824541

/-!
# A150812: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 1), (0, 1, -1), (1, 0, 0), (1, 1, 1)}.

The programs for A150812, there is no canonical definition to state claims against.
-/

/-! ## A150812.P13775933754167773947

`A150839(n)-A085857(A150842(n))`
-/

namespace A150812.P13775933754167773947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150839 n - A085857 (A150842 n).toNat

end

end A150812.P13775933754167773947

/-! ## A150812.P11170068365213170015

`A248227(A151119(n))`
-/

namespace A150812.P11170068365213170015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248227 (A151119 n).toNat

end

end A150812.P11170068365213170015

/-!
# A150813: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 1), (0, 0, 1), (1, 0, -1), (1, 1, 1)}.

The programs for A150813, there is no canonical definition to state claims against.
-/

/-! ## A150813.P10706776510170606055

`A150809(n)+A025427(A150834(n))`
-/

namespace A150813.P10706776510170606055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150809 n + A025427 (A150834 n).toNat

end

end A150813.P10706776510170606055

/-! ## A150813.P3942307001805734115

`A294107(A075900(2*n+1)+2)`
-/

namespace A150813.P3942307001805734115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294107 (A075900 (2 * n + 1) + 2).toNat

end

end A150813.P3942307001805734115

/-!
# A150814: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 1, 1), (0, 0, 1), (1, 0, -1), (1, 1, 1)}.

The programs for A150814, there is no canonical definition to state claims against.
-/

/-! ## A150814.P6175047120169405499

`A004254(n)+A003986(A002110(n))`
-/

namespace A150814.P6175047120169405499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004254 n + A003986 (A002110 n).toNat

end

end A150814.P6175047120169405499

/-! ## A150814.P17992889364638926622

`A217154(A062319(n))+A150807(n)`
-/

namespace A150814.P17992889364638926622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217154 (A062319 n).toNat + A150807 n

end

end A150814.P17992889364638926622

/-!
# A150815: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 1, 1), (0, 1, -1), (1, 0, 1), (1, 1, 0)}.

The programs for A150815, there is no canonical definition to state claims against.
-/

/-! ## A150815.P14827481066112682004

`A194640(A151170(n))`
-/

namespace A150815.P14827481066112682004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194640 (A151170 n).toNat

end

end A150815.P14827481066112682004

/-! ## A150815.P11795099620982623038

`A256502(A007854(n)+1)`
-/

namespace A150815.P11795099620982623038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256502 (A007854 n + 1).toNat

end

end A150815.P11795099620982623038

/-!
# A150816: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 1), (0, -1, 1), (0, 1, -1), (0, 1, 1), (1, 0, 1)}.

The programs for A150816, there is no canonical definition to state claims against.
-/

/-! ## A150816.P14474965264748094802

`∑[A247914(A323788(n))]`
-/

namespace A150816.P14474965264748094802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247914 (A323788 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A150816.P14474965264748094802

/-! ## A150816.P5054652503710937652

`A110656(3*A017961(n))`
-/

namespace A150816.P5054652503710937652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110656 (3 * A017961 n).toNat

end

end A150816.P5054652503710937652

/-!
# A150817: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 1, 1), (0, 0, -1), (1, 0, 0), (1, 1, 1)}.

The programs for A150817, there is no canonical definition to state claims against.
-/

/-! ## A150817.P9086990588103945793

`A037915(A039740(n+1)-∏{e}[n+1, #+1])`
-/

namespace A150817.P9086990588103945793
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037915 (A039740 (n + 1) - ((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℤ)).toNat

end

end A150817.P9086990588103945793

/-! ## A150817.P9813517044187963450

`A150793(n)+A003415(A100743(n))`
-/

namespace A150817.P9813517044187963450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150793 n + A003415 (A100743 n).toNat

end

end A150817.P9813517044187963450

/-!
# A150818: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 1, 1), (0, 1, -1), (1, 0, 0), (1, 1, 1)}.

The programs for A150818, there is no canonical definition to state claims against.
-/

/-! ## A150818.P11551784361564710205

`floor(sqrt(A072378(6^n)))`
-/

namespace A150818.P11551784361564710205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A072378 (6 ^ n))

end

end A150818.P11551784361564710205

/-!
# A150819: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 1), (1, 0, -1), (1, 0, 0), (1, 1, 1)}.

The programs for A150819, there is no canonical definition to state claims against.
-/

/-! ## A150819.P1439878164858089453

`A081832(A300581(n))`
-/

namespace A150819.P1439878164858089453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081832 (A300581 n).toNat

end

end A150819.P1439878164858089453

/-! ## A150819.P10709531774222778588

`A150792(A001096(n))+A052525(n)`
-/

namespace A150819.P10709531774222778588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150792 (A001096 n).toNat + A052525 n

end

end A150819.P10709531774222778588

/-!
# A150820: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 1), (1, 0, -1), (1, 0, 0), (1, 1, 1)}.

The programs for A150820, there is no canonical definition to state claims against.
-/

/-! ## A150820.P2354348597839809900

`A175105(A038163(n))+n²`
-/

namespace A150820.P2354348597839809900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175105 (A038163 n).toNat + (n ^ 2 : ℤ)

end

end A150820.P2354348597839809900

/-! ## A150820.P5557851970525561094

`A110656(A150725(n+2)/2)`
-/

namespace A150820.P5557851970525561094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110656 (SequenceMachineLib.roundAway ((A150725 (n + 2) : ℚ) / 2)).toNat

end

end A150820.P5557851970525561094

/-!
# A150821: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, 1), (1, 0, -1), (1, 0, 0), (1, 1, 1)}.

The programs for A150821, there is no canonical definition to state claims against.
-/

/-! ## A150821.P9274791821025197513

`A150820(n)+A131531(A002294(n))`
-/

namespace A150821.P9274791821025197513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150820 n + A131531 (A002294 n).toNat

end

end A150821.P9274791821025197513

/-! ## A150821.P17128665252000106698

`A150820(n)+A107652(A035481(n))`
-/

namespace A150821.P17128665252000106698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150820 n + A107652 (A035481 n).toNat

end

end A150821.P17128665252000106698

/-!
# A150822: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 1), (1, 0, 0), (1, 1, -1), (1, 1, 1)}.

The programs for A150822, there is no canonical definition to state claims against.
-/

/-! ## A150822.P9080099481863738176

`A150917(n)-A329981(A150878(n))`
-/

namespace A150822.P9080099481863738176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150917 n - A329981 (A150878 n).toNat

end

end A150822.P9080099481863738176

/-! ## A150822.P7208246237211510676

`xor(A150821(n), A297237(A111342(n)))`
-/

namespace A150822.P7208246237211510676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A150821 n) (A297237 (A111342 n).toNat)

end

end A150822.P7208246237211510676

/-!
# A150823: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 1), (1, 0, 1), (1, 1, -1), (1, 1, 0)}.

The programs for A150823, there is no canonical definition to state claims against.
-/

/-! ## A150823.P4078902601257721054

`A150915(n)-A001222(A330474(n))`
-/

namespace A150823.P4078902601257721054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150915 n - A001222 (A330474 n).toNat

end

end A150823.P4078902601257721054

/-!
# A150824: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, 1), (1, 0, 0), (1, 1, -1), (1, 1, 1)}.

The programs for A150824, there is no canonical definition to state claims against.
-/

/-! ## A150824.P9614135316747175225

`A248562(A367100(n))`
-/

namespace A150824.P9614135316747175225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248562 (A367100 n).toNat

end

end A150824.P9614135316747175225

/-! ## A150824.P5721318939291000330

`A056812(A122995(n+1)+1)`
-/

namespace A150824.P5721318939291000330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056812 (A122995 (n + 1) + 1).toNat

end

end A150824.P5721318939291000330

/-!
# A150825: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 1, 1), (1, 0, -1), (1, 0, 0), (1, 1, 1)}.

The programs for A150825, there is no canonical definition to state claims against.
-/

/-! ## A150825.P18247326086491146506

`A350348(A150824(n))`
-/

namespace A150825.P18247326086491146506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350348 (A150824 n).toNat

end

end A150825.P18247326086491146506

/-! ## A150825.P18433937860576435793

`A195177(5*A150965(n))-A156859(A167159(n+2))`
-/

namespace A150825.P18433937860576435793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195177 (5 * A150965 n).toNat - A156859 (A167159 (n + 2)).toNat

end

end A150825.P18433937860576435793

/-!
# A150826: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 1, 1), (1, 0, 1), (1, 1, -1), (1, 1, 0)}.

The programs for A150826, there is no canonical definition to state claims against.
-/

/-! ## A150826.P16083784884054766609

`A195177(5*A150965(n))`
-/

namespace A150826.P16083784884054766609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195177 (5 * A150965 n).toNat

end

end A150826.P16083784884054766609

/-! ## A150826.P9180068587240167280

`A113981(A310255(a(n-1)))` with `a(0)=1, a(1)=2`
-/

namespace A150826.P9180068587240167280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A113981 (A310255 (a (n - 1)).toNat).toNat

end

end A150826.P9180068587240167280

/-!
# A150827: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 1), (1, 0, 0), (1, 1, -1), (1, 1, 1)}.

The programs for A150827, there is no canonical definition to state claims against.
-/

/-! ## A150827.P8134788923617957809

`A228246(or(n!*∑[1/n!], A345697(n)))`
-/

namespace A150827.P8134788923617957809
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (Nat.factorial n : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228246 (Int.lor (SequenceMachineLib.roundAway ((Nat.factorial n : ℚ) * (∑ j ∈ Finset.range (n + 1), f1 j))) (A345697 n)).toNat

end

end A150827.P8134788923617957809

/-!
# A150828: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 1, 1), (1, 0, 0), (1, 1, -1), (1, 1, 1)}.

The programs for A150828, there is no canonical definition to state claims against.
-/

/-! ## A150828.P9532842354578629980

`A117532(A214954(n)+A014377(n))`
-/

namespace A150828.P9532842354578629980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117532 (A214954 n + A014377 n).toNat

end

end A150828.P9532842354578629980

/-! ## A150828.P12233045964760685466

`A248148(A113025(n)+A006419(n))`
-/

namespace A150828.P12233045964760685466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248148 (A113025 n + A006419 n).toNat

end

end A150828.P12233045964760685466

/-!
# A150829: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, -1, 1), (0, 1, -1), (1, 0, 1), (1, 1, 1)}.

The programs for A150829, there is no canonical definition to state claims against.
-/

/-! ## A150829.P1656046181982001748

`A278496(∏[∑[A278539(n+1)]])`
-/

namespace A150829.P1656046181982001748
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278539 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278496 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A150829.P1656046181982001748

/-! ## A150829.P18428108112581536382

`A143927(n)+A000523(A143635(n))`
-/

namespace A150829.P18428108112581536382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143927 n + A000523 (A143635 n).toNat

end

end A150829.P18428108112581536382

/-!
# A150830: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 0), (0, 1, 1), (1, 0, -1), (1, 1, 1)}.

The programs for A150830, there is no canonical definition to state claims against.
-/

/-! ## A150830.P6404996332400260536

`∏{e}[7^n, A150831(#)]`
-/

namespace A150830.P6404996332400260536
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A150831 (Nat.factorization (f1 n) p)

end

end A150830.P6404996332400260536

/-! ## A150830.P14616075257688494867

`A004182(A150831(n))`
-/

namespace A150830.P14616075257688494867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004182 (A150831 n).toNat

end

end A150830.P14616075257688494867

/-! ## A150830.P10581708848127681900

`A150831(A073789(n))`
-/

namespace A150830.P10581708848127681900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150831 (A073789 n).toNat

end

end A150830.P10581708848127681900

/-! ## A150830.P18003043150972667032

`A150831(A171644(n))`
-/

namespace A150830.P18003043150972667032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150831 (A171644 n).toNat

end

end A150830.P18003043150972667032

/-!
# A150832: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 0), (0, -1, 0), (0, 0, -1), (0, 0, 1), (1, 1, 1)}.

The programs for A150832, there is no canonical definition to state claims against.
-/

/-! ## A150832.P8523467264665659789

`A339060(A099099(n))+A006139(n)`
-/

namespace A150832.P8523467264665659789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339060 (A099099 n).toNat + A006139 n

end

end A150832.P8523467264665659789

/-! ## A150832.P12728992905838832222

`A325645(A006139(n)-A035038(n))`
-/

namespace A150832.P12728992905838832222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325645 (A006139 n - A035038 n).toNat

end

end A150832.P12728992905838832222

/-! ## A150832.P2929052284177569358

`A081148(A207752(n+1))+A006139(n)`
-/

namespace A150832.P2929052284177569358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081148 (A207752 (n + 1)).toNat + A006139 n

end

end A150832.P2929052284177569358

/-!
# A150833: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 0), (0, 0, 1), (1, 1, -1), (1, 1, 1)}.

The programs for A150833, there is no canonical definition to state claims against.
-/

/-! ## A150833.P11611889475382393420

`A150811(n)+A139352(A001063(n))`
-/

namespace A150833.P11611889475382393420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150811 n + A139352 (A001063 n).toNat

end

end A150833.P11611889475382393420

/-! ## A150833.P6146382325639897503

`A150806(n)+A085857(A150841(n))`
-/

namespace A150833.P6146382325639897503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150806 n + A085857 (A150841 n).toNat

end

end A150833.P6146382325639897503

/-!
# A150834: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (0, 1, -1), (1, 0, -1), (1, 1, 0), (1, 1, 1)}.

The programs for A150834, there is no canonical definition to state claims against.
-/

/-! ## A150834.P15316004779224834829

`A099036(n)+A002264(A093568(n+1))`
-/

namespace A150834.P15316004779224834829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099036 n + A002264 (A093568 (n + 1)).toNat

end

end A150834.P15316004779224834829

/-! ## A150834.P15340877752303035202

`A248231(A151115(n))`
-/

namespace A150834.P15340877752303035202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248231 (A151115 n).toNat

end

end A150834.P15340877752303035202

/-!
# A150835: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 0), (0, 1, 1), (1, -1, 0), (1, 0, -1), (1, 0, 1)}.

The programs for A150835, there is no canonical definition to state claims against.
-/

/-! ## A150835.P16467725818609720878

`A364533(A008021(n))`
-/

namespace A150835.P16467725818609720878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364533 (A008021 n).toNat

end

end A150835.P16467725818609720878

/-! ## A150835.P13081492061905395491

`A248231(A151116(n))`
-/

namespace A150835.P13081492061905395491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248231 (A151116 n).toNat

end

end A150835.P13081492061905395491

/-!
# A150836: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 0), (0, 1, 1), (1, 0, -1), (1, 1, 1)}.

The programs for A150836, there is no canonical definition to state claims against.
-/

/-! ## A150836.P13518943987027200226

`A047304(A150651(n))`
-/

namespace A150836.P13518943987027200226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047304 (A150651 n).toNat

end

end A150836.P13518943987027200226

/-! ## A150836.P11017820128857747592

`A004525(A150837(n)+A150835(n))`
-/

namespace A150836.P11017820128857747592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A150837 n + A150835 n).toNat

end

end A150836.P11017820128857747592

/-! ## A150836.P12474309189898764874

`A065033(A150837(n)+A150835(n))`
-/

namespace A150836.P12474309189898764874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A150837 n + A150835 n).toNat

end

end A150836.P12474309189898764874

/-!
# A150837: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 1, 0), (0, 1, 1), (1, 0, -1), (1, 1, 1)}.

The programs for A150837, there is no canonical definition to state claims against.
-/

/-! ## A150837.P4250617198930439854

`A101947(A150811(n))`
-/

namespace A150837.P4250617198930439854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101947 (A150811 n).toNat

end

end A150837.P4250617198930439854

/-! ## A150837.P8090401212557320227

`A150653(n)+A059995(A238111(n))`
-/

namespace A150837.P8090401212557320227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150653 n + A059995 (A238111 n).toNat

end

end A150837.P8090401212557320227

/-! ## A150837.P14750758679387640767

`A188320(A150631(n))-A004526(n)`
-/

namespace A150837.P14750758679387640767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188320 (A150631 n).toNat - A004526 n

end

end A150837.P14750758679387640767

/-!
# A150838: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 1), (0, 1, 1), (1, 0, -1), (1, 1, 1)}.

The programs for A150838, there is no canonical definition to state claims against.
-/

/-! ## A150838.P1597658066878477343

`A150839(n)-A055087(A159711(n))`
-/

namespace A150838.P1597658066878477343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150839 n - A055087 (A159711 n).toNat

end

end A150838.P1597658066878477343

/-! ## A150838.P4680917105802580826

`and(A004773(A150860(n)), A150845(n))`
-/

namespace A150838.P4680917105802580826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A004773 (A150860 n).toNat) (A150845 n)

end

end A150838.P4680917105802580826

/-!
# A150839: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, 1), (0, 1, 1), (1, 0, -1), (1, 1, 1)}.

The programs for A150839, there is no canonical definition to state claims against.
-/

/-! ## A150839.P13912159283521070093

`A150838(n)+A055087(A159711(n))`
-/

namespace A150839.P13912159283521070093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150838 n + A055087 (A159711 n).toNat

end

end A150839.P13912159283521070093

/-! ## A150839.P11896410173380310776

`A150812(n)+A085857(A150842(n))`
-/

namespace A150839.P11896410173380310776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150812 n + A085857 (A150842 n).toNat

end

end A150839.P11896410173380310776

/-! ## A150839.P12086380134196227961

`A150841(n)-A025442(A150868(n))`
-/

namespace A150839.P12086380134196227961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150841 n - A025442 (A150868 n).toNat

end

end A150839.P12086380134196227961

/-!
# A150840: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 0), (0, -1, 0), (0, 1, -1), (0, 1, 0), (1, 1, 1)}.

The programs for A150840, there is no canonical definition to state claims against.
-/

/-! ## A150840.P5471270645211396688

`A382187(n)+A057501(A184955(2*n+3))`
-/

namespace A150840.P5471270645211396688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382187 n + A057501 (A184955 (2 * n + 3)).toNat

end

end A150840.P5471270645211396688

/-!
# A150841: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 0), (0, -1, 0), (0, 1, -1), (1, 0, 0), (1, 1, 1)}.

The programs for A150841, there is no canonical definition to state claims against.
-/

/-! ## A150841.P3202491180949510007

`A286389(A151107(n))`
-/

namespace A150841.P3202491180949510007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286389 (A151107 n).toNat

end

end A150841.P3202491180949510007

/-! ## A150841.P6665239059648382561

`A150839(n)+A025442(A150868(n))`
-/

namespace A150841.P6665239059648382561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150839 n + A025442 (A150868 n).toNat

end

end A150841.P6665239059648382561

/-! ## A150841.P6904159930502933432

`A287113(A150842(n))-A150639(n)`
-/

namespace A150841.P6904159930502933432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287113 (A150842 n).toNat - A150639 n

end

end A150841.P6904159930502933432

/-!
# A150842: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 0), (0, 1, 1), (1, -1, 0), (1, 1, -1), (1, 1, 0)}.

The programs for A150842, there is no canonical definition to state claims against.
-/

/-! ## A150842.P7632563176953950616

`A274483(n+1)-A370813(∑[7*gcd(7, n)-6]-1)`
-/

namespace A150842.P7632563176953950616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (7 * Nat.gcd 7 n : ℤ) - 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274483 (n + 1) - A370813 (∑ j ∈ Finset.range (n + 1), f1 j - 1).toNat

end

end A150842.P7632563176953950616

/-! ## A150842.P16898782410334721658

`A065033(A151002(n)+A045868(n))`
-/

namespace A150842.P16898782410334721658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A151002 n + A045868 n).toNat

end

end A150842.P16898782410334721658

/-! ## A150842.P8331167534338257284

`or(A048735(A150838(n)), A150841(n))`
-/

namespace A150842.P8331167534338257284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A048735 (A150838 n).toNat) (A150841 n)

end

end A150842.P8331167534338257284

/-!
# A150843: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 0), (0, -1, 1), (0, 1, -1), (1, 0, 1), (1, 1, 0)}.

The programs for A150843, there is no canonical definition to state claims against.
-/

/-! ## A150843.P233357196789905701

`A004277(A150871(n))-A150891(n)`
-/

namespace A150843.P233357196789905701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A150871 n).toNat - A150891 n

end

end A150843.P233357196789905701

/-! ## A150843.P9829578771780580631

`A150844(n)-A328712(A150839(n))`
-/

namespace A150843.P9829578771780580631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150844 n - A328712 (A150839 n).toNat

end

end A150843.P9829578771780580631

/-! ## A150843.P18394856841520308037

`A150844(n)-A328712(A150840(n))`
-/

namespace A150843.P18394856841520308037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150844 n - A328712 (A150840 n).toNat

end

end A150843.P18394856841520308037

/-!
# A150844: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 0), (0, -1, 1), (0, 1, 1), (1, 0, -1), (1, 1, 0)}.

The programs for A150844, there is no canonical definition to state claims against.
-/

/-! ## A150844.P8135975774861465717

`A049474(A026375(n)-∑{p}[n+1, gcd(n, #)])`
-/

namespace A150844.P8135975774861465717
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049474 (A026375 n - ((∑ p ∈ Nat.primeFactors (f1 n), Nat.gcd n p : ℕ) : ℤ)).toNat

end

end A150844.P8135975774861465717

/-! ## A150844.P2112788319317892727

`A328712(A150839(n))+A150843(n)`
-/

namespace A150844.P2112788319317892727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328712 (A150839 n).toNat + A150843 n

end

end A150844.P2112788319317892727

/-! ## A150844.P12245730124253171804

`A328712(A150840(n))+A150843(n)`
-/

namespace A150844.P12245730124253171804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328712 (A150840 n).toNat + A150843 n

end

end A150844.P12245730124253171804

/-!
# A150845: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 1), (0, -1, 1), (0, 1, -1), (0, 1, 1), (1, 1, 0)}.

The programs for A150845, there is no canonical definition to state claims against.
-/

/-! ## A150845.P18188745595874115845

`A004525(A150855(n)+A150841(n))`
-/

namespace A150845.P18188745595874115845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A150855 n + A150841 n).toNat

end

end A150845.P18188745595874115845

/-! ## A150845.P15741045008968865814

`or(A002262(A093982(n+1)), A151828(n+2))`
-/

namespace A150845.P15741045008968865814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A002262 (A093982 (n + 1)).toNat) (A151828 (n + 2))

end

end A150845.P15741045008968865814

/-!
# A150846: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 0), (1, -1, 0), (1, 0, -1), (1, 0, 0), (1, 1, 1)}.

The programs for A150846, there is no canonical definition to state claims against.
-/

/-! ## A150846.P11454202811755945554

`A194640(A166482(n))`
-/

namespace A150846.P11454202811755945554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194640 (A166482 n).toNat

end

end A150846.P11454202811755945554

/-! ## A150846.P4646381476361521340

`A008615(Δ[A049086(n)])`
-/

namespace A150846.P4646381476361521340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049086 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (f1 (n + 1) - f1 n).toNat

end

end A150846.P4646381476361521340

/-!
# A150847: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 1), (0, 1, 1), (1, 0, -1), (1, 1, 1)}.

The programs for A150847, there is no canonical definition to state claims against.
-/

/-! ## A150847.P6965243204671412432

`A150848(n)-A048735(A150832(n))`
-/

namespace A150847.P6965243204671412432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150848 n - A048735 (A150832 n).toNat

end

end A150847.P6965243204671412432

/-!
# A150848: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 1, 1), (0, 1, 1), (1, 0, -1), (1, 1, 1)}.

The programs for A150848, there is no canonical definition to state claims against.
-/

/-! ## A150848.P10127054924284217571

`A150847(n)+A048735(A150832(n))`
-/

namespace A150848.P10127054924284217571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150847 n + A048735 (A150832 n).toNat

end

end A150848.P10127054924284217571

/-!
# A150849: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 0), (0, -1, 0), (0, 1, 0), (1, 1, -1), (1, 1, 1)}.

The programs for A150849, there is no canonical definition to state claims against.
-/

/-! ## A150849.P13896027288661420850

`A004184(A150850(n))`
-/

namespace A150849.P13896027288661420850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004184 (A150850 n).toNat

end

end A150849.P13896027288661420850

/-! ## A150849.P2722700268073276583

`A150850(A073788(n))`
-/

namespace A150849.P2722700268073276583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150850 (A073788 n).toNat

end

end A150849.P2722700268073276583

/-! ## A150849.P7043467258474992062

`A150850(A171596(n))`
-/

namespace A150849.P7043467258474992062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150850 (A171596 n).toNat

end

end A150849.P7043467258474992062

/-!
# A150851: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 0), (0, -1, 0), (0, 1, 1), (1, 0, 1), (1, 1, -1)}.

The programs for A150851, there is no canonical definition to state claims against.
-/

/-! ## A150851.P728639298784713977

`A262868(3*A150951(n))`
-/

namespace A150851.P728639298784713977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262868 (3 * A150951 n).toNat

end

end A150851.P728639298784713977

/-! ## A150851.P13653537411778300078

`A004526(A150856(n)+A150848(n))`
-/

namespace A150851.P13653537411778300078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A150856 n + A150848 n).toNat

end

end A150851.P13653537411778300078

/-! ## A150851.P16856427811238807698

`A005843(A150815(n))-A150776(n)`
-/

namespace A150851.P16856427811238807698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A150815 n).toNat - A150776 n

end

end A150851.P16856427811238807698

/-!
# A150852: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 0), (0, -1, 1), (1, 0, 1), (1, 1, -1), (1, 1, 0)}.

The programs for A150852, there is no canonical definition to state claims against.
-/

/-! ## A150852.P11834992763002468336

`A150851(n)+A056977(A150799(n))`
-/

namespace A150852.P11834992763002468336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150851 n + A056977 (A150799 n).toNat

end

end A150852.P11834992763002468336

/-! ## A150852.P15485273362574482509

`A150851(n)+A056977(A150818(n))`
-/

namespace A150852.P15485273362574482509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150851 n + A056977 (A150818 n).toNat

end

end A150852.P15485273362574482509

/-! ## A150852.P6676991800632636017

`A150851(n)+A056977(A150824(n))`
-/

namespace A150852.P6676991800632636017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150851 n + A056977 (A150824 n).toNat

end

end A150852.P6676991800632636017

/-!
# A150853: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 1), (0, 1, -1), (0, 1, 1), (1, -1, 0), (1, 0, 1)}.

The programs for A150853, there is no canonical definition to state claims against.
-/

/-! ## A150853.P14942628814220478052

`A150852(n)+A097673(A052521(n))`
-/

namespace A150853.P14942628814220478052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150852 n + A097673 (A052521 n).toNat

end

end A150853.P14942628814220478052

/-! ## A150853.P16465319934157006638

`A150852(n)+A097673(A052720(n))`
-/

namespace A150853.P16465319934157006638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150852 n + A097673 (A052720 n).toNat

end

end A150853.P16465319934157006638

/-! ## A150853.P4744560338413589639

`A297240(A150837(n))+A150851(n)`
-/

namespace A150853.P4744560338413589639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297240 (A150837 n).toNat + A150851 n

end

end A150853.P4744560338413589639

/-!
# A150854: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 0), (0, -1, 1), (0, 1, -1), (1, 0, 0), (1, 1, 1)}.

The programs for A150854, there is no canonical definition to state claims against.
-/

/-! ## A150854.P6657649485922640833

`A161764(A150856(n))`
-/

namespace A150854.P6657649485922640833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161764 (A150856 n).toNat

end

end A150854.P6657649485922640833

/-! ## A150854.P1498198347217659733

`A244479(A150776(n+1))`
-/

namespace A150854.P1498198347217659733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244479 (A150776 (n + 1)).toNat

end

end A150854.P1498198347217659733

/-!
# A150855: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 1), (0, 1, 1), (1, -1, 1), (1, 0, -1), (1, 0, 1)}.

The programs for A150855, there is no canonical definition to state claims against.
-/

/-! ## A150855.P5351097119935122222

`A276798(A084059(n+1))`
-/

namespace A150855.P5351097119935122222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276798 (A084059 (n + 1)).toNat

end

end A150855.P5351097119935122222

/-!
# A150856: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 0), (0, -1, 1), (0, 1, 1), (1, 1, -1), (1, 1, 0)}.

The programs for A150856, there is no canonical definition to state claims against.
-/

/-! ## A150856.P12456213693074443050

`A161765(A150854(n))`
-/

namespace A150856.P12456213693074443050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161765 (A150854 n).toNat

end

end A150856.P12456213693074443050

/-! ## A150856.P17762335449076388260

`A142727(A150650(n))`
-/

namespace A150856.P17762335449076388260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142727 (A150650 n).toNat

end

end A150856.P17762335449076388260

/-!
# A150857: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 1), (0, 0, 1), (1, 1, -1), (1, 1, 1)}.

The programs for A150857, there is no canonical definition to state claims against.
-/

/-! ## A150857.P11710574262964609787

`A151169(n)-A004526(A150869(n))`
-/

namespace A150857.P11710574262964609787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151169 n - A004526 (A150869 n).toNat

end

end A150857.P11710574262964609787

/-! ## A150857.P12120796365393204533

`A100180(A125023(n))`
-/

namespace A150857.P12120796365393204533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100180 (A125023 n).toNat

end

end A150857.P12120796365393204533

/-!
# A150858: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 0), (1, -1, 0), (1, 0, 0), (1, 1, -1), (1, 1, 1)}.

The programs for A150858, there is no canonical definition to state claims against.
-/

/-! ## A150858.P5319327132221549822

`A150852(n)+A019269(A150837(n))`
-/

namespace A150858.P5319327132221549822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150852 n + A019269 (A150837 n).toNat

end

end A150858.P5319327132221549822

/-! ## A150858.P2649600102475810943

`A150852(n)+A019269(A150838(n))`
-/

namespace A150858.P2649600102475810943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150852 n + A019269 (A150838 n).toNat

end

end A150858.P2649600102475810943

/-! ## A150858.P5470083935776560998

`A150852(n)+A037820(A150856(n))`
-/

namespace A150858.P5470083935776560998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150852 n + A037820 (A150856 n).toNat

end

end A150858.P5470083935776560998

/-!
# A150859: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 0), (1, -1, 1), (1, 0, 1), (1, 1, -1), (1, 1, 0)}.

The programs for A150859, there is no canonical definition to state claims against.
-/

/-! ## A150859.P9292926773802851584

`A244219(A026770(n))+A002265(n)`
-/

namespace A150859.P9292926773802851584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244219 (A026770 n).toNat + A002265 n

end

end A150859.P9292926773802851584

/-! ## A150859.P16407437659369085261

`A065033(A150861(n)+A150851(n))`
-/

namespace A150859.P16407437659369085261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A150861 n + A150851 n).toNat

end

end A150859.P16407437659369085261

/-! ## A150859.P12214267094291254226

`A110654(A150861(n)+A150851(n))`
-/

namespace A150859.P12214267094291254226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A150861 n + A150851 n).toNat

end

end A150859.P12214267094291254226

/-!
# A150860: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 0), (0, -1, 1), (1, 0, 0), (1, 1, -1), (1, 1, 1)}.

The programs for A150860, there is no canonical definition to state claims against.
-/

/-! ## A150860.P3000246678081637522

`A195177(A193697(n+1))`
-/

namespace A150860.P3000246678081637522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195177 (A193697 (n + 1)).toNat

end

end A150860.P3000246678081637522

/-! ## A150860.P14503128272852776972

`A138999(A086608(n+2))`
-/

namespace A150860.P14503128272852776972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138999 (A086608 (n + 2)).toNat

end

end A150860.P14503128272852776972

/-!
# A150861: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 1), (0, 1, -1), (0, 1, 1), (1, -1, 1), (1, 0, 1)}.

The programs for A150861, there is no canonical definition to state claims against.
-/

/-! ## A150861.P12753389599889855347

`Δ[A008612(∑[A151125(n)])]`
-/

namespace A150861.P12753389599889855347
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151125 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008612 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A150861.P12753389599889855347

/-! ## A150861.P14652146074148002393

`A001077(n)-A353847(A056343(n+1))`
-/

namespace A150861.P14652146074148002393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001077 n - A353847 (A056343 (n + 1)).toNat

end

end A150861.P14652146074148002393

/-!
# A150862: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 0), (0, -1, 1), (0, 1, 1), (1, 0, 1), (1, 1, -1)}.

The programs for A150862, there is no canonical definition to state claims against.
-/

/-! ## A150862.P14087720404011514680

`A142727(A130655(n))`
-/

namespace A150862.P14087720404011514680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142727 (A130655 n).toNat

end

end A150862.P14087720404011514680

/-! ## A150862.P12715981076894474159

`A008616(Δ[Δ[A150742(n)]])`
-/

namespace A150862.P12715981076894474159
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150742 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008616 (f1 (n + 1) - f1 n).toNat

end

end A150862.P12715981076894474159

/-!
# A150863: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 0), (1, -1, 1), (1, 0, 0), (1, 1, -1), (1, 1, 1)}.

The programs for A150863, there is no canonical definition to state claims against.
-/

/-! ## A150863.P2377422098805833216

`A100180(A162434(n+1))`
-/

namespace A150863.P2377422098805833216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100180 (A162434 (n + 1)).toNat

end

end A150863.P2377422098805833216

/-! ## A150863.P9587545347469120932

`A117910(3*A091701(n))`
-/

namespace A150863.P9587545347469120932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117910 (3 * A091701 n).toNat

end

end A150863.P9587545347469120932

/-!
# A150864: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 1), (0, -1, 1), (0, 1, 1), (1, 0, 1), (1, 1, -1)}.

The programs for A150864, there is no canonical definition to state claims against.
-/

/-! ## A150864.P10738588160701000404

`A028310(A114198(n)+A003415(n))`
-/

namespace A150864.P10738588160701000404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A114198 n + A003415 n).toNat

end

end A150864.P10738588160701000404

/-! ## A150864.P18046897880949838434

`A249817(A114198(n)+A003415(n))`
-/

namespace A150864.P18046897880949838434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249817 (A114198 n + A003415 n).toNat

end

end A150864.P18046897880949838434

/-!
# A150865: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 0), (0, -1, 0), (0, 0, 1), (0, 1, -1), (1, 1, 1)}.

The programs for A150865, there is no canonical definition to state claims against.
-/

/-! ## A150865.P18312255792029925544

`A160547(A150842(n))`
-/

namespace A150865.P18312255792029925544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160547 (A150842 n).toNat

end

end A150865.P18312255792029925544

/-! ## A150865.P977025547196609985

`A028310(A253194(n+1)-A374569(n+1))`
-/

namespace A150865.P977025547196609985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A253194 (n + 1) - A374569 (n + 1)).toNat

end

end A150865.P977025547196609985

/-!
# A150866: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 0), (0, -1, 1), (0, 0, 1), (1, 0, -1), (1, 1, 1)}.

The programs for A150866, there is no canonical definition to state claims against.
-/

/-! ## A150866.P7119848039803505481

`A209061(A150843(n)+1)-1`
-/

namespace A150866.P7119848039803505481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209061 (A150843 n + 1).toNat - 1

end

end A150866.P7119848039803505481

/-! ## A150866.P18066476564452028048

`A095775(A150206(n))`
-/

namespace A150866.P18066476564452028048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095775 (A150206 n).toNat

end

end A150866.P18066476564452028048

/-!
# A150867: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 0), (0, 0, 1), (1, -1, 0), (1, 0, -1), (1, 1, 1)}.

The programs for A150867, there is no canonical definition to state claims against.
-/

/-! ## A150867.P9573067354045905407

`A059561(A278391(n))`
-/

namespace A150867.P9573067354045905407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059561 (A278391 n).toNat

end

end A150867.P9573067354045905407

/-! ## A150867.P7715449107252502596

`A181768(n)+A060144(A026378(n+1))`
-/

namespace A150867.P7715449107252502596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181768 n + A060144 (A026378 (n + 1)).toNat

end

end A150867.P7715449107252502596

/-!
# A150868: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 0), (0, -1, 1), (0, 0, 1), (0, 1, -1), (1, 1, 1)}.

The programs for A150868, there is no canonical definition to state claims against.
-/

/-! ## A150868.P6217451741750670141

`A333348(A150647(n+1))`
-/

namespace A150868.P6217451741750670141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333348 (A150647 (n + 1)).toNat

end

end A150868.P6217451741750670141

/-! ## A150868.P124743710571260205

`record[A008676(Δ[A109085(n)])]`
-/

namespace A150868.P124743710571260205
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109085 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008676 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A150868.P124743710571260205

/-!
# A150869: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 0), (0, -1, 1), (0, 1, 0), (1, 0, -1), (1, 1, 1)}.

The programs for A150869, there is no canonical definition to state claims against.
-/

/-! ## A150869.P2917074115648927556

`A317686(A378078(n+1))`
-/

namespace A150869.P2917074115648927556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317686 (A378078 (n + 1)).toNat

end

end A150869.P2917074115648927556

/-! ## A150869.P7296791432150480207

`A004526(A150875(n)+A150866(n))`
-/

namespace A150869.P7296791432150480207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A150875 n + A150866 n).toNat

end

end A150869.P7296791432150480207

/-!
# A150870: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 1), (0, -1, 1), (0, 1, -1), (1, 0, 1), (1, 1, 0)}.

The programs for A150870, there is no canonical definition to state claims against.
-/

/-! ## A150870.P14497733769866779551

`A150871(n)-A055641(A304940(n))`
-/

namespace A150870.P14497733769866779551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150871 n - A055641 (A304940 n).toNat

end

end A150870.P14497733769866779551

/-! ## A150870.P25554509605563800

`A150871(A004869(n+1))-A152467(n)`
-/

namespace A150870.P25554509605563800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150871 (A004869 (n + 1)).toNat - A152467 n

end

end A150870.P25554509605563800

/-! ## A150870.P8635895926433692336

`A150871(n)-A179527(A066734(n+1))`
-/

namespace A150870.P8635895926433692336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150871 n - A179527 (A066734 (n + 1)).toNat

end

end A150870.P8635895926433692336

/-!
# A150871: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 0), (0, 1, 1), (1, -1, 0), (1, 0, 1), (1, 1, -1)}.

The programs for A150871, there is no canonical definition to state claims against.
-/

/-! ## A150871.P4960815505095585593

`A150870(n)+A055641(A304940(n))`
-/

namespace A150871.P4960815505095585593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150870 n + A055641 (A304940 n).toNat

end

end A150871.P4960815505095585593

/-! ## A150871.P10874900861365735910

`A152467(n)+A150870(A004869(n+1))`
-/

namespace A150871.P10874900861365735910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152467 n + A150870 (A004869 (n + 1)).toNat

end

end A150871.P10874900861365735910

/-! ## A150871.P2517662679202980078

`A179527(A066734(n+1))+A150870(n)`
-/

namespace A150871.P2517662679202980078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179527 (A066734 (n + 1)).toNat + A150870 n

end

end A150871.P2517662679202980078

/-!
# A150872: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 0), (0, 0, 1), (1, -1, 1), (1, 0, -1), (1, 1, 1)}.

The programs for A150872, there is no canonical definition to state claims against.
-/

/-! ## A150872.P16070867029739907951

`A209061(A150853(n))`
-/

namespace A150872.P16070867029739907951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209061 (A150853 n).toNat

end

end A150872.P16070867029739907951

/-! ## A150872.P7648211440412985078

`A076885(A150655(n+1))`
-/

namespace A150872.P7648211440412985078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076885 (A150655 (n + 1)).toNat

end

end A150872.P7648211440412985078

/-!
# A150873: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 1), (0, -1, 1), (0, 0, 1), (0, 1, -1), (1, 1, 1)}.

The programs for A150873, there is no canonical definition to state claims against.
-/

/-! ## A150873.P415465263233091159

`A008621((n*(2^(n-1)+1)+1)*2^n)-A230683(round(sqrt(n²+1)))`
-/

namespace A150873.P415465263233091159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (SequenceMachineLib.roundAway (((n : ℚ) * ((2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) + 1) + 1) * (2 ^ n : ℚ))).toNat - A230683 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

end

end A150873.P415465263233091159

/-! ## A150873.P4970508517517486231

`A103221(A089932(n)+A030221(n))`
-/

namespace A150873.P4970508517517486231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 (A089932 n + A030221 n).toNat

end

end A150873.P4970508517517486231

/-!
# A150874: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 1), (0, -1, 1), (0, 1, -1), (0, 1, 0), (1, 1, 1)}.

The programs for A150874, there is no canonical definition to state claims against.
-/

/-! ## A150874.P9822939580387097839

`A333348(A150641(n+1))`
-/

namespace A150874.P9822939580387097839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333348 (A150641 (n + 1)).toNat

end

end A150874.P9822939580387097839

/-! ## A150874.P1756507742143001292

`A307321(A001096(n))+n`
-/

namespace A150874.P1756507742143001292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307321 (A001096 n).toNat + (n : ℤ)

end

end A150874.P1756507742143001292

/-!
# A150875: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 1), (0, 0, 1), (0, 1, -1), (1, -1, 0), (1, 1, 1)}.

The programs for A150875, there is no canonical definition to state claims against.
-/

/-! ## A150875.P4799042353922528991

`A215909(2^n)-∑{p}[2*n+1, floor(#/(n+1))]`
-/

namespace A150875.P4799042353922528991
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215909 (2 ^ n) - ∑ p ∈ Nat.primeFactors (f1 n), ⌊(p : ℚ) / (n + 1 : ℚ)⌋

end

end A150875.P4799042353922528991

/-! ## A150875.P16831632518408700762

`A312248(A150860(n))/4`
-/

namespace A150875.P16831632518408700762
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A312248 (A150860 n).toNat : ℚ) / 4

end

end A150875.P16831632518408700762

/-!
# A150876: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 1), (0, 1, -1), (1, -1, 1), (1, 0, 1), (1, 1, 0)}.

The programs for A150876, there is no canonical definition to state claims against.
-/

/-! ## A150876.P4949199105028818998

`A086707(A150657(n+1))`
-/

namespace A150876.P4949199105028818998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086707 (A150657 (n + 1)).toNat

end

end A150876.P4949199105028818998

/-! ## A150876.P17190830513094723689

`A127757(A081569(n)-n)`
-/

namespace A150876.P17190830513094723689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127757 (A081569 n - (n : ℤ)).toNat

end

end A150876.P17190830513094723689

/-!
# A150877: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 1), (0, -1, 1), (0, 1, -1), (1, 0, 0), (1, 1, 1)}.

The programs for A150877, there is no canonical definition to state claims against.
-/

/-! ## A150877.P9854941194673195902

`A138997(A150985(n+1))`
-/

namespace A150877.P9854941194673195902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138997 (A150985 (n + 1)).toNat

end

end A150877.P9854941194673195902

/-! ## A150877.P4717363128526647985

`A086901(n+1)+A005087(A001590(3*(n+1)))`
-/

namespace A150877.P4717363128526647985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086901 (n + 1) + A005087 (A001590 (3 * (n + 1))).toNat

end

end A150877.P4717363128526647985

/-!
# A150878: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 0), (0, -1, 1), (0, 1, 0), (1, 1, -1), (1, 1, 1)}.

The programs for A150878, there is no canonical definition to state claims against.
-/

/-! ## A150878.P5023413037830033612

`A100826(A150956(n))`
-/

namespace A150878.P5023413037830033612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100826 (A150956 n).toNat

end

end A150878.P5023413037830033612

/-! ## A150878.P8851312026031173038

`A060384(A150969(n+1))`
-/

namespace A150878.P8851312026031173038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060384 (A150969 (n + 1)).toNat

end

end A150878.P8851312026031173038

/-!
# A150879: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 1), (0, -1, 1), (0, 1, 1), (1, 1, -1), (1, 1, 0)}.

The programs for A150879, there is no canonical definition to state claims against.
-/

/-! ## A150879.P4993232589082307308

`ceil(sqrt(A354076(3*n+1)))`
-/

namespace A150879.P4993232589082307308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A354076 (3 * n + 1) : ℝ)⌉

end

end A150879.P4993232589082307308

/-! ## A150879.P16241498851832599763

`and(A150880(n), A209187(A150880(n)))`
-/

namespace A150879.P16241498851832599763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A150880 n) (A209187 (A150880 n).toNat)

end

end A150879.P16241498851832599763

/-! ## A150879.P5536737086916903986

`and(A150881(n), A209187(A150881(n)))`
-/

namespace A150879.P5536737086916903986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A150881 n) (A209187 (A150881 n).toNat)

end

end A150879.P5536737086916903986

/-!
# A150880: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 0), (0, 1, 1), (1, -1, 1), (1, 0, 1), (1, 1, -1)}.

The programs for A150880, there is no canonical definition to state claims against.
-/

/-! ## A150880.P5560198713199297108

`A150881(n)-A170852(A147459(n+1))`
-/

namespace A150880.P5560198713199297108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150881 n - A170852 (A147459 (n + 1)).toNat

end

end A150880.P5560198713199297108

/-! ## A150880.P11663556455112806700

`A150881(n)-A290399(A072880(n+1))`
-/

namespace A150880.P11663556455112806700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150881 n - A290399 (A072880 (n + 1)).toNat

end

end A150880.P11663556455112806700

/-! ## A150880.P216590327101291779

`A028310(A150881(n))`
-/

namespace A150880.P216590327101291779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A150881 n).toNat

end

end A150880.P216590327101291779

/-!
# A150881: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 1), (0, 1, -1), (0, 1, 1), (1, -1, 1), (1, 1, 0)}.

The programs for A150881, there is no canonical definition to state claims against.
-/

/-! ## A150881.P3901268526217764001

`or(A025436(n!), A150880(n))`
-/

namespace A150881.P3901268526217764001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A025436 (Nat.factorial n)) (A150880 n)

end

end A150881.P3901268526217764001

/-! ## A150881.P18389142794403997657

`or(A025436(A000142(n)), A150880(n))`
-/

namespace A150881.P18389142794403997657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A025436 (A000142 n).toNat) (A150880 n)

end

end A150881.P18389142794403997657

/-! ## A150881.P15160632293958683096

`or(A025436(A214078(n²)), A150880(n))`
-/

namespace A150881.P15160632293958683096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A025436 (A214078 (n ^ 2)).toNat) (A150880 n)

end

end A150881.P15160632293958683096

/-!
# A150882: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 1), (0, 0, 1), (1, -1, 1), (1, 0, -1), (1, 1, 1)}.

The programs for A150882, there is no canonical definition to state claims against.
-/

/-! ## A150882.P12661603638253353701

`A037918(A150640(n))`
-/

namespace A150882.P12661603638253353701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037918 (A150640 n).toNat

end

end A150882.P12661603638253353701

/-! ## A150882.P3020655379856337003

`A005493(n)-A001222(A217483(n))`
-/

namespace A150882.P3020655379856337003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005493 n - A001222 (A217483 n).toNat

end

end A150882.P3020655379856337003

/-!
# A150883: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 1), (0, 1, -1), (1, -1, 1), (1, 0, 0), (1, 1, 1)}.

The programs for A150883, there is no canonical definition to state claims against.
-/

/-! ## A150883.P8429959518801404231

`A008621((n*(2^(n-1)+1)+1)*2^n)`
-/

namespace A150883.P8429959518801404231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (SequenceMachineLib.roundAway (((n : ℚ) * ((2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) + 1) + 1) * (2 ^ n : ℚ))).toNat

end

end A150883.P8429959518801404231

/-! ## A150883.P11903748826174317490

`A037918(A175934(n))`
-/

namespace A150883.P11903748826174317490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037918 (A175934 n).toNat

end

end A150883.P11903748826174317490

/-!
# A150884: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 1), (0, 0, 1), (0, 1, -1), (1, -1, 1), (1, 1, 1)}.

The programs for A150884, there is no canonical definition to state claims against.
-/

/-! ## A150884.P18137997796203808926

`A038176(n+2)+A008624(A038159(n))`
-/

namespace A150884.P18137997796203808926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038176 (n + 2) + A008624 (A038159 n).toNat

end

end A150884.P18137997796203808926

/-! ## A150884.P9373570401193980967

`A187183(A152124(n+1))`
-/

namespace A150884.P9373570401193980967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187183 (A152124 (n + 1)).toNat

end

end A150884.P9373570401193980967

/-!
# A150885: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 1), (1, -1, 1), (1, 0, 1), (1, 1, -1), (1, 1, 0)}.

The programs for A150885, there is no canonical definition to state claims against.
-/

/-! ## A150885.P6584057495197458598

`A152271(A000045(3*n+1))+A091056(n)`
-/

namespace A150885.P6584057495197458598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152271 (A000045 (3 * n + 1)).toNat + A091056 n

end

end A150885.P6584057495197458598

/-! ## A150885.P16827515328215088878

`A008617(9*A151189(n))`
-/

namespace A150885.P16827515328215088878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008617 (9 * A151189 n).toNat

end

end A150885.P16827515328215088878

/-!
# A150886: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 1), (0, -1, 1), (0, 1, 0), (1, 1, -1), (1, 1, 1)}.

The programs for A150886, there is no canonical definition to state claims against.
-/

/-! ## A150886.P4745294792181694860

`A103221(2^n+4^n+5^n)`
-/

namespace A150886.P4745294792181694860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 (2 ^ n + (4 ^ n + 5 ^ n))

end

end A150886.P4745294792181694860

/-! ## A150886.P2718409929305098863

`A154958(A074532(n))`
-/

namespace A150886.P2718409929305098863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154958 (A074532 n).toNat

end

end A150886.P2718409929305098863

/-!
# A150887: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 1), (0, 1, 1), (1, -1, 1), (1, 0, 1), (1, 1, -1)}.

The programs for A150887, there is no canonical definition to state claims against.
-/

/-! ## A150887.P573391671060775466

`A285881(A152124(n+1))`
-/

namespace A150887.P573391671060775466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285881 (A152124 (n + 1)).toNat

end

end A150887.P573391671060775466

/-! ## A150887.P4399060686046263348

`A002265(A086347(n))+A000638(n)`
-/

namespace A150887.P4399060686046263348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A086347 n).toNat + A000638 n

end

end A150887.P4399060686046263348

/-!
# A150888: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1,0,1), (1,-1,1), (1,0,0), (1,1,-1), (1,1,1)}.

The programs for A150888, there is no canonical definition to state claims against.
-/

/-! ## A150888.P3134736516274940632

`A244479(A150843(n+1)-2)`
-/

namespace A150888.P3134736516274940632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244479 (A150843 (n + 1) - 2).toNat

end

end A150888.P3134736516274940632

/-! ## A150888.P8563638299535006894

`A103221(4*A054894(n+1))`
-/

namespace A150888.P8563638299535006894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 (4 * A054894 (n + 1)).toNat

end

end A150888.P8563638299535006894

/-!
# A150889: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 0), (0, -1, 0), (0, 0, 1), (1, 1, -1), (1, 1, 1)}.

The programs for A150889, there is no canonical definition to state claims against.
-/

/-! ## A150889.P4042377878221989742

`A092391(A150878(n))-1`
-/

namespace A150889.P4042377878221989742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092391 (A150878 n).toNat - 1

end

end A150889.P4042377878221989742

/-! ## A150889.P1518909575178479449

`A289120(A150654(n+1))`
-/

namespace A150889.P1518909575178479449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289120 (A150654 (n + 1)).toNat

end

end A150889.P1518909575178479449

/-!
# A150890: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 0), (0, 0, 1), (1, -1, 0), (1, 1, -1), (1, 1, 1)}.

The programs for A150890, there is no canonical definition to state claims against.
-/

/-! ## A150890.P17970124751897890984

`A087955(eq[n*gcd(2, n), ∑{digits}[n, #]])`
-/

namespace A150890.P17970124751897890984
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.gcd 2 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f3 n)).map fun (x : ℕ) => x).sum

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087955 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A150890.P17970124751897890984

/-! ## A150890.P11003233569579833784

`A087955(A319585(n+1))`
-/

namespace A150890.P11003233569579833784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087955 (A319585 (n + 1)).toNat

end

end A150890.P11003233569579833784

/-!
# A150891: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 1), (0, 1, 1), (1, -1, 1), (1, 0, -1), (1, 1, 0)}.

The programs for A150891, there is no canonical definition to state claims against.
-/

/-! ## A150891.P5546444445575331939

`A004277(A150871(n))-A150843(n)`
-/

namespace A150891.P5546444445575331939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A150871 n).toNat - A150843 n

end

end A150891.P5546444445575331939

/-! ## A150891.P10945547194182509302

`A011760(or(A150875(n), A150886(n)))`
-/

namespace A150891.P10945547194182509302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011760 (Int.lor (A150875 n) (A150886 n)).toNat

end

end A150891.P10945547194182509302

/-! ## A150891.P6631832334796762251

`A011760(or(A150884(n), A150887(n)))`
-/

namespace A150891.P6631832334796762251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011760 (Int.lor (A150884 n) (A150887 n)).toNat

end

end A150891.P6631832334796762251

/-!
# A150892: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 0), (0, -1, 1), (0, 0, 1), (1, 1, -1), (1, 1, 1)}.

The programs for A150892, there is no canonical definition to state claims against.
-/

/-! ## A150892.P12329251844163420486

`A004523(A151187(n)+char[n²])`
-/

namespace A150892.P12329251844163420486
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004523 (A151187 n + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)).toNat

end

end A150892.P12329251844163420486

/-! ## A150892.P10947007702533765178

`A004396(A151187(n)-A099562(n))`
-/

namespace A150892.P10947007702533765178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A151187 n - A099562 n).toNat

end

end A150892.P10947007702533765178

/-! ## A150892.P13053926866088261300

`A151185(n)-A002264(A151183(n))`
-/

namespace A150892.P13053926866088261300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151185 n - A002264 (A151183 n).toNat

end

end A150892.P13053926866088261300

/-!
# A150893: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 1), (0, 1, 0), (1, -1, 1), (1, 0, -1), (1, 1, 1)}.

The programs for A150893, there is no canonical definition to state claims against.
-/

/-! ## A150893.P14308216660299008227

`A028310(A150895(n))-A344682(A344677(n))`
-/

namespace A150893.P14308216660299008227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A150895 n).toNat - A344682 (A344677 n).toNat

end

end A150893.P14308216660299008227

/-! ## A150893.P1006366836718324916

`A195177(5^n+2^n+4^n)`
-/

namespace A150893.P1006366836718324916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195177 (5 ^ n + (2 ^ n + 4 ^ n))

end

end A150893.P1006366836718324916

/-!
# A150894: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 0), (0, 0, 1), (1, -1, 1), (1, 1, -1), (1, 1, 1)}.

The programs for A150894, there is no canonical definition to state claims against.
-/

/-! ## A150894.P10313116016029199948

`A028310(A150895(n))`
-/

namespace A150894.P10313116016029199948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A150895 n).toNat

end

end A150894.P10313116016029199948

/-! ## A150894.P11493524884805641507

`A150895(A004868(n+1))`
-/

namespace A150894.P11493524884805641507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150895 (A004868 (n + 1)).toNat

end

end A150894.P11493524884805641507

/-! ## A150894.P4079433006541115825

`A023443(A150895(n)+1)`
-/

namespace A150894.P4079433006541115825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A150895 n + 1).toNat

end

end A150894.P4079433006541115825

/-!
# A150896: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 1), (0, 1, 1), (1, -1, 1), (1, 1, -1), (1, 1, 0)}.

The programs for A150896, there is no canonical definition to state claims against.
-/

/-! ## A150896.P5183170460546883822

`A247971(A307816(n+2)-n)`
-/

namespace A150896.P5183170460546883822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247971 (A307816 (n + 2) - (n : ℤ)).toNat

end

end A150896.P5183170460546883822

/-! ## A150896.P1784979467291378396

`A093392(A132402(2*n))+n+1`
-/

namespace A150896.P1784979467291378396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093392 (A132402 (2 * n)).toNat + (n + 1 : ℤ)

end

end A150896.P1784979467291378396

/-!
# A150897: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 1), (0, -1, 1), (0, 0, 1), (1, 1, -1), (1, 1, 1)}.

The programs for A150897, there is no canonical definition to state claims against.
-/

/-! ## A150897.P18379572031670433697

`A239161(A392207(n+2))`
-/

namespace A150897.P18379572031670433697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239161 (A392207 (n + 2)).toNat

end

end A150897.P18379572031670433697

/-! ## A150897.P18053023833832640534

`A276797(or(2, A141223(n)))`
-/

namespace A150897.P18053023833832640534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276797 (Int.lor 2 (A141223 n)).toNat

end

end A150897.P18053023833832640534

/-!
# A150898: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 1), (0, 1, 0), (1, -1, 1), (1, 1, -1), (1, 1, 1)}.

The programs for A150898, there is no canonical definition to state claims against.
-/

/-! ## A150898.P5315330420213454596

`A110657(A003583(n))`
-/

namespace A150898.P5315330420213454596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110657 (A003583 n).toNat

end

end A150898.P5315330420213454596

/-! ## A150898.P10940175925722174209

`A246552(A003583(n)+1)`
-/

namespace A150898.P10940175925722174209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246552 (A003583 n + 1).toNat

end

end A150898.P10940175925722174209

/-!
# A150899: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 1), (0, 0, 1), (1, -1, 1), (1, 1, -1), (1, 1, 1)}.

The programs for A150899, there is no canonical definition to state claims against.
-/

/-! ## A150899.P15452401990884519289

`A195174(A108851(n+1))`
-/

namespace A150899.P15452401990884519289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195174 (A108851 (n + 1)).toNat

end

end A150899.P15452401990884519289

/-! ## A150899.P13308168483982290797

`A244479(A150856(n+1))`
-/

namespace A150899.P13308168483982290797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244479 (A150856 (n + 1)).toNat

end

end A150899.P13308168483982290797

