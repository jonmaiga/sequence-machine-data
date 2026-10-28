import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C004
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
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C031
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C041
import Seq.B000.C043
import Seq.B000.C044
import Seq.B000.C045
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C010
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C005
import Seq.B002.C008
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C004
import Seq.B004.C000
import Seq.B005.C000
import Seq.B006.C001
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
import Seq.Opaque.C024

/-!
# A151100: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, -1), (1, 0, 0), (1, 0, 1), (1, 1, 0)}.

The programs for A151100, there is no canonical definition to state claims against.
-/

/-! ## A151100.P17839055545836492801

`A026748(n)-A056557(A059167(n))`
-/

namespace A151100.P17839055545836492801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026748 n - A056557 (A059167 n).toNat

end

end A151100.P17839055545836492801

/-! ## A151100.P16240392922510992829

`or(A001222(A064300(n)), A151097(n))`
-/

namespace A151100.P16240392922510992829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001222 (A064300 n).toNat) (A151097 n)

end

end A151100.P16240392922510992829

/-!
# A151101: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (0, 0, 1), (0, 1, -1), (0, 1, 1), (1, 0, 0)}.

The programs for A151101, there is no canonical definition to state claims against.
-/

/-! ## A151101.P3339813503986255781

`A214449(∑[A151073(n)])`
-/

namespace A151101.P3339813503986255781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151073 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214449 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A151101.P3339813503986255781

/-!
# A151102: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, 1, 1), (0, 0, 1), (1, 0, 0), (1, 1, 0)}.

The programs for A151102, there is no canonical definition to state claims against.
-/

/-! ## A151102.P4985462970422711366

`A072747(A150768(n+1))`
-/

namespace A151102.P4985462970422711366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072747 (A150768 (n + 1)).toNat

end

end A151102.P4985462970422711366

/-!
# A151103: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (0, 0, 1), (0, 1, -1), (0, 1, 1), (1, 0, 0)}.

The programs for A151103, there is no canonical definition to state claims against.
-/

/-! ## A151103.P7646260415713228551

`A047501(A150632(n))`
-/

namespace A151103.P7646260415713228551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047501 (A150632 n).toNat

end

end A151103.P7646260415713228551

/-! ## A151103.P15759302352177676590

`A047418(A150632(n))+A043562(n)`
-/

namespace A151103.P15759302352177676590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047418 (A150632 n).toNat + A043562 n

end

end A151103.P15759302352177676590

/-! ## A151103.P6722593540885214461

`A079487(n)+A047418(A150632(n))`
-/

namespace A151103.P6722593540885214461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079487 n + A047418 (A150632 n).toNat

end

end A151103.P6722593540885214461

/-!
# A151104: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 1, -1), (1, 0, 0), (1, 0, 1), (1, 1, 0)}.

The programs for A151104, there is no canonical definition to state claims against.
-/

/-! ## A151104.P14541005335998731476

`A120837(A150540(n))`
-/

namespace A151104.P14541005335998731476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120837 (A150540 n).toNat

end

end A151104.P14541005335998731476

/-! ## A151104.P14648689197237214954

`A275883(A150858(n))`
-/

namespace A151104.P14648689197237214954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275883 (A150858 n).toNat

end

end A151104.P14648689197237214954

/-!
# A151105: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (0, 0, 1), (0, 1, 0), (1, 1, -1), (1, 1, 0)}.

The programs for A151105, there is no canonical definition to state claims against.
-/

/-! ## A151105.P16611893222901103193

`A222251(A127632(n+1))`
-/

namespace A151105.P16611893222901103193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222251 (A127632 (n + 1)).toNat

end

end A151105.P16611893222901103193

/-! ## A151105.P8439681539352647181

`Δ[A277112(∑[A149071(n)])]`
-/

namespace A151105.P8439681539352647181
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149071 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277112 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A151105.P8439681539352647181

/-! ## A151105.P17961144828995247557

`Δ[A277112(∑[A149072(n)])]`
-/

namespace A151105.P17961144828995247557
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149072 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277112 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A151105.P17961144828995247557

/-!
# A151106: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (0, 0, 1), (0, 1, -1), (1, 0, 0), (1, 1, 0)}.

The programs for A151106, there is no canonical definition to state claims against.
-/

/-! ## A151106.P15550679779036631013

`A008620(A150794(n+1))`
-/

namespace A151106.P15550679779036631013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (A150794 (n + 1)).toNat

end

end A151106.P15550679779036631013

/-! ## A151106.P7958043211115497222

`A008620(A141223(n)+A110618(2*n+3))`
-/

namespace A151106.P7958043211115497222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (A141223 n + A110618 (2 * n + 3)).toNat

end

end A151106.P7958043211115497222

/-!
# A151107: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (0, 0, 1), (0, 1, -1), (0, 1, 0), (1, 0, 1)}.

The programs for A151107, there is no canonical definition to state claims against.
-/

/-! ## A151107.P10769813904621510723

`A077219(A150738(n+1))`
-/

namespace A151107.P10769813904621510723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077219 (A150738 (n + 1)).toNat

end

end A151107.P10769813904621510723

/-! ## A151107.P12369452127913576936

`A296357(A006139(n+1))`
-/

namespace A151107.P12369452127913576936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296357 (A006139 (n + 1)).toNat

end

end A151107.P12369452127913576936

/-!
# A151108: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (0, 0, 1), (0, 1, -1), (0, 1, 0), (1, 0, 1)}.

The programs for A151108, there is no canonical definition to state claims against.
-/

/-! ## A151108.P15344597407276759288

`A004526(∑[A239201(n+1)]-n)`
-/

namespace A151108.P15344597407276759288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239201 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)).toNat

end

end A151108.P15344597407276759288

/-! ## A151108.P2994379999639771740

`A008620(A150796(n+1))`
-/

namespace A151108.P2994379999639771740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (A150796 (n + 1)).toNat

end

end A151108.P2994379999639771740

/-!
# A151109: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, 0, 0), (0, 1, 1), (1, 0, 0), (1, 0, 1)}.

The programs for A151109, there is no canonical definition to state claims against.
-/

/-! ## A151109.P18093158666408215336

`A103221(4^n+5^n)+∑[floor(3^(n-1))]`
-/

namespace A151109.P18093158666408215336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 (4 ^ n + 5 ^ n) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A151109.P18093158666408215336

/-! ## A151109.P4171371165604760620

`A260731(A151301(n+1))`
-/

namespace A151109.P4171371165604760620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260731 (A151301 (n + 1)).toNat

end

end A151109.P4171371165604760620

/-!
# A151110: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, -1, 0), (0, 1, 0), (1, 0, 0), (1, 1, 1)}.

The programs for A151110, there is no canonical definition to state claims against.
-/

/-! ## A151110.P10061144082009148942

`A151111(n)-A054897(A230090(n+3)!)`
-/

namespace A151110.P10061144082009148942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151111 n - A054897 (Nat.factorial (A230090 (n + 3)).toNat)

end

end A151110.P10061144082009148942

/-! ## A151110.P73820056755976199

`A151111(A001096(n))`
-/

namespace A151110.P73820056755976199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151111 (A001096 n).toNat

end

end A151110.P73820056755976199

/-!
# A151112: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, -1), (0, 0, 1), (1, 0, 1), (1, 1, 0)}.

The programs for A151112, there is no canonical definition to state claims against.
-/

/-! ## A151112.P9470520990115507339

`A249036(A255814(n))`
-/

namespace A151112.P9470520990115507339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249036 (A255814 n).toNat

end

end A151112.P9470520990115507339

/-! ## A151112.P9289197018484978003

`A160413(A151143(n)+A151093(n))`
-/

namespace A151112.P9289197018484978003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160413 (A151143 n + A151093 n).toNat

end

end A151112.P9289197018484978003

/-! ## A151112.P11990907240155049808

`A289441(A151143(n)+A151093(n))`
-/

namespace A151112.P11990907240155049808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289441 (A151143 n + A151093 n).toNat

end

end A151112.P11990907240155049808

/-!
# A151113: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, -1), (0, 1, 0), (1, 0, 1), (1, 1, 0)}.

The programs for A151113, there is no canonical definition to state claims against.
-/

/-! ## A151113.P16597392479232852515

`A343609(A151079(n))+A151083(n)`
-/

namespace A151113.P16597392479232852515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343609 (A151079 n).toNat + A151083 n

