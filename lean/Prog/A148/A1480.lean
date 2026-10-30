import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C034
import Seq.B000.C038
import Seq.B000.C040
import Seq.B000.C043
import Seq.B000.C044
import Seq.B000.C045
import Seq.B000.C046
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
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B003.C000
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B006.C000
import Seq.B006.C001
import Seq.B008.C000
import Seq.B009.C000
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
# A148000: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, -1), (0, 0, 1), (1, 0, -1)}.

The programs for A148000, there is no canonical definition to state claims against.
-/

/-! ## A148000.P5449012381694385172

`A004526(A148048(n)+A001405(n))`
-/

namespace A148000.P5449012381694385172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A148048 n + A001405 n).toNat

end

end A148000.P5449012381694385172

/-! ## A148000.P5153018139461237120

`A065033(A148048(n)+A001405(n))`
-/

namespace A148000.P5153018139461237120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A148048 n + A001405 n).toNat

end

end A148000.P5153018139461237120

/-! ## A148000.P2193895458076685348

`A065033(A001405(n)-(1-A148048(n)))`
-/

namespace A148000.P2193895458076685348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A001405 n - (1 - A148048 n)).toNat

end

end A148000.P2193895458076685348

/-! ## A148000.P10105340385505201945

`A148001(n)-A185255(A181573(n+1))`
-/

namespace A148000.P10105340385505201945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148001 n - A185255 (A181573 (n + 1)).toNat

end

end A148000.P10105340385505201945

/-! ## A148000.P4536649981200778665

`A148001(n)-A185255(A000201(2*n+3))`
-/

namespace A148000.P4536649981200778665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148001 n - A185255 (A000201 (2 * n + 3)).toNat

end

end A148000.P4536649981200778665

/-!
# A148001: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 1, -1), (0, 0, 1), (1, 0, -1)}.

The programs for A148001, there is no canonical definition to state claims against.
-/

/-! ## A148001.P2207125816143572988

`A185255(A181573(n+1))+A148000(n)`
-/

namespace A148001.P2207125816143572988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185255 (A181573 (n + 1)).toNat + A148000 n

end

end A148001.P2207125816143572988

/-! ## A148001.P15106539851278968838

`xor(A148003(n), A321803(A222193(n+1)))`
-/

namespace A148001.P15106539851278968838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A148003 n) (A321803 (A222193 (n + 1)).toNat)

end

end A148001.P15106539851278968838

/-!
# A148002: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, -1, 0), (-1, 1, -1), (0, 0, 1), (1, 0, -1)}.

The programs for A148002, there is no canonical definition to state claims against.
-/

/-! ## A148002.P9908942975390056913

`or(A148001(n), A165033(A032051(n)))`
-/

namespace A148002.P9908942975390056913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A148001 n) (A165033 (A032051 n).toNat)

end

end A148002.P9908942975390056913

/-! ## A148002.P16575022801353882071

`or(A148001(n), A204016(A053497(n)))`
-/

namespace A148002.P16575022801353882071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A148001 n) (A204016 (A053497 n).toNat)

end

end A148002.P16575022801353882071

/-! ## A148002.P12607694961116570433

`A148003(n)-A185255(A092885(n+1))`
-/

namespace A148002.P12607694961116570433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148003 n - A185255 (A092885 (n + 1)).toNat

end

end A148002.P12607694961116570433

/-! ## A148002.P16999847641749761582

`A148003(n)-A185255(A181573(n+1))`
-/

namespace A148002.P16999847641749761582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148003 n - A185255 (A181573 (n + 1)).toNat

end

end A148002.P16999847641749761582

/-! ## A148002.P15164846640646739943

`A148003(n)-A185255(A000201(2*n+3))`
-/

namespace A148002.P15164846640646739943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148003 n - A185255 (A000201 (2 * n + 3)).toNat

end

end A148002.P15164846640646739943

/-!
# A148003: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, -1, 1), (-1, 1, -1), (0, 0, 1), (1, 0, -1)}.

The programs for A148003, there is no canonical definition to state claims against.
-/

/-! ## A148003.P13722038385081613066

`A185255(A092885(n+1))+A148002(n)`
-/

namespace A148003.P13722038385081613066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185255 (A092885 (n + 1)).toNat + A148002 n

end

end A148003.P13722038385081613066

/-! ## A148003.P5893785339699195827

`A185255(A181573(n+1))+A148002(n)`
-/

namespace A148003.P5893785339699195827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185255 (A181573 (n + 1)).toNat + A148002 n

end

end A148003.P5893785339699195827

/-! ## A148003.P7670422317825421716

`xor(A148001(n), A321803(A222193(n+1)))`
-/

namespace A148003.P7670422317825421716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A148001 n) (A321803 (A222193 (n + 1)).toNat)

end

end A148003.P7670422317825421716

/-! ## A148003.P16450715045667526569

`A185255(A000201(2*n+3))+A148002(n)`
-/

namespace A148003.P16450715045667526569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185255 (A000201 (2 * n + 3)).toNat + A148002 n

end

end A148003.P16450715045667526569

/-!
# A148005: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 1), (-1, 1, -1), (1, 0, 0)}.

The programs for A148005, there is no canonical definition to state claims against.
-/

/-! ## A148005.P12292968428274733529

`A148508(n)-A004526(A148530(n))`
-/

namespace A148005.P12292968428274733529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148508 n - A004526 (A148530 n).toNat

end

end A148005.P12292968428274733529

/-! ## A148005.P11089032652987669221

`A148006(n)-A185284(A000217(n))`
-/

namespace A148005.P11089032652987669221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148006 n - A185284 (A000217 n).toNat

end

end A148005.P11089032652987669221

/-! ## A148005.P1849253612030995157

`A148007(n)-2*A185284(A000217(n))`
-/

namespace A148005.P1849253612030995157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148007 n - 2 * A185284 (A000217 n).toNat

end

end A148005.P1849253612030995157

/-!
# A148006: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 1), (-1, 1, -1), (1, 0, 0)}.

The programs for A148006, there is no canonical definition to state claims against.
-/

/-! ## A148006.P659373857862283813

`A185284(∑[n])+A148005(n)`
-/

namespace A148006.P659373857862283813
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 (∑ j ∈ Finset.range (n + 1), f1 j) + A148005 n

end

end A148006.P659373857862283813

/-! ## A148006.P14974202894049186752

`A148007(n)-A185284(A000217(n))`
-/

namespace A148006.P14974202894049186752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148007 n - A185284 (A000217 n).toNat

end

end A148006.P14974202894049186752

/-! ## A148006.P12402144757345128002

`A148008(n)-2*A185284(A000217(n))`
-/

namespace A148006.P12402144757345128002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148008 n - 2 * A185284 (A000217 n).toNat

end

end A148006.P12402144757345128002

/-! ## A148006.P5106411361520707611

`A148007(n)-A185284(2*A047487(n+1))`
-/

namespace A148006.P5106411361520707611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148007 n - A185284 (2 * A047487 (n + 1)).toNat

end

end A148006.P5106411361520707611

/-!
# A148007: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, -1, 0), (-1, 0, 1), (-1, 1, -1), (1, 0, 0)}.

The programs for A148007, there is no canonical definition to state claims against.
-/

/-! ## A148007.P7797719099372418431

`A185284(A000217(n))+A148006(n)`
-/

namespace A148007.P7797719099372418431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 (A000217 n).toNat + A148006 n

end

end A148007.P7797719099372418431

/-! ## A148007.P9668625388891514911

`A148008(n)-A185284(A000217(n))`
-/

namespace A148007.P9668625388891514911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148008 n - A185284 (A000217 n).toNat

end

end A148007.P9668625388891514911

/-! ## A148007.P7021637134259597618

`A148005(n)+2*A185284(A000217(n))`
-/

namespace A148007.P7021637134259597618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148005 n + 2 * A185284 (A000217 n).toNat

end

end A148007.P7021637134259597618

/-! ## A148007.P11683953520344510570

`A148009(n)-A185255(A340267(n+3))`
-/

namespace A148007.P11683953520344510570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148009 n - A185255 (A340267 (n + 3)).toNat

end

end A148007.P11683953520344510570

/-!
# A148008: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, -1, 1), (-1, 0, 1), (-1, 1, -1), (1, 0, 0)}.

The programs for A148008, there is no canonical definition to state claims against.
-/

/-! ## A148008.P9608916585337365969

`A185284(A000217(n))+A148007(n)`
-/

namespace A148008.P9608916585337365969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 (A000217 n).toNat + A148007 n

end

end A148008.P9608916585337365969

/-! ## A148008.P5189373061477668292

`A148006(n)+2*A185284(A000217(n))`
-/

namespace A148008.P5189373061477668292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148006 n + 2 * A185284 (A000217 n).toNat

end

end A148008.P5189373061477668292

/-! ## A148008.P639067526532536341

`A148011(n)-A185255(A340267(n+3))`
-/

namespace A148008.P639067526532536341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148011 n - A185255 (A340267 (n + 3)).toNat

end

end A148008.P639067526532536341

/-! ## A148008.P14967389897017840932

`A185284(2*A047487(n+1))+A148007(n)`
-/

namespace A148008.P14967389897017840932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 (2 * A047487 (n + 1)).toNat + A148007 n

end

end A148008.P14967389897017840932

/-!
# A148009: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, -1), (0, -1, 1), (0, 1, 0), (1, -1, -1)}.

The programs for A148009, there is no canonical definition to state claims against.
-/

/-! ## A148009.P2949937950806934930

`A148010(n)-A185255(A340267(n+2))`
-/

namespace A148009.P2949937950806934930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148010 n - A185255 (A340267 (n + 2)).toNat

end

end A148009.P2949937950806934930

/-! ## A148009.P15239687940261564186

`A148011(n)-A185284(A000217(n))`
-/

namespace A148009.P15239687940261564186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148011 n - A185284 (A000217 n).toNat

end

end A148009.P15239687940261564186

/-! ## A148009.P7769776682128706050

`A148010(n)-A185255(A117220(n+1))`
-/

namespace A148009.P7769776682128706050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148010 n - A185255 (A117220 (n + 1)).toNat

end

end A148009.P7769776682128706050

