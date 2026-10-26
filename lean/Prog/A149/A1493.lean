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
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C008
import Seq.B001.C010
import Seq.B001.C011
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
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
# A149300: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 1), (1, -1, 0), (1, 1, -1), (1, 1, 0)}.

The programs for A149300, there is no canonical definition to state claims against.
-/

/-! ## A149300.P11508646394696995240

`A055768(A079227(n)+A064641(n))`
-/

namespace A149300.P11508646394696995240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055768 (A079227 n + A064641 n).toNat

end

end A149300.P11508646394696995240

/-! ## A149300.P4484676798767590445

`A216599(A149295(n))+A149299(n)`
-/

namespace A149300.P4484676798767590445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216599 (A149295 n).toNat + A149299 n

end

end A149300.P4484676798767590445

/-! ## A149300.P7945880059966990064

`or(A109436(A129418(n)), A149286(n))`
-/

namespace A149300.P7945880059966990064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A109436 (A129418 n).toNat) (A149286 n)

end

end A149300.P7945880059966990064

/-!
# A149301: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 1, 0), (1, -1, 1), (1, 0, -1), (1, 1, 0)}.

The programs for A149301, there is no canonical definition to state claims against.
-/

/-! ## A149301.P1743779995906554773

`A149300(n)+A058275(A058275(n)+n)`
-/

namespace A149301.P1743779995906554773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149300 n + A058275 (A058275 n + (n : ℤ)).toNat

end

end A149301.P1743779995906554773

/-! ## A149301.P8149981465050936787

`A247908(A149725(n))`
-/

namespace A149301.P8149981465050936787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247908 (A149725 n).toNat

end

end A149301.P8149981465050936787

/-!
# A149302: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 1), (1, -1, 1), (1, 1, -1), (1, 1, 0)}.

The programs for A149302, there is no canonical definition to state claims against.
-/

/-! ## A149302.P6872959352404163368

`A149300(n)+A004197(A184953(n)+A058275(n))`
-/

namespace A149302.P6872959352404163368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149300 n + A004197 (A184953 n + A058275 n).toNat

end

end A149302.P6872959352404163368

/-! ## A149302.P4342411044658664252

`A147680(A088132(n))`
-/

namespace A149302.P4342411044658664252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147680 (A088132 n).toNat

end

end A149302.P4342411044658664252

/-!
# A149303: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, 1), (0, 0, -1), (1, -1, 1), (1, 1, 0)}.

The programs for A149303, there is no canonical definition to state claims against.
-/

/-! ## A149303.P2130482721598885617

`A383278(A150826(n))`
-/

namespace A149303.P2130482721598885617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383278 (A150826 n).toNat

end

end A149303.P2130482721598885617

/-! ## A149303.P6961671827214170193

`A289500(A235791(3*(n+1))+A145839(n))`
-/

namespace A149303.P6961671827214170193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289500 (A235791 (3 * (n + 1)) + A145839 n).toNat

end

end A149303.P6961671827214170193

/-!
# A149304: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, 0, 1), (-1, 1, 1), (1, 0, -1), (1, 0, 1)}.

The programs for A149304, there is no canonical definition to state claims against.
-/

/-! ## A149304.P13760480183721939375

`A109680(A149305(n))`
-/

namespace A149304.P13760480183721939375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109680 (A149305 n).toNat

end

end A149304.P13760480183721939375

/-! ## A149304.P9302224795509333048

`A131813(A219706(n)+2)`
-/

namespace A149304.P9302224795509333048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131813 (A219706 n + 2).toNat

end

end A149304.P9302224795509333048

/-!
# A149305: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 1), (-1, 1, 1), (1, 0, -1), (1, 0, 1)}.

The programs for A149305, there is no canonical definition to state claims against.
-/

/-! ## A149305.P6049911093527266963

`A149306(n)-A056973(A005130(n))`
-/

namespace A149305.P6049911093527266963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149306 n - A056973 (A005130 n).toNat

end

end A149305.P6049911093527266963

/-! ## A149305.P17591065766237642741

`A149307(n)-A030101(A184993(n))`
-/

namespace A149305.P17591065766237642741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149307 n - A030101 (A184993 n).toNat

end

end A149305.P17591065766237642741

/-! ## A149305.P5871016322415207170

`A149307(n)+A117966(2*A184993(n))`
-/

namespace A149305.P5871016322415207170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149307 n + A117966 (2 * A184993 n).toNat

end

end A149305.P5871016322415207170

/-!
# A149306: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 1), (-1, 1, 1), (1, 0, -1), (1, 0, 1)}.

The programs for A149306, there is no canonical definition to state claims against.
-/

/-! ## A149306.P9191001351580158113

`or(A149305(n), A167700(A149294(n)))`
-/

namespace A149306.P9191001351580158113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A149305 n) (A167700 (A149294 n).toNat)

end

end A149306.P9191001351580158113

/-! ## A149306.P10875233028008440673

`A149307(A004902(n+1))-A332743(n)`
-/

namespace A149306.P10875233028008440673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149307 (A004902 (n + 1)).toNat - A332743 n

end

end A149306.P10875233028008440673

/-! ## A149306.P11652976337217255476

`or(A149305(n), A332743(A004902(n+1)))`
-/

namespace A149306.P11652976337217255476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A149305 n) (A332743 (A004902 (n + 1)).toNat)

end

end A149306.P11652976337217255476

/-!
# A149307: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, 0, 1), (-1, 1, 1), (1, -1, 0), (1, 1, 0)}.

The programs for A149307, there is no canonical definition to state claims against.
-/

/-! ## A149307.P10951065432378718872

`A332743(A004902(n+1))+A149306(n)`
-/

namespace A149307.P10951065432378718872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332743 (A004902 (n + 1)).toNat + A149306 n

end

end A149307.P10951065432378718872

/-! ## A149307.P5715333507195787936

`A149305(n)+A030101(A184993(n))`
-/

namespace A149307.P5715333507195787936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149305 n + A030101 (A184993 n).toNat

end

end A149307.P5715333507195787936

/-! ## A149307.P12689439294373847794

`A149305(n)-A117966(2*A184993(n))`
-/

namespace A149307.P12689439294373847794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149305 n - A117966 (2 * A184993 n).toNat

end

end A149307.P12689439294373847794

/-!
# A149308: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, 0, 1), (-1, 1, 0), (1, -1, 1), (1, 1, 0)}.

The programs for A149308, there is no canonical definition to state claims against.
-/

/-! ## A149308.P16260775741483810921

`A149309(n)-A185284(n²)`
-/

namespace A149308.P16260775741483810921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149309 n - A185284 (n ^ 2)

end

end A149308.P16260775741483810921

/-! ## A149308.P7859131785688213737

`A149309(A001096(n))`
-/

namespace A149308.P7859131785688213737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149309 (A001096 n).toNat

end

end A149308.P7859131785688213737

/-!
# A149309: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, 0, 0), (-1, 1, 1), (1, -1, 1), (1, 1, 0)}.

The programs for A149309, there is no canonical definition to state claims against.
-/

/-! ## A149309.P15829491680915032373

`A185284(n²)+A149308(n)`
-/

namespace A149309.P15829491680915032373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 (n ^ 2) + A149308 n

end

end A149309.P15829491680915032373

/-!
# A149310: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 1, 0), (0, 1, -1), (1, -1, 1), (1, 1, 0)}.

The programs for A149310, there is no canonical definition to state claims against.
-/

/-! ## A149310.P17466976454504424921

`A373074(∑[3*(n+1)]+1)`
-/

namespace A149310.P17466976454504424921
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373074 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A149310.P17466976454504424921

/-! ## A149310.P8774194551918367385

`A126208(round(sqrt(23)^n)-(∑[n+2]-3))`
-/

namespace A149310.P8774194551918367385
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126208 (SequenceMachineLib.roundAway (Real.sqrt (23 : ℝ) ^ n) - (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 3)).toNat

end

end A149310.P8774194551918367385

/-!
# A149311: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, 1), (0, 1, -1), (1, -1, 1), (1, 1, 0)}.

The programs for A149311, there is no canonical definition to state claims against.
-/

/-! ## A149311.P9910053296553511326

`A008621(A081659(n)*A319558(n))`
-/

namespace A149311.P9910053296553511326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (A081659 n * A319558 n).toNat

end

end A149311.P9910053296553511326

/-! ## A149311.P10487738689483196415

`A087010(5^n+1)+1`
-/

namespace A149311.P10487738689483196415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087010 (5 ^ n + 1) + 1

end

end A149311.P10487738689483196415

/-!
# A149312: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, 0), (-1, 1, 1), (1, 0, -1), (1, 0, 1)}.

The programs for A149312, there is no canonical definition to state claims against.
-/

/-! ## A149312.P8204950837026785960

`A065372(A273539(n))`
-/

namespace A149312.P8204950837026785960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065372 (A273539 n).toNat

end

end A149312.P8204950837026785960

/-! ## A149312.P4262354294910594582

`A001031(A377153(n))-n`
-/

namespace A149312.P4262354294910594582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001031 (A377153 n).toNat - (n : ℤ)

end

end A149312.P4262354294910594582

/-!
# A149313: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 1, 0), (-1, 1, 1), (1, 0, -1), (1, 0, 1)}.

The programs for A149313, there is no canonical definition to state claims against.
-/

/-! ## A149313.P13401534105666644505

`A289814(A243249(n+1))+A185284(n²)+A149308(n)`
-/

namespace A149313.P13401534105666644505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289814 (A243249 (n + 1)).toNat + (A185284 (n ^ 2) + A149308 n)

end

end A149313.P13401534105666644505

/-! ## A149313.P5355558237214949542

`A174800(A148410(n))`
-/