end

end A151113.P16597392479232852515

/-! ## A151113.P8854599846167796968

`A343609(A151080(n))+A151083(n)`
-/

namespace A151113.P8854599846167796968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343609 (A151080 n).toNat + A151083 n

end

end A151113.P8854599846167796968

/-! ## A151113.P7474268803453424986

`A343609(A151079(n))-(A343609(n)-A151083(n))`
-/

namespace A151113.P7474268803453424986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343609 (A151079 n).toNat - (A343609 n - A151083 n)

end

end A151113.P7474268803453424986

/-!
# A151114: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, -1), (0, 0, 1), (1, 0, 1), (1, 1, 0)}.

The programs for A151114, there is no canonical definition to state claims against.
-/

/-! ## A151114.P5389030815024145864

`A004525(A081568(n)+A081558(n))`
-/

namespace A151114.P5389030815024145864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A081568 n + A081558 n).toNat

end

end A151114.P5389030815024145864

/-! ## A151114.P11576438234580673280

`A065033(A081568(n)+A081558(n))`
-/

namespace A151114.P11576438234580673280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A081568 n + A081558 n).toNat

end

end A151114.P11576438234580673280

/-! ## A151114.P18347521794136952191

`A110654(A081568(n)+A081558(n))`
-/

namespace A151114.P18347521794136952191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A081568 n + A081558 n).toNat

end

end A151114.P18347521794136952191

/-!
# A151115: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, 0, 0), (0, 0, 1), (1, 0, 1), (1, 1, 0)}.

The programs for A151115, there is no canonical definition to state claims against.
-/

/-! ## A151115.P18252360885777351084

`A343609(A151100(n))+A151083(n)`
-/

namespace A151115.P18252360885777351084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343609 (A151100 n).toNat + A151083 n

end

end A151115.P18252360885777351084

/-! ## A151115.P4903392542104866017

`A151083(n)-(A343609(n)-A343609(A151100(n)))`
-/

namespace A151115.P4903392542104866017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151083 n - (A343609 n - A343609 (A151100 n).toNat)

end

end A151115.P4903392542104866017

/-!
# A151116: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, -1), (0, 0, 1), (1, 0, 0), (1, 1, 1)}.

The programs for A151116, there is no canonical definition to state claims against.
-/

/-! ## A151116.P1122519330512723512

`A151117(n)%∑[2*(n+2)]!`
-/

namespace A151116.P1122519330512723512
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A151117 n) (Nat.factorial (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ)

end

end A151116.P1122519330512723512

/-! ## A151116.P1344236139927880564

`A151117(A001096(n))`
-/

namespace A151116.P1344236139927880564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151117 (A001096 n).toNat

end

end A151116.P1344236139927880564

/-!
# A151117: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, -1), (0, 1, 0), (1, 0, 0), (1, 1, 1)}.

The programs for A151117, there is no canonical definition to state claims against.
-/

/-! ## A151117.P18047639563769333446

`A000202(A130655(n))`
-/

namespace A151117.P18047639563769333446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000202 (A130655 n).toNat

end

end A151117.P18047639563769333446

/-! ## A151117.P17800433558349193020

`A290562(A151118(n))`
-/

namespace A151117.P17800433558349193020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290562 (A151118 n).toNat

end

end A151117.P17800433558349193020

/-! ## A151117.P8391724858591956603

`A109613(A151118(n)-1)`
-/

namespace A151117.P8391724858591956603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 (A151118 n - 1).toNat

end

end A151117.P8391724858591956603

/-!
# A151118: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, 0, 1), (0, 1, 1), (1, 0, 0), (1, 1, 0)}.

The programs for A151118, there is no canonical definition to state claims against.
-/

/-! ## A151118.P14083332200298127691

`A079947(A387202(n+1))`
-/

namespace A151118.P14083332200298127691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079947 (A387202 (n + 1)).toNat

end

end A151118.P14083332200298127691

/-! ## A151118.P235055672443169444

`A151117(n)+A007814(A151115(n))`
-/

namespace A151118.P235055672443169444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151117 n + A007814 (A151115 n).toNat

end

end A151118.P235055672443169444

/-! ## A151118.P7626241782008616939

`A151117(n)+A055641(A151133(n))`
-/

namespace A151118.P7626241782008616939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151117 n + A055641 (A151133 n).toNat

end

end A151118.P7626241782008616939

/-!
# A151119: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, -1), (0, 0, 1), (1, 0, 0), (1, 1, 1)}.

The programs for A151119, there is no canonical definition to state claims against.
-/

/-! ## A151119.P1817691902380051777

`A151120(n)-A276331(A184993(n))`
-/

namespace A151119.P1817691902380051777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151120 n - A276331 (A184993 n).toNat

end

end A151119.P1817691902380051777

/-! ## A151119.P4007413507483068335

`A151121(n)%∑[2*(n+2)]!`
-/

namespace A151119.P4007413507483068335
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A151121 n) (Nat.factorial (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ)

end

end A151119.P4007413507483068335

/-!
# A151120: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 1, -1), (0, 0, 1), (1, 0, 1), (1, 1, 0)}.

The programs for A151120, there is no canonical definition to state claims against.
-/

/-! ## A151120.P8512619489709244625

`A325805(A151119(n))`
-/

namespace A151120.P8512619489709244625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325805 (A151119 n).toNat

end

end A151120.P8512619489709244625

/-! ## A151120.P8182901286578393062

`A151121(n)+A066087(A151104(n))`
-/

namespace A151120.P8182901286578393062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151121 n + A066087 (A151104 n).toNat

end

end A151120.P8182901286578393062

/-! ## A151120.P5106330502615602016

`A276331(A184993(n))+A151119(n)`
-/

namespace A151120.P5106330502615602016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276331 (A184993 n).toNat + A151119 n

end

end A151120.P5106330502615602016

/-!
# A151121: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 1, -1), (0, 0, 1), (1, 0, 0), (1, 1, 1)}.

The programs for A151121, there is no canonical definition to state claims against.
-/

/-! ## A151121.P12957634944808679630

`A151120(n)-A066087(A151104(n))`
-/

namespace A151121.P12957634944808679630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151120 n - A066087 (A151104 n).toNat

end

end A151121.P12957634944808679630

/-! ## A151121.P1786756548568786556

`A047337(A274483(n+1))+A000034(A056508(n+1))`
-/

namespace A151121.P1786756548568786556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047337 (A274483 (n + 1)).toNat + A000034 (A056508 (n + 1)).toNat

end

end A151121.P1786756548568786556

/-!
# A151122: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (0, 0, -1), (0, 1, 0), (1, 0, 1), (1, 1, 0)}.

The programs for A151122, there is no canonical definition to state claims against.
-/

/-! ## A151122.P2024540986019128116

`and(A026741(A151126(n)), A151123(n))`
-/

namespace A151122.P2024540986019128116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A026741 (A151126 n).toNat) (A151123 n)

end

end A151122.P2024540986019128116

/-! ## A151122.P8888556732754768523

`A028310(and(A151123(n), A151126(n)))`
-/

namespace A151122.P8888556732754768523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (Int.land (A151123 n) (A151126 n)).toNat

end

end A151122.P8888556732754768523

/-!
# A151123: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (0, 1, -1), (0, 1, 1), (1, 0, 0), (1, 1, 0)}.

The programs for A151123, there is no canonical definition to state claims against.
-/

/-! ## A151123.P8709402632452597576

`A151120(n)+A102679(A102285(n))`
-/

namespace A151123.P8709402632452597576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151120 n + A102679 (A102285 n).toNat

end

end A151123.P8709402632452597576

/-! ## A151123.P1844373594203159796

`A151132(n)-A277904(A151152(n))`
-/

namespace A151123.P1844373594203159796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151132 n - A277904 (A151152 n).toNat

end

end A151123.P1844373594203159796

/-! ## A151123.P10583725729417080106

`A205406(A151120(n)+A071960(n+1))`
-/

namespace A151123.P10583725729417080106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205406 (A151120 n + A071960 (n + 1)).toNat

end

end A151123.P10583725729417080106

/-!
# A151124: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (0, 1, -1), (1, 0, 0), (1, 0, 1), (1, 1, 0)}.

The programs for A151124, there is no canonical definition to state claims against.
-/

/-! ## A151124.P10250881705217998610