/-! ## A148009.P6965157410600407820

`A148010(n)-A185255(A181573(n+1))`
-/

namespace A148009.P6965157410600407820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148010 n - A185255 (A181573 (n + 1)).toNat

end

end A148009.P6965157410600407820

/-! ## A148009.P306297904688887517

`A185255(A340267(n+3))+A148007(n)`
-/

namespace A148009.P306297904688887517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185255 (A340267 (n + 3)).toNat + A148007 n

end

end A148009.P306297904688887517

/-!
# A148010: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 1), (-1, 1, -1), (1, -1, -1), (1, 0, 0)}.

The programs for A148010, there is no canonical definition to state claims against.
-/

/-! ## A148010.P6006128505133037918

`A185255(A340267(n+2))+A148009(n)`
-/

namespace A148010.P6006128505133037918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185255 (A340267 (n + 2)).toNat + A148009 n

end

end A148010.P6006128505133037918

/-! ## A148010.P18249446597611711131

`or(A148009(n), A185284((2-n)²))`
-/

namespace A148010.P18249446597611711131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A148009 n) (A185284 ((2 - (n : ℤ)) ^ 2).toNat)

end

end A148010.P18249446597611711131

/-! ## A148010.P12456593491467925686

`A185255(A001037(n))+A148009(n)`
-/

namespace A148010.P12456593491467925686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185255 (A001037 n).toNat + A148009 n

end

end A148010.P12456593491467925686

/-! ## A148010.P8824839817108015086

`A185255(A018693(n+1))+A148009(n)`
-/

namespace A148010.P8824839817108015086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185255 (A018693 (n + 1)).toNat + A148009 n

end

end A148010.P8824839817108015086

/-! ## A148010.P942923539648793558

`A185255(A117220(n+1))+A148009(n)`
-/

namespace A148010.P942923539648793558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185255 (A117220 (n + 1)).toNat + A148009 n

end

end A148010.P942923539648793558

/-!
# A148011: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, -1), (0, 0, 1), (0, 1, -1), (1, -1, -1)}.

The programs for A148011, there is no canonical definition to state claims against.
-/

/-! ## A148011.P6551613545822631013

`A148012(n)-A185255(A340267(n+2))`
-/

namespace A148011.P6551613545822631013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148012 n - A185255 (A340267 (n + 2)).toNat

end

end A148011.P6551613545822631013

/-! ## A148011.P10105335496281812937

`A185284((2-n)²)+A148009(n)`
-/

namespace A148011.P10105335496281812937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 ((2 - (n : ℤ)) ^ 2).toNat + A148009 n

end

end A148011.P10105335496281812937

/-! ## A148011.P3642966600540572664

`A148009(n)+A025443(A072880(n+1))`
-/

namespace A148011.P3642966600540572664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148009 n + A025443 (A072880 (n + 1)).toNat

end

end A148011.P3642966600540572664

/-! ## A148011.P928570791264368290

`A148012(n)-A185255(A117220(n+1))`
-/

namespace A148011.P928570791264368290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148012 n - A185255 (A117220 (n + 1)).toNat

end

end A148011.P928570791264368290

/-!
# A148012: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 1), (-1, 1, -1), (1, -1, -1), (1, 0, 0)}.

The programs for A148012, there is no canonical definition to state claims against.
-/

/-! ## A148012.P11824591103513278432

`A185255(A340267(n+2))+A148011(n)`
-/

namespace A148012.P11824591103513278432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185255 (A340267 (n + 2)).toNat + A148011 n

end

end A148012.P11824591103513278432

/-! ## A148012.P10832759061987638344

`A185284(A000217(n))+A148010(n)`
-/

namespace A148012.P10832759061987638344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 (A000217 n).toNat + A148010 n

end

end A148012.P10832759061987638344

/-! ## A148012.P12578579474337392342

`A185255(A025487(n+1))+A148011(n)`
-/

namespace A148012.P12578579474337392342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185255 (A025487 (n + 1)).toNat + A148011 n

end

end A148012.P12578579474337392342

/-! ## A148012.P18358362625903802067

`A185255(A117220(n+1))+A148011(n)`
-/

namespace A148012.P18358362625903802067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185255 (A117220 (n + 1)).toNat + A148011 n

end

end A148012.P18358362625903802067

/-! ## A148012.P654237286541625746

`A185255(A181573(n+1))+A148011(n)`
-/

namespace A148012.P654237286541625746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185255 (A181573 (n + 1)).toNat + A148011 n

end

end A148012.P654237286541625746

/-!
# A148013: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, -1, 1), (-1, 0, 1), (-1, 1, -1), (1, 0, 0)}.

The programs for A148013, there is no canonical definition to state claims against.
-/

/-! ## A148013.P7426826174185592252

`A003602(2*A148498(n))`
-/

namespace A148013.P7426826174185592252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (2 * A148498 n).toNat

end

end A148013.P7426826174185592252

/-! ## A148013.P3260765430040057644

`A008621(2*A148498(n))`
-/

namespace A148013.P3260765430040057644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (2 * A148498 n).toNat

end

end A148013.P3260765430040057644

/-! ## A148013.P5767598588345436987

`A008624(2*A148498(n))`
-/

namespace A148013.P5767598588345436987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008624 (2 * A148498 n).toNat

end

end A148013.P5767598588345436987

/-! ## A148013.P3248556233088861292

`A110655(2*A148498(n))`
-/

namespace A148013.P3248556233088861292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110655 (2 * A148498 n).toNat

end

end A148013.P3248556233088861292

/-! ## A148013.P9682607164229345440

`A138996(2*A148498(n))`
-/

namespace A148013.P9682607164229345440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138996 (2 * A148498 n).toNat

end

end A148013.P9682607164229345440

/-!
# A148014: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 1, 0), (0, 0, -1), (1, 0, 0)}.

The programs for A148014, there is no canonical definition to state claims against.
-/

/-! ## A148014.P11352411482857564536

`A264749(A264746(n+1)+A006882(n))`
-/

namespace A148014.P11352411482857564536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264749 (A264746 (n + 1) + A006882 n).toNat

end

end A148014.P11352411482857564536

/-! ## A148014.P7276205133831589836

`A153174(or(1, n²))`
-/

namespace A148014.P7276205133831589836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153174 (Nat.lor 1 (n ^ 2))

end

end A148014.P7276205133831589836

/-! ## A148014.P8150855986119259606

`A148015(A073789(n))`
-/

namespace A148014.P8150855986119259606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148015 (A073789 n).toNat

end

end A148014.P8150855986119259606

/-! ## A148014.P6005390313258046765

`A085701(A148015(n))`
-/

namespace A148014.P6005390313258046765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085701 (A148015 n).toNat

end

end A148014.P6005390313258046765

/-!
# A148016: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 1, 0), (0, 1, -1), (1, 0, 0)}.

The programs for A148016, there is no canonical definition to state claims against.
-/

/-! ## A148016.P16391873481836375436

`A148017(n)%p?[∑{p}[n+1, ceil(n/#)^4]]`
-/

namespace A148016.P16391873481836375436
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), ⌈(n : ℚ) / (p : ℚ)⌉ ^ 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A148017 n) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A148016.P16391873481836375436

/-! ## A148016.P9573145496631575538

`A033862(A148017(n))`
-/

namespace A148016.P9573145496631575538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033862 (A148017 n).toNat

end

end A148016.P9573145496631575538

/-! ## A148016.P2675473945783267372

`A148017(A073789(n))`
-/

namespace A148016.P2675473945783267372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148017 (A073789 n).toNat

end

end A148016.P2675473945783267372

/-! ## A148016.P5203412965681664927

`A148017(A171644(n))`
-/

namespace A148016.P5203412965681664927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148017 (A171644 n).toNat

end

end A148016.P5203412965681664927

/-!
# A148018: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 0), (0, 0, 1), (0, 1, -1), (1, -1, -1)}.

The programs for A148018, there is no canonical definition to state claims against.
-/

/-! ## A148018.P14432953409501914507

`A148019(n)%p?[∑{p}[n+1, ceil(n/#)^4]]`
-/

namespace A148018.P14432953409501914507
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), ⌈(n : ℚ) / (p : ℚ)⌉ ^ 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A148019 n) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A148018.P14432953409501914507

/-! ## A148018.P12031477022580746389

`A148019(A073789(n))`
-/

namespace A148018.P12031477022580746389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148019 (A073789 n).toNat

end

end A148018.P12031477022580746389

/-! ## A148018.P5177852234329551396

`A085701(A148019(n))`
-/

namespace A148018.P5177852234329551396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085701 (A148019 n).toNat

end

end A148018.P5177852234329551396

/-! ## A148018.P8614225862618090372

`A148019(A171644(n))`
-/

namespace A148018.P8614225862618090372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148019 (A171644 n).toNat

end

end A148018.P8614225862618090372

/-!
# A148020: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, -1), (0, 0, 1), (1, -1, 0), (1, 0, -1)}.

The programs for A148020, there is no canonical definition to state claims against.
-/

/-! ## A148020.P9822946462459332292

`A077470(a(n-1))-a(n-1)+n` with `a(0)=1`
-/

namespace A148020.P9822946462459332292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A077470 (a (n - 1)).toNat - a (n - 1) + (n : ℤ)

end

end A148020.P9822946462459332292

/-! ## A148020.P11338158490438170553

`A033862(A148021(n))`
-/

namespace A148020.P11338158490438170553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033862 (A148021 n).toNat

end

end A148020.P11338158490438170553

/-! ## A148020.P13962894760141244208

`A148021(A073789(n))`
-/

namespace A148020.P13962894760141244208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148021 (A073789 n).toNat

end

end A148020.P13962894760141244208

/-! ## A148020.P5957860639572447260

`A106432(A164039(n))`
-/

namespace A148020.P5957860639572447260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106432 (A164039 n).toNat

end

end A148020.P5957860639572447260

/-!
# A148022: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 1, 0), (1, 0, -1), (1, 0, 0)}.

The programs for A148022, there is no canonical definition to state claims against.
-/

/-! ## A148022.P8336774533384514516

`A024417(A151396(n))`
-/

namespace A148022.P8336774533384514516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024417 (A151396 n).toNat

