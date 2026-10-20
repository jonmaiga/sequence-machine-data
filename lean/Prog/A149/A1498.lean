import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C013
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C020
import Seq.B000.C023
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
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B003.C000
import Seq.B003.C003
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B007.C000
import Seq.B008.C000
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
# A149801: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 1), (-1, 1, 0), (1, -1, 0), (1, 1, -1), (1, 1, 1)}.

The programs for A149801, there is no canonical definition to state claims against.
-/

/-! ## A149801.P5468835607819579324

`A149802(n)-A347245(A001147(n))`
-/

namespace A149801.P5468835607819579324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149802 n - A347245 (A001147 n).toNat

end

end A149801.P5468835607819579324

/-! ## A149801.P11104679600678084351

`xor(A149802(n), A184964(A257666(n)))`
-/

namespace A149801.P11104679600678084351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A149802 n) (A184964 (A257666 n).toNat)

end

end A149801.P11104679600678084351

/-!
# A149802: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 0), (-1, 1, 1), (1, -1, 0), (1, 1, -1), (1, 1, 1)}.

The programs for A149802, there is no canonical definition to state claims against.
-/

/-! ## A149802.P3214697578233678751

`A347245(A001147(n))+A149801(n)`
-/

namespace A149802.P3214697578233678751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347245 (A001147 n).toNat + A149801 n

end

end A149802.P3214697578233678751

/-! ## A149802.P7237478142000938297

`xor(A149801(n), A184964(A257666(n)))`
-/

namespace A149802.P7237478142000938297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A149801 n) (A184964 (A257666 n).toNat)

end

end A149802.P7237478142000938297

/-!
# A149803: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 0), (-1, 0, 1), (1, -1, 1), (1, 1, -1), (1, 1, 1)}.

The programs for A149803, there is no canonical definition to state claims against.
-/

/-! ## A149803.P2071718462481922508

`A226190(A150935(n))`
-/

namespace A149803.P2071718462481922508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226190 (A150935 n).toNat

end

end A149803.P2071718462481922508

/-! ## A149803.P9128300947746776260

`A124741(A015448(n)+2)`
-/

namespace A149803.P9128300947746776260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124741 (A015448 n + 2).toNat

end

end A149803.P9128300947746776260

/-!
# A149804: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 1), (-1, 1, 1), (1, -1, 0), (1, 0, -1), (1, 1, 1)}.

The programs for A149804, there is no canonical definition to state claims against.
-/

/-! ## A149804.P16163786724763733964

`A054861(A150965(n)+A001153(n+1))`
-/

namespace A149804.P16163786724763733964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054861 (A150965 n + A001153 (n + 1)).toNat

end

end A149804.P16163786724763733964

/-! ## A149804.P17738171287851870053

`A273377(A001372(n))`
-/

namespace A149804.P17738171287851870053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273377 (A001372 n).toNat

end

end A149804.P17738171287851870053

/-!
# A149805: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 1), (-1, 1, 1), (1, -1, 1), (1, 0, -1), (1, 1, 1)}.

The programs for A149805, there is no canonical definition to state claims against.
-/

/-! ## A149805.P13862999081204977603

`A066508(A150441(n))`
-/

namespace A149805.P13862999081204977603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066508 (A150441 n).toNat

end

end A149805.P13862999081204977603

/-! ## A149805.P8851918041375685342

`A322479(A219230(n)+1)`
-/

namespace A149805.P8851918041375685342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322479 (A219230 n + 1).toNat

end

end A149805.P8851918041375685342

/-!
# A149806: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 1), (-1, 1, 1), (1, -1, 0), (1, 1, -1), (1, 1, 1)}.

The programs for A149806, there is no canonical definition to state claims against.
-/

/-! ## A149806.P13173676263480679787

`A149808(n)-A347245(A001147(n))`
-/

namespace A149806.P13173676263480679787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149808 n - A347245 (A001147 n).toNat

end

end A149806.P13173676263480679787

/-! ## A149806.P14958292279782277307

`A149807(A001096(n))`
-/

namespace A149806.P14958292279782277307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149807 (A001096 n).toNat

end

end A149806.P14958292279782277307

/-!
# A149807: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 1), (-1, 1, 0), (1, -1, 1), (1, 1, -1), (1, 1, 1)}.

The programs for A149807, there is no canonical definition to state claims against.
-/

/-! ## A149807.P7641374101317544353

`A004151(A149808(n))`
-/

namespace A149807.P7641374101317544353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004151 (A149808 n).toNat

end

end A149807.P7641374101317544353

/-! ## A149807.P2373228300004890075

`A149808(A073789(n))`
-/

namespace A149807.P2373228300004890075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149808 (A073789 n).toNat

end

end A149807.P2373228300004890075

/-! ## A149807.P5686483599780302733

`A149808(A171644(n))`
-/

namespace A149807.P5686483599780302733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149808 (A171644 n).toNat

end

end A149807.P5686483599780302733

/-! ## A149807.P11247207626173879099

`A149808(A004869(n+1))`
-/

namespace A149807.P11247207626173879099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149808 (A004869 (n + 1)).toNat

end

end A149807.P11247207626173879099

/-!
# A149808: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 0), (-1, 1, 1), (1, -1, 1), (1, 1, -1), (1, 1, 1)}.

The programs for A149808, there is no canonical definition to state claims against.
-/

/-! ## A149808.P12157703805463230830

`or(A001222(A149806(n)), A149807(n))`
-/

namespace A149808.P12157703805463230830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001222 (A149806 n).toNat) (A149807 n)

end

end A149808.P12157703805463230830

/-! ## A149808.P536792715759893443

`or(A055396(A149825(n)), A149807(n))`
-/

namespace A149808.P536792715759893443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A055396 (A149825 n).toNat) (A149807 n)

end

end A149808.P536792715759893443

/-! ## A149808.P6607716812565183375

`or(A149807(n), A231347(A006720(n)))`
-/

namespace A149808.P6607716812565183375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A149807 n) (A231347 (A006720 n).toNat)

end

end A149808.P6607716812565183375

/-! ## A149808.P6827568651974563313

`A000265(or(A149807(n), A287597(n)))`
-/

namespace A149808.P6827568651974563313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (Int.lor (A149807 n) (A287597 n)).toNat

end

end A149808.P6827568651974563313

/-! ## A149808.P9731044328913522346

`or(A001222(A000519(n+1)), A149807(n))`
-/

namespace A149808.P9731044328913522346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001222 (A000519 (n + 1)).toNat) (A149807 n)

end

end A149808.P9731044328913522346

/-!
# A149809: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 1), (-1, 1, 1), (1, -1, 1), (1, 1, -1), (1, 1, 1)}.

The programs for A149809, there is no canonical definition to state claims against.
-/

/-! ## A149809.P15273455670571916388

`A124741(A150294(n))`
-/

namespace A149809.P15273455670571916388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124741 (A150294 n).toNat

end

end A149809.P15273455670571916388

/-!
# A149810: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, -1, 1), (0, 1, 0), (1, 0, 0)}.

The programs for A149810, there is no canonical definition to state claims against.
-/

/-! ## A149810.P11551093807151449872

`∑[A061392(∑[A049426(n)])]`
-/

namespace A149810.P11551093807151449872
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049426 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061392 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A149810.P11551093807151449872

/-! ## A149810.P8016224772584973145

`∑[A061392(A015531(n)+1)]`
-/

namespace A149810.P8016224772584973145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061392 (A015531 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A149810.P8016224772584973145

/-! ## A149810.P538647971016291913

`A284359(A357189((n+1)²+2))`
-/

namespace A149810.P538647971016291913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284359 (A357189 ((n + 1) ^ 2 + 2)).toNat

end

end A149810.P538647971016291913

/-!
# A149811: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, -1), (0, 0, 1), (1, 0, 0)}.

The programs for A149811, there is no canonical definition to state claims against.
-/

/-! ## A149811.P7534109738847176810

`A149812(A073788(n))`
-/

namespace A149811.P7534109738847176810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149812 (A073788 n).toNat

end

end A149811.P7534109738847176810

/-! ## A149811.P3214434933887062874

`A115060(A149812(n))`
-/

namespace A149811.P3214434933887062874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115060 (A149812 n).toNat

end

end A149811.P3214434933887062874

/-! ## A149811.P8264969572594309642

`A149812(A171596(n))`
-/

namespace A149811.P8264969572594309642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149812 (A171596 n).toNat

end

end A149811.P8264969572594309642

/-!
# A149812: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 1, -1), (0, 0, 1), (1, 0, 0)}.

The programs for A149812, there is no canonical definition to state claims against.
-/

/-! ## A149812.P2370048862969468332

`floor(A316892(n)+sqrt(n))`
-/

namespace A149812.P2370048862969468332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A316892 n : ℝ) + Real.sqrt (n : ℝ)⌋