`A192543(A150646(n))+A150972(n)`
-/

namespace A151124.P10250881705217998610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192543 (A150646 n).toNat + A150972 n

end

end A151124.P10250881705217998610

/-! ## A151124.P5490052678720898377

`A072747(A150806(n+1))`
-/

namespace A151124.P5490052678720898377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072747 (A150806 (n + 1)).toNat

end

end A151124.P5490052678720898377

/-!
# A151125: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, 0, 1), (0, 0, 1), (1, 0, 1), (1, 1, 0)}.

The programs for A151125, there is no canonical definition to state claims against.
-/

/-! ## A151125.P12879191520801142610

`A081832(A279736(n+1))`
-/

namespace A151125.P12879191520801142610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081832 (A279736 (n + 1)).toNat

end

end A151125.P12879191520801142610

/-!
# A151126: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, 1, 1), (0, 1, 1), (1, 0, 0), (1, 0, 1)}.

The programs for A151126, there is no canonical definition to state claims against.
-/

/-! ## A151126.P3533640736371493783

`or(A000120(A151120(n)), A151122(n))`
-/

namespace A151126.P3533640736371493783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000120 (A151120 n).toNat) (A151122 n)

end

end A151126.P3533640736371493783

/-! ## A151126.P6534048280445763311

`A000027(or(A151122(n), A184973(n)))`
-/

namespace A151126.P6534048280445763311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (Int.lor (A151122 n) (A184973 n)).toNat

end

end A151126.P6534048280445763311

/-! ## A151126.P6933690189245378263

`A028310(or(A151122(n), A184973(n)))`
-/

namespace A151126.P6933690189245378263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (Int.lor (A151122 n) (A184973 n)).toNat

end

end A151126.P6933690189245378263

/-!
# A151127: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, 0, 1), (0, 1, 0), (1, 0, 1), (1, 1, 0)}.

The programs for A151127, there is no canonical definition to state claims against.
-/

/-! ## A151127.P6227396425811126528

`A110655(A151098(n+1))`
-/

namespace A151127.P6227396425811126528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110655 (A151098 (n + 1)).toNat

end

end A151127.P6227396425811126528

/-! ## A151127.P1694273395876661012

`A000110(n+2)-record[A164717(n+1)]`
-/

namespace A151127.P1694273395876661012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164717 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000110 (n + 2) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A151127.P1694273395876661012

/-!
# A151128: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (0, 0, 1), (0, 1, 0), (1, 1, -1), (1, 1, 0)}.

The programs for A151128, there is no canonical definition to state claims against.
-/

/-! ## A151128.P16465931711675977076

`A339642(n+1)+A020985(A005867(n))`
-/

namespace A151128.P16465931711675977076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339642 (n + 1) + A020985 (A005867 n).toNat

end

end A151128.P16465931711675977076

/-! ## A151128.P5987670821045774383

`A339642(n+1)+A020985(A055463(n))`
-/

namespace A151128.P5987670821045774383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339642 (n + 1) + A020985 (A055463 n).toNat

end

end A151128.P5987670821045774383

/-! ## A151128.P9291550764452160450

`A339642(n+1)+A020985(A221670(n+1))`
-/

namespace A151128.P9291550764452160450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339642 (n + 1) + A020985 (A221670 (n + 1)).toNat

end

end A151128.P9291550764452160450

/-!
# A151129: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, 1, 1), (0, 0, 1), (1, 0, 1), (1, 1, 0)}.

The programs for A151129, there is no canonical definition to state claims against.
-/

/-! ## A151129.P14101266600676659150

`A002264(A026866(n+1)+4)`
-/

namespace A151129.P14101266600676659150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A026866 (n + 1) + 4).toNat

end

end A151129.P14101266600676659150

/-! ## A151129.P15634848839567839343

`or(A084059(n), A284391(A123061(n+1)))`
-/

namespace A151129.P15634848839567839343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A084059 n) (A284391 (A123061 (n + 1)).toNat)

end

end A151129.P15634848839567839343

/-!
# A151130: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (0, 0, 1), (0, 1, 0), (1, 0, 1), (1, 1, -1)}.

The programs for A151130, there is no canonical definition to state claims against.
-/

/-! ## A151130.P17522732160204354684

`A117451(A150626(n+1))`
-/

namespace A151130.P17522732160204354684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117451 (A150626 (n + 1)).toNat

end

end A151130.P17522732160204354684

/-! ## A151130.P13078716764891786749

`A366426(A299968(n))+A339642(n+1)`
-/

namespace A151130.P13078716764891786749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366426 (A299968 n).toNat + A339642 (n + 1)

end

end A151130.P13078716764891786749

/-!
# A151131: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (0, 0, -1), (0, 1, 0), (0, 1, 1), (1, 0, 1)}.

The programs for A151131, there is no canonical definition to state claims against.
-/

/-! ## A151131.P11440458505768496811

`A248231(2*A150850(n))`
-/

namespace A151131.P11440458505768496811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248231 (2 * A150850 n).toNat

end

end A151131.P11440458505768496811

/-! ## A151131.P13219141234369292862

`∑[A248562(∑[A049027(n)])]`
-/

namespace A151131.P13219141234369292862
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049027 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248562 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A151131.P13219141234369292862

/-!
# A151132: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (0, 0, -1), (0, 1, 0), (0, 1, 1), (1, 0, 1)}.

The programs for A151132, there is no canonical definition to state claims against.
-/

/-! ## A151132.P13239221818454439174

`A274604(A380591(n+2))`
-/

namespace A151132.P13239221818454439174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274604 (A380591 (n + 2)).toNat

end

end A151132.P13239221818454439174

/-! ## A151132.P9417499520666790972

`A004526(A052913(n))+A000088(n)`
-/

namespace A151132.P9417499520666790972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A052913 n).toNat + A000088 n

end

end A151132.P9417499520666790972

/-! ## A151132.P10461145352650213001

`A325106(A097514(n))+A026375(n)`
-/

namespace A151132.P10461145352650213001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325106 (A097514 n).toNat + A026375 n

end

end A151132.P10461145352650213001

/-!
# A151133: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (0, 0, 1), (0, 1, 0), (1, 0, 1), (1, 1, -1)}.

The programs for A151133, there is no canonical definition to state claims against.
-/

/-! ## A151133.P816683953149579052

`xor(1, A047363(A150860(n)))`
-/

namespace A151133.P816683953149579052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A047363 (A150860 n).toNat)

end

end A151133.P816683953149579052

/-! ## A151133.P15740644786415898411

`∑[A002265(∑[floor((14/3)^n)+3])]`
-/

namespace A151133.P15740644786415898411
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((14 : ℚ) / 3) ^ n⌋ + 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A151133.P15740644786415898411

/-!
# A151134: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (0, 1, -1), (0, 1, 0), (1, 0, 1), (1, 1, 0)}.

The programs for A151134, there is no canonical definition to state claims against.
-/

/-! ## A151134.P4768683123510791987

`A008620(Δ[A151097(n)])`
-/

namespace A151134.P4768683123510791987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151097 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (f1 (n + 1) - f1 n).toNat

end

end A151134.P4768683123510791987

/-! ## A151134.P13390619271016951831

`A194990(A150795(n+1))`
-/

namespace A151134.P13390619271016951831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194990 (A150795 (n + 1)).toNat

end

end A151134.P13390619271016951831

/-!
# A151135: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (0, 1, 0), (1, 0, 1), (1, 1, -1), (1, 1, 0)}.

The programs for A151135, there is no canonical definition to state claims against.
-/

/-! ## A151135.P17870539123093984741

`A033182(A128732(n+1)+A033321(n))+A026375(n)`
-/

namespace A151135.P17870539123093984741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033182 (A128732 (n + 1) + A033321 n).toNat + A026375 n

end

end A151135.P17870539123093984741

/-! ## A151135.P17754917186087811664

`A033182(A262664(n)+A303952(n)-1)+A026375(n)`
-/

namespace A151135.P17754917186087811664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033182 (A262664 n + (A303952 n - 1)).toNat + A026375 n

end

end A151135.P17754917186087811664

/-!
# A151136: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (0, 0, -1), (0, 1, 0), (1, 0, 1), (1, 1, 0)}.

The programs for A151136, there is no canonical definition to state claims against.
-/

/-! ## A151136.P13527601388293842968

`A005843(A151118(n))-A059715(n+1)`
-/