end

end A148022.P8336774533384514516

/-! ## A148022.P10274039098983086410

`A033862(A148023(n))`
-/

namespace A148022.P10274039098983086410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033862 (A148023 n).toNat

end

end A148022.P10274039098983086410

/-! ## A148022.P8542606436031817541

`A148023(A073789(n))`
-/

namespace A148022.P8542606436031817541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148023 (A073789 n).toNat

end

end A148022.P8542606436031817541

/-! ## A148022.P3722852476046933349

`A148023(A171644(n))`
-/

namespace A148022.P3722852476046933349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148023 (A171644 n).toNat

end

end A148022.P3722852476046933349

/-!
# A148024: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 1), (0, 0, 1), (0, 1, -1), (1, -1, -1)}.

The programs for A148024, there is no canonical definition to state claims against.
-/

/-! ## A148024.P15864919721847169687

`A033862(A148025(n))`
-/

namespace A148024.P15864919721847169687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033862 (A148025 n).toNat

end

end A148024.P15864919721847169687

/-! ## A148024.P7589607139659638696

`A148025(A073789(n))`
-/

namespace A148024.P7589607139659638696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148025 (A073789 n).toNat

end

end A148024.P7589607139659638696

/-! ## A148024.P17731105122894331831

`A148025(A171644(n))`
-/

namespace A148024.P17731105122894331831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148025 (A171644 n).toNat

end

end A148024.P17731105122894331831

/-! ## A148024.P18045514075023538445

`A056926(A148025(n)²)`
-/

namespace A148024.P18045514075023538445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056926 (A148025 n ^ 2).toNat

end

end A148024.P18045514075023538445

/-!
# A148026: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 1, 0), (1, 0, 0), (1, 1, -1)}.

The programs for A148026, there is no canonical definition to state claims against.
-/

/-! ## A148026.P3718252935205819452

`A148027(n)%p?[∑{p}[n+1, ceil(n/#)^4]]`
-/

namespace A148026.P3718252935205819452
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), ⌈(n : ℚ) / (p : ℚ)⌉ ^ 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A148027 n) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A148026.P3718252935205819452

/-! ## A148026.P15966243671733195035

`A148027(A073789(n))`
-/

namespace A148026.P15966243671733195035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148027 (A073789 n).toNat

end

end A148026.P15966243671733195035

/-! ## A148026.P6839804165619522349

`A115060(A148027(n))`
-/

namespace A148026.P6839804165619522349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115060 (A148027 n).toNat

end

end A148026.P6839804165619522349

/-! ## A148026.P8239083464540998322

`A148027(A171644(n))`
-/

namespace A148026.P8239083464540998322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148027 (A171644 n).toNat

end

end A148026.P8239083464540998322

/-!
# A148028: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, -1), (0, 0, 1), (1, -1, 1), (1, 0, -1)}.

The programs for A148028, there is no canonical definition to state claims against.
-/

/-! ## A148028.P11710722260276627587

`xor(A148029(n), A185284(∑[n]))`
-/

namespace A148028.P11710722260276627587
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A148029 n) (A185284 (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A148028.P11710722260276627587

/-! ## A148028.P8575401615020654007

`A148029(A073789(n))`
-/

namespace A148028.P8575401615020654007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148029 (A073789 n).toNat

end

end A148028.P8575401615020654007

/-! ## A148028.P2963776829588189784

`A115060(A148029(n))`
-/

namespace A148028.P2963776829588189784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115060 (A148029 n).toNat

end

end A148028.P2963776829588189784

/-! ## A148028.P5843801089219863511

`A148029(A171644(n))`
-/

namespace A148028.P5843801089219863511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148029 (A171644 n).toNat

end

end A148028.P5843801089219863511

/-!
# A148029: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 1, -1), (0, 0, 1), (1, -1, 1), (1, 0, -1)}.

The programs for A148029, there is no canonical definition to state claims against.
-/

/-! ## A148029.P11088320874384854849

`xor(A148028(n), A185284(∑[n]))`
-/

namespace A148029.P11088320874384854849
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A148028 n) (A185284 (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A148029.P11088320874384854849

/-! ## A148029.P2171974375234177663

`A354527(A164863(n))+A005648(n)`
-/

namespace A148029.P2171974375234177663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354527 (A164863 n).toNat + A005648 n

end

end A148029.P2171974375234177663

/-! ## A148029.P13521242460713901743

`or(A005648(n), A328376(A000244(n)))`
-/

namespace A148029.P13521242460713901743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A005648 n) (A328376 (A000244 n).toNat)

end

end A148029.P13521242460713901743

/-!
# A148030: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 0), (0, -1, 1), (0, 1, 0), (1, -1, -1)}.

The programs for A148030, there is no canonical definition to state claims against.
-/

/-! ## A148030.P13295677606404455163

`∏{e}[7^n, A148031(#)]`
-/

namespace A148030.P13295677606404455163
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A148031 (Nat.factorization (f1 n) p)

end

end A148030.P13295677606404455163

/-! ## A148030.P8160330814392580749

`A148031(n)%p?[round(2^n/3)]`
-/

namespace A148030.P8160330814392580749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((2 ^ n : ℚ) / 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A148031 n) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A148030.P8160330814392580749

/-! ## A148030.P17925617522841046538

`A148031(A073789(n))`
-/

namespace A148030.P17925617522841046538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148031 (A073789 n).toNat

end

end A148030.P17925617522841046538

/-! ## A148030.P11476722453741742573

`A085701(A148031(n))`
-/

namespace A148030.P11476722453741742573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085701 (A148031 n).toNat

end

end A148030.P11476722453741742573

/-!
# A148032: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 1), (-1, 1, -1), (0, -1, 1), (1, 0, 0)}.

The programs for A148032, there is no canonical definition to state claims against.
-/

/-! ## A148032.P4497091711135969254

`A148033(n)%p?[(n+1)*2^n-1]`
-/

namespace A148032.P4497091711135969254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) * 2 ^ n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A148033 n) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A148032.P4497091711135969254

/-! ## A148032.P14724571425030709469

`A148033(A073789(n))`
-/

namespace A148032.P14724571425030709469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148033 (A073789 n).toNat

end

end A148032.P14724571425030709469

/-! ## A148032.P17823802831522260041

`A148033(A171644(n))`
-/

namespace A148032.P17823802831522260041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148033 (A171644 n).toNat

end

end A148032.P17823802831522260041

/-! ## A148032.P16536267834411967211

`A148033(A004869(n+1))`
-/

namespace A148032.P16536267834411967211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148033 (A004869 (n + 1)).toNat

end

end A148032.P16536267834411967211

/-!
# A148034: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 1), (-1, 1, -1), (1, -1, 0), (1, 0, 0)}.

The programs for A148034, there is no canonical definition to state claims against.
-/

/-! ## A148034.P9265969791852581525

`A148035(A073789(n))`
-/

namespace A148034.P9265969791852581525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148035 (A073789 n).toNat

end

end A148034.P9265969791852581525

/-! ## A148034.P11756395136027284890

`A085701(A148035(n))`
-/

namespace A148034.P11756395136027284890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085701 (A148035 n).toNat

end

end A148034.P11756395136027284890

/-! ## A148034.P15158005003983991229

`A148035(A171644(n))`
-/

namespace A148034.P15158005003983991229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148035 (A171644 n).toNat

end

end A148034.P15158005003983991229

/-! ## A148034.P13528828175074244363

`A226743(A149222(n))`
-/

namespace A148034.P13528828175074244363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226743 (A149222 n).toNat

end

end A148034.P13528828175074244363

/-!
# A148036: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 1), (-1, 1, -1), (1, -1, 1), (1, 0, 0)}.

The programs for A148036, there is no canonical definition to state claims against.
-/

/-! ## A148036.P11478637508053048042

`A033862(A148037(n))`
-/

namespace A148036.P11478637508053048042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033862 (A148037 n).toNat

end

end A148036.P11478637508053048042

/-! ## A148036.P3795963413499428323

`A148037(A073789(n))`
-/

namespace A148036.P3795963413499428323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148037 (A073789 n).toNat

end

end A148036.P3795963413499428323

/-! ## A148036.P12343272762314664428

`A148037(A171644(n))`
-/

namespace A148036.P12343272762314664428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148037 (A171644 n).toNat

end

end A148036.P12343272762314664428

/-! ## A148036.P18310069716931143304

`A262689(A148037(n)²)`
-/

namespace A148036.P18310069716931143304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262689 (A148037 n ^ 2).toNat

end

end A148036.P18310069716931143304

/-!
# A148038: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 1, 0), (0, 0, -1), (0, 1, -1), (1, 0, 0)}.

The programs for A148038, there is no canonical definition to state claims against.
-/

/-! ## A148038.P4592974582438456351

`A015750(record[A354762(n)])`
-/

namespace A148038.P4592974582438456351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354762 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015750 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A148038.P4592974582438456351

/-! ## A148038.P13082364973152219657

`A054404(A087432(n)+2)`
-/

namespace A148038.P13082364973152219657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054404 (A087432 n + 2).toNat

end

end A148038.P13082364973152219657

/-! ## A148038.P16226279182083582897

`A079952(A269800(n)+3)`
-/

namespace A148038.P16226279182083582897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079952 (A269800 n + 3).toNat

end

end A148038.P16226279182083582897

/-! ## A148038.P6330895434096799394

`A008620(A245891(n+1)+1)`
-/

namespace A148038.P6330895434096799394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (A245891 (n + 1) + 1).toNat

end

end A148038.P6330895434096799394

/-!
# A148039: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 1, 0), (0, 0, -1), (1, 0, -1), (1, 0, 0)}.

The programs for A148039, there is no canonical definition to state claims against.
-/

/-! ## A148039.P16538099580158059129

`A185511(A293818(n+3))`
-/

namespace A148039.P16538099580158059129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185511 (A293818 (n + 3)).toNat

end

end A148039.P16538099580158059129

/-! ## A148039.P6570623996268052851

`A324965(A113227(n)+A100388(n))`
-/

namespace A148039.P6570623996268052851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324965 (A113227 n + A100388 n).toNat

end

end A148039.P6570623996268052851

