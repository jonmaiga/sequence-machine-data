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
import Seq.B000.C019
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C034
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
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C001
import Seq.B010.C000
import Seq.B011.C000
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
# A148300: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 1, 0), (-1, 1, 1), (0, 0, 1), (1, 0, -1)}.

The programs for A148300, there is no canonical definition to state claims against.
-/

/-! ## A148300.P5549323859708904933

`A390395(A148350(n))`
-/

namespace A148300.P5549323859708904933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390395 (A148350 n).toNat

end

end A148300.P5549323859708904933

/-! ## A148300.P8948960620305451933

`A270650(A000108(n))+A014335(n)`
-/

namespace A148300.P8948960620305451933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270650 (A000108 n).toNat + A014335 n

end

end A148300.P8948960620305451933

/-! ## A148300.P7437020207698083347

`A157271(A341072(n)+A160384(n+1))`
-/

namespace A148300.P7437020207698083347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157271 (A341072 n + A160384 (n + 1)).toNat

end

end A148300.P7437020207698083347

/-!
# A148301: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 0), (-1, 0, 1), (0, 1, -1), (0, 1, 0), (1, -1, 0)}.

The programs for A148301, there is no canonical definition to state claims against.
-/

/-! ## A148301.P3053516199339301404

`A054404(A294772(n)+A015128(n))`
-/

namespace A148301.P3053516199339301404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054404 (A294772 n + A015128 n).toNat

end

end A148301.P3053516199339301404

/-! ## A148301.P11809779151910044915

`A264749(A122446(n)+A000984(n))`
-/

namespace A148301.P11809779151910044915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264749 (A122446 n + A000984 n).toNat

end

end A148301.P11809779151910044915

/-! ## A148301.P17331607955376655097

`A000108(n)-A333223(A038503(n))`
-/

namespace A148301.P17331607955376655097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n - A333223 (A038503 n).toNat

end

end A148301.P17331607955376655097

/-! ## A148301.P12642114447958316419

`A339039(n)-A025466(A058835(n))`
-/

namespace A148301.P12642114447958316419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339039 n - A025466 (A058835 n).toNat

end

end A148301.P12642114447958316419

/-!
# A148302: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 1), (0, 1, -1), (1, 0, -1), (1, 0, 0)}.

The programs for A148302, there is no canonical definition to state claims against.
-/

/-! ## A148302.P12799227147548145953

`A071724(n)-A090620(A123011(n))`
-/

namespace A148302.P12799227147548145953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071724 n - A090620 (A123011 n).toNat

end

end A148302.P12799227147548145953

/-! ## A148302.P10448804201280400252

`A024417(or(A122448(n), A244884(n)))`
-/

namespace A148302.P10448804201280400252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024417 (Int.lor (A122448 n) (A244884 n)).toNat

end

end A148302.P10448804201280400252

/-! ## A148302.P3123935577258900528

`A248227(or(A148563(n), A316662(n)))`
-/

namespace A148302.P3123935577258900528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248227 (Int.lor (A148563 n) (A316662 n)).toNat

end

end A148302.P3123935577258900528

/-! ## A148302.P4006442453554593199

`A085862(A074434(n+1))+A001519(n)`
-/

namespace A148302.P4006442453554593199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085862 (A074434 (n + 1)).toNat + A001519 n

end

end A148302.P4006442453554593199

/-!
# A148303: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 1), (0, 1, -1), (1, 0, -1), (1, 0, 0)}.

The programs for A148303, there is no canonical definition to state claims against.
-/

/-! ## A148303.P16090681887487524745

`A024417(A149046(n))`
-/

namespace A148303.P16090681887487524745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024417 (A149046 n).toNat

end

end A148303.P16090681887487524745

/-! ## A148303.P16669873179834712821

`A340764(A026558(n)+1)`
-/

namespace A148303.P16669873179834712821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340764 (A026558 n + 1).toNat

end

end A148303.P16669873179834712821

/-! ## A148303.P10454774846266336471

`A340764(or(2, A026558(n)))`
-/

namespace A148303.P10454774846266336471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340764 (Int.lor 2 (A026558 n)).toNat

end

end A148303.P10454774846266336471

/-!
# A148304: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 0), (-1, 0, 1), (0, 1, 0), (1, -1, 0), (1, 0, -1)}.

The programs for A148304, there is no canonical definition to state claims against.
-/

/-! ## A148304.P16394481451531247864

`floor(sqrt(A274242(n!)))`
-/

namespace A148304.P16394481451531247864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A274242 (Nat.factorial n))

end

end A148304.P16394481451531247864

/-! ## A148304.P10553867692513491565

`A229301(A121956(n+1))`
-/

namespace A148304.P10553867692513491565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229301 (A121956 (n + 1)).toNat

end

end A148304.P10553867692513491565

/-! ## A148304.P14127780070584109986

`A187187(3*A148302(n+1))`
-/

namespace A148304.P14127780070584109986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187187 (3 * A148302 (n + 1)).toNat

end

end A148304.P14127780070584109986

/-! ## A148304.P127334936501923674

`A000108(n)-A344834(A349456(n))`
-/

namespace A148304.P127334936501923674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n - A344834 (A349456 n).toNat

end

end A148304.P127334936501923674

/-!
# A148305: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 0), (-1, 0, 1), (0, 1, 0), (1, -1, 0), (1, 1, -1)}.

The programs for A148305, there is no canonical definition to state claims against.
-/

/-! ## A148305.P16195920308732232163

`A157271(A148789(n)+1)`
-/

namespace A148305.P16195920308732232163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157271 (A148789 n + 1).toNat

end

end A148305.P16195920308732232163

/-! ## A148305.P2635640005681250813

`A008616(5*A148789(n))`
-/

namespace A148305.P2635640005681250813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008616 (5 * A148789 n).toNat

end

end A148305.P2635640005681250813

/-! ## A148305.P6505287510574765434

`A000108(n)-A087436(A134055(n))`
-/

namespace A148305.P6505287510574765434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n - A087436 (A134055 n).toNat

end

end A148305.P6505287510574765434

/-!
# A148306: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, -1, 0), (-1, 0, 0), (0, 0, 1), (1, 1, -1)}.

The programs for A148306, there is no canonical definition to state claims against.
-/

/-! ## A148306.P14485597713351385161

`A148307(n)-A185264(∑[n])`
-/

namespace A148306.P14485597713351385161
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148307 n - A185264 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A148306.P14485597713351385161

/-! ## A148306.P12281632655951083468

`A037918(A230555(n)+A006924(n))`
-/

namespace A148306.P12281632655951083468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037918 (A230555 n + A006924 n).toNat

end

end A148306.P12281632655951083468

/-! ## A148306.P11718199533553521282

`A024417(A334484(n)+A122448(n))`
-/

namespace A148306.P11718199533553521282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024417 (A334484 n + A122448 n).toNat

end

end A148306.P11718199533553521282

/-! ## A148306.P14990799304065765776

`xor(A148307(n), A185284(A025715(n)))`
-/

namespace A148306.P14990799304065765776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A148307 n) (A185284 (A025715 n).toNat)

end

end A148306.P14990799304065765776

/-!
# A148307: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, -1, 1), (0, 1, -1), (1, 0, -1), (1, 1, 0)}.

The programs for A148307, there is no canonical definition to state claims against.
-/

/-! ## A148307.P8858383270675699882

`A185264(∑[n])+A148306(n)`
-/

namespace A148307.P8858383270675699882
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185264 (∑ j ∈ Finset.range (n + 1), f1 j) + A148306 n

end

end A148307.P8858383270675699882

/-! ## A148307.P742978667143773699

`xor(A148306(n), A185284(A025715(n)))`
-/

namespace A148307.P742978667143773699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A148306 n) (A185284 (A025715 n).toNat)

end

end A148307.P742978667143773699

/-! ## A148307.P948944463270990560

`A185255(A271345(n+1))+A148306(n)`
-/

namespace A148307.P948944463270990560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185255 (A271345 (n + 1)).toNat + A148306 n

end

end A148307.P948944463270990560

/-!
# A148308: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 1), (0, 1, 1), (1, 0, -1)}.

The programs for A148308, there is no canonical definition to state claims against.
-/

/-! ## A148308.P1388657344915230531

`A261585(5*A316980(n))`
-/

namespace A148308.P1388657344915230531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261585 (5 * A316980 n).toNat

end

end A148308.P1388657344915230531

/-! ## A148308.P7982361624933727423

`A054404(A007716(n)+A000213(n))`
-/

namespace A148308.P7982361624933727423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054404 (A007716 n + A000213 n).toNat

end

end A148308.P7982361624933727423

/-! ## A148308.P4564534249189117812

`A054404(A113863(n)+A007716(n))`
-/

namespace A148308.P4564534249189117812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054404 (A113863 n + A007716 n).toNat

end

end A148308.P4564534249189117812

/-! ## A148308.P7984882047845560757

`A054404(A319755(n)+A007716(n))`
-/

namespace A148308.P7984882047845560757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054404 (A319755 n + A007716 n).toNat

end

end A148308.P7984882047845560757

/-!
# A148309: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 1, 1), (0, 1, 1), (1, 0, -1)}.

The programs for A148309, there is no canonical definition to state claims against.
-/

/-! ## A148309.P11396057130123846823

`A289500(A318118(n)+A278768(n))`
-/

namespace A148309.P11396057130123846823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289500 (A318118 n + A278768 n).toNat

end

end A148309.P11396057130123846823

/-! ## A148309.P11588107485854025318

`A054404(A088817(n+1)+A007716(n))`
-/

namespace A148309.P11588107485854025318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054404 (A088817 (n + 1) + A007716 n).toNat

end

end A148309.P11588107485854025318

/-! ## A148309.P8242133862753327746

`A070868(A147907(n+1)-A010051(n+1))`
-/

namespace A148309.P8242133862753327746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070868 (A147907 (n + 1) - A010051 (n + 1)).toNat

end

end A148309.P8242133862753327746

/-! ## A148309.P4653007826833113657

`A070868(A147916(n+1)-A010051(n+1))`
-/

namespace A148309.P4653007826833113657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070868 (A147916 (n + 1) - A010051 (n + 1)).toNat

end

end A148309.P4653007826833113657

/-!
# A148310: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 0), (-1, 1, 0), (0, 1, 1), (1, -1, -1)}.

The programs for A148310, there is no canonical definition to state claims against.
-/

/-! ## A148310.P6978540361659700230

`A148311(n)%Δ[(n+1)^9^n]`
-/

namespace A148310.P6978540361659700230
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 9) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A148311 n) ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A148310.P6978540361659700230

/-! ## A148310.P14175053087422337326

`A148311(A002998(n))`
-/

namespace A148310.P14175053087422337326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148311 (A002998 n).toNat

end

end A148310.P14175053087422337326

/-! ## A148310.P15788130799379862268

`A004184(A148311(n))`
-/

namespace A148310.P15788130799379862268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004184 (A148311 n).toNat

end

end A148310.P15788130799379862268

/-! ## A148310.P13654836861414196065

`A148311(A039723(n))`
-/

namespace A148310.P13654836861414196065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148311 (A039723 n).toNat

end

end A148310.P13654836861414196065

/-! ## A148310.P1629719396480799275

`A148311(A046469(n))`
-/

namespace A148310.P1629719396480799275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148311 (A046469 n).toNat

end

end A148310.P1629719396480799275

/-!
# A148312: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 1), (-1, 1, 0), (0, 1, 1), (1, -1, -1)}.