end

end A149812.P2370048862969468332

/-! ## A149812.P15155256867350225541

`A316892(n)+A000196(n)`
-/

namespace A149812.P15155256867350225541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316892 n + A000196 n

end

end A149812.P15155256867350225541

/-! ## A149812.P1094881419012578949

`A316892(n)+∑[A243148(n+1)]`
-/

namespace A149812.P1094881419012578949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243148 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316892 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A149812.P1094881419012578949

/-! ## A149812.P6788713580214302007

`A316892(n)+A124770(ceil(log2(n+1)))`
-/

namespace A149812.P6788713580214302007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316892 n + A124770 ⌈Real.logb 2 (n + 1 : ℝ)⌉.toNat

end

end A149812.P6788713580214302007

/-!
# A149813: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, -1, 0), (-1, 1, -1), (0, 0, 1), (1, 0, 0)}.

The programs for A149813, there is no canonical definition to state claims against.
-/

/-! ## A149813.P580019340110375470

`A149814(A073788(n))`
-/

namespace A149813.P580019340110375470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149814 (A073788 n).toNat

end

end A149813.P580019340110375470

/-! ## A149813.P6512607988920944661

`A115060(A149814(n))`
-/

namespace A149813.P6512607988920944661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115060 (A149814 n).toNat

end

end A149813.P6512607988920944661

/-! ## A149813.P16759232442280445181

`A149814(A004868(n+1))`
-/

namespace A149813.P16759232442280445181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149814 (A004868 (n + 1)).toNat

end

end A149813.P16759232442280445181

/-!
# A149815: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, -1), (0, 0, 1), (0, 1, 0), (1, -1, -1)}.

The programs for A149815, there is no canonical definition to state claims against.
-/

/-! ## A149815.P8765578339448615624

`A149816(A073788(n))`
-/

namespace A149815.P8765578339448615624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149816 (A073788 n).toNat

end

end A149815.P8765578339448615624

/-! ## A149815.P12610130990353575908

`A109680(A149816(n))`
-/

namespace A149815.P12610130990353575908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109680 (A149816 n).toNat

end

end A149815.P12610130990353575908

/-! ## A149815.P16418856995633622112

`A109680(A149817(n))`
-/

namespace A149815.P16418856995633622112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109680 (A149817 n).toNat

end

end A149815.P16418856995633622112

/-!
# A149816: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, -1, 1), (-1, 1, -1), (0, 0, 1), (1, 0, 0)}.

The programs for A149816, there is no canonical definition to state claims against.
-/

/-! ## A149816.P5139733466897861732

`A149817(A073790(n))`
-/

namespace A149816.P5139733466897861732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149817 (A073790 n).toNat

end

end A149816.P5139733466897861732

/-! ## A149816.P16672358439906616256

`A075054(A149817(n))`
-/

namespace A149816.P16672358439906616256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075054 (A149817 n).toNat

end

end A149816.P16672358439906616256

/-! ## A149816.P12700654780303134564

`A149817(A098755(n))`
-/

namespace A149816.P12700654780303134564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149817 (A098755 n).toNat

end

end A149816.P12700654780303134564

/-! ## A149816.P18206990073192247383

`A149817(A171717(n))`
-/

namespace A149816.P18206990073192247383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149817 (A171717 n).toNat

end

end A149816.P18206990073192247383

/-! ## A149816.P1946320682949176139

`A149817(A004870(n+1))`
-/

namespace A149816.P1946320682949176139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149817 (A004870 (n + 1)).toNat

end

end A149816.P1946320682949176139

/-!
# A149819: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (0, 0, -1), (0, 1, 0), (1, 0, 0)}.

The programs for A149819, there is no canonical definition to state claims against.
-/

/-! ## A149819.P10599506813891640381

`A344296(A382400(n))`
-/

namespace A149819.P10599506813891640381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344296 (A382400 n).toNat

end

end A149819.P10599506813891640381

/-! ## A149819.P17030808585816191684

`∑[A023193(A360267(n))]`
-/

namespace A149819.P17030808585816191684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023193 (A360267 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A149819.P17030808585816191684

/-! ## A149819.P484111099818189874

`A005041(A052852(n))+A000045(n)`
-/

namespace A149819.P484111099818189874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005041 (A052852 n).toNat + A000045 n

end

end A149819.P484111099818189874

/-!
# A149820: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (0, 1, -1), (0, 1, 0), (1, 0, 0)}.

The programs for A149820, there is no canonical definition to state claims against.
-/

/-! ## A149820.P7714580171036582034

`A048299(A000084(n+2))`
-/

namespace A149820.P7714580171036582034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048299 (A000084 (n + 2)).toNat

end

end A149820.P7714580171036582034

/-! ## A149820.P1398457683796764314

`A243283(A129580(n)+2)`
-/

namespace A149820.P1398457683796764314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243283 (A129580 n + 2).toNat

end

end A149820.P1398457683796764314

/-! ## A149820.P5088538863764065382

`A014138(n)+A002024(A000272(n))`
-/

namespace A149820.P5088538863764065382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014138 n + A002024 (A000272 n).toNat

end

end A149820.P5088538863764065382

/-!
# A149821: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, -1, 1), (0, 0, -1), (0, 1, 0), (1, 0, 0)}.

The programs for A149821, there is no canonical definition to state claims against.
-/

/-! ## A149821.P7538341193706507309

`A343934(A014273(n+1))`
-/

namespace A149821.P7538341193706507309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343934 (A014273 (n + 1)).toNat

end

end A149821.P7538341193706507309

/-! ## A149821.P765105787776169276

`A145036(A171969(n+2))`
-/

namespace A149821.P765105787776169276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145036 (A171969 (n + 2)).toNat

end

end A149821.P765105787776169276

/-! ## A149821.P2460304565179884925

`Δ[A081608(∑[A001930(n)])]`
-/

namespace A149821.P2460304565179884925
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001930 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081608 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A149821.P2460304565179884925

/-!
# A149822: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, -1, 1), (0, 1, -1), (0, 1, 0), (1, 0, 0)}.

The programs for A149822, there is no canonical definition to state claims against.
-/

/-! ## A149822.P11225872710173524649

`A055679(3*A150136(n))`
-/

namespace A149822.P11225872710173524649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055679 (3 * A150136 n).toNat

end

end A149822.P11225872710173524649

/-! ## A149822.P8347382783830294179

`A024417(∑[∑[A149407(n)]])`
-/

namespace A149822.P8347382783830294179
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149407 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024417 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A149822.P8347382783830294179

/-!
# A149823: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (0, 1, 0), (1, 0, 0), (1, 1, -1)}.

The programs for A149823, there is no canonical definition to state claims against.
-/

/-! ## A149823.P15604228145892253834

`∑[A136498(a(n-1))-(n-2)]` with `a(0)=1, a(1)=1`
-/

namespace A149823.P15604228145892253834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  A136498 (f1 (n - 1)).toNat - ((n : ℤ) - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A149823.P15604228145892253834

/-! ## A149823.P6573204944225553657

`∑[A331873(A239075(n))]`
-/

namespace A149823.P6573204944225553657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331873 (A239075 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A149823.P6573204944225553657

/-! ## A149823.P603584931357915446

`A034973(A149952(n+1))`
-/

namespace A149823.P603584931357915446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034973 (A149952 (n + 1)).toNat

end

end A149823.P603584931357915446

/-!
# A149824: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, -1, 1), (0, 1, 0), (1, 0, 0), (1, 1, -1)}.

The programs for A149824, there is no canonical definition to state claims against.
-/

/-! ## A149824.P12938398286579679093

`∑[A352226(A005651(n))+1]`
-/

namespace A149824.P12938398286579679093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352226 (A005651 n).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A149824.P12938398286579679093

/-! ## A149824.P1292341735372550667

`∑[∑[A007954(A000311(n))]]+1`
-/

namespace A149824.P1292341735372550667
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007954 (A000311 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A149824.P1292341735372550667

/-! ## A149824.P14667670204617176552

`A147320(A266528(2*n+1))+A140429(n)`
-/

namespace A149824.P14667670204617176552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147320 (A266528 (2 * n + 1)).toNat + A140429 n

end

end A149824.P14667670204617176552

/-!
# A149825: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 0), (0, 0, 1), (0, 1, 0), (1, -1, -1)}.

The programs for A149825, there is no canonical definition to state claims against.
-/

/-! ## A149825.P12578149351138232421

`∑[round(sqrt(A302053(n!)))]`
-/

namespace A149825.P12578149351138232421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A302053 (Nat.factorial n) : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A149825.P12578149351138232421

/-! ## A149825.P9953244985850352066

`∑[A309129(∑[(1-n)²])]`
-/

namespace A149825.P9953244985850352066
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (n : ℤ)) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309129 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A149825.P9953244985850352066

/-! ## A149825.P1846269233575146356

`A149826(A073788(n))`
-/

namespace A149825.P1846269233575146356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149826 (A073788 n).toNat

end

end A149825.P1846269233575146356

/-!
# A149827: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 1), (0, 0, 1), (0, 1, 0), (1, -1, -1)}.

The programs for A149827, there is no canonical definition to state claims against.
-/

/-! ## A149827.P12343150802019553918

`A149828(gcd((2*n-3)*n², n*(24*n-23)))`
-/

namespace A149827.P12343150802019553918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149828 (Int.gcd (((2 * n : ℤ) - 3) * (n ^ 2 : ℤ)) ((n : ℤ) * ((24 * n : ℤ) - 23)))

end

end A149827.P12343150802019553918

/-! ## A149827.P698903923504055927

`A149828(A073789(n))`
-/

namespace A149827.P698903923504055927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149828 (A073789 n).toNat

end

end A149827.P698903923504055927

/-! ## A149827.P18132570856878989855

`A129607(A149828(n))`
-/

namespace A149827.P18132570856878989855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129607 (A149828 n).toNat

end

end A149827.P18132570856878989855

/-! ## A149827.P18303977617440347181

`A149828(A171644(n))`
-/

namespace A149827.P18303977617440347181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149828 (A171644 n).toNat

end

end A149827.P18303977617440347181

/-!
# A149829: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 1), (0, 0, 1), (0, 1, 0), (1, -1, -1)}.

The programs for A149829, there is no canonical definition to state claims against.
-/

/-! ## A149829.P10780985834378184936

`A149830(A073789(n))`
-/

namespace A149829.P10780985834378184936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149830 (A073789 n).toNat

end

end A149829.P10780985834378184936

/-! ## A149829.P12306549295802422359

`A129607(A149830(n))`
-/

namespace A149829.P12306549295802422359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129607 (A149830 n).toNat

end

end A149829.P12306549295802422359

/-! ## A149829.P2494260727133270287

`A149830(A171644(n))`
-/

namespace A149829.P2494260727133270287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149830 (A171644 n).toNat

end

end A149829.P2494260727133270287

/-! ## A149829.P10062483294346618614

`A149830(A004869(n+1))`
-/

namespace A149829.P10062483294346618614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149830 (A004869 (n + 1)).toNat

end

end A149829.P10062483294346618614

/-!
# A149831: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, -1), (0, 0, 1), (1, -1, 1), (1, 0, 0)}.

The programs for A149831, there is no canonical definition to state claims against.
-/

/-! ## A149831.P2242520284451186123

`ceil(A252463(4^n+4*n)/(n+1))`
-/

namespace A149831.P2242520284451186123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A252463 (4 ^ n + 4 * n) : ℚ) / (n + 1 : ℚ)⌉

end

end A149831.P2242520284451186123

/-! ## A149831.P8469906113743840098

`A149832(n)%p?[2^(∑[n+1]%(n+2))-1]`
-/

namespace A149831.P8469906113743840098
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ ((∑ j ∈ Finset.range (n + 1), f2 j) % (n + 2)) : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A149832 n) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A149831.P8469906113743840098

/-! ## A149831.P2841944941230326617

`A039708(A149892(n))`
-/

namespace A149831.P2841944941230326617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039708 (A149892 n).toNat

end

end A149831.P2841944941230326617

/-!
# A149832: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 1, -1), (0, 0, 1), (1, -1, 1), (1, 0, 0)}.

The programs for A149832, there is no canonical definition to state claims against.
-/

/-! ## A149832.P6940243399171516052

`A002265(A001358(n+1)+A001037(2*(n+1)))`
-/

namespace A149832.P6940243399171516052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A001358 (n + 1) + A001037 (2 * (n + 1))).toNat