/-! ## A148039.P13735669685098132760

`A291777(n+2)+A000006(A266858(n))`
-/

namespace A148039.P13735669685098132760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291777 (n + 2) + A000006 (A266858 n).toNat

end

end A148039.P13735669685098132760

/-!
# A148040: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 1, 0), (0, 1, -1), (1, 0, -1), (1, 0, 0)}.

The programs for A148040, there is no canonical definition to state claims against.
-/

/-! ## A148040.P12225538660536128097

`floor(A323787(n)/floor(7^(n/4)))`
-/

namespace A148040.P12225538660536128097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A323787 n : ℚ) / (⌊(7 : ℝ) ^ ((n : ℚ) / 4 : ℝ)⌋ : ℚ)⌋

end

end A148040.P12225538660536128097

/-! ## A148040.P1156180286861473690

`A224823(A076279(n+1))`
-/

namespace A148040.P1156180286861473690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224823 (A076279 (n + 1)).toNat

end

end A148040.P1156180286861473690

/-! ## A148040.P1605226599076498226

`A230772(A149814(n+1))`
-/

namespace A148040.P1605226599076498226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230772 (A149814 (n + 1)).toNat

end

end A148040.P1605226599076498226

/-! ## A148040.P8682789233497220700

`A023193(or(n, A148726(n)))`
-/

namespace A148040.P8682789233497220700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023193 (Int.lor (n : ℤ) (A148726 n)).toNat

end

end A148040.P8682789233497220700

/-!
# A148041: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 1, 0), (0, 0, -1), (1, 0, 0), (1, 1, -1)}.

The programs for A148041, there is no canonical definition to state claims against.
-/

/-! ## A148041.P721224655710171450

`A256502(A245900(n+1)+A037955(n))`
-/

namespace A148041.P721224655710171450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256502 (A245900 (n + 1) + A037955 n).toNat

end

end A148041.P721224655710171450

/-! ## A148041.P18129557159021917739

`A148043(n)-A079205(A146266(n+1))`
-/

namespace A148041.P18129557159021917739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148043 n - A079205 (A146266 (n + 1)).toNat

end

end A148041.P18129557159021917739

/-! ## A148041.P7650993167830008725

`A321994(n+1)-A327119(A000009(n))`
-/

namespace A148041.P7650993167830008725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321994 (n + 1) - A327119 (A000009 n).toNat

end

end A148041.P7650993167830008725

/-!
# A148042: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 1, 0), (0, 1, -1), (1, 0, 0), (1, 1, -1)}.

The programs for A148042, there is no canonical definition to state claims against.
-/

/-! ## A148042.P12555445037958342737

`A077767(A026641(n)+A000108(n))`
-/

namespace A148042.P12555445037958342737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077767 (A026641 n + A000108 n).toNat

end

end A148042.P12555445037958342737

/-! ## A148042.P4078471958332483690

`A070000(A223006(n+1))`
-/

namespace A148042.P4078471958332483690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070000 (A223006 (n + 1)).toNat

end

end A148042.P4078471958332483690

/-! ## A148042.P9503157151586797185

`A051889(A059480(n))+Δ[A304311(n)]`
-/

namespace A148042.P9503157151586797185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304311 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051889 (A059480 n).toNat + (f1 (n + 1) - f1 n)

end

end A148042.P9503157151586797185

/-! ## A148042.P6301743839342443006

`A106432(A201204(n)+1)+Δ[A304311(n)]`
-/

namespace A148042.P6301743839342443006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304311 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106432 (A201204 n + 1).toNat + (f1 (n + 1) - f1 n)

end

end A148042.P6301743839342443006

/-!
# A148043: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 1, 0), (1, 0, -1), (1, 0, 0), (1, 1, -1)}.

The programs for A148043, there is no canonical definition to state claims against.
-/

/-! ## A148043.P12777182362969469043

`∑[A185714(A098478(n))]+1`
-/

namespace A148043.P12777182362969469043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185714 (A098478 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A148043.P12777182362969469043

/-! ## A148043.P2610581931510180808

`A124480(A028310(n))-A036443(n)`
-/

namespace A148043.P2610581931510180808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124480 (A028310 n).toNat - A036443 n

end

end A148043.P2610581931510180808

/-! ## A148043.P13801331610219738521

`A124480(A114800(n))-A036443(n)`
-/

namespace A148043.P13801331610219738521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124480 (A114800 n).toNat - A036443 n

end

end A148043.P13801331610219738521

/-! ## A148043.P13112708906415043776

`A148041(n)+A079205(A146266(n+1))`
-/

namespace A148043.P13112708906415043776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148041 n + A079205 (A146266 (n + 1)).toNat

end

end A148043.P13112708906415043776

/-!
# A148044: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, -1, 0), (-1, 1, -1), (1, 0, 1)}.

The programs for A148044, there is no canonical definition to state claims against.
-/

/-! ## A148044.P18290971041970288718

`∑{#}[n, (-1)^(n-#)*C(n, #)*A149861(#)]`
-/

namespace A148044.P18290971041970288718
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (-1 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ) * (Nat.choose n k : ℚ) * (A149861 k : ℚ)

end

end A148044.P18290971041970288718

/-! ## A148044.P5933860509819134515

`A004277(A147999(n))-A001405(n)`
-/

namespace A148044.P5933860509819134515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A147999 n).toNat - A001405 n

end

end A148044.P5933860509819134515

/-! ## A148044.P4602448070944273704

`A148045(A073789(n))`
-/

namespace A148044.P4602448070944273704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148045 (A073789 n).toNat

end

end A148044.P4602448070944273704

/-! ## A148044.P1309063493553300116

`A109680(A148045(n))`
-/

namespace A148044.P1309063493553300116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109680 (A148045 n).toNat

end

end A148044.P1309063493553300116

/-!
# A148045: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, -1, 0), (-1, -1, 1), (-1, 1, 0), (1, 0, 0)}.

The programs for A148045, there is no canonical definition to state claims against.
-/

/-! ## A148045.P13619487723209087772

`A004526(A151255(n)+A148060(n))`
-/

namespace A148045.P13619487723209087772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A151255 n + A148060 n).toNat

end

end A148045.P13619487723209087772

/-! ## A148045.P3645433058811917447

`A110654(A151255(n)+A148060(n))`
-/

namespace A148045.P3645433058811917447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A151255 n + A148060 n).toNat

end

end A148045.P3645433058811917447

/-! ## A148045.P5290184827662249035

`A110654(A148060(n)-(1-A151255(n)))`
-/

namespace A148045.P5290184827662249035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A148060 n - (1 - A151255 n)).toNat

end

end A148045.P5290184827662249035

/-! ## A148045.P5703893526204719269

`A148060(n)-A004526(A148060(n)-A151255(n))`
-/

namespace A148045.P5703893526204719269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148060 n - A004526 (A148060 n - A151255 n).toNat

end

end A148045.P5703893526204719269

/-!
# A148046: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, -1, 1), (-1, 0, -1), (0, 1, 0), (1, -1, 0)}.

The programs for A148046, there is no canonical definition to state claims against.
-/

/-! ## A148046.P1296193731136695141

`A148047(A073789(n))`
-/

namespace A148046.P1296193731136695141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148047 (A073789 n).toNat

end

end A148046.P1296193731136695141

/-! ## A148046.P384098034664608008

`A085701(A148047(n))`
-/

namespace A148046.P384098034664608008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085701 (A148047 n).toNat

end

end A148046.P384098034664608008

/-! ## A148046.P8897324239454005557

`A148047(A171644(n))`
-/

namespace A148046.P8897324239454005557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148047 (A171644 n).toNat

end

end A148046.P8897324239454005557

/-! ## A148046.P10148135471866493618

`A148047(A004869(n+1))`
-/

namespace A148046.P10148135471866493618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148047 (A004869 (n + 1)).toNat

end

end A148046.P10148135471866493618

/-!
# A148048: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, -1), (0, 1, 1), (1, -1, -1)}.

The programs for A148048, there is no canonical definition to state claims against.
-/

/-! ## A148048.P16636637479328241755

`A148049(A002998(n))`
-/

namespace A148048.P16636637479328241755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148049 (A002998 n).toNat

end

end A148048.P16636637479328241755

/-! ## A148048.P3841400813210046391

`A148049(A024664(n))`
-/

namespace A148048.P3841400813210046391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148049 (A024664 n).toNat

end

end A148048.P3841400813210046391

/-! ## A148048.P14743917383246856735

`A148049(A039723(n))`
-/

namespace A148048.P14743917383246856735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148049 (A039723 n).toNat

end

end A148048.P14743917383246856735

/-! ## A148048.P2044571351093217815

`A148049(A046469(n))`
-/

namespace A148048.P2044571351093217815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148049 (A046469 n).toNat

end

end A148048.P2044571351093217815

/-! ## A148048.P8662730699354722193

`A148049(A051022(n))`
-/

namespace A148048.P8662730699354722193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148049 (A051022 n).toNat

end

end A148048.P8662730699354722193

/-!
# A148051: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, -1, 1), (-1, 0, -1), (-1, 1, 0), (1, 0, 0)}.

The programs for A148051, there is no canonical definition to state claims against.
-/

/-! ## A148051.P9540975723002498782

`A148052(A073789(n))`
-/

namespace A148051.P9540975723002498782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148052 (A073789 n).toNat

end

end A148051.P9540975723002498782

/-! ## A148051.P17360543383670171589

`A148052(A171644(n))`
-/

namespace A148051.P17360543383670171589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148052 (A171644 n).toNat

end

end A148051.P17360543383670171589

/-! ## A148051.P17348469070489635393

`A148052(A004869(n+1))`
-/

namespace A148051.P17348469070489635393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148052 (A004869 (n + 1)).toNat

end

end A148051.P17348469070489635393

/-! ## A148051.P9013259053897186032

`A148052(A004880(n+1))`
-/

namespace A148051.P9013259053897186032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148052 (A004880 (n + 1)).toNat

end

end A148051.P9013259053897186032

/-!
# A148053: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, -1), (-1, 1, 1), (1, 0, 0)}.

The programs for A148053, there is no canonical definition to state claims against.
-/

/-! ## A148053.P15307909857976055953