namespace A149313.P5355558237214949542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174800 (A148410 n).toNat

end

end A149313.P5355558237214949542

/-!
# A149314: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, 0, 1), (-1, 1, 1), (1, -1, 1), (1, 1, 0)}.

The programs for A149314, there is no canonical definition to state claims against.
-/

/-! ## A149314.P12467584834475150639

`A008611(A000150(n)*A251728(n+1))`
-/

namespace A149314.P12467584834475150639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (A000150 n * A251728 (n + 1)).toNat

end

end A149314.P12467584834475150639

/-! ## A149314.P10931221540146057995

`A210380(A025235(n))`
-/

namespace A149314.P10931221540146057995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210380 (A025235 n).toNat

end

end A149314.P10931221540146057995

/-!
# A149315: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 1, 0), (1, -1, 1), (1, 1, -1), (1, 1, 0)}.

The programs for A149315, there is no canonical definition to state claims against.
-/

/-! ## A149315.P12585927644747693765

`A303739(A068602(n))`
-/

namespace A149315.P12585927644747693765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303739 (A068602 n).toNat

end

end A149315.P12585927644747693765

/-! ## A149315.P831856571815147001

`A228428(A301542(n))+1`
-/

namespace A149315.P831856571815147001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228428 (A301542 n).toNat + 1

end

end A149315.P831856571815147001

/-!
# A149316: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, 1), (1, -1, 1), (1, 1, -1), (1, 1, 0)}.

The programs for A149316, there is no canonical definition to state claims against.
-/

/-! ## A149316.P13155997727235558246

`A109825(floor(sqrt(2^n*n!)))`
-/

namespace A149316.P13155997727235558246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109825 (Nat.sqrt (2 ^ n * Nat.factorial n))

end

end A149316.P13155997727235558246

/-! ## A149316.P13911350002965843623

`A109825(A148464(n))`
-/

namespace A149316.P13911350002965843623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109825 (A148464 n).toNat

end

end A149316.P13911350002965843623

/-!
# A149317: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, 0, 1), (-1, 1, 1), (1, 0, 1), (1, 1, -1)}.

The programs for A149317, there is no canonical definition to state claims against.
-/

/-! ## A149317.P5042193322067237682

`A122077(A005558(n))`
-/

namespace A149317.P5042193322067237682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122077 (A005558 n).toNat

end

end A149317.P5042193322067237682

/-! ## A149317.P9824804195225887147

`A220492(A011820(n))`
-/

namespace A149317.P9824804195225887147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220492 (A011820 n).toNat

end

end A149317.P9824804195225887147

/-!
# A149318: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 0), (0, 0, -1), (0, 1, -1), (1, 0, 1)}.

The programs for A149318, there is no canonical definition to state claims against.
-/

/-! ## A149318.P16733430740853363888

`A007431(A330183(n!))`
-/

namespace A149318.P16733430740853363888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007431 (A330183 (Nat.factorial n)).toNat

end

end A149318.P16733430740853363888

/-! ## A149318.P14501365945521812949

`A077767(A002212(n)*A020654(2*n+3))`
-/

namespace A149318.P14501365945521812949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077767 (A002212 n * A020654 (2 * n + 3)).toNat

end

end A149318.P14501365945521812949

/-!
# A149319: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 0), (0, 1, -1), (1, 0, -1), (1, 0, 1)}.

The programs for A149319, there is no canonical definition to state claims against.
-/

/-! ## A149319.P13214174489909876231

`A149320(n)-A151755(A005638(n))`
-/

namespace A149319.P13214174489909876231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149320 n - A151755 (A005638 n).toNat

end

end A149319.P13214174489909876231

/-! ## A149319.P12488744796532488436

`A074449(n+2)-A048141(A038664(n+1))`
-/

namespace A149319.P12488744796532488436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074449 (n + 2) - A048141 (A038664 (n + 1)).toNat

end

end A149319.P12488744796532488436

/-!
# A149320: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 0), (0, 0, -1), (0, 1, -1), (1, 0, 1)}.

The programs for A149320, there is no canonical definition to state claims against.
-/

/-! ## A149320.P1130856870265152441

`A151755(A005638(n))+A149319(n)`
-/

namespace A149320.P1130856870265152441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151755 (A005638 n).toNat + A149319 n

end

end A149320.P1130856870265152441

/-!
# A149321: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 0), (-1, 0, 1), (0, 1, -1), (1, 0, 1)}.

The programs for A149321, there is no canonical definition to state claims against.
-/

/-! ## A149321.P5564353951720270281

`A001031(6^n+2^n)-1`
-/

namespace A149321.P5564353951720270281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001031 (6 ^ n + 2 ^ n) - 1

end

end A149321.P5564353951720270281

/-! ## A149321.P221277274470621231

`A127432(A065097(n))`
-/

namespace A149321.P221277274470621231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127432 (A065097 n).toNat

end

end A149321.P221277274470621231

/-!
# A149322: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 0), (-1, 1, 0), (0, 1, -1), (1, 0, 1)}.

The programs for A149322, there is no canonical definition to state claims against.
-/

/-! ## A149322.P5348639886723537867

`Δ[A204892(A056098(n+3))]`
-/

namespace A149322.P5348639886723537867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204892 (A056098 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A149322.P5348639886723537867

/-! ## A149322.P7962127543973700888

`A385575(a(n-1))+n+1` with `a(0)=1, a(1)=1`
-/

namespace A149322.P7962127543973700888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A385575 (a (n - 1)).toNat + (n + 1 : ℤ)

end

end A149322.P7962127543973700888

/-!
# A149323: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, 0), (0, 0, -1), (0, 1, -1), (1, 0, 1)}.

The programs for A149323, there is no canonical definition to state claims against.
-/

/-! ## A149323.P8838078405919033826

`A066201(A361280(n))`
-/

namespace A149323.P8838078405919033826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066201 (A361280 n).toNat

end

end A149323.P8838078405919033826

/-! ## A149323.P5295639005649638983

`A303936(A149486(n))`
-/

namespace A149323.P5295639005649638983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303936 (A149486 n).toNat

end

end A149323.P5295639005649638983

/-!
# A149324: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 0), (-1, 0, 1), (0, -1, 0), (0, 0, -1), (1, 1, 0)}.

The programs for A149324, there is no canonical definition to state claims against.
-/

/-! ## A149324.P2259995091576427858

`A156562(or(1, A272687(n)))`
-/

namespace A149324.P2259995091576427858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156562 (Int.lor 1 (A272687 n)).toNat

end

end A149324.P2259995091576427858

/-! ## A149324.P15082522174152508509

`A175413(A320355(comp[2*(n+1)]))`
-/

namespace A149324.P15082522174152508509
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175413 (A320355 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)).toNat

end

end A149324.P15082522174152508509

/-!
# A149325: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 0), (-1, 0, 1), (0, 1, -1), (1, 0, 1)}.

The programs for A149325, there is no canonical definition to state claims against.
-/

/-! ## A149325.P11640968219263073663

`A117910(xor(6, A184937(n)))`
-/

namespace A149325.P11640968219263073663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117910 (Int.xor 6 (A184937 n)).toNat

end

end A149325.P11640968219263073663

/-! ## A149325.P6956539905078881768

`A161208(A102726(n))+A082458(n)`
-/

namespace A149325.P6956539905078881768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161208 (A102726 n).toNat + A082458 n

end

end A149325.P6956539905078881768

/-! ## A149325.P3400192532988074294

`A161208(A188900(n)%(A061742(n)+1))+A082458(n)`
-/

namespace A149325.P3400192532988074294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161208 (Int.tmod (A188900 n) (A061742 n + 1)).toNat + A082458 n

end

end A149325.P3400192532988074294

/-!
# A149326: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 0), (-1, 0, 1), (0, -1, 0), (0, 1, -1), (1, 1, 0)}.

The programs for A149326, there is no canonical definition to state claims against.
-/

/-! ## A149326.P4699878956163786520

`A209657(n)+A160124(A017991(n))`
-/

namespace A149326.P4699878956163786520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209657 n + A160124 (A017991 n).toNat

end

end A149326.P4699878956163786520

/-! ## A149326.P6364873806767048056

`A070868(or(A004526(n), A191684(n)))`
-/

namespace A149326.P6364873806767048056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070868 (Int.lor (A004526 n) (A191684 n)).toNat

end

end A149326.P6364873806767048056

/-! ## A149326.P17687449308296288835

`or(A067169(A194432(n)), A149325(n))`
-/

namespace A149326.P17687449308296288835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A067169 ((A194432 n).toNat + 11)) (A149325 n)

end

end A149326.P17687449308296288835

/-!
# A149327: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 0), (-1, 1, 0), (0, 1, -1), (1, 0, 1)}.

The programs for A149327, there is no canonical definition to state claims against.
-/

/-! ## A149327.P12516597977669257658

`A149336(n)-A216599(A149288(n))`
-/

namespace A149327.P12516597977669257658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149336 n - A216599 (A149288 n).toNat

end

end A149327.P12516597977669257658

/-! ## A149327.P13410782772777290201

`A103530(A193454(n+1)+A100217(n))`
-/

namespace A149327.P13410782772777290201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103530 (A193454 (n + 1) + A100217 n).toNat

end

end A149327.P13410782772777290201

/-!
# A149328: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 0), (0, 1, -1), (1, 0, -1), (1, 0, 1)}.

The programs for A149328, there is no canonical definition to state claims against.
-/

/-! ## A149328.P12675038930825353724

`A081753(7*A150091(n))`
-/

namespace A149328.P12675038930825353724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081753 (7 * A150091 n).toNat

end

end A149328.P12675038930825353724

/-! ## A149328.P54254400977511049