end

end A149832.P6940243399171516052

/-! ## A149832.P16801408671736892698

`A002265(A059966(2*(n+1))+A001358(n+1))`
-/

namespace A149832.P16801408671736892698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A059966 (2 * (n + 1)) + A001358 (n + 1)).toNat

end

end A149832.P16801408671736892698

/-!
# A149833: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (0, 0, -1), (0, 1, -1), (0, 1, 0), (1, 0, 0)}.

The programs for A149833, there is no canonical definition to state claims against.
-/

/-! ## A149833.P11863000483108406481

`A210357(A390481(n+1))`
-/

namespace A149833.P11863000483108406481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210357 (A390481 (n + 1)).toNat

end

end A149833.P11863000483108406481

/-! ## A149833.P11647738534951396275

`∑[A325391(∑[A194803(n)])]`
-/

namespace A149833.P11647738534951396275
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194803 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325391 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A149833.P11647738534951396275

/-!
# A149834: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (0, 1, -1), (0, 1, 0), (1, 0, -1), (1, 0, 0)}.

The programs for A149834, there is no canonical definition to state claims against.
-/

/-! ## A149834.P8302146162805177598

`A109497(Δ[A149448(n)])`
-/

namespace A149834.P8302146162805177598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149448 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109497 (f1 (n + 1) - f1 n).toNat

end

end A149834.P8302146162805177598

/-! ## A149834.P6889249351086329349

`A026119(n)+A022564(A109965(n))`
-/

namespace A149834.P6889249351086329349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026119 n + A022564 (A109965 n).toNat

end

end A149834.P6889249351086329349

/-! ## A149834.P2469832185262645757

`A345241(n+1)+A001221(A273145(n))`
-/

namespace A149834.P2469832185262645757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345241 (n + 1) + A001221 (A273145 n).toNat

end

end A149834.P2469832185262645757

/-! ## A149834.P10930274666438057592

`A056295(2*n+1)+A034328(A034336(n))`
-/

namespace A149834.P10930274666438057592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056295 (2 * n + 1) + A034328 (A034336 n).toNat

end

end A149834.P10930274666438057592

/-!
# A149835: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (0, 0, -1), (0, 1, 0), (1, 0, 0), (1, 1, -1)}.

The programs for A149835, there is no canonical definition to state claims against.
-/

/-! ## A149835.P17680560087776251635

`A264810(A150159(n))`
-/

namespace A149835.P17680560087776251635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264810 (A150159 n).toNat

end

end A149835.P17680560087776251635

/-! ## A149835.P9859564223099911223

`A344296(A174439(n))`
-/

namespace A149835.P9859564223099911223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344296 (A174439 n).toNat

end

end A149835.P9859564223099911223

/-! ## A149835.P11475912804313408928

`A344296(A000128(n+1))`
-/

namespace A149835.P11475912804313408928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344296 (A000128 (n + 1)).toNat

end

end A149835.P11475912804313408928

/-!
# A149836: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (0, 1, -1), (0, 1, 0), (1, 0, 0), (1, 1, -1)}.

The programs for A149836, there is no canonical definition to state claims against.
-/

/-! ## A149836.P7094867183637589227

`A225559(A150539(n))`
-/

namespace A149836.P7094867183637589227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225559 (A150539 n).toNat

end

end A149836.P7094867183637589227

/-! ## A149836.P10545553198324982003

`A138194(A305118(n+1))`
-/

namespace A149836.P10545553198324982003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138194 (A305118 (n + 1)).toNat

end

end A149836.P10545553198324982003

/-! ## A149836.P5551747058789066135

`A034973(A084480(n)+2)`
-/

namespace A149836.P5551747058789066135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034973 (A084480 n + 2).toNat

end

end A149836.P5551747058789066135

/-!
# A149837: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, -1, 0), (0, 1, 0), (1, 0, 1)}.

The programs for A149837, there is no canonical definition to state claims against.
-/

/-! ## A149837.P1076135038639109646

`A198466(a(n-2))²` with `a(0)=1, a(1)=2, a(2)=4, a(3)=12`
-/

namespace A149837.P1076135038639109646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 4, 12] fun n a =>
  A198466 (a (n - 2)).toNat ^ 2

end

end A149837.P1076135038639109646

/-! ## A149837.P8837912073015892141

`A088900(A079116(n))`
-/

namespace A149837.P8837912073015892141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088900 (A079116 n).toNat

end

end A149837.P8837912073015892141

/-! ## A149837.P15105449947720261876

`A088900(A109222(n))`
-/

namespace A149837.P15105449947720261876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088900 (A109222 n).toNat

end

end A149837.P15105449947720261876

/-!
# A149838: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, -1, 0), (-1, -1, 1), (0, 1, 0), (1, 0, 0)}.

The programs for A149838, there is no canonical definition to state claims against.
-/

/-! ## A149838.P3777748767501645420

`∑[A304407(A186236(n)²)]`
-/