`A005843(A148524(n))-A149074(n)`
-/

namespace A148053.P15307909857976055953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A148524 n).toNat - A149074 n

end

end A148053.P15307909857976055953

/-! ## A148053.P17403886150401453906

`2*A148524(n)-(A148529(n)+A004526(A148531(n)))`
-/

namespace A148053.P17403886150401453906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A148524 n - (A148529 n + A004526 (A148531 n).toNat)

end

end A148053.P17403886150401453906

/-! ## A148053.P16517447029463942047

`2*A148524(n)-(A148529(n)+A004526(A148532(n)))`
-/

namespace A148053.P16517447029463942047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A148524 n - (A148529 n + A004526 (A148532 n).toNat)

end

end A148053.P16517447029463942047

/-! ## A148053.P12846065770617177696

`A148054(A073789(n))`
-/

namespace A148053.P12846065770617177696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148054 (A073789 n).toNat

end

end A148053.P12846065770617177696

/-!
# A148054: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, -1), (-1, 1, 1), (1, 0, 0)}.

The programs for A148054, there is no canonical definition to state claims against.
-/

/-! ## A148054.P1745408655144424617

`A148523(n)-A004526(A148524(n))`
-/

namespace A148054.P1745408655144424617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148523 n - A004526 (A148524 n).toNat

end

end A148054.P1745408655144424617

/-!
# A148056: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, -1, 1), (-1, 1, 0), (0, 0, -1), (1, 0, 0)}.

The programs for A148056, there is no canonical definition to state claims against.
-/

/-! ## A148056.P3919626721076625834

`A240488(A370593(n))+A077550(n)`
-/

namespace A148056.P3919626721076625834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240488 (A370593 n).toNat + A077550 n

end

end A148056.P3919626721076625834

/-! ## A148056.P5524288913968183274

`A055086(A087208(n)-A000071(n+1))`
-/

namespace A148056.P5524288913968183274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055086 (A087208 n - A000071 (n + 1)).toNat

end

end A148056.P5524288913968183274

/-! ## A148056.P16124042651554733823

`A243283(A149221(n))-A324874(n+1)`
-/

namespace A148056.P16124042651554733823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243283 (A149221 n).toNat - A324874 (n + 1)

end

end A148056.P16124042651554733823

/-! ## A148056.P8934966974852607821

`A364350(A215366(n)+A001313(3*n))`
-/

namespace A148056.P8934966974852607821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364350 (A215366 n + A001313 (3 * n)).toNat

end

end A148056.P8934966974852607821

/-!
# A148057: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, -1, 1), (-1, 1, 0), (0, 1, -1), (1, 0, 0)}.

The programs for A148057, there is no canonical definition to state claims against.
-/

/-! ## A148057.P10716015966106519782

`A000682(n+1)-A028932(A241768(n+1))`
-/

namespace A148057.P10716015966106519782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000682 (n + 1) - A028932 (A241768 (n + 1)).toNat

end

end A148057.P10716015966106519782

/-! ## A148057.P6567275361297192

`A243492(A324721(n+3))+A077070(A038119(n+1))`
-/

namespace A148057.P6567275361297192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243492 (A324721 (n + 3)).toNat + A077070 (A038119 (n + 1)).toNat

end

end A148057.P6567275361297192

/-!
# A148058: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, -1, 1), (-1, 1, 0), (1, 0, -1), (1, 0, 0)}.

The programs for A148058, there is no canonical definition to state claims against.
-/

/-! ## A148058.P13522487211469216859

`or(A020639(A210573(n)), A148056(n))`
-/

namespace A148058.P13522487211469216859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A020639 (A210573 n).toNat) (A148056 n)

end

end A148058.P13522487211469216859

/-!
# A148060: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, -1, 0), (-1, -1, 1), (-1, 1, -1), (1, 0, 1)}.

The programs for A148060, there is no canonical definition to state claims against.
-/

/-! ## A148060.P7616117388963566019

`A004277(A148045(n))-A151255(n)`
-/

namespace A148060.P7616117388963566019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A148045 n).toNat - A151255 n

end

end A148060.P7616117388963566019

/-!
# A148061: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, -1, 0), (-1, 0, -1), (0, 1, 1), (1, -1, -1)}.

The programs for A148061, there is no canonical definition to state claims against.
-/

/-! ## A148061.P12368068834180616117

`A148062(A002998(n))`
-/

namespace A148061.P12368068834180616117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148062 (A002998 n).toNat

end

end A148061.P12368068834180616117

/-! ## A148061.P4957187583835335361

`A148062(A039723(n))`
-/

namespace A148061.P4957187583835335361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148062 (A039723 n).toNat

end

end A148061.P4957187583835335361

/-! ## A148061.P4881194333939315532

`A148062(A046469(n))`
-/

namespace A148061.P4881194333939315532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148062 (A046469 n).toNat

end

end A148061.P4881194333939315532

/-! ## A148061.P6174500934413519500

`A148062(A051022(n))`
-/

namespace A148061.P6174500934413519500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148062 (A051022 n).toNat

end

end A148061.P6174500934413519500

/-! ## A148061.P6779692674776743502

`A148062(A056142(n))`
-/

namespace A148061.P6779692674776743502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148062 (A056142 n).toNat

end

end A148061.P6779692674776743502

/-!
# A148064: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, -1, 1), (-1, 0, -1), (0, 1, 1), (1, -1, -1)}.

The programs for A148064, there is no canonical definition to state claims against.
-/

/-! ## A148064.P7951910693240805990

`A148063(n+1)-Δ[A148062(A002998(n))]`
-/