namespace A151136.P13527601388293842968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A151118 n).toNat - A059715 (n + 1)

end

end A151136.P13527601388293842968

/-! ## A151136.P10643073553184742939

`∏{p}[A030225(2*n+1)², #]`
-/

namespace A151136.P10643073553184742939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030225 (2 * n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A151136.P10643073553184742939

/-!
# A151137: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (0, 1, -1), (0, 1, 1), (1, 0, 0), (1, 1, 0)}.

The programs for A151137, there is no canonical definition to state claims against.
-/

/-! ## A151137.P942309533763222210

`A106250(A150628(n+1))`
-/

namespace A151137.P942309533763222210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106250 (A150628 (n + 1)).toNat

end

end A151137.P942309533763222210

/-! ## A151137.P15653440273205191286

`A316626(A316593(n+1)+A007052(n))`
-/

namespace A151137.P15653440273205191286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316626 (A316593 (n + 1) + A007052 n).toNat

end

end A151137.P15653440273205191286

/-!
# A151138: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (0, 1, -1), (0, 1, 0), (0, 1, 1), (1, 0, 1)}.

The programs for A151138, there is no canonical definition to state claims against.
-/

/-! ## A151138.P11550542263058842713

`A262672(A151103(n+1))`
-/

namespace A151138.P11550542263058842713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262672 (A151103 (n + 1)).toNat

end

end A151138.P11550542263058842713

/-! ## A151138.P676756900950765905

`A198951(n)+A002264(A150811(n+1))`
-/

namespace A151138.P676756900950765905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198951 n + A002264 (A150811 (n + 1)).toNat

end

end A151138.P676756900950765905

/-!
# A151139: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (0, 1, -1), (0, 1, 0), (0, 1, 1), (1, 0, 1)}.

The programs for A151139, there is no canonical definition to state claims against.
-/

/-! ## A151139.P9120532624911500806

`A103221(Δ[A045902(n)])`
-/

namespace A151139.P9120532624911500806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045902 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 (f1 (n + 1) - f1 n).toNat

end

end A151139.P9120532624911500806

/-! ## A151139.P4716755623954321667

`A029920(A150650(n+1))`
-/

namespace A151139.P4716755623954321667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029920 (A150650 (n + 1)).toNat

end

end A151139.P4716755623954321667

/-!
# A151140: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (0, 1, -1), (0, 1, 1), (1, 0, 0), (1, 0, 1)}.

The programs for A151140, there is no canonical definition to state claims against.
-/

/-! ## A151140.P6408240900846044517

`A316794(A048855(n))+A068551(n)`
-/

namespace A151140.P6408240900846044517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316794 (A048855 n).toNat + A068551 n

end

end A151140.P6408240900846044517

/-! ## A151140.P14999082242422593200

`A151152(n)-A279206(A340028(n+1))`
-/

namespace A151140.P14999082242422593200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151152 n - A279206 (A340028 (n + 1)).toNat

end

end A151140.P14999082242422593200

/-!
# A151141: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (0, 1, -1), (0, 1, 1), (1, 0, 0), (1, 0, 1)}.

The programs for A151141, there is no canonical definition to state claims against.
-/

/-! ## A151141.P16992716167520285370

`or(A136119(A114198(n)), A321407(n))`
-/

namespace A151141.P16992716167520285370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A136119 (A114198 n).toNat) (A321407 n)

end

end A151141.P16992716167520285370

/-! ## A151141.P9447049261202161036

`or(A089646(A027913(n)), A307816(n+2))`
-/

namespace A151141.P9447049261202161036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A089646 (A027913 n).toNat) (A307816 (n + 2))

end

end A151141.P9447049261202161036

/-!
# A151142: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, -1, 1), (0, 1, 0), (1, 0, 0), (1, 1, 0)}.

The programs for A151142, there is no canonical definition to state claims against.
-/

/-! ## A151142.P12203392585586583667

`A031218(A151165(n))`
-/

namespace A151142.P12203392585586583667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031218 (A151165 n).toNat

end

end A151142.P12203392585586583667

/-! ## A151142.P15894439266368806841

`A136548(A151165(n)+1)`
-/

namespace A151142.P15894439266368806841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136548 (A151165 n + 1).toNat

end

end A151142.P15894439266368806841

/-! ## A151142.P8075581304457779078

`A136548(A307398(n+1))`
-/

namespace A151142.P8075581304457779078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136548 (A307398 (n + 1)).toNat

end

end A151142.P8075581304457779078

/-!
# A151143: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, -1), (0, 1, 1), (1, 0, 1), (1, 1, 0)}.

The programs for A151143, there is no canonical definition to state claims against.
-/

/-! ## A151143.P234574399028593038

`A004277(A151112(n))-A151093(n)`
-/

namespace A151143.P234574399028593038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A151112 n).toNat - A151093 n

end

end A151143.P234574399028593038

/-! ## A151143.P9975836171832628971

`A004277(A151144(n))-A151150(n)`
-/

namespace A151143.P9975836171832628971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A151144 n).toNat - A151150 n

end

end A151143.P9975836171832628971

/-! ## A151143.P325071789878781466

`A004277(A151112(n))-(A004277(A151113(n))-A151150(n))`
-/

namespace A151143.P325071789878781466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A151112 n).toNat - (A004277 (A151113 n).toNat - A151150 n)

end

end A151143.P325071789878781466

/-!
# A151144: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, -1), (0, 1, 1), (1, 0, 1), (1, 1, 0)}.

The programs for A151144, there is no canonical definition to state claims against.
-/

/-! ## A151144.P16916633628678213765

`A001281(A151150(n)+A151143(n))`
-/

namespace A151144.P16916633628678213765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A151150 n + A151143 n).toNat

end

end A151144.P16916633628678213765

/-! ## A151144.P12522186189311033563

`A004525(A151150(n)+A151143(n))`
-/

namespace A151144.P12522186189311033563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A151150 n + A151143 n).toNat

end

end A151144.P12522186189311033563

/-! ## A151144.P6509427302723812728

`A004526(A151150(n)+A151143(n))`
-/

namespace A151144.P6509427302723812728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A151150 n + A151143 n).toNat

end

end A151144.P6509427302723812728

/-!
# A151145: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (0, 0, -1), (0, 1, 0), (1, 0, 0), (1, 1, 1)}.

The programs for A151145, there is no canonical definition to state claims against.
-/

/-! ## A151145.P8711438048378525180

`A060145(A084059(n+1))`
-/

namespace A151145.P8711438048378525180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060145 (A084059 (n + 1)).toNat

end

end A151145.P8711438048378525180

/-! ## A151145.P13122331408897160207

`A103221(Δ[A045902(n)]+1)`
-/

namespace A151145.P13122331408897160207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045902 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 (f1 (n + 1) - f1 n + 1).toNat

end

end A151145.P13122331408897160207

/-!
# A151146: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, 0, 0), (0, 1, 1), (1, 0, 1), (1, 1, 0)}.

The programs for A151146, there is no canonical definition to state claims against.
-/

/-! ## A151146.P7518045875854107180

`A004277(A151152(n))-A151155(n)`
-/

namespace A151146.P7518045875854107180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A151152 n).toNat - A151155 n

end

end A151146.P7518045875854107180

/-! ## A151146.P6329922521617785497

`∏{p}[A151147(n)², #]`
-/

namespace A151146.P6329922521617785497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151147 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A151146.P6329922521617785497

/-!
# A151148: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, -1), (0, 1, 1), (1, 0, 0), (1, 1, 1)}.

The programs for A151148, there is no canonical definition to state claims against.
-/

/-! ## A151148.P6867351684690678970

`A004277(A151149(n))-A151151(n)`
-/

namespace A151148.P6867351684690678970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A151149 n).toNat - A151151 n

end

end A151148.P6867351684690678970

/-!
# A151149: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, -1), (0, 1, 1), (1, 0, 0), (1, 1, 1)}.

The programs for A151149, there is no canonical definition to state claims against.
-/

/-! ## A151149.P10448882338154174542

`A000265(A151151(n)+A151148(n))`
-/

namespace A151149.P10448882338154174542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A151151 n + A151148 n).toNat

end

end A151149.P10448882338154174542

/-! ## A151149.P6244355710401383421

`A151182(n)-A059995(A151137(n))`
-/