`A180717(n)+A001221(A196560(n))`
-/

namespace A149328.P54254400977511049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180717 n + A001221 (A196560 n).toNat

end

end A149328.P54254400977511049

/-! ## A149328.P10086158390653339408

`A302242(A136221(n))+A002212(n)`
-/

namespace A149328.P10086158390653339408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302242 (A136221 n).toNat + A002212 n

end

end A149328.P10086158390653339408

/-!
# A149329: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 1), (-1, 1, 0), (0, 1, -1), (1, 0, 1)}.

The programs for A149329, there is no canonical definition to state claims against.
-/

/-! ## A149329.P4123306830563262359

`A372317(A149330(n))`
-/

namespace A149329.P4123306830563262359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372317 (A149330 n).toNat

end

end A149329.P4123306830563262359

/-! ## A149329.P678588737321040315

`A110090(n)+A103627(A155116(n))`
-/

namespace A149329.P678588737321040315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110090 n + A103627 (A155116 n).toNat

end

end A149329.P678588737321040315

/-! ## A149329.P8126237879823649074

`A149330(n)-A025441(A123746(n))`
-/

namespace A149329.P8126237879823649074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149330 n - A025441 (A123746 n).toNat

end

end A149329.P8126237879823649074

/-! ## A149329.P14031864866400023139

`A149330(n)-A022883(A149389(n))`
-/

namespace A149329.P14031864866400023139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149330 n - A022883 (A149389 n).toNat

end

end A149329.P14031864866400023139

/-!
# A149330: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 0), (-1, 1, 1), (0, 1, -1), (1, 0, 1)}.

The programs for A149330, there is no canonical definition to state claims against.
-/

/-! ## A149330.P3760477098032818484

`A372317(A149329(n))`
-/

namespace A149330.P3760477098032818484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372317 (A149329 n).toNat

end

end A149330.P3760477098032818484

/-! ## A149330.P4295331133510480045

`A149329(n)+A025441(A123746(n))`
-/

namespace A149330.P4295331133510480045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149329 n + A025441 (A123746 n).toNat

end

end A149330.P4295331133510480045

/-! ## A149330.P6159668762200960910

`A149329(n)+A022883(A149389(n))`
-/

namespace A149330.P6159668762200960910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149329 n + A022883 (A149389 n).toNat

end

end A149330.P6159668762200960910

/-! ## A149330.P14217347897169128061

`A149329(n)+A022883(A149408(n))`
-/

namespace A149330.P14217347897169128061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149329 n + A022883 (A149408 n).toNat

end

end A149330.P14217347897169128061

/-!
# A149331: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 1, 0), (0, 0, -1), (0, 1, -1), (1, 0, 1)}.

The programs for A149331, there is no canonical definition to state claims against.
-/

/-! ## A149331.P12972607035880210217

`A126258(n)+A008612(A160156(n))`
-/

namespace A149331.P12972607035880210217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126258 n + A008612 (A160156 n).toNat

end

end A149331.P12972607035880210217

/-! ## A149331.P15836744409891941506

`A300300(n)+A134119(A196237(n))`
-/

namespace A149331.P15836744409891941506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300300 n + A134119 (A196237 (n + 19)).toNat

end

end A149331.P15836744409891941506

/-!
# A149332: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 0), (0, -1, 0), (0, 1, -1), (0, 1, 1), (1, 0, -1)}.

The programs for A149332, there is no canonical definition to state claims against.
-/

/-! ## A149332.P11024300400095949557

`A277151(A215492(n))+A149265(n)`
-/

namespace A149332.P11024300400095949557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277151 (A215492 n).toNat + A149265 n

end

end A149332.P11024300400095949557

/-! ## A149332.P1266561889976743003

`A321694(A272144(n))+A149265(n)`
-/

namespace A149332.P1266561889976743003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321694 (A272144 n).toNat + A149265 n

end

end A149332.P1266561889976743003

/-! ## A149332.P6831294235797789791

`A149333(n)-A216599(A149300(n))`
-/

namespace A149332.P6831294235797789791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149333 n - A216599 (A149300 n).toNat

end

end A149332.P6831294235797789791

/-!
# A149333: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 0), (0, 0, -1), (1, 0, 1), (1, 1, -1)}.

The programs for A149333, there is no canonical definition to state claims against.
-/

/-! ## A149333.P14516080967908888047

`A339586(2*(n+2))+A101198(n+2)`
-/

namespace A149333.P14516080967908888047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339586 (2 * (n + 2)) + A101198 (n + 2)

end

end A149333.P14516080967908888047

/-! ## A149333.P10426640819837138049

`A195350(n)+A001222(A218672(n))`
-/

namespace A149333.P10426640819837138049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195350 n + A001222 (A218672 n).toNat

end

end A149333.P10426640819837138049

/-! ## A149333.P8904027728098799690

`A216599(A149300(n))+A149332(n)`
-/

namespace A149333.P8904027728098799690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216599 (A149300 n).toNat + A149332 n

end

end A149333.P8904027728098799690

/-!
# A149334: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 0), (0, -1, 1), (1, -1, 0), (1, 0, -1), (1, 1, 0)}.

The programs for A149334, there is no canonical definition to state claims against.
-/

/-! ## A149334.P6659749501953682499

`A247987(A148945(n))`
-/

namespace A149334.P6659749501953682499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247987 (A148945 n).toNat

end

end A149334.P6659749501953682499

/-! ## A149334.P16091174967425926745

`A230980(lcm(2, A110210(n)))`
-/

namespace A149334.P16091174967425926745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 (Int.lcm 2 (A110210 n))

end

end A149334.P16091174967425926745

/-!
# A149335: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 0), (-1, 1, 1), (0, -1, 0), (0, 0, -1), (1, 0, 1)}.

The programs for A149335, there is no canonical definition to state claims against.
-/

/-! ## A149335.P11072486237370619254

`round(A003059(A001405(2*n+3)+3)²/12)`
-/

namespace A149335.P11072486237370619254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A003059 (A001405 (2 * n + 3) + 3).toNat ^ 2 : ℚ) / 12)

end

end A149335.P11072486237370619254

/-! ## A149335.P6088891145546310060

`A317683(A000351(n))+A001333(n)`
-/

namespace A149335.P6088891145546310060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317683 (A000351 n).toNat + A001333 n

end

end A149335.P6088891145546310060

/-! ## A149335.P15903970010471855329

`A149334(n)+A067169(A301187(n))`
-/

namespace A149335.P15903970010471855329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149334 n + A067169 ((A301187 n).toNat + 11)

end

end A149335.P15903970010471855329

/-!
# A149336: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 0), (-1, 1, 1), (0, -1, 0), (0, 1, -1), (1, 1, 0)}.

The programs for A149336, there is no canonical definition to state claims against.
-/

/-! ## A149336.P9825415739229634855

`A194920(A277287(n))-A065220(n)`
-/

namespace A149336.P9825415739229634855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194920 (A277287 n).toNat - A065220 n

end

end A149336.P9825415739229634855

/-! ## A149336.P1997736727385172322

`A149334(n)+A067169(A001844(n))`
-/

namespace A149336.P1997736727385172322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149334 n + A067169 ((A001844 n).toNat + 11)

end

end A149336.P1997736727385172322

/-! ## A149336.P15692108767894512847

`A275592(n)*A351001(Δ[A097332(n)])`
-/

namespace A149336.P15692108767894512847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097332 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275592 n * A351001 (f1 (n + 1) - f1 n).toNat

end

end A149336.P15692108767894512847

/-!
# A149337: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 1), (-1, 1, 0), (0, 1, -1), (1, 0, 1)}.

The programs for A149337, there is no canonical definition to state claims against.
-/

/-! ## A149337.P10740165602438883052

`A149338(n)-A025465(A149310(n))`
-/

namespace A149337.P10740165602438883052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149338 n - A025465 (A149310 n).toNat

end

end A149337.P10740165602438883052

/-! ## A149337.P15639897354149636920

`A149338(n)-A055029(A183109(n+1))`
-/

namespace A149337.P15639897354149636920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149338 n - A055029 (A183109 (n + 1)).toNat

end

end A149337.P15639897354149636920

/-! ## A149337.P14358136527147487118

`A149338(A073789(n))`
-/

namespace A149337.P14358136527147487118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149338 (A073789 n).toNat

end

end A149337.P14358136527147487118

/-! ## A149337.P12512024451173116639

`A149338(A171644(n))`
-/

namespace A149337.P12512024451173116639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149338 (A171644 n).toNat

end

end A149337.P12512024451173116639

/-!
# A149338: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 0), (-1, 1, 1), (0, 1, -1), (1, 0, 1)}.

The programs for A149338, there is no canonical definition to state claims against.
-/

/-! ## A149338.P2469485286995306778

`A149337(n)+A025465(A149310(n))`
-/

namespace A149338.P2469485286995306778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149337 n + A025465 (A149310 n).toNat

end

end A149338.P2469485286995306778

/-! ## A149338.P4645210437030140683

`or(A061853(A149312(n)), A149337(n))`
-/

namespace A149338.P4645210437030140683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A061853 (A149312 n).toNat) (A149337 n)

end

end A149338.P4645210437030140683

/-! ## A149338.P11938707008922187256

`or(A135481(A149340(n)), A149337(n))`
-/

namespace A149338.P11938707008922187256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A135481 (A149340 n).toNat) (A149337 n)

end

end A149338.P11938707008922187256

/-! ## A149338.P10601591068925155619

`A028310(or(A149337(n), A275768(n)))`
-/

namespace A149338.P10601591068925155619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (Int.lor (A149337 n) (A275768 n)).toNat

end

end A149338.P10601591068925155619