The programs for A148312, there is no canonical definition to state claims against.
-/

/-! ## A148312.P17176854712146747772

`A148313(n)%Δ[(n+1)^9^n]`
-/

namespace A148312.P17176854712146747772
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 9) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A148313 n) ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A148312.P17176854712146747772

/-! ## A148312.P13449219612783499745

`A148313(A002998(n))`
-/

namespace A148312.P13449219612783499745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148313 (A002998 n).toNat

end

end A148312.P13449219612783499745

/-! ## A148312.P14249381198941665328

`A007948(A148313(n))`
-/

namespace A148312.P14249381198941665328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007948 (A148313 n).toNat

end

end A148312.P14249381198941665328

/-! ## A148312.P14811899616960326494

`A148313(A024664(n))`
-/

namespace A148312.P14811899616960326494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148313 (A024664 n).toNat

end

end A148312.P14811899616960326494

/-! ## A148312.P14079293569580396817

`A148313(A039723(n))`
-/

namespace A148312.P14079293569580396817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148313 (A039723 n).toNat

end

end A148312.P14079293569580396817

/-!
# A148314: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 1), (0, 0, 1), (1, 1, -1)}.

The programs for A148314, there is no canonical definition to state claims against.
-/

/-! ## A148314.P11231980057231505548

`A238875(n)+A027868(A000136(n+1))`
-/

namespace A148314.P11231980057231505548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238875 n + A027868 (A000136 (n + 1)).toNat

end

end A148314.P11231980057231505548

/-! ## A148314.P6366107999979852798

`A254011(9*A316980(n))`
-/

namespace A148314.P6366107999979852798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254011 (9 * A316980 n).toNat

end

end A148314.P6366107999979852798

/-! ## A148314.P85180843690525876

`A126257(A005169(2*n))+1`
-/

namespace A148314.P85180843690525876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126257 (A005169 (2 * n)).toNat + 1

end

end A148314.P85180843690525876

/-! ## A148314.P16422034068524592803

`A167993(n)+A088569(A000142(n))`
-/

namespace A148314.P16422034068524592803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167993 n + A088569 (A000142 n).toNat

end

end A148314.P16422034068524592803

/-!
# A148315: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, 0, 1), (-1, 1, 1), (0, 0, 1), (1, 0, -1)}.

The programs for A148315, there is no canonical definition to state claims against.
-/

/-! ## A148315.P10677946312993329222

`A187188(7*A148584(n))`
-/

namespace A148315.P10677946312993329222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187188 (7 * A148584 n).toNat

end

end A148315.P10677946312993329222

/-! ## A148315.P4441992347932588811

`A187188(lcm(7, A148584(n)))`
-/

namespace A148315.P4441992347932588811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187188 (Int.lcm 7 (A148584 n))

end

end A148315.P4441992347932588811

/-! ## A148315.P8971136848626603875

`A159773(n+1)-A297237(A040173(n+1))`
-/

namespace A148315.P8971136848626603875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159773 (n + 1) - A297237 (A040173 (n + 1)).toNat

end

end A148315.P8971136848626603875

/-!
# A148316: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 0), (0, -1, 1), (0, 0, 1), (0, 1, -1), (1, -1, 0)}.

The programs for A148316, there is no canonical definition to state claims against.
-/

/-! ## A148316.P15868540896967644866

`A061017(A318118(n))`
-/

namespace A148316.P15868540896967644866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061017 (A318118 n).toNat

end

end A148316.P15868540896967644866

/-! ## A148316.P15597373191810034233

`A230980(2*A277222(n))`
-/

namespace A148316.P15597373191810034233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 (2 * A277222 n).toNat

end

end A148316.P15597373191810034233

/-! ## A148316.P3689188312350210992

`A081753(7*A050535(n))`
-/

namespace A148316.P3689188312350210992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081753 (7 * A050535 n).toNat

end

end A148316.P3689188312350210992

/-!
# A148317: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 1), (-1, 1, 1), (0, 0, 1), (1, 0, -1)}.

The programs for A148317, there is no canonical definition to state claims against.
-/

/-! ## A148317.P9905655424429437708

`A255408(A036766(n))+A244138(n)`
-/

namespace A148317.P9905655424429437708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255408 (A036766 n).toNat + A244138 n

end

end A148317.P9905655424429437708

/-! ## A148317.P10186293477114406674

`A036766(n)-A000122(A020876(n))`
-/

namespace A148317.P10186293477114406674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036766 n - A000122 (A020876 n).toNat

end

end A148317.P10186293477114406674

/-! ## A148317.P4633275495719470454

`A036766(n)-A065335(A162585(n))`
-/

namespace A148317.P4633275495719470454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036766 n - A065335 (A162585 n).toNat

end

end A148317.P4633275495719470454

/-! ## A148317.P10380602090784492310

`A255408(A036766(n)-A244138(n))`
-/

namespace A148317.P10380602090784492310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255408 (A036766 n - A244138 n).toNat

end

end A148317.P10380602090784492310

/-!
# A148318: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 1), (0, 0, -1), (1, 0, 0), (1, 1, -1)}.

The programs for A148318, there is no canonical definition to state claims against.
-/

/-! ## A148318.P10994600453895190816

`floor(A224829(A298269(n))/6)`
-/

namespace A148318.P10994600453895190816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A224829 (A298269 n).toNat : ℚ) / 6⌋

end

end A148318.P10994600453895190816

/-! ## A148318.P12745455662071660862

`A287968(n)-A025459(A287963(n+4))`
-/

namespace A148318.P12745455662071660862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287968 n - A025459 (A287963 (n + 4)).toNat

end

end A148318.P12745455662071660862

/-! ## A148318.P4835577647308813712

`or(A001222(A337905(n+1)), A148316(n))`
-/

namespace A148318.P4835577647308813712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001222 (A337905 (n + 1)).toNat) (A148316 n)

end

end A148318.P4835577647308813712

/-! ## A148318.P6655741134313713414

`A261585(xor(A033505(n), A207938(n+1)))`
-/

namespace A148318.P6655741134313713414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261585 (Int.xor (A033505 n) (A207938 (n + 1))).toNat

end

end A148318.P6655741134313713414

/-!
# A148319: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 1), (-1, 1, 1), (0, 0, 1), (1, 0, -1)}.

The programs for A148319, there is no canonical definition to state claims against.
-/

/-! ## A148319.P10965945102588944464

`A148345(n)-A110860(A123946(n))`
-/

namespace A148319.P10965945102588944464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148345 n - A110860 (A123946 n).toNat

end

end A148319.P10965945102588944464

/-! ## A148319.P17180944970680852153

`A148317(n)+A122922(A056299(n+1))`
-/

namespace A148319.P17180944970680852153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148317 n + A122922 (A056299 (n + 1)).toNat

end

end A148319.P17180944970680852153

/-! ## A148319.P10691881544310573546

`A148317(n)+A122922(A056370(n+1))`
-/

namespace A148319.P10691881544310573546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148317 n + A122922 (A056370 (n + 1)).toNat

end

end A148319.P10691881544310573546

/-!
# A148320: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 0), (0, -1, 0), (0, 0, 1), (1, 1, -1)}.

The programs for A148320, there is no canonical definition to state claims against.
-/

/-! ## A148320.P18302681289292063419

`A039708(A111285(n))`
-/

namespace A148320.P18302681289292063419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039708 (A111285 n).toNat

end

end A148320.P18302681289292063419

/-! ## A148320.P4187973406613190502

`A157271(record[A114506(n)])`
-/

namespace A148320.P4187973406613190502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114506 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157271 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A148320.P4187973406613190502

/-! ## A148320.P7836806954650124448

`A157271(A114507(n+1))`
-/

namespace A148320.P7836806954650124448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157271 (A114507 (n + 1)).toNat

end

end A148320.P7836806954650124448

/-! ## A148320.P1980150925573950650

`A318229(n+1)+A282601(A011782(n))`
-/

namespace A148320.P1980150925573950650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318229 (n + 1) + A282601 (A011782 n).toNat

end

end A148320.P1980150925573950650

/-!
# A148321: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 1), (-1, 1, 0), (0, -1, 1), (0, 0, 1), (1, 0, -1)}.

The programs for A148321, there is no canonical definition to state claims against.
-/

/-! ## A148321.P4585517736533929155

`A263986(n)+A001221(A005572(n))`
-/

namespace A148321.P4585517736533929155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263986 n + A001221 (A005572 n).toNat

end

end A148321.P4585517736533929155

/-! ## A148321.P11171171696969159791

`A000108(n)-A325960(A162326(n))`
-/

namespace A148321.P11171171696969159791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n - A325960 (A162326 n).toNat

end

end A148321.P11171171696969159791

/-! ## A148321.P3971122405179855679

`A263986(n)+A001221(A052179(∑[n]))`
-/