namespace A148064.P7951910693240805990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148062 (A002998 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148063 (n + 1) - (f1 (n + 1) - f1 n)

end

end A148064.P7951910693240805990

/-! ## A148064.P9417249932042118129

`A148063(n+1)-Δ[A148062(A039723(n))]`
-/

namespace A148064.P9417249932042118129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148062 (A039723 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148063 (n + 1) - (f1 (n + 1) - f1 n)

end

end A148064.P9417249932042118129

/-! ## A148064.P3146590448518515481

`A148063(n+1)-Δ[A148062(A046469(n))]`
-/

namespace A148064.P3146590448518515481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148062 (A046469 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148063 (n + 1) - (f1 (n + 1) - f1 n)

end

end A148064.P3146590448518515481

/-! ## A148064.P2283872371338893312

`A148063(n+1)-Δ[A148062(A056143(n))]`
-/

namespace A148064.P2283872371338893312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148062 (A056143 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148063 (n + 1) - (f1 (n + 1) - f1 n)

end

end A148064.P2283872371338893312

/-! ## A148064.P4663253450174580638

`A148063(n+1)-Δ[A148062(A061479(n))]`
-/

namespace A148064.P4663253450174580638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148062 (A061479 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148063 (n + 1) - (f1 (n + 1) - f1 n)

end

end A148064.P4663253450174580638

/-!
# A148066: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, -1, 0), (-1, 0, -1), (-1, 1, 1), (1, 0, 0)}.

The programs for A148066, there is no canonical definition to state claims against.
-/

/-! ## A148066.P11499151120591363437

`A148067(A024648(n))`
-/

namespace A148066.P11499151120591363437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148067 (A024648 n).toNat

end

end A148066.P11499151120591363437

/-! ## A148066.P4170093618543411495

`A148067(A024649(n))`
-/

namespace A148066.P4170093618543411495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148067 (A024649 n).toNat

end

end A148066.P4170093618543411495

/-! ## A148066.P61317486843824016

`A148067(A073789(n))`
-/

namespace A148066.P61317486843824016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148067 (A073789 n).toNat

end

end A148066.P61317486843824016

/-! ## A148066.P11044855347590026143

`A148067(A171635(n))`
-/

namespace A148066.P11044855347590026143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148067 (A171635 n).toNat

end

end A148066.P11044855347590026143

/-!
# A148068: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, -1, 1), (-1, 1, -1), (-1, 1, 1), (1, 0, 0)}.

The programs for A148068, there is no canonical definition to state claims against.
-/

/-! ## A148068.P14702541734408293210

`A136602(A148067(n)+1)`
-/

namespace A148068.P14702541734408293210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136602 (A148067 n + 1).toNat

end

end A148068.P14702541734408293210

/-!
# A148069: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, -1, 1), (-1, 0, -1), (-1, 1, 1), (1, 0, 0)}.

The programs for A148069, there is no canonical definition to state claims against.
-/

/-! ## A148069.P16563607732797694

`A148070(A073789(n))`
-/

namespace A148069.P16563607732797694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148070 (A073789 n).toNat

end

end A148069.P16563607732797694

/-! ## A148069.P15949763235774100465

`A148070(A171644(n))`
-/

namespace A148069.P15949763235774100465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148070 (A171644 n).toNat

end

end A148069.P15949763235774100465

/-! ## A148069.P15813871127602584534

`A056926(A148070(n)²)`
-/

namespace A148069.P15813871127602584534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056926 (A148070 n ^ 2).toNat

end

end A148069.P15813871127602584534

/-! ## A148069.P4444883892311193924

`A148070(n)/A056926(A025012(n))`
-/

namespace A148069.P4444883892311193924
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A148070 n : ℚ) / (A056926 (A025012 n).toNat : ℚ)

end

end A148069.P4444883892311193924

/-!
# A148070: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, -1, 1), (-1, 1, -1), (-1, 1, 1), (1, 0, 0)}.

The programs for A148070, there is no canonical definition to state claims against.
-/

/-! ## A148070.P673959364811484805

`A148548(n)-A004526(A148533(n))`
-/

namespace A148070.P673959364811484805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148548 n - A004526 (A148533 n).toNat

end

end A148070.P673959364811484805

/-!
# A148071: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, 0, 1), (0, 1, -1), (1, 0, 0)}.

The programs for A148071, there is no canonical definition to state claims against.
-/

/-! ## A148071.P6149028009221450765

`round(sqrt(3*A043096(n!)+1))`
-/

namespace A148071.P6149028009221450765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (3 * A043096 (Nat.factorial n) + 1 : ℝ))

end

end A148071.P6149028009221450765

/-! ## A148071.P6825946943709425747

`A216256(A007095(n!))`
-/

namespace A148071.P6825946943709425747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216256 (A007095 (Nat.factorial n)).toNat

end

end A148071.P6825946943709425747

/-! ## A148071.P546839534533847691

`A331300(A137791(n!))`
-/

namespace A148071.P546839534533847691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331300 (A137791 (Nat.factorial n)).toNat

end

end A148071.P546839534533847691

/-! ## A148071.P4725844668593000702

`A186444(A028411(n+1))`
-/

namespace A148071.P4725844668593000702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186444 (A028411 (n + 1)).toNat

end

end A148071.P4725844668593000702

/-!
# A148072: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, 0), (0, 0, 1), (1, 0, -1)}.

The programs for A148072, there is no canonical definition to state claims against.
-/

/-! ## A148072.P2718748786817049432

`A343872(n)-A004788(A022894(n))`
-/

namespace A148072.P2718748786817049432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343872 n - A004788 (A022894 n).toNat

end

end A148072.P2718748786817049432

/-! ## A148072.P10510301772122636069

`A343872(n)-A004788(A306443(Δ[n²]))`
-/

namespace A148072.P10510301772122636069
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343872 n - A004788 (A306443 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat

end

end A148072.P10510301772122636069

/-! ## A148072.P8686800433441561523

`A343872(n)-A004788(A350404(Δ[n²])/2)`
-/

namespace A148072.P8686800433441561523
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343872 n - A004788 (SequenceMachineLib.roundAway ((A350404 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 2)).toNat

end

end A148072.P8686800433441561523

/-! ## A148072.P15112987105398262030

`A343872(n)-A004788(A306443(2*n+1)+A022904(2*(n+1)))`
-/

namespace A148072.P15112987105398262030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343872 n - A004788 (A306443 (2 * n + 1) + A022904 (2 * (n + 1))).toNat

end

end A148072.P15112987105398262030

/-! ## A148072.P4901678972739016769

`A343872(n)-A004788(A350404(2*n+1)-A306443(2*n+1))`
-/

namespace A148072.P4901678972739016769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343872 n - A004788 (A350404 (2 * n + 1) - A306443 (2 * n + 1)).toNat

end

end A148072.P4901678972739016769

/-!
# A148073: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 1, 0), (0, 0, 1), (1, 0, -1)}.

The programs for A148073, there is no canonical definition to state claims against.
-/

/-! ## A148073.P2568381824504456293

`A057513(n)-A200512(A057513(n))`
-/

namespace A148073.P2568381824504456293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057513 n - A200512 (A057513 n).toNat

end

end A148073.P2568381824504456293

/-! ## A148073.P546284229163439953

`A008616(A018042(n)+A010061(n+1))`
-/

namespace A148073.P546284229163439953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008616 (A018042 n + A010061 (n + 1)).toNat

end

end A148073.P546284229163439953

/-! ## A148073.P11135883906280672161

`A008616(A244780(n+2)+A018043(n))`
-/

namespace A148073.P11135883906280672161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008616 (A244780 (n + 2) + A018043 n).toNat

end

end A148073.P11135883906280672161

/-! ## A148073.P4919551121779049648

`A008616(A088725(3*n+1)+A018043(n))`
-/

namespace A148073.P4919551121779049648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008616 (A088725 (3 * n + 1) + A018043 n).toNat

end

end A148073.P4919551121779049648

/-!
# A148074: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, -1, 0), (-1, 1, 0), (0, 0, 1), (1, 0, -1)}.

The programs for A148074, there is no canonical definition to state claims against.
-/

/-! ## A148074.P582576364997196651

`ceil(sqrt(A100317(n!)))`
-/

namespace A148074.P582576364997196651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A100317 (Nat.factorial n) : ℝ)⌉

end

end A148074.P582576364997196651

/-! ## A148074.P924922179935022899

`floor(sqrt(A363960(n+2)))`
-/

namespace A148074.P924922179935022899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A363960 (n + 2))

end

end A148074.P924922179935022899

/-! ## A148074.P5273139561694639167

`∏{e}[7^n, A048194(#)]`
-/

namespace A148074.P5273139561694639167
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A048194 (Nat.factorization (f1 n) p)

end

end A148074.P5273139561694639167

/-! ## A148074.P11018893352993003119

`floor(log2(A013588(n+1)!))`
-/

namespace A148074.P11018893352993003119
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (Nat.factorial (A013588 (n + 1)).toNat)

end

end A148074.P11018893352993003119

/-!
# A148075: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, -1, 1), (-1, 1, 0), (0, 0, 1), (1, 0, -1)}.

The programs for A148075, there is no canonical definition to state claims against.
-/

/-! ## A148075.P11768967729631278598

`round(sqrt(A372174(n+3)))`
-/

namespace A148075.P11768967729631278598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A372174 (n + 3) : ℝ))

end

end A148075.P11768967729631278598

/-! ## A148075.P3973148539710364908

`A024417(∑[A124527(n)])`
-/

namespace A148075.P3973148539710364908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124527 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024417 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A148075.P3973148539710364908

/-! ## A148075.P10755663173190416776

`A157271(A148238(n)+n)`
-/

namespace A148075.P10755663173190416776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157271 (A148238 n + (n : ℤ)).toNat

end

end A148075.P10755663173190416776

/-! ## A148075.P18284730007035998146

`A157271(∑[A335342(n+1)])`
-/

namespace A148075.P18284730007035998146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335342 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157271 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A148075.P18284730007035998146

/-!
# A148076: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, -1, 1), (-1, 1, 0), (0, 0, 1), (1, 0, -1)}.

The programs for A148076, there is no canonical definition to state claims against.
-/

/-! ## A148076.P2786251676309475471

`A000006(A262169(n)+n)`
-/

namespace A148076.P2786251676309475471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000006 (A262169 n + (n : ℤ)).toNat

end

end A148076.P2786251676309475471

/-! ## A148076.P13278810257961320294

`A132090((A307464(n)+1)²)`
-/

namespace A148076.P13278810257961320294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132090 ((A307464 n + 1) ^ 2).toNat

end

end A148076.P13278810257961320294

/-! ## A148076.P5553786575603042850

`A000006(A262167(n)+A000045(n))`
-/

namespace A148076.P5553786575603042850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000006 (A262167 n + A000045 n).toNat

end

end A148076.P5553786575603042850

/-!
# A148077: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 1), (0, 1, -1), (1, 0, 0)}.

The programs for A148077, there is no canonical definition to state claims against.
-/

/-! ## A148077.P18270950084169171051

`A108602(A006318(n)+A000110(n))`
-/

namespace A148077.P18270950084169171051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108602 (A006318 n + A000110 n).toNat

end

end A148077.P18270950084169171051

/-! ## A148077.P16240318287289955404

`A108602(A287585(n)+A006318(n))`
-/

namespace A148077.P16240318287289955404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108602 (A287585 n + A006318 n).toNat

end

end A148077.P16240318287289955404

/-! ## A148077.P5005932696134578579

`A321211(A000142(n)-A025427(n))`
-/

namespace A148077.P5005932696134578579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321211 (A000142 n - A025427 n).toNat

end

end A148077.P5005932696134578579

/-! ## A148077.P17223467190946503520

`A321211(A000142(n)-A083928(n))`
-/

namespace A148077.P17223467190946503520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321211 (A000142 n - A083928 n).toNat

end

end A148077.P17223467190946503520

/-!
# A148078: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, -1, 0), (-1, 0, 1), (0, 1, -1), (1, 0, 0)}.

The programs for A148078, there is no canonical definition to state claims against.
-/

/-! ## A148078.P10669238997202994425

`A098313(A094727(n!))`
-/

namespace A148078.P10669238997202994425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098313 (A094727 (Nat.factorial n)).toNat

end

end A148078.P10669238997202994425

/-! ## A148078.P12099368530468142968

`A001462(A195865(n)*A289501(n))`
-/

namespace A148078.P12099368530468142968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (A195865 n * A289501 n).toNat

end

end A148078.P12099368530468142968

/-! ## A148078.P10548857694586387048

`A211159(A020105(n))+A077269(n+1)`
-/

namespace A148078.P10548857694586387048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211159 (A020105 n).toNat + A077269 (n + 1)

end

end A148078.P10548857694586387048

/-! ## A148078.P11586258441854310819

`A262689(A067247(n+1)+A001563(n))`
-/

namespace A148078.P11586258441854310819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262689 (A067247 (n + 1) + A001563 n).toNat

end

end A148078.P11586258441854310819

/-!
# A148079: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 1), (0, 1, -1), (1, 0, 0)}.

The programs for A148079, there is no canonical definition to state claims against.
-/

/-! ## A148079.P2998348649337433384

`A187188(7*A000669(n+1))`
-/

namespace A148079.P2998348649337433384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187188 (7 * A000669 (n + 1)).toNat

end

end A148079.P2998348649337433384

/-! ## A148079.P17281693963874137818

`A187188(lcm(7, A000669(n+1)))`
-/

namespace A148079.P17281693963874137818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187188 (Int.lcm 7 (A000669 (n + 1)))

end

end A148079.P17281693963874137818

/-! ## A148079.P2206024751279499783

`A003074(A003097(n+2)+Δ[A007504(n)])`
-/

namespace A148079.P2206024751279499783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003074 (A003097 (n + 2) + (f1 (n + 1) - f1 n)).toNat

end

end A148079.P2206024751279499783

/-! ## A148079.P4499443077533687586

`A003074(A352089(n+3)+A003097(n+2))`
-/

namespace A148079.P4499443077533687586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003074 (A352089 (n + 3) + A003097 (n + 2)).toNat

end

end A148079.P4499443077533687586

/-! ## A148079.P2898784694934364292

`A003074(A003097(n+2)+p?[A018252(n+1)-7])`
-/

namespace A148079.P2898784694934364292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1) - 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003074 (A003097 (n + 2) + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A148079.P2898784694934364292

/-!
# A148080: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, -1, 1), (-1, 0, 1), (0, 1, -1), (1, 0, 0)}.

The programs for A148080, there is no canonical definition to state claims against.
-/

/-! ## A148080.P3093875523447086758

`A324965(A225646(n)+A073155(n))`
-/

namespace A148080.P3093875523447086758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324965 (A225646 n + A073155 n).toNat

end

end A148080.P3093875523447086758

/-! ## A148080.P8632399144534755790

`A191840(A303842(n+1)+A001523(n))`
-/

namespace A148080.P8632399144534755790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191840 (A303842 (n + 1) + A001523 n).toNat

end

end A148080.P8632399144534755790

/-! ## A148080.P16869082646233610902

`A324965(A073155(n)-(1-A225646(n)))`
-/

namespace A148080.P16869082646233610902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324965 (A073155 n - (1 - A225646 n)).toNat

end

end A148080.P16869082646233610902

/-!
# A148081: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, -1), (0, -1, 1), (0, 1, 0), (1, 0, -1)}.

The programs for A148081, there is no canonical definition to state claims against.
-/

/-! ## A148081.P1167442597385275734

`A000006(∑[A374292(n)])`
-/

namespace A148081.P1167442597385275734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374292 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000006 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A148081.P1167442597385275734

/-! ## A148081.P8744429325443023416

`A023193(A148168(n+1))`
-/

namespace A148081.P8744429325443023416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023193 (A148168 (n + 1)).toNat

end

end A148081.P8744429325443023416

/-! ## A148081.P11938555258713833438

`A172471(A179489(n+1))`
-/

namespace A148081.P11938555258713833438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172471 (A179489 (n + 1)).toNat

end

end A148081.P11938555258713833438

/-! ## A148081.P10585573172855060228

`ceil(A319558(n+3)/A070219(n+1))`
-/

namespace A148081.P10585573172855060228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A319558 (n + 3) : ℚ) / (A070219 (n + 1) : ℚ)⌉