/-!
# A149339: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 0), (-1, 0, 1), (0, -1, 0), (1, 0, -1), (1, 1, 0)}.

The programs for A149339, there is no canonical definition to state claims against.
-/

/-! ## A149339.P11671508638610943842

`A282318(A052913(n))+A005303(n)`
-/

namespace A149339.P11671508638610943842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282318 (A052913 n).toNat + A005303 n

end

end A149339.P11671508638610943842

/-! ## A149339.P4207174289038295511

`A282236(n+1)+A059995(A192465(n+1))`
-/

namespace A149339.P4207174289038295511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282236 (n + 1) + A059995 (A192465 (n + 1)).toNat

end

end A149339.P4207174289038295511

/-! ## A149339.P6153467116453463371

`A148937(n)+A008617(A001045(2*n+1))`
-/

namespace A149339.P6153467116453463371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148937 n + A008617 (A001045 (2 * n + 1)).toNat

end

end A149339.P6153467116453463371

/-!
# A149340: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 0), (-1, 0, 1), (0, -1, 0), (1, 1, -1), (1, 1, 0)}.

The programs for A149340, there is no canonical definition to state claims against.
-/

/-! ## A149340.P7127841773303787510

`A300974(n)+A061395(n^n)`
-/

namespace A149340.P7127841773303787510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300974 n + A061395 (n ^ n)

end

end A149340.P7127841773303787510

/-! ## A149340.P2132263620715703515

`A265569(A001465(n))+A137953(n)`
-/

namespace A149340.P2132263620715703515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265569 (A001465 n).toNat + A137953 n

end

end A149340.P2132263620715703515

/-! ## A149340.P5210038072424863531

`A300974(n)+A001222(A179471(n))`
-/

namespace A149340.P5210038072424863531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300974 n + A001222 (A179471 n).toNat

end

end A149340.P5210038072424863531

/-!
# A149341: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 1), (-1, 1, 1), (0, 1, -1), (1, 0, 1)}.

The programs for A149341, there is no canonical definition to state claims against.
-/

/-! ## A149341.P11217609943855188690

`A110656(3^(n-1)*C(n, 2)+∑[(n+2)*2^n]-1)`
-/

namespace A149341.P11217609943855188690
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 2) * 2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110656 (SequenceMachineLib.roundAway ((3 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (Nat.choose n 2 : ℚ) + (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1 : ℚ))).toNat

end

end A149341.P11217609943855188690

/-! ## A149341.P4696511891043749501

`A162371(A121654(n))`
-/

namespace A149341.P4696511891043749501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162371 (A121654 n).toNat

end

end A149341.P4696511891043749501

/-! ## A149341.P16553547953888439085

`A121654(n)-A328342(2^n-1)`
-/

namespace A149341.P16553547953888439085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121654 n - A328342 (2 ^ n - 1)

end

end A149341.P16553547953888439085

/-!
# A149342: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, 0), (-1, 1, 1), (0, 1, -1), (1, 0, 1)}.

The programs for A149342, there is no canonical definition to state claims against.
-/

/-! ## A149342.P17901673267813521629

`A103221(A189737(n+1)+floor(3^(n/3)))`
-/

namespace A149342.P17901673267813521629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 (A189737 (n + 1) + ⌊(3 : ℝ) ^ ((n : ℚ) / 3 : ℝ)⌋).toNat

end

end A149342.P17901673267813521629

/-! ## A149342.P13892956916037128291

`A066657(n)+A008615(A189737(n+1))`
-/

namespace A149342.P13892956916037128291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n + A008615 (A189737 (n + 1)).toNat

end

end A149342.P13892956916037128291

/-! ## A149342.P5551858653183403918

`A008615(A326577(n+1)+A189737(n+1))`
-/

namespace A149342.P5551858653183403918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (A326577 (n + 1) + A189737 (n + 1)).toNat

end

end A149342.P5551858653183403918

/-!
# A149343: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, 0), (0, 1, -1), (1, 0, -1), (1, 0, 1)}.

The programs for A149343, there is no canonical definition to state claims against.
-/

/-! ## A149343.P15044819496055194024

`A042948(A332990(n!))`
-/

namespace A149343.P15044819496055194024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042948 (A332990 (Nat.factorial n)).toNat

end

end A149343.P15044819496055194024

/-! ## A149343.P7544678991188017458

`A247983(A149354(n)+n)`
-/

namespace A149343.P7544678991188017458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247983 (A149354 n + (n : ℤ)).toNat

end

end A149343.P7544678991188017458

/-! ## A149343.P6379628296158706519

`A054981(n)-A090881(n+1)`
-/

namespace A149343.P6379628296158706519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054981 n - A090881 (n + 1)

end

end A149343.P6379628296158706519

/-!
# A149344: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 0), (1, 0, -1), (1, 0, 1), (1, 1, -1)}.

The programs for A149344, there is no canonical definition to state claims against.
-/

/-! ## A149344.P7852905802263100904

`2*A172154(a(n-2)+2^(n-2))` with `a(0)=1, a(1)=1`
-/

namespace A149344.P7852905802263100904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  2 * A172154 (SequenceMachineLib.roundAway ((a (n - 2) : ℚ) + (2 : ℚ) ^ ((n : ℤ) - 2 : ℤ))).toNat

end

end A149344.P7852905802263100904

/-! ## A149344.P919317691435070469

`∑{d}[A108161(A100982(n+1)), #]`
-/

namespace A149344.P919317691435070469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108161 (A100982 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A149344.P919317691435070469

/-! ## A149344.P10125468953540897506

`A241415(2*(n+1))*A376876(A029963(n+1))`
-/

namespace A149344.P10125468953540897506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241415 (2 * (n + 1)) * A376876 (A029963 (n + 1)).toNat

end

end A149344.P10125468953540897506

/-!
# A149345: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 0), (0, -1, 0), (0, 1, -1), (0, 1, 1), (1, 1, -1)}.

The programs for A149345, there is no canonical definition to state claims against.
-/

/-! ## A149345.P16871059727010397608

`A103221(A181294(n))+A007590(n)`
-/

namespace A149345.P16871059727010397608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 (A181294 n).toNat + A007590 n

end

end A149345.P16871059727010397608

/-! ## A149345.P9058815332449195530

`A127757(A150868(n)+A049154(n))`
-/

namespace A149345.P9058815332449195530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127757 (A150868 n + A049154 n).toNat

end

end A149345.P9058815332449195530

/-! ## A149345.P4752097622387214433

`A149347(n)-A084928(A149356(n))`
-/

namespace A149345.P4752097622387214433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149347 n - A084928 (A149356 n).toNat

end

end A149345.P4752097622387214433

/-!
# A149346: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 0), (1, -1, 0), (1, -1, 1), (1, 0, -1), (1, 1, 0)}.

The programs for A149346, there is no canonical definition to state claims against.
-/

/-! ## A149346.P13206342674666669718

`or(A149337(n), A353524(A001077(n)))`
-/

namespace A149346.P13206342674666669718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A149337 n) (A353524 (A001077 n).toNat)

end

end A149346.P13206342674666669718

/-! ## A149346.P16197784654288455500

`A289494(A153294(n)+A026529(n+2))`
-/

namespace A149346.P16197784654288455500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289494 (A153294 n + A026529 (n + 2)).toNat

end

end A149346.P16197784654288455500

/-!
# A149347: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 1), (-1, 1, 1), (0, 1, -1), (1, 0, 1)}.

The programs for A149347, there is no canonical definition to state claims against.
-/

/-! ## A149347.P2310879511237033689

`A076885(∑[∑[A151287(n)]])`
-/

namespace A149347.P2310879511237033689
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151287 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076885 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A149347.P2310879511237033689

/-! ## A149347.P12658964774459304864

`A236862(n)+A091226(A002697(n))`
-/

namespace A149347.P12658964774459304864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236862 n + A091226 (A002697 n).toNat

end

end A149347.P12658964774459304864

/-! ## A149347.P4159837129835587073

`A149345(n)+A084928(A149356(n))`
-/

namespace A149347.P4159837129835587073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149345 n + A084928 (A149356 n).toNat

end

end A149347.P4159837129835587073

/-!
# A149348: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 0), (0, -1, 1), (0, 1, -1), (1, -1, 0), (1, 1, 0)}.

The programs for A149348, there is no canonical definition to state claims against.
-/

/-! ## A149348.P4568619827340470507

`A220658(round(A151095(n)-sqrt(n)))`
-/

namespace A149348.P4568619827340470507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220658 (SequenceMachineLib.roundAway ((A151095 n : ℝ) - Real.sqrt (n : ℝ))).toNat

end

end A149348.P4568619827340470507

/-! ## A149348.P7488348179537041093

`∑[xor(1, A098236(A020988(n)+1))]`
-/

namespace A149348.P7488348179537041093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A098236 (A020988 n + 1).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A149348.P7488348179537041093

/-! ## A149348.P8553050140869644170

`A220658(A151095(n)-gcd(n, ∑[n]))`
-/

namespace A149348.P8553050140869644170
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220658 (A151095 n - (Nat.gcd n (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ)).toNat

end

end A149348.P8553050140869644170

/-!
# A149349: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 0), (0, 0, -1), (1, 0, 1), (1, 1, -1)}.

The programs for A149349, there is no canonical definition to state claims against.
-/

/-! ## A149349.P8458761790269164101

`A148293(n)+A008615(A026671(n))`
-/

namespace A149349.P8458761790269164101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148293 n + A008615 (A026671 n).toNat

end

end A149349.P8458761790269164101

/-! ## A149349.P10039767073585654541

`A149033(n)+A054404(A148490(n))`
-/

namespace A149349.P10039767073585654541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149033 n + A054404 (A148490 n).toNat

end

end A149349.P10039767073585654541

/-!
# A149350: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 1, 0), (-1, 1, 1), (0, 1, -1), (1, 0, 1)}.

The programs for A149350, there is no canonical definition to state claims against.
-/

/-! ## A149350.P258128608331911621

`A008615(A195339(n)+A008486(n))`
-/

namespace A149350.P258128608331911621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (A195339 n + A008486 n).toNat

end

end A149350.P258128608331911621

/-! ## A149350.P13440475875222978797

`A149354(n)-A237049(A144005(n))`
-/

namespace A149350.P13440475875222978797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149354 n - A237049 (A144005 n).toNat

end

end A149350.P13440475875222978797

/-! ## A149350.P8848993935971847350

`A103221(A172025(n)+A003961(n+1))`
-/

namespace A149350.P8848993935971847350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 (A172025 n + A003961 (n + 1)).toNat

end

end A149350.P8848993935971847350

/-!
# A149351: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 0), (0, -1, 1), (1, -1, 0), (1, 1, -1), (1, 1, 0)}.

The programs for A149351, there is no canonical definition to state claims against.
-/

/-! ## A149351.P1842662643451105523

`A194640(A150093(n))`
-/

namespace A149351.P1842662643451105523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194640 (A150093 n).toNat

end

end A149351.P1842662643451105523

/-! ## A149351.P3555696703751748118

`A276040(A356780(n+1))`
-/

namespace A149351.P3555696703751748118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276040 (A356780 (n + 1)).toNat

end

end A149351.P3555696703751748118

/-! ## A149351.P16673506800565419632

`A001511(A000698(n))*A356780(n+1)`
-/

namespace A149351.P16673506800565419632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A000698 n).toNat * A356780 (n + 1)

end

end A149351.P16673506800565419632

/-!
# A149352: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, 0), (0, 0, -1), (1, 0, 1), (1, 1, -1)}.

The programs for A149352, there is no canonical definition to state claims against.
-/

/-! ## A149352.P6591932598477428343

`floor(root(A177650(n+1), 7))`
-/

namespace A149352.P6591932598477428343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A177650 (n + 1) : ℝ) ^ (1 / (7 : ℝ))⌋