namespace A149838.P3777748767501645420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304407 (A186236 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A149838.P3777748767501645420

/-! ## A149838.P6150809963862326044

`record[and(A015759(n+1), A113988(n))]`
-/

namespace A149838.P6150809963862326044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A015759 (n + 1)) (A113988 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A149838.P6150809963862326044

/-! ## A149838.P9569710916941115567

`A081696(n)+A007496(A208709(n+1))`
-/

namespace A149838.P9569710916941115567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081696 n + A007496 (A208709 (n + 1)).toNat

end

end A149838.P9569710916941115567

/-!
# A149839: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, -1, 1), (-1, 0, -1), (0, 1, 0), (1, 0, 0)}.

The programs for A149839, there is no canonical definition to state claims against.
-/

/-! ## A149839.P1401354584948704775

`A149840(A073788(n))`
-/

namespace A149839.P1401354584948704775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149840 (A073788 n).toNat

end

end A149839.P1401354584948704775

/-! ## A149839.P1927445871905156023

`A149840(A171596(n))`
-/

namespace A149839.P1927445871905156023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149840 (A171596 n).toNat

end

end A149839.P1927445871905156023

/-! ## A149839.P10198586246097111732

`A149840(A329580(n))`
-/

namespace A149839.P10198586246097111732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149840 (A329580 n).toNat

end

end A149839.P10198586246097111732

/-!
# A149841: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, -1), (0, 1, 1), (1, 0, 0)}.

The programs for A149841, there is no canonical definition to state claims against.
-/

/-! ## A149841.P12339617743418083936

`A005843(A149842(n))-A149843(n)`
-/

namespace A149841.P12339617743418083936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A149842 n).toNat - A149843 n

end

end A149841.P12339617743418083936

/-! ## A149841.P2035633348274432877

`A149842(A073788(n))`
-/

namespace A149841.P2035633348274432877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149842 (A073788 n).toNat

end

end A149841.P2035633348274432877

/-! ## A149841.P13482941618865050356

`A149842(A171596(n))`
-/

namespace A149841.P13482941618865050356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149842 (A171596 n).toNat

end

end A149841.P13482941618865050356

/-!
# A149842: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, -1), (0, 1, 1), (1, 0, 0)}.

The programs for A149842, there is no canonical definition to state claims against.
-/

/-! ## A149842.P12818901947029747901

`A001281(A149843(n)+A149841(n))`
-/

namespace A149842.P12818901947029747901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A149843 n + A149841 n).toNat

end

end A149842.P12818901947029747901

/-! ## A149842.P13127356438376876303

`A004525(A149843(n)+A149841(n))`
-/

namespace A149842.P13127356438376876303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A149843 n + A149841 n).toNat

end

end A149842.P13127356438376876303

/-! ## A149842.P2243811485910460591

`A004526(A149843(n)+A149841(n))`
-/

namespace A149842.P2243811485910460591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A149843 n + A149841 n).toNat

end

end A149842.P2243811485910460591

/-! ## A149842.P7669556316694517762

`A110654(A149843(n)+A149841(n))`
-/

namespace A149842.P7669556316694517762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A149843 n + A149841 n).toNat

end

end A149842.P7669556316694517762

/-! ## A149842.P6750429362884141524

`A123108(A149843(n)+A149841(n))`
-/

namespace A149842.P6750429362884141524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A149843 n + A149841 n).toNat

end

end A149842.P6750429362884141524

/-!
# A149843: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 1, -1), (0, 1, 1), (1, 0, 0)}.

The programs for A149843, there is no canonical definition to state claims against.
-/

/-! ## A149843.P11477489169689746759

`A005843(A149842(n))-A149841(n)`
-/

namespace A149843.P11477489169689746759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A149842 n).toNat - A149841 n

end

end A149843.P11477489169689746759

/-! ## A149843.P11390411121785620727

`or(A149841(n), A351870(A260657(n)))`
-/

namespace A149843.P11390411121785620727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A149841 n) (A351870 (A260657 n).toNat)

end

end A149843.P11390411121785620727

/-! ## A149843.P11498243970226293521

`or(A149842(n), A351870(A260657(n)))`
-/

namespace A149843.P11498243970226293521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A149842 n) (A351870 (A260657 n).toNat)

end

end A149843.P11498243970226293521

/-!
# A149844: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, -1, 1), (0, 0, -1), (0, 1, 0), (1, 0, 0)}.

The programs for A149844, there is no canonical definition to state claims against.
-/

/-! ## A149844.P9907713843347346472

`A394785(A101053(n)+1)`
-/

namespace A149844.P9907713843347346472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394785 (A101053 n + 1).toNat

end

end A149844.P9907713843347346472

/-! ## A149844.P6622076738238125375

`A154099(A052539(n)-or(1, 2^n))`
-/

namespace A149844.P6622076738238125375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154099 (A052539 n - (Nat.lor 1 (2 ^ n) : ℤ)).toNat

end

end A149844.P6622076738238125375

/-! ## A149844.P2841036729963850492

`A353396(A228285(n+5)+n²+n+1)`
-/

namespace A149844.P2841036729963850492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353396 (A228285 (n + 5) + (n ^ 2 + n : ℤ) + 1).toNat

end

end A149844.P2841036729963850492

/-!
# A149845: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, -1, 1), (0, 1, -1), (0, 1, 0), (1, 0, 0)}.

The programs for A149845, there is no canonical definition to state claims against.
-/

/-! ## A149845.P9747289233153901688

`A185284(n²)+A149844(n)`
-/

namespace A149845.P9747289233153901688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 (n ^ 2) + A149844 n

end

end A149845.P9747289233153901688

/-! ## A149845.P18006782584695628623

`A006190(n)+A002260(A090140(n))`
-/

namespace A149845.P18006782584695628623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006190 n + A002260 (A090140 n).toNat

end

end A149845.P18006782584695628623

/-! ## A149845.P13655403034066724625

`A185238(A160664(n))+A149844(n)`
-/

namespace A149845.P13655403034066724625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185238 (A160664 n).toNat + A149844 n

end

end A149845.P13655403034066724625

/-!
# A149846: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, -1, 1), (0, 1, 0), (1, 0, 0), (1, 1, -1)}.

The programs for A149846, there is no canonical definition to state claims against.
-/

/-! ## A149846.P10537742906906773911

`A192330(6^n)-n`
-/

namespace A149846.P10537742906906773911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192330 (6 ^ n) - (n : ℤ)

end

end A149846.P10537742906906773911

/-! ## A149846.P13955627959831764592

`A088177(or(n, (n+1)^n)+n)`
-/

namespace A149846.P13955627959831764592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088177 (Nat.lor n ((n + 1) ^ n) + n)

end

end A149846.P13955627959831764592

/-!
# A149847: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, -1, 0), (-1, -1, 1), (0, 1, 0), (1, 0, 1)}.

The programs for A149847, there is no canonical definition to state claims against.
-/

/-! ## A149847.P1699957668185729592

`A132015(A151460(n+1))`
-/

namespace A149847.P1699957668185729592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132015 (A151460 (n + 1)).toNat

end

end A149847.P1699957668185729592

/-! ## A149847.P9164386932902707907

`A132015(∑[(n+1)*A131910(n)])`
-/

namespace A149847.P9164386932902707907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A131910 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132015 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A149847.P9164386932902707907

/-!
# A149848: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, -1, 0), (-1, 0, -1), (0, 1, 1), (1, 0, 0)}.

The programs for A149848, there is no canonical definition to state claims against.
-/

/-! ## A149848.P13345613000570074147

`A149850(n)%p?[2^n-1]`
-/

namespace A149848.P13345613000570074147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A149850 n) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A149848.P13345613000570074147

/-! ## A149848.P8871132171742779396

`A149849(A073788(n))`
-/

namespace A149848.P8871132171742779396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149849 (A073788 n).toNat

end

end A149848.P8871132171742779396

/-! ## A149848.P9760598651326850873

`A149849(A171596(n))`
-/

namespace A149848.P9760598651326850873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149849 (A171596 n).toNat

end

end A149848.P9760598651326850873

/-!
# A149851: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, -1, 1), (-1, 0, -1), (0, 1, 1), (1, 0, 0)}.

The programs for A149851, there is no canonical definition to state claims against.
-/

/-! ## A149851.P11643982416263393430

`A149852(A073788(n))`
-/

namespace A149851.P11643982416263393430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149852 (A073788 n).toNat

end

end A149851.P11643982416263393430

/-! ## A149851.P6303465914245451372

`A149852(A171596(n))`
-/

namespace A149851.P6303465914245451372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149852 (A171596 n).toNat

end

end A149851.P6303465914245451372

/-! ## A149851.P7434690626285939034

`A149852(A004868(n+1))`
-/

namespace A149851.P7434690626285939034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149852 (A004868 (n + 1)).toNat

end

end A149851.P7434690626285939034

/-!
# A149853: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, 0, 1), (0, 1, 0), (1, 0, 0)}.

The programs for A149853, there is no canonical definition to state claims against.
-/

/-! ## A149853.P9161693754097423282

`A046108(A052884(n+1))`
-/