namespace A148321.P3971122405179855679
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263986 n + A001221 (A052179 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A148321.P3971122405179855679

/-!
# A148322: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 0), (-1, 1, 1), (0, -1, 0), (0, 0, 1), (1, 0, -1)}.

The programs for A148322, there is no canonical definition to state claims against.
-/

/-! ## A148322.P8759845059054418350

`A187185(2*A038076(n+1))`
-/

namespace A148322.P8759845059054418350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187185 (2 * A038076 (n + 1)).toNat

end

end A148322.P8759845059054418350

/-! ## A148322.P9755023539734346032

`A005674(n+1)+∏{e}[7^n, A081557(#)]`
-/

namespace A148322.P9755023539734346032
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005674 (n + 1) + ∏ p ∈ Nat.primeFactors (f1 n), A081557 (Nat.factorization (f1 n) p)

end

end A148322.P9755023539734346032

/-! ## A148322.P8744185772941357791

`A261585(A195020(n)+A071732(n))`
-/

namespace A148322.P8744185772941357791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261585 (A195020 n + A071732 n).toNat

end

end A148322.P8744185772941357791

/-! ## A148322.P7390432078502971733

`A346660(n+1)-A346619(A133042(n))`
-/

namespace A148322.P7390432078502971733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346660 (n + 1) - A346619 (A133042 n).toNat

end

end A148322.P7390432078502971733

/-!
# A148323: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 0), (-1, 1, 1), (0, -1, 1), (0, 0, 1), (1, 0, -1)}.

The programs for A148323, there is no canonical definition to state claims against.
-/

/-! ## A148323.P11184258267789091321

`A084470(A151391(n))`
-/

namespace A148323.P11184258267789091321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084470 (A151391 n).toNat

end

end A148323.P11184258267789091321

/-! ## A148323.P4922247113900944776

`A256502(A105864(n)+A000701(n))`
-/

namespace A148323.P4922247113900944776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256502 (A105864 n + A000701 n).toNat

end

end A148323.P4922247113900944776

/-! ## A148323.P12580646281133513917

`A112808(n)-A051889(A363363(n+1))`
-/

namespace A148323.P12580646281133513917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112808 n - A051889 (A363363 (n + 1)).toNat

end

end A148323.P12580646281133513917

/-!
# A148324: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 1), (-1, 1, 0), (0, 0, 1), (1, -1, 0), (1, 0, -1)}.

The programs for A148324, there is no canonical definition to state claims against.
-/

/-! ## A148324.P13642768076390622817

`A225545(A149053(n))-∑[A036630(n)]`
-/

namespace A148324.P13642768076390622817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036630 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225545 (A149053 n).toNat - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A148324.P13642768076390622817

/-! ## A148324.P18110939119865037743

`A165190(A214827(2*n)+A154370(2*(n+1)))`
-/

namespace A148324.P18110939119865037743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165190 (A214827 (2 * n) + A154370 (2 * (n + 1))).toNat

end

end A148324.P18110939119865037743

/-! ## A148324.P14943249503304762492

`A031148(A028310(n)+1)-A243865(A109156(n))`
-/

namespace A148324.P14943249503304762492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031148 (A028310 n + 1).toNat - A243865 (A109156 n).toNat

end

end A148324.P14943249503304762492

/-! ## A148324.P16107517000848806287

`A031148(A254667(n+1))-A243865(A109156(n))`
-/

namespace A148324.P16107517000848806287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031148 (A254667 (n + 1)).toNat - A243865 (A109156 n).toNat

end

end A148324.P16107517000848806287

/-!
# A148325: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 1), (0, 0, -1), (1, 0, 0), (1, 1, -1)}.

The programs for A148325, there is no canonical definition to state claims against.
-/

/-! ## A148325.P1632233831344257111

`A225545(A149053(n))`
-/

namespace A148325.P1632233831344257111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225545 (A149053 n).toNat

end

end A148325.P1632233831344257111

/-! ## A148325.P18369585823980544316

`A081753((n+4)*A293737(n))`
-/

namespace A148325.P18369585823980544316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081753 ((n + 4 : ℤ) * A293737 n).toNat

end

end A148325.P18369585823980544316

/-! ## A148325.P8750286902167786548

`A081753((n+4)*A293738(n))`
-/

namespace A148325.P8750286902167786548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081753 ((n + 4 : ℤ) * A293738 n).toNat

end

end A148325.P8750286902167786548

/-! ## A148325.P18356976755462561595

`A081753((n+4)*A293739(n))`
-/

namespace A148325.P18356976755462561595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081753 ((n + 4 : ℤ) * A293739 n).toNat

end

end A148325.P18356976755462561595

/-!
# A148326: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, -1), (0, -1, 0), (0, 0, 1), (1, 1, -1)}.

The programs for A148326, there is no canonical definition to state claims against.
-/

/-! ## A148326.P11848177710733489679

`A108141(A293114(n))`
-/

namespace A148326.P11848177710733489679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108141 (A293114 n).toNat

end

end A148326.P11848177710733489679

/-! ## A148326.P14879954867772589713

`A108141(A293746(n))`
-/

namespace A148326.P14879954867772589713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108141 (A293746 n).toNat

end

end A148326.P14879954867772589713

/-! ## A148326.P11620012774362094648

`A108141(A293747(n))`
-/

namespace A148326.P11620012774362094648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108141 (A293747 n).toNat

end

end A148326.P11620012774362094648

/-! ## A148326.P6111117395740884700

`A108141(A293748(n))`
-/

namespace A148326.P6111117395740884700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108141 (A293748 n).toNat

end

end A148326.P6111117395740884700

/-!
# A148327: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, -1), (0, 0, 1), (1, -1, 0), (1, 1, -1)}.

The programs for A148327, there is no canonical definition to state claims against.
-/

/-! ## A148327.P14560073840006383137

`A283483(A133228(n+1))+1`
-/

namespace A148327.P14560073840006383137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283483 (A133228 (n + 1)).toNat + 1

end

end A148327.P14560073840006383137

/-! ## A148327.P7313411383065843865

`A000108(n)-A036593(A000055(n))`
-/

namespace A148327.P7313411383065843865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n - A036593 (A000055 n).toNat

end

end A148327.P7313411383065843865

/-! ## A148327.P6310352582610615800

`A000108(n)-A054015(A006139(n))`
-/

namespace A148327.P6310352582610615800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n - A054015 (A006139 n).toNat

end

end A148327.P6310352582610615800

/-! ## A148327.P12397019218093052708

`A000108(n)-A083895(A001764(n))`
-/

namespace A148327.P12397019218093052708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n - A083895 (A001764 n).toNat

end

end A148327.P12397019218093052708

/-!
# A148328: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 0), (0, 0, 1), (1, -1, 0), (1, 1, -1)}.

The programs for A148328, there is no canonical definition to state claims against.
-/

/-! ## A148328.P11566103523428049559

`A290134(n)-A175070(A309861(n))`
-/

namespace A148328.P11566103523428049559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290134 n - A175070 (A309861 n).toNat

end

end A148328.P11566103523428049559

/-! ## A148328.P3824285403423440270

`A287968(n)+A217096(A271269(3*n+5))`
-/

namespace A148328.P3824285403423440270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287968 n + A217096 (A271269 (3 * n + 5)).toNat

end

end A148328.P3824285403423440270

/-! ## A148328.P8239601677069939191

`A290134(n)-A137579(A008619(n)!/A040001(n))`
-/

namespace A148328.P8239601677069939191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290134 n - A137579 (SequenceMachineLib.roundAway ((Nat.factorial (A008619 n).toNat : ℚ) / (A040001 n : ℚ))).toNat

end

end A148328.P8239601677069939191

/-!
# A148329: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 0), (0, 0, 1), (1, -1, -1), (1, 1, -1)}.

The programs for A148329, there is no canonical definition to state claims against.
-/

/-! ## A148329.P17074627074043402860

`A256974(A323429(n))+A000108(n)`
-/

namespace A148329.P17074627074043402860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256974 (A323429 n).toNat + A000108 n

end

end A148329.P17074627074043402860

/-! ## A148329.P7932925494979448196

`xor(A033191(n), A273463(A275695(n)))`
-/

namespace A148329.P7932925494979448196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A033191 n) (A273463 (A275695 n).toNat)

end

end A148329.P7932925494979448196

/-! ## A148329.P14565736154166335837

`A256502(∑[A360272(n)])`
-/

namespace A148329.P14565736154166335837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360272 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256502 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A148329.P14565736154166335837

/-! ## A148329.P3220492487199274884

`A000108(n)-A257399(n!)`
-/

namespace A148329.P3220492487199274884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n - A257399 (Nat.factorial n)

end

end A148329.P3220492487199274884

/-!
# A148330: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 1), (0, 1, -1), (1, 0, 0), (1, 1, -1)}.

The programs for A148330, there is no canonical definition to state claims against.
-/

/-! ## A148330.P5466564244202165850

`A072620(A390481(n))`
-/

namespace A148330.P5466564244202165850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072620 (A390481 n).toNat

end

end A148330.P5466564244202165850

/-! ## A148330.P9505246791889921160

`A006694(A058836(n))+A000108(n)`
-/

namespace A148330.P9505246791889921160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006694 (A058836 n).toNat + A000108 n

end

end A148330.P9505246791889921160

/-! ## A148330.P3998983399378667990

`A182377(A000602(n))+A000108(n)`
-/

namespace A148330.P3998983399378667990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182377 (A000602 n).toNat + A000108 n

end

end A148330.P3998983399378667990

/-!
# A148331: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, -1), (0, 0, 1), (1, -1, 0), (1, 1, -1)}.

The programs for A148331, there is no canonical definition to state claims against.
-/

/-! ## A148331.P17295035681866343629

`A267097(n+1)+A004525(A148793(n))`
-/

namespace A148331.P17295035681866343629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267097 (n + 1) + A004525 (A148793 n).toNat

end

end A148331.P17295035681866343629

/-! ## A148331.P16572536822539923018

`A241086(∑[gcd(n, C(2, n))+n])`
-/

namespace A148331.P16572536822539923018
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd n (Nat.choose 2 n) + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241086 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A148331.P16572536822539923018

/-! ## A148331.P2814957912949437699

`A241086(round(1/acot(n))+n²)`
-/

namespace A148331.P2814957912949437699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241086 (SequenceMachineLib.roundAway (1 / SequenceMachineLib.acot (n : ℝ)) + (n ^ 2 : ℤ)).toNat

end

end A148331.P2814957912949437699

/-! ## A148331.P13808305079622181383

`A241086(∑[2*n]+floor(acot(n)))`
-/

namespace A148331.P13808305079622181383
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241086 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + ⌊SequenceMachineLib.acot (n : ℝ)⌋).toNat

end

end A148331.P13808305079622181383

/-!
# A148332: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 1), (-1, 1, 0), (0, 0, 1), (1, -1, 1), (1, 0, -1)}.

The programs for A148332, there is no canonical definition to state claims against.
-/

/-! ## A148332.P14322000004404061290

`A085859(A000166(n))+A000108(n)`
-/

namespace A148332.P14322000004404061290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085859 (A000166 n).toNat + A000108 n

end

end A148332.P14322000004404061290

/-! ## A148332.P12286039370709157868

`A211008(A005142(n))+A000108(n)`
-/

namespace A148332.P12286039370709157868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211008 (A005142 n).toNat + A000108 n

end

end A148332.P12286039370709157868

/-! ## A148332.P11994037583939676711

`A217538(A099152(n)+A001835(n))`
-/

namespace A148332.P11994037583939676711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217538 (A099152 n + A001835 n).toNat

end

end A148332.P11994037583939676711

/-! ## A148332.P13560733235996372151

`A085859(A260091(n))+A000108(n)`
-/

namespace A148332.P13560733235996372151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085859 (A260091 n).toNat + A000108 n

end

end A148332.P13560733235996372151

/-!
# A148333: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 0), (-1, 1, 1), (0, 0, 1), (1, -1, 0), (1, 0, -1)}.

The programs for A148333, there is no canonical definition to state claims against.
-/

/-! ## A148333.P13596079886376440814

`A132085(A079319(n))`
-/

namespace A148333.P13596079886376440814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132085 (A079319 n).toNat

end

end A148333.P13596079886376440814

/-! ## A148333.P9738716104346893229

`A109497(A149472(n))`
-/

namespace A148333.P9738716104346893229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109497 (A149472 n).toNat

end

end A148333.P9738716104346893229

/-! ## A148333.P11705013967310753758

`A132085(A148942(n+1))`
-/

namespace A148333.P11705013967310753758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132085 (A148942 (n + 1)).toNat

end

end A148333.P11705013967310753758

/-! ## A148333.P15674809457732900262

`A132085(A002450(n)+2^n)`
-/

namespace A148333.P15674809457732900262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132085 (A002450 n + (2 ^ n : ℤ)).toNat

end

end A148333.P15674809457732900262

/-!
# A148334: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 0), (-1, 1, 1), (0, 0, 1), (1, -1, 1), (1, 0, -1)}.

The programs for A148334, there is no canonical definition to state claims against.
-/

/-! ## A148334.P16639831533483861510

`A307786(n)-A275332(A000332(n))`
-/

namespace A148334.P16639831533483861510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307786 n - A275332 (A000332 n).toNat

end

end A148334.P16639831533483861510

/-! ## A148334.P14349247103684551104

`A332086(A152104(n)+3)`
-/

namespace A148334.P14349247103684551104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332086 (A152104 n + 3).toNat

end

end A148334.P14349247103684551104

/-! ## A148334.P4011346127173764226

`A110656(7*A301832(n))`
-/

namespace A148334.P4011346127173764226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110656 (7 * A301832 n).toNat

end

end A148334.P4011346127173764226

/-! ## A148334.P12319967159815164778

`A180649(A048788(n))+A123020(n)`
-/

namespace A148334.P12319967159815164778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180649 (A048788 n).toNat + A123020 n

end

end A148334.P12319967159815164778

/-!
# A148335: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 1), (0, 1, 0), (1, -1, 1), (1, 0, -1)}.

The programs for A148335, there is no canonical definition to state claims against.
-/