end

end A149352.P6591932598477428343

/-! ## A149352.P7842808311230362990

`A174258(A198944(n))`
-/

namespace A149352.P7842808311230362990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174258 (A198944 n).toNat

end

end A149352.P7842808311230362990

/-! ## A149352.P7633151145383280572

`A149051(n)+A001222(A162633(n))`
-/

namespace A149352.P7633151145383280572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149051 n + A001222 (A162633 n).toNat

end

end A149352.P7633151145383280572

/-!
# A149353: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 0), (-1, 1, 1), (0, -1, 0), (1, 0, -1), (1, 1, 0)}.

The programs for A149353, there is no canonical definition to state claims against.
-/

/-! ## A149353.P14208355826081332042

`A110656(A259811(n+1))`
-/

namespace A149353.P14208355826081332042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110656 (A259811 (n + 1)).toNat

end

end A149353.P14208355826081332042

/-! ## A149353.P10982479622853405034

`A008617(A295988(n+1)+(2^(n+1)+3)*2^n-1)`
-/

namespace A149353.P10982479622853405034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008617 (A295988 (n + 1) + (((2 ^ (n + 1) + 3) * 2 ^ n : ℤ) - 1)).toNat

end

end A149353.P10982479622853405034

/-! ## A149353.P16281540755754569004

`A194640(A257838(n)+A005041(n))`
-/

namespace A149353.P16281540755754569004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194640 (A257838 n + A005041 n).toNat

end

end A149353.P16281540755754569004

/-!
# A149354: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 0), (-1, 1, 1), (0, -1, 0), (1, 1, -1), (1, 1, 0)}.

The programs for A149354, there is no canonical definition to state claims against.
-/

/-! ## A149354.P15058119428493807774

`A206587(A049151(n))`
-/

namespace A149354.P15058119428493807774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206587 (A049151 n).toNat

end

end A149354.P15058119428493807774

/-! ## A149354.P11921697267428687540

`A206587(A049176(n+1))`
-/

namespace A149354.P11921697267428687540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206587 (A049176 (n + 1)).toNat

end

end A149354.P11921697267428687540

/-! ## A149354.P16178529204033855100

`A237049(A144005(n))+A149350(n)`
-/

namespace A149354.P16178529204033855100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237049 (A144005 n).toNat + A149350 n

end

end A149354.P16178529204033855100

/-!
# A149355: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 1), (0, 0, -1), (0, 1, -1), (1, 0, 1)}.

The programs for A149355, there is no canonical definition to state claims against.
-/

/-! ## A149355.P2744763891760194969

`floor(sqrt(A124589((n+1)!+2*char[2])))`
-/

namespace A149355.P2744763891760194969
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A124589 (Nat.factorial (n + 1) + 2 * (if ∃ j, f1 j = n then 1 else 0)))

end

end A149355.P2744763891760194969

/-! ## A149355.P6537714872816215886

`A153883(A148644(n))`
-/

namespace A149355.P6537714872816215886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153883 (A148644 n).toNat

end

end A149355.P6537714872816215886

/-!
# A149356: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 0), (-1, 0, 1), (0, -1, 0), (0, 1, -1), (1, 0, 1)}.

The programs for A149356, there is no canonical definition to state claims against.
-/

/-! ## A149356.P5322827915904856793

`∑[A316355(xor(n, n^n))]`
-/