end

end A148081.P10585573172855060228

/-!
# A148082: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 1), (0, 1, -1), (1, -1, -1), (1, 0, 0)}.

The programs for A148082, there is no canonical definition to state claims against.
-/

/-! ## A148082.P5882609459904837871

`A333678(n)+A066099(A000142(n))`
-/

namespace A148082.P5882609459904837871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333678 n + A066099 (A000142 n).toNat

end

end A148082.P5882609459904837871

/-! ## A148082.P8477028747325978073

`A333678(n)+A226898(A033453(n))`
-/

namespace A148082.P8477028747325978073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333678 n + A226898 (A033453 n).toNat

end

end A148082.P8477028747325978073

/-! ## A148082.P17142198733773887077

`A333678(n)+A275055(A008776(n))`
-/

namespace A148082.P17142198733773887077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333678 n + A275055 (A008776 n).toNat

end

end A148082.P17142198733773887077

/-! ## A148082.P17114546856078131607

`A155587(n)-A316343(A014138(n))`
-/

namespace A148082.P17114546856078131607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155587 n - A316343 (A014138 n).toNat

end

end A148082.P17114546856078131607

/-!
# A148083: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, -1), (0, 0, 1), (0, 1, -1), (1, -1, 0)}.

The programs for A148083, there is no canonical definition to state claims against.
-/

/-! ## A148083.P10703589579752880173

`A023193(A149120(n))`
-/

namespace A148083.P10703589579752880173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023193 (A149120 n).toNat

end

end A148083.P10703589579752880173

/-! ## A148083.P13345752300144975124

`A249728(A352437(n))`
-/

namespace A148083.P13345752300144975124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249728 (A352437 n).toNat

end

end A148083.P13345752300144975124

/-! ## A148083.P2035602693646091620

`A326575(A249728(n!))`
-/

namespace A148083.P2035602693646091620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326575 (A249728 (Nat.factorial n)).toNat

end

end A148083.P2035602693646091620

/-! ## A148083.P5417432949195710931

`A179051(4*n*A041247(n))`
-/

namespace A148083.P5417432949195710931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179051 ((4 * n : ℤ) * A041247 n).toNat

end

end A148083.P5417432949195710931

/-!
# A148084: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 1), (0, 1, -1), (1, -1, -1), (1, 0, 0)}.

The programs for A148084, there is no canonical definition to state claims against.
-/

/-! ## A148084.P6468086983586319319

`A055679(A149447(n)+3)`
-/

namespace A148084.P6468086983586319319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055679 (A149447 n + 3).toNat

end

end A148084.P6468086983586319319

/-! ## A148084.P6598771054642469796

`A262689(2*A006664(n))`
-/

namespace A148084.P6598771054642469796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262689 (2 * A006664 n).toNat

end

end A148084.P6598771054642469796

/-! ## A148084.P14752632889619272682

`A023193(A148933(n)+n)`
-/

namespace A148084.P14752632889619272682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023193 (A148933 n + (n : ℤ)).toNat

end

end A148084.P14752632889619272682

/-! ## A148084.P13450365471124856753

`A024417(A198944(n)+A102225(n))`
-/

namespace A148084.P13450365471124856753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024417 (A198944 n + A102225 n).toNat

end

end A148084.P13450365471124856753

/-!
# A148085: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, -1, 1), (-1, 0, 1), (0, 1, -1), (1, 0, 0)}.

The programs for A148085, there is no canonical definition to state claims against.
-/

/-! ## A148085.P18167869476983865839

`A026819(A053781(n+1)+n!)`
-/

namespace A148085.P18167869476983865839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026819 (A053781 (n + 1) + (Nat.factorial n : ℤ)).toNat

end

end A148085.P18167869476983865839

/-! ## A148085.P15193388645397339732

`A245900(n+1)-A324180(A319559(n))`
-/

namespace A148085.P15193388645397339732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245900 (n + 1) - A324180 (A319559 n).toNat

end

end A148085.P15193388645397339732

/-! ## A148085.P18376852803848932110

`A287896(A028310(n)*A334613(n+1))`
-/

namespace A148085.P18376852803848932110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287896 (A028310 n * A334613 (n + 1)).toNat

end

end A148085.P18376852803848932110

/-!
# A148086: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (0, 1, -1), (1, 0, 1)}.

The programs for A148086, there is no canonical definition to state claims against.
-/

/-! ## A148086.P9025928169849533727

`A194417(A181819(n!))`
-/

namespace A148086.P9025928169849533727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194417 (A181819 (Nat.factorial n)).toNat

end

end A148086.P9025928169849533727

/-! ## A148086.P5339888883962903505

`A364678(A210959(n+1)+A007716(n))`
-/

namespace A148086.P5339888883962903505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364678 (A210959 (n + 1) + A007716 n).toNat

end

end A148086.P5339888883962903505

/-! ## A148086.P3852611530248431724

`A055086(A000041(n)*A337274(n+1))`
-/

namespace A148086.P3852611530248431724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055086 (A000041 n * A337274 (n + 1)).toNat

end

end A148086.P3852611530248431724

/-! ## A148086.P14777248859641938663

`A209707(n)-A297243(A176500(n+3))`
-/

namespace A148086.P14777248859641938663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209707 n - A297243 (A176500 (n + 3)).toNat

end

end A148086.P14777248859641938663

/-!
# A148087: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, 0, 1), (1, 0, 0), (1, 1, -1)}.

The programs for A148087, there is no canonical definition to state claims against.
-/

/-! ## A148087.P9246979946162520372

`A000664(n)-A326918(A002426(n))`
-/

namespace A148087.P9246979946162520372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000664 n - A326918 (A002426 n).toNat

end

end A148087.P9246979946162520372

/-! ## A148087.P10231970661591769132

`A359755(A318771(2*n+1))-A122265(n+4)`
-/

namespace A148087.P10231970661591769132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359755 (A318771 (2 * n + 1)).toNat - A122265 (n + 4)

end

end A148087.P10231970661591769132

/-!
# A148088: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, 1), (0, 0, 1), (1, 0, -1)}.

The programs for A148088, there is no canonical definition to state claims against.
-/

/-! ## A148088.P5166851066641693137

`A029905(A000579(n))+A000682(n+1)`
-/

namespace A148088.P5166851066641693137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029905 (A000579 n).toNat + A000682 (n + 1)

end

end A148088.P5166851066641693137

/-! ## A148088.P3328564162062177431

`A164020(A291683(n))-A308767(A001371(n))`
-/

namespace A148088.P3328564162062177431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164020 (A291683 n).toNat - A308767 (A001371 n).toNat

end

end A148088.P3328564162062177431

/-! ## A148088.P8788598727998009593

`A046155(A245888(n+1)+n)`
-/

namespace A148088.P8788598727998009593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046155 (A245888 (n + 1) + (n : ℤ)).toNat

end

end A148088.P8788598727998009593

/-! ## A148088.P17781453410056200049

`A000006(A383802(n)+A103941(n))`
-/

namespace A148088.P17781453410056200049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000006 (A383802 n + A103941 n).toNat

end

end A148088.P17781453410056200049

/-!
# A148089: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 1, 1), (0, 0, 1), (1, 0, -1)}.

The programs for A148089, there is no canonical definition to state claims against.
-/

/-! ## A148089.P2784104572357384566

`A262518(A148724(n))`
-/

namespace A148089.P2784104572357384566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262518 (A148724 n).toNat

end

end A148089.P2784104572357384566

/-! ## A148089.P9054923455598262128

`A051889(A075205(n+2))`
-/

namespace A148089.P9054923455598262128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051889 (A075205 (n + 2)).toNat

end

end A148089.P9054923455598262128

/-! ## A148089.P12083051762074152120

`A026819(A321737(n)+n)`
-/

namespace A148089.P12083051762074152120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026819 (A321737 n + (n : ℤ)).toNat

end

end A148089.P12083051762074152120

/-! ## A148089.P4427829276893462867

`A046155(A321737(n)+n)`
-/

namespace A148089.P4427829276893462867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046155 (A321737 n + (n : ℤ)).toNat

end

end A148089.P4427829276893462867

/-!
# A148090: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, -1, 0), (-1, 1, 1), (0, 0, 1), (1, 0, -1)}.

The programs for A148090, there is no canonical definition to state claims against.
-/

/-! ## A148090.P203189032731999911

`A245898(n+1)-A130256(A239241(n))`
-/

namespace A148090.P203189032731999911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245898 (n + 1) - A130256 (A239241 n).toNat

end

end A148090.P203189032731999911