namespace A151149.P6244355710401383421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151182 n - A059995 (A151137 n).toNat

end

end A151149.P6244355710401383421

/-!
# A151150: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 1, -1), (0, 1, 1), (1, 0, 1), (1, 1, 0)}.

The programs for A151150, there is no canonical definition to state claims against.
-/

/-! ## A151150.P11424725386068217621

`A151151(n)-A010894(A052905(n))`
-/

namespace A151150.P11424725386068217621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151151 n - A010894 ((A052905 n).toNat + 21)

end

end A151150.P11424725386068217621

/-! ## A151150.P9358638782501027505

`A004277(A151113(n))-A151093(n)`
-/

namespace A151150.P9358638782501027505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A151113 n).toNat - A151093 n

end

end A151150.P9358638782501027505

/-! ## A151150.P7121020431762759310

`A004277(A151144(n))-A151143(n)`
-/

namespace A151150.P7121020431762759310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A151144 n).toNat - A151143 n

end

end A151150.P7121020431762759310

/-!
# A151151: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 1, -1), (0, 1, 1), (1, 0, 0), (1, 1, 1)}.

The programs for A151151, there is no canonical definition to state claims against.
-/

/-! ## A151151.P6869868079684024413

`A151150(n)+A010894(A052905(n))`
-/

namespace A151151.P6869868079684024413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151150 n + A010894 ((A052905 n).toNat + 21)

end

end A151151.P6869868079684024413

/-! ## A151151.P1190863896096489616

`A004277(A151149(n))-A151148(n)`
-/

namespace A151151.P1190863896096489616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A151149 n).toNat - A151148 n

end

end A151151.P1190863896096489616

/-! ## A151151.P1361151998535243607

`A151150(n)-A066087(A151104(n))`
-/

namespace A151151.P1361151998535243607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151150 n - A066087 (A151104 n).toNat

end

end A151151.P1361151998535243607

/-!
# A151152: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, 0, 1), (0, 1, 1), (1, 0, 1), (1, 1, 0)}.

The programs for A151152, there is no canonical definition to state claims against.
-/

/-! ## A151152.P18140159131160918148

`A001281(A151155(n)+A151146(n))`
-/

namespace A151152.P18140159131160918148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A151155 n + A151146 n).toNat

end

end A151152.P18140159131160918148

/-! ## A151152.P13737187946207899460

`A004525(A151155(n)+A151146(n))`
-/

namespace A151152.P13737187946207899460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A151155 n + A151146 n).toNat

end

end A151152.P13737187946207899460

/-! ## A151152.P12607146096650500840

`A004526(A151155(n)+A151146(n))`
-/

namespace A151152.P12607146096650500840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A151155 n + A151146 n).toNat

end

end A151152.P12607146096650500840

/-!
# A151153: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (0, 1, 0), (1, 0, 0), (1, 1, -1), (1, 1, 1)}.

The programs for A151153, there is no canonical definition to state claims against.
-/

/-! ## A151153.P16072184278101910194

`A139711(A150766(n))`
-/

namespace A151153.P16072184278101910194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139711 (A150766 n).toNat

end

end A151153.P16072184278101910194

/-! ## A151153.P5675433144233507387

`A029920(A150655(n+1))`
-/

namespace A151153.P5675433144233507387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029920 (A150655 (n + 1)).toNat

end

end A151153.P5675433144233507387

/-!
# A151154: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (0, 1, -1), (0, 1, 0), (1, 0, 1), (1, 1, 0)}.

The programs for A151154, there is no canonical definition to state claims against.
-/

/-! ## A151154.P8964129738516968202

`A276797(abs(∑[(-5)^n]))+A006191(n+1)`
-/

namespace A151154.P8964129738516968202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-5) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276797 |∑ j ∈ Finset.range (n + 1), f1 j|.toNat + A006191 (n + 1)

end

end A151154.P8964129738516968202

/-! ## A151154.P16184630798048854025

`floor(A082964(A001190(2*(n+2)))+4^(n-1))`
-/

namespace A151154.P16184630798048854025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A082964 (A001190 (2 * (n + 2))).toNat : ℚ) + (4 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

end

end A151154.P16184630798048854025

/-!
# A151155: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, 1, 1), (0, 1, 1), (1, 0, 1), (1, 1, 0)}.

The programs for A151155, there is no canonical definition to state claims against.
-/

/-! ## A151155.P2815749159681458021

`A004277(A151152(n))-A151146(n)`
-/

namespace A151155.P2815749159681458021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A151152 n).toNat - A151146 n

end

end A151155.P2815749159681458021

/-! ## A151155.P4231961995214792501

`A138999(A026751(n+2))`
-/

namespace A151155.P4231961995214792501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138999 (A026751 (n + 2)).toNat

end

end A151155.P4231961995214792501

/-!
# A151156: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (0, 0, -1), (0, 1, 0), (1, 0, 0), (1, 1, 1)}.

The programs for A151156, there is no canonical definition to state claims against.
-/

/-! ## A151156.P3218660497386393195

`∑[record[A194509(A151023(n))]]`
-/

namespace A151156.P3218660497386393195
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194509 (A151023 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A151156.P3218660497386393195

/-! ## A151156.P15213494216278248835

`A130497(Δ[A151829(n+2)])`
-/

namespace A151156.P15213494216278248835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151829 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130497 (f1 (n + 1) - f1 n).toNat

end

end A151156.P15213494216278248835

/-!
# A151157: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (0, 1, -1), (0, 1, 0), (1, 0, 0), (1, 1, 1)}.

The programs for A151157, there is no canonical definition to state claims against.
-/

/-! ## A151157.P4816488174720933380

`A008611(A150857(n+1))`
-/

namespace A151157.P4816488174720933380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (A150857 (n + 1)).toNat

end

end A151157.P4816488174720933380

/-! ## A151157.P8760618769536254315

`∑[record[A081753(A171243(n))]]`
-/

namespace A151157.P8760618769536254315
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081753 (A171243 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A151157.P8760618769536254315

/-!
# A151158: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (0, 1, 0), (1, 0, 1), (1, 1, -1), (1, 1, 0)}.

The programs for A151158, there is no canonical definition to state claims against.
-/

/-! ## A151158.P11572768210964584378

`floor(sqrt(A038098(3^n)+1))`
-/

namespace A151158.P11572768210964584378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A038098 (3 ^ n) + 1)

end

end A151158.P11572768210964584378

/-! ## A151158.P4838620068372376380

`∑[A008620(A270530(n))]`
-/

namespace A151158.P4838620068372376380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (A270530 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A151158.P4838620068372376380

/-!
# A151159: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (0, 1, 0), (0, 1, 1), (1, 0, 1), (1, 1, -1)}.

The programs for A151159, there is no canonical definition to state claims against.
-/

/-! ## A151159.P10073658301934361349

`A109613(A151158(n)+A002265(n))`
-/

namespace A151159.P10073658301934361349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 (A151158 n + A002265 n).toNat

end

end A151159.P10073658301934361349

/-! ## A151159.P1428680207673026624

`or(A064547(A001339(n)), A151158(n))`
-/

namespace A151159.P1428680207673026624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A064547 (A001339 n).toNat) (A151158 n)

end

end A151159.P1428680207673026624

/-! ## A151159.P303464932787526019

`or(A001511(A151169(n)), A151158(n))`
-/

namespace A151159.P303464932787526019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001511 (A151169 n).toNat) (A151158 n)

end

end A151159.P303464932787526019

/-!
# A151160: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (0, 1, 0), (1, 0, 0), (1, 1, -1), (1, 1, 1)}.

The programs for A151160, there is no canonical definition to state claims against.
-/

/-! ## A151160.P14306930713055727760

`A008611(A150859(n+1))`
-/

namespace A151160.P14306930713055727760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (A150859 (n + 1)).toNat

end

end A151160.P14306930713055727760

/-! ## A151160.P4198087051366854293

`A089576(∑[A248225(n)]+1)`
-/

namespace A151160.P4198087051366854293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248225 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089576 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A151160.P4198087051366854293

/-!
# A151161: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (0, 1, 0), (0, 1, 1), (1, 0, 1), (1, 1, -1)}.

The programs for A151161, there is no canonical definition to state claims against.
-/

/-! ## A151161.P11584456457942075764

`A039775(or(6^n, p?[xor(1, n)+1]))`
-/