namespace A149853.P9161693754097423282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046108 (A052884 (n + 1)).toNat

end

end A149853.P9161693754097423282

/-! ## A149853.P3709621983658495271

`A264749(ceil(sqrt(A232246(n+1))))`
-/

namespace A149853.P3709621983658495271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264749 ⌈Real.sqrt (A232246 (n + 1) : ℝ)⌉.toNat

end

end A149853.P3709621983658495271

/-! ## A149853.P10111100842224256817

`A321018(A066796(n+1)+A018818(n+1))`
-/

namespace A149853.P10111100842224256817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321018 (A066796 (n + 1) + A018818 (n + 1)).toNat

end

end A149853.P10111100842224256817

/-!
# A149854: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, -1, 1), (0, 1, 0), (1, 1, 0)}.

The programs for A149854, there is no canonical definition to state claims against.
-/

/-! ## A149854.P16376011910032376592

`∏{p}[A329698(2*n)², #]`
-/

namespace A149854.P16376011910032376592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329698 (2 * n) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A149854.P16376011910032376592

/-! ## A149854.P7319153257886522907

`∑[A054846(A321798(n))]`
-/

namespace A149854.P7319153257886522907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054846 (A321798 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A149854.P7319153257886522907

/-! ## A149854.P15176990855901109070

`∑[A157271(A308274(n))]`
-/

namespace A149854.P15176990855901109070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157271 (A308274 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A149854.P15176990855901109070

/-!
# A149855: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, -1, 0), (-1, 1, 0), (0, 0, 1), (1, 0, 0)}.

The programs for A149855, there is no canonical definition to state claims against.
-/

/-! ## A149855.P15435016867325597205

`A149856(A073789(n))`
-/

namespace A149855.P15435016867325597205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149856 (A073789 n).toNat

end

end A149855.P15435016867325597205

/-! ## A149855.P2768925872742476523

`A127287(A149856(n))`
-/

namespace A149855.P2768925872742476523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127287 (A149856 n).toNat

end

end A149855.P2768925872742476523

/-! ## A149855.P7923331670459620084

`A149856(A171644(n))`
-/

namespace A149855.P7923331670459620084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149856 (A171644 n).toNat

end

end A149855.P7923331670459620084

/-! ## A149855.P5650776379962966902

`A149856(A004869(n+1))`
-/

namespace A149855.P5650776379962966902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149856 (A004869 (n + 1)).toNat

end

end A149855.P5650776379962966902

/-!
# A149857: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (0, 0, 1), (0, 1, -1), (1, 0, 0)}.

The programs for A149857, there is no canonical definition to state claims against.
-/

/-! ## A149857.P12235648960720805403

`A247971(A391029(n+1))`
-/

namespace A149857.P12235648960720805403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247971 (A391029 (n + 1)).toNat

end

end A149857.P12235648960720805403

/-! ## A149857.P11313597248309233593

`A056173(A247281(n)+1)+1`
-/

namespace A149857.P11313597248309233593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056173 (A247281 n + 1).toNat + 1

end

end A149857.P11313597248309233593

/-! ## A149857.P13299359510559170552

`A087011(A179167(n+2)+1)`
-/

namespace A149857.P13299359510559170552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087011 (A179167 (n + 2) + 1).toNat

end

end A149857.P13299359510559170552

/-!
# A149858: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (0, 0, 1), (0, 1, -1), (1, 0, 0)}.

The programs for A149858, there is no canonical definition to state claims against.
-/

/-! ## A149858.P174736745767030928

`∑[A247971(A302287(n))]`
-/

namespace A149858.P174736745767030928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247971 (A302287 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A149858.P174736745767030928

/-! ## A149858.P6169687356753110822

`A110656(7*A071747(n))`
-/

namespace A149858.P6169687356753110822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110656 (7 * A071747 n).toNat

end

end A149858.P6169687356753110822

/-! ## A149858.P13289975082239645488

`A138194(ceil(sqrt(A005724(n+1))))`
-/

namespace A149858.P13289975082239645488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138194 ⌈Real.sqrt (A005724 (n + 1) : ℝ)⌉.toNat

end

end A149858.P13289975082239645488

/-!
# A149859: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, -1, 0), (0, 0, 1), (0, 1, -1), (1, 0, 0)}.

The programs for A149859, there is no canonical definition to state claims against.
-/

/-! ## A149859.P2110969961899827949

`A230980(A151087(n)+1)`
-/

namespace A149859.P2110969961899827949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 (A151087 n + 1).toNat

end

end A149859.P2110969961899827949

/-! ## A149859.P7872907474046178560

`A340764(A150280(n+1))`
-/

namespace A149859.P7872907474046178560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340764 (A150280 (n + 1)).toNat

end

end A149859.P7872907474046178560

/-! ## A149859.P4009516102987714041

`A255072(A004526(n)+2*A005753(n+1))`
-/

namespace A149859.P4009516102987714041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255072 (A004526 n + 2 * A005753 (n + 1)).toNat

end

end A149859.P4009516102987714041

/-!
# A149860: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, -1, 1), (0, 0, 1), (0, 1, -1), (1, 0, 0)}.

The programs for A149860, there is no canonical definition to state claims against.
-/

/-! ## A149860.P15844581179248555198

`A075249(A100447(n+1))`
-/

namespace A149860.P15844581179248555198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075249 (A100447 (n + 1)).toNat

end

end A149860.P15844581179248555198

/-! ## A149860.P12492944324089561843

`A340764(A150279(n+1))`
-/

namespace A149860.P12492944324089561843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340764 (A150279 (n + 1)).toNat

end

end A149860.P12492944324089561843

/-! ## A149860.P2152080915317469217

`A195185(A383275(n+1))`
-/

namespace A149860.P2152080915317469217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195185 (A383275 (n + 1)).toNat

end

end A149860.P2152080915317469217

/-!
# A149861: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, -1, 0), (-1, 1, -1), (0, 0, 1), (1, 0, 1)}.

The programs for A149861, there is no canonical definition to state claims against.
-/

/-! ## A149861.P7635440324819104942

`A262694(A278232(n+1)+A000302(n))`
-/

namespace A149861.P7635440324819104942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262694 (A278232 (n + 1) + A000302 n).toNat

end

end A149861.P7635440324819104942

/-! ## A149861.P14613764782060937158

`∑[A001462(A357152(n))]`
-/

namespace A149861.P14613764782060937158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (A357152 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A149861.P14613764782060937158

/-! ## A149861.P14652786587236092173

`A097882(A150102(n+1))`
-/

namespace A149861.P14652786587236092173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097882 (A150102 (n + 1)).toNat

end

end A149861.P14652786587236092173

/-!
# A149862: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, -1), (1, 0, 0), (1, 0, 1)}.

The programs for A149862, there is no canonical definition to state claims against.
-/

/-! ## A149862.P4900066175282702541

`A390395(A360272(n+1))`
-/

namespace A149862.P4900066175282702541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390395 (A360272 (n + 1)).toNat

end

end A149862.P4900066175282702541

/-! ## A149862.P11017298815108758457

`A157271(∑[∑[A149237(n)]])`
-/

namespace A149862.P11017298815108758457
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149237 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157271 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A149862.P11017298815108758457

/-! ## A149862.P11933554987538628316

`A165190(A010914(n))+comp[xor(1, 3*n)+3]`
-/

namespace A149862.P11933554987538628316
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (3 * n) + 3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165190 (A010914 n).toNat + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ)

end

end A149862.P11933554987538628316

/-!
# A149863: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 1, -1), (1, 0, 0), (1, 0, 1)}.

The programs for A149863, there is no canonical definition to state claims against.
-/

/-! ## A149863.P13929968070422045794

`A071725(n)+A001222(A136633(n))`
-/

namespace A149863.P13929968070422045794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071725 n + A001222 (A136633 n).toNat

end

end A149863.P13929968070422045794

/-! ## A149863.P11441146173386156661

`A185651(n)+A024417(A151055(n))`
-/

namespace A149863.P11441146173386156661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185651 n + A024417 (A151055 n).toNat

end

end A149863.P11441146173386156661

/-! ## A149863.P703652389911517124

`A307597(n)+A024417(A151055(n))`
-/

namespace A149863.P703652389911517124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307597 n + A024417 (A151055 n).toNat

end

end A149863.P703652389911517124

/-!
# A149864: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, -1), (0, 0, 1), (0, 1, 0), (1, -1, 0)}.

The programs for A149864, there is no canonical definition to state claims against.
-/

/-! ## A149864.P11913300708443839456

`A149865(A073788(n))`
-/

namespace A149864.P11913300708443839456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149865 (A073788 n).toNat

end

end A149864.P11913300708443839456

/-! ## A149864.P9710437093966569289

`A149865(A171596(n))`
-/

namespace A149864.P9710437093966569289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149865 (A171596 n).toNat

end

end A149864.P9710437093966569289

/-! ## A149864.P14783304122169434684

`A149865(A004868(n+1))`
-/

namespace A149864.P14783304122169434684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149865 (A004868 (n + 1)).toNat

end

end A149864.P14783304122169434684

/-!
# A149865: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, -1), (0, 0, 1), (0, 1, 0), (1, 0, -1)}.

The programs for A149865, there is no canonical definition to state claims against.
-/

/-! ## A149865.P11800988134065024530

`A008620(A171185(n)+A119975(n))`
-/

namespace A149865.P11800988134065024530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (A171185 n + A119975 n).toNat

end

end A149865.P11800988134065024530

/-! ## A149865.P8232954626076672730

`A008620(A171185(n)+A098518(n)+A084601(n))`
-/

namespace A149865.P8232954626076672730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (A171185 n + (A098518 n + A084601 n)).toNat

end

end A149865.P8232954626076672730

/-! ## A149865.P1393764402158878462

`A008620(A171185(n)+A098518(n+1)-2*A098521(n))`
-/

namespace A149865.P1393764402158878462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (A171185 n + (A098518 (n + 1) - 2 * A098521 n)).toNat

end

end A149865.P1393764402158878462

/-!
# A149866: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, -1), (0, 0, 1), (0, 1, 0), (1, -1, 0)}.

The programs for A149866, there is no canonical definition to state claims against.
-/

/-! ## A149866.P8364074861510335009

`A149867(n)-A185264(A000217(n))`
-/

namespace A149866.P8364074861510335009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149867 n - A185264 (A000217 n).toNat

end

end A149866.P8364074861510335009

/-! ## A149866.P10332091341446613032

`A149867(n^or(1, floor(n/π)))`
-/

namespace A149866.P10332091341446613032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149867 (SequenceMachineLib.roundAway ((n : ℚ) ^ (Int.lor 1 ⌊(n : ℝ) / Real.pi⌋ : ℤ))).toNat

end

end A149866.P10332091341446613032

/-! ## A149866.P4247103269872586983

`A149867(A073788(n))`
-/

namespace A149866.P4247103269872586983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149867 (A073788 n).toNat

end

end A149866.P4247103269872586983

/-!
# A149867: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 1, -1), (0, 0, 1), (0, 1, 0), (1, -1, 0)}.

The programs for A149867, there is no canonical definition to state claims against.
-/

/-! ## A149867.P17916887732559361050

`A185264(A000217(n))+A149866(n)`
-/

namespace A149867.P17916887732559361050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185264 (A000217 n).toNat + A149866 n

end

end A149867.P17916887732559361050

/-!
# A149868: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, -1, 1), (0, 0, 1), (0, 1, -1), (1, 0, 0)}.

The programs for A149868, there is no canonical definition to state claims against.
-/

/-! ## A149868.P3066934082017500892

`A340764(A150435(n+1))`
-/

namespace A149868.P3066934082017500892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340764 (A150435 (n + 1)).toNat

end

end A149868.P3066934082017500892

/-! ## A149868.P18369793382778939880

`A340764(A150485(n+1))`
-/

namespace A149868.P18369793382778939880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340764 (A150485 (n + 1)).toNat

end

end A149868.P18369793382778939880

/-! ## A149868.P7457483104854270888

`A340764(A150486(n+1))`
-/

namespace A149868.P7457483104854270888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340764 (A150486 (n + 1)).toNat

end

end A149868.P7457483104854270888

/-!
# A149869: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, -1, 0), (-1, 1, -1), (1, 0, 0), (1, 0, 1)}.

The programs for A149869, there is no canonical definition to state claims against.
-/

/-! ## A149869.P9910879233527903330

`∏{p}[A149870(n)², #]`
-/

namespace A149869.P9910879233527903330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149870 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A149869.P9910879233527903330

/-! ## A149869.P13535958097137875574

`∏{p}[A149871(n)², #]`
-/

namespace A149869.P13535958097137875574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149871 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A149869.P13535958097137875574

/-! ## A149869.P8539545679874248815

`A149870(A073788(n))`
-/

namespace A149869.P8539545679874248815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149870 (A073788 n).toNat

end

end A149869.P8539545679874248815

/-!
# A149870: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, -1), (0, 0, 1), (0, 1, 1), (1, -1, -1)}.

The programs for A149870, there is no canonical definition to state claims against.
-/

/-! ## A149870.P4900508858500080324

`A149871(A002998(n))`
-/

namespace A149870.P4900508858500080324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149871 (A002998 n).toNat

end

end A149870.P4900508858500080324

/-! ## A149870.P5952600812225658649

`A149871(A024664(n))`
-/

namespace A149870.P5952600812225658649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149871 (A024664 n).toNat

end

end A149870.P5952600812225658649

/-! ## A149870.P13256553609343482353

`A149871(A039723(n))`
-/

namespace A149870.P13256553609343482353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149871 (A039723 n).toNat

end

end A149870.P13256553609343482353

/-! ## A149870.P8715366941397153539

`A149871(A046469(n))`
-/

namespace A149870.P8715366941397153539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149871 (A046469 n).toNat

end

end A149870.P8715366941397153539

/-! ## A149870.P10697880753124446515

`A149871(A051022(n))`
-/

namespace A149870.P10697880753124446515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149871 (A051022 n).toNat

end

end A149870.P10697880753124446515

/-!
# A149872: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, -1, 1), (-1, 1, -1), (1, 0, 0), (1, 0, 1)}.

The programs for A149872, there is no canonical definition to state claims against.
-/

/-! ## A149872.P7237432454962725026

`∏{p}[A149873(n)², #]`
-/

namespace A149872.P7237432454962725026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149873 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A149872.P7237432454962725026

/-! ## A149872.P15319454019494725340

`∏{p}[A149874(n)², #]`
-/

namespace A149872.P15319454019494725340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149874 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A149872.P15319454019494725340

/-! ## A149872.P2142469867674264203

`A149873(A073788(n))`
-/

namespace A149872.P2142469867674264203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149873 (A073788 n).toNat

end

end A149872.P2142469867674264203

/-!
# A149873: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, -1), (0, 0, 1), (0, 1, 1), (1, -1, -1)}.

The programs for A149873, there is no canonical definition to state claims against.
-/

/-! ## A149873.P13103964375582125500

`A149874(A073789(n))`
-/

namespace A149873.P13103964375582125500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149874 (A073789 n).toNat

end

end A149873.P13103964375582125500

/-! ## A149873.P14536408953394169649

`A127287(A149874(n))`
-/

namespace A149873.P14536408953394169649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127287 (A149874 n).toNat

end

end A149873.P14536408953394169649

/-! ## A149873.P6920718671336271598

`A149874(A171644(n))`
-/

namespace A149873.P6920718671336271598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149874 (A171644 n).toNat

end

end A149873.P6920718671336271598

/-! ## A149873.P2203816433502405628

`A149874(A004869(n+1))`
-/

namespace A149873.P2203816433502405628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149874 (A004869 (n + 1)).toNat

end

end A149873.P2203816433502405628

/-!
# A149875: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, -1, 1), (-1, 1, -1), (1, 0, 0), (1, 0, 1)}.

The programs for A149875, there is no canonical definition to state claims against.
-/

/-! ## A149875.P16552196957366732503

`A336417(n)+A008616(A070766(n+3))`
-/

namespace A149875.P16552196957366732503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336417 n + A008616 (A070766 (n + 3)).toNat

end

end A149875.P16552196957366732503

/-! ## A149875.P7809551086794241955

`A305194((n+1)²+n)`
-/

namespace A149875.P7809551086794241955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305194 ((n + 1) ^ 2 + n)

end

end A149875.P7809551086794241955

/-!
# A149876: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (0, 1, -1), (1, 0, 0), (1, 1, 0)}.

The programs for A149876, there is no canonical definition to state claims against.
-/

/-! ## A149876.P3674511261427791048

`A039708((n+1)*ceil(∑[3^(n-2)]))`
-/

namespace A149876.P3674511261427791048
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ ((n : ℤ) - 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039708 ((n + 1 : ℤ) * ⌈∑ j ∈ Finset.range (n + 1), f1 j⌉).toNat

end

end A149876.P3674511261427791048

/-! ## A149876.P11596216588162831652

`A108141(A071731(n))`
-/

namespace A149876.P11596216588162831652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108141 (A071731 n).toNat

end

end A149876.P11596216588162831652

/-! ## A149876.P9800622171461040691

`record[A081753(A123611(n))]`
-/

namespace A149876.P9800622171461040691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081753 (A123611 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A149876.P9800622171461040691

/-!
# A149877: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, 0, 0), (0, 0, 1), (0, 1, 0), (1, -1, 0)}.

The programs for A149877, there is no canonical definition to state claims against.
-/

/-! ## A149877.P14767472158834921031

`A149878(n)-A264668(A001710(n))`
-/

namespace A149877.P14767472158834921031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149878 n - A264668 (A001710 n).toNat

end

end A149877.P14767472158834921031

/-! ## A149877.P11923219217804560470

`A149878(A073788(n))`
-/

namespace A149877.P11923219217804560470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149878 (A073788 n).toNat

end

end A149877.P11923219217804560470

/-! ## A149877.P18110775387945765976

`A149878(A171596(n))`
-/

namespace A149877.P18110775387945765976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149878 (A171596 n).toNat

end

end A149877.P18110775387945765976

/-!
# A149878: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, 0, 1), (0, 0, 1), (0, 1, 0), (1, -1, 0)}.

The programs for A149878, there is no canonical definition to state claims against.
-/

/-! ## A149878.P6245724893171994213

`A264668(A001710(n))+A149877(n)`
-/

namespace A149878.P6245724893171994213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264668 (A001710 n).toNat + A149877 n

end

end A149878.P6245724893171994213

/-! ## A149878.P7153083515315735278

`A264668(A001710(n))-(A264668(n)-A149877(n))`
-/

namespace A149878.P7153083515315735278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264668 (A001710 n).toNat - (A264668 n - A149877 n)

end

end A149878.P7153083515315735278

/-!
# A149879: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (0, 1, -1), (1, 0, 0), (1, 0, 1)}.

The programs for A149879, there is no canonical definition to state claims against.
-/

/-! ## A149879.P15191370245378390072

`A108954(and(n, n-1)+4^n)`
-/

namespace A149879.P15191370245378390072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108954 (Int.land (n : ℤ) ((n : ℤ) - 1) + (4 ^ n : ℤ)).toNat

end

end A149879.P15191370245378390072

/-! ## A149879.P11896049585343380007

`A108954(or(4^n, and(n, n-1)))`
-/

namespace A149879.P11896049585343380007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108954 (Int.lor (4 ^ n : ℤ) (Int.land (n : ℤ) ((n : ℤ) - 1))).toNat

end

end A149879.P11896049585343380007

/-! ## A149879.P11742316011805772379

`A108954(A000079(n)²+and(n, n-1))`
-/

namespace A149879.P11742316011805772379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108954 (A000079 n ^ 2 + Int.land (n : ℤ) ((n : ℤ) - 1)).toNat

end

end A149879.P11742316011805772379

/-!
# A149880: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (0, 0, 1), (0, 1, 0), (1, 1, -1)}.

The programs for A149880, there is no canonical definition to state claims against.
-/

/-! ## A149880.P9515533807869453309

`A008619(A141752(n)+A030195(n))`
-/

namespace A149880.P9515533807869453309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A141752 n + A030195 n).toNat

end

end A149880.P9515533807869453309

/-! ## A149880.P17413547703141860027

`A156562(A104629(n))`
-/

namespace A149880.P17413547703141860027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156562 (A104629 n).toNat

end

end A149880.P17413547703141860027

/-! ## A149880.P10733398460558123308

`A226762(A099393(n))`
-/

namespace A149880.P10733398460558123308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226762 (A099393 n).toNat

end

end A149880.P10733398460558123308

/-!
# A149881: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, 0, 1), (0, 0, 1), (0, 1, 0), (1, 0, -1)}.

The programs for A149881, there is no canonical definition to state claims against.
-/

/-! ## A149881.P12064510938138676547

`A289498(A097163(2*n)+6)`
-/

namespace A149881.P12064510938138676547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289498 (A097163 (2 * n) + 6).toNat

end

end A149881.P12064510938138676547

/-! ## A149881.P10686870991708166942

`A247176(ceil((A304357(n+3)+1)/2))`
-/

namespace A149881.P10686870991708166942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247176 ⌈(A304357 (n + 3) + 1 : ℚ) / 2⌉.toNat

end

end A149881.P10686870991708166942

/-!
# A149882: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, 0, 1), (0, 1, 0), (1, 0, 0), (1, 1, -1)}.

The programs for A149882, there is no canonical definition to state claims against.
-/

/-! ## A149882.P17325513372650081181

`A005374(n)+A005374(A278394(n))`
-/

namespace A149882.P17325513372650081181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005374 n + A005374 (A278394 n).toNat

end

end A149882.P17325513372650081181

/-! ## A149882.P140004002496173238

`∑[A081753(A189315(n))]`
-/

namespace A149882.P140004002496173238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081753 (A189315 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A149882.P140004002496173238

/-! ## A149882.P14707969094526530484

`A060646(A370624(n+1))`
-/

namespace A149882.P14707969094526530484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060646 (A370624 (n + 1)).toNat

end

end A149882.P14707969094526530484

/-!
# A149883: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, -1, 0), (0, 0, 1), (0, 1, 0), (1, 1, -1)}.

The programs for A149883, there is no canonical definition to state claims against.
-/

/-! ## A149883.P13140554249496544665

`A008621(A108958(n+1)+A048655(n))`
-/

namespace A149883.P13140554249496544665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (A108958 (n + 1) + A048655 n).toNat

end

end A149883.P13140554249496544665

/-! ## A149883.P2085940711687350456

`A061017(∑[∑[A064914(n)]])`
-/

namespace A149883.P2085940711687350456
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064914 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061017 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A149883.P2085940711687350456

/-! ## A149883.P7287282129477300522

`A195177(A123291(n+4)+A049871(2*n+1))`
-/

namespace A149883.P7287282129477300522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195177 (A123291 (n + 4) + A049871 (2 * n + 1)).toNat

end

end A149883.P7287282129477300522

/-!
# A149884: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, -1, 1), (0, 1, -1), (1, 0, 0), (1, 1, 0)}.

The programs for A149884, there is no canonical definition to state claims against.
-/

/-! ## A149884.P6226015485668678641

`floor(A173708(Δ[A014138(n)])/2)`
-/

namespace A149884.P6226015485668678641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014138 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A173708 (f1 (n + 1) - f1 n).toNat : ℚ) / 2⌋

end

end A149884.P6226015485668678641

/-! ## A149884.P8657185301399514646

`A247911(A000984(n)+gcd(n, ∑[n]))`
-/

namespace A149884.P8657185301399514646
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247911 (A000984 n + (Nat.gcd n (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ)).toNat

end

end A149884.P8657185301399514646

/-!
# A149885: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, -1), (0, 0, 1), (1, -1, 0), (1, 0, 1)}.

The programs for A149885, there is no canonical definition to state claims against.
-/

/-! ## A149885.P3677590732618598608

`A149886(A002998(n))`
-/

namespace A149885.P3677590732618598608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149886 (A002998 n).toNat

end

end A149885.P3677590732618598608

/-! ## A149885.P4774120372377166267

`A149886(A024664(n))`
-/

namespace A149885.P4774120372377166267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149886 (A024664 n).toNat

end

end A149885.P4774120372377166267

/-! ## A149885.P11250594145414047477

`A149886(A039723(n))`
-/

namespace A149885.P11250594145414047477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149886 (A039723 n).toNat

end

end A149885.P11250594145414047477

/-! ## A149885.P11273916884652745695

`A149886(A046469(n))`
-/

namespace A149885.P11273916884652745695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149886 (A046469 n).toNat

end

end A149885.P11273916884652745695

/-! ## A149885.P4688577891432219980

`A149886(A051022(n))`
-/

namespace A149885.P4688577891432219980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149886 (A051022 n).toNat

end

end A149885.P4688577891432219980

/-!
# A149887: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 0), (0, 0, 1), (0, 1, 0), (1, 0, -1)}.

The programs for A149887, there is no canonical definition to state claims against.
-/

/-! ## A149887.P14409384809875560401

`A256502(A275046(n)+n)`
-/

namespace A149887.P14409384809875560401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256502 (A275046 n + (n : ℤ)).toNat

end

end A149887.P14409384809875560401

/-! ## A149887.P1478044063800063354

`A061017(A026748(n)-n)`
-/

namespace A149887.P1478044063800063354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061017 (A026748 n - (n : ℤ)).toNat

end

end A149887.P1478044063800063354

/-! ## A149887.P7901730983522296522

`∑[A254011(A254030(n)+2)]`
-/

namespace A149887.P7901730983522296522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254011 (A254030 n + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A149887.P7901730983522296522

/-!
# A149888: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, 0), (0, 0, 1), (0, 1, 0), (1, 0, -1)}.

The programs for A149888, there is no canonical definition to state claims against.
-/

/-! ## A149888.P10487114817186792913

`A065033(A148940(n)+A048117(n+2))`
-/

namespace A149888.P10487114817186792913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A148940 n + A048117 (n + 2)).toNat

end

end A149888.P10487114817186792913

/-! ## A149888.P5064189555803452593

`A122005(A371818(n))`
-/

namespace A149888.P5064189555803452593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122005 (A371818 n).toNat

end

end A149888.P5064189555803452593

/-! ## A149888.P3577393395522773834

`record[A081753(A173271(n))]`
-/

namespace A149888.P3577393395522773834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081753 (A173271 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A149888.P3577393395522773834

/-!
# A149889: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, -1, 1), (0, 1, -1), (1, 0, 0), (1, 0, 1)}.

The programs for A149889, there is no canonical definition to state claims against.
-/

/-! ## A149889.P8728170303204790592

`A149890(A073789(n))`
-/

namespace A149889.P8728170303204790592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149890 (A073789 n).toNat

end

end A149889.P8728170303204790592

/-! ## A149889.P11557676854164391413

`A127287(A149890(n))`
-/

namespace A149889.P11557676854164391413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127287 (A149890 n).toNat

end

end A149889.P11557676854164391413

/-! ## A149889.P8925245675306756938

`A127287(A149891(n))`
-/

namespace A149889.P8925245675306756938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127287 (A149891 n).toNat

end

end A149889.P8925245675306756938

/-! ## A149889.P6305559575229855308

`A149890(A171644(n))`
-/

namespace A149889.P6305559575229855308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149890 (A171644 n).toNat

end

end A149889.P6305559575229855308

/-!
# A149890: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, -1), (0, 0, 1), (0, 1, 1), (1, -1, 0)}.

The programs for A149890, there is no canonical definition to state claims against.
-/

/-! ## A149890.P12871659561164377513

`A149891(A055648(n))`
-/

namespace A149890.P12871659561164377513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149891 (A055648 n).toNat

end

end A149890.P12871659561164377513

/-! ## A149890.P2623610015209948859

`record[A149891(A332104(n))]`
-/

namespace A149890.P2623610015209948859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149891 (A332104 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A149890.P2623610015209948859

/-! ## A149890.P5930896107180401731

`A149891(A004874(n+1))`
-/

namespace A149890.P5930896107180401731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149891 (A004874 (n + 1)).toNat

end

end A149890.P5930896107180401731

/-! ## A149890.P6377990189721558702

`A149891(A004885(n+1))`
-/

namespace A149890.P6377990189721558702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149891 (A004885 (n + 1)).toNat

end

end A149890.P6377990189721558702

/-! ## A149890.P858382974610064084

`A149891(A004896(n+1))`
-/

namespace A149890.P858382974610064084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149891 (A004896 (n + 1)).toNat

end

end A149890.P858382974610064084

/-!
# A149892: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, -1, 1), (0, 0, 1), (0, 1, 0), (1, 1, -1)}.

The programs for A149892, there is no canonical definition to state claims against.
-/

/-! ## A149892.P3763139740971127409

`A255072(A149068(n+1))`
-/

namespace A149892.P3763139740971127409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255072 (A149068 (n + 1)).toNat

end

end A149892.P3763139740971127409

/-! ## A149892.P3870617204596307597

`A390395(A148393(n+1))`
-/

namespace A149892.P3870617204596307597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390395 (A148393 (n + 1)).toNat

end

end A149892.P3870617204596307597

/-! ## A149892.P2255679806969712348

`∑[A081753(A052944(n)²)]`
-/

namespace A149892.P2255679806969712348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081753 (A052944 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A149892.P2255679806969712348

/-!
# A149893: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 0), (0, 0, 1), (0, 1, 0), (1, 0, -1)}.

The programs for A149893, there is no canonical definition to state claims against.
-/

/-! ## A149893.P3458575369203534595

`A138194(A150505(n+1))`
-/

namespace A149893.P3458575369203534595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138194 (A150505 (n + 1)).toNat

end

end A149893.P3458575369203534595

/-! ## A149893.P6404720248716157891

`A210357(A193111(n+1))`
-/

namespace A149893.P6404720248716157891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210357 (A193111 (n + 1)).toNat

end

end A149893.P6404720248716157891

/-! ## A149893.P15479544643874583506

`floor(A120914(n²)/A164206(n))`
-/

namespace A149893.P15479544643874583506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A120914 (n ^ 2) : ℚ) / (A164206 n : ℚ)⌋

end

end A149893.P15479544643874583506

/-!
# A149894: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 1, 0), (0, 0, 1), (0, 1, 0), (1, 0, -1)}.

The programs for A149894, there is no canonical definition to state claims against.
-/

/-! ## A149894.P10204890824788621437

`A220658(Δ[A150109(n)])`
-/

namespace A149894.P10204890824788621437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150109 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220658 (f1 (n + 1) - f1 n).toNat

end

end A149894.P10204890824788621437

/-! ## A149894.P14973699386328559113

`A127763(A149068(n+1))`
-/

namespace A149894.P14973699386328559113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127763 (A149068 (n + 1)).toNat

end

end A149894.P14973699386328559113

/-! ## A149894.P14222795949144397853

`A264749(A150484(n+1))`
-/

namespace A149894.P14222795949144397853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264749 (A150484 (n + 1)).toNat

end

end A149894.P14222795949144397853

/-!
# A149895: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 1), (0, 0, 1), (0, 1, 0), (1, 0, -1)}.

The programs for A149895, there is no canonical definition to state claims against.
-/

/-! ## A149895.P18383427256470724809

`A269381(A151081(n))`
-/

namespace A149895.P18383427256470724809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269381 (A151081 n).toNat

end

end A149895.P18383427256470724809

/-! ## A149895.P9980794877161379544

`A210357(∑[A149433(n)])`
-/

namespace A149895.P9980794877161379544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149433 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210357 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A149895.P9980794877161379544

/-! ## A149895.P5668607328591265529

`A210357(A119370(n+1))`
-/

namespace A149895.P5668607328591265529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210357 (A119370 (n + 1)).toNat

end

end A149895.P5668607328591265529

/-!
# A149896: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, 1), (0, 0, 1), (0, 1, 0), (1, 0, -1)}.

The programs for A149896, there is no canonical definition to state claims against.
-/

/-! ## A149896.P4830167744130998341

`∑[A127723(A001006(n))-1]`
-/

namespace A149896.P4830167744130998341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127723 (A001006 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A149896.P4830167744130998341

/-! ## A149896.P7695125018440421893

`A104779(n)+A008616(A054719(n))`
-/

namespace A149896.P7695125018440421893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104779 n + A008616 (A054719 n).toNat

end

end A149896.P7695125018440421893

/-! ## A149896.P11573166407280061434

`A097992(A293606(n+2)+A001405(2*(n+1)))`
-/

namespace A149896.P11573166407280061434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097992 (A293606 (n + 2) + A001405 (2 * (n + 1))).toNat

end

end A149896.P11573166407280061434

/-!
# A149897: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 1), (0, 0, 1), (0, 1, 0), (1, 0, -1)}.

The programs for A149897, there is no canonical definition to state claims against.
-/

/-! ## A149897.P15776594146805032074

`A316964(A149904(n))`
-/

namespace A149897.P15776594146805032074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316964 (A149904 n).toNat

end

end A149897.P15776594146805032074

/-! ## A149897.P7978298626052345904

`A127287(∑[A148986(n)])`
-/

namespace A149897.P7978298626052345904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148986 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127287 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A149897.P7978298626052345904

/-! ## A149897.P17860489406058604249

`A138194(A150509(n+1))`
-/

namespace A149897.P17860489406058604249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138194 (A150509 (n + 1)).toNat

end

end A149897.P17860489406058604249

/-!
# A149898: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 1, 1), (0, 0, 1), (0, 1, 0), (1, 0, -1)}.

The programs for A149898, there is no canonical definition to state claims against.
-/

/-! ## A149898.P16797364381293082564

`A264749(A026861(n+1)+3)`
-/

namespace A149898.P16797364381293082564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264749 (A026861 (n + 1) + 3).toNat

end

end A149898.P16797364381293082564

/-! ## A149898.P11972295029861675943

`record[A008616(Δ[A245158(n+1)])]`
-/

namespace A149898.P11972295029861675943
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245158 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008616 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A149898.P11972295029861675943

/-!
# A149899: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 0), (0, 1, 0), (0, 1, 1), (1, -1, -1)}.

The programs for A149899, there is no canonical definition to state claims against.
-/

/-! ## A149899.P4777191181953333991

`A116922(A148835(n+1))`
-/

namespace A149899.P4777191181953333991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116922 (A148835 (n + 1)).toNat

end

end A149899.P4777191181953333991

/-! ## A149899.P9560243888870633126

`A225545(A277178(n)+n)`
-/

namespace A149899.P9560243888870633126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225545 (A277178 n + (n : ℤ)).toNat

end

end A149899.P9560243888870633126

/-! ## A149899.P5240705034167055293

`or(record[A136868(n)], A149890(n))`
-/

namespace A149899.P5240705034167055293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136868 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A149890 n)

end

end A149899.P5240705034167055293