/-! ## A148335.P15519235419197655847

`A195177(A277271(2*(n+2))+A131824(n))`
-/

namespace A148335.P15519235419197655847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195177 (A277271 (2 * (n + 2)) + A131824 n).toNat

end

end A148335.P15519235419197655847

/-! ## A148335.P9563643602674883523

`A226762(A365103(n+1))`
-/

namespace A148335.P9563643602674883523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226762 (A365103 (n + 1)).toNat

end

end A148335.P9563643602674883523

/-! ## A148335.P1710990157576157129

`A008616(A290953(n+2))`
-/

namespace A148335.P1710990157576157129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008616 (A290953 (n + 2)).toNat

end

end A148335.P1710990157576157129

/-! ## A148335.P3723638770099188384

`A008615(5*A368598(n))`
-/

namespace A148335.P3723638770099188384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (5 * A368598 n).toNat

end

end A148335.P3723638770099188384

/-!
# A148336: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 1), (0, 1, -1), (1, 0, 0), (1, 1, -1)}.

The programs for A148336, there is no canonical definition to state claims against.
-/

/-! ## A148336.P12142490519258424154

`A261585(∑[∑[A268430(n)]])`
-/

namespace A148336.P12142490519258424154
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268430 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261585 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A148336.P12142490519258424154

/-! ## A148336.P8501992964011052437

`A008617(A108630(n+3)+4)`
-/

namespace A148336.P8501992964011052437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008617 (A108630 (n + 3) + 4).toNat

end

end A148336.P8501992964011052437

/-! ## A148336.P14341763327651079198

`A008616(A101509(n)+A001075(n))`
-/

namespace A148336.P14341763327651079198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008616 (A101509 n + A001075 n).toNat

end

end A148336.P14341763327651079198

/-! ## A148336.P15587804785513773372

`A248183(A237593(n+1)+A001168(n))`
-/

namespace A148336.P15587804785513773372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248183 (A237593 (n + 1) + A001168 n).toNat

end

end A148336.P15587804785513773372

/-!
# A148337: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, 1), (0, 0, -1), (0, 1, -1), (1, 0, 0)}.

The programs for A148337, there is no canonical definition to state claims against.
-/

/-! ## A148337.P11121728907960805527

`A119816(A391035(n))`
-/

namespace A148337.P11121728907960805527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119816 (A391035 n).toNat

end

end A148337.P11121728907960805527

/-! ## A148337.P5009741553943267948

`A191225(A054109(n+1))`
-/

namespace A148337.P5009741553943267948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191225 (A054109 (n + 1)).toNat

end

end A148337.P5009741553943267948

/-! ## A148337.P10690027286301669632

`A289831(or(1, A350952(n)))`
-/

namespace A148337.P10690027286301669632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289831 (Int.lor 1 (A350952 n)).toNat

end

end A148337.P10690027286301669632

/-!
# A148338: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 1, 1), (0, 0, -1), (0, 1, -1), (1, 0, 0)}.

The programs for A148338, there is no canonical definition to state claims against.
-/

/-! ## A148338.P2048452723576358030

`A088004(or(A129147(n), A248227(n+1)))`
-/

namespace A148338.P2048452723576358030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088004 (Int.lor (A129147 n) (A248227 (n + 1))).toNat

end

end A148338.P2048452723576358030

/-! ## A148338.P14644328348580546443

`floor(A323787(n+1)/∑[n+1])`
-/

namespace A148338.P14644328348580546443
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A323787 (n + 1) : ℚ) / ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ)⌋

end

end A148338.P14644328348580546443

/-! ## A148338.P14495433089235623394

`A122212(A148039(n))`
-/

namespace A148338.P14495433089235623394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122212 (A148039 n).toNat

end

end A148338.P14495433089235623394

/-!
# A148339: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, -1, 0), (-1, -1, 1), (0, 1, -1), (1, 0, 1)}.

The programs for A148339, there is no canonical definition to state claims against.
-/

/-! ## A148339.P15589016139340721450

`A148340(A073789(n))`
-/

namespace A148339.P15589016139340721450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148340 (A073789 n).toNat

end

end A148339.P15589016139340721450

/-! ## A148339.P3568839216444379691

`A148340(A171644(n))`
-/

namespace A148339.P3568839216444379691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148340 (A171644 n).toNat

end

end A148339.P3568839216444379691

/-! ## A148339.P5583199893570451802

`A148340(A004869(n+1))`
-/

namespace A148339.P5583199893570451802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148340 (A004869 (n + 1)).toNat

end

end A148339.P5583199893570451802

/-! ## A148339.P11131347776783126895

`A148340(A004880(n+1))`
-/

namespace A148339.P11131347776783126895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148340 (A004880 (n + 1)).toNat

end

end A148339.P11131347776783126895

/-!
# A148340: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, -1, 1), (-1, 0, -1), (0, 1, 1), (1, 0, -1)}.

The programs for A148340, there is no canonical definition to state claims against.
-/

/-! ## A148340.P4525188667531218688

`A000027(A148341(n))`
-/

namespace A148340.P4525188667531218688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A148341 n).toNat

end

end A148340.P4525188667531218688

/-! ## A148340.P6522002391898512656

`A148341(A055648(n))`
-/

namespace A148340.P6522002391898512656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148341 (A055648 n).toNat

end

end A148340.P6522002391898512656

/-! ## A148340.P5854316703534726559

`A148341(A004874(n+1))`
-/

namespace A148340.P5854316703534726559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148341 (A004874 (n + 1)).toNat

end

end A148340.P5854316703534726559

/-! ## A148340.P6770061123263930181

`A148341(A004885(n+1))`
-/

namespace A148340.P6770061123263930181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148341 (A004885 (n + 1)).toNat

end

end A148340.P6770061123263930181

/-! ## A148340.P10957160935346131768

`A148341(A004896(n+1))`
-/

namespace A148340.P10957160935346131768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148341 (A004896 (n + 1)).toNat

end

end A148340.P10957160935346131768

/-!
# A148342: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, -1, 1), (-1, 0, 0), (0, 1, 1), (1, 0, -1)}.

The programs for A148342, there is no canonical definition to state claims against.
-/

/-! ## A148342.P17921115456824194432

`A148343(n)^cosh(n-∑{digits}[n, #])`
-/

namespace A148342.P17921115456824194432
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A148343 n : ℝ) ^ (Real.cosh ((n : ℤ) - ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum : ℕ) : ℤ) : ℝ))

end

end A148342.P17921115456824194432

/-! ## A148342.P10614220090752050052

`A148343(n²/∏{digits}[n, gcd(#, #!²)])`
-/

namespace A148342.P10614220090752050052
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148343 (SequenceMachineLib.roundAway ((n ^ 2 : ℚ) / ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => Nat.gcd x (Nat.factorial x ^ 2)).prod : ℕ) : ℚ))).toNat

end

end A148342.P10614220090752050052

/-! ## A148342.P15705462281605768071

`A148343(A002998(n))`
-/

namespace A148342.P15705462281605768071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148343 (A002998 n).toNat

end

end A148342.P15705462281605768071

/-! ## A148342.P15426515528167046638

`A004151(A148343(n))`
-/

namespace A148342.P15426515528167046638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004151 (A148343 n).toNat

end

end A148342.P15426515528167046638

/-! ## A148342.P12414221365578747708

`A148343(A023106(n))`
-/

namespace A148342.P12414221365578747708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148343 (A023106 n).toNat

end

end A148342.P12414221365578747708

/-!
# A148344: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 0), (-1, 1, -1), (0, 1, 1), (1, -1, 0)}.

The programs for A148344, there is no canonical definition to state claims against.
-/

/-! ## A148344.P7540273386428725707

`A000027(A148345(n))`
-/

namespace A148344.P7540273386428725707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A148345 n).toNat

end

end A148344.P7540273386428725707

/-! ## A148344.P591765651267740180

`A148345(A055648(n))`
-/

namespace A148344.P591765651267740180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148345 (A055648 n).toNat

end

end A148344.P591765651267740180

/-! ## A148344.P5429917034854629613

`A148345(A163352(∑[n]))`
-/

namespace A148344.P5429917034854629613
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148345 (A163352 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A148344.P5429917034854629613

/-! ## A148344.P10327645832116892440

`A148345(A004874(n+1))`
-/

namespace A148344.P10327645832116892440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148345 (A004874 (n + 1)).toNat

end

end A148344.P10327645832116892440

/-! ## A148344.P13489869926405545732

`A148345(A004885(n+1))`
-/

namespace A148344.P13489869926405545732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148345 (A004885 (n + 1)).toNat

end

end A148344.P13489869926405545732

/-!
# A148346: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 1), (-1, 1, -1), (0, 1, 1), (1, -1, 0)}.

The programs for A148346, there is no canonical definition to state claims against.
-/

/-! ## A148346.P1720124158037112192

`A000027(A148347(n))`
-/

namespace A148346.P1720124158037112192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A148347 n).toNat

end

end A148346.P1720124158037112192

/-! ## A148346.P7217226552922449584

`A148347(A055648(n))`
-/

namespace A148346.P7217226552922449584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148347 (A055648 n).toNat

end

end A148346.P7217226552922449584

/-! ## A148346.P10096125837898007496

`A148347(A004874(n+1))`
-/

namespace A148346.P10096125837898007496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148347 (A004874 (n + 1)).toNat

end

end A148346.P10096125837898007496

/-! ## A148346.P2977184279373173552

`A148347(A004885(n+1))`
-/

namespace A148346.P2977184279373173552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148347 (A004885 (n + 1)).toNat

end

end A148346.P2977184279373173552

/-! ## A148346.P11198662588452866298

`A148347(A004896(n+1))`
-/

namespace A148346.P11198662588452866298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148347 (A004896 (n + 1)).toNat

end

end A148346.P11198662588452866298

/-!
# A148348: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, -1), (1, -1, 0), (1, -1, 1), (1, 0, 1)}.

The programs for A148348, there is no canonical definition to state claims against.
-/

/-! ## A148348.P12472457886485662804

`A148349(n)^cosh(n-∑{digits}[n, #])`
-/

namespace A148348.P12472457886485662804
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A148349 n : ℝ) ^ (Real.cosh ((n : ℤ) - ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum : ℕ) : ℤ) : ℝ))

end

end A148348.P12472457886485662804

/-! ## A148348.P6744898473689164625

`A148349(A002998(n))`
-/

namespace A148348.P6744898473689164625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148349 (A002998 n).toNat

end

end A148348.P6744898473689164625

/-! ## A148348.P8459423060111180920

`A004181(A148349(n))`
-/

namespace A148348.P8459423060111180920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004181 (A148349 n).toNat

end

end A148348.P8459423060111180920

/-! ## A148348.P11532803162623235126

`A148349(A039723(n))`
-/

namespace A148348.P11532803162623235126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148349 (A039723 n).toNat

end

end A148348.P11532803162623235126

/-! ## A148348.P4109445568446838675

`A148349(A046469(n))`
-/

namespace A148348.P4109445568446838675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148349 (A046469 n).toNat

end

end A148348.P4109445568446838675

/-!
# A148350: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 1), (1, 0, -1), (1, 0, 0), (1, 1, -1)}.

The programs for A148350, there is no canonical definition to state claims against.
-/

/-! ## A148350.P14796987662291556085

`A260734(A148620(n))`
-/

namespace A148350.P14796987662291556085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260734 (A148620 n).toNat

end

end A148350.P14796987662291556085

/-! ## A148350.P10795240213175188111