namespace A151161.P11584456457942075764
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039775 (Nat.lor (6 ^ n) (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)))

end

end A151161.P11584456457942075764

/-! ## A151161.P12375987967954889422

`A289120(A150988(n+1))`
-/

namespace A151161.P12375987967954889422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289120 (A150988 (n + 1)).toNat

end

end A151161.P12375987967954889422

/-!
# A151162: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 0), (1, 0, 0), (1, 0, 1), (1, 1, 0)}.

The programs for A151162, there is no canonical definition to state claims against.
-/

/-! ## A151162.P4573589145103135286

`A007583(n)+A002264(A128386(n))`
-/

namespace A151162.P4573589145103135286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007583 n + A002264 (A128386 n).toNat

end

end A151162.P4573589145103135286

/-! ## A151162.P776281901949328233

`A149463(n)+A004524(A000302(n))`
-/

namespace A151162.P776281901949328233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149463 n + A004524 (A000302 n).toNat

end

end A151162.P776281901949328233

/-!
# A151163: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, 0, 0), (1, 0, 0), (1, 0, 1), (1, 1, 0)}.

The programs for A151163, there is no canonical definition to state claims against.
-/

/-! ## A151163.P1142207187157772821

`A257808(A052913(n))+A109720(n+1)`
-/

namespace A151163.P1142207187157772821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257808 (A052913 n).toNat + A109720 (n + 1)

end

end A151163.P1142207187157772821

/-! ## A151163.P13195638211482849743

`A195174(or(2*n, n%4)+∏[2/(n+1)+4]/2)`
-/

namespace A151163.P13195638211482849743
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (n + 1 : ℚ) + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195174 (SequenceMachineLib.roundAway ((Nat.lor (2 * n) (n % 4) : ℚ) + (∏ j ∈ Finset.range (n + 1), f1 j) / 2)).toNat

end

end A151163.P13195638211482849743

/-!
# A151164: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (0, 0, -1), (0, 0, 1), (0, 1, 1), (1, 0, 1)}.

The programs for A151164, there is no canonical definition to state claims against.
-/

/-! ## A151164.P6570364879680493226

`A347792(A150774(n))`
-/

namespace A151164.P6570364879680493226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347792 (A150774 n).toNat

end

end A151164.P6570364879680493226

/-! ## A151164.P17701634996655373100

`A150284(n)+A004524(A151180(n))`
-/

namespace A151164.P17701634996655373100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150284 n + A004524 (A151180 n).toNat

end

end A151164.P17701634996655373100

/-!
# A151165: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (0, 0, -1), (0, 0, 1), (0, 1, 1), (1, 0, 1)}.

The programs for A151165, there is no canonical definition to state claims against.
-/

/-! ## A151165.P13240804566435352147

`A347792(A150774(n))+A035322(3*n+2)`
-/

namespace A151165.P13240804566435352147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347792 (A150774 n).toNat + A035322 (3 * n + 2)

end

end A151165.P13240804566435352147

/-! ## A151165.P8301928742378628109

`A347792(A150774(n))+A075199(A000041(n))`
-/

namespace A151165.P8301928742378628109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347792 (A150774 n).toNat + A075199 (A000041 n).toNat

end

end A151165.P8301928742378628109

/-! ## A151165.P12892888367054299185

`A347792(A150774(n))+A075199(A323349(n))`
-/

namespace A151165.P12892888367054299185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347792 (A150774 n).toNat + A075199 (A323349 n).toNat

end

end A151165.P12892888367054299185

/-!
# A151166: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, 0, 1), (1, 0, 0), (1, 0, 1), (1, 1, 0)}.

The programs for A151166, there is no canonical definition to state claims against.
-/

/-! ## A151166.P7949587015389215465

`A247987(A151307(n))`
-/

namespace A151166.P7949587015389215465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247987 (A151307 n).toNat

end

end A151166.P7949587015389215465

/-! ## A151166.P2100784420640039444

`A318921(A352843(n))+A026375(n)`
-/

namespace A151166.P2100784420640039444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318921 (A352843 n).toNat + A026375 n

end

end A151166.P2100784420640039444

/-!
# A151167: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, 1, 1), (1, 0, 0), (1, 0, 1), (1, 1, 0)}.

The programs for A151167, there is no canonical definition to state claims against.
-/

/-! ## A151167.P14040417838239453431

`A151158(n)+A027356(A151149(n+2))`
-/

namespace A151167.P14040417838239453431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151158 n + A027356 (A151149 (n + 2)).toNat

end

end A151167.P14040417838239453431

/-!
# A151168: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (0, 0, 1), (0, 1, -1), (0, 1, 1), (1, 0, 1)}.

The programs for A151168, there is no canonical definition to state claims against.
-/

/-! ## A151168.P15752947325911314260

`A002265(6*A150859(n))`
-/

namespace A151168.P15752947325911314260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (6 * A150859 n).toNat

end

end A151168.P15752947325911314260

/-! ## A151168.P9191572349736635717

`A004254(n)+A214701(∑[A149736(n)])`
-/

namespace A151168.P9191572349736635717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149736 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004254 n + A214701 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A151168.P9191572349736635717

/-!
# A151169: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (0, 0, 1), (0, 1, -1), (0, 1, 1), (1, 0, 1)}.

The programs for A151169, there is no canonical definition to state claims against.
-/

/-! ## A151169.P4309292316945360772

`A150857(n)+A004526(A150869(n))`
-/

namespace A151169.P4309292316945360772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150857 n + A004526 (A150869 n).toNat

end

end A151169.P4309292316945360772

/-! ## A151169.P16624225813079429159

`A064775(A345941(n+1)+A002913(n))`
-/

namespace A151169.P16624225813079429159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064775 (A345941 (n + 1) + A002913 n).toNat

end

end A151169.P16624225813079429159

/-!
# A151170: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, -1, 0), (0, 1, 0), (1, 1, 0), (1, 1, 1)}.

The programs for A151170, there is no canonical definition to state claims against.
-/

/-! ## A151170.P7781082458271438534

`A005350(A150636(n+1))`
-/

namespace A151170.P7781082458271438534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005350 (A150636 (n + 1)).toNat

end

end A151170.P7781082458271438534

/-! ## A151170.P9614233190014731906

`A108954(A002315(n))+C((1-n)²+n, 2)/3+n`
-/

namespace A151170.P9614233190014731906
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A108954 (A002315 n).toNat : ℚ) + ((Nat.choose ((1 - (n : ℤ)) ^ 2 + (n : ℤ)).toNat 2 : ℚ) / 3 + (n : ℚ))

end

end A151170.P9614233190014731906

/-!
# A151171: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, 0, 1), (0, 1, 0), (1, 0, 0), (1, 1, 1)}.

The programs for A151171, there is no canonical definition to state claims against.
-/

/-! ## A151171.P12723117070344463472

`A337636(A151097(n+1))`
-/

namespace A151171.P12723117070344463472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337636 (A151097 (n + 1)).toNat

end

end A151171.P12723117070344463472

/-! ## A151171.P18159207225351281691

`∑[A110656(A179191(n+2))]`
-/

namespace A151171.P18159207225351281691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110656 (A179191 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A151171.P18159207225351281691

/-!
# A151172: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (0, 0, -1), (0, 0, 1), (0, 1, 1), (1, 1, 0)}.

The programs for A151172, there is no canonical definition to state claims against.
-/

/-! ## A151172.P7953793384018927608

`A119976(n)-A025442(A124564(n))`
-/

namespace A151172.P7953793384018927608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119976 n - A025442 (A124564 n).toNat

end

end A151172.P7953793384018927608

/-! ## A151172.P4338708719887160257

`A119976(n)-A087991(A084357(n))`
-/

namespace A151172.P4338708719887160257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119976 n - A087991 (A084357 n).toNat

end

end A151172.P4338708719887160257

/-!
# A151173: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, -1, 1), (0, 1, 0), (1, 1, 0), (1, 1, 1)}.

The programs for A151173, there is no canonical definition to state claims against.
-/

/-! ## A151173.P18031240860669134721

`record[abs(A194522(A123347(n)))]`
-/

namespace A151173.P18031240860669134721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A194522 (A123347 n).toNat|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A151173.P18031240860669134721

/-! ## A151173.P7532855164401580974

`A326152(A000108(n))+A151171(n)`
-/

namespace A151173.P7532855164401580974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326152 (A000108 n).toNat + A151171 n

end

end A151173.P7532855164401580974

/-!
# A151174: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, -1), (1, 0, 0), (1, 0, 1), (1, 1, 1)}.

The programs for A151174, there is no canonical definition to state claims against.
-/

/-! ## A151174.P1013865122889784790

`A151175(n)-A120647(A005246(n))`
-/

namespace A151174.P1013865122889784790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151175 n - A120647 (A005246 n).toNat

end

end A151174.P1013865122889784790

/-! ## A151174.P6126059868339742187

`xor(A151175(n), A307459(A317036(n+1)))`
-/

namespace A151174.P6126059868339742187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A151175 n) (A307459 (A317036 (n + 1)).toNat)