/-! ## A148090.P7481148580320208992

`A245898(n+1)-A001634(A376978(n+1))`
-/

namespace A148090.P7481148580320208992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245898 (n + 1) - A001634 (A376978 (n + 1)).toNat

end

end A148090.P7481148580320208992

/-! ## A148090.P11365150321578813843

`A245898(n+1)-A103509(A280226(n+1))`
-/

namespace A148090.P11365150321578813843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245898 (n + 1) - A103509 (A280226 (n + 1)).toNat

end

end A148090.P11365150321578813843

/-! ## A148090.P10974686123137784991

`A245898(n+1)-A349662(A115720(n+1))`
-/

namespace A148090.P10974686123137784991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245898 (n + 1) - A349662 (A115720 (n + 1)).toNat

end

end A148090.P10974686123137784991

/-!
# A148092: The partition function G(n,6).

The programs for A148092, there is no canonical definition to state claims against.
-/

/-! ## A148092.P4439072294470123298

`A108947(eq[6, A002262(n)])`
-/

namespace A148092.P4439072294470123298
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108947 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A148092.P4439072294470123298

/-! ## A148092.P17859870152609363393

`A108947(A167614(n+5)+3)`
-/

namespace A148092.P17859870152609363393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108947 (A167614 (n + 5) + 3).toNat

end

end A148092.P17859870152609363393

/-! ## A148092.P8700860292371472909

`A108947(A052905(n+3)+11)`
-/

namespace A148092.P8700860292371472909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108947 (A052905 (n + 3) + 11).toNat

end

end A148092.P8700860292371472909

/-! ## A148092.P12679087341918493101

`A108947(A055999(n+3)+12)`
-/

namespace A148092.P12679087341918493101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108947 (A055999 (n + 3) + 12).toNat

end

end A148092.P12679087341918493101

/-! ## A148092.P12843157669928338515

`A108947(eq[7, A002260(n+1)])`
-/

namespace A148092.P12843157669928338515
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108947 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A148092.P12843157669928338515

/-! ## A148092.P11776030671903155477

`A108947(A008706(n+5)+A000124(n+1))`
-/

namespace A148092.P11776030671903155477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108947 (A008706 (n + 5) + A000124 (n + 1)).toNat

end

end A148092.P11776030671903155477

/-! ## A148092.P9814865251652960218

`A108947(A005843(n+8)+A000124(n+4))`
-/

namespace A148092.P9814865251652960218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108947 (A005843 (n + 8) + A000124 (n + 4)).toNat

end

end A148092.P9814865251652960218

/-!
# A148093: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, 0, 0), (0, -1, 1), (0, 1, 0), (1, 0, -1)}.

The programs for A148093, there is no canonical definition to state claims against.
-/

/-! ## A148093.P15549386686212417637

`A184943(A332870(n))+A005817(n)`
-/

namespace A148093.P15549386686212417637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184943 (A332870 n).toNat + A005817 n

end

end A148093.P15549386686212417637

/-! ## A148093.P5468299130722576591

`A000085(n)-A067169(A078140(n+1))`
-/

namespace A148093.P5468299130722576591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000085 n - A067169 ((A078140 (n + 1)).toNat + 11)

end

end A148093.P5468299130722576591

/-!
# A148094: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 0), (0, 0, 1), (0, 1, -1), (1, -1, 0)}.

The programs for A148094, there is no canonical definition to state claims against.
-/

/-! ## A148094.P10724500696468812212

`A245898(n+1)-Δ[A033630(n)]`
-/

namespace A148094.P10724500696468812212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033630 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245898 (n + 1) - (f1 (n + 1) - f1 n)

end

end A148094.P10724500696468812212

/-! ## A148094.P16697418050075981337

`A245898(n+1)-Δ[Δ[A333535(n+1)]]`
-/

namespace A148094.P16697418050075981337
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333535 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245898 (n + 1) - (f1 (n + 1) - f1 n)

end

end A148094.P16697418050075981337

/-! ## A148094.P10185553671628471501

`A245898(n+1)+Δ[A336865(2*n+1)]`
-/

namespace A148094.P10185553671628471501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336865 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245898 (n + 1) + (f1 (n + 1) - f1 n)

end

end A148094.P10185553671628471501

/-! ## A148094.P15581160734442131774

`A245898(n+1)-Δ[A000002(3*n+1)]`
-/

namespace A148094.P15581160734442131774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000002 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245898 (n + 1) - (f1 (n + 1) - f1 n)

end

end A148094.P15581160734442131774

/-!
# A148095: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 0), (0, 0, 1), (0, 1, -1), (1, -1, 0)}.

The programs for A148095, there is no canonical definition to state claims against.
-/

/-! ## A148095.P6106067324238313840

`A401118(A148192(n))`
-/

namespace A148095.P6106067324238313840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A401118 (A148192 n).toNat

end

end A148095.P6106067324238313840

/-! ## A148095.P13159617024140516177

`A106053(n)+A055642(A000984(n))`
-/

namespace A148095.P13159617024140516177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106053 n + A055642 (A000984 n).toNat

end

end A148095.P13159617024140516177

/-! ## A148095.P363745756831572854

`A106053(n)+A055642(A326898(n))`
-/

namespace A148095.P363745756831572854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106053 n + A055642 (A326898 n).toNat

end

end A148095.P363745756831572854

/-! ## A148095.P7778561264818096766

`A106053(n)+A055642(A328296(n))`
-/

namespace A148095.P7778561264818096766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106053 n + A055642 (A328296 n).toNat

end

end A148095.P7778561264818096766

/-!
# A148096: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, -1, 1), (-1, 1, 1), (0, 0, 1), (1, 0, -1)}.

The programs for A148096, there is no canonical definition to state claims against.
-/

/-! ## A148096.P9842874910819642685

`A236362(A339828(n+2))`
-/

namespace A148096.P9842874910819642685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236362 (A339828 (n + 2)).toNat

end

end A148096.P9842874910819642685

/-! ## A148096.P16697933758185859878

`A000085(n)-A368842(Δ[(n-1)*C(n, 2)])`
-/

namespace A148096.P16697933758185859878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * (Nat.choose n 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000085 n - A368842 (f1 (n + 1) - f1 n).toNat

end

end A148096.P16697933758185859878

/-! ## A148096.P13713431883404126886

`A000085(n)-val(∏{p}[A208872(3*n+1), #], 11)`
-/

namespace A148096.P13713431883404126886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208872 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000085 n - (SequenceMachineLib.valuation (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p) 11 : ℤ)

end

end A148096.P13713431883404126886

/-! ## A148096.P4144477684635129689

`A000085(n)-(floor(ratio[A223157(3*n+5)])+1)%2`
-/

namespace A148096.P4144477684635129689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223157 (3 * n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000085 n - Int.tmod (⌊(f1 (n + 1) : ℚ) / (f1 n : ℚ)⌋ + 1) 2

end

end A148096.P4144477684635129689

/-!
# A148097: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 1), (0, 0, 1), (0, 1, -1), (1, -1, 0)}.

The programs for A148097, there is no canonical definition to state claims against.
-/

/-! ## A148097.P12661998255962022913

`A356737(n²-n+2)`
-/

namespace A148097.P12661998255962022913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356737 ((n ^ 2 : ℤ) - (n : ℤ) + 2).toNat

end

end A148097.P12661998255962022913

/-! ## A148097.P6739041986698657084

`A127757(A129880(n+1))`
-/

namespace A148097.P6739041986698657084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127757 (A129880 (n + 1)).toNat

end

end A148097.P6739041986698657084

/-! ## A148097.P6694011052446988896

`A023190(A085139(n))`
-/

namespace A148097.P6694011052446988896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023190 (A085139 n).toNat

end

end A148097.P6694011052446988896

/-! ## A148097.P17744174409892362662

`A024417(A148835(n))`
-/

namespace A148097.P17744174409892362662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024417 (A148835 n).toNat

end

end A148097.P17744174409892362662

/-!
# A148098: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, 0, 1), (0, 0, 1), (0, 1, -1), (1, -1, 0)}.

The programs for A148098, there is no canonical definition to state claims against.
-/

/-! ## A148098.P1935429586361857929

`A066888(A360267(n)+1)`
-/

namespace A148098.P1935429586361857929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066888 (A360267 n + 1).toNat

end

end A148098.P1935429586361857929

/-! ## A148098.P9592531665130219472

`A185319(A129966(n+2))`
-/

namespace A148098.P9592531665130219472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185319 (A129966 (n + 2)).toNat

end

end A148098.P9592531665130219472

/-! ## A148098.P7153970512225102939

`A185319(∑[A007953(∑{digits}[n, #]^3)])`
-/

namespace A148098.P7153970512225102939
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => x).sum ^ 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185319 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A148098.P7153970512225102939

/-! ## A148098.P16262877098222977719

`A000085(n)-A000120((n-5)*n*((n-1-(2-n)²)²-1))`
-/

namespace A148098.P16262877098222977719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000085 n - A000120 (((n : ℤ) - 5) * ((n : ℤ) * (((n : ℤ) - 1 - (2 - (n : ℤ)) ^ 2) ^ 2 - 1))).toNat

end

end A148098.P16262877098222977719

/-!
# A148099: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 1), (0, -1, 1), (0, 1, -1), (1, 0, 0)}.

The programs for A148099, there is no canonical definition to state claims against.
-/

/-! ## A148099.P16952992863175620130

`A095773(A174193(n))`
-/

namespace A148099.P16952992863175620130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095773 (A174193 n).toNat

end

end A148099.P16952992863175620130

/-! ## A148099.P6390898215740257910

`A277112(A245898(n+1))`
-/

namespace A148099.P6390898215740257910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277112 (A245898 (n + 1)).toNat

end

end A148099.P6390898215740257910

/-! ## A148099.P18335841775858641585

`A262689(A004212(n)+2)`
-/

namespace A148099.P18335841775858641585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262689 (A004212 n + 2).toNat

end

end A148099.P18335841775858641585

/-! ## A148099.P10861928955946059818

`A245898(n+1)+∑[A345195(n)]`
-/

namespace A148099.P10861928955946059818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345195 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245898 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A148099.P10861928955946059818