`A049759(A356629(n))+A000108(n)`
-/

namespace A148350.P10795240213175188111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049759 (A356629 n).toNat + A000108 n

end

end A148350.P10795240213175188111

/-! ## A148350.P13062694433788794130

`A112325(A149001(n))`
-/

namespace A148350.P13062694433788794130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112325 (A149001 n).toNat

end

end A148350.P13062694433788794130

/-!
# A148351: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 0), (0, -1, 1), (0, 0, 1), (0, 1, -1), (1, -1, 1)}.

The programs for A148351, there is no canonical definition to state claims against.
-/

/-! ## A148351.P723587334159052649

`xor(A000108(n), A231204(A355671(n)))`
-/

namespace A148351.P723587334159052649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000108 n) (A231204 (A355671 n).toNat)

end

end A148351.P723587334159052649

/-! ## A148351.P15368244448751531357

`A024417(A149303(n))`
-/

namespace A148351.P15368244448751531357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024417 (A149303 n).toNat

end

end A148351.P15368244448751531357

/-! ## A148351.P16201420522841411299

`A277025(A380990(n+1))`
-/

namespace A148351.P16201420522841411299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277025 (A380990 (n + 1)).toNat

end

end A148351.P16201420522841411299

/-!
# A148352: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 1), (-1, 1, 1), (0, -1, 1), (0, 0, 1), (1, 0, -1)}.

The programs for A148352, there is no canonical definition to state claims against.
-/

/-! ## A148352.P17636954740799520760

`Δ[A077556(n)]-floor((n/2)²)`
-/

namespace A148352.P17636954740799520760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077556 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - ⌊((n : ℚ) / 2) ^ 2⌋

end

end A148352.P17636954740799520760

/-! ## A148352.P14265635621691634375

`A024417(A149302(n))`
-/

namespace A148352.P14265635621691634375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024417 (A149302 n).toNat

end

end A148352.P14265635621691634375

/-! ## A148352.P14234628130207333896

`A130446(A148351(n))`
-/

namespace A148352.P14234628130207333896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130446 (A148351 n).toNat

end

end A148352.P14234628130207333896

/-!
# A148353: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 1), (1, 0, -1), (1, 0, 0), (1, 1, -1)}.

The programs for A148353, there is no canonical definition to state claims against.
-/

/-! ## A148353.P458557519395561352

`A365877(A047041(n))`
-/

namespace A148353.P458557519395561352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365877 (A047041 n).toNat

end

end A148353.P458557519395561352

/-! ## A148353.P352830678131569635

`A215406(A077836(n+1))`
-/

namespace A148353.P352830678131569635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215406 (A077836 (n + 1)).toNat

end

end A148353.P352830678131569635

/-! ## A148353.P4669114696057704954

`A267418(A202059(n+2))+A202059(n)`
-/

namespace A148353.P4669114696057704954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267418 (A202059 (n + 2)).toNat + A202059 n

end

end A148353.P4669114696057704954

/-!
# A148354: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 0), (0, -1, 1), (0, 0, 1), (1, 1, -1)}.

The programs for A148354, there is no canonical definition to state claims against.
-/

/-! ## A148354.P7145902282852186481

`A390395(A364329(n))`
-/

namespace A148354.P7145902282852186481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390395 (A364329 n).toNat

end

end A148354.P7145902282852186481

/-! ## A148354.P8257206356368042033

`A097137(n)+A097098(2*C(n, 4))`
-/

namespace A148354.P8257206356368042033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097137 n + A097098 (2 * Nat.choose n 4)

end

end A148354.P8257206356368042033

/-! ## A148354.P9211478250623267557

`A062108(A276901(n)+A087787(n))`
-/

namespace A148354.P9211478250623267557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062108 (A276901 n + A087787 n).toNat

end

end A148354.P9211478250623267557

/-! ## A148354.P3978251687562255880

`A364330(n)-A213728(A274479(n+1))`
-/

namespace A148354.P3978251687562255880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364330 n - A213728 (A274479 (n + 1)).toNat

end

end A148354.P3978251687562255880

/-!
# A148355: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, -1), (0, 0, -1), (0, 1, 0), (1, -1, 1)}.

The programs for A148355, there is no canonical definition to state claims against.
-/

/-! ## A148355.P16357892089344041945

`A127763(A011782(n)+A000588(n+1))`
-/

namespace A148355.P16357892089344041945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127763 (A011782 n + A000588 (n + 1)).toNat

end

end A148355.P16357892089344041945

/-! ## A148355.P14862559529649319135

`A127763(A166444(n+1)+A000588(n+1))`
-/

namespace A148355.P14862559529649319135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127763 (A166444 (n + 1) + A000588 (n + 1)).toNat

end

end A148355.P14862559529649319135

/-! ## A148355.P234939441825117554

`A033862(A148356(n))`
-/

namespace A148355.P234939441825117554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033862 (A148356 n).toNat

end

end A148355.P234939441825117554

/-!
# A148356: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, -1), (0, 1, 0), (1, -1, 1), (1, 0, -1)}.

The programs for A148356, there is no canonical definition to state claims against.
-/

/-! ## A148356.P12503361047659106204

`A187183(A149959(n)+A083329(n))`
-/

namespace A148356.P12503361047659106204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187183 (A149959 n + A083329 n).toNat

end

end A148356.P12503361047659106204

/-! ## A148356.P10690762516149620635

`A217538(A303477(n+1))`
-/

namespace A148356.P10690762516149620635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217538 (A303477 (n + 1)).toNat

end

end A148356.P10690762516149620635

/-! ## A148356.P6490484800548032882

`A138194(or(2, A213860(n+1)))`
-/

namespace A148356.P6490484800548032882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138194 (Int.lor 2 (A213860 (n + 1))).toNat

end

end A148356.P6490484800548032882

/-! ## A148356.P6482309240062323865

`A138194(A213860(n+1)+A124744(n))`
-/

namespace A148356.P6482309240062323865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138194 (A213860 (n + 1) + A124744 n).toNat

end

end A148356.P6482309240062323865

/-!
# A148357: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 0), (0, 0, 1), (1, -1, -1), (1, 1, -1)}.

The programs for A148357, there is no canonical definition to state claims against.
-/

/-! ## A148357.P10442946643758717081

`A130916(A148351(n))`
-/

namespace A148357.P10442946643758717081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130916 (A148351 n).toNat

end

end A148357.P10442946643758717081

/-! ## A148357.P11309502558980628787

`A130916(A148356(n))`
-/

namespace A148357.P11309502558980628787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130916 (A148356 n).toNat

end

end A148357.P11309502558980628787

/-! ## A148357.P14136516342948526037

`A217538(A292463(n))`
-/

namespace A148357.P14136516342948526037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217538 (A292463 n).toNat

end

end A148357.P14136516342948526037

/-! ## A148357.P2616426491145450021

`A130916(A363431(n+1))`
-/

namespace A148357.P2616426491145450021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130916 (A363431 (n + 1)).toNat

end

end A148357.P2616426491145450021

/-!
# A148358: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 0), (0, -1, 1), (0, 1, 0), (1, 0, -1), (1, 1, -1)}.

The programs for A148358, there is no canonical definition to state claims against.
-/

/-! ## A148358.P9157120607614201804

`A226190(A192207(n)+1)`
-/

namespace A148358.P9157120607614201804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226190 (A192207 n + 1).toNat

end

end A148358.P9157120607614201804

/-! ## A148358.P6943692599991301378

`A108954(A307426(n+1)+1)`
-/

namespace A148358.P6943692599991301378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108954 (A307426 (n + 1) + 1).toNat

end

end A148358.P6943692599991301378

/-! ## A148358.P10791176705861310148

`A108954(A151287(n)+A039599(n))`
-/

namespace A148358.P10791176705861310148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108954 (A151287 n + A039599 n).toNat

end

end A148358.P10791176705861310148

/-! ## A148358.P10988905103985352544

`A108954(A151287(n)+A050145(n))`
-/

namespace A148358.P10988905103985352544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108954 (A151287 n + A050145 n).toNat

end

end A148358.P10988905103985352544

/-!
# A148359: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 1, -1), (0, 0, 1), (1, -1, 0), (1, 1, -1)}.

The programs for A148359, there is no canonical definition to state claims against.
-/

/-! ## A148359.P4394929660086722304

`A065033(A148831(n)+A008279(n))`
-/

namespace A148359.P4394929660086722304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A148831 n + A008279 n).toNat

end

end A148359.P4394929660086722304

/-! ## A148359.P12221158969651571181

`A276796(A194690(n)+A048993(n))`
-/

namespace A148359.P12221158969651571181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276796 (A194690 n + A048993 n).toNat

end

end A148359.P12221158969651571181

/-! ## A148359.P15864653478046328036

`A276796(A242062(n)+A194690(n))`
-/

namespace A148359.P15864653478046328036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276796 (A242062 n + A194690 n).toNat

end

end A148359.P15864653478046328036

/-! ## A148359.P2549260862161849490

`A320313(A148368(n))+A148351(n)`
-/

namespace A148359.P2549260862161849490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320313 (A148368 n).toNat + A148351 n

end

end A148359.P2549260862161849490

/-!
# A148360: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 1), (-1, 1, 1), (0, 1, -1), (0, 1, 0), (1, -1, 0)}.

The programs for A148360, there is no canonical definition to state claims against.
-/

/-! ## A148360.P3587145834409855444

`A261585(A317553(n+2))`
-/

namespace A148360.P3587145834409855444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261585 (A317553 (n + 2)).toNat

end

end A148360.P3587145834409855444

/-! ## A148360.P14689123870542007533

`A054899(A006134(n)+2^(n+1))+1`
-/

namespace A148360.P14689123870542007533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054899 (A006134 n + (2 ^ (n + 1) : ℤ)).toNat + 1

end

end A148360.P14689123870542007533

/-! ## A148360.P3953866894425613107

`A194640(A307487(n)+A108567(n))`
-/

namespace A148360.P3953866894425613107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194640 (A307487 n + A108567 n).toNat

end

end A148360.P3953866894425613107

/-! ## A148360.P12021661748873953431

`A067434(A326244(n)+A230980(n))`
-/

namespace A148360.P12021661748873953431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067434 (A326244 n + A230980 n).toNat

end

end A148360.P12021661748873953431

/-!
# A148361: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 1), (-1, 1, 1), (0, 0, 1), (1, -1, 0), (1, 0, -1)}.

The programs for A148361, there is no canonical definition to state claims against.
-/

/-! ## A148361.P7819791602065006161

`A097992(A267471(n+1)+A116743(n+1))`
-/

namespace A148361.P7819791602065006161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097992 (A267471 (n + 1) + A116743 (n + 1)).toNat

end

end A148361.P7819791602065006161

/-! ## A148361.P16956469486268555446

`Δ[A046155(n!+1-n)]+1`
-/