end

end A151174.P6126059868339742187

/-!
# A151175: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, -1), (1, 0, 0), (1, 1, 0), (1, 1, 1)}.

The programs for A151175, there is no canonical definition to state claims against.
-/

/-! ## A151175.P14435951895148492881

`A151174(n)+A120647(A005246(n))`
-/

namespace A151175.P14435951895148492881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151174 n + A120647 (A005246 n).toNat

end

end A151175.P14435951895148492881

/-! ## A151175.P10865186865859018838

`xor(A151174(n), A307459(A317036(n+1)))`
-/

namespace A151175.P10865186865859018838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A151174 n) (A307459 (A317036 (n + 1)).toNat)

end

end A151175.P10865186865859018838

/-!
# A151176: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, -1), (1, 0, 0), (1, 0, 1), (1, 1, 1)}.

The programs for A151176, there is no canonical definition to state claims against.
-/

/-! ## A151176.P14943099509098621406

`A151177(A001096(n))`
-/

namespace A151176.P14943099509098621406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151177 (A001096 n).toNat

end

end A151176.P14943099509098621406

/-! ## A151176.P17873295677090027509

`A154125(A151177(n))`
-/

namespace A151176.P17873295677090027509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154125 (A151177 n).toNat

end

end A151176.P17873295677090027509

/-!
# A151178: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (0, 0, -1), (0, 0, 1), (0, 1, 1), (1, 1, 0)}.

The programs for A151178, there is no canonical definition to state claims against.
-/

/-! ## A151178.P2754288666225985768

`∑[A247832(A150872(n))]`
-/

namespace A151178.P2754288666225985768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247832 (A150872 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A151178.P2754288666225985768

/-! ## A151178.P11412727566319265583

`A195072(A150650(n+1))`
-/

namespace A151178.P11412727566319265583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195072 (A150650 (n + 1)).toNat

end

end A151178.P11412727566319265583

/-!
# A151179: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (0, 0, 1), (0, 1, -1), (1, 0, 1), (1, 1, 0)}.

The programs for A151179, there is no canonical definition to state claims against.
-/

/-! ## A151179.P18348870498067530285

`round(sqrt(sqrt(A186576(4*n+1))))`
-/

namespace A151179.P18348870498067530285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (Real.sqrt (A186576 (4 * n + 1) : ℝ)))

end

end A151179.P18348870498067530285

/-! ## A151179.P9023508644047196696

`A297022(A138787(n+1))+A000107(n)`
-/

namespace A151179.P9023508644047196696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297022 (A138787 (n + 1)).toNat + A000107 n

end

end A151179.P9023508644047196696

/-!
# A151180: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (0, 0, 1), (0, 1, 1), (1, 0, 1), (1, 1, -1)}.

The programs for A151180, there is no canonical definition to state claims against.
-/

/-! ## A151180.P11273749824831991117

`A098983(A164369(n))+A000111(n)`
-/

namespace A151180.P11273749824831991117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098983 (A164369 n).toNat + A000111 n

end

end A151180.P11273749824831991117

/-! ## A151180.P15465692163372584224

`A151191(n)-A321231(A321228(n))`
-/

namespace A151180.P15465692163372584224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151191 n - A321231 (A321228 n).toNat

end

end A151180.P15465692163372584224

/-!
# A151181: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (0, 0, 1), (0, 1, 1), (1, 0, 1), (1, 1, -1)}.

The programs for A151181, there is no canonical definition to state claims against.
-/

/-! ## A151181.P15859674325990447982

`A008621(A126397(n)+2-n)`
-/

namespace A151181.P15859674325990447982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (A126397 n + (2 - (n : ℤ))).toNat

end

end A151181.P15859674325990447982

/-! ## A151181.P189540674544137009

`A054894(n+1)+A000045(A001096(n))`
-/

namespace A151181.P189540674544137009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054894 (n + 1) + A000045 (A001096 n).toNat

end

end A151181.P189540674544137009

/-!
# A151182: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (0, 0, -1), (0, 0, 1), (0, 1, 0), (1, 1, 1)}.

The programs for A151182, there is no canonical definition to state claims against.
-/

/-! ## A151182.P15010291605208908209

`A151147(n)+A054899(A151124(n))`
-/

namespace A151182.P15010291605208908209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151147 n + A054899 (A151124 n).toNat

end

end A151182.P15010291605208908209

/-! ## A151182.P14724124447928738098

`A151149(n)+A059995(A151137(n))`
-/

namespace A151182.P14724124447928738098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151149 n + A059995 (A151137 n).toNat

end

end A151182.P14724124447928738098

/-! ## A151182.P3938349797543328727

`A059995(A151137(n))-(A059995(n)-A151149(n))`
-/

namespace A151182.P3938349797543328727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059995 (A151137 n).toNat - (A059995 n - A151149 n)

end

end A151182.P3938349797543328727

/-!
# A151183: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (0, 1, -1), (1, 0, 0), (1, 1, 0), (1, 1, 1)}.

The programs for A151183, there is no canonical definition to state claims against.
-/

/-! ## A151183.P3213062000034169952

`A026405(A151304(n+1))`
-/

namespace A151183.P3213062000034169952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026405 (A151304 (n + 1)).toNat

end

end A151183.P3213062000034169952

/-! ## A151183.P4434892963167773091

`A057357(A188229(n+2))`
-/

namespace A151183.P4434892963167773091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057357 (A188229 (n + 2)).toNat

end

end A151183.P4434892963167773091

/-!
# A151184: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (0, 1, 0), (1, 1, -1), (1, 1, 0), (1, 1, 1)}.

The programs for A151184, there is no canonical definition to state claims against.
-/

/-! ## A151184.P1524414902507060956

`A072748(A151143(n+1))`
-/

namespace A151184.P1524414902507060956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072748 (A151143 (n + 1)).toNat

end

end A151184.P1524414902507060956

/-! ## A151184.P15277754431295405483

`A008621(A217666(n+2)+n)`
-/

namespace A151184.P15277754431295405483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (A217666 (n + 2) + (n : ℤ)).toNat

end

end A151184.P15277754431295405483

/-!
# A151185: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (0, 0, 1), (0, 1, 1), (1, 1, -1), (1, 1, 0)}.

The programs for A151185, there is no canonical definition to state claims against.
-/

/-! ## A151185.P7369836119397034829

`A150892(n)+A002264(A151183(n))`
-/

namespace A151185.P7369836119397034829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150892 n + A002264 (A151183 n).toNat

end

end A151185.P7369836119397034829

/-! ## A151185.P2352348331339751699

`A247833(A191243(n+2))`
-/

namespace A151185.P2352348331339751699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247833 (A191243 (n + 2)).toNat

end

end A151185.P2352348331339751699

/-!
# A151186: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (0, 0, 1), (0, 1, -1), (1, 0, 0), (1, 1, 1)}.

The programs for A151186, there is no canonical definition to state claims against.
-/

/-! ## A151186.P6325161135744079327

`A020911(A150642(n+1))`
-/

namespace A151186.P6325161135744079327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020911 (A150642 (n + 1)).toNat

end

end A151186.P6325161135744079327

/-! ## A151186.P4618866810687056200

`A212216(record[A007318(3*n+1)²])`
-/