namespace A149356.P5322827915904856793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316355 (Nat.xor n (n ^ n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A149356.P5322827915904856793

/-! ## A149356.P15547167827967778172

`∑[A055086(n^n)-n%2]`
-/

namespace A149356.P15547167827967778172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055086 (n ^ n) - ((n % 2 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A149356.P15547167827967778172

/-!
# A149357: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 1), (0, -1, 1), (0, 0, -1), (1, 1, 0)}.

The programs for A149357, there is no canonical definition to state claims against.
-/

/-! ## A149357.P3565035788356616025

`A127788(A281482(n)+8)`
-/

namespace A149357.P3565035788356616025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127788 (A281482 n + 8).toNat

end

end A149357.P3565035788356616025

/-! ## A149357.P18315881455608336993

`A195174(A018018(n)+A000302(n))`
-/

namespace A149357.P18315881455608336993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195174 (A018018 n + A000302 n).toNat

end

end A149357.P18315881455608336993

/-!
# A149358: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 1, 0), (0, 1, -1), (1, 0, -1), (1, 0, 1)}.

The programs for A149358, there is no canonical definition to state claims against.
-/

/-! ## A149358.P13481590497590142218

`A060384(∑[A352042(3*(n+1))])`
-/

namespace A149358.P13481590497590142218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352042 (3 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060384 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A149358.P13481590497590142218

/-! ## A149358.P12510300199145032188

`A008615(A215109(n)+∑[A026671(n)])`
-/

namespace A149358.P12510300199145032188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026671 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (A215109 n + ∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A149358.P12510300199145032188

/-! ## A149358.P1602829570034167337

`A127757(A332578(2*n)+A003014(n))`
-/

namespace A149358.P1602829570034167337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127757 (A332578 (2 * n) + A003014 n).toNat

end

end A149358.P1602829570034167337

/-!
# A149359: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 0), (-1, 0, 1), (0, 1, -1), (1, -1, 0), (1, 0, 1)}.

The programs for A149359, there is no canonical definition to state claims against.
-/

/-! ## A149359.P1070931758861481034

`A186444(A190733(n+1))`
-/

namespace A149359.P1070931758861481034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186444 (A190733 (n + 1)).toNat

end

end A149359.P1070931758861481034

/-! ## A149359.P5759596971927833779

`A113981(A007581(n))-A005001(n)`
-/

namespace A149359.P5759596971927833779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113981 (A007581 n).toNat - A005001 n

end

end A149359.P5759596971927833779

/-! ## A149359.P8032104932000720818

`A149446(n)-A199920(A113882(n))`
-/

namespace A149359.P8032104932000720818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149446 n - A199920 (A113882 n).toNat

end

end A149359.P8032104932000720818

/-!
# A149360: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 0), (1, 0, -1), (1, 0, 1), (1, 1, -1)}.

The programs for A149360, there is no canonical definition to state claims against.
-/

/-! ## A149360.P1848634858607358542

`A198316(A000081(n))+A005190(n)`
-/

namespace A149360.P1848634858607358542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198316 (A000081 n).toNat + A005190 n

end

end A149360.P1848634858607358542

/-! ## A149360.P9681127634122417332

`or(A005190(n), A068307(A000665(n)))`
-/

namespace A149360.P9681127634122417332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A005190 n) (A068307 (A000665 n).toNat)

end

end A149360.P9681127634122417332

/-! ## A149360.P11192390674940857239

`A233918(A003144(n+1))+A039708(A144316(n+1))`
-/

namespace A149360.P11192390674940857239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233918 (A003144 (n + 1)).toNat + A039708 (A144316 (n + 1)).toNat

end

end A149360.P11192390674940857239

/-!
# A149361: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 0), (-1, 0, 1), (0, -1, 1), (0, 1, -1), (1, 0, 1)}.

The programs for A149361, there is no canonical definition to state claims against.
-/

/-! ## A149361.P5691327467874205973

`A087684(a(n-1))+a(n-1)` with `a(0)=1, a(1)=1, a(2)=4`
-/

namespace A149361.P5691327467874205973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 4] fun n a =>
  A087684 (a (n - 1)).toNat + a (n - 1)

end

end A149361.P5691327467874205973

/-! ## A149361.P4164666493716934498

`A001462(A153397(n))`
-/

namespace A149361.P4164666493716934498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (A153397 n).toNat

end

end A149361.P4164666493716934498

/-!
# A149362: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 0), (0, -1, 1), (1, 0, -1), (1, 0, 1), (1, 1, -1)}.

The programs for A149362, there is no canonical definition to state claims against.
-/

/-! ## A149362.P12291822514028621696

`A008616(4*A241774(n+4))`
-/

namespace A149362.P12291822514028621696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008616 (4 * A241774 (n + 4)).toNat

end

end A149362.P12291822514028621696

/-! ## A149362.P7035369828090830393

`A008676(6*A241774(n+4))`
-/

namespace A149362.P7035369828090830393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008676 (6 * A241774 (n + 4)).toNat

end

end A149362.P7035369828090830393

/-!
# A149363: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 0), (1, -1, 0), (1, -1, 1), (1, 1, -1), (1, 1, 0)}.

The programs for A149363, there is no canonical definition to state claims against.
-/

/-! ## A149363.P2292157922114961168

`A276214(A213092(n+1))`
-/

namespace A149363.P2292157922114961168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276214 (A213092 (n + 1)).toNat

end

end A149363.P2292157922114961168

/-! ## A149363.P10219694424750051695

`A108954(or(A028387(n), A353965(n)))`
-/

namespace A149363.P10219694424750051695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108954 (Int.lor (A028387 n) (A353965 n)).toNat

end

end A149363.P10219694424750051695

/-!
# A149364: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 1, 0), (0, 0, -1), (1, 0, 1), (1, 1, -1)}.

The programs for A149364, there is no canonical definition to state claims against.
-/

/-! ## A149364.P13238004309389923034

`A149288(n)+A124760(A000262(n))`
-/

namespace A149364.P13238004309389923034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149288 n + A124760 (A000262 n).toNat

end

end A149364.P13238004309389923034

/-! ## A149364.P1445145233485614260

`A325102(A001006(n))+A069727(n)`
-/

namespace A149364.P1445145233485614260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325102 (A001006 n).toNat + A069727 n

end

end A149364.P1445145233485614260

/-! ## A149364.P16095720555148631968

`A151432(n)-A143143(A151432(n))`
-/

namespace A149364.P16095720555148631968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151432 n - A143143 (A151432 n).toNat

end

end A149364.P16095720555148631968

/-!
# A149365: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 0), (-1, 0, 1), (0, 1, -1), (1, -1, 1), (1, 0, 1)}.

The programs for A149365, there is no canonical definition to state claims against.
-/

/-! ## A149365.P1924918859746235001

`A254667(A024311(n+1))+A148316(n)`
-/

namespace A149365.P1924918859746235001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254667 (A024311 (n + 1)).toNat + A148316 n

end

end A149365.P1924918859746235001

/-! ## A149365.P1880297316709123222

`A256502(A061396(n+1))`
-/

namespace A149365.P1880297316709123222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256502 (A061396 (n + 1)).toNat

end

end A149365.P1880297316709123222

/-! ## A149365.P11113893291839933042

`A256502(A192497(n+1))`
-/

namespace A149365.P11113893291839933042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256502 (A192497 (n + 1)).toNat

end

end A149365.P11113893291839933042

/-!
# A149366: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 1), (0, 0, -1), (0, 1, -1), (1, 0, 1)}.

The programs for A149366, there is no canonical definition to state claims against.
-/

/-! ## A149366.P10418375987017271777

`A176253(A332835(n))*A316475(n+1)`
-/

namespace A149366.P10418375987017271777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176253 (A332835 n).toNat * A316475 (n + 1)

end

end A149366.P10418375987017271777

/-! ## A149366.P16163721580222281260

`A074712(ceil(10^n/9)-n)`
-/

namespace A149366.P16163721580222281260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074712 (⌈(10 ^ n : ℚ) / 9⌉ - (n : ℤ)).toNat

end

end A149366.P16163721580222281260

/-!
# A149367: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, 1), (0, 0, -1), (0, 1, -1), (1, 0, 1)}.

The programs for A149367, there is no canonical definition to state claims against.
-/

/-! ## A149367.P16137141353293416755

`A149371(n)-A000035(A011812(n))`
-/

namespace A149367.P16137141353293416755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149371 n - A000035 (A011812 n).toNat

end

end A149367.P16137141353293416755

/-! ## A149367.P2211255800233959708

`A149371(n)-A033665(A084640(n))`
-/

namespace A149367.P2211255800233959708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149371 n - A033665 (A084640 n).toNat

end

end A149367.P2211255800233959708

/-! ## A149367.P18038617936040634844

`A149371(n)-A064990(A249078(n))`
-/

namespace A149367.P18038617936040634844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149371 n - A064990 (A249078 n).toNat

end

end A149367.P18038617936040634844

/-!
# A149368: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 1), (0, 1, -1), (1, 0, -1), (1, 0, 1)}.

The programs for A149368, there is no canonical definition to state claims against.
-/

/-! ## A149368.P6978471007151716780

`A214701(A149372(n))`
-/

namespace A149368.P6978471007151716780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214701 (A149372 n).toNat

end

end A149368.P6978471007151716780

/-! ## A149368.P2614353472314855815

`A148975(n)+A008647(A150866(n))`
-/

namespace A149368.P2614353472314855815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148975 n + A008647 (A150866 n).toNat

end

end A149368.P2614353472314855815

/-! ## A149368.P7731794211320305749

`A149226(n)+A127952(A127942(n+1))`
-/

namespace A149368.P7731794211320305749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149226 n + A127952 (A127942 (n + 1)).toNat

end

end A149368.P7731794211320305749

/-!
# A149369: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 1), (0, 0, -1), (1, -1, 1), (1, 1, 0)}.

The programs for A149369, there is no canonical definition to state claims against.
-/

/-! ## A149369.P8105879607155056562

`A039708(A150201(n)-n)`
-/

namespace A149369.P8105879607155056562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039708 (A150201 n - (n : ℤ)).toNat

end

end A149369.P8105879607155056562

/-! ## A149369.P3674312711365697872

`A138997(A083424(n)+A004721(n))`
-/

namespace A149369.P3674312711365697872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138997 (A083424 n + A004721 n).toNat

end

end A149369.P3674312711365697872

/-!
# A149370: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 0), (-1, 0, 1), (0, 0, -1), (1, -1, 0), (1, 1, 0)}.

The programs for A149370, there is no canonical definition to state claims against.
-/

/-! ## A149370.P4515069430133322761

`ceil(log2(sinh(A330464(n))))`
-/

namespace A149370.P4515069430133322761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (Real.sinh (A330464 n : ℝ))⌉

end

end A149370.P4515069430133322761

/-! ## A149370.P17640279748651283424

`A125667(a(n-1)-ceil(-a(n-2)))+1` with `a(0)=1, a(1)=1`

`ceil` is left out, it is the identity on integers.
-/

namespace A149370.P17640279748651283424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A125667 (a (n - 1) - (-a (n - 2))).toNat + 1

end

end A149370.P17640279748651283424

/-!
# A149371: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, 0), (1, 0, -1), (1, 0, 1), (1, 1, -1)}.

The programs for A149371, there is no canonical definition to state claims against.
-/

/-! ## A149371.P10228655200447822354

`A149367(n)+A000035(A011812(n))`
-/

namespace A149371.P10228655200447822354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149367 n + A000035 (A011812 n).toNat

end

end A149371.P10228655200447822354

/-! ## A149371.P14360567179175305468

`A149367(n)+A033665(A084640(n))`
-/

namespace A149371.P14360567179175305468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149367 n + A033665 (A084640 n).toNat

end

end A149371.P14360567179175305468

/-! ## A149371.P15053405038163440542

`A149367(n)+A119346(A119385(n))`
-/

namespace A149371.P15053405038163440542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149367 n + A119346 (A119385 n).toNat

end

end A149371.P15053405038163440542

/-!
# A149372: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 0), (-1, 0, 1), (0, 1, -1), (1, -1, 0), (1, 1, 0)}.

The programs for A149372, there is no canonical definition to state claims against.
-/

/-! ## A149372.P10027121332143909526

`A059995(11*A149274(n))`
-/

namespace A149372.P10027121332143909526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059995 (11 * A149274 n).toNat

end

end A149372.P10027121332143909526

/-! ## A149372.P10604390416664305321

`A079930(a(n-1))+gcd(8, n)+1` with `a(0)=1, a(1)=1`
-/

namespace A149372.P10604390416664305321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A079930 (a (n - 1)).toNat + (Nat.gcd 8 n : ℤ) + 1

end

end A149372.P10604390416664305321

/-!
# A149373: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 1), (0, -1, 1), (0, 1, -1), (1, 1, 0)}.

The programs for A149373, there is no canonical definition to state claims against.
-/

/-! ## A149373.P6757362561260632748

`A099802(A241345(n+1)-A003056(n))`
-/

namespace A149373.P6757362561260632748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099802 (A241345 (n + 1) - A003056 n).toNat

end

end A149373.P6757362561260632748

/-! ## A149373.P7821486656586224347

`A099802(A241345(n+1)-A003986(n))`
-/

namespace A149373.P7821486656586224347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099802 (A241345 (n + 1) - A003986 n).toNat

end

end A149373.P7821486656586224347

/-!
# A149374: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 1, 1), (0, 0, -1), (0, 1, -1), (1, 0, 1)}.

The programs for A149374, there is no canonical definition to state claims against.
-/

/-! ## A149374.P16762813960616689589

`A328970(a(n-1)+1)` with `a(0)=1, a(1)=1, a(2)=4`
-/

namespace A149374.P16762813960616689589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 4] fun n a =>
  A328970 (a (n - 1) + 1).toNat

end

end A149374.P16762813960616689589

/-! ## A149374.P1739221343165501409

`A001055(∏[C(2, ∑{e}[n+1, #])!+n])`
-/

namespace A149374.P1739221343165501409
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (Nat.choose 2 (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p)) + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001055 (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A149374.P1739221343165501409

/-!
# A149375: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 1), (0, 1, -1), (1, 0, -1), (1, 0, 1)}.

The programs for A149375, there is no canonical definition to state claims against.
-/

/-! ## A149375.P10817385014637107662

`∑[A143753(a(n-1)+1-val(n+1, 2))]` with `a(0)=1, a(1)=0`
-/

namespace A149375.P10817385014637107662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n f1 =>
  A143753 (f1 (n - 1) + (1 - (SequenceMachineLib.valuation (n + 1) 2 : ℤ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A149375.P10817385014637107662

/-! ## A149375.P17430006050792480387

`A098019(A114296(n))`
-/

namespace A149375.P17430006050792480387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098019 (A114296 n).toNat

end

end A149375.P17430006050792480387

/-!
# A149376: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 0), (-1, 0, 1), (1, -1, 0), (1, 0, -1), (1, 1, 0)}.

The programs for A149376, there is no canonical definition to state claims against.
-/

/-! ## A149376.P3745450043924284023

`A051953(3*A177523(n))`
-/

namespace A149376.P3745450043924284023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051953 (3 * A177523 n).toNat

end

end A149376.P3745450043924284023

/-! ## A149376.P217118959522372948

`A319700(6*A177523(n))`
-/

namespace A149376.P217118959522372948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319700 (6 * A177523 n).toNat

end

end A149376.P217118959522372948

/-! ## A149376.P9157998783928151851

`A149298(n)+A001842(A218940(n))`
-/

namespace A149376.P9157998783928151851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149298 n + A001842 (A218940 n).toNat

end

end A149376.P9157998783928151851

/-!
# A149377: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 0), (-1, 0, 1), (1, -1, 0), (1, 1, -1), (1, 1, 0)}.

The programs for A149377, there is no canonical definition to state claims against.
-/

/-! ## A149377.P13916273844109954802

`A079775(a(n-1)²)` with `a(0)=1, a(1)=1`
-/

namespace A149377.P13916273844109954802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A079775 (a (n - 1) ^ 2).toNat

end

end A149377.P13916273844109954802

/-! ## A149377.P6755436970128808510

`A325763(2^n-round(sqrt(n)))`
-/

namespace A149377.P6755436970128808510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325763 ((2 ^ n : ℤ) - SequenceMachineLib.roundAway (Real.sqrt (n : ℝ))).toNat

end

end A149377.P6755436970128808510

/-!
# A149378: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 1), (0, 0, -1), (1, 0, 1), (1, 1, -1)}.

The programs for A149378, there is no canonical definition to state claims against.
-/

/-! ## A149378.P14352272179538723992

`A161764(A149379(n))`
-/

namespace A149378.P14352272179538723992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161764 (A149379 n).toNat

end

end A149378.P14352272179538723992

/-! ## A149378.P3996541883263259034

`A149379(n)-A348326(A330743(n))`
-/

namespace A149378.P3996541883263259034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149379 n - A348326 (A330743 n).toNat

end

end A149378.P3996541883263259034

/-! ## A149378.P6739007510462159586

`A028310(and(A149379(n), A149463(n)))`
-/

namespace A149378.P6739007510462159586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (Int.land (A149379 n) (A149463 n)).toNat

end

end A149378.P6739007510462159586

/-! ## A149378.P9798989200305275109

`and(A149379(n), A222254(A149390(n)))`
-/

namespace A149378.P9798989200305275109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A149379 n) (A222254 (A149390 n).toNat)

end

end A149378.P9798989200305275109

/-!
# A149379: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 0), (0, -1, 1), (0, 1, -1), (0, 1, 1), (1, -1, 0)}.

The programs for A149379, there is no canonical definition to state claims against.
-/

/-! ## A149379.P4069738384098806044

`A277007(A149363(n))+A149378(n)`
-/

namespace A149379.P4069738384098806044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277007 (A149363 n).toNat + A149378 n

end

end A149379.P4069738384098806044

/-! ## A149379.P9826744188086462071

`A348326(A330743(n))+A149378(n)`
-/

namespace A149379.P9826744188086462071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348326 (A330743 n).toNat + A149378 n

end

end A149379.P9826744188086462071

/-! ## A149379.P7852449524559851274

`A149378(n)+A067169(A067153(n+7))`
-/

namespace A149379.P7852449524559851274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149378 n + A067169 ((A067153 (n + 7)).toNat + 11)

end

end A149379.P7852449524559851274

/-! ## A149379.P6109339807019083293

`A149378(n)+A067169(A067154(2*n+7))`
-/

namespace A149379.P6109339807019083293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149378 n + A067169 ((A067154 (2 * n + 7)).toNat + 11)

end

end A149379.P6109339807019083293

/-!
# A149380: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 1), (-1, 1, 0), (0, -1, 1), (1, 0, -1), (1, 0, 1)}.

The programs for A149380, there is no canonical definition to state claims against.
-/

/-! ## A149380.P2114436078943963750

`A028310(n*A348582(A052691(n)))`
-/

namespace A149380.P2114436078943963750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 ((n : ℤ) * A348582 (A052691 n).toNat).toNat

end

end A149380.P2114436078943963750

/-! ## A149380.P1984494507280213358

`A316114(A001979(n))`
-/

namespace A149380.P1984494507280213358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316114 (A001979 n).toNat

end

end A149380.P1984494507280213358

/-!
# A149381: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 1, 0), (1, 0, -1), (1, 0, 1), (1, 1, -1)}.

The programs for A149381, there is no canonical definition to state claims against.
-/

/-! ## A149381.P8185380428703154988

`A149384(n)-A065744(A316981(n))`
-/

namespace A149381.P8185380428703154988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149384 n - A065744 (A316981 n).toNat

end

end A149381.P8185380428703154988

/-! ## A149381.P354589263610483355

`A196393(A283877(n))*A344614(n)`
-/

namespace A149381.P354589263610483355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196393 (A283877 n).toNat * A344614 n

end

end A149381.P354589263610483355

/-! ## A149381.P451638107161032654

`A149384(A004912(n+1))-A309519(n)`
-/

namespace A149381.P451638107161032654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149384 (A004912 (n + 1)).toNat - A309519 n

end

end A149381.P451638107161032654

/-!
# A149382: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 0), (-1, 1, 1), (0, -1, 0), (1, 0, -1), (1, 0, 1)}.

The programs for A149382, there is no canonical definition to state claims against.
-/

/-! ## A149382.P17130555777085255456

`A151441(n)+A118135(A110110(n))`
-/

namespace A149382.P17130555777085255456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151441 n + A118135 (A110110 n).toNat

end

end A149382.P17130555777085255456

/-! ## A149382.P12243083930849546296

`A149480(n)-A054899(A047781(n))`
-/

namespace A149382.P12243083930849546296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149480 n - A054899 (A047781 n).toNat

end

end A149382.P12243083930849546296

/-! ## A149382.P15250149858709207558

`A149476(n)-A054899(A050146(n))`
-/

namespace A149382.P15250149858709207558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149476 n - A054899 (A050146 n).toNat

end

end A149382.P15250149858709207558

/-!
# A149383: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 0), (-1, 1, 1), (0, -1, 1), (1, 0, -1), (1, 0, 1)}.

The programs for A149383, there is no canonical definition to state claims against.
-/

/-! ## A149383.P16014600174612698972

`A308823(n)+A228354(A000219(n))`
-/

namespace A149383.P16014600174612698972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308823 n + A228354 (A000219 n).toNat

end

end A149383.P16014600174612698972

/-! ## A149383.P11967016768576491392

`or(A126209(n), A228354(A000219(n)))`
-/

namespace A149383.P11967016768576491392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A126209 n) (A228354 (A000219 n).toNat)

end

end A149383.P11967016768576491392

/-! ## A149383.P14756287187016696897

`or(A169975(n), A228354(A000219(n)))`
-/

namespace A149383.P14756287187016696897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A169975 n) (A228354 (A000219 n).toNat)

end

end A149383.P14756287187016696897

/-!
# A149384: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 1), (1, -1, 1), (1, 0, -1), (1, 1, 0)}.

The programs for A149384, there is no canonical definition to state claims against.
-/

/-! ## A149384.P6435274920956985146

`A149381(n)+A065744(A316981(n))`
-/

namespace A149384.P6435274920956985146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149381 n + A065744 (A316981 n).toNat

end

end A149384.P6435274920956985146

/-! ## A149384.P15907980626418085137

`A309519(A004912(n+1))+A149381(n)`
-/

namespace A149384.P15907980626418085137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309519 (A004912 (n + 1)).toNat + A149381 n

end

end A149384.P15907980626418085137

/-! ## A149384.P4626551395996516351

`A149381(n)-(A065744(n)-A065744(A316981(n)))`
-/

namespace A149384.P4626551395996516351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149381 n - (A065744 n - A065744 (A316981 n).toNat)

end

end A149384.P4626551395996516351

/-!
# A149385: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 1), (0, 1, -1), (1, -1, 1), (1, 1, 0)}.

The programs for A149385, there is no canonical definition to state claims against.
-/

/-! ## A149385.P5905529764325368293

`A008611(A202834(n)+A000265(n+1))`
-/

namespace A149385.P5905529764325368293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (A202834 n + A000265 (n + 1)).toNat

end

end A149385.P5905529764325368293

/-! ## A149385.P10126409329630479987

`A008611(A202834(n)+n-A008611(n))`
-/

namespace A149385.P10126409329630479987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (A202834 n + ((n : ℤ) - A008611 n)).toNat

end

end A149385.P10126409329630479987

/-! ## A149385.P13523471127294820762

`A008611(n-(A008611(n)-A202834(n)))`
-/

namespace A149385.P13523471127294820762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 ((n : ℤ) - (A008611 n - A202834 n)).toNat

end

end A149385.P13523471127294820762

/-!
# A149386: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, 1), (0, 1, -1), (1, 0, -1), (1, 0, 1)}.

The programs for A149386, there is no canonical definition to state claims against.
-/

/-! ## A149386.P8812732052951287002

`A156562(A149621(n))`
-/

namespace A149386.P8812732052951287002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156562 (A149621 n).toNat

end

end A149386.P8812732052951287002

/-! ## A149386.P14969678245650755559

`A172000(A114296(n))-1`
-/

namespace A149386.P14969678245650755559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172000 (A114296 n).toNat - 1

end

end A149386.P14969678245650755559

/-!
# A149387: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 1, 1), (0, 0, -1), (1, -1, 1), (1, 1, 0)}.

The programs for A149387, there is no canonical definition to state claims against.
-/

/-! ## A149387.P9737442250794573958

`A251607(2^n)+∏{p}[n+1, #-1]*∏{e}[n+1, #]`
-/

namespace A149387.P9737442250794573958
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251607 (2 ^ n) + (∏ p ∈ Nat.primeFactors (f1 n), ((p : ℤ) - 1)) * ((∏ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p : ℕ) : ℤ)

end

end A149387.P9737442250794573958

/-! ## A149387.P14587322619484243032

`A087805(A148670(n))`
-/

namespace A149387.P14587322619484243032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087805 (A148670 n).toNat

end

end A149387.P14587322619484243032

/-!
# A149388: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 1), (0, 0, -1), (1, 0, 1), (1, 1, -1)}.

The programs for A149388, there is no canonical definition to state claims against.
-/

/-! ## A149388.P2623939594437400757

`A149389(n)-A037800(n!)`
-/

namespace A149388.P2623939594437400757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149389 n - A037800 (Nat.factorial n)

end

end A149388.P2623939594437400757

/-! ## A149388.P11964780222832753224

`A149389(n)-A037800(A000142(n))`
-/

namespace A149388.P11964780222832753224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149389 n - A037800 (A000142 n).toNat

end

end A149388.P11964780222832753224

/-! ## A149388.P15625697026311265575

`A149389(n)-A022883(A149389(n+1))`
-/

namespace A149388.P15625697026311265575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149389 n - A022883 (A149389 (n + 1)).toNat

end

end A149388.P15625697026311265575

/-!
# A149389: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 1), (-1, 1, 0), (1, -1, 0), (1, 0, -1), (1, 0, 1)}.

The programs for A149389, there is no canonical definition to state claims against.
-/

/-! ## A149389.P15424463567021147007

`A149388(n)+A037800(A000142(n))`
-/

namespace A149389.P15424463567021147007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149388 n + A037800 (A000142 n).toNat

end

end A149389.P15424463567021147007

/-! ## A149389.P1906335169640400461

`A014684(A151851(n)+A149388(n))`
-/

namespace A149389.P1906335169640400461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014684 (A151851 n + A149388 n).toNat

end

end A149389.P1906335169640400461

/-! ## A149389.P17628147784605861310

`A149388(n)+A083896(A149438(n))`
-/

namespace A149389.P17628147784605861310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149388 n + A083896 (A149438 n).toNat

end

end A149389.P17628147784605861310

/-! ## A149389.P3009330711534119031

`A014684(or(A149388(n), A151851(n)))`
-/

namespace A149389.P3009330711534119031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014684 (Int.lor (A149388 n) (A151851 n)).toNat

end

end A149389.P3009330711534119031

/-!
# A149390: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 1), (1, 0, -1), (1, 0, 1), (1, 1, -1)}.

The programs for A149390, there is no canonical definition to state claims against.
-/

/-! ## A149390.P17592443641015973986

`C(n!, (2^n-1)*(2^n-2)/6)+3^n-∑[2^n]`
-/

namespace A149390.P17592443641015973986
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (Nat.factorial n) (SequenceMachineLib.roundAway (((2 ^ n : ℤ) - 1 : ℚ) * (((2 ^ n : ℤ) - 2 : ℚ) / 6))).toNat : ℤ) + ((3 ^ n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ))

end

end A149390.P17592443641015973986

/-! ## A149390.P1123879532363584828

`A325404(7*floor((n/2)²))`
-/

namespace A149390.P1123879532363584828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325404 (7 * ⌊((n : ℚ) / 2) ^ 2⌋).toNat

end

end A149390.P1123879532363584828

/-!
# A149392: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 0), (-1, 1, 1), (1, -1, 0), (1, 0, -1), (1, 0, 1)}.

The programs for A149392, there is no canonical definition to state claims against.
-/

/-! ## A149392.P640544788860713542

`and(A149393(A004912(n+1)), A149401(n))`
-/

namespace A149392.P640544788860713542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A149393 (A004912 (n + 1)).toNat) (A149401 n)

end

end A149392.P640544788860713542

/-!
# A149393: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 0), (-1, 1, 1), (1, -1, 0), (1, 1, -1), (1, 1, 0)}.

The programs for A149393, there is no canonical definition to state claims against.
-/

/-! ## A149393.P10631571851308292

`A149457(n)-A332442(A087949(n))`
-/

namespace A149393.P10631571851308292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149457 n - A332442 (A087949 n).toNat

end

end A149393.P10631571851308292

/-!
# A149394: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 0), (0, -1, 1), (0, 1, -1), (0, 1, 1), (1, -1, 1)}.

The programs for A149394, there is no canonical definition to state claims against.
-/

/-! ## A149394.P5765101372769057412

`A149395(n)-A025459(A153992(n))`
-/

namespace A149394.P5765101372769057412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149395 n - A025459 (A153992 n).toNat

end

end A149394.P5765101372769057412

/-! ## A149394.P6392422719243551378

`A149395(A001096(n))`
-/

namespace A149394.P6392422719243551378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149395 (A001096 n).toNat

end

end A149394.P6392422719243551378

/-!
# A149395: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 1), (-1, 1, 1), (0, -1, 1), (1, 0, -1), (1, 0, 1)}.

The programs for A149395, there is no canonical definition to state claims against.
-/

/-! ## A149395.P5948850285978075367

`A149394(n)+A025459(A153992(n))`
-/

namespace A149395.P5948850285978075367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149394 n + A025459 (A153992 n).toNat

end

end A149395.P5948850285978075367

/-! ## A149395.P3230692060807426029

`A025459(A153992(n))-(A097601(n)-A149394(n))`
-/

namespace A149395.P3230692060807426029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025459 (A153992 n).toNat - (A097601 n - A149394 n)

end

end A149395.P3230692060807426029

/-!
# A149396: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, 1), (0, 0, -1), (1, 0, 1), (1, 1, -1)}.

The programs for A149396, there is no canonical definition to state claims against.
-/

/-! ## A149396.P1259221404556451900

`A177431(2^n-∑{e}[n+1, #])-char[4]`
-/

namespace A149396.P1259221404556451900
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177431 (2 ^ n - ∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p) - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A149396.P1259221404556451900

/-! ## A149396.P9089814020309028773

`xor((2^n+4)*(2^n-1)/6, A287234((7^n+1)/2))`
-/

namespace A149396.P9089814020309028773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (SequenceMachineLib.roundAway ((2 ^ n + 4 : ℚ) * (((2 ^ n : ℤ) - 1 : ℚ) / 6))) (A287234 (SequenceMachineLib.roundAway ((7 ^ n + 1 : ℚ) / 2)).toNat)

end

end A149396.P9089814020309028773

/-!
# A149397: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 1), (0, -1, 1), (1, 1, -1), (1, 1, 0)}.

The programs for A149397, there is no canonical definition to state claims against.
-/

/-! ## A149397.P11229679730045261782

`A157271(A150437(n))`
-/

namespace A149397.P11229679730045261782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157271 (A150437 n).toNat

end

end A149397.P11229679730045261782

/-! ## A149397.P8357591477002996356

`A345916(A001472(n))+A094611(n)`
-/

namespace A149397.P8357591477002996356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345916 (A001472 n).toNat + A094611 n

end

end A149397.P8357591477002996356

/-!
# A149398: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 0), (-1, 1, 0), (1, 0, 1), (1, 1, -1)}.

The programs for A149398, there is no canonical definition to state claims against.
-/

/-! ## A149398.P17521413990324644298

`A098019(A148418(n))`
-/

namespace A149398.P17521413990324644298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098019 (A148418 n).toNat

end

end A149398.P17521413990324644298

/-! ## A149398.P3373546374611712279

`A275344(or(5, A163271(2*n+1)))`
-/

namespace A149398.P3373546374611712279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275344 (Int.lor 5 (A163271 (2 * n + 1))).toNat

end

end A149398.P3373546374611712279

/-!
# A149399: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 0), (-1, 0, 1), (1, 0, 1), (1, 1, -1)}.

The programs for A149399, there is no canonical definition to state claims against.
-/

/-! ## A149399.P8494062053635935621

`∑[and(∑{d}[n+1, #^3], A069289(6^n))]-n`
-/

namespace A149399.P8494062053635935621
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((∑ d ∈ Nat.divisors (f2 n), d ^ 3 : ℕ) : ℤ) (A069289 (6 ^ n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A149399.P8494062053635935621

/-! ## A149399.P15418242199579884448

`A382297(A051049(n))`
-/

namespace A149399.P15418242199579884448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382297 (A051049 n).toNat

end

end A149399.P15418242199579884448