namespace A148361.P16956469486268555446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046155 ((Nat.factorial n : ℤ) + (1 - (n : ℤ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A148361.P16956469486268555446

/-! ## A148361.P15648749700613605818

`A037203((n+2)²*a(n-1))` with `a(0)=1`
-/

namespace A148361.P15648749700613605818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A037203 (((n + 2) ^ 2 : ℤ) * a (n - 1)).toNat

end

end A148361.P15648749700613605818

/-!
# A148362: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 1), (-1, 1, 1), (0, 0, 1), (1, -1, 1), (1, 0, -1)}.

The programs for A148362, there is no canonical definition to state claims against.
-/

/-! ## A148362.P9673609199840574859

`A120750(A145072(n)-char[5])`
-/

namespace A148362.P9673609199840574859
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120750 (A145072 n - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)).toNat

end

end A148362.P9673609199840574859

/-! ## A148362.P6676306437336403238

`A008676(6*A234009(n+1))`
-/

namespace A148362.P6676306437336403238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008676 (6 * A234009 (n + 1)).toNat

end

end A148362.P6676306437336403238

/-! ## A148362.P2146550800766485632

`A145072(n)-A101638(A328500(n))`
-/

namespace A148362.P2146550800766485632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145072 n - A101638 (A328500 n).toNat

end

end A148362.P2146550800766485632

/-! ## A148362.P12787832549656594069

`A271270(n)+A165915(A271271(n)+1)`
-/

namespace A148362.P12787832549656594069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271270 n + A165915 (A271271 n + 1).toNat

end

end A148362.P12787832549656594069

/-!
# A148363: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 0), (0, 0, 1), (1, -1, 1), (1, 1, -1)}.

The programs for A148363, there is no canonical definition to state claims against.
-/

/-! ## A148363.P12136567485085415972

`A350434(n+1)-A057427(A029574(n))`
-/

namespace A148363.P12136567485085415972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350434 (n + 1) - A057427 (A029574 n).toNat

end

end A148363.P12136567485085415972

/-! ## A148363.P3205826696775502481

`A350434(A069510(n+1))-A185136(n)`
-/

namespace A148363.P3205826696775502481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350434 (A069510 (n + 1)).toNat - A185136 n

end

end A148363.P3205826696775502481

/-! ## A148363.P4329425314837393310

`A350434(n+1)-A079978(A199397(n))`
-/

namespace A148363.P4329425314837393310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350434 (n + 1) - A079978 (A199397 n).toNat

end

end A148363.P4329425314837393310

/-! ## A148363.P16102324255653312397

`A350434(n+1)-A001221(A309861(n))`
-/

namespace A148363.P16102324255653312397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350434 (n + 1) - A001221 (A309861 n).toNat

end

end A148363.P16102324255653312397

/-! ## A148363.P3559428531137499165

`A350434(n+1)-A294937(A103620(n))`
-/

namespace A148363.P3559428531137499165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350434 (n + 1) - A294937 (A103620 n).toNat

end

end A148363.P3559428531137499165

/-!
# A148364: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 1), (0, 0, 1), (1, -1, 0), (1, 1, -1)}.

The programs for A148364, there is no canonical definition to state claims against.
-/

/-! ## A148364.P8819490684522034717

`A172405(n)-A025466(A005190(n))`
-/

namespace A148364.P8819490684522034717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172405 n - A025466 (A005190 n).toNat

end

end A148364.P8819490684522034717

/-! ## A148364.P886140584761785582

`A172405(n)-A025465(A017939(n))`
-/

namespace A148364.P886140584761785582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172405 n - A025465 (A017939 n).toNat

end

end A148364.P886140584761785582

/-! ## A148364.P7194478257054110735

`A172405(n)-A025465(A109437(n))`
-/

namespace A148364.P7194478257054110735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172405 n - A025465 (A109437 n).toNat

end

end A148364.P7194478257054110735

/-! ## A148364.P8462031701832429179

`A172405(n)-A025457(A128729(n))`
-/

namespace A148364.P8462031701832429179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172405 n - A025457 (A128729 n).toNat

end

end A148364.P8462031701832429179

/-!
# A148365: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 1), (0, 1, 0), (1, -1, 1), (1, 1, -1)}.

The programs for A148365, there is no canonical definition to state claims against.
-/

/-! ## A148365.P9772555573348314087

`A011960(A149831(n+1))`
-/

namespace A148365.P9772555573348314087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011960 (A149831 (n + 1)).toNat

end

end A148365.P9772555573348314087

/-! ## A148365.P9399066518058747782

`A110656(4*A148939(n))`
-/

namespace A148365.P9399066518058747782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110656 (4 * A148939 n).toNat

end

end A148365.P9399066518058747782

/-! ## A148365.P16347290922235524586

`A008615(A149907(n)+A149884(n))`
-/

namespace A148365.P16347290922235524586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (A149907 n + A149884 n).toNat

end

end A148365.P16347290922235524586

/-!
# A148366: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 1), (-1, 1, 1), (0, 1, 0), (1, -1, 0), (1, 0, -1)}.

The programs for A148366, there is no canonical definition to state claims against.
-/

/-! ## A148366.P14692754336817174379

`A289122(A174403(n))+1`
-/

namespace A148366.P14692754336817174379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289122 (A174403 n).toNat + 1

end

end A148366.P14692754336817174379

/-! ## A148366.P3313210102026948389

`A008621(A148864(n)+A148858(n))`
-/

namespace A148366.P3313210102026948389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (A148864 n + A148858 n).toNat

end

end A148366.P3313210102026948389

/-! ## A148366.P3564365024155814970

`A008621(A148874(n)+A148862(n))`
-/

namespace A148366.P3564365024155814970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (A148874 n + A148862 n).toNat

end

end A148366.P3564365024155814970

/-! ## A148366.P6261689686387170599

`A008621(A148874(n)+A148863(n))`
-/

namespace A148366.P6261689686387170599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (A148874 n + A148863 n).toNat

end

end A148366.P6261689686387170599

/-!
# A148367: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 1), (-1, 1, 1), (0, 1, 0), (1, -1, 0), (1, 1, -1)}.

The programs for A148367, there is no canonical definition to state claims against.
-/

/-! ## A148367.P6597813327300652071

`A289493(A149780(n)+1)`
-/

namespace A148367.P6597813327300652071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289493 (A149780 n + 1).toNat

end

end A148367.P6597813327300652071

/-! ## A148367.P13116253714394200283

`A195120(A149961(n)+floor(acot(1-n)))`
-/

namespace A148367.P13116253714394200283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195120 (A149961 n + ⌊SequenceMachineLib.acot (1 - (n : ℤ) : ℝ)⌋).toNat

end

end A148367.P13116253714394200283

/-! ## A148367.P6966876161146753948

`A195120(A165471(n)+A149961(n))`
-/

namespace A148367.P6966876161146753948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195120 (A165471 n + A149961 n).toNat

end

end A148367.P6966876161146753948

/-! ## A148367.P514476276765742140

`A195120(A149961(n)-A057427(n))`
-/

namespace A148367.P514476276765742140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195120 (A149961 n - A057427 n).toNat

end

end A148367.P514476276765742140

/-!
# A148368: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, -1, 1), (-1, 0, 1), (0, 1, 1), (1, 0, -1)}.

The programs for A148368, there is no canonical definition to state claims against.
-/

/-! ## A148368.P3246205707231660650

`A148369(A073789(n))`
-/

namespace A148368.P3246205707231660650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148369 (A073789 n).toNat

end

end A148368.P3246205707231660650

/-! ## A148368.P16020398618887134246

`A148369(A171644(n))`
-/

namespace A148368.P16020398618887134246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148369 (A171644 n).toNat

end

end A148368.P16020398618887134246

/-! ## A148368.P6056686092897745062

`A255408(A148369(n))`
-/

namespace A148368.P6056686092897745062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255408 (A148369 n).toNat

end

end A148368.P6056686092897745062

/-! ## A148368.P5020257629132977992

`A255408(A148370(n))`
-/

namespace A148368.P5020257629132977992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255408 (A148370 n).toNat

end

end A148368.P5020257629132977992

/-!
# A148369: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, -1), (-1, 1, 0), (0, 1, 1), (1, -1, 0)}.

The programs for A148369, there is no canonical definition to state claims against.
-/

/-! ## A148369.P6894766300933062005

`∏{e}[3^n, A148370(#)]`
-/

namespace A148369.P6894766300933062005
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A148370 (Nat.factorization (f1 n) p)

end

end A148369.P6894766300933062005

/-! ## A148369.P2645010929144301280

`A000027(A148370(n))`
-/

namespace A148369.P2645010929144301280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A148370 n).toNat

end

end A148369.P2645010929144301280

/-! ## A148369.P14331408634649490601

`A148370(A163352(∑[n]))`
-/

namespace A148369.P14331408634649490601
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148370 (A163352 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A148369.P14331408634649490601

/-! ## A148369.P364401518673470247

`A148370(A004885(n+1))`
-/

namespace A148369.P364401518673470247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148370 (A004885 (n + 1)).toNat

end

end A148369.P364401518673470247

/-! ## A148369.P8414247802399351866

`A148370(A004896(n+1))`
-/

namespace A148369.P8414247802399351866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148370 (A004896 (n + 1)).toNat

end

end A148369.P8414247802399351866

/-!
# A148371: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, -1, 1), (-1, 1, 1), (0, 1, 1), (1, 0, -1)}.

The programs for A148371, there is no canonical definition to state claims against.
-/

/-! ## A148371.P15031388850236673952

`A148372(A073789(n))`
-/

namespace A148371.P15031388850236673952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148372 (A073789 n).toNat

end

end A148371.P15031388850236673952

/-! ## A148371.P13571279963864969662

`A148372(A171644(n))`
-/

namespace A148371.P13571279963864969662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148372 (A171644 n).toNat

end

end A148371.P13571279963864969662

/-! ## A148371.P15257521905304011953

`A255408(A148372(n))`
-/

namespace A148371.P15257521905304011953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255408 (A148372 n).toNat

end

end A148371.P15257521905304011953

/-! ## A148371.P14701141253223382888

`A255408(A148373(n))`
-/

namespace A148371.P14701141253223382888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255408 (A148373 n).toNat

end

end A148371.P14701141253223382888

/-!
# A148372: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, -1), (-1, 1, 1), (0, 1, 1), (1, -1, 0)}.

The programs for A148372, there is no canonical definition to state claims against.
-/

/-! ## A148372.P3510279437515881729

`A000027(A148373(n))`
-/

namespace A148372.P3510279437515881729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A148373 n).toNat

end

end A148372.P3510279437515881729

/-! ## A148372.P13281596300175193664

`A148373(A055648(n))`
-/

namespace A148372.P13281596300175193664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148373 (A055648 n).toNat

end

end A148372.P13281596300175193664

/-! ## A148372.P11736404758385779975

`A148373(A004874(n+1))`
-/

namespace A148372.P11736404758385779975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148373 (A004874 (n + 1)).toNat

end

end A148372.P11736404758385779975

/-! ## A148372.P1304220361143651187

`A148373(A004885(n+1))`
-/

namespace A148372.P1304220361143651187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148373 (A004885 (n + 1)).toNat

end

end A148372.P1304220361143651187

/-! ## A148372.P2166515522186621171

`A148373(A004896(n+1))`
-/

namespace A148372.P2166515522186621171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148373 (A004896 (n + 1)).toNat

end

end A148372.P2166515522186621171

/-!
# A148374: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, -1, 1), (-1, 0, 1), (0, 0, 1), (1, 1, -1)}.

The programs for A148374, there is no canonical definition to state claims against.
-/

/-! ## A148374.P5129711040130130774

`A277487(4^n+8*n)`
-/

namespace A148374.P5129711040130130774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277487 (4 ^ n + 8 * n)

end

end A148374.P5129711040130130774

/-! ## A148374.P12706805196629315158

`A255350(A051944(n))`
-/

namespace A148374.P12706805196629315158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255350 (A051944 n).toNat

end

end A148374.P12706805196629315158

/-! ## A148374.P7245061788826694072

`A326848(A052980(n))`
-/

namespace A148374.P7245061788826694072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326848 (A052980 n).toNat

end

end A148374.P7245061788826694072

/-!
# A148375: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, 0, 0), (0, -1, 0), (0, 0, 1), (1, 1, -1)}.

The programs for A148375, there is no canonical definition to state claims against.
-/

/-! ## A148375.P2831270922955208486

`A231009(A151256(n))`
-/

namespace A148375.P2831270922955208486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231009 (A151256 n).toNat

end

end A148375.P2831270922955208486

/-! ## A148375.P5056617047639287865

`A231009(A205999(n))`
-/

namespace A148375.P5056617047639287865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231009 (A205999 n).toNat

end

end A148375.P5056617047639287865

/-! ## A148375.P16434890191560770322

`A131419(A336979(n))`
-/

namespace A148375.P16434890191560770322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131419 (A336979 n).toNat

end

end A148375.P16434890191560770322

/-!
# A148376: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, -1), (0, -1, 1), (0, 0, 1), (1, 1, -1)}.

The programs for A148376, there is no canonical definition to state claims against.
-/

/-! ## A148376.P14461892010315110614

`A008615(A303882(n+1)+A275870(n+4))`
-/

namespace A148376.P14461892010315110614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (A303882 (n + 1) + A275870 (n + 4)).toNat

end

end A148376.P14461892010315110614

/-! ## A148376.P10775926351220572963

`Δ[A077556(n)]-(2*n)%(n+1)`
-/

namespace A148376.P10775926351220572963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077556 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - ((2 * n % (n + 1) : ℕ) : ℤ)

end

end A148376.P10775926351220572963

/-! ## A148376.P5194585565814936203

`A110266(A149831(n))`
-/

namespace A148376.P5194585565814936203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110266 (A149831 n).toNat

end

end A148376.P5194585565814936203

/-!
# A148377: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, -1), (0, 0, 1), (1, -1, 1), (1, 1, -1)}.

The programs for A148377, there is no canonical definition to state claims against.
-/

/-! ## A148377.P12970201369278657143

`A112325(A149019(n))`
-/

namespace A148377.P12970201369278657143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112325 (A149019 n).toNat

end

end A148377.P12970201369278657143

/-! ## A148377.P1580988451146964174

`Δ[A046155(n!+1-n)]+1-Δ[A119981(2*n+5)]`
-/

namespace A148377.P1580988451146964174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046155 ((Nat.factorial n : ℤ) + (1 - (n : ℤ))).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119981 (2 * n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1 - (f2 (n + 1) - f2 n)

end

end A148377.P1580988451146964174

/-!
# A148378: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, 0, 0), (0, 0, 1), (1, -1, 0), (1, 1, -1)}.

The programs for A148378, there is no canonical definition to state claims against.
-/

/-! ## A148378.P9258667819594017661

`A136272(a(n-1))+a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A148378.P9258667819594017661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A136272 (a (n - 1)).toNat + a (n - 1)

end

end A148378.P9258667819594017661

/-! ## A148378.P18183519772662733785

`A323520(A084635(n))`
-/

namespace A148378.P18183519772662733785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323520 (A084635 n).toNat

end

end A148378.P18183519772662733785

/-! ## A148378.P866282072101748581

`A023193(A385975(n))`
-/

namespace A148378.P866282072101748581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023193 (A385975 n).toNat

end

end A148378.P866282072101748581

/-!
# A148379: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 1), (0, 0, 1), (1, -1, -1), (1, 1, -1)}.

The programs for A148379, there is no canonical definition to state claims against.
-/

/-! ## A148379.P10521579984049596959

`A289493(A245432(n)+A150338(n))`
-/

namespace A148379.P10521579984049596959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289493 (A245432 n + A150338 n).toNat

end

end A148379.P10521579984049596959

/-! ## A148379.P14383561173999975957

`A323267(n+1)+A156689(A148388(n))`
-/

namespace A148379.P14383561173999975957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323267 (n + 1) + A156689 (A148388 n).toNat

end

end A148379.P14383561173999975957

/-! ## A148379.P2821904650623483859

`A323264(n+1)+A323268(n+1)+A156689(A148388(n))`
-/

namespace A148379.P2821904650623483859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323264 (n + 1) + (A323268 (n + 1) + A156689 (A148388 n).toNat)

end

end A148379.P2821904650623483859

/-! ## A148379.P7703236147672944553

`A156689(A148388(n))+A323264(n+3)-A323263(n+2)`
-/

namespace A148379.P7703236147672944553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156689 (A148388 n).toNat + (A323264 (n + 3) - A323263 (n + 2))

end

end A148379.P7703236147672944553

/-!
# A148380: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 1), (0, -1, 1), (0, 0, 1), (1, 1, -1)}.

The programs for A148380, there is no canonical definition to state claims against.
-/

/-! ## A148380.P112700362229506080

`round(sqrt(xor(3, A243811(n!+1)+1)))`
-/

namespace A148380.P112700362229506080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (Int.xor 3 (A243811 (Nat.factorial n + 1) + 1) : ℝ))

end

end A148380.P112700362229506080

/-! ## A148380.P3167646292707368271

`A103221(xor(A024744(n+1), A128603(n+1)))`
-/

namespace A148380.P3167646292707368271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 (Int.xor (A024744 (n + 1)) (A128603 (n + 1))).toNat

end

end A148380.P3167646292707368271

/-! ## A148380.P16132401435664985688

`A023193(A149605(n))`
-/

namespace A148380.P16132401435664985688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023193 (A149605 n).toNat

end

end A148380.P16132401435664985688

/-!
# A148381: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, -1), (0, 0, 1), (1, -1, 1), (1, 1, -1)}.

The programs for A148381, there is no canonical definition to state claims against.
-/

/-! ## A148381.P4361705410295427701

`A187187(5*A148813(n))`
-/

namespace A148381.P4361705410295427701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187187 (5 * A148813 n).toNat

end

end A148381.P4361705410295427701

/-! ## A148381.P12800663147873937787

`A187187(lcm(5, A148813(n)))`
-/

namespace A148381.P12800663147873937787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187187 (Int.lcm 5 (A148813 n))

end

end A148381.P12800663147873937787

/-! ## A148381.P1672332387378717498

`A154099(A149794(n))`
-/

namespace A148381.P1672332387378717498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154099 (A149794 n).toNat

end

end A148381.P1672332387378717498

/-!
# A148382: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, 0, 1), (0, 1, 0), (1, -1, 1), (1, 0, -1)}.

The programs for A148382, there is no canonical definition to state claims against.
-/

/-! ## A148382.P6201748883624798032

`floor(A011371(A303832(n+1))/2)+1`
-/

namespace A148382.P6201748883624798032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A011371 (A303832 (n + 1)).toNat : ℚ) / 2⌋ + 1

end

end A148382.P6201748883624798032

/-! ## A148382.P17415477553113245992

`A263270(A032263(n+1))+A121133(n+1)`
-/

namespace A148382.P17415477553113245992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263270 (A032263 (n + 1)).toNat + A121133 (n + 1)

end

end A148382.P17415477553113245992

/-! ## A148382.P12520354660302158558

`A322058(A117591(n))`
-/

namespace A148382.P12520354660302158558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322058 (A117591 n).toNat

end

end A148382.P12520354660302158558

/-!
# A148383: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 0), (0, 0, -1), (0, 1, 0), (1, -1, 1)}.

The programs for A148383, there is no canonical definition to state claims against.
-/

/-! ## A148383.P10047438750302566553

`floor(sqrt(A281119(lcm(2, 4^n))))`
-/

namespace A148383.P10047438750302566553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A281119 (Nat.lcm 2 (4 ^ n)))

end

end A148383.P10047438750302566553

/-! ## A148383.P11350635635380639810

`A098020(a(n-1))+and(n, n-1)` with `a(0)=1, a(1)=1`
-/

namespace A148383.P11350635635380639810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A098020 (a (n - 1)).toNat + Int.land (n : ℤ) ((n : ℤ) - 1)

end

end A148383.P11350635635380639810

/-! ## A148383.P16885905186123475633

`A352130(A383265(n))`
-/

namespace A148383.P16885905186123475633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352130 (A383265 n).toNat

end

end A148383.P16885905186123475633

/-!
# A148384: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 0), (0, 0, -1), (0, 1, 0), (1, -1, 1)}.

The programs for A148384, there is no canonical definition to state claims against.
-/

/-! ## A148384.P8443108619387426642

`A105514(A237770(n+4))+1`
-/

namespace A148384.P8443108619387426642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105514 (A237770 (n + 4)).toNat + 1

end

end A148384.P8443108619387426642

/-! ## A148384.P18200281086924358605

`A187187(or(A000108(n+2), A218706(n)))`
-/

namespace A148384.P18200281086924358605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187187 (Int.lor (A000108 (n + 2)) (A218706 n)).toNat

end

end A148384.P18200281086924358605

/-! ## A148384.P1142108266626890948

`A187187(or(A000096(n), A120588(n+3)))`
-/

namespace A148384.P1142108266626890948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187187 (Int.lor (A000096 n) (A120588 (n + 3))).toNat

end

end A148384.P1142108266626890948

/-!
# A148385: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 1), (0, 0, 1), (1, -1, 1), (1, 1, -1)}.

The programs for A148385, there is no canonical definition to state claims against.
-/

/-! ## A148385.P12219343309198960945

`A138997(A107383(n)+A002533(n))`
-/

namespace A148385.P12219343309198960945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138997 (A107383 n + A002533 n).toNat

end

end A148385.P12219343309198960945

/-! ## A148385.P3480410201151204295

`A188625(n+1)-A001222(∏[A079500(n)])`
-/

namespace A148385.P3480410201151204295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079500 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188625 (n + 1) - A001222 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A148385.P3480410201151204295

/-! ## A148385.P15266378509254983754

`A001462(A035559(n²))`
-/

namespace A148385.P15266378509254983754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (A035559 (n ^ 2)).toNat

end

end A148385.P15266378509254983754

/-!
# A148386: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, 1), (0, 0, -1), (1, 0, -1), (1, 0, 0)}.

The programs for A148386, there is no canonical definition to state claims against.
-/

/-! ## A148386.P9239464759732879819

`A036234(A199128(n+1)+1)-(n+1)`
-/

namespace A148386.P9239464759732879819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036234 (A199128 (n + 1) + 1).toNat - (n + 1 : ℤ)

end

end A148386.P9239464759732879819

/-! ## A148386.P15655010958029083777

`A110655(A093967(n)+A053498(n))`
-/

namespace A148386.P15655010958029083777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110655 (A093967 n + A053498 n).toNat

end

end A148386.P15655010958029083777

/-! ## A148386.P17286543867801039575

`A187185(A214727(2*n)+A081172(n+1))`
-/

namespace A148386.P17286543867801039575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187185 (A214727 (2 * n) + A081172 (n + 1)).toNat

end

end A148386.P17286543867801039575

/-!
# A148387: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, 1), (0, 1, -1), (1, 0, -1), (1, 0, 0)}.

The programs for A148387, there is no canonical definition to state claims against.
-/

/-! ## A148387.P5623114224645879110

`A148391(n)-A011744(n!)`
-/

namespace A148387.P5623114224645879110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148391 n - A011744 (Nat.factorial n)

end

end A148387.P5623114224645879110

/-! ## A148387.P3981991557725553076

`A128023(∑[A299150(n+1)!])`
-/

namespace A148387.P3981991557725553076
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A299150 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128023 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A148387.P3981991557725553076

/-! ## A148387.P14544924920768760280

`A097992(A071744(n)-(n-floor(sqrt(n))²))`
-/

namespace A148387.P14544924920768760280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097992 (A071744 n - ((n : ℤ) - (Nat.sqrt n ^ 2 : ℤ))).toNat

end

end A148387.P14544924920768760280

/-! ## A148387.P8373912269971345940

`A148391(n)-A011744(A076024(n))`
-/

namespace A148387.P8373912269971345940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148391 n - A011744 (A076024 n).toNat

end

end A148387.P8373912269971345940

/-!
# A148388: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, 1), (0, 0, -1), (1, 0, 0), (1, 1, -1)}.

The programs for A148388, there is no canonical definition to state claims against.
-/

/-! ## A148388.P15009018781913945736

`A148389(A073788(n))`
-/

namespace A148388.P15009018781913945736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148389 (A073788 n).toNat

end

end A148388.P15009018781913945736

/-! ## A148388.P13224796861730444209

`A089610(A150811(n))`
-/

namespace A148388.P13224796861730444209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089610 (A150811 n).toNat

end

end A148388.P13224796861730444209

/-! ## A148388.P16492342004693090324

`A108141(A148409(n))`
-/

namespace A148388.P16492342004693090324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108141 (A148409 n).toNat

end

end A148388.P16492342004693090324

/-!
# A148389: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, 1), (0, 1, -1), (1, 0, 0), (1, 1, -1)}.

The programs for A148389, there is no canonical definition to state claims against.
-/

/-! ## A148389.P5545991563001300393

`A008616(A017940(n)+A001405(n))`
-/

namespace A148389.P5545991563001300393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008616 (A017940 n + A001405 n).toNat

end

end A148389.P5545991563001300393

/-! ## A148389.P5264076534501256672

`A094424(n+1)+A054899(A056236(n))`
-/

namespace A148389.P5264076534501256672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094424 (n + 1) + A054899 (A056236 n).toNat

end

end A148389.P5264076534501256672

/-! ## A148389.P138916135822903002

`A113582(n+1)+A054899(A056236(n))`
-/

namespace A148389.P138916135822903002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113582 (n + 1) + A054899 (A056236 n).toNat

end

end A148389.P138916135822903002

/-! ## A148389.P3397753178028104259

`A110654(A294820(n)+A245898(n+1))`
-/

namespace A148389.P3397753178028104259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A294820 n + A245898 (n + 1)).toNat

end

end A148389.P3397753178028104259

/-!
# A148390: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 1), (0, 0, -1), (0, 1, 0), (1, -1, 1)}.

The programs for A148390, there is no canonical definition to state claims against.
-/

/-! ## A148390.P8767673978074029847

`A289497(A026558(n)+A008646(n))`
-/

namespace A148390.P8767673978074029847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289497 (A026558 n + A008646 n).toNat

end

end A148390.P8767673978074029847

/-! ## A148390.P4189203748324507399

`A105359(a(n-1))+a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A148390.P4189203748324507399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A105359 (a (n - 1)).toNat + a (n - 1)

end

end A148390.P4189203748324507399

/-! ## A148390.P2052584843504014456

`A000006(A030590(n!))`
-/

namespace A148390.P2052584843504014456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000006 (A030590 (Nat.factorial n)).toNat

end

end A148390.P2052584843504014456

/-!
# A148391: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 1), (0, 0, -1), (0, 1, 0), (1, -1, 1)}.

The programs for A148391, there is no canonical definition to state claims against.
-/

/-! ## A148391.P15205527271253178224

`A148387(n)+A011744(n!)`
-/

namespace A148391.P15205527271253178224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148387 n + A011744 (Nat.factorial n)

end

end A148391.P15205527271253178224

/-! ## A148391.P5484873382409337717

`A008615(A071744(n)+A054143(n))`
-/

namespace A148391.P5484873382409337717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (A071744 n + A054143 n).toNat

end

end A148391.P5484873382409337717

/-! ## A148391.P15629076204269271978

`A103221(A071744(A028310(n))+n)`
-/

namespace A148391.P15629076204269271978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 (A071744 (A028310 n).toNat + (n : ℤ)).toNat

end

end A148391.P15629076204269271978

/-! ## A148391.P5254457155647229035

`A148387(n)+A011744(A076024(n))`
-/

namespace A148391.P5254457155647229035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148387 n + A011744 (A076024 n).toNat

end

end A148391.P5254457155647229035

/-!
# A148392: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 0), (0, 1, 0), (1, -1, 1), (1, 0, -1)}.

The programs for A148392, there is no canonical definition to state claims against.
-/

/-! ## A148392.P14550463997141767426

`A008679(7*A148830(n))`
-/

namespace A148392.P14550463997141767426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008679 (7 * A148830 n).toNat

end

end A148392.P14550463997141767426

/-! ## A148392.P12454221409095705708

`A081753(7*A148830(n))`
-/

namespace A148392.P12454221409095705708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081753 (7 * A148830 n).toNat

end

end A148392.P12454221409095705708

/-! ## A148392.P12123991754043339976

`A008612(9*A109263(n))`
-/

namespace A148392.P12123991754043339976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008612 (9 * A109263 n).toNat

end

end A148392.P12123991754043339976

/-! ## A148392.P17058419799764351900

`A097992(9*A109263(n))`
-/

namespace A148392.P17058419799764351900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097992 (9 * A109263 n).toNat

end

end A148392.P17058419799764351900

/-!
# A148393: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 0), (0, 1, 0), (1, -1, 1), (1, 0, -1)}.

The programs for A148393, there is no canonical definition to state claims against.
-/

/-! ## A148393.P9891482060011016345

`A083036(A279561(n)+A279551(n))`
-/

namespace A148393.P9891482060011016345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083036 (A279561 n + A279551 n).toNat

end

end A148393.P9891482060011016345

/-! ## A148393.P11057671754547819250

`A195177(A000777(n)+1+n)`
-/

namespace A148393.P11057671754547819250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195177 (A000777 n + 1 + (n : ℤ)).toNat

end

end A148393.P11057671754547819250

/-! ## A148393.P947196140334811219

`A195177(A275329(2*n)+n)`
-/

namespace A148393.P947196140334811219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195177 (A275329 (2 * n) + (n : ℤ)).toNat

end

end A148393.P947196140334811219

/-! ## A148393.P13039171606355108137

`A195177(A003714(n)+A000777(n))`
-/

namespace A148393.P13039171606355108137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195177 (A003714 n + A000777 n).toNat

end

end A148393.P13039171606355108137

/-!
# A148394: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 1, 1), (0, 0, 1), (1, -1, 1), (1, 1, -1)}.

The programs for A148394, there is no canonical definition to state claims against.
-/

/-! ## A148394.P13233092606088806759

`A256502(A148811(n))`
-/

namespace A148394.P13233092606088806759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256502 (A148811 n).toNat

end

end A148394.P13233092606088806759

/-! ## A148394.P15799024127506166273

`A293262(A148072(n))`
-/

namespace A148394.P15799024127506166273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293262 (A148072 n).toNat

end

end A148394.P15799024127506166273

/-! ## A148394.P8820821359683386106

`A293262(A148073(n))`
-/

namespace A148394.P8820821359683386106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293262 (A148073 n).toNat

end

end A148394.P8820821359683386106

/-!
# A148395: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 1, 1), (0, 0, -1), (1, 0, -1), (1, 0, 0)}.

The programs for A148395, there is no canonical definition to state claims against.
-/

/-! ## A148395.P5369918188483858770

`A131169(A148396(n))`
-/

namespace A148395.P5369918188483858770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131169 (A148396 n).toNat

end

end A148395.P5369918188483858770

/-! ## A148395.P4019030603503111779

`A109802(a(n-1))+a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A148395.P4019030603503111779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A109802 (a (n - 1)).toNat + a (n - 1)

end

end A148395.P4019030603503111779

/-! ## A148395.P5138748352807127270

`A177979(A041659(n))`
-/

namespace A148395.P5138748352807127270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177979 (A041659 n).toNat

end

end A148395.P5138748352807127270

/-!
# A148396: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 1, 1), (0, 1, -1), (1, 0, -1), (1, 0, 0)}.

The programs for A148396, there is no canonical definition to state claims against.
-/

/-! ## A148396.P9170995215675822235

`A131169(A148395(n))`
-/

namespace A148396.P9170995215675822235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131169 (A148395 n).toNat

end

end A148396.P9170995215675822235

/-!
# A148397: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 1, 1), (0, 0, -1), (1, 0, 0), (1, 1, -1)}.

The programs for A148397, there is no canonical definition to state claims against.
-/

/-! ## A148397.P12666925356675718987

`xor(A006925(A006925(n)), A148398(n))`
-/

namespace A148397.P12666925356675718987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A006925 (A006925 n).toNat) (A148398 n)

end

end A148397.P12666925356675718987

/-! ## A148397.P3173043052813099143

`A304708(C(2*n, 2)+2)`
-/

namespace A148397.P3173043052813099143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304708 (Nat.choose (2 * n) 2 + 2)

end

end A148397.P3173043052813099143

/-! ## A148397.P9879675883428563098

`A304708(2*n²-n+2)`
-/

namespace A148397.P9879675883428563098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304708 ((2 * n ^ 2 : ℤ) - (n : ℤ) + 2).toNat

end

end A148397.P9879675883428563098

/-!
# A148398: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 1, 1), (0, 1, -1), (1, 0, 0), (1, 1, -1)}.

The programs for A148398, there is no canonical definition to state claims against.
-/

/-! ## A148398.P11821654739183890182

`A097992(A149053(n)+A077840(n))`
-/

namespace A148398.P11821654739183890182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097992 (A149053 n + A077840 n).toNat

end

end A148398.P11821654739183890182

/-! ## A148398.P16051368479586758123

`A110656(A162551(n)+A066297(n))`
-/

namespace A148398.P16051368479586758123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110656 (A162551 n + A066297 n).toNat

end

end A148398.P16051368479586758123

/-! ## A148398.P4057292108195941911

`A234200(A255487(n))+A124303(n)`
-/

namespace A148398.P4057292108195941911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234200 (A255487 n).toNat + A124303 n

end

end A148398.P4057292108195941911

/-! ## A148398.P5345443379863064988

`xor(A006925(A006925(n)), A148397(n))`
-/

namespace A148398.P5345443379863064988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A006925 (A006925 n).toNat) (A148397 n)

end

end A148398.P5345443379863064988

/-!
# A148399: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 1), (0, 1, 0), (1, -1, 1), (1, 0, -1)}.

The programs for A148399, there is no canonical definition to state claims against.
-/

/-! ## A148399.P16321594571613133268

`A130916(A291685(n))`
-/

namespace A148399.P16321594571613133268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130916 (A291685 n).toNat

end

end A148399.P16321594571613133268

/-! ## A148399.P5747899410082084844

`A187187(A081875(n+1))`
-/

namespace A148399.P5747899410082084844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187187 (A081875 (n + 1)).toNat

end

end A148399.P5747899410082084844

/-! ## A148399.P16135552157050047352

`A130916(A161125(n)+1)`
-/

namespace A148399.P16135552157050047352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130916 (A161125 n + 1).toNat

end

end A148399.P16135552157050047352

/-! ## A148399.P15255967073869035077

`A110656(∑[∑[A150047(n)]])`
-/

namespace A148399.P15255967073869035077
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150047 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110656 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A148399.P15255967073869035077