namespace A151186.P4618866810687056200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (3 * n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212216 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A151186.P4618866810687056200

/-!
# A151187: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (0, 0, 1), (0, 1, -1), (1, 0, 1), (1, 1, 0)}.

The programs for A151187, there is no canonical definition to state claims against.
-/

/-! ## A151187.P15745752587027869762

`A003018(n+1)+A002265(A074611(n))`
-/

namespace A151187.P15745752587027869762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003018 (n + 1) + A002265 (A074611 n).toNat

end

end A151187.P15745752587027869762

/-! ## A151187.P14975622287451747516

`A054894(n+1)+A001221(A159617(n))`
-/

namespace A151187.P14975622287451747516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054894 (n + 1) + A001221 (A159617 n).toNat

end

end A151187.P14975622287451747516

/-!
# A151188: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (0, 0, 1), (0, 1, -1), (1, 0, 0), (1, 1, 1)}.

The programs for A151188, there is no canonical definition to state claims against.
-/

/-! ## A151188.P216293742053000930

`A110655(A291822(n+1))+n`
-/

namespace A151188.P216293742053000930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110655 (A291822 (n + 1)).toNat + (n : ℤ)

end

end A151188.P216293742053000930

/-! ## A151188.P16054333914995488437

`A132292(A277297(n+1))+1+n`
-/

namespace A151188.P16054333914995488437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132292 (A277297 (n + 1)).toNat + 1 + (n : ℤ)

end

end A151188.P16054333914995488437

/-!
# A151189: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (0, 0, -1), (0, 1, 1), (1, 0, 1), (1, 1, 0)}.

The programs for A151189, there is no canonical definition to state claims against.
-/

/-! ## A151189.P18417064516670591223

`A008624(A151151(n+1))`
-/

namespace A151189.P18417064516670591223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008624 (A151151 (n + 1)).toNat

end

end A151189.P18417064516670591223

/-! ## A151189.P9282209505699190084

`∑[A008620(∑[A087449(n)])]`
-/

namespace A151189.P9282209505699190084
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087449 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A151189.P9282209505699190084

/-!
# A151190: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (0, 1, -1), (1, 0, 0), (1, 0, 1), (1, 1, 1)}.

The programs for A151190, there is no canonical definition to state claims against.
-/

/-! ## A151190.P16298685672265212865

`A026405(A150859(n+1))`
-/

namespace A151190.P16298685672265212865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026405 (A150859 (n + 1)).toNat

end

end A151190.P16298685672265212865

/-! ## A151190.P11875019463196935754

`A002265(A151140(n+1))+1`
-/

namespace A151190.P11875019463196935754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A151140 (n + 1)).toNat + 1

end

end A151190.P11875019463196935754

/-!
# A151191: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (0, 0, 1), (0, 1, 0), (1, 1, -1), (1, 1, 1)}.

The programs for A151191, there is no canonical definition to state claims against.
-/

/-! ## A151191.P16971749344949338489

`A121828(A150660(n+1))`
-/

namespace A151191.P16971749344949338489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121828 (A150660 (n + 1)).toNat

end

end A151191.P16971749344949338489

/-! ## A151191.P14395549219323340381

`A110654(∑[A063881(n+2)])`
-/

namespace A151191.P14395549219323340381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063881 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A151191.P14395549219323340381

/-!
# A151192: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (0, 1, -1), (1, 0, 0), (1, 1, 0), (1, 1, 1)}.

The programs for A151192, there is no canonical definition to state claims against.
-/

/-! ## A151192.P2465115032918058277

`∑[∑[A351006(2*n²)]]`
-/

namespace A151192.P2465115032918058277
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351006 (2 * n ^ 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A151192.P2465115032918058277

/-! ## A151192.P531657256301430034

`A163985(n)+A004525(A099025(n))`
-/

namespace A151192.P531657256301430034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163985 n + A004525 (A099025 n).toNat

end

end A151192.P531657256301430034

/-!
# A151193: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (0, 0, 1), (0, 1, 1), (1, 1, -1), (1, 1, 0)}.

The programs for A151193, there is no canonical definition to state claims against.
-/

/-! ## A151193.P13102553629520755527

`A001281(A151201(n)+A151187(n))`
-/

namespace A151193.P13102553629520755527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A151201 n + A151187 n).toNat

end

end A151193.P13102553629520755527

/-! ## A151193.P12395036340587046167

`A151195(A001096(n))-A004247(n)`
-/

namespace A151193.P12395036340587046167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151195 (A001096 n).toNat - A004247 n

end

end A151193.P12395036340587046167

/-!
# A151194: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (0, 1, -1), (1, 0, 0), (1, 0, 1), (1, 1, 1)}.

The programs for A151194, there is no canonical definition to state claims against.
-/

/-! ## A151194.P10536738682850622084

`A151247(n)-A172264(A151247(n))`
-/

namespace A151194.P10536738682850622084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151247 n - A172264 (A151247 n).toNat

end

end A151194.P10536738682850622084

/-! ## A151194.P1291632267833072336

`A018789(n)+∑[∑[A351006(2*n²)]]`
-/

namespace A151194.P1291632267833072336
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351006 (2 * n ^ 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018789 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A151194.P1291632267833072336

/-!
# A151195: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (0, 1, -1), (0, 1, 1), (1, 0, 1), (1, 1, 0)}.

The programs for A151195, there is no canonical definition to state claims against.
-/

/-! ## A151195.P5237373802427865805

`or(A040265(A151190(n)), A151193(n))`
-/

namespace A151195.P5237373802427865805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A040265 (A151190 n).toNat) (A151193 n)

end

end A151195.P5237373802427865805

/-! ## A151195.P15057959759905903122

`or(A040265(A151191(n)), A151193(n))`
-/

namespace A151195.P15057959759905903122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A040265 (A151191 n).toNat) (A151193 n)

end

end A151195.P15057959759905903122

/-! ## A151195.P9750730174167003027

`or(A040265(A151192(n)), A151193(n))`
-/

namespace A151195.P9750730174167003027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A040265 (A151192 n).toNat) (A151193 n)

end

end A151195.P9750730174167003027

/-!
# A151196: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (0, 0, -1), (0, 1, 1), (1, 0, 1), (1, 1, 0)}.

The programs for A151196, there is no canonical definition to state claims against.
-/

/-! ## A151196.P5059193023115045501

`A194990(A150875(n+1))`
-/

namespace A151196.P5059193023115045501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194990 (A150875 (n + 1)).toNat

end

end A151196.P5059193023115045501

/-! ## A151196.P9391488197724929595

`∑[∑[A120750(A307494(n))]]`
-/

namespace A151196.P9391488197724929595
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120750 (A307494 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A151196.P9391488197724929595

/-!
# A151197: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (0, 0, 1), (0, 1, 0), (1, 1, -1), (1, 1, 1)}.

The programs for A151197, there is no canonical definition to state claims against.
-/

/-! ## A151197.P10843155649508918292

`A097992(Δ[Δ[A150636(n)]])`
-/

namespace A151197.P10843155649508918292
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150636 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097992 (f1 (n + 1) - f1 n).toNat

end

end A151197.P10843155649508918292

/-! ## A151197.P11231093650050481731

`A151898(Δ[Δ[A150636(n)]])`
-/

namespace A151197.P11231093650050481731
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150636 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151898 (f1 (n + 1) - f1 n).toNat

end

end A151197.P11231093650050481731

/-!
# A151198: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (0, 0, -1), (0, 1, 0), (1, 0, 1), (1, 1, 1)}.

The programs for A151198, there is no canonical definition to state claims against.
-/

/-! ## A151198.P11307642203358554267

`A008621(5^n)+floor(4^n/3)`
-/

namespace A151198.P11307642203358554267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (5 ^ n) + ⌊(4 ^ n : ℚ) / 3⌋

end

end A151198.P11307642203358554267

/-! ## A151198.P6421010199367464433

`A002265(5^n)+ceil(4^n/3)`
-/

namespace A151198.P6421010199367464433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (5 ^ n) + ⌈(4 ^ n : ℚ) / 3⌉

end

end A151198.P6421010199367464433

/-!
# A151199: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (0, 1, -1), (0, 1, 1), (1, 0, 0), (1, 1, 1)}.

The programs for A151199, there is no canonical definition to state claims against.
-/

/-! ## A151199.P15907116888599933237

`A076272(A017972(n))+A002262(n)`
-/

namespace A151199.P15907116888599933237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076272 (A017972 n).toNat + A002262 n

end

end A151199.P15907116888599933237

/-! ## A151199.P5341247897762710996

`A002264(A155603(n)+A100997(n+1))`
-/

namespace A151199.P5341247897762710996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A155603 n + A100997 (n + 1)).toNat

end

end A151199.P5341247897762710996

