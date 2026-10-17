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
import Seq.B000.C012
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C034
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C008
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
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
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.Opaque.C000
import Seq.Opaque.C001
import Seq.Opaque.C002
import Seq.Opaque.C003
import Seq.Opaque.C004
import Seq.Opaque.C006
import Seq.Opaque.C007
import Seq.Opaque.C008
import Seq.Opaque.C009
import Seq.Opaque.C010
import Seq.Opaque.C011
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
import Seq.Opaque.C025

/-!
# A022700: Expansion of Product_{m>=1} 1/(1 + m*q^m)^8.

The programs for A022700, there is no canonical definition to state claims against.
-/

/-! ## A022700.P12548226861773005822

`A297325(A056000(n+5)+1)`
-/

namespace A022700.P12548226861773005822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297325 (A056000 (n + 5) + 1).toNat

end

end A022700.P12548226861773005822

/-! ## A022700.P11479678256660043254

`A297325(A046691(n+7)-5)`
-/

namespace A022700.P11479678256660043254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297325 (A046691 (n + 7) - 5).toNat

end

end A022700.P11479678256660043254

/-! ## A022700.P14471608888630553940

`A297325(A000217(n+9)-9)`
-/

namespace A022700.P14471608888630553940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297325 (A000217 (n + 9) - 9).toNat

end

end A022700.P14471608888630553940

/-! ## A022700.P11993967258536794769

`A297325(A000124(n+8)+n-1)`
-/

namespace A022700.P11993967258536794769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297325 (A000124 (n + 8) + ((n : ℤ) - 1)).toNat

end

end A022700.P11993967258536794769

/-! ## A022700.P5863065331175662089

`A297325((n+7)²-A167614(n+3))`
-/

namespace A022700.P5863065331175662089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297325 (((n + 7) ^ 2 : ℤ) - A167614 (n + 3)).toNat

end

end A022700.P5863065331175662089

/-!
# A022701: Expansion of Product_{m>=1} 1/(1 + m*q^m)^9.

The programs for A022701, there is no canonical definition to state claims against.
-/

/-! ## A022701.P7928164098182293551

`A297325(A056000(n+6))`
-/

namespace A022701.P7928164098182293551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297325 (A056000 (n + 6)).toNat

end

end A022701.P7928164098182293551

/-! ## A022701.P15968453000733536990

`A297325(A034856(n+9)-8)`
-/

namespace A022701.P15968453000733536990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297325 (A034856 (n + 9) - 8).toNat

end

end A022701.P15968453000733536990

/-! ## A022701.P14232339835379883624

`A297325(A000096(n+9)-9)`
-/

namespace A022701.P14232339835379883624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297325 (A000096 (n + 9) - 9).toNat

end

end A022701.P14232339835379883624

/-! ## A022701.P6531909469727222282

`A297325(A000217(n+10)-10)`
-/

namespace A022701.P6531909469727222282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297325 (A000217 (n + 10) - 10).toNat

end

end A022701.P6531909469727222282

/-! ## A022701.P13754955317984174863

`A297325(2*n+A000217(n+8)+9)`
-/

namespace A022701.P13754955317984174863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297325 ((2 * n : ℤ) + (A000217 (n + 8) + 9)).toNat

end

end A022701.P13754955317984174863

/-! ## A022701.P10932258399213564858

`A297325(2*(n+1)+A167614(n+7)+4)`
-/

namespace A022701.P10932258399213564858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297325 ((2 * (n + 1) : ℤ) + (A167614 (n + 7) + 4)).toNat

end

end A022701.P10932258399213564858

/-!
# A022702: Expansion of Product_{m>=1} (1+m*q^m)^(-10).

The programs for A022702, there is no canonical definition to state claims against.
-/

/-! ## A022702.P11297690007488784509

`A297325(A056000(n+7)-1)`
-/

namespace A022702.P11297690007488784509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297325 (A056000 (n + 7) - 1).toNat

end

end A022702.P11297690007488784509

/-! ## A022702.P9185369263876675267

`A297325(A155212(n+7)-3)`
-/

namespace A022702.P9185369263876675267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297325 (A155212 (n + 7) - 3).toNat

end

end A022702.P9185369263876675267

/-! ## A022702.P8223604760463737808

`A297325(A000217(n+11)-11)`
-/

namespace A022702.P8223604760463737808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297325 (A000217 (n + 11) - 11).toNat

end

end A022702.P8223604760463737808

/-! ## A022702.P18345327092247343967

`A297325(Δ[A000292(n+9)]+n)`
-/

namespace A022702.P18345327092247343967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (n + 9)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297325 (f1 (n + 1) - f1 n + (n : ℤ)).toNat

end

end A022702.P18345327092247343967

/-! ## A022702.P16337284830179253892

`A297325(A055998(n+8)+n+3)`
-/

namespace A022702.P16337284830179253892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297325 (A055998 (n + 8) + (n + 3 : ℤ)).toNat

end

end A022702.P16337284830179253892

/-!
# A022703: Expansion of Product_{m>=1} (1+m*q^m)^-11.

The programs for A022703, there is no canonical definition to state claims against.
-/

/-! ## A022703.P10448086531147597590

`A297325(A056000(n+8)-2)`
-/

namespace A022703.P10448086531147597590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297325 (A056000 (n + 8) - 2).toNat

end

end A022703.P10448086531147597590

/-! ## A022703.P1091586715899914076

`A297325(A055999(n+9)-6)`
-/

namespace A022703.P1091586715899914076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297325 (A055999 (n + 9) - 6).toNat

end

end A022703.P1091586715899914076

/-! ## A022703.P15475686785844301125

`A297325(A000217(n+12)-12)`
-/

namespace A022703.P15475686785844301125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297325 (A000217 (n + 12) - 12).toNat

end

end A022703.P15475686785844301125

/-! ## A022703.P14020325700511879861

`A297325(eq[11, A025581(n)])`
-/

namespace A022703.P14020325700511879861
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297325 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A022703.P14020325700511879861

/-! ## A022703.P10109429336006794409

`A297325(eq[12, A004736(n+1)])`
-/

namespace A022703.P10109429336006794409
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297325 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A022703.P10109429336006794409

/-!
# A022704: Expansion of Product_{m>=1} (1+m*q^m)^-12.

The programs for A022704, there is no canonical definition to state claims against.
-/

/-! ## A022704.P2937158148731745920

`A297325(A000217(n+12)+n)`
-/

namespace A022704.P2937158148731745920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297325 (A000217 (n + 12) + (n : ℤ)).toNat

end

end A022704.P2937158148731745920

/-! ## A022704.P14782556291961569476

`A297325(A161680(n+13)+n)`
-/

namespace A022704.P14782556291961569476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297325 (A161680 (n + 13) + (n : ℤ)).toNat

end

end A022704.P14782556291961569476

/-! ## A022704.P4869004738105568906

`A297325(eq[25, A099375(n)])`
-/

namespace A022704.P4869004738105568906
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  25

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297325 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A022704.P4869004738105568906

/-! ## A022704.P17040631395540364408

`A297325(eq[12, A025581(n)])`
-/

namespace A022704.P17040631395540364408
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297325 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A022704.P17040631395540364408

/-! ## A022704.P12047279436107543967

`A297325(eq[13, A004736(n+1)])`
-/

namespace A022704.P12047279436107543967
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297325 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A022704.P12047279436107543967

/-!
# A022705: Expansion of Product_{m>=1} (1+m*q^m)^-13.

The programs for A022705, there is no canonical definition to state claims against.
-/

/-! ## A022705.P2165394309644057266

`A297325(A000217(n+13)+n)`
-/

namespace A022705.P2165394309644057266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297325 (A000217 (n + 13) + (n : ℤ)).toNat

end

end A022705.P2165394309644057266

/-! ## A022705.P8469870628505946589

`A297325(A167499(n+5)+A004768(n+7))`
-/

namespace A022705.P8469870628505946589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297325 (A167499 (n + 5) + A004768 (n + 7)).toNat

end

end A022705.P8469870628505946589

/-! ## A022705.P11932758656806489772

`A297325(eq[27, A099375(n)])`
-/

namespace A022705.P11932758656806489772
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  27

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297325 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A022705.P11932758656806489772

/-! ## A022705.P12162719992026490583

`A297325(eq[14, A193739(n)])`
-/

namespace A022705.P12162719992026490583
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  14

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297325 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A022705.P12162719992026490583

/-! ## A022705.P9270392778449787964

`A297325(eq[14, A004736(n+1)])`
-/

namespace A022705.P9270392778449787964
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  14

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297325 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A022705.P9270392778449787964

/-!
# A022706: Expansion of Product_{m>=1} (1+m*q^m)^-14.

The programs for A022706, there is no canonical definition to state claims against.
-/

/-! ## A022706.P2588964310324126461

`A297325(A056115(n+10))`
-/

namespace A022706.P2588964310324126461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297325 (A056115 (n + 10)).toNat

end

end A022706.P2588964310324126461

/-! ## A022706.P4988503359138640235

`A297325(A000217(n+14)+n)`
-/

namespace A022706.P4988503359138640235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297325 (A000217 (n + 14) + (n : ℤ)).toNat

end

end A022706.P4988503359138640235

/-! ## A022706.P13223841812052957379

`A297325(eq[29, A099375(n)])`
-/

namespace A022706.P13223841812052957379
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  29

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297325 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A022706.P13223841812052957379

/-! ## A022706.P12184339332752546218

`A297325(eq[14, A025581(n)])`
-/

namespace A022706.P12184339332752546218
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  14

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297325 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A022706.P12184339332752546218

/-! ## A022706.P15843850602498940867

`A297325(eq[15, A193739(n)])`
-/

namespace A022706.P15843850602498940867
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297325 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A022706.P15843850602498940867

/-!
# A022707: Expansion of Product_{m>=1} (1+m*q^m)^-15.

The programs for A022707, there is no canonical definition to state claims against.
-/

/-! ## A022707.P7973105914007168146

`A297325(A000217(n+15)+n)`
-/

namespace A022707.P7973105914007168146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297325 (A000217 (n + 15) + (n : ℤ)).toNat

end

end A022707.P7973105914007168146

/-! ## A022707.P6232956427488987987

`A297325(eq[7, A243070(n+1)])`
-/

namespace A022707.P6232956427488987987
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243070 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297325 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A022707.P6232956427488987987

/-! ## A022707.P10338677055525290309

`A297325(eq[15, A025581(n)])`
-/

namespace A022707.P10338677055525290309
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297325 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A022707.P10338677055525290309

/-! ## A022707.P11114837884034984504

`A297325(eq[16, A193739(n)])`
-/

namespace A022707.P11114837884034984504
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297325 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A022707.P11114837884034984504

/-! ## A022707.P3738168586207559017

`A297325(eq[16, A004736(n+1)])`
-/

namespace A022707.P3738168586207559017
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297325 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A022707.P3738168586207559017

/-!
# A022708: Expansion of Product_{m>=1} (1+m*q^m)^-16.

The programs for A022708, there is no canonical definition to state claims against.
-/

/-! ## A022708.P15955388772372269748

`A297325(A046691(n+14)+A020705(n))`
-/

namespace A022708.P15955388772372269748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297325 (A046691 (n + 14) + A020705 n).toNat

end

end A022708.P15955388772372269748

/-! ## A022708.P14658553253190465764

`A297325(eq[33, A099375(n)])`
-/

namespace A022708.P14658553253190465764
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  33

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297325 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A022708.P14658553253190465764

/-! ## A022708.P7281896958650759228

`A297325(eq[16, A025581(n)])`
-/

namespace A022708.P7281896958650759228
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297325 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A022708.P7281896958650759228

/-! ## A022708.P6310567373555773355

`A297325(eq[17, A193739(n)])`
-/

namespace A022708.P6310567373555773355
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297325 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A022708.P6310567373555773355

/-! ## A022708.P7855088795518256344

`A297325(eq[17, A004736(n+1)])`
-/

namespace A022708.P7855088795518256344
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297325 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A022708.P7855088795518256344

/-!
# A022709: Expansion of Product_{m>=1} (1+m*q^m)^-17.

The programs for A022709, there is no canonical definition to state claims against.
-/

/-! ## A022709.P7860976211949609968

`A297325(A161680(n+18)+n)`
-/

namespace A022709.P7860976211949609968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297325 (A161680 (n + 18) + (n : ℤ)).toNat

end

end A022709.P7860976211949609968

/-! ## A022709.P12870703184314864479

`A297325(eq[35, A099375(n)])`
-/

namespace A022709.P12870703184314864479
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  35

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297325 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A022709.P12870703184314864479

/-! ## A022709.P5338715754601846656

`A297325(eq[17, A025581(n)])`
-/

namespace A022709.P5338715754601846656
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297325 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A022709.P5338715754601846656

/-! ## A022709.P16341446729523281137

`A297325(eq[18, A193739(n)])`
-/

namespace A022709.P16341446729523281137
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  18

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297325 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A022709.P16341446729523281137

/-! ## A022709.P17474872466515006806

`A297325(eq[17, A144257(n+1)])`
-/

namespace A022709.P17474872466515006806
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144257 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297325 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A022709.P17474872466515006806

/-! ## A022709.P17508698378874240449

`A297325(eq[18, A004736(n+1)])`
-/

namespace A022709.P17508698378874240449
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  18

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297325 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A022709.P17508698378874240449

/-!
# A022710: Expansion of Product_{m>=1} (1+m*q^m)^-18.

The programs for A022710, there is no canonical definition to state claims against.
-/

/-! ## A022710.P12068578360012891657

`A297325(eq[19, A004736(n+1)])`
-/

namespace A022710.P12068578360012891657
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  19

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297325 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A022710.P12068578360012891657

/-!
# A022711: Expansion of Product_{m>=1} (1+m*q^m)^-19.

The programs for A022711, there is no canonical definition to state claims against.
-/

/-! ## A022711.P12456289960744530136

`A297325(eq[20, A004736(n+1)])`
-/

namespace A022711.P12456289960744530136
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  20

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297325 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A022711.P12456289960744530136

/-!
# A022712: Expansion of Product_{m>=1} (1+m*q^m)^-20.

The programs for A022712, there is no canonical definition to state claims against.
-/

/-! ## A022712.P2707613065128365603

`A297325(eq[21, A004736(n+1)])`
-/

namespace A022712.P2707613065128365603
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  21

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297325 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A022712.P2707613065128365603

/-!
# A022713: Expansion of Product_{m>=1} (1+m*q^m)^-21.

The programs for A022713, there is no canonical definition to state claims against.
-/

/-! ## A022713.P687346718065933412

`A297325(eq[22, A004736(n+1)])`
-/

namespace A022713.P687346718065933412
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  22

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297325 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A022713.P687346718065933412

/-!
# A022716: Expansion of Product_{m>=1} (1+m*q^m)^-24.

The programs for A022716, there is no canonical definition to state claims against.
-/

/-! ## A022716.P3446440876964309582

`A297325(eq[25, A004736(n+1)])`
-/

namespace A022716.P3446440876964309582
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  25

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297325 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A022716.P3446440876964309582

/-!
# A022722: Expansion of Product_{m>=1} (1+m*q^m)^(-30).

The programs for A022722, there is no canonical definition to state claims against.
-/

/-! ## A022722.P13428002624229379891

`A297325(eq[31, A195663(n)])`
-/

namespace A022722.P13428002624229379891
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  31

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195663 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297325 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A022722.P13428002624229379891

/-!
# A022725: Expansion of 1/((1-x)*(1-5*x)*(1-8*x)*(1-12*x)).

The programs for A022725, the canonical program `A022725.P12976959514950321266` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022725 has offset 0).

The definition of A022725 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A022725.P12976959514950321266

`(3*12^(n+3)-11*8^(n+3)+11*5^(n+3)-3)/924`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A022725

/-- `(3*12^(n+3)-11*8^(n+3)+11*5^(n+3)-3)/924` -/
def P12976959514950321266.Spec : Prop :=
  ∀ n, P12976959514950321266.a n = (A022725 n : ℚ)

end A022725

/-! ## A022725.P12175056828147320397

`∑[A020448(n)]`
-/

namespace A022725.P12175056828147320397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020448 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A022725.P12175056828147320397

namespace A022725

/-- `∑[A020448(n)]` -/
def P12175056828147320397.Spec : Prop :=
  ∀ n, P12175056828147320397.a n = A022725 n

end A022725

/-! ## A022725.P16418773338875392520

`A016239(n)+4*2*a(n-1)` with `a(0)=1`
-/

namespace A022725.P16418773338875392520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A016239 n + 4 * (2 * a (n - 1))

end

end A022725.P16418773338875392520

namespace A022725

/-- `A016239(n)+4*2*a(n-1)` -/
def P16418773338875392520.Spec : Prop :=
  ∀ n, P16418773338875392520.a n = A022725 n

end A022725

/-! ## A022725.P17096646546559571719

`A020448((n+1)/(1/n+1))+a(n-1)` with `a(0)=1`
-/

namespace A022725.P17096646546559571719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A020448 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (1 / (n : ℚ) + 1))).toNat + a (n - 1)

end

end A022725.P17096646546559571719

namespace A022725

/-- `A020448((n+1)/(1/n+1))+a(n-1)` -/
def P17096646546559571719.Spec : Prop :=
  ∀ n, P17096646546559571719.a n = A022725 n

end A022725

/-! ## A022725.P16795188322167160640

`2*A021279(n)-A021164(n)`
-/

namespace A022725.P16795188322167160640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A021279 n - A021164 n

end

end A022725.P16795188322167160640

namespace A022725

/-- `2*A021279(n)-A021164(n)` -/
def P16795188322167160640.Spec : Prop :=
  ∀ n, P16795188322167160640.a n = A022725 n

end A022725

/-! ## A022725.P2336789778023899698

`2*A021794(n)-A021764(n)`
-/

namespace A022725.P2336789778023899698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A021794 n - A021764 n

end

end A022725.P2336789778023899698

namespace A022725

/-- `2*A021794(n)-A021764(n)` -/
def P2336789778023899698.Spec : Prop :=
  ∀ n, P2336789778023899698.a n = A022725 n

end A022725

/-! ## A022725.P8984724083394469881

`∑[2*A016320(n)-A016302(n)]`
-/

namespace A022725.P8984724083394469881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A016320 n - A016302 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A022725.P8984724083394469881

namespace A022725

/-- `∑[2*A016320(n)-A016302(n)]` -/
def P8984724083394469881.Spec : Prop :=
  ∀ n, P8984724083394469881.a n = A022725 n

end A022725

/-!
# A022726: Expansion of 1/Product_{m>=1} (1 - m*q^m)^2.

The programs for A022726, there is no canonical definition to state claims against.
-/

/-! ## A022726.P6148945589448029794

`A297328(∑[n+3])`
-/

namespace A022726.P6148945589448029794
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297328 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A022726.P6148945589448029794

/-! ## A022726.P14105223906391038256

`record[A297328(A027379(A028242(n)))]`
-/

namespace A022726.P14105223906391038256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297328 (A027379 (A028242 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A022726.P14105223906391038256

/-! ## A022726.P206967530042225292

`record[A297328(A055998(A008611(n)))]`
-/

namespace A022726.P206967530042225292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297328 (A055998 (A008611 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A022726.P206967530042225292

/-! ## A022726.P1348746004608679006

`record[A297328(A027379(A103221(n)))]`
-/

namespace A022726.P1348746004608679006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297328 (A027379 (A103221 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A022726.P1348746004608679006

/-! ## A022726.P11872260255020104098

`record[A297328(A027379(A003963(n+1)))]`
-/

namespace A022726.P11872260255020104098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297328 (A027379 (A003963 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A022726.P11872260255020104098

/-! ## A022726.P1427908074399473056

`record[A297328(A027379(A278529(n+1)))]`
-/

namespace A022726.P1427908074399473056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297328 (A027379 (A278529 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A022726.P1427908074399473056

/-! ## A022726.P7714697503961148064

`record[A297328(A027379(A002262(n)))]`
-/

namespace A022726.P7714697503961148064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297328 (A027379 (A002262 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A022726.P7714697503961148064

/-! ## A022726.P2033382704768757495

`record[A297328(A008619(A048840(n)))]`
-/

namespace A022726.P2033382704768757495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297328 (A008619 (A048840 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A022726.P2033382704768757495

/-!
# A022727: Expansion of Product_{m>=1} (1-m*q^m)^-3.

The programs for A022727, there is no canonical definition to state claims against.
-/

/-! ## A022727.P332463678583832530

`A297328(∑[n+3]+n+3)`
-/

namespace A022727.P332463678583832530
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297328 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3))

end

end A022727.P332463678583832530

/-! ## A022727.P13867631886778835383

`record[A297328(abs(A046691(n)))]`
-/

namespace A022727.P13867631886778835383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297328 |A046691 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A022727.P13867631886778835383

/-! ## A022727.P8441910318967909549

`record[A297328(A027379(n)-1)]`
-/

namespace A022727.P8441910318967909549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297328 (A027379 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A022727.P8441910318967909549

/-! ## A022727.P10469167515007189685

`record[gcd(A297325(n+3), A297328(n))]`
-/

namespace A022727.P10469167515007189685
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A297325 (n + 3)) (A297328 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A022727.P10469167515007189685

/-! ## A022727.P11959513746871925067

`A297328(A046691(n+2))%A320090(n+2)`
-/

namespace A022727.P11959513746871925067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A297328 (A046691 (n + 2)).toNat) (A320090 (n + 2))

end

end A022727.P11959513746871925067

/-!
# A022728: Expansion of Product_{m>=1} (1-m*q^m)^-4.

The programs for A022728, there is no canonical definition to state claims against.
-/

/-! ## A022728.P5228962409673964824

`record[A297328(∑[n+1]+2*n)]`
-/

namespace A022728.P5228962409673964824
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297328 (∑ j ∈ Finset.range (n + 1), f2 j + 2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A022728.P5228962409673964824

/-! ## A022728.P14067352731046591809

`A297328(A052905(n+2))`
-/

namespace A022728.P14067352731046591809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297328 (A052905 (n + 2)).toNat

end

end A022728.P14067352731046591809

/-! ## A022728.P1691283151934170934

`A297328(A046691(n+3)-1)`
-/

namespace A022728.P1691283151934170934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297328 (A046691 (n + 3) - 1).toNat

end

end A022728.P1691283151934170934

/-! ## A022728.P9895806601491815447

`A297328(A167614(n+4)-8)`
-/

namespace A022728.P9895806601491815447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297328 (A167614 (n + 4) - 8).toNat

end

end A022728.P9895806601491815447

/-! ## A022728.P1224648680563352613

`A297328(Δ[A023545(n+1)]-1)`
-/

namespace A022728.P1224648680563352613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297328 (f1 (n + 1) - f1 n - 1).toNat

end

end A022728.P1224648680563352613

/-! ## A022728.P11528488678577491478

`A297328(A000096(n+3)+n+1)`
-/

namespace A022728.P11528488678577491478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297328 (A000096 (n + 3) + (n + 1 : ℤ)).toNat

end

end A022728.P11528488678577491478

/-! ## A022728.P7881409650740401271

`A297328(A000124(n+4)+n-1)`
-/

namespace A022728.P7881409650740401271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297328 (A000124 (n + 4) + (n : ℤ) - 1).toNat

end

end A022728.P7881409650740401271

/-! ## A022728.P2550718599868341919

`A297328(A133263(n+4)+n-2)`
-/

namespace A022728.P2550718599868341919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297328 (A133263 (n + 4) + ((n : ℤ) - 2)).toNat

end

end A022728.P2550718599868341919

/-! ## A022728.P7872058896406013507

`A297328(2*n+A055999(n)+10)`
-/

namespace A022728.P7872058896406013507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297328 ((2 * n : ℤ) + (A055999 n + 10)).toNat

end

end A022728.P7872058896406013507

/-! ## A022728.P10160227350289912316

`A297328(2*n+A167614(n+2)+1)`
-/

namespace A022728.P10160227350289912316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297328 ((2 * n : ℤ) + (A167614 (n + 2) + 1)).toNat

end

end A022728.P10160227350289912316

/-! ## A022728.P8549589787660616921

`A297328(eq[4, A025581(n)])`
-/

namespace A022728.P8549589787660616921
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297328 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A022728.P8549589787660616921

/-!
# A022729: Expansion of Product_{m>=1} 1/(1 - m*q^m)^5.

The programs for A022729, there is no canonical definition to state claims against.
-/

/-! ## A022729.P535807527345836030

`record[A297328(∑[n+4])]`
-/

namespace A022729.P535807527345836030
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297328 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A022729.P535807527345836030

/-! ## A022729.P781715664673657401

`A297328((n+4)²-∑[n+1])`
-/

namespace A022729.P781715664673657401
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297328 ((n + 4) ^ 2 - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A022729.P781715664673657401

/-! ## A022729.P8397950155471266488

`gcd(A000038(n), A297328(A055999(n+3)))`
-/

namespace A022729.P8397950155471266488
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A297328 (A055999 (n + 3)).toNat)

end

end A022729.P8397950155471266488

/-! ## A022729.P17260612655654032607

`lcm(A033999(n), A297328(A055999(n+3)))`
-/

namespace A022729.P17260612655654032607
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A297328 (A055999 (n + 3)).toNat)

end

end A022729.P17260612655654032607

/-! ## A022729.P13841336079707481308

`A297328(A055999(n+3))+A000007(n+1)`
-/

namespace A022729.P13841336079707481308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297328 (A055999 (n + 3)).toNat + A000007 (n + 1)

end

end A022729.P13841336079707481308

/-! ## A022729.P7561926786548721177

`A297328(A055999(n+3))+A000038(n+3)`
-/

namespace A022729.P7561926786548721177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297328 (A055999 (n + 3)).toNat + A000038 (n + 3)

end

end A022729.P7561926786548721177

/-! ## A022729.P3423611294411492370

`A093178(2*n)*A297328(A055999(n+3))`
-/

namespace A022729.P3423611294411492370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 (2 * n) * A297328 (A055999 (n + 3)).toNat

end

end A022729.P3423611294411492370

/-! ## A022729.P8309404773058687525

`A297328(A055999(n+3))%A001788(n+5)`
-/

namespace A022729.P8309404773058687525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A297328 (A055999 (n + 3)).toNat) (A001788 (n + 5))

end

end A022729.P8309404773058687525

/-! ## A022729.P6554461637779342769

`A297328(A055999(n+3))+A010051((n+1)²)`
-/

namespace A022729.P6554461637779342769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297328 (A055999 (n + 3)).toNat + A010051 ((n + 1) ^ 2)

end

end A022729.P6554461637779342769

/-! ## A022729.P11434294611202074361

`or(A010051(2*(n+1)), A297328(A055999(n+3)))`
-/

namespace A022729.P11434294611202074361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A010051 (2 * (n + 1))) (A297328 (A055999 (n + 3)).toNat)

end

end A022729.P11434294611202074361

/-!
# A022730: Expansion of Product_{m>=1} 1/(1 - m*q^m)^6.

The programs for A022730, there is no canonical definition to state claims against.
-/

/-! ## A022730.P17237170389368331976

`A297328(A055999(n+4)-1)`
-/

namespace A022730.P17237170389368331976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297328 (A055999 (n + 4) - 1).toNat

end

end A022730.P17237170389368331976

/-! ## A022730.P14482212035168847170

`A297328(A000096(n+6)-6)`
-/

namespace A022730.P14482212035168847170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297328 (A000096 (n + 6) - 6).toNat

end

end A022730.P14482212035168847170

/-! ## A022730.P12177711547942730613

`A297328(A000217(n+7)-7)`
-/

namespace A022730.P12177711547942730613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297328 (A000217 (n + 7) - 7).toNat

end

end A022730.P12177711547942730613

/-! ## A022730.P15971869686720812134

`A297328(A133263(n+7)-9)`
-/

namespace A022730.P15971869686720812134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297328 (A133263 (n + 7) - 9).toNat

end

end A022730.P15971869686720812134

/-! ## A022730.P16988229811722769268

`A297328(A161680(n+6)+6+2*n)`
-/

namespace A022730.P16988229811722769268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297328 (A161680 (n + 6) + 6 + (2 * n : ℤ)).toNat

end

end A022730.P16988229811722769268

/-! ## A022730.P15196798175263769138

`A297328(A167499(n+4)+A005408(n))`
-/

namespace A022730.P15196798175263769138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297328 (A167499 (n + 4) + A005408 n).toNat

end

end A022730.P15196798175263769138

/-! ## A022730.P654742853101346299

`A297328(A046691(n+8)-A008585(n+10))`
-/

namespace A022730.P654742853101346299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297328 (A046691 (n + 8) - A008585 (n + 10)).toNat

end

end A022730.P654742853101346299

/-! ## A022730.P7432202352311878471

`A297328(A167614(n+9)-A086822(n+12))`
-/

namespace A022730.P7432202352311878471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297328 (A167614 (n + 9) - A086822 (n + 12)).toNat

end

end A022730.P7432202352311878471

/-!
# A022731: Expansion of Product_{m>=1} 1/(1 - m*q^m)^7.

The programs for A022731, there is no canonical definition to state claims against.
-/

/-! ## A022731.P1327379621685040930

`A297328(A052905(n+5)-3)`
-/

namespace A022731.P1327379621685040930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297328 (A052905 (n + 5) - 3).toNat

end

end A022731.P1327379621685040930

/-! ## A022731.P12267838428512754134

`A297328(A000217(n+8)-8)`
-/

namespace A022731.P12267838428512754134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297328 (A000217 (n + 8) - 8).toNat

end

end A022731.P12267838428512754134

/-! ## A022731.P5980461934436613358

`A297328(2*n+A056119(n)+28)`
-/

namespace A022731.P5980461934436613358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297328 ((2 * n : ℤ) + (A056119 n + 28)).toNat

end

end A022731.P5980461934436613358

/-! ## A022731.P17030416464566060937

`A297328(2*n+A000096(n+5)+8)`
-/

namespace A022731.P17030416464566060937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297328 ((2 * n : ℤ) + (A000096 (n + 5) + 8)).toNat

end

end A022731.P17030416464566060937

/-! ## A022731.P8751553962155300228

`A297328(2*n+A052905(n+3)+12)`
-/

namespace A022731.P8751553962155300228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297328 ((2 * n : ℤ) + (A052905 (n + 3) + 12)).toNat

end

end A022731.P8751553962155300228

/-! ## A022731.P8524544107449846517

`A297328(A005843(n+3)+A000124(n+6))`
-/

namespace A022731.P8524544107449846517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297328 (A005843 (n + 3) + A000124 (n + 6)).toNat

end

end A022731.P8524544107449846517

/-! ## A022731.P381132222927723302

`A297328(A046691(n+12)-A016921(n+12))`
-/

namespace A022731.P381132222927723302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297328 (A046691 (n + 12) - A016921 (n + 12)).toNat

end

end A022731.P381132222927723302

/-! ## A022731.P12974310120522032774

`A297328(eq[8, A004736(n+1)])`
-/

namespace A022731.P12974310120522032774
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297328 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A022731.P12974310120522032774

/-!
# A022732: Expansion of Product_{m>=1} 1/(1 - m*q^m)^8.

The programs for A022732, there is no canonical definition to state claims against.
-/

/-! ## A022732.P554190463447005219

`A297328(A055999(n+6)-3)`
-/

namespace A022732.P554190463447005219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297328 (A055999 (n + 6) - 3).toNat

end

end A022732.P554190463447005219

/-! ## A022732.P10723600383320567182

`A297328(A000217(n+9)-9)`
-/

namespace A022732.P10723600383320567182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297328 (A000217 (n + 9) - 9).toNat

end

end A022732.P10723600383320567182

/-! ## A022732.P5613720696761822864

`A297328(A161680(n+10)-9)`
-/

namespace A022732.P5613720696761822864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297328 (A161680 (n + 10) - 9).toNat

end

end A022732.P5613720696761822864

/-! ## A022732.P15783864380453732262

`A297328(Δ[A297328(A167614(n+6))])`
-/

namespace A022732.P15783864380453732262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297328 (A167614 (n + 6)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297328 (f1 (n + 1) - f1 n).toNat

end

end A022732.P15783864380453732262

/-! ## A022732.P9364703614036045733

`A297328(A135227(A133263(n+9))+n)`
-/

namespace A022732.P9364703614036045733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297328 (A135227 (A133263 (n + 9)).toNat + (n : ℤ)).toNat

end

end A022732.P9364703614036045733

/-!
# A022733: Expansion of Product_{m>=1} 1/(1 - m*q^m)^9.

The programs for A022733, there is no canonical definition to state claims against.
-/

/-! ## A022733.P4267628800439152952

`A297328(A055999(n+7)-4)`
-/

namespace A022733.P4267628800439152952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297328 (A055999 (n + 7) - 4).toNat

end

end A022733.P4267628800439152952

/-! ## A022733.P13642596872604730305

`A297328(A000217(n+10)-10)`
-/

namespace A022733.P13642596872604730305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297328 (A000217 (n + 10) - 10).toNat

end

end A022733.P13642596872604730305

/-! ## A022733.P16876289793979270647

`A297328(A002378(n+7)-A000124(n+4))`
-/

namespace A022733.P16876289793979270647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297328 (A002378 (n + 7) - A000124 (n + 4)).toNat

end

end A022733.P16876289793979270647

/-! ## A022733.P7502003740624789424

`A297328(A005843(n+4)+A000124(n+8))`
-/

namespace A022733.P7502003740624789424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297328 (A005843 (n + 4) + A000124 (n + 8)).toNat

end

end A022733.P7502003740624789424

/-! ## A022733.P3242643627401417541

`A297328(A267872(n+6)+A046691(n+6))`
-/

namespace A022733.P3242643627401417541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297328 (A267872 (n + 6) + A046691 (n + 6)).toNat

end

end A022733.P3242643627401417541

/-! ## A022733.P931699603981941534

`A297328(A267874(n+7)-A000124(n+5))`
-/

namespace A022733.P931699603981941534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297328 (A267874 (n + 7) - A000124 (n + 5)).toNat

end

end A022733.P931699603981941534

/-!
# A022734: Expansion of Product_{m>=1} (1-m*q^m)^-10.

The programs for A022734, there is no canonical definition to state claims against.
-/

/-! ## A022734.P13895957280745651585

`A297328(A055999(n+8)-5)`
-/

namespace A022734.P13895957280745651585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297328 (A055999 (n + 8) - 5).toNat

end

end A022734.P13895957280745651585

/-! ## A022734.P12405353293987502202

`A297328(A000217(n+11)-11)`
-/

namespace A022734.P12405353293987502202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297328 (A000217 (n + 11) - 11).toNat

end

end A022734.P12405353293987502202

/-! ## A022734.P7690938194028123526

`A297328(Δ[n²]+A000096(n+8)+10)`
-/

namespace A022734.P7690938194028123526
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297328 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + (A000096 (n + 8) + 10)).toNat

end

end A022734.P7690938194028123526

/-! ## A022734.P16240151791627127007

`A297328(A004273(n+6)+A000096(n+8))`
-/

namespace A022734.P16240151791627127007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297328 (A004273 (n + 6) + A000096 (n + 8)).toNat

end

end A022734.P16240151791627127007

/-! ## A022734.P554711467383673653

`A297328(eq[10, A025581(n)])`
-/

namespace A022734.P554711467383673653
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297328 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A022734.P554711467383673653

/-! ## A022734.P8546625594366278706

`A297328(eq[11, A004736(n+1)])`
-/

namespace A022734.P8546625594366278706
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297328 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A022734.P8546625594366278706

/-!
# A022735: Expansion of Product_{m>=1} (1-m*q^m)^-11.

The programs for A022735, there is no canonical definition to state claims against.
-/

/-! ## A022735.P3702491613376785545

`A297328(A000217(n+12)-12)`
-/

namespace A022735.P3702491613376785545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297328 (A000217 (n + 12) - 12).toNat

end

end A022735.P3702491613376785545

/-! ## A022735.P8124235441875914469

`A297328(A005843(n+5)+A000124(n+10))`
-/

namespace A022735.P8124235441875914469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297328 (A005843 (n + 5) + A000124 (n + 10)).toNat

end

end A022735.P8124235441875914469

/-! ## A022735.P4511592099238759131

`A297328(A267872(n+7)+A046691(n+8))`
-/

namespace A022735.P4511592099238759131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297328 (A267872 (n + 7) + A046691 (n + 8)).toNat

end

end A022735.P4511592099238759131

/-! ## A022735.P13993848126645372774

`A297328(A161680(n+9)+A111284(n+9))`
-/

namespace A022735.P13993848126645372774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297328 (A161680 (n + 9) + A111284 (n + 9)).toNat

end

end A022735.P13993848126645372774

/-!
# A022736: Expansion of 1/Product_{m>=1} (1 - m*q^m)^12.

The programs for A022736, there is no canonical definition to state claims against.
-/

/-! ## A022736.P4182682922247726683

`A297328(A000217(n+12)+n)`
-/

namespace A022736.P4182682922247726683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297328 (A000217 (n + 12) + (n : ℤ)).toNat

end

end A022736.P4182682922247726683

/-! ## A022736.P13870984092679867873

`A297328(A000124(n+12)+n-1)`
-/

namespace A022736.P13870984092679867873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297328 (A000124 (n + 12) + (n : ℤ) - 1).toNat

end

end A022736.P13870984092679867873

/-! ## A022736.P10950784296114884612

`A297328(A046691(n+8)+A008585(n+9))`
-/

namespace A022736.P10950784296114884612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297328 (A046691 (n + 8) + A008585 (n + 9)).toNat

end

end A022736.P10950784296114884612

/-! ## A022736.P16020966233113079521

`A297328(A055999(n+8)+A004277(n+9))`
-/

namespace A022736.P16020966233113079521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297328 (A055999 (n + 8) + A004277 (n + 9)).toNat

end

end A022736.P16020966233113079521

/-! ## A022736.P7474536519304988665

`A297328(A055999(n+8)+A005843(n+9))`
-/

namespace A022736.P7474536519304988665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297328 (A055999 (n + 8) + A005843 (n + 9)).toNat

end

end A022736.P7474536519304988665

/-!
# A022737: Expansion of Product_{m>=1} (1-m*q^m)^-13.

The programs for A022737, there is no canonical definition to state claims against.
-/

/-! ## A022737.P6507014801007811417

`A297328(A055999(n+11)-8)`
-/

namespace A022737.P6507014801007811417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297328 (A055999 (n + 11) - 8).toNat

end

end A022737.P6507014801007811417

/-! ## A022737.P2270522515156581986

`A297328(A133263(n+14)-16)`
-/

namespace A022737.P2270522515156581986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297328 (A133263 (n + 14) - 16).toNat

end

end A022737.P2270522515156581986

/-! ## A022737.P968395341397043357

`A297328(A016921(n+9)+A000217(n+8))`
-/

namespace A022737.P968395341397043357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297328 (A016921 (n + 9) + A000217 (n + 8)).toNat

end

end A022737.P968395341397043357

/-! ## A022737.P1324590517091354365

`A297328(A167614(n+9)+A016813(n+8))`
-/

namespace A022737.P1324590517091354365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297328 (A167614 (n + 9) + A016813 (n + 8)).toNat

end

end A022737.P1324590517091354365

/-! ## A022737.P5900978301145932894

`A297328(A267872(n+6)+A000217(n+12))`
-/

namespace A022737.P5900978301145932894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297328 (A267872 (n + 6) + A000217 (n + 12)).toNat

end

end A022737.P5900978301145932894

/-!
# A022738: Expansion of Product_{m>=1} (1-m*q^m)^-14.

The programs for A022738, there is no canonical definition to state claims against.
-/

/-! ## A022738.P6667081952649990911

`A297328(A056115(n+10))`
-/

namespace A022738.P6667081952649990911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297328 (A056115 (n + 10)).toNat

end

end A022738.P6667081952649990911

/-! ## A022738.P4068139630258279960

`A297328(A055999(n+12)-9)`
-/

namespace A022738.P4068139630258279960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297328 (A055999 (n + 12) - 9).toNat

end

end A022738.P4068139630258279960

/-! ## A022738.P11351203002383452755

`A297328(A008585(n+9)+A000217(n+12))`
-/

namespace A022738.P11351203002383452755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297328 (A008585 (n + 9) + A000217 (n + 12)).toNat

end

end A022738.P11351203002383452755

/-! ## A022738.P15516807484016330375

`A297328(eq[14, A025581(n)])`
-/

namespace A022738.P15516807484016330375
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  14

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297328 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A022738.P15516807484016330375

/-! ## A022738.P6408201944902099381

`A297328(eq[15, A004736(n+1)])`
-/

namespace A022738.P6408201944902099381
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297328 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A022738.P6408201944902099381

/-!
# A022739: Expansion of Product (1-m*q^m)^-15; m=1..infinity.

The programs for A022739, there is no canonical definition to state claims against.
-/

/-! ## A022739.P8429902507089483521

`A297328(A005843(n+7)+A000124(n+14))`
-/

namespace A022739.P8429902507089483521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297328 (A005843 (n + 7) + A000124 (n + 14)).toNat

end

end A022739.P8429902507089483521

/-! ## A022739.P7027118509350441826

`A297328(A267872(n+9)+A046691(n+12))`
-/

namespace A022739.P7027118509350441826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297328 (A267872 (n + 9) + A046691 (n + 12)).toNat

end

end A022739.P7027118509350441826

/-! ## A022739.P1127283540423051910

`A297328(A046691(n+11)+A008585(n+11))`
-/

namespace A022739.P1127283540423051910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297328 (A046691 (n + 11) + A008585 (n + 11)).toNat

end

end A022739.P1127283540423051910

/-! ## A022739.P14908991544920010315

`A297328(eq[15, A025581(n)])`
-/

namespace A022739.P14908991544920010315
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297328 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A022739.P14908991544920010315

/-! ## A022739.P16007091318481021791

`A297328(eq[16, A004736(n+1)])`
-/

namespace A022739.P16007091318481021791
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297328 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A022739.P16007091318481021791

/-!
# A022740: Expansion of Product (1-m*q^m)^-16; m=1..inf.

The programs for A022740, there is no canonical definition to state claims against.
-/

/-! ## A022740.P16326031163128462980

`A297328(eq[15, A104975(n)])`
-/

namespace A022740.P16326031163128462980
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104975 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297328 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A022740.P16326031163128462980

/-! ## A022740.P6510240731198535276

`A297328(eq[16, A025581(n)])`
-/

namespace A022740.P6510240731198535276
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297328 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A022740.P6510240731198535276

/-! ## A022740.P6938581019650978344

`A297328(eq[17, A193739(n)])`
-/

namespace A022740.P6938581019650978344
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297328 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A022740.P6938581019650978344

/-! ## A022740.P9003934639948635435

`A297328(eq[17, A004736(n+1)])`
-/

namespace A022740.P9003934639948635435
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297328 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A022740.P9003934639948635435

/-! ## A022740.P12163121393936156078

`record[A297328(A132315(n+1))]`
-/

namespace A022740.P12163121393936156078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297328 (A132315 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A022740.P12163121393936156078

/-!
# A022741: Expansion of 1/Product_{m>=1} (1 - m*q^m)^17.

The programs for A022741, there is no canonical definition to state claims against.
-/

/-! ## A022741.P15015760684152560925

`A297328(A167614(n+13)+A016813(n+11))`
-/

namespace A022741.P15015760684152560925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297328 (A167614 (n + 13) + A016813 (n + 11)).toNat

end

end A022741.P15015760684152560925

/-! ## A022741.P15154770960923774920

`A297328(eq[17, A025581(n)])`
-/

namespace A022741.P15154770960923774920
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297328 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A022741.P15154770960923774920

/-! ## A022741.P15176078039109610301

`A297328(eq[18, A004736(n+1)])`
-/

namespace A022741.P15176078039109610301
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  18

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297328 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A022741.P15176078039109610301

/-! ## A022741.P17235860238181701721

`A297328(eq[A185782(n+2), A219347(n+2)])`
-/

namespace A022741.P17235860238181701721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297328 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A022741.P17235860238181701721

/-! ## A022741.P6332673156642202145

`A297328(eq[18, A195663(n)])`
-/

namespace A022741.P6332673156642202145
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  18

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195663 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297328 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A022741.P6332673156642202145

/-!
# A022742: Expansion of 1/Product_{m>=1} (1 - m*q^m)^18.

The programs for A022742, there is no canonical definition to state claims against.
-/

/-! ## A022742.P10004548159499232765

`A297328(eq[18, A025581(n)])`
-/

namespace A022742.P10004548159499232765
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  18

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297328 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A022742.P10004548159499232765

/-! ## A022742.P17675108191959264611

`A297328(eq[19, A004736(n+1)])`
-/

namespace A022742.P17675108191959264611
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  19

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297328 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A022742.P17675108191959264611

/-!
# A022743: Expansion of 1/Product_{m>=1} (1 - m*q^m)^19.

The programs for A022743, there is no canonical definition to state claims against.
-/

/-! ## A022743.P16660970451481777478

`A297328(eq[19, A025581(n)])`
-/

namespace A022743.P16660970451481777478
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  19

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297328 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A022743.P16660970451481777478

/-! ## A022743.P8101798390506723010

`A297328(eq[20, A004736(n+1)])`
-/

namespace A022743.P8101798390506723010
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  20

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297328 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A022743.P8101798390506723010

/-!
# A022744: Expansion of 1/Product_{m>=1} (1 - m*q^m)^20.

The programs for A022744, there is no canonical definition to state claims against.
-/

/-! ## A022744.P11980773402233070733

`A297328(eq[21, A004736(n+1)])`
-/

namespace A022744.P11980773402233070733
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  21

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297328 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A022744.P11980773402233070733

/-!
# A022745: Expansion of 1/Product_{m>=1} (1 - m*q^m)^21.

The programs for A022745, there is no canonical definition to state claims against.
-/

/-! ## A022745.P6372218966751067999

`A297328(eq[21, A025581(n)])`
-/

namespace A022745.P6372218966751067999
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  21

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297328 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A022745.P6372218966751067999

/-!
# A022747: Expansion of 1/Product_{m>=1} (1 - m*q^m)^23.

The programs for A022747, there is no canonical definition to state claims against.
-/

/-! ## A022747.P14111461800709764671

`A297328(A055998(n+21)+n+3)`
-/

namespace A022747.P14111461800709764671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297328 (A055998 (n + 21) + (n + 3 : ℤ)).toNat

end

end A022747.P14111461800709764671

/-! ## A022747.P3900009693028084941

`A297328(eq[23, A025581(n)])`
-/

namespace A022747.P3900009693028084941
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  23

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297328 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A022747.P3900009693028084941

/-!
# A022748: Expansion of 1/Product_{m>=1} (1 - m*q^m)^24.

The programs for A022748, there is no canonical definition to state claims against.
-/

/-! ## A022748.P5389655835606558265

`A297328(eq[49, A099375(n)])`
-/

namespace A022748.P5389655835606558265
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  49

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297328 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A022748.P5389655835606558265

/-! ## A022748.P18196769275480408323

`A297328(eq[24, A025581(n)])`
-/

namespace A022748.P18196769275480408323
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  24

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297328 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A022748.P18196769275480408323

/-!
# A022749: Expansion of 1/Product_{m>=1} (1 - m*q^m)^25.

The programs for A022749, there is no canonical definition to state claims against.
-/

/-! ## A022749.P7273723546117120857

`A000265(A004643(2*n+1))*A238340(n+1)`
-/

namespace A022749.P7273723546117120857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A004643 (2 * n + 1)).toNat * A238340 (n + 1)

end

end A022749.P7273723546117120857

/-!
# A022750: Expansion of 1/Product_{m>=1} (1 - m*q^m)^26.

The programs for A022750, there is no canonical definition to state claims against.
-/

/-! ## A022750.P11452548644771296436

`A297328(eq[27, A004736(n+1)])`
-/

namespace A022750.P11452548644771296436
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  27

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297328 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A022750.P11452548644771296436

/-!
# A022751: Expansion of 1/Product_{m>=1} (1 - m*q^m)^27.

The programs for A022751, there is no canonical definition to state claims against.
-/

/-! ## A022751.P4169333503024773586

`A297328(eq[27, A025581(n)])`
-/

namespace A022751.P4169333503024773586
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  27

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297328 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A022751.P4169333503024773586

/-! ## A022751.P14656007943078207778

`A297328(eq[28, A004736(n+1)])`
-/

namespace A022751.P14656007943078207778
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  28

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297328 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A022751.P14656007943078207778

/-!
# A022753: Expansion of 1/Product_{m>=1} (1 - m*q^m)^29.

The programs for A022753, there is no canonical definition to state claims against.
-/

/-! ## A022753.P5803124551576329794

`A297328(eq[59, A099375(n)])`
-/

namespace A022753.P5803124551576329794
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  59

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297328 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A022753.P5803124551576329794

/-! ## A022753.P14457673696965903859

`A297328(eq[30, A004736(n+1)])`
-/

namespace A022753.P14457673696965903859
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  30

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297328 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A022753.P14457673696965903859

/-!
# A022754: Expansion of 1/Product_{m>=1} (1 - m*q^m)^30.

The programs for A022754, there is no canonical definition to state claims against.
-/

/-! ## A022754.P220001011616476572

`A297328(eq[31, A193739(n)])`
-/

namespace A022754.P220001011616476572
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  31

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297328 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A022754.P220001011616476572

/-!
# A022755: Expansion of 1/Product_{m>=1} (1 - m*q^m)^31.

The programs for A022755, there is no canonical definition to state claims against.
-/

/-! ## A022755.P4547835747002762777

`A297328(eq[32, A004736(n+1)])`
-/

namespace A022755.P4547835747002762777
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  32

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297328 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A022755.P4547835747002762777

/-!
# A022756: Expansion of 1/Product_{m>=1} (1 - m*q^m)^32.

The programs for A022756, there is no canonical definition to state claims against.
-/

/-! ## A022756.P8179214821493083855

`A297328(eq[32, A025581(n)])`
-/

namespace A022756.P8179214821493083855
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  32

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297328 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A022756.P8179214821493083855

/-!
# A022757: n-th 4k+1 prime plus n-th 4k+3 prime.

The programs for A022757, the canonical program `A022757.P13043222127189136114` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022757 has offset 1).

The definition of A022757 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002144, A002145, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A022757.P13043222127189136114

`A002144(n+1)+A002145(n+1)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A022757

/-- `A002144(n+1)+A002145(n+1)` -/
def P13043222127189136114.Spec : Prop :=
  ∀ n, P13043222127189136114.a n = A022757 (n + 1)

theorem P13043222127189136114.correct : P13043222127189136114.Spec := by
  intro n
  simp only [A022757, Nat.add_sub_cancel]

end A022757

/-! ## A022757.P1143767405425652916

`p?[4*n+1]+p?[4*n-1]`
-/

namespace A022757.P1143767405425652916
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ) + f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

end

end A022757.P1143767405425652916

namespace A022757

/-- `p?[4*n+1]+p?[4*n-1]` -/
def P1143767405425652916.Spec : Prop :=
  ∀ n, P1143767405425652916.a n = A022757 (n + 1)

end A022757

/-! ## A022757.P13355438483247019331

`4*A022758(n+1)`
-/

namespace A022757.P13355438483247019331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A022758 (n + 1)

end

end A022757.P13355438483247019331

namespace A022757

/-- `4*A022758(n+1)` -/
def P13355438483247019331.Spec : Prop :=
  ∀ n, P13355438483247019331.a n = A022757 (n + 1)

end A022757

/-! ## A022757.P1472495929418570924

`A152680(n+1)+A090658(n+1)`
-/

namespace A022757.P1472495929418570924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152680 (n + 1) + A090658 (n + 1)

end

end A022757.P1472495929418570924

namespace A022757

/-- `A152680(n+1)+A090658(n+1)` -/
def P1472495929418570924.Spec : Prop :=
  ∀ n, P1472495929418570924.a n = A022757 (n + 1)

end A022757

/-! ## A022757.P3167886319797999093

`A002145(n+1)+sqrt(A080109(n+1))`
-/

namespace A022757.P3167886319797999093
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A002145 (n + 1) : ℝ) + Real.sqrt (A080109 (n + 1) : ℝ)

end

end A022757.P3167886319797999093

namespace A022757

/-- `A002145(n+1)+sqrt(A080109(n+1))` -/
def P3167886319797999093.Spec : Prop :=
  ∀ n, P3167886319797999093.a n = (A022757 (n + 1) : ℝ)

end A022757

/-! ## A022757.P8376151185503275113

`A002144(n+1)+sqrt(A087691(n+1))`
-/

namespace A022757.P8376151185503275113
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A002144 (n + 1) : ℝ) + Real.sqrt (A087691 (n + 1) : ℝ)

end

end A022757.P8376151185503275113

namespace A022757

/-- `A002144(n+1)+sqrt(A087691(n+1))` -/
def P8376151185503275113.Spec : Prop :=
  ∀ n, P8376151185503275113.a n = (A022757 (n + 1) : ℝ)

end A022757

/-! ## A022757.P9361115635256746046

`A002145(n+1)+A152680(n+1)+1`
-/

namespace A022757.P9361115635256746046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002145 (n + 1) + (A152680 (n + 1) + 1)

end

end A022757.P9361115635256746046

namespace A022757

/-- `A002145(n+1)+A152680(n+1)+1` -/
def P9361115635256746046.Spec : Prop :=
  ∀ n, P9361115635256746046.a n = A022757 (n + 1)

end A022757

/-! ## A022757.P12111689487279628422

`A102261(n+1)+2*A002145(n+1)`
-/

namespace A022757.P12111689487279628422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102261 (n + 1) + 2 * A002145 (n + 1)

end

end A022757.P12111689487279628422

namespace A022757

/-- `A102261(n+1)+2*A002145(n+1)` -/
def P12111689487279628422.Spec : Prop :=
  ∀ n, P12111689487279628422.a n = A022757 (n + 1)

end A022757

/-! ## A022757.P18212444069482912230

`A339900(2*n+1)+A002144(n+1)`
-/

namespace A022757.P18212444069482912230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339900 (2 * n + 1) + A002144 (n + 1)

end

end A022757.P18212444069482912230

namespace A022757

/-- `A339900(2*n+1)+A002144(n+1)` -/
def P18212444069482912230.Spec : Prop :=
  ∀ n, P18212444069482912230.a n = A022757 (n + 1)

end A022757

/-! ## A022757.P11524045771899259673

`2*A002144(n+1)-A102261(n+1)`
-/

namespace A022757.P11524045771899259673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A002144 (n + 1) - A102261 (n + 1)

end

end A022757.P11524045771899259673

namespace A022757

/-- `2*A002144(n+1)-A102261(n+1)` -/
def P11524045771899259673.Spec : Prop :=
  ∀ n, P11524045771899259673.a n = A022757 (n + 1)

end A022757

/-! ## A022757.P11676586674951887682

`A002144(n+1)+A190105(n+1)+A005099(n+1)`
-/

namespace A022757.P11676586674951887682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (n + 1) + (A190105 (n + 1) + A005099 (n + 1))

end

end A022757.P11676586674951887682

namespace A022757

/-- `A002144(n+1)+A190105(n+1)+A005099(n+1)` -/
def P11676586674951887682.Spec : Prop :=
  ∀ n, P11676586674951887682.a n = A022757 (n + 1)

end A022757

/-! ## A022757.P3125578052022061172

`A002144(n+1)+A048630(n+1)/A002144(n+1)`
-/

namespace A022757.P3125578052022061172
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002144 (n + 1) : ℚ) + (A048630 (n + 1) : ℚ) / (A002144 (n + 1) : ℚ)

end

end A022757.P3125578052022061172

namespace A022757

/-- `A002144(n+1)+A048630(n+1)/A002144(n+1)` -/
def P3125578052022061172.Spec : Prop :=
  ∀ n, P3125578052022061172.a n = (A022757 (n + 1) : ℚ)

end A022757

/-! ## A022757.P4387871627420917631

`A002145(n+1)+A048630(n+1)/A002145(n+1)`
-/

namespace A022757.P4387871627420917631
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002145 (n + 1) : ℚ) + (A048630 (n + 1) : ℚ) / (A002145 (n + 1) : ℚ)

end

end A022757.P4387871627420917631

namespace A022757

/-- `A002145(n+1)+A048630(n+1)/A002145(n+1)` -/
def P4387871627420917631.Spec : Prop :=
  ∀ n, P4387871627420917631.a n = (A022757 (n + 1) : ℚ)

end A022757

/-! ## A022757.P17450136114834020598

`A002145(n+1)+A171555(n+1)/A005098(n+1)`
-/

namespace A022757.P17450136114834020598
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002145 (n + 1) : ℚ) + (A171555 (n + 1) : ℚ) / (A005098 (n + 1) : ℚ)

end

end A022757.P17450136114834020598

namespace A022757

/-- `A002145(n+1)+A171555(n+1)/A005098(n+1)` -/
def P17450136114834020598.Spec : Prop :=
  ∀ n, P17450136114834020598.a n = (A022757 (n + 1) : ℚ)

end A022757

/-! ## A022757.P10733793165788492824

`A002313(n+2)+p?[4*n-1]`
-/

namespace A022757.P10733793165788492824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002313 (n + 2) + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A022757.P10733793165788492824

namespace A022757

/-- `A002313(n+2)+p?[4*n-1]` -/
def P10733793165788492824.Spec : Prop :=
  ∀ n, P10733793165788492824.a n = A022757 (n + 1)

end A022757

/-! ## A022757.P9776718380478509101

`A002313(n+2)+A002145(n+1)`
-/

namespace A022757.P9776718380478509101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002313 (n + 2) + A002145 (n + 1)

end

end A022757.P9776718380478509101

namespace A022757

/-- `A002313(n+2)+A002145(n+1)` -/
def P9776718380478509101.Spec : Prop :=
  ∀ n, P9776718380478509101.a n = A022757 (n + 1)

end A022757

/-! ## A022757.P11434414909926477383

`A045326(n+2)+A002144(n+1)`
-/

namespace A022757.P11434414909926477383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045326 (n + 2) + A002144 (n + 1)

end

end A022757.P11434414909926477383

namespace A022757

/-- `A045326(n+2)+A002144(n+1)` -/
def P11434414909926477383.Spec : Prop :=
  ∀ n, P11434414909926477383.a n = A022757 (n + 1)

end A022757

/-! ## A022757.P14489300091039413732

`A280084(n+2)+A002145(n+1)`
-/

namespace A022757.P14489300091039413732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280084 (n + 2) + A002145 (n + 1)

end

end A022757.P14489300091039413732

namespace A022757

/-- `A280084(n+2)+A002145(n+1)` -/
def P14489300091039413732.Spec : Prop :=
  ∀ n, P14489300091039413732.a n = A022757 (n + 1)

end A022757

/-! ## A022757.P3757664951701230082

`A045326(n+2)+A002313(n+2)`
-/

namespace A022757.P3757664951701230082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045326 (n + 2) + A002313 (n + 2)

end

end A022757.P3757664951701230082

namespace A022757

/-- `A045326(n+2)+A002313(n+2)` -/
def P3757664951701230082.Spec : Prop :=
  ∀ n, P3757664951701230082.a n = A022757 (n + 1)

end A022757

/-! ## A022757.P179688736106183228

`A002145(n+1)+A048628(n+1)/A002145(n+2)`
-/

namespace A022757.P179688736106183228
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002145 (n + 1) : ℚ) + (A048628 (n + 1) : ℚ) / (A002145 (n + 2) : ℚ)

end

end A022757.P179688736106183228

namespace A022757

/-- `A002145(n+1)+A048628(n+1)/A002145(n+2)` -/
def P179688736106183228.Spec : Prop :=
  ∀ n, P179688736106183228.a n = (A022757 (n + 1) : ℚ)

end A022757

/-!
# A022758: (n-th 4k+1 prime plus n-th 4k+3 prime)/4.

The programs for A022758, the canonical program `A022758.P3596448552410962417` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022758 has offset 1).

The definition of A022758 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A022758.P15657802006118015695

`A022757(n+1)/4`
-/

namespace A022758.P15657802006118015695
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A022757 (n + 1) : ℚ) / 4

end

end A022758.P15657802006118015695

namespace A022758

/-- `A022757(n+1)/4` -/
def P15657802006118015695.Spec : Prop :=
  ∀ n, P15657802006118015695.a n = (A022758 (n + 1) : ℚ)

end A022758

/-! ## A022758.P3596448552410962417

`A005099(n+1)+floor(p?[2*n+2*n+1]/4)`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A022758

/-- `A005099(n+1)+floor(p?[2*n+2*n+1]/4)` -/
def P3596448552410962417.Spec : Prop :=
  ∀ n, P3596448552410962417.a n = A022758 (n + 1)

theorem P3596448552410962417.correct : P3596448552410962417.Spec := by
  intro n
  simp only [A022758, Nat.add_sub_cancel]

end A022758

/-! ## A022758.P3623121976118906413

`floor(p?[2*n+2*n+1]/4)+A095278(n+1)+1`
-/

namespace A022758.P3623121976118906413
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℚ) / 4⌋ + (A095278 (n + 1) + 1)

end

end A022758.P3623121976118906413

namespace A022758

/-- `floor(p?[2*n+2*n+1]/4)+A095278(n+1)+1` -/
def P3623121976118906413.Spec : Prop :=
  ∀ n, P3623121976118906413.a n = A022758 (n + 1)

end A022758

/-! ## A022758.P12079488492717951674

`A005099(n+1)+A005098(n+1)`
-/

namespace A022758.P12079488492717951674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005099 (n + 1) + A005098 (n + 1)

end

end A022758.P12079488492717951674

namespace A022758

/-- `A005099(n+1)+A005098(n+1)` -/
def P12079488492717951674.Spec : Prop :=
  ∀ n, P12079488492717951674.a n = A022758 (n + 1)

end A022758

/-! ## A022758.P10931425419883174226

`A156287(n+1)+A111215(n+1)`
-/

namespace A022758.P10931425419883174226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156287 (n + 1) + A111215 (n + 1)

end

end A022758.P10931425419883174226

namespace A022758

/-- `A156287(n+1)+A111215(n+1)` -/
def P10931425419883174226.Spec : Prop :=
  ∀ n, P10931425419883174226.a n = A022758 (n + 1)

end A022758

/-! ## A022758.P6770793125580106286

`A005098(n+1)+A095278(n+1)+1`
-/

namespace A022758.P6770793125580106286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005098 (n + 1) + (A095278 (n + 1) + 1)

end

end A022758.P6770793125580106286

namespace A022758

/-- `A005098(n+1)+A095278(n+1)+1` -/
def P6770793125580106286.Spec : Prop :=
  ∀ n, P6770793125580106286.a n = A022758 (n + 1)

end A022758

/-! ## A022758.P16007035807080812458

`A005099(n+1)+A111215(n+1)+1`
-/

namespace A022758.P16007035807080812458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005099 (n + 1) + (A111215 (n + 1) + 1)

end

end A022758.P16007035807080812458

namespace A022758

/-- `A005099(n+1)+A111215(n+1)+1` -/
def P16007035807080812458.Spec : Prop :=
  ∀ n, P16007035807080812458.a n = A022758 (n + 1)

end A022758

/-! ## A022758.P13797365062428248901

`A005098(n+1)+A089986(n+1)+2`
-/

namespace A022758.P13797365062428248901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005098 (n + 1) + (A089986 (n + 1) + 2)

end

end A022758.P13797365062428248901

namespace A022758

/-- `A005098(n+1)+A089986(n+1)+2` -/
def P13797365062428248901.Spec : Prop :=
  ∀ n, P13797365062428248901.a n = A022758 (n + 1)

end A022758

/-! ## A022758.P7346635516136964119

`A005098(n+1)+A156287(n+1)-1`
-/

namespace A022758.P7346635516136964119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005098 (n + 1) + (A156287 (n + 1) - 1)

end

end A022758.P7346635516136964119

namespace A022758

/-- `A005098(n+1)+A156287(n+1)-1` -/
def P7346635516136964119.Spec : Prop :=
  ∀ n, P7346635516136964119.a n = A022758 (n + 1)

end A022758

/-! ## A022758.P11624693389611654966

`A095278(n+1)+A111215(n+1)+2`
-/

namespace A022758.P11624693389611654966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095278 (n + 1) + (A111215 (n + 1) + 2)

end

end A022758.P11624693389611654966

namespace A022758

/-- `A095278(n+1)+A111215(n+1)+2` -/
def P11624693389611654966.Spec : Prop :=
  ∀ n, P11624693389611654966.a n = A022758 (n + 1)

end A022758

/-! ## A022758.P13327586789929155630

`A118480(n+1)+2*A005099(n+1)`
-/

namespace A022758.P13327586789929155630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118480 (n + 1) + 2 * A005099 (n + 1)

end

end A022758.P13327586789929155630

namespace A022758

/-- `A118480(n+1)+2*A005099(n+1)` -/
def P13327586789929155630.Spec : Prop :=
  ∀ n, P13327586789929155630.a n = A022758 (n + 1)

end A022758

/-! ## A022758.P10150306652563061379

`2*A005098(n+1)-A118480(n+1)`
-/

namespace A022758.P10150306652563061379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A005098 (n + 1) - A118480 (n + 1)

end

end A022758.P10150306652563061379

namespace A022758

/-- `2*A005098(n+1)-A118480(n+1)` -/
def P10150306652563061379.Spec : Prop :=
  ∀ n, P10150306652563061379.a n = A022758 (n + 1)

end A022758

/-! ## A022758.P17298738511999941038

`(A002145(n+1)+A002144(n+1))/4`
-/

namespace A022758.P17298738511999941038
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002145 (n + 1) + A002144 (n + 1) : ℚ) / 4

end

end A022758.P17298738511999941038

namespace A022758

/-- `(A002145(n+1)+A002144(n+1))/4` -/
def P17298738511999941038.Spec : Prop :=
  ∀ n, P17298738511999941038.a n = (A022758 (n + 1) : ℚ)

end A022758

/-! ## A022758.P6220663117572991794

`A104636(n+1)-A118480(n+1)`
-/

namespace A022758.P6220663117572991794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104636 (n + 1) - A118480 (n + 1)

end

end A022758.P6220663117572991794

namespace A022758

/-- `A104636(n+1)-A118480(n+1)` -/
def P6220663117572991794.Spec : Prop :=
  ∀ n, P6220663117572991794.a n = A022758 (n + 1)

end A022758

/-! ## A022758.P2658973316431482627

`A002265(A022757(n+1))`
-/

namespace A022758.P2658973316431482627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A022757 (n + 1)).toNat

end

end A022758.P2658973316431482627

namespace A022758

/-- `A002265(A022757(n+1))` -/
def P2658973316431482627.Spec : Prop :=
  ∀ n, P2658973316431482627.a n = A022758 (n + 1)

end A022758

/-!
# A022759: n-th 6k+1 prime plus n-th 6k+5 prime.

The programs for A022759, the canonical program `A022759.P8203283099031169534` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022759 has offset 1).

The definition of A022759 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002476, A007528, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A022759.P8203283099031169534

`A002476(n+1)+A007528(n+1)`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A022759

/-- `A002476(n+1)+A007528(n+1)` -/
def P8203283099031169534.Spec : Prop :=
  ∀ n, P8203283099031169534.a n = A022759 (n + 1)

theorem P8203283099031169534.correct : P8203283099031169534.Spec := by
  intro n
  simp only [A022759, Nat.add_sub_cancel]

end A022759

/-! ## A022759.P13556406687695208200

`p?[3*n+1]+p?[3*n+5]`
-/

namespace A022759.P13556406687695208200
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n + 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) + f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

end

end A022759.P13556406687695208200

namespace A022759

/-- `p?[3*n+1]+p?[3*n+5]` -/
def P13556406687695208200.Spec : Prop :=
  ∀ n, (P13556406687695208200.a n : ℤ) = A022759 (n + 1)

end A022759

/-! ## A022759.P13722797479890509513

`6*A022760(n+1)`
-/

namespace A022759.P13722797479890509513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A022760 (n + 1)

end

end A022759.P13722797479890509513

namespace A022759

/-- `6*A022760(n+1)` -/
def P13722797479890509513.Spec : Prop :=
  ∀ n, P13722797479890509513.a n = A022759 (n + 1)

end A022759

/-! ## A022759.P16749825708336197948

`A007528(n+1)+A112772(n+1)/2`
-/

namespace A022759.P16749825708336197948
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007528 (n + 1) : ℚ) + (A112772 (n + 1) : ℚ) / 2

end

end A022759.P16749825708336197948

namespace A022759

/-- `A007528(n+1)+A112772(n+1)/2` -/
def P16749825708336197948.Spec : Prop :=
  ∀ n, P16749825708336197948.a n = (A022759 (n + 1) : ℚ)

end A022759

/-! ## A022759.P2609902804483668040

`A002476(n+1)+A048629(n+1)/A002476(n+1)`
-/

namespace A022759.P2609902804483668040
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002476 (n + 1) : ℚ) + (A048629 (n + 1) : ℚ) / (A002476 (n + 1) : ℚ)

end

end A022759.P2609902804483668040

namespace A022759

/-- `A002476(n+1)+A048629(n+1)/A002476(n+1)` -/
def P2609902804483668040.Spec : Prop :=
  ∀ n, P2609902804483668040.a n = (A022759 (n + 1) : ℚ)

end A022759

/-! ## A022759.P12059951802103781150

`A007528(n+1)+A048629(n+1)/A007528(n+1)`
-/

namespace A022759.P12059951802103781150
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007528 (n + 1) : ℚ) + (A048629 (n + 1) : ℚ) / (A007528 (n + 1) : ℚ)

end

end A022759.P12059951802103781150

namespace A022759

/-- `A007528(n+1)+A048629(n+1)/A007528(n+1)` -/
def P12059951802103781150.Spec : Prop :=
  ∀ n, P12059951802103781150.a n = (A022759 (n + 1) : ℚ)

end A022759

/-! ## A022759.P15656975069226961819

`A007645(n+2)+or(1, p?[a(n-1)+6])` with `a(0)=5`
-/

namespace A022759.P15656975069226961819
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [5] fun n f1 =>
  f1 (n - 1) + 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007645 (n + 2) + (Nat.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)) : ℤ)

end

end A022759.P15656975069226961819

namespace A022759

/-- `A007645(n+2)+or(1, p?[a(n-1)+6])` -/
def P15656975069226961819.Spec : Prop :=
  ∀ n, P15656975069226961819.a n = A022759 (n + 1)

end A022759

/-! ## A022759.P14102823532060863695

`A123365(n+2)+or(1, p?[a(n-1)+6])` with `a(0)=5`
-/

namespace A022759.P14102823532060863695
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [5] fun n f1 =>
  f1 (n - 1) + 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123365 (n + 2) + (Nat.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)) : ℤ)

end

end A022759.P14102823532060863695

namespace A022759

/-- `A123365(n+2)+or(1, p?[a(n-1)+6])` -/
def P14102823532060863695.Spec : Prop :=
  ∀ n, P14102823532060863695.a n = A022759 (n + 1)

end A022759

/-! ## A022759.P6900714719193344129

`A003627(n+2)+A002476(n+1)`
-/

namespace A022759.P6900714719193344129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003627 (n + 2) + A002476 (n + 1)

end

end A022759.P6900714719193344129

namespace A022759

/-- `A003627(n+2)+A002476(n+1)` -/
def P6900714719193344129.Spec : Prop :=
  ∀ n, P6900714719193344129.a n = A022759 (n + 1)

end A022759

/-! ## A022759.P13949408158794926816

`A007645(n+2)+A007528(n+1)`
-/

namespace A022759.P13949408158794926816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007645 (n + 2) + A007528 (n + 1)

end

end A022759.P13949408158794926816

namespace A022759

/-- `A007645(n+2)+A007528(n+1)` -/
def P13949408158794926816.Spec : Prop :=
  ∀ n, P13949408158794926816.a n = A022759 (n + 1)

end A022759

/-! ## A022759.P13950785528717679079

`A045410(n+2)+A002476(n+1)`
-/

namespace A022759.P13950785528717679079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045410 (n + 2) + A002476 (n + 1)

end

end A022759.P13950785528717679079

namespace A022759

/-- `A045410(n+2)+A002476(n+1)` -/
def P13950785528717679079.Spec : Prop :=
  ∀ n, P13950785528717679079.a n = A022759 (n + 1)

end A022759

/-! ## A022759.P12056021515059662439

`A045375(n+2)+A007528(n+1)`
-/

namespace A022759.P12056021515059662439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045375 (n + 2) + A007528 (n + 1)

end

end A022759.P12056021515059662439

namespace A022759

/-- `A045375(n+2)+A007528(n+1)` -/
def P12056021515059662439.Spec : Prop :=
  ∀ n, P12056021515059662439.a n = A022759 (n + 1)

end A022759

/-! ## A022759.P9146971178773738957

`A123365(n+2)+A007528(n+1)`
-/

namespace A022759.P9146971178773738957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123365 (n + 2) + A007528 (n + 1)

end

end A022759.P9146971178773738957

namespace A022759

/-- `A123365(n+2)+A007528(n+1)` -/
def P9146971178773738957.Spec : Prop :=
  ∀ n, P9146971178773738957.a n = A022759 (n + 1)

end A022759

/-! ## A022759.P5288110278738421944

`A007645(n+2)+A003627(n+2)`
-/

namespace A022759.P5288110278738421944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007645 (n + 2) + A003627 (n + 2)

end

end A022759.P5288110278738421944

namespace A022759

/-- `A007645(n+2)+A003627(n+2)` -/
def P5288110278738421944.Spec : Prop :=
  ∀ n, P5288110278738421944.a n = A022759 (n + 1)

end A022759

/-! ## A022759.P11811538305335716644

`A045375(n+2)+A003627(n+2)`
-/

namespace A022759.P11811538305335716644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045375 (n + 2) + A003627 (n + 2)

end

end A022759.P11811538305335716644

namespace A022759

/-- `A045375(n+2)+A003627(n+2)` -/
def P11811538305335716644.Spec : Prop :=
  ∀ n, P11811538305335716644.a n = A022759 (n + 1)

end A022759

/-! ## A022759.P11770353418772692379

`A045410(n+2)+A007645(n+2)`
-/

namespace A022759.P11770353418772692379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045410 (n + 2) + A007645 (n + 2)

end

end A022759.P11770353418772692379

namespace A022759

/-- `A045410(n+2)+A007645(n+2)` -/
def P11770353418772692379.Spec : Prop :=
  ∀ n, P11770353418772692379.a n = A022759 (n + 1)

end A022759

/-! ## A022759.P5119808849471244196

`A045410(n+2)+A045375(n+2)`
-/

namespace A022759.P5119808849471244196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045410 (n + 2) + A045375 (n + 2)

end

end A022759.P5119808849471244196

namespace A022759

/-- `A045410(n+2)+A045375(n+2)` -/
def P5119808849471244196.Spec : Prop :=
  ∀ n, P5119808849471244196.a n = A022759 (n + 1)

end A022759

/-! ## A022759.P2317308145647646339

`A123365(n+2)+A003627(n+2)`
-/

namespace A022759.P2317308145647646339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123365 (n + 2) + A003627 (n + 2)

end

end A022759.P2317308145647646339

namespace A022759

/-- `A123365(n+2)+A003627(n+2)` -/
def P2317308145647646339.Spec : Prop :=
  ∀ n, P2317308145647646339.a n = A022759 (n + 1)

end A022759

/-! ## A022759.P5369434815210461196

`A007528(n+1)+A171715(n+2)+A007528(n+1)`
-/

namespace A022759.P5369434815210461196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007528 (n + 1) + (A171715 (n + 2) + A007528 (n + 1))

end

end A022759.P5369434815210461196

namespace A022759

/-- `A007528(n+1)+A171715(n+2)+A007528(n+1)` -/
def P5369434815210461196.Spec : Prop :=
  ∀ n, P5369434815210461196.a n = A022759 (n + 1)

end A022759

/-! ## A022759.P2299418168173658293

`A002476(n+1)+A002476(n+1)-A171715(n+2)`
-/

namespace A022759.P2299418168173658293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002476 (n + 1) + (A002476 (n + 1) - A171715 (n + 2))

end

end A022759.P2299418168173658293

namespace A022759

/-- `A002476(n+1)+A002476(n+1)-A171715(n+2)` -/
def P2299418168173658293.Spec : Prop :=
  ∀ n, P2299418168173658293.a n = A022759 (n + 1)

end A022759

/-!
# A022760: (n-th 6k+1 prime plus n-th 6k+5 prime)/6.

The programs for A022760, the canonical program `A022760.P12074805106371372305` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022760 has offset 1).

The definition of A022760 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A022760.P5642608751188934157

`A022759(n+1)/6`
-/

namespace A022760.P5642608751188934157
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A022759 (n + 1) : ℚ) / 6

end

end A022760.P5642608751188934157

namespace A022760

/-- `A022759(n+1)/6` -/
def P5642608751188934157.Spec : Prop :=
  ∀ n, P5642608751188934157.a n = (A022760 (n + 1) : ℚ)

end A022760

/-! ## A022760.P10281370555652277722

`A024899(n+1)+A024898(n+1)`
-/

namespace A022760.P10281370555652277722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024899 (n + 1) + A024898 (n + 1)

end

end A022760.P10281370555652277722

namespace A022760

/-- `A024899(n+1)+A024898(n+1)` -/
def P10281370555652277722.Spec : Prop :=
  ∀ n, P10281370555652277722.a n = A022760 (n + 1)

end A022760

/-! ## A022760.P12074805106371372305

`A153218(n+1)+A153134(n+1)`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A022760

/-- `A153218(n+1)+A153134(n+1)` -/
def P12074805106371372305.Spec : Prop :=
  ∀ n, P12074805106371372305.a n = A022760 (n + 1)

theorem P12074805106371372305.correct : P12074805106371372305.Spec := by
  intro n
  simp only [A022760, Nat.add_sub_cancel]

end A022760

/-! ## A022760.P10785789409242698933

`A024892(n+1)-A139394(n+1)`
-/

namespace A022760.P10785789409242698933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024892 (n + 1) - A139394 (n + 1)

end

end A022760.P10785789409242698933

namespace A022760

/-- `A024892(n+1)-A139394(n+1)` -/
def P10785789409242698933.Spec : Prop :=
  ∀ n, P10785789409242698933.a n = A022760 (n + 1)

end A022760

/-! ## A022760.P17359483085951449266

`A024899(n+1)+A059325(n+1)+1`
-/

namespace A022760.P17359483085951449266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024899 (n + 1) + (A059325 (n + 1) + 1)

end

end A022760.P17359483085951449266

namespace A022760

/-- `A024899(n+1)+A059325(n+1)+1` -/
def P17359483085951449266.Spec : Prop :=
  ∀ n, P17359483085951449266.a n = A022760 (n + 1)

end A022760

/-! ## A022760.P16879757074901011845

`A024898(n+1)+A153218(n+1)+1`
-/

namespace A022760.P16879757074901011845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024898 (n + 1) + (A153218 (n + 1) + 1)

end

end A022760.P16879757074901011845

namespace A022760

/-- `A024898(n+1)+A153218(n+1)+1` -/
def P16879757074901011845.Spec : Prop :=
  ∀ n, P16879757074901011845.a n = A022760 (n + 1)

end A022760

/-! ## A022760.P7966787376778265155

`A059325(n+1)+A153218(n+1)+2`
-/

namespace A022760.P7966787376778265155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059325 (n + 1) + (A153218 (n + 1) + 2)

end

end A022760.P7966787376778265155

namespace A022760

/-- `A059325(n+1)+A153218(n+1)+2` -/
def P7966787376778265155.Spec : Prop :=
  ∀ n, P7966787376778265155.a n = A022760 (n + 1)

end A022760

/-! ## A022760.P3808686893144508963

`A139394(n+1)+2*A024898(n+1)`
-/

namespace A022760.P3808686893144508963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139394 (n + 1) + 2 * A024898 (n + 1)

end

end A022760.P3808686893144508963

namespace A022760

/-- `A139394(n+1)+2*A024898(n+1)` -/
def P3808686893144508963.Spec : Prop :=
  ∀ n, P3808686893144508963.a n = A022760 (n + 1)

end A022760

/-! ## A022760.P8029485364266540895

`2*A024899(n+1)-A139394(n+1)`
-/

namespace A022760.P8029485364266540895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A024899 (n + 1) - A139394 (n + 1)

end

end A022760.P8029485364266540895

namespace A022760

/-- `2*A024899(n+1)-A139394(n+1)` -/
def P8029485364266540895.Spec : Prop :=
  ∀ n, P8029485364266540895.a n = A022760 (n + 1)

end A022760

/-! ## A022760.P3000524691215041

`(A007528(n+1)+A002476(n+1))/6`
-/

namespace A022760.P3000524691215041
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007528 (n + 1) + A002476 (n + 1) : ℚ) / 6

end

end A022760.P3000524691215041

namespace A022760

/-- `(A007528(n+1)+A002476(n+1))/6` -/
def P3000524691215041.Spec : Prop :=
  ∀ n, P3000524691215041.a n = (A022760 (n + 1) : ℚ)

end A022760

/-! ## A022760.P16337039292606841633

`A008615(A022759(n+1))`
-/

namespace A022760.P16337039292606841633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (A022759 (n + 1)).toNat

end

end A022760.P16337039292606841633

namespace A022760

/-- `A008615(A022759(n+1))` -/
def P16337039292606841633.Spec : Prop :=
  ∀ n, P16337039292606841633.a n = A022760 (n + 1)

end A022760

/-! ## A022760.P8957284943274448886

`A103221(A002476(n+1)+A007528(n+1)+1)`
-/

namespace A022760.P8957284943274448886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 (A002476 (n + 1) + (A007528 (n + 1) + 1)).toNat

end

end A022760.P8957284943274448886

namespace A022760

/-- `A103221(A002476(n+1)+A007528(n+1)+1)` -/
def P8957284943274448886.Spec : Prop :=
  ∀ n, P8957284943274448886.a n = A022760 (n + 1)

end A022760

/-!
# A022761: n-th 8k+1 prime plus n-th 8k+7 prime.

The programs for A022761, the canonical program `A022761.P14430388532223490867` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022761 has offset 1).

The definition of A022761 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A022761.P14430388532223490867

`p?[8*n+1]+p?[8*n-1]`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A022761

/-- `p?[8*n+1]+p?[8*n-1]` -/
def P14430388532223490867.Spec : Prop :=
  ∀ n, P14430388532223490867.a n = A022761 (n + 1)

theorem P14430388532223490867.correct : P14430388532223490867.Spec := by
  intro n
  simp only [A022761, Nat.add_sub_cancel]

end A022761

/-! ## A022761.P15742884495822951643

`8*A022762(n+1)`
-/

namespace A022761.P15742884495822951643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A022762 (n + 1)

end

end A022761.P15742884495822951643

namespace A022761

/-- `8*A022762(n+1)` -/
def P15742884495822951643.Spec : Prop :=
  ∀ n, P15742884495822951643.a n = A022761 (n + 1)

end A022761

/-! ## A022761.P8377357367006240470

`A007522(n+1)+p?[8*n+1]`
-/

namespace A022761.P8377357367006240470
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007522 (n + 1) + (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ)

end

end A022761.P8377357367006240470

namespace A022761

/-- `A007522(n+1)+p?[8*n+1]` -/
def P8377357367006240470.Spec : Prop :=
  ∀ n, P8377357367006240470.a n = A022761 (n + 1)

end A022761

/-! ## A022761.P1624375486568116190

`or(1, p?[a(n-1)+8])+A186304(n+1)+2` with `a(0)=1`
-/

namespace A022761.P1624375486568116190
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - 1) + 8

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)) : ℤ) + (A186304 (n + 1) + 2)

end

end A022761.P1624375486568116190

namespace A022761

/-- `or(1, p?[a(n-1)+8])+A186304(n+1)+2` -/
def P1624375486568116190.Spec : Prop :=
  ∀ n, P1624375486568116190.a n = A022761 (n + 1)

end A022761

/-! ## A022761.P13344237508692349900

`A007522(n+1)+A007519(n+1)`
-/

namespace A022761.P13344237508692349900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007522 (n + 1) + A007519 (n + 1)

end

end A022761.P13344237508692349900

namespace A022761

/-- `A007522(n+1)+A007519(n+1)` -/
def P13344237508692349900.Spec : Prop :=
  ∀ n, P13344237508692349900.a n = A022761 (n + 1)

end A022761

/-! ## A022761.P8156306447830170232

`8*(A005123(n+1)+A005122(n+1))`
-/

namespace A022761.P8156306447830170232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * (A005123 (n + 1) + A005122 (n + 1))

end

end A022761.P8156306447830170232

namespace A022761

/-- `8*(A005123(n+1)+A005122(n+1))` -/
def P8156306447830170232.Spec : Prop :=
  ∀ n, P8156306447830170232.a n = A022761 (n + 1)

end A022761

/-! ## A022761.P2851334987078640227

`A007522(n+1)+A186294(n+1)+A186293(n+1)`
-/

namespace A022761.P2851334987078640227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007522 (n + 1) + (A186294 (n + 1) + A186293 (n + 1))

end

end A022761.P2851334987078640227

namespace A022761

/-- `A007522(n+1)+A186294(n+1)+A186293(n+1)` -/
def P2851334987078640227.Spec : Prop :=
  ∀ n, P2851334987078640227.a n = A022761 (n + 1)

end A022761

/-! ## A022761.P8404554640434864581

`A007519(n+1)+A186303(n+1)+A186302(n+1)`
-/

namespace A022761.P8404554640434864581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007519 (n + 1) + (A186303 (n + 1) + A186302 (n + 1))

end

end A022761.P8404554640434864581

namespace A022761

/-- `A007519(n+1)+A186303(n+1)+A186302(n+1)` -/
def P8404554640434864581.Spec : Prop :=
  ∀ n, P8404554640434864581.a n = A022761 (n + 1)

end A022761

/-! ## A022761.P8217355585513905975

`A045382(n+2)+A007519(n+1)`
-/

namespace A022761.P8217355585513905975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045382 (n + 2) + A007519 (n + 1)

end

end A022761.P8217355585513905975

namespace A022761

/-- `A045382(n+2)+A007519(n+1)` -/
def P8217355585513905975.Spec : Prop :=
  ∀ n, P8217355585513905975.a n = A022761 (n + 1)

end A022761

/-! ## A022761.P6764860617187410148

`record[A020639(4*(2*n+1)+3)]+A186295(n+1)+2`
-/

namespace A022761.P6764860617187410148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (4 * (2 * n + 1) + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + (A186295 (n + 1) + 2)

end

end A022761.P6764860617187410148

namespace A022761

/-- `record[A020639(4*(2*n+1)+3)]+A186295(n+1)+2` -/
def P6764860617187410148.Spec : Prop :=
  ∀ n, P6764860617187410148.a n = A022761 (n + 1)

end A022761

/-! ## A022761.P6253628122204639623

`A007519(n+1)+A004771(A139487(n+1))`
-/

namespace A022761.P6253628122204639623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007519 (n + 1) + A004771 (A139487 (n + 1)).toNat

end

end A022761.P6253628122204639623

namespace A022761

/-- `A007519(n+1)+A004771(A139487(n+1))` -/
def P6253628122204639623.Spec : Prop :=
  ∀ n, P6253628122204639623.a n = A022761 (n + 1)

end A022761

/-! ## A022761.P17357500151640705046

`A007519(n+1)+p?[A004215(n+1)]`
-/

namespace A022761.P17357500151640705046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004215 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007519 (n + 1) + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A022761.P17357500151640705046

namespace A022761

/-- `A007519(n+1)+p?[A004215(n+1)]` -/
def P17357500151640705046.Spec : Prop :=
  ∀ n, P17357500151640705046.a n = A022761 (n + 1)

end A022761

/-! ## A022761.P9923942205905651996

`A008590(A022762(n+1))`
-/

namespace A022761.P9923942205905651996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008590 (A022762 (n + 1)).toNat

end

end A022761.P9923942205905651996

namespace A022761

/-- `A008590(A022762(n+1))` -/
def P9923942205905651996.Spec : Prop :=
  ∀ n, P9923942205905651996.a n = A022761 (n + 1)

end A022761

/-! ## A022761.P6784924212696433096

`A006530(A178389(n+1))+A186295(n+1)+2`
-/

namespace A022761.P6784924212696433096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A178389 (n + 1)).toNat + (A186295 (n + 1) + 2)

end

end A022761.P6784924212696433096

namespace A022761

/-- `A006530(A178389(n+1))+A186295(n+1)+2` -/
def P6784924212696433096.Spec : Prop :=
  ∀ n, P6784924212696433096.a n = A022761 (n + 1)

end A022761

/-! ## A022761.P7174752058700989906

`record[A014963(8*n+7)]+A186295(n+1)+2`
-/

namespace A022761.P7174752058700989906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (8 * n + 7)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + (A186295 (n + 1) + 2)

end

end A022761.P7174752058700989906

namespace A022761

/-- `record[A014963(8*n+7)]+A186295(n+1)+2` -/
def P7174752058700989906.Spec : Prop :=
  ∀ n, P7174752058700989906.a n = A022761 (n + 1)

end A022761

/-!
# A022762: (n-th 8k+1 prime plus n-th 8k+7 prime)/8.

The programs for A022762, the canonical program `A022762.P18043620693348096952` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022762 has offset 1).

The definition of A022762 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A022762.P2824766160114963429

`A022761(n+1)/8`
-/

namespace A022762.P2824766160114963429
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A022761 (n + 1) : ℚ) / 8

end

end A022762.P2824766160114963429

namespace A022762

/-- `A022761(n+1)/8` -/
def P2824766160114963429.Spec : Prop :=
  ∀ n, P2824766160114963429.a n = (A022762 (n + 1) : ℚ)

end A022762

/-! ## A022762.P18043620693348096952

`A005123(n+1)+A005122(n+1)`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A022762

/-- `A005123(n+1)+A005122(n+1)` -/
def P18043620693348096952.Spec : Prop :=
  ∀ n, P18043620693348096952.a n = A022762 (n + 1)

theorem P18043620693348096952.correct : P18043620693348096952.Spec := by
  intro n
  simp only [A022762, Nat.add_sub_cancel]

end A022762

/-! ## A022762.P3699986915995889933

`A153766(n+1)+A153762(n+1)`
-/

namespace A022762.P3699986915995889933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153766 (n + 1) + A153762 (n + 1)

end

end A022762.P3699986915995889933

namespace A022762

/-- `A153766(n+1)+A153762(n+1)` -/
def P3699986915995889933.Spec : Prop :=
  ∀ n, P3699986915995889933.a n = A022762 (n + 1)

end A022762

/-! ## A022762.P16220567870974553526

`A005123(n+1)+A139487(n+1)+1`
-/

namespace A022762.P16220567870974553526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005123 (n + 1) + (A139487 (n + 1) + 1)

end

end A022762.P16220567870974553526

namespace A022762

/-- `A005123(n+1)+A139487(n+1)+1` -/
def P16220567870974553526.Spec : Prop :=
  ∀ n, P16220567870974553526.a n = A022762 (n + 1)

end A022762

/-! ## A022762.P14557081905358671227

`A005123(n+1)+A153766(n+1)-1`
-/

namespace A022762.P14557081905358671227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005123 (n + 1) + (A153766 (n + 1) - 1)

end

end A022762.P14557081905358671227

namespace A022762

/-- `A005123(n+1)+A153766(n+1)-1` -/
def P14557081905358671227.Spec : Prop :=
  ∀ n, P14557081905358671227.a n = A022762 (n + 1)

end A022762

/-! ## A022762.P8725937805883204290

`(A007522(n+1)+A007519(n+1))/8`
-/

namespace A022762.P8725937805883204290
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007522 (n + 1) + A007519 (n + 1) : ℚ) / 8

end

end A022762.P8725937805883204290

namespace A022762

/-- `(A007522(n+1)+A007519(n+1))/8` -/
def P8725937805883204290.Spec : Prop :=
  ∀ n, P8725937805883204290.a n = (A022762 (n + 1) : ℚ)

end A022762

/-! ## A022762.P211565304883574578

`A153766(n+1)+lt[A000005(8*n+9), 3]`
-/

namespace A022762.P211565304883574578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (8 * n + 9)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153766 (n + 1) + (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n : ℤ)

end

end A022762.P211565304883574578

namespace A022762

/-- `A153766(n+1)+lt[A000005(8*n+9), 3]` -/
def P211565304883574578.Spec : Prop :=
  ∀ n, P211565304883574578.a n = A022762 (n + 1)

end A022762

/-! ## A022762.P7121604556013390661

`A153766(n+1)+eq[2, A000005(8*(n+1)+1)]`
-/

namespace A022762.P7121604556013390661
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (8 * (n + 1) + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153766 (n + 1) + (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ)

end

end A022762.P7121604556013390661

namespace A022762

/-- `A153766(n+1)+eq[2, A000005(8*(n+1)+1)]` -/
def P7121604556013390661.Spec : Prop :=
  ∀ n, P7121604556013390661.a n = A022762 (n + 1)

end A022762

/-! ## A022762.P16826799980717121304

`A153766(n+1)+eq[1, A001222(8*n+1)]-1`
-/

namespace A022762.P16826799980717121304
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (8 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153766 (n + 1) + ((SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - 1)

end

end A022762.P16826799980717121304

namespace A022762

/-- `A153766(n+1)+eq[1, A001222(8*n+1)]-1` -/
def P16826799980717121304.Spec : Prop :=
  ∀ n, P16826799980717121304.a n = A022762 (n + 1)

end A022762

/-! ## A022762.P9179802112779127573

`lt[A000005(8*n+9), 3]+A139487(n+1)+2`
-/

namespace A022762.P9179802112779127573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (8 * n + 9)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n : ℤ) + (A139487 (n + 1) + 2)

end

end A022762.P9179802112779127573

namespace A022762

/-- `lt[A000005(8*n+9), 3]+A139487(n+1)+2` -/
def P9179802112779127573.Spec : Prop :=
  ∀ n, P9179802112779127573.a n = A022762 (n + 1)

end A022762

/-! ## A022762.P16640324091497729120

`lt[A000005(8*n+9), 3]+lt[A001222(8*n+7), 2]+2`
-/

namespace A022762.P16640324091497729120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (8 * n + 9)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (8 * n + 7)

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + (SequenceMachineLib.nth (fun j => f3 j < (f4 j : ℤ)) n + 2)

end

end A022762.P16640324091497729120

namespace A022762

/-- `lt[A000005(8*n+9), 3]+lt[A001222(8*n+7), 2]+2` -/
def P16640324091497729120.Spec : Prop :=
  ∀ n, (P16640324091497729120.a n : ℤ) = A022762 (n + 1)

end A022762

/-! ## A022762.P15043014452165307693

`lt[A000005(8*n+9), 3]+lt[A000005(8*n+7)+2, 5]+2`
-/

namespace A022762.P15043014452165307693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (8 * n + 9)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (8 * n + 7) + 2

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + (SequenceMachineLib.nth (fun j => f3 j < (f4 j : ℤ)) n + 2)

end

end A022762.P15043014452165307693

namespace A022762

/-- `lt[A000005(8*n+9), 3]+lt[A000005(8*n+7)+2, 5]+2` -/
def P15043014452165307693.Spec : Prop :=
  ∀ n, (P15043014452165307693.a n : ℤ) = A022762 (n + 1)

end A022762

/-! ## A022762.P11144410506680893743

`lt[A001222(9*(n+1)-n), 2]+lt[A001222(8*n+7), 2]+2`
-/

namespace A022762.P11144410506680893743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (9 * (n + 1) - n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (8 * n + 7)

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + (SequenceMachineLib.nth (fun j => f3 j < (f4 j : ℤ)) n + 2)

end

end A022762.P11144410506680893743

namespace A022762

/-- `lt[A001222(9*(n+1)-n), 2]+lt[A001222(8*n+7), 2]+2` -/
def P11144410506680893743.Spec : Prop :=
  ∀ n, (P11144410506680893743.a n : ℤ) = A022762 (n + 1)

end A022762

/-! ## A022762.P4061755881075590653

`eq[1, A001222(2*4*(n+1)+1)]+lt[A001222(8*n+7), 2]+2`
-/

namespace A022762.P4061755881075590653
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (2 * (4 * (n + 1)) + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (8 * n + 7)

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + (SequenceMachineLib.nth (fun j => f3 j < (f4 j : ℤ)) n + 2)

end

end A022762.P4061755881075590653

namespace A022762

/-- `eq[1, A001222(2*4*(n+1)+1)]+lt[A001222(8*n+7), 2]+2` -/
def P4061755881075590653.Spec : Prop :=
  ∀ n, (P4061755881075590653.a n : ℤ) = A022762 (n + 1)

end A022762

/-! ## A022762.P2308158159567372894

`lt[5*(n+2), A006530(8*(n+1)+1)]+lt[A001222(8*n+7), 2]+2`
-/

namespace A022762.P2308158159567372894
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (8 * (n + 1) + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (8 * n + 7)

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + (SequenceMachineLib.nth (fun j => f3 j < (f4 j : ℤ)) n + 2)

end

end A022762.P2308158159567372894

namespace A022762

/-- `lt[5*(n+2), A006530(8*(n+1)+1)]+lt[A001222(8*n+7), 2]+2` -/
def P2308158159567372894.Spec : Prop :=
  ∀ n, (P2308158159567372894.a n : ℤ) = A022762 (n + 1)

end A022762

/-! ## A022762.P124585396742515363

`(2*A109613(A186303(n+1)/2)+2)/4+eq[1, A001222(8*n+1)]-1`
-/

namespace A022762.P124585396742515363
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (8 * n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * A109613 (SequenceMachineLib.roundAway ((A186303 (n + 1) : ℚ) / 2)).toNat + 2 : ℚ) / 4 + ((SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - 1 : ℚ)

end

end A022762.P124585396742515363

namespace A022762

/-- `(2*A109613(A186303(n+1)/2)+2)/4+eq[1, A001222(8*n+1)]-1` -/
def P124585396742515363.Spec : Prop :=
  ∀ n, P124585396742515363.a n = (A022762 (n + 1) : ℚ)

end A022762

/-! ## A022762.P4562415586929324613

`(2*A109613(A186303(n+1)/2)+2)/4+lt[4*n+1, A006530(8*n+1)]-1`
-/

namespace A022762.P4562415586929324613
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (8 * n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * A109613 (SequenceMachineLib.roundAway ((A186303 (n + 1) : ℚ) / 2)).toNat + 2 : ℚ) / 4 + ((SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n : ℤ) - 1 : ℚ)

end

end A022762.P4562415586929324613

namespace A022762

/-- `(2*A109613(A186303(n+1)/2)+2)/4+lt[4*n+1, A006530(8*n+1)]-1` -/
def P4562415586929324613.Spec : Prop :=
  ∀ n, P4562415586929324613.a n = (A022762 (n + 1) : ℚ)

end A022762

/-! ## A022762.P9634772125174783285

`A006085(A022761(n+1))`
-/

namespace A022762.P9634772125174783285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006085 (A022761 (n + 1)).toNat

end

end A022762.P9634772125174783285

namespace A022762

/-- `A006085(A022761(n+1))` -/
def P9634772125174783285.Spec : Prop :=
  ∀ n, P9634772125174783285.a n = A022762 (n + 1)

end A022762

/-! ## A022762.P12259817358624625966

`lt[A306927(Δ[(2*n+1)²]+1), 3]+A139487(n+1)+2`
-/

namespace A022762.P12259817358624625966
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306927 ((f2 (n + 1) : ℤ) - (f2 n : ℤ) + 1).toNat

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n : ℤ) + (A139487 (n + 1) + 2)

end

end A022762.P12259817358624625966

namespace A022762

/-- `lt[A306927(Δ[(2*n+1)²]+1), 3]+A139487(n+1)+2` -/
def P12259817358624625966.Spec : Prop :=
  ∀ n, P12259817358624625966.a n = A022762 (n + 1)

end A022762

/-! ## A022762.P5639051792123211854

`lt[n+3, A014963(8*n+9)]+lt[A001222(8*n+7), 2]+2`
-/

namespace A022762.P5639051792123211854
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (8 * n + 9)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (8 * n + 7)

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + (SequenceMachineLib.nth (fun j => f3 j < (f4 j : ℤ)) n + 2)

end

end A022762.P5639051792123211854

namespace A022762

/-- `lt[n+3, A014963(8*n+9)]+lt[A001222(8*n+7), 2]+2` -/
def P5639051792123211854.Spec : Prop :=
  ∀ n, (P5639051792123211854.a n : ℤ) = A022762 (n + 1)

end A022762

/-!
# A022763: n-th 8k+3 prime plus n-th 8k+5 prime.

The programs for A022763, the canonical program `A022763.P11171846536189561779` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022763 has offset 1).

The definition of A022763 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007520, A007521, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A022763.P11171846536189561779

`A007520(n+1)+A007521(n+1)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A022763

/-- `A007520(n+1)+A007521(n+1)` -/
def P11171846536189561779.Spec : Prop :=
  ∀ n, P11171846536189561779.a n = A022763 (n + 1)

theorem P11171846536189561779.correct : P11171846536189561779.Spec := by
  intro n
  simp only [A022763, Nat.add_sub_cancel]

end A022763

/-! ## A022763.P6809373682510812626

`p?[8*n+3]+p?[8*n-3]`
-/

namespace A022763.P6809373682510812626
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * n + 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (8 * n : ℤ) - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ) + f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

end

end A022763.P6809373682510812626

namespace A022763

/-- `p?[8*n+3]+p?[8*n-3]` -/
def P6809373682510812626.Spec : Prop :=
  ∀ n, P6809373682510812626.a n = A022763 (n + 1)

end A022763

/-! ## A022763.P12008294471574850459

`8*A022764(n+1)`
-/

namespace A022763.P12008294471574850459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A022764 (n + 1)

end

end A022763.P12008294471574850459

namespace A022763

/-- `8*A022764(n+1)` -/
def P12008294471574850459.Spec : Prop :=
  ∀ n, P12008294471574850459.a n = A022763 (n + 1)

end A022763

/-! ## A022763.P2885345244252981095

`8*(A005125(n+1)+A005124(n+1))`
-/

namespace A022763.P2885345244252981095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * (A005125 (n + 1) + A005124 (n + 1))

end

end A022763.P2885345244252981095

namespace A022763

/-- `8*(A005125(n+1)+A005124(n+1))` -/
def P2885345244252981095.Spec : Prop :=
  ∀ n, P2885345244252981095.a n = A022763 (n + 1)

end A022763

/-! ## A022763.P14033099489351806963

`A045339(n+2)+A007521(n+1)`
-/

namespace A022763.P14033099489351806963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045339 (n + 2) + A007521 (n + 1)

end

end A022763.P14033099489351806963

namespace A022763

/-- `A045339(n+2)+A007521(n+1)` -/
def P14033099489351806963.Spec : Prop :=
  ∀ n, P14033099489351806963.a n = A022763 (n + 1)

end A022763

/-! ## A022763.P7576512192146004832

`A045366(n+2)+A007520(n+1)`
-/

namespace A022763.P7576512192146004832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045366 (n + 2) + A007520 (n + 1)

end

end A022763.P7576512192146004832

namespace A022763

/-- `A045366(n+2)+A007520(n+1)` -/
def P7576512192146004832.Spec : Prop :=
  ∀ n, P7576512192146004832.a n = A022763 (n + 1)

end A022763

/-! ## A022763.P8321535679184352467

`A008590(A022764(n+1))`
-/

namespace A022763.P8321535679184352467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008590 (A022764 (n + 1)).toNat

end

end A022763.P8321535679184352467

namespace A022763

/-- `A008590(A022764(n+1))` -/
def P8321535679184352467.Spec : Prop :=
  ∀ n, P8321535679184352467.a n = A022763 (n + 1)

end A022763

/-!
# A022764: (n-th 8k+3 prime plus n-th 8k+5 prime)/8.

The programs for A022764, the canonical program `A022764.P10146463565592433614` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022764 has offset 1).

The definition of A022764 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A022763, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A022764.P10146463565592433614

`A022763(n+1)/8`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A022764

/-- `A022763(n+1)/8` -/
def P10146463565592433614.Spec : Prop :=
  ∀ n, P10146463565592433614.a n = (A022764 (n + 1) : ℚ)

end A022764

/-! ## A022764.P11186530249590081688

`(A007520(n+1)+A007521(n+1))/8`
-/

namespace A022764.P11186530249590081688
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007520 (n + 1) + A007521 (n + 1) : ℚ) / 8

end

end A022764.P11186530249590081688

namespace A022764

/-- `(A007520(n+1)+A007521(n+1))/8` -/
def P11186530249590081688.Spec : Prop :=
  ∀ n, P11186530249590081688.a n = (A022764 (n + 1) : ℚ)

end A022764

/-! ## A022764.P15356887226997123576

`A005125(n+1)+A005124(n+1)`
-/

namespace A022764.P15356887226997123576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005125 (n + 1) + A005124 (n + 1)

end

end A022764.P15356887226997123576

namespace A022764

/-- `A005125(n+1)+A005124(n+1)` -/
def P15356887226997123576.Spec : Prop :=
  ∀ n, P15356887226997123576.a n = A022764 (n + 1)

end A022764

/-! ## A022764.P4577094423662086303

`A005124(n+1)+A105133(n+1)+1`
-/

namespace A022764.P4577094423662086303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005124 (n + 1) + (A105133 (n + 1) + 1)

end

end A022764.P4577094423662086303

namespace A022764

/-- `A005124(n+1)+A105133(n+1)+1` -/
def P4577094423662086303.Spec : Prop :=
  ∀ n, P4577094423662086303.a n = A022764 (n + 1)

end A022764

/-! ## A022764.P6493695173227577064

`A005124(n+1)+ceil(A186300(n+1)/4)`
-/

namespace A022764.P6493695173227577064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005124 (n + 1) + ⌈(A186300 (n + 1) : ℚ) / 4⌉

end

end A022764.P6493695173227577064

namespace A022764

/-- `A005124(n+1)+ceil(A186300(n+1)/4)` -/
def P6493695173227577064.Spec : Prop :=
  ∀ n, P6493695173227577064.a n = A022764 (n + 1)

end A022764

/-! ## A022764.P16989110630089485471

`(A045339(n+2)+A007521(n+1))/8`
-/

namespace A022764.P16989110630089485471
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045339 (n + 2) + A007521 (n + 1) : ℚ) / 8

end

end A022764.P16989110630089485471

namespace A022764

/-- `(A045339(n+2)+A007521(n+1))/8` -/
def P16989110630089485471.Spec : Prop :=
  ∀ n, P16989110630089485471.a n = (A022764 (n + 1) : ℚ)

end A022764

/-! ## A022764.P16121842485496896434

`A117358(A007521(n+1)+p?[A017101(n)])`
-/

namespace A022764.P16121842485496896434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017101 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117358 (A007521 (n + 1) + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A022764.P16121842485496896434

namespace A022764

/-- `A117358(A007521(n+1)+p?[A017101(n)])` -/
def P16121842485496896434.Spec : Prop :=
  ∀ n, P16121842485496896434.a n = A022764 (n + 1)

end A022764

/-! ## A022764.P17113119659519748311

`A117358(A007521(n+1)+A007520(n+1))`
-/

namespace A022764.P17113119659519748311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117358 (A007521 (n + 1) + A007520 (n + 1)).toNat

end

end A022764.P17113119659519748311

namespace A022764

/-- `A117358(A007521(n+1)+A007520(n+1))` -/
def P17113119659519748311.Spec : Prop :=
  ∀ n, P17113119659519748311.a n = A022764 (n + 1)

end A022764

/-! ## A022764.P15084256669421412054

`A006085(A022763(n+1))`
-/

namespace A022764.P15084256669421412054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006085 (A022763 (n + 1)).toNat

end

end A022764.P15084256669421412054

namespace A022764

/-- `A006085(A022763(n+1))` -/
def P15084256669421412054.Spec : Prop :=
  ∀ n, P15084256669421412054.a n = A022764 (n + 1)

end A022764

/-! ## A022764.P12856306003325306847

`A076536(A007521(n+1)+A007520(n+1))`
-/

namespace A022764.P12856306003325306847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076536 (A007521 (n + 1) + A007520 (n + 1)).toNat

end

end A022764.P12856306003325306847

namespace A022764

/-- `A076536(A007521(n+1)+A007520(n+1))` -/
def P12856306003325306847.Spec : Prop :=
  ∀ n, P12856306003325306847.a n = A022764 (n + 1)

end A022764

/-! ## A022764.P2318685699621376893

`A106609(A007521(n+1)+A007520(n+1))`
-/

namespace A022764.P2318685699621376893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106609 (A007521 (n + 1) + A007520 (n + 1)).toNat

end

end A022764.P2318685699621376893

namespace A022764

/-- `A106609(A007521(n+1)+A007520(n+1))` -/
def P2318685699621376893.Spec : Prop :=
  ∀ n, P2318685699621376893.a n = A022764 (n + 1)

end A022764

/-!
# A022766: Ordered sequence of distinct terms of the form floor(x^i * floor(x^j)), i,j >= 0, where x = e/2.

The programs for A022766, there is no canonical definition to state claims against.
-/

/-! ## A022766.P2672282492009068702

`∑[A190491(A178334(A006800(n+1)))]`
-/

namespace A022766.P2672282492009068702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190491 (A178334 (A006800 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A022766.P2672282492009068702

/-! ## A022766.P1123366659498906366

`∑[A175077(A312517(n))]`
-/

namespace A022766.P1123366659498906366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175077 (A312517 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A022766.P1123366659498906366

/-! ## A022766.P6254357778410095372

`∑[A232550(∑[A183134(n)])]`
-/

namespace A022766.P6254357778410095372
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183134 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232550 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A022766.P6254357778410095372

/-! ## A022766.P15656494062201353241

`∑[A334924(A324650(A247352(n)))]`
-/

namespace A022766.P15656494062201353241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334924 (A324650 (A247352 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A022766.P15656494062201353241

/-!
# A022768: Ordered sequence of distinct terms of the form floor(x^i * floor(x^j)), where x = sqrt(2).

The programs for A022768, there is no canonical definition to state claims against.
-/

/-! ## A022768.P7516364482324810230

`eq[2, A175465((4*n)²+1)]`
-/

namespace A022768.P7516364482324810230
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175465 ((4 * n) ^ 2 + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A022768.P7516364482324810230

/-! ## A022768.P13466639858220140969

`eq[gcd(3, n), ratio[A147343(n+1)]]`
-/

namespace A022768.P13466639858220140969
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 3 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147343 (n + 1)

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f3 (n + 1) : ℚ) / (f3 n : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n

end

end A022768.P13466639858220140969

/-! ## A022768.P12070390281152107998

`record[A133233(2*n)]-floor(n/π)`
-/

namespace A022768.P12070390281152107998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133233 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - ⌊(n : ℝ) / Real.pi⌋

end

end A022768.P12070390281152107998

/-! ## A022768.P7511484973309414645

`lt[2, A377051(A030101(3*n))]`
-/

namespace A022768.P7511484973309414645
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377051 (A030101 (3 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A022768.P7511484973309414645

/-! ## A022768.P13336159266870277444

`lt[A003188(A008428(n)), A008428(n)]`
-/

namespace A022768.P13336159266870277444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 (A008428 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008428 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A022768.P13336159266870277444

/-!
# A022769: Ordered sequence of distinct terms of the form floor(x^i * floor(x^j)), i,j >= 0, where x = sqrt(3).

The programs for A022769, there is no canonical definition to state claims against.
-/

/-! ## A022769.P14823683551260380499

`record[A156070(A276383(n+1))]`
-/

namespace A022769.P14823683551260380499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156070 (A276383 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A022769.P14823683551260380499

/-! ## A022769.P8689238646404509707

`record[A228732(A321904(n+1))]`
-/

namespace A022769.P8689238646404509707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228732 (A321904 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A022769.P8689238646404509707

/-! ## A022769.P16354777460339442608

`lt[A044817(n+1), A355584(or(1, 3*n))]`
-/

namespace A022769.P16354777460339442608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044817 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355584 (Nat.lor 1 (3 * n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A022769.P16354777460339442608

/-!
# A022770: Ordered sequence of distinct terms of the form floor(x^i * floor(x^j)), i,j >= 0, where x = sqrt(5).

The programs for A022770, there is no canonical definition to state claims against.
-/

/-! ## A022770.P10928174901239079507

`∑[A110656(A156344(n+1)²)]`
-/

namespace A022770.P10928174901239079507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110656 (A156344 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A022770.P10928174901239079507

/-! ## A022770.P10968650903451898768

`record[gcd(n+1, A258635(A258615(n+1)))]`
-/

namespace A022770.P10968650903451898768
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A258635 (A258615 (n + 1)).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A022770.P10968650903451898768

/-!
# A022772: Ordered sequence of distinct terms of the form floor(x^i * floor(x^j)), i,j >= 0, where x = sqrt(3/2).

The programs for A022772, there is no canonical definition to state claims against.
-/

/-! ## A022772.P5648141043058339960

`lt[A342417(n+1), A342382(2*n)]`
-/

namespace A022772.P5648141043058339960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342417 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342382 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A022772.P5648141043058339960

/-! ## A022772.P11677211696789633490

`lt[A342417(n+1), A342383(2*n)]`
-/

namespace A022772.P11677211696789633490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342417 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342383 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A022772.P11677211696789633490

/-! ## A022772.P16248859695206895794

`lt[A270339(n+1), A081581(A002144(n+1))]`
-/

namespace A022772.P16248859695206895794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270339 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081581 (A002144 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A022772.P16248859695206895794

/-! ## A022772.P4178055615047636304

`lt[A342417(n+2), A342441(2*(n+1))]+1`
-/

namespace A022772.P4178055615047636304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342417 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342441 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A022772.P4178055615047636304

/-! ## A022772.P15801324034049729577

`comp[27-A358244(n+1)]`
-/

namespace A022772.P15801324034049729577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  27 - A358244 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A022772.P15801324034049729577

/-!
# A022775: Place where n-th 1 occurs in A007336.

The programs for A022775, the canonical program `A022775.P5821383929704964479` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022775 has offset 1).

The definition of A022775 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3140 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A022775.P12307728173807841114

`∑[floor(n*sqrt(2))+1]`
-/

namespace A022775.P12307728173807841114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.sqrt (2 : ℝ)⌋ + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A022775.P12307728173807841114

namespace A022775

/-- `∑[floor(n*sqrt(2))+1]` -/
def P12307728173807841114.Spec : Prop :=
  ∀ n, P12307728173807841114.a n = A022775 (n + 1)

end A022775

/-! ## A022775.P7288638146147779696

`∑[ceil(n/sin(atan(1)))]+1`
-/

namespace A022775.P7288638146147779696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℝ) / Real.sin (Real.arctan (1 : ℝ))⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A022775.P7288638146147779696

namespace A022775

/-- `∑[ceil(n/sin(atan(1)))]+1` -/
def P7288638146147779696.Spec : Prop :=
  ∀ n, P7288638146147779696.a n = A022775 (n + 1)

end A022775

/-! ## A022775.P3960228571248358856

`ceil(a(n-1)+n*sqrt(2))` with `a(0)=1`
-/

namespace A022775.P3960228571248358856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌈(a (n - 1) : ℝ) + (n : ℝ) * Real.sqrt (2 : ℝ)⌉

end

end A022775.P3960228571248358856

namespace A022775

/-- `ceil(a(n-1)+n*sqrt(2))` -/
def P3960228571248358856.Spec : Prop :=
  ∀ n, P3960228571248358856.a n = A022775 (n + 1)

end A022775

/-! ## A022775.P13669409835760612533

`∑[floor(n*sqrt(2))]-xor(n, -1)`
-/

namespace A022775.P13669409835760612533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.sqrt (2 : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - Int.xor (n : ℤ) (-1)

end

end A022775.P13669409835760612533

namespace A022775

/-- `∑[floor(n*sqrt(2))]-xor(n, -1)` -/
def P13669409835760612533.Spec : Prop :=
  ∀ n, P13669409835760612533.a n = A022775 (n + 1)

end A022775

/-! ## A022775.P5522232634278402264

`∑[floor(n/cos(atan(1)))]+n+1`
-/

namespace A022775.P5522232634278402264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) / Real.cos (Real.arctan (1 : ℝ))⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n + 1 : ℤ)

end

end A022775.P5522232634278402264

namespace A022775

/-- `∑[floor(n/cos(atan(1)))]+n+1` -/
def P5522232634278402264.Spec : Prop :=
  ∀ n, P5522232634278402264.a n = A022775 (n + 1)

end A022775

/-! ## A022775.P2965683182500460832

`a(n-1)+floor(n*sqrt(2))+1` with `a(0)=1`
-/

namespace A022775.P2965683182500460832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (⌊(n : ℝ) * Real.sqrt (2 : ℝ)⌋ + 1)

end

end A022775.P2965683182500460832

namespace A022775

/-- `a(n-1)+floor(n*sqrt(2))+1` -/
def P2965683182500460832.Spec : Prop :=
  ∀ n, P2965683182500460832.a n = A022775 (n + 1)

end A022775

/-! ## A022775.P5821383929704964479

`∑[A049474(2*n)]+1`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A022775

/-- `∑[A049474(2*n)]+1` -/
def P5821383929704964479.Spec : Prop :=
  ∀ n, P5821383929704964479.a n = A022775 (n + 1)

theorem P5821383929704964479.correct : P5821383929704964479.Spec := by
  intro n
  simp only [A022775, Nat.add_sub_cancel]

end A022775

/-! ## A022775.P6162314745931824622

`n+1+∑[A001951(n)]`
-/

namespace A022775.P6162314745931824622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001951 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A022775.P6162314745931824622

namespace A022775

/-- `n+1+∑[A001951(n)]` -/
def P6162314745931824622.Spec : Prop :=
  ∀ n, P6162314745931824622.a n = A022775 (n + 1)

end A022775

/-! ## A022775.P17476851819063127943

`∑[ceil(sqrt(A001105(n)))]+1`
-/

namespace A022775.P17476851819063127943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A001105 n : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A022775.P17476851819063127943

namespace A022775

/-- `∑[ceil(sqrt(A001105(n)))]+1` -/
def P17476851819063127943.Spec : Prop :=
  ∀ n, P17476851819063127943.a n = A022775 (n + 1)

end A022775

/-! ## A022775.P12815946375135151984

`A087057(n)+a(n-1)` with `a(0)=1`
-/

namespace A022775.P12815946375135151984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A087057 n + a (n - 1)

end

end A022775.P12815946375135151984

namespace A022775

/-- `A087057(n)+a(n-1)` -/
def P12815946375135151984.Spec : Prop :=
  ∀ n, P12815946375135151984.a n = A022775 (n + 1)

end A022775

/-! ## A022775.P12229947978575210611

`(n+1)²-∑[A195119(n)]`
-/

namespace A022775.P12229947978575210611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195119 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A022775.P12229947978575210611

namespace A022775

/-- `(n+1)²-∑[A195119(n)]` -/
def P12229947978575210611.Spec : Prop :=
  ∀ n, P12229947978575210611.a n = A022775 (n + 1)

end A022775

/-! ## A022775.P10516758898653590000

`∑[A285078(n+1)-n]-n`
-/

namespace A022775.P10516758898653590000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285078 (n + 1) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A022775.P10516758898653590000

namespace A022775

/-- `∑[A285078(n+1)-n]-n` -/
def P10516758898653590000.Spec : Prop :=
  ∀ n, P10516758898653590000.a n = A022775 (n + 1)

end A022775

/-! ## A022775.P17519539846142613301

`n+1+∑[comp[A001952(n+1)]]`
-/

namespace A022775.P17519539846142613301
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001952 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1 + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A022775.P17519539846142613301

namespace A022775

/-- `n+1+∑[comp[A001952(n+1)]]` -/
def P17519539846142613301.Spec : Prop :=
  ∀ n, (P17519539846142613301.a n : ℤ) = A022775 (n + 1)

end A022775

/-! ## A022775.P11678221314558506548

`∑[A289036(n+2)]-(2*n+1)`
-/

namespace A022775.P11678221314558506548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289036 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (2 * n + 1 : ℤ)

end

end A022775.P11678221314558506548

namespace A022775

/-- `∑[A289036(n+2)]-(2*n+1)` -/
def P11678221314558506548.Spec : Prop :=
  ∀ n, P11678221314558506548.a n = A022775 (n + 1)

end A022775

/-! ## A022775.P6624154781275415921

`A194102(n+1)-A097508(n+1)`
-/

namespace A022775.P6624154781275415921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194102 (n + 1) - A097508 (n + 1)

end

end A022775.P6624154781275415921

namespace A022775

/-- `A194102(n+1)-A097508(n+1)` -/
def P6624154781275415921.Spec : Prop :=
  ∀ n, P6624154781275415921.a n = A022775 (n + 1)

end A022775

/-! ## A022775.P17133117667408005841

`∑[A087057(n+1)]+1-A087057(n+1)`
-/

namespace A022775.P17133117667408005841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087057 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A087057 (n + 1))

end

end A022775.P17133117667408005841

namespace A022775

/-- `∑[A087057(n+1)]+1-A087057(n+1)` -/
def P17133117667408005841.Spec : Prop :=
  ∀ n, P17133117667408005841.a n = A022775 (n + 1)

end A022775

/-! ## A022775.P13787388666861654173

`∑[A024000(n)+A003151(n+1)]-A003151(n+1)`
-/

namespace A022775.P13787388666861654173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024000 n + A003151 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A003151 (n + 1)

end

end A022775.P13787388666861654173

namespace A022775

/-- `∑[A024000(n)+A003151(n+1)]-A003151(n+1)` -/
def P13787388666861654173.Spec : Prop :=
  ∀ n, P13787388666861654173.a n = A022775 (n + 1)

end A022775

/-! ## A022775.P13632647871081412656

`eq[1, A007336(n+1)]+1`
-/

namespace A022775.P13632647871081412656
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007336 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A022775.P13632647871081412656

namespace A022775

/-- `eq[1, A007336(n+1)]+1` -/
def P13632647871081412656.Spec : Prop :=
  ∀ n, (P13632647871081412656.a n : ℤ) = A022775 (n + 1)

end A022775

/-! ## A022775.P1914941107374207105

`∑[A103128(A028310(n²))]+n`
-/

namespace A022775.P1914941107374207105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103128 (A028310 (n ^ 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A022775.P1914941107374207105

namespace A022775

/-- `∑[A103128(A028310(n²))]+n` -/
def P1914941107374207105.Spec : Prop :=
  ∀ n, P1914941107374207105.a n = A022775 (n + 1)

end A022775

/-!
# A022776: Place where n-th 1 occurs in A023115.

The programs for A022776, the canonical program `A022776.P17919574213432232440` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022776 has offset 1).

The definition of A022776 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A022776.P6680912194688513001

`∑[floor(n/sqrt(2))+1]`
-/

namespace A022776.P6680912194688513001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) / Real.sqrt (2 : ℝ)⌋ + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A022776.P6680912194688513001

namespace A022776

/-- `∑[floor(n/sqrt(2))+1]` -/
def P6680912194688513001.Spec : Prop :=
  ∀ n, P6680912194688513001.a n = A022776 (n + 1)

end A022776

/-! ## A022776.P1504457631495737844

`∑[floor(n/sqrt(2))]-xor(n, -1)`
-/

namespace A022776.P1504457631495737844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) / Real.sqrt (2 : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - Int.xor (n : ℤ) (-1)

end

end A022776.P1504457631495737844

namespace A022776

/-- `∑[floor(n/sqrt(2))]-xor(n, -1)` -/
def P1504457631495737844.Spec : Prop :=
  ∀ n, P1504457631495737844.a n = A022776 (n + 1)

end A022776

/-! ## A022776.P16128543283169261777

`ceil(a(n-1)+n/sqrt(2))` with `a(0)=1`
-/

namespace A022776.P16128543283169261777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌈(a (n - 1) : ℝ) + (n : ℝ) / Real.sqrt (2 : ℝ)⌉

end

end A022776.P16128543283169261777

namespace A022776

/-- `ceil(a(n-1)+n/sqrt(2))` -/
def P16128543283169261777.Spec : Prop :=
  ∀ n, P16128543283169261777.a n = A022776 (n + 1)

end A022776

/-! ## A022776.P14503638768108169206

`floor(n/sqrt(2))+a(n-1)+1` with `a(0)=1`
-/

namespace A022776.P14503638768108169206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊(n : ℝ) / Real.sqrt (2 : ℝ)⌋ + (a (n - 1) + 1)

end

end A022776.P14503638768108169206

namespace A022776

/-- `floor(n/sqrt(2))+a(n-1)+1` -/
def P14503638768108169206.Spec : Prop :=
  ∀ n, P14503638768108169206.a n = A022776 (n + 1)

end A022776

/-! ## A022776.P17919574213432232440

`∑[A049474(n)]+1`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A022776

/-- `∑[A049474(n)]+1` -/
def P17919574213432232440.Spec : Prop :=
  ∀ n, P17919574213432232440.a n = A022776 (n + 1)

theorem P17919574213432232440.correct : P17919574213432232440.Spec := by
  intro n
  simp only [A022776, Nat.add_sub_cancel]

end A022776

/-! ## A022776.P10148589154070858859

`∑[A049472(n)]+n+1`
-/

namespace A022776.P10148589154070858859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049472 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n + 1 : ℤ)

end

end A022776.P10148589154070858859

namespace A022776

/-- `∑[A049472(n)]+n+1` -/
def P10148589154070858859.Spec : Prop :=
  ∀ n, P10148589154070858859.a n = A022776 (n + 1)

end A022776

/-! ## A022776.P5625654374851079732

`∑[ceil(sqrt(A000982(n)))]+1`
-/

namespace A022776.P5625654374851079732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A000982 n : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A022776.P5625654374851079732

namespace A022776

/-- `∑[ceil(sqrt(A000982(n)))]+1` -/
def P5625654374851079732.Spec : Prop :=
  ∀ n, P5625654374851079732.a n = A022776 (n + 1)

end A022776

/-! ## A022776.P12128263809790862844

`(n+1)²-∑[A195128(n)]`
-/

namespace A022776.P12128263809790862844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195128 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A022776.P12128263809790862844

namespace A022776

/-- `(n+1)²-∑[A195128(n)]` -/
def P12128263809790862844.Spec : Prop :=
  ∀ n, P12128263809790862844.a n = A022776 (n + 1)

end A022776

/-! ## A022776.P4379003661155968105

`∑[∑[char[A001951(n)+1]]]+1`
-/

namespace A022776.P4379003661155968105
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001951 n + 1

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A022776.P4379003661155968105

namespace A022776

/-- `∑[∑[char[A001951(n)+1]]]+1` -/
def P4379003661155968105.Spec : Prop :=
  ∀ n, (P4379003661155968105.a n : ℤ) = A022776 (n + 1)

end A022776

/-! ## A022776.P14529626649664671156

`∑[A285074(n+1)-n]-n`
-/

namespace A022776.P14529626649664671156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285074 (n + 1) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A022776.P14529626649664671156

namespace A022776

/-- `∑[A285074(n+1)-n]-n` -/
def P14529626649664671156.Spec : Prop :=
  ∀ n, P14529626649664671156.a n = A022776 (n + 1)

end A022776

/-! ## A022776.P16726271048457155455

`a(n-1)+n-A183138(n)` with `a(0)=1`
-/

namespace A022776.P16726271048457155455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + ((n : ℤ) - A183138 n)

end

end A022776.P16726271048457155455

namespace A022776

/-- `a(n-1)+n-A183138(n)` -/
def P16726271048457155455.Spec : Prop :=
  ∀ n, P16726271048457155455.a n = A022776 (n + 1)

end A022776

/-! ## A022776.P4448373536999924445

`A194920(n+1)+A183139(n+1)`
-/

namespace A022776.P4448373536999924445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194920 (n + 1) + A183139 (n + 1)

end

end A022776.P4448373536999924445

namespace A022776

/-- `A194920(n+1)+A183139(n+1)` -/
def P4448373536999924445.Spec : Prop :=
  ∀ n, P4448373536999924445.a n = A022776 (n + 1)

end A022776

/-! ## A022776.P10279390030489229536

`A183138(n+1)+A183139(n+1)+1`
-/

namespace A022776.P10279390030489229536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183138 (n + 1) + (A183139 (n + 1) + 1)

end

end A022776.P10279390030489229536

namespace A022776

/-- `A183138(n+1)+A183139(n+1)+1` -/
def P10279390030489229536.Spec : Prop :=
  ∀ n, P10279390030489229536.a n = A022776 (n + 1)

end A022776

/-! ## A022776.P8125701917511308982

`A183139(n+2)-(A070098(n+1)+A070098(n+2))`
-/

namespace A022776.P8125701917511308982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183139 (n + 2) - (A070098 (n + 1) + A070098 (n + 2))

end

end A022776.P8125701917511308982

namespace A022776

/-- `A183139(n+2)-(A070098(n+1)+A070098(n+2))` -/
def P8125701917511308982.Spec : Prop :=
  ∀ n, P8125701917511308982.a n = A022776 (n + 1)

end A022776

/-! ## A022776.P8280653530909240502

`A194990(2*n)+a(n-1)` with `a(0)=1`
-/

namespace A022776.P8280653530909240502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A194990 (2 * n) + a (n - 1)

end

end A022776.P8280653530909240502

namespace A022776

/-- `A194990(2*n)+a(n-1)` -/
def P8280653530909240502.Spec : Prop :=
  ∀ n, P8280653530909240502.a n = A022776 (n + 1)

end A022776

/-! ## A022776.P394189973292313349

`∑[A002265(A022842(abs(1-n)+1))]+n`
-/

namespace A022776.P394189973292313349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A022842 (|1 - (n : ℤ)| + 1).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A022776.P394189973292313349

namespace A022776

/-- `∑[A002265(A022842(abs(1-n)+1))]+n` -/
def P394189973292313349.Spec : Prop :=
  ∀ n, P394189973292313349.a n = A022776 (n + 1)

end A022776

/-! ## A022776.P9528573685706183151

`eq[1, A023115(n+1)]+1`
-/

namespace A022776.P9528573685706183151
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023115 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A022776.P9528573685706183151

namespace A022776

/-- `eq[1, A023115(n+1)]+1` -/
def P9528573685706183151.Spec : Prop :=
  ∀ n, (P9528573685706183151.a n : ℤ) = A022776 (n + 1)

end A022776

/-! ## A022776.P16469037328657402399

`record[A000027(n+1)/A023115(n+1)]`
-/

namespace A022776.P16469037328657402399
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000027 (n + 1) : ℚ) / (A023115 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A022776.P16469037328657402399

namespace A022776

/-- `record[A000027(n+1)/A023115(n+1)]` -/
def P16469037328657402399.Spec : Prop :=
  ∀ n, P16469037328657402399.a n = (A022776 (n + 1) : ℚ)

end A022776

/-! ## A022776.P1039893135070125321

`eq[n, A023115(A028310(n))*A028310(n)]`
-/

namespace A022776.P1039893135070125321
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023115 (A028310 n).toNat * A028310 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A022776.P1039893135070125321

namespace A022776

/-- `eq[n, A023115(A028310(n))*A028310(n)]` -/
def P1039893135070125321.Spec : Prop :=
  ∀ n, (P1039893135070125321.a n : ℤ) = A022776 (n + 1)

end A022776

/-!
# A022777: Place where n-th 1 occurs in A007337.

The programs for A022777, the canonical program `A022777.P1506527801283716464` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022777 has offset 1).

The definition of A022777 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2265 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A022777.P12315388924975215114

`∑[floor(n*sqrt(3))+1]`
-/

namespace A022777.P12315388924975215114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.sqrt (3 : ℝ)⌋ + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A022777.P12315388924975215114

namespace A022777

/-- `∑[floor(n*sqrt(3))+1]` -/
def P12315388924975215114.Spec : Prop :=
  ∀ n, P12315388924975215114.a n = A022777 (n + 1)

end A022777

/-! ## A022777.P16698886692732762450

`ceil(a(n-1)+n*sqrt(3))` with `a(0)=1`
-/

namespace A022777.P16698886692732762450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌈(a (n - 1) : ℝ) + (n : ℝ) * Real.sqrt (3 : ℝ)⌉

end

end A022777.P16698886692732762450

namespace A022777

/-- `ceil(a(n-1)+n*sqrt(3))` -/
def P16698886692732762450.Spec : Prop :=
  ∀ n, P16698886692732762450.a n = A022777 (n + 1)

end A022777

/-! ## A022777.P17529604720253244670

`∑[floor(n*sqrt(3))]-xor(n, -1)`
-/

namespace A022777.P17529604720253244670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.sqrt (3 : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - Int.xor (n : ℤ) (-1)

end

end A022777.P17529604720253244670

namespace A022777

/-- `∑[floor(n*sqrt(3))]-xor(n, -1)` -/
def P17529604720253244670.Spec : Prop :=
  ∀ n, P17529604720253244670.a n = A022777 (n + 1)

end A022777

/-! ## A022777.P10498859895140010233

`floor(n*sqrt(3))+a(n-1)+1` with `a(0)=1`
-/

namespace A022777.P10498859895140010233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊(n : ℝ) * Real.sqrt (3 : ℝ)⌋ + (a (n - 1) + 1)

end

end A022777.P10498859895140010233

namespace A022777

/-- `floor(n*sqrt(3))+a(n-1)+1` -/
def P10498859895140010233.Spec : Prop :=
  ∀ n, P10498859895140010233.a n = A022777 (n + 1)

end A022777

/-! ## A022777.P1506527801283716464

`∑[A198081(n)]+1`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A022777

/-- `∑[A198081(n)]+1` -/
def P1506527801283716464.Spec : Prop :=
  ∀ n, P1506527801283716464.a n = A022777 (n + 1)

theorem P1506527801283716464.correct : P1506527801283716464.Spec := by
  intro n
  simp only [A022777, Nat.add_sub_cancel]

end A022777

/-! ## A022777.P2462745920403141708

`∑[A215781(n)+n]+1`
-/

namespace A022777.P2462745920403141708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215781 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A022777.P2462745920403141708

namespace A022777

/-- `∑[A215781(n)+n]+1` -/
def P2462745920403141708.Spec : Prop :=
  ∀ n, P2462745920403141708.a n = A022777 (n + 1)

end A022777

/-! ## A022777.P3053397981083664083

`(n+1)²-∑[A195120(n)]`
-/

namespace A022777.P3053397981083664083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195120 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A022777.P3053397981083664083

namespace A022777

/-- `(n+1)²-∑[A195120(n)]` -/
def P3053397981083664083.Spec : Prop :=
  ∀ n, P3053397981083664083.a n = A022777 (n + 1)

end A022777

/-! ## A022777.P17051407779295811354

`a(n-1)+A022838(n)+1` with `a(0)=1`
-/

namespace A022777.P17051407779295811354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A022838 n + 1)

end

end A022777.P17051407779295811354

namespace A022777

/-- `a(n-1)+A022838(n)+1` -/
def P17051407779295811354.Spec : Prop :=
  ∀ n, P17051407779295811354.a n = A022777 (n + 1)

end A022777

/-! ## A022777.P10399616644541064411

`A194979(3*n)+a(n-1)` with `a(0)=1`
-/

namespace A022777.P10399616644541064411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A194979 (3 * n) + a (n - 1)

end

end A022777.P10399616644541064411

namespace A022777

/-- `A194979(3*n)+a(n-1)` -/
def P10399616644541064411.Spec : Prop :=
  ∀ n, P10399616644541064411.a n = A022777 (n + 1)

end A022777

/-! ## A022777.P827860070887895181

`∑[comp[A054406(n+1)]]+n+1`
-/

namespace A022777.P827860070887895181
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054406 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n + 1)

end

end A022777.P827860070887895181

namespace A022777

/-- `∑[comp[A054406(n+1)]]+n+1` -/
def P827860070887895181.Spec : Prop :=
  ∀ n, (P827860070887895181.a n : ℤ) = A022777 (n + 1)

end A022777

/-! ## A022777.P18142064044438166474

`∑[A022838(abs(1-n)+1)+1]-3`
-/

namespace A022777.P18142064044438166474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022838 (|1 - (n : ℤ)| + 1).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 3

end

end A022777.P18142064044438166474

namespace A022777

/-- `∑[A022838(abs(1-n)+1)+1]-3` -/
def P18142064044438166474.Spec : Prop :=
  ∀ n, P18142064044438166474.a n = A022777 (n + 1)

end A022777

/-! ## A022777.P6106150489658368860

`∑[A022838(n+1)]-(A022838(n+1)+A001478(n+1))`
-/

namespace A022777.P6106150489658368860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022838 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (A022838 (n + 1) + A001478 (n + 1))

end

end A022777.P6106150489658368860

namespace A022777

/-- `∑[A022838(n+1)]-(A022838(n+1)+A001478(n+1))` -/
def P6106150489658368860.Spec : Prop :=
  ∀ n, P6106150489658368860.a n = A022777 (n + 1)

end A022777

/-! ## A022777.P4951426963512714300

`A293052(∑[n+1])`
-/

namespace A022777.P4951426963512714300
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293052 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A022777.P4951426963512714300

namespace A022777

/-- `A293052(∑[n+1])` -/
def P4951426963512714300.Spec : Prop :=
  ∀ n, P4951426963512714300.a n = A022777 (n + 1)

end A022777

/-! ## A022777.P9885670746379941585

`lt[A007337(n+1), 2]+1`
-/

namespace A022777.P9885670746379941585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007337 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A022777.P9885670746379941585

namespace A022777

/-- `lt[A007337(n+1), 2]+1` -/
def P9885670746379941585.Spec : Prop :=
  ∀ n, (P9885670746379941585.a n : ℤ) = A022777 (n + 1)

end A022777

/-! ## A022777.P17070526010185649189

`A390945(n²)+a(n-1)` with `a(0)=1`
-/

namespace A022777.P17070526010185649189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A390945 (n ^ 2) + a (n - 1)

end

end A022777.P17070526010185649189

namespace A022777

/-- `A390945(n²)+a(n-1)` -/
def P17070526010185649189.Spec : Prop :=
  ∀ n, P17070526010185649189.a n = A022777 (n + 1)

end A022777

/-! ## A022777.P10931272238775789007

`A278814(n²)+a(n-1)` with `a(0)=1`
-/

namespace A022777.P10931272238775789007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A278814 (n ^ 2) + a (n - 1)

end

end A022777.P10931272238775789007

namespace A022777

/-- `A278814(n²)+a(n-1)` -/
def P10931272238775789007.Spec : Prop :=
  ∀ n, P10931272238775789007.a n = A022777 (n + 1)

end A022777

/-!
# A022778: Place where n-th 1 occurs in A023116.

The programs for A022778, the canonical program `A022778.P5925027341847244681` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022778 has offset 1).

The definition of A022778 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3777 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A022778.P2415504090036939839

`∑[floor(n/sqrt(3))+1]`
-/

namespace A022778.P2415504090036939839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) / Real.sqrt (3 : ℝ)⌋ + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A022778.P2415504090036939839

namespace A022778

/-- `∑[floor(n/sqrt(3))+1]` -/
def P2415504090036939839.Spec : Prop :=
  ∀ n, P2415504090036939839.a n = A022778 (n + 1)

end A022778

/-! ## A022778.P15147589944118698204

`ceil(a(n-1)+n/sqrt(3))` with `a(0)=1`
-/

namespace A022778.P15147589944118698204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌈(a (n - 1) : ℝ) + (n : ℝ) / Real.sqrt (3 : ℝ)⌉

end

end A022778.P15147589944118698204

namespace A022778

/-- `ceil(a(n-1)+n/sqrt(3))` -/
def P15147589944118698204.Spec : Prop :=
  ∀ n, P15147589944118698204.a n = A022778 (n + 1)

end A022778

/-! ## A022778.P17286378768507574345

`A194979(n)+a(n-1)` with `a(0)=1`
-/

namespace A022778.P17286378768507574345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A194979 n + a (n - 1)

end

end A022778.P17286378768507574345

namespace A022778

/-- `A194979(n)+a(n-1)` -/
def P17286378768507574345.Spec : Prop :=
  ∀ n, P17286378768507574345.a n = A022778 (n + 1)

end A022778

/-! ## A022778.P5925027341847244681

`(n+1)²-∑[A195129(n)]`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A022778

/-- `(n+1)²-∑[A195129(n)]` -/
def P5925027341847244681.Spec : Prop :=
  ∀ n, P5925027341847244681.a n = A022778 (n + 1)

theorem P5925027341847244681.correct : P5925027341847244681.Spec := by
  intro n
  simp only [A022778, Nat.add_sub_cancel]

end A022778

/-! ## A022778.P6514095796172031297

`a(n-1)+A097337(n)+1` with `a(0)=1`
-/

namespace A022778.P6514095796172031297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A097337 n + 1)

end

end A022778.P6514095796172031297

namespace A022778

/-- `a(n-1)+A097337(n)+1` -/
def P6514095796172031297.Spec : Prop :=
  ∀ n, P6514095796172031297.a n = A022778 (n + 1)

end A022778

/-! ## A022778.P744442694454490026

`a(n-1)+n-A183142(n)` with `a(0)=1`
-/

namespace A022778.P744442694454490026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + ((n : ℤ) - A183142 n)

end

end A022778.P744442694454490026

namespace A022778

/-- `a(n-1)+n-A183142(n)` -/
def P744442694454490026.Spec : Prop :=
  ∀ n, P744442694454490026.a n = A022778 (n + 1)

end A022778

/-! ## A022778.P203544032266226294

`A195072(n+1)+A183143(n+1)`
-/

namespace A022778.P203544032266226294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195072 (n + 1) + A183143 (n + 1)

end

end A022778.P203544032266226294

namespace A022778

/-- `A195072(n+1)+A183143(n+1)` -/
def P203544032266226294.Spec : Prop :=
  ∀ n, P203544032266226294.a n = A022778 (n + 1)

end A022778

/-! ## A022778.P9345902452276458039

`A183142(n+1)+A183143(n+1)+1`
-/

namespace A022778.P9345902452276458039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183142 (n + 1) + (A183143 (n + 1) + 1)

end

end A022778.P9345902452276458039

namespace A022778

/-- `A183142(n+1)+A183143(n+1)+1` -/
def P9345902452276458039.Spec : Prop :=
  ∀ n, P9345902452276458039.a n = A022778 (n + 1)

end A022778

/-! ## A022778.P4589089988560518451

`∑[A097337(n+1)+1]-A097337(n+1)`
-/

namespace A022778.P4589089988560518451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097337 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A097337 (n + 1)

end

end A022778.P4589089988560518451

namespace A022778

/-- `∑[A097337(n+1)+1]-A097337(n+1)` -/
def P4589089988560518451.Spec : Prop :=
  ∀ n, P4589089988560518451.a n = A022778 (n + 1)

end A022778

/-! ## A022778.P196793001850787645

`∑[A194979(n+1)]+1-A194979(n+1)`
-/

namespace A022778.P196793001850787645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194979 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A194979 (n + 1))

end

end A022778.P196793001850787645

namespace A022778

/-- `∑[A194979(n+1)]+1-A194979(n+1)` -/
def P196793001850787645.Spec : Prop :=
  ∀ n, P196793001850787645.a n = A022778 (n + 1)

end A022778

/-! ## A022778.P8879440862015773886

`A000217(n+1)-(A183144(n+1)+A097337(n+1))`
-/

namespace A022778.P8879440862015773886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 1) - (A183144 (n + 1) + A097337 (n + 1))

end

end A022778.P8879440862015773886

namespace A022778

/-- `A000217(n+1)-(A183144(n+1)+A097337(n+1))` -/
def P8879440862015773886.Spec : Prop :=
  ∀ n, P8879440862015773886.a n = A022778 (n + 1)

end A022778

/-! ## A022778.P11505371586008975881

`A293052(∑[n]+1)`
-/

namespace A022778.P11505371586008975881
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293052 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A022778.P11505371586008975881

namespace A022778

/-- `A293052(∑[n]+1)` -/
def P11505371586008975881.Spec : Prop :=
  ∀ n, P11505371586008975881.a n = A022778 (n + 1)

end A022778

/-!
# A022779: Place where n-th 1 occurs in A023117.

The programs for A022779, the canonical program `A022779.P12138440178907107662` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022779 has offset 1).

The definition of A022779 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2364 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A022779.P10438707894159477494

`∑[floor(n*sqrt(5))+1]`
-/

namespace A022779.P10438707894159477494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.sqrt (5 : ℝ)⌋ + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A022779.P10438707894159477494

namespace A022779

/-- `∑[floor(n*sqrt(5))+1]` -/
def P10438707894159477494.Spec : Prop :=
  ∀ n, P10438707894159477494.a n = A022779 (n + 1)

end A022779

/-! ## A022779.P8973236150765068755

`ceil(a(n-1)+n*sqrt(5))` with `a(0)=1`
-/

namespace A022779.P8973236150765068755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌈(a (n - 1) : ℝ) + (n : ℝ) * Real.sqrt (5 : ℝ)⌉

end

end A022779.P8973236150765068755

namespace A022779

/-- `ceil(a(n-1)+n*sqrt(5))` -/
def P8973236150765068755.Spec : Prop :=
  ∀ n, P8973236150765068755.a n = A022779 (n + 1)

end A022779

/-! ## A022779.P5542529793427776920

`∑[floor(n*root(5, 2))]-xor(n, -1)`
-/

namespace A022779.P5542529793427776920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * (5 : ℝ) ^ (1 / (2 : ℝ))⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - Int.xor (n : ℤ) (-1)

end

end A022779.P5542529793427776920

namespace A022779

/-- `∑[floor(n*root(5, 2))]-xor(n, -1)` -/
def P5542529793427776920.Spec : Prop :=
  ∀ n, P5542529793427776920.a n = A022779 (n + 1)

end A022779

/-! ## A022779.P13397001980613128764

`a(n-1)-floor(n-ϕ*2*n)` with `a(0)=1`
-/

namespace A022779.P13397001980613128764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) - ⌊(n : ℝ) - Real.goldenRatio * (2 * n : ℝ)⌋

end

end A022779.P13397001980613128764

namespace A022779

/-- `a(n-1)-floor(n-ϕ*2*n)` -/
def P13397001980613128764.Spec : Prop :=
  ∀ n, P13397001980613128764.a n = A022779 (n + 1)

end A022779

/-! ## A022779.P12138440178907107662

`∑[A198082(n)]+1`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A022779

/-- `∑[A198082(n)]+1` -/
def P12138440178907107662.Spec : Prop :=
  ∀ n, P12138440178907107662.a n = A022779 (n + 1)

theorem P12138440178907107662.correct : P12138440178907107662.Spec := by
  intro n
  simp only [A022779, Nat.add_sub_cancel]

end A022779

/-! ## A022779.P4115294945845903800

`∑[2*n+n-A187329(n)]+1`
-/

namespace A022779.P4115294945845903800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) + ((n : ℤ) - A187329 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A022779.P4115294945845903800

namespace A022779

/-- `∑[2*n+n-A187329(n)]+1` -/
def P4115294945845903800.Spec : Prop :=
  ∀ n, P4115294945845903800.a n = A022779 (n + 1)

end A022779

/-! ## A022779.P5518502572750894652

`∑[record[A026262(abs(1-n)+1)]]+n`
-/

namespace A022779.P5518502572750894652
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026262 (|1 - (n : ℤ)| + 1).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A022779.P5518502572750894652

namespace A022779

/-- `∑[record[A026262(abs(1-n)+1)]]+n` -/
def P5518502572750894652.Spec : Prop :=
  ∀ n, P5518502572750894652.a n = A022779 (n + 1)

end A022779

/-! ## A022779.P6607914020321429314

`∑[A005206(abs(1-2*n))+n]+n`
-/

namespace A022779.P6607914020321429314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005206 |1 - (2 * n : ℤ)|.toNat + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A022779.P6607914020321429314

namespace A022779

/-- `∑[A005206(abs(1-2*n))+n]+n` -/
def P6607914020321429314.Spec : Prop :=
  ∀ n, P6607914020321429314.a n = A022779 (n + 1)

end A022779

/-! ## A022779.P11321716871856008196

`∑[comp[A001950(2*(n+1))]+n]+n+1`
-/

namespace A022779.P11321716871856008196
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001950 (2 * (n + 1))

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n + 1

end

end A022779.P11321716871856008196

namespace A022779

/-- `∑[comp[A001950(2*(n+1))]+n]+n+1` -/
def P11321716871856008196.Spec : Prop :=
  ∀ n, (P11321716871856008196.a n : ℤ) = A022779 (n + 1)

end A022779

/-! ## A022779.P9089168067845154756

`A194110(n+1)-A001961(n+1)`
-/

namespace A022779.P9089168067845154756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194110 (n + 1) - A001961 (n + 1)

end

end A022779.P9089168067845154756

namespace A022779

/-- `A194110(n+1)-A001961(n+1)` -/
def P9089168067845154756.Spec : Prop :=
  ∀ n, P9089168067845154756.a n = A022779 (n + 1)

end A022779

/-! ## A022779.P2452493160775289280

`A000217(n+1)+∑[A060143(2*n)]`
-/

namespace A022779.P2452493160775289280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060143 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A022779.P2452493160775289280

namespace A022779

/-- `A000217(n+1)+∑[A060143(2*n)]` -/
def P2452493160775289280.Spec : Prop :=
  ∀ n, P2452493160775289280.a n = A022779 (n + 1)

end A022779

/-! ## A022779.P1654575984936613858

`∑[A001057(2*n)]+∑[A026351(2*n)]`
-/

namespace A022779.P1654575984936613858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026351 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ∑ j ∈ Finset.range (n + 1), f2 j

end

end A022779.P1654575984936613858

namespace A022779

/-- `∑[A001057(2*n)]+∑[A026351(2*n)]` -/
def P1654575984936613858.Spec : Prop :=
  ∀ n, P1654575984936613858.a n = A022779 (n + 1)

end A022779

/-! ## A022779.P12589798058255361694

`∑[A022839(n+1)+1]-A022839(n+1)`
-/

namespace A022779.P12589798058255361694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022839 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A022839 (n + 1)

end

end A022779.P12589798058255361694

namespace A022779

/-- `∑[A022839(n+1)+1]-A022839(n+1)` -/
def P12589798058255361694.Spec : Prop :=
  ∀ n, P12589798058255361694.a n = A022779 (n + 1)

end A022779

/-! ## A022779.P16975961859081725030

`A293054(∑[n+1])`
-/

namespace A022779.P16975961859081725030
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293054 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A022779.P16975961859081725030

namespace A022779

/-- `A293054(∑[n+1])` -/
def P16975961859081725030.Spec : Prop :=
  ∀ n, P16975961859081725030.a n = A022779 (n + 1)

end A022779

/-!
# A022780: Place where n-th 1 occurs in A023118.

The programs for A022780, the canonical program `A022780.P1861960125711501944` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022780 has offset 1).

The definition of A022780 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5432 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A022780.P17937338539908630802

`∑[floor(n/sqrt(5))+1]`
-/

namespace A022780.P17937338539908630802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) / Real.sqrt (5 : ℝ)⌋ + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A022780.P17937338539908630802

namespace A022780

/-- `∑[floor(n/sqrt(5))+1]` -/
def P17937338539908630802.Spec : Prop :=
  ∀ n, P17937338539908630802.a n = A022780 (n + 1)

end A022780

/-! ## A022780.P6940265404021885907

`ceil(a(n-1)+n/sqrt(5))` with `a(0)=1`
-/

namespace A022780.P6940265404021885907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌈(a (n - 1) : ℝ) + (n : ℝ) / Real.sqrt (5 : ℝ)⌉

end

end A022780.P6940265404021885907

namespace A022780

/-- `ceil(a(n-1)+n/sqrt(5))` -/
def P6940265404021885907.Spec : Prop :=
  ∀ n, P6940265404021885907.a n = A022780 (n + 1)

end A022780

/-! ## A022780.P1861960125711501944

`A194964(n)+a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A022780

/-- `A194964(n)+a(n-1)` -/
def P1861960125711501944.Spec : Prop :=
  ∀ n, P1861960125711501944.a n = A022780 (n + 1)

theorem P1861960125711501944.correct : P1861960125711501944.Spec := by
  intro n
  simp only [A022780, Nat.add_sub_cancel]

end A022780

/-! ## A022780.P9657292602225492776

`∑[∑[char[A276854(n+1)-n]]]+n+1`
-/

namespace A022780.P9657292602225492776
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276854 (n + 1) - (n : ℤ)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n + 1)

end

end A022780.P9657292602225492776

namespace A022780

/-- `∑[∑[char[A276854(n+1)-n]]]+n+1` -/
def P9657292602225492776.Spec : Prop :=
  ∀ n, (P9657292602225492776.a n : ℤ) = A022780 (n + 1)

end A022780

/-! ## A022780.P15305835192091156861

`∑[A194964(n+1)]+1-A194964(n+1)`
-/

namespace A022780.P15305835192091156861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194964 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A194964 (n + 1))

end

end A022780.P15305835192091156861

namespace A022780

/-- `∑[A194964(n+1)]+1-A194964(n+1)` -/
def P15305835192091156861.Spec : Prop :=
  ∀ n, P15305835192091156861.a n = A022780 (n + 1)

end A022780

/-! ## A022780.P2388018169328065133

`eq[1, A023118(n+1)]+1`
-/

namespace A022780.P2388018169328065133
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023118 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A022780.P2388018169328065133

namespace A022780

/-- `eq[1, A023118(n+1)]+1` -/
def P2388018169328065133.Spec : Prop :=
  ∀ n, (P2388018169328065133.a n : ℤ) = A022780 (n + 1)

end A022780

/-! ## A022780.P2533454519410330286

`A293054(∑[n]+1)`
-/

namespace A022780.P2533454519410330286
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293054 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A022780.P2533454519410330286

namespace A022780

/-- `A293054(∑[n]+1)` -/
def P2533454519410330286.Spec : Prop :=
  ∀ n, P2533454519410330286.a n = A022780 (n + 1)

end A022780

/-! ## A022780.P10246905675572646220

`A283941(∑[n+1])`
-/

namespace A022780.P10246905675572646220
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283941 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A022780.P10246905675572646220

namespace A022780

/-- `A283941(∑[n+1])` -/
def P10246905675572646220.Spec : Prop :=
  ∀ n, P10246905675572646220.a n = A022780 (n + 1)

end A022780

/-!
# A022781: Place where n-th 1 occurs in A023119.

The programs for A022781, the canonical program `A022781.P2680767153877646876` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022781 has offset 1).

The definition of A022781 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2081 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A022781.P5498980047825790290

`∑[floor(n*sqrt(7))+1]`
-/

namespace A022781.P5498980047825790290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.sqrt (7 : ℝ)⌋ + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A022781.P5498980047825790290

namespace A022781

/-- `∑[floor(n*sqrt(7))+1]` -/
def P5498980047825790290.Spec : Prop :=
  ∀ n, P5498980047825790290.a n = A022781 (n + 1)

end A022781

/-! ## A022781.P11844748793902688550

`ceil(a(n-1)+n*sqrt(7))` with `a(0)=1`
-/

namespace A022781.P11844748793902688550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌈(a (n - 1) : ℝ) + (n : ℝ) * Real.sqrt (7 : ℝ)⌉

end

end A022781.P11844748793902688550

namespace A022781

/-- `ceil(a(n-1)+n*sqrt(7))` -/
def P11844748793902688550.Spec : Prop :=
  ∀ n, P11844748793902688550.a n = A022781 (n + 1)

end A022781

/-! ## A022781.P10214283050780791860

`∑[floor(n*sqrt(7))]-xor(n, -1)`
-/

namespace A022781.P10214283050780791860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.sqrt (7 : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - Int.xor (n : ℤ) (-1)

end

end A022781.P10214283050780791860

namespace A022781

/-- `∑[floor(n*sqrt(7))]-xor(n, -1)` -/
def P10214283050780791860.Spec : Prop :=
  ∀ n, P10214283050780791860.a n = A022781 (n + 1)

end A022781

/-! ## A022781.P13634123272667498697

`floor(a(n-1)+n*sqrt(7)+1)` with `a(0)=1`
-/

namespace A022781.P13634123272667498697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊(a (n - 1) : ℝ) + ((n : ℝ) * Real.sqrt (7 : ℝ) + 1)⌋

end

end A022781.P13634123272667498697

namespace A022781

/-- `floor(a(n-1)+n*sqrt(7)+1)` -/
def P13634123272667498697.Spec : Prop :=
  ∀ n, P13634123272667498697.a n = A022781 (n + 1)

end A022781

/-! ## A022781.P2680767153877646876

`∑[A198084(n)]+1`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A022781

/-- `∑[A198084(n)]+1` -/
def P2680767153877646876.Spec : Prop :=
  ∀ n, P2680767153877646876.a n = A022781 (n + 1)

theorem P2680767153877646876.correct : P2680767153877646876.Spec := by
  intro n
  simp only [A022781, Nat.add_sub_cancel]

end A022781

/-! ## A022781.P143233802452919227

`n-(A023443(n)-∑[A198084(n)])`
-/

namespace A022781.P143233802452919227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198084 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (A023443 n - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A022781.P143233802452919227

namespace A022781

/-- `n-(A023443(n)-∑[A198084(n)])` -/
def P143233802452919227.Spec : Prop :=
  ∀ n, P143233802452919227.a n = A022781 (n + 1)

end A022781

/-! ## A022781.P7006599917209546436

`∑[A022841(n+1)+1]-A022841(n+1)`
-/

namespace A022781.P7006599917209546436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022841 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A022841 (n + 1)

end

end A022781.P7006599917209546436

namespace A022781

/-- `∑[A022841(n+1)+1]-A022841(n+1)` -/
def P7006599917209546436.Spec : Prop :=
  ∀ n, P7006599917209546436.a n = A022781 (n + 1)

end A022781

/-! ## A022781.P6289228592320522076

`n+1+A194111(n+1)-A022841(n+1)`
-/

namespace A022781.P6289228592320522076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + (A194111 (n + 1) - A022841 (n + 1))

end

end A022781.P6289228592320522076

namespace A022781

/-- `n+1+A194111(n+1)-A022841(n+1)` -/
def P6289228592320522076.Spec : Prop :=
  ∀ n, P6289228592320522076.a n = A022781 (n + 1)

end A022781

/-! ## A022781.P6944185145074112838

`eq[1, A023119(n+1)]+1`
-/

namespace A022781.P6944185145074112838
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023119 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A022781.P6944185145074112838

namespace A022781

/-- `eq[1, A023119(n+1)]+1` -/
def P6944185145074112838.Spec : Prop :=
  ∀ n, (P6944185145074112838.a n : ℤ) = A022781 (n + 1)

end A022781

/-!
# A022782: Place where n-th 1 occurs in A023120.

The programs for A022782, the canonical program `A022782.P11211410587946556953` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022782 has offset 1).

The definition of A022782 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5889 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A022782.P11211410587946556953

`∑[floor(n/sqrt(7))+1]`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A022782

/-- `∑[floor(n/sqrt(7))+1]` -/
def P11211410587946556953.Spec : Prop :=
  ∀ n, P11211410587946556953.a n = A022782 (n + 1)

theorem P11211410587946556953.correct : P11211410587946556953.Spec := by
  intro n
  simp only [A022782, Nat.add_sub_cancel]

end A022782

/-! ## A022782.P14059406928329725801

`ceil(a(n-1)+n/sqrt(7))` with `a(0)=1`
-/

namespace A022782.P14059406928329725801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌈(a (n - 1) : ℝ) + (n : ℝ) / Real.sqrt (7 : ℝ)⌉

end

end A022782.P14059406928329725801

namespace A022782

/-- `ceil(a(n-1)+n/sqrt(7))` -/
def P14059406928329725801.Spec : Prop :=
  ∀ n, P14059406928329725801.a n = A022782 (n + 1)

end A022782

/-! ## A022782.P11764103719860669411

`floor(a(n-1)+n/sqrt(7)+1)` with `a(0)=1`
-/

namespace A022782.P11764103719860669411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊(a (n - 1) : ℝ) + ((n : ℝ) / Real.sqrt (7 : ℝ) + 1)⌋

end

end A022782.P11764103719860669411

namespace A022782

/-- `floor(a(n-1)+n/sqrt(7)+1)` -/
def P11764103719860669411.Spec : Prop :=
  ∀ n, P11764103719860669411.a n = A022782 (n + 1)

end A022782

/-! ## A022782.P14216269664969918445

`∑[∑[char[A198084(n)]]+1]-(n+1)`
-/

namespace A022782.P14216269664969918445
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198084 n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n + 1 : ℤ)

end

end A022782.P14216269664969918445

namespace A022782

/-- `∑[∑[char[A198084(n)]]+1]-(n+1)` -/
def P14216269664969918445.Spec : Prop :=
  ∀ n, P14216269664969918445.a n = A022782 (n + 1)

end A022782

/-! ## A022782.P11758005837131821531

`∑[A000196(A056834(n))]+n+1`
-/

namespace A022782.P11758005837131821531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A056834 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n + 1 : ℤ)

end

end A022782.P11758005837131821531

namespace A022782

/-- `∑[A000196(A056834(n))]+n+1` -/
def P11758005837131821531.Spec : Prop :=
  ∀ n, P11758005837131821531.a n = A022782 (n + 1)

end A022782

/-! ## A022782.P4880076863830380279

`eq[1, A023120(n+1)]+1`
-/

namespace A022782.P4880076863830380279
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023120 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A022782.P4880076863830380279

namespace A022782

/-- `eq[1, A023120(n+1)]+1` -/
def P4880076863830380279.Spec : Prop :=
  ∀ n, (P4880076863830380279.a n : ℤ) = A022782 (n + 1)

end A022782

/-! ## A022782.P12263061198561816998

`record[A000027(n+1)/A023120(n+1)]`
-/

namespace A022782.P12263061198561816998
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000027 (n + 1) : ℚ) / (A023120 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A022782.P12263061198561816998

namespace A022782

/-- `record[A000027(n+1)/A023120(n+1)]` -/
def P12263061198561816998.Spec : Prop :=
  ∀ n, P12263061198561816998.a n = (A022782 (n + 1) : ℚ)

end A022782

/-! ## A022782.P14406911391203484061

`record[A328399(2*n)/A023120(n+1)]`
-/

namespace A022782.P14406911391203484061
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A328399 (2 * n) : ℚ) / (A023120 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A022782.P14406911391203484061

namespace A022782

/-- `record[A328399(2*n)/A023120(n+1)]` -/
def P14406911391203484061.Spec : Prop :=
  ∀ n, P14406911391203484061.a n = (A022782 (n + 1) : ℚ)

end A022782

/-!
# A022783: Place where n-th 1 occurs in A023121.

The programs for A022783, the canonical program `A022783.P9693895738912424470` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022783 has offset 1).

The definition of A022783 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4272 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A022783.P9693895738912424470

`∑[floor(n*sqrt(2/3))+1]`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A022783

/-- `∑[floor(n*sqrt(2/3))+1]` -/
def P9693895738912424470.Spec : Prop :=
  ∀ n, P9693895738912424470.a n = A022783 (n + 1)

theorem P9693895738912424470.correct : P9693895738912424470.Spec := by
  intro n
  simp only [A022783, Nat.add_sub_cancel]

end A022783

/-! ## A022783.P16923305188502832378

`ceil(a(n-1)+n*sqrt(2/3))` with `a(0)=1`
-/

namespace A022783.P16923305188502832378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌈(a (n - 1) : ℝ) + (n : ℝ) * Real.sqrt ((2 : ℚ) / 3 : ℝ)⌉

end

end A022783.P16923305188502832378

namespace A022783

/-- `ceil(a(n-1)+n*sqrt(2/3))` -/
def P16923305188502832378.Spec : Prop :=
  ∀ n, P16923305188502832378.a n = A022783 (n + 1)

end A022783

/-! ## A022783.P14210185374914829683

`a(n-1)+A171974(n)+1` with `a(0)=1`
-/

namespace A022783.P14210185374914829683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A171974 n + 1)

end

end A022783.P14210185374914829683

namespace A022783

/-- `a(n-1)+A171974(n)+1` -/
def P14210185374914829683.Spec : Prop :=
  ∀ n, P14210185374914829683.a n = A022783 (n + 1)

end A022783

/-! ## A022783.P9121705860309091539

`A194986(2*n)+a(n-1)` with `a(0)=1`
-/

namespace A022783.P9121705860309091539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A194986 (2 * n) + a (n - 1)

end

end A022783.P9121705860309091539

namespace A022783

/-- `A194986(2*n)+a(n-1)` -/
def P9121705860309091539.Spec : Prop :=
  ∀ n, P9121705860309091539.a n = A022783 (n + 1)

end A022783

/-! ## A022783.P4949333256458143254

`∑[A171974(n+1)+1]-A171974(n+1)`
-/

namespace A022783.P4949333256458143254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171974 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A171974 (n + 1)

end

end A022783.P4949333256458143254

namespace A022783

/-- `∑[A171974(n+1)+1]-A171974(n+1)` -/
def P4949333256458143254.Spec : Prop :=
  ∀ n, P4949333256458143254.a n = A022783 (n + 1)

end A022783

/-! ## A022783.P311191208291021718

`eq[1, A023121(n+1)]+1`
-/

namespace A022783.P311191208291021718
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023121 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A022783.P311191208291021718

namespace A022783

/-- `eq[1, A023121(n+1)]+1` -/
def P311191208291021718.Spec : Prop :=
  ∀ n, (P311191208291021718.a n : ℤ) = A022783 (n + 1)

end A022783

/-!
# A022784: Place where n-th 1 occurs in A023122.

The programs for A022784, the canonical program `A022784.P14648871505611230013` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022784 has offset 1).

The definition of A022784 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3301 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A022784.P1894277156387688320

`∑[floor(n*sqrt(3/2))+1]`
-/

namespace A022784.P1894277156387688320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.sqrt ((3 : ℚ) / 2 : ℝ)⌋ + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A022784.P1894277156387688320

namespace A022784

/-- `∑[floor(n*sqrt(3/2))+1]` -/
def P1894277156387688320.Spec : Prop :=
  ∀ n, P1894277156387688320.a n = A022784 (n + 1)

end A022784

/-! ## A022784.P5573174527134297552

`ceil(a(n-1)+n*sqrt(3/2))` with `a(0)=1`
-/

namespace A022784.P5573174527134297552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌈(a (n - 1) : ℝ) + (n : ℝ) * Real.sqrt ((3 : ℚ) / 2 : ℝ)⌉

end

end A022784.P5573174527134297552

namespace A022784

/-- `ceil(a(n-1)+n*sqrt(3/2))` -/
def P5573174527134297552.Spec : Prop :=
  ∀ n, P5573174527134297552.a n = A022784 (n + 1)

end A022784

/-! ## A022784.P14648871505611230013

`a(n-1)+A277644(n)+1` with `a(0)=1`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A022784

/-- `a(n-1)+A277644(n)+1` -/
def P14648871505611230013.Spec : Prop :=
  ∀ n, P14648871505611230013.a n = A022784 (n + 1)

theorem P14648871505611230013.correct : P14648871505611230013.Spec := by
  intro n
  simp only [A022784, Nat.add_sub_cancel]

end A022784

/-! ## A022784.P9950547431182255734

`A194986(3*n)+a(n-1)` with `a(0)=1`
-/

namespace A022784.P9950547431182255734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A194986 (3 * n) + a (n - 1)

end

end A022784.P9950547431182255734

namespace A022784

/-- `A194986(3*n)+a(n-1)` -/
def P9950547431182255734.Spec : Prop :=
  ∀ n, P9950547431182255734.a n = A022784 (n + 1)

end A022784

/-! ## A022784.P16224961216984788638

`∑[A277644(n+1)+1]-A277644(n+1)`
-/

namespace A022784.P16224961216984788638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277644 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A277644 (n + 1)

end

end A022784.P16224961216984788638

namespace A022784

/-- `∑[A277644(n+1)+1]-A277644(n+1)` -/
def P16224961216984788638.Spec : Prop :=
  ∀ n, P16224961216984788638.a n = A022784 (n + 1)

end A022784

/-!
# A022785: Place where n-th 1 occurs in A023123.

The programs for A022785, the canonical program `A022785.P11302809859389273548` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022785 has offset 1).

The definition of A022785 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2187 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A022785.P13227141356836513089

`∑[floor(e*n)+1]`
-/

namespace A022785.P13227141356836513089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.exp 1 * (n : ℝ)⌋ + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A022785.P13227141356836513089

namespace A022785

/-- `∑[floor(e*n)+1]` -/
def P13227141356836513089.Spec : Prop :=
  ∀ n, P13227141356836513089.a n = A022785 (n + 1)

end A022785

/-! ## A022785.P15202633672597786935

`ceil(a(n-1)+e*n)` with `a(0)=1`
-/

namespace A022785.P15202633672597786935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌈(a (n - 1) : ℝ) + Real.exp 1 * (n : ℝ)⌉

end

end A022785.P15202633672597786935

namespace A022785

/-- `ceil(a(n-1)+e*n)` -/
def P15202633672597786935.Spec : Prop :=
  ∀ n, P15202633672597786935.a n = A022785 (n + 1)

end A022785

/-! ## A022785.P15854323162243126784

`∑[floor(e*n)]-xor(n, -1)`
-/

namespace A022785.P15854323162243126784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.exp 1 * (n : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - Int.xor (n : ℤ) (-1)

end

end A022785.P15854323162243126784

namespace A022785

/-- `∑[floor(e*n)]-xor(n, -1)` -/
def P15854323162243126784.Spec : Prop :=
  ∀ n, P15854323162243126784.a n = A022785 (n + 1)

end A022785

/-! ## A022785.P12600247296968172043

`a(n-1)+floor(e*n)+1` with `a(0)=1`
-/

namespace A022785.P12600247296968172043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (⌊Real.exp 1 * (n : ℝ)⌋ + 1)

end

end A022785.P12600247296968172043

namespace A022785

/-- `a(n-1)+floor(e*n)+1` -/
def P12600247296968172043.Spec : Prop :=
  ∀ n, P12600247296968172043.a n = A022785 (n + 1)

end A022785

/-! ## A022785.P11302809859389273548

`∑[A121384(n)]+1`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A022785

/-- `∑[A121384(n)]+1` -/
def P11302809859389273548.Spec : Prop :=
  ∀ n, P11302809859389273548.a n = A022785 (n + 1)

theorem P11302809859389273548.correct : P11302809859389273548.Spec := by
  intro n
  simp only [A022785, Nat.add_sub_cancel]

end A022785

/-! ## A022785.P7266483018129195252

`∑[A022843(n)]+1+n`
-/

namespace A022785.P7266483018129195252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022843 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1 + (n : ℤ)

end

end A022785.P7266483018129195252

namespace A022785

/-- `∑[A022843(n)]+1+n` -/
def P7266483018129195252.Spec : Prop :=
  ∀ n, P7266483018129195252.a n = A022785 (n + 1)

end A022785

/-! ## A022785.P1834906866998474330

`1-(A001489(n)-∑[A022843(n)])`
-/

namespace A022785.P1834906866998474330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022843 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A001489 n - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A022785.P1834906866998474330

namespace A022785

/-- `1-(A001489(n)-∑[A022843(n)])` -/
def P1834906866998474330.Spec : Prop :=
  ∀ n, P1834906866998474330.a n = A022785 (n + 1)

end A022785

/-! ## A022785.P1908860639968995808

`A184976(n+1)-A000210(n+1)`
-/

namespace A022785.P1908860639968995808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184976 (n + 1) - A000210 (n + 1)

end

end A022785.P1908860639968995808

namespace A022785

/-- `A184976(n+1)-A000210(n+1)` -/
def P1908860639968995808.Spec : Prop :=
  ∀ n, P1908860639968995808.a n = A022785 (n + 1)

end A022785

/-! ## A022785.P4404871607327768456

`∑[ceil(e*n)]+A014963(A005101(n+1))`
-/

namespace A022785.P4404871607327768456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.exp 1 * (n : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + A014963 (A005101 (n + 1)).toNat

end

end A022785.P4404871607327768456

namespace A022785

/-- `∑[ceil(e*n)]+A014963(A005101(n+1))` -/
def P4404871607327768456.Spec : Prop :=
  ∀ n, P4404871607327768456.a n = A022785 (n + 1)

end A022785

/-! ## A022785.P13025955503395404642

`∑[ceil(e*n)]+A007318(A000096(n))`
-/

namespace A022785.P13025955503395404642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.exp 1 * (n : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + A007318 (A000096 n).toNat

end

end A022785.P13025955503395404642

namespace A022785

/-- `∑[ceil(e*n)]+A007318(A000096(n))` -/
def P13025955503395404642.Spec : Prop :=
  ∀ n, P13025955503395404642.a n = A022785 (n + 1)

end A022785

/-! ## A022785.P8858179437352082149

`∑[A121857(n²)]+1`
-/

namespace A022785.P8858179437352082149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121857 (n ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A022785.P8858179437352082149

namespace A022785

/-- `∑[A121857(n²)]+1` -/
def P8858179437352082149.Spec : Prop :=
  ∀ n, P8858179437352082149.a n = A022785 (n + 1)

end A022785

/-!
# A022786: Place where n-th 1 occurs in A023124.

The programs for A022786, the canonical program `A022786.P7179101593516911482` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022786 has offset 1).

The definition of A022786 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5892 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A022786.P6794195177614327217

`∑[floor(n/e)+1]`
-/

namespace A022786.P6794195177614327217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) / Real.exp 1⌋ + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A022786.P6794195177614327217

namespace A022786

/-- `∑[floor(n/e)+1]` -/
def P6794195177614327217.Spec : Prop :=
  ∀ n, P6794195177614327217.a n = A022786 (n + 1)

end A022786

/-! ## A022786.P12038763850504321108

`ceil(a(n-1)+n/e)` with `a(0)=1`
-/

namespace A022786.P12038763850504321108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌈(a (n - 1) : ℝ) + (n : ℝ) / Real.exp 1⌉

end

end A022786.P12038763850504321108

namespace A022786

/-- `ceil(a(n-1)+n/e)` -/
def P12038763850504321108.Spec : Prop :=
  ∀ n, P12038763850504321108.a n = A022786 (n + 1)

end A022786

/-! ## A022786.P10618066080721864676

`∑[floor(n/e)]-xor(n, -1)`
-/

namespace A022786.P10618066080721864676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) / Real.exp 1⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - Int.xor (n : ℤ) (-1)

end

end A022786.P10618066080721864676

namespace A022786

/-- `∑[floor(n/e)]-xor(n, -1)` -/
def P10618066080721864676.Spec : Prop :=
  ∀ n, P10618066080721864676.a n = A022786 (n + 1)

end A022786

/-! ## A022786.P1416779242780076260

`∑[ceil(n/e)]+and(1, n)!`
-/

namespace A022786.P1416779242780076260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℝ) / Real.exp 1⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (Nat.factorial (Nat.land 1 n) : ℤ)

end

end A022786.P1416779242780076260

namespace A022786

/-- `∑[ceil(n/e)]+and(1, n)!` -/
def P1416779242780076260.Spec : Prop :=
  ∀ n, P1416779242780076260.a n = A022786 (n + 1)

end A022786

/-! ## A022786.P11241281540985171215

`∑[ceil(n/e)]+gcd(n, n+1)`
-/

namespace A022786.P11241281540985171215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℝ) / Real.exp 1⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (Nat.gcd n (n + 1) : ℤ)

end

end A022786.P11241281540985171215

namespace A022786

/-- `∑[ceil(n/e)]+gcd(n, n+1)` -/
def P11241281540985171215.Spec : Prop :=
  ∀ n, P11241281540985171215.a n = A022786 (n + 1)

end A022786

/-! ## A022786.P14064793768623123879

`a(n-1)+floor(n/e)+1` with `a(0)=1`
-/

namespace A022786.P14064793768623123879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (⌊(n : ℝ) / Real.exp 1⌋ + 1)

end

end A022786.P14064793768623123879

namespace A022786

/-- `a(n-1)+floor(n/e)+1` -/
def P14064793768623123879.Spec : Prop :=
  ∀ n, P14064793768623123879.a n = A022786 (n + 1)

end A022786

/-! ## A022786.P7179101593516911482

`∑[A032634(n)]+1+n`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A022786

/-- `∑[A032634(n)]+1+n` -/
def P7179101593516911482.Spec : Prop :=
  ∀ n, P7179101593516911482.a n = A022786 (n + 1)

theorem P7179101593516911482.correct : P7179101593516911482.Spec := by
  intro n
  simp only [A022786, Nat.add_sub_cancel]

end A022786

/-! ## A022786.P7056138251342478802

`∑[∑[char[A022843(n)+1]]]+1`
-/

namespace A022786.P7056138251342478802
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022843 n + 1

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A022786.P7056138251342478802

namespace A022786

/-- `∑[∑[char[A022843(n)+1]]]+1` -/
def P7056138251342478802.Spec : Prop :=
  ∀ n, (P7056138251342478802.a n : ℤ) = A022786 (n + 1)

end A022786

/-! ## A022786.P12986519560047944751

`eq[1, A023124(n+1)]+1`
-/

namespace A022786.P12986519560047944751
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023124 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A022786.P12986519560047944751

namespace A022786

/-- `eq[1, A023124(n+1)]+1` -/
def P12986519560047944751.Spec : Prop :=
  ∀ n, (P12986519560047944751.a n : ℤ) = A022786 (n + 1)

end A022786

/-! ## A022786.P9757207338331430588

`lt[A058190(A023124(n+1)²), 1]+1`
-/

namespace A022786.P9757207338331430588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058190 (A023124 (n + 1) ^ 2).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A022786.P9757207338331430588

namespace A022786

/-- `lt[A058190(A023124(n+1)²), 1]+1` -/
def P9757207338331430588.Spec : Prop :=
  ∀ n, (P9757207338331430588.a n : ℤ) = A022786 (n + 1)

end A022786

/-! ## A022786.P11097511374772129852

`∑[ceil(n/e)]+A007318(∑[n])`
-/

namespace A022786.P11097511374772129852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℝ) / Real.exp 1⌉

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + A007318 (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A022786.P11097511374772129852

namespace A022786

/-- `∑[ceil(n/e)]+A007318(∑[n])` -/
def P11097511374772129852.Spec : Prop :=
  ∀ n, P11097511374772129852.a n = A022786 (n + 1)

end A022786

/-!
# A022787: Place where n-th 1 occurs in A023125.

The programs for A022787, the canonical program `A022787.P16520987218519823959` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022787 has offset 1).

The definition of A022787 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1297 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A022787.P16520987218519823959

`∑[floor(n*exp(2))+1]`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A022787

/-- `∑[floor(n*exp(2))+1]` -/
def P16520987218519823959.Spec : Prop :=
  ∀ n, P16520987218519823959.a n = A022787 (n + 1)

theorem P16520987218519823959.correct : P16520987218519823959.Spec := by
  intro n
  simp only [A022787, Nat.add_sub_cancel]

end A022787

/-! ## A022787.P4394068366835606394

`ceil(a(n-1)+n*exp(2))` with `a(0)=1`
-/

namespace A022787.P4394068366835606394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌈(a (n - 1) : ℝ) + (n : ℝ) * Real.exp (2 : ℝ)⌉

end

end A022787.P4394068366835606394

namespace A022787

/-- `ceil(a(n-1)+n*exp(2))` -/
def P4394068366835606394.Spec : Prop :=
  ∀ n, P4394068366835606394.a n = A022787 (n + 1)

end A022787

/-! ## A022787.P14652520963449102065

`∑[floor(n*exp(2))]-xor(n, -1)`
-/

namespace A022787.P14652520963449102065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.exp (2 : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - Int.xor (n : ℤ) (-1)

end

end A022787.P14652520963449102065

namespace A022787

/-- `∑[floor(n*exp(2))]-xor(n, -1)` -/
def P14652520963449102065.Spec : Prop :=
  ∀ n, P14652520963449102065.a n = A022787 (n + 1)

end A022787

/-! ## A022787.P8097456464685617262

`a(n-1)+floor(n*exp(2))+1` with `a(0)=1`
-/

namespace A022787.P8097456464685617262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (⌊(n : ℝ) * Real.exp (2 : ℝ)⌋ + 1)

end

end A022787.P8097456464685617262

namespace A022787

/-- `a(n-1)+floor(n*exp(2))+1` -/
def P8097456464685617262.Spec : Prop :=
  ∀ n, P8097456464685617262.a n = A022787 (n + 1)

end A022787

/-! ## A022787.P18382913863314173106

`ceil(n*exp(2))-floor(-a(n-1))` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A022787.P18382913863314173106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌈(n : ℝ) * Real.exp (2 : ℝ)⌉ - (-a (n - 1))

end

end A022787.P18382913863314173106

namespace A022787

/-- `ceil(n*exp(2))-floor(-a(n-1))` -/
def P18382913863314173106.Spec : Prop :=
  ∀ n, P18382913863314173106.a n = A022787 (n + 1)

end A022787

/-! ## A022787.P2430082022728132170

`eq[1, A023125(n+1)]+1`
-/

namespace A022787.P2430082022728132170
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023125 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A022787.P2430082022728132170

namespace A022787

/-- `eq[1, A023125(n+1)]+1` -/
def P2430082022728132170.Spec : Prop :=
  ∀ n, (P2430082022728132170.a n : ℤ) = A022787 (n + 1)

end A022787

/-!
# A022788: Place where n-th 1 occurs in A023126.

The programs for A022788, the canonical program `A022788.P15398137727683511653` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022788 has offset 1).

The definition of A022788 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8875 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A022788.P15398137727683511653

`∑[floor(n/exp(2))+1]`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A022788

/-- `∑[floor(n/exp(2))+1]` -/
def P15398137727683511653.Spec : Prop :=
  ∀ n, P15398137727683511653.a n = A022788 (n + 1)

theorem P15398137727683511653.correct : P15398137727683511653.Spec := by
  intro n
  simp only [A022788, Nat.add_sub_cancel]

end A022788

/-! ## A022788.P13161358572455853100

`ceil(a(n-1)+n/exp(2))` with `a(0)=1`
-/

namespace A022788.P13161358572455853100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌈(a (n - 1) : ℝ) + (n : ℝ) / Real.exp (2 : ℝ)⌉

end

end A022788.P13161358572455853100

namespace A022788

/-- `ceil(a(n-1)+n/exp(2))` -/
def P13161358572455853100.Spec : Prop :=
  ∀ n, P13161358572455853100.a n = A022788 (n + 1)

end A022788

/-! ## A022788.P2171208940362180471

`∑[floor(n/e²)]-xor(n, -1)`
-/

namespace A022788.P2171208940362180471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) / Real.exp 1 ^ 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - Int.xor (n : ℤ) (-1)

end

end A022788.P2171208940362180471

namespace A022788

/-- `∑[floor(n/e²)]-xor(n, -1)` -/
def P2171208940362180471.Spec : Prop :=
  ∀ n, P2171208940362180471.a n = A022788 (n + 1)

end A022788

/-! ## A022788.P5704644194075152048

`∑[floor(n/e²)]+gcd(n, n+1)+n`
-/

namespace A022788.P5704644194075152048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) / Real.exp 1 ^ 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (Nat.gcd n (n + 1) + n : ℤ)

end

end A022788.P5704644194075152048

namespace A022788

/-- `∑[floor(n/e²)]+gcd(n, n+1)+n` -/
def P5704644194075152048.Spec : Prop :=
  ∀ n, P5704644194075152048.a n = A022788 (n + 1)

end A022788

/-! ## A022788.P13411462238571208427

`eq[1, A023126(n+1)]+1`
-/

namespace A022788.P13411462238571208427
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023126 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A022788.P13411462238571208427

namespace A022788

/-- `eq[1, A023126(n+1)]+1` -/
def P13411462238571208427.Spec : Prop :=
  ∀ n, (P13411462238571208427.a n : ℤ) = A022788 (n + 1)

end A022788

/-!
# A022789: Place where n-th 1 occurs in A023127.

The programs for A022789, the canonical program `A022789.P15581079733562638700` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022789 has offset 1).

The definition of A022789 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2225 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A022789.P18328332955110979645

`∑[floor(n*sqrt(6))+1]`
-/

namespace A022789.P18328332955110979645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.sqrt (6 : ℝ)⌋ + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A022789.P18328332955110979645

namespace A022789

/-- `∑[floor(n*sqrt(6))+1]` -/
def P18328332955110979645.Spec : Prop :=
  ∀ n, P18328332955110979645.a n = A022789 (n + 1)

end A022789

/-! ## A022789.P12865433352481918971

`ceil(a(n-1)+n*sqrt(6))` with `a(0)=1`
-/

namespace A022789.P12865433352481918971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌈(a (n - 1) : ℝ) + (n : ℝ) * Real.sqrt (6 : ℝ)⌉

end

end A022789.P12865433352481918971

namespace A022789

/-- `ceil(a(n-1)+n*sqrt(6))` -/
def P12865433352481918971.Spec : Prop :=
  ∀ n, P12865433352481918971.a n = A022789 (n + 1)

end A022789

/-! ## A022789.P17288821331961640350

`∑[floor(n*sqrt(6))]-xor(n, -1)`
-/

namespace A022789.P17288821331961640350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.sqrt (6 : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - Int.xor (n : ℤ) (-1)

end

end A022789.P17288821331961640350

namespace A022789

/-- `∑[floor(n*sqrt(6))]-xor(n, -1)` -/
def P17288821331961640350.Spec : Prop :=
  ∀ n, P17288821331961640350.a n = A022789 (n + 1)

end A022789

/-! ## A022789.P2242082677154656651

`a(n-1)+ceil(n*root(6, 2))` with `a(0)=1`
-/

namespace A022789.P2242082677154656651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + ⌈(n : ℝ) * (6 : ℝ) ^ (1 / (2 : ℝ))⌉

end

end A022789.P2242082677154656651

namespace A022789

/-- `a(n-1)+ceil(n*root(6, 2))` -/
def P2242082677154656651.Spec : Prop :=
  ∀ n, P2242082677154656651.a n = A022789 (n + 1)

end A022789

/-! ## A022789.P100538755392203560

`floor(a(n-1)+n*sqrt(6)+1)` with `a(0)=1`
-/

namespace A022789.P100538755392203560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊(a (n - 1) : ℝ) + ((n : ℝ) * Real.sqrt (6 : ℝ) + 1)⌋

end

end A022789.P100538755392203560

namespace A022789

/-- `floor(a(n-1)+n*sqrt(6)+1)` -/
def P100538755392203560.Spec : Prop :=
  ∀ n, P100538755392203560.a n = A022789 (n + 1)

end A022789

/-! ## A022789.P15581079733562638700

`∑[A198083(n)]+1`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A022789

/-- `∑[A198083(n)]+1` -/
def P15581079733562638700.Spec : Prop :=
  ∀ n, P15581079733562638700.a n = A022789 (n + 1)

theorem P15581079733562638700.correct : P15581079733562638700.Spec := by
  intro n
  simp only [A022789, Nat.add_sub_cancel]

end A022789

/-! ## A022789.P15972896149134448869

`A194137(n+1)-A194145(n+1)`
-/

namespace A022789.P15972896149134448869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194137 (n + 1) - A194145 (n + 1)

end

end A022789.P15972896149134448869

namespace A022789

/-- `A194137(n+1)-A194145(n+1)` -/
def P15972896149134448869.Spec : Prop :=
  ∀ n, P15972896149134448869.a n = A022789 (n + 1)

end A022789

/-! ## A022789.P3175544025067424605

`∑[A022840(n+1)+1]-A022840(n+1)`
-/

namespace A022789.P3175544025067424605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022840 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A022840 (n + 1)

end

end A022789.P3175544025067424605

namespace A022789

/-- `∑[A022840(n+1)+1]-A022840(n+1)` -/
def P3175544025067424605.Spec : Prop :=
  ∀ n, P3175544025067424605.a n = A022789 (n + 1)

end A022789

/-! ## A022789.P14494443056008493860

`eq[1, A023127(n+1)]+1`
-/

namespace A022789.P14494443056008493860
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023127 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A022789.P14494443056008493860

namespace A022789

/-- `eq[1, A023127(n+1)]+1` -/
def P14494443056008493860.Spec : Prop :=
  ∀ n, (P14494443056008493860.a n : ℤ) = A022789 (n + 1)

end A022789

/-!
# A022790: Place where n-th 1 occurs in A023128.

The programs for A022790, the canonical program `A022790.P12543044921546330487` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022790 has offset 1).

The definition of A022790 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5500 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A022790.P535130622030152374

`∑[floor(n/sqrt(6))+1]`
-/

namespace A022790.P535130622030152374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) / Real.sqrt (6 : ℝ)⌋ + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A022790.P535130622030152374

namespace A022790

/-- `∑[floor(n/sqrt(6))+1]` -/
def P535130622030152374.Spec : Prop :=
  ∀ n, P535130622030152374.a n = A022790 (n + 1)

end A022790

/-! ## A022790.P14357371487118700912

`ceil(a(n-1)+n/sqrt(6))` with `a(0)=1`
-/

namespace A022790.P14357371487118700912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌈(a (n - 1) : ℝ) + (n : ℝ) / Real.sqrt (6 : ℝ)⌉

end

end A022790.P14357371487118700912

namespace A022790

/-- `ceil(a(n-1)+n/sqrt(6))` -/
def P14357371487118700912.Spec : Prop :=
  ∀ n, P14357371487118700912.a n = A022790 (n + 1)

end A022790

/-! ## A022790.P1416394231439724893

`∑[floor(n/sqrt(6))]-xor(n, -1)`
-/

namespace A022790.P1416394231439724893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) / Real.sqrt (6 : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - Int.xor (n : ℤ) (-1)

end

end A022790.P1416394231439724893

namespace A022790

/-- `∑[floor(n/sqrt(6))]-xor(n, -1)` -/
def P1416394231439724893.Spec : Prop :=
  ∀ n, P1416394231439724893.a n = A022790 (n + 1)

end A022790

/-! ## A022790.P10471350254181847072

`floor(a(n-1)+n/sqrt(6)+1)` with `a(0)=1`
-/

namespace A022790.P10471350254181847072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊(a (n - 1) : ℝ) + ((n : ℝ) / Real.sqrt (6 : ℝ) + 1)⌋

end

end A022790.P10471350254181847072

namespace A022790

/-- `floor(a(n-1)+n/sqrt(6)+1)` -/
def P10471350254181847072.Spec : Prop :=
  ∀ n, P10471350254181847072.a n = A022790 (n + 1)

end A022790

/-! ## A022790.P12543044921546330487

`∑[A172476(n)]+1+n`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A022790

/-- `∑[A172476(n)]+1+n` -/
def P12543044921546330487.Spec : Prop :=
  ∀ n, P12543044921546330487.a n = A022790 (n + 1)

theorem P12543044921546330487.correct : P12543044921546330487.Spec := by
  intro n
  simp only [A022790, Nat.add_sub_cancel]

end A022790

/-! ## A022790.P12946121397845397872

`A194986(n)+a(n-1)` with `a(0)=1`
-/

namespace A022790.P12946121397845397872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A194986 n + a (n - 1)

end

end A022790.P12946121397845397872

namespace A022790

/-- `A194986(n)+a(n-1)` -/
def P12946121397845397872.Spec : Prop :=
  ∀ n, P12946121397845397872.a n = A022790 (n + 1)

end A022790

/-! ## A022790.P9637168154148582036

`∑[A194986(n+1)]+1-A194986(n+1)`
-/

namespace A022790.P9637168154148582036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194986 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A194986 (n + 1))

end

end A022790.P9637168154148582036

namespace A022790

/-- `∑[A194986(n+1)]+1-A194986(n+1)` -/
def P9637168154148582036.Spec : Prop :=
  ∀ n, P9637168154148582036.a n = A022790 (n + 1)

end A022790

/-! ## A022790.P12938087418142803462

`eq[1, A023128(n+1)]+1`
-/

namespace A022790.P12938087418142803462
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023128 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A022790.P12938087418142803462

namespace A022790

/-- `eq[1, A023128(n+1)]+1` -/
def P12938087418142803462.Spec : Prop :=
  ∀ n, (P12938087418142803462.a n : ℤ) = A022790 (n + 1)

end A022790

/-! ## A022790.P1919132541829811646

`record[A065190(A065190(n+1))/A023128(n+1)]`
-/

namespace A022790.P1919132541829811646
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A065190 (A065190 (n + 1)).toNat : ℚ) / (A023128 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A022790.P1919132541829811646

namespace A022790

/-- `record[A065190(A065190(n+1))/A023128(n+1)]` -/
def P1919132541829811646.Spec : Prop :=
  ∀ n, P1919132541829811646.a n = (A022790 (n + 1) : ℚ)

end A022790

/-!
# A022791: Place where n-th 1 occurs in A023129.

The programs for A022791, the canonical program `A022791.P2752683687528874488` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022791 has offset 1).

The definition of A022791 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2862 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A022791.P5406912625478303079

`∑[floor(n*sqrt(e))+1]`
-/

namespace A022791.P5406912625478303079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.sqrt (Real.exp 1)⌋ + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A022791.P5406912625478303079

namespace A022791

/-- `∑[floor(n*sqrt(e))+1]` -/
def P5406912625478303079.Spec : Prop :=
  ∀ n, P5406912625478303079.a n = A022791 (n + 1)

end A022791

/-! ## A022791.P13972438806075545955

`ceil(a(n-1)+n*sqrt(e))` with `a(0)=1`
-/

namespace A022791.P13972438806075545955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌈(a (n - 1) : ℝ) + (n : ℝ) * Real.sqrt (Real.exp 1)⌉

end

end A022791.P13972438806075545955

namespace A022791

/-- `ceil(a(n-1)+n*sqrt(e))` -/
def P13972438806075545955.Spec : Prop :=
  ∀ n, P13972438806075545955.a n = A022791 (n + 1)

end A022791

/-! ## A022791.P624492480418184253

`a(n-1)+floor(n*sqrt(e))+1` with `a(0)=1`
-/

namespace A022791.P624492480418184253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (⌊(n : ℝ) * Real.sqrt (Real.exp 1)⌋ + 1)

end

end A022791.P624492480418184253

namespace A022791

/-- `a(n-1)+floor(n*sqrt(e))+1` -/
def P624492480418184253.Spec : Prop :=
  ∀ n, P624492480418184253.a n = A022791 (n + 1)

end A022791

/-! ## A022791.P2752683687528874488

`∑[A061402(n)]+1+n`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A022791

/-- `∑[A061402(n)]+1+n` -/
def P2752683687528874488.Spec : Prop :=
  ∀ n, P2752683687528874488.a n = A022791 (n + 1)

theorem P2752683687528874488.correct : P2752683687528874488.Spec := by
  intro n
  simp only [A022791, Nat.add_sub_cancel]

end A022791

/-! ## A022791.P13738223760157937598

`∑[A061402(A028310(n))]+n`
-/

namespace A022791.P13738223760157937598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061402 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A022791.P13738223760157937598

namespace A022791

/-- `∑[A061402(A028310(n))]+n` -/
def P13738223760157937598.Spec : Prop :=
  ∀ n, P13738223760157937598.a n = A022791 (n + 1)

end A022791

/-! ## A022791.P1897704248209776858

`record[(n+1)/A023129(n+1)]`
-/

namespace A022791.P1897704248209776858
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A023129 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A022791.P1897704248209776858

namespace A022791

/-- `record[(n+1)/A023129(n+1)]` -/
def P1897704248209776858.Spec : Prop :=
  ∀ n, P1897704248209776858.a n = (A022791 (n + 1) : ℚ)

end A022791

/-!
# A022792: Place where n-th 1 occurs in A023130.

The programs for A022792, the canonical program `A022792.P2618437352207063626` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022792 has offset 1).

The definition of A022792 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4559 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A022792.P2618437352207063626

`∑[floor(n/sqrt(e))+1]`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A022792

/-- `∑[floor(n/sqrt(e))+1]` -/
def P2618437352207063626.Spec : Prop :=
  ∀ n, P2618437352207063626.a n = A022792 (n + 1)

theorem P2618437352207063626.correct : P2618437352207063626.Spec := by
  intro n
  simp only [A022792, Nat.add_sub_cancel]

end A022792

/-! ## A022792.P5017996370939126593

`ceil(a(n-1)+n/sqrt(e))` with `a(0)=1`
-/

namespace A022792.P5017996370939126593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌈(a (n - 1) : ℝ) + (n : ℝ) / Real.sqrt (Real.exp 1)⌉

end

end A022792.P5017996370939126593

namespace A022792

/-- `ceil(a(n-1)+n/sqrt(e))` -/
def P5017996370939126593.Spec : Prop :=
  ∀ n, P5017996370939126593.a n = A022792 (n + 1)

end A022792

/-! ## A022792.P9449938684654848959

`∑[floor(n/sqrt(e))]-xor(n, -1)`
-/

namespace A022792.P9449938684654848959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) / Real.sqrt (Real.exp 1)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - Int.xor (n : ℤ) (-1)

end

end A022792.P9449938684654848959

namespace A022792

/-- `∑[floor(n/sqrt(e))]-xor(n, -1)` -/
def P9449938684654848959.Spec : Prop :=
  ∀ n, P9449938684654848959.a n = A022792 (n + 1)

end A022792

/-! ## A022792.P13880811169085225232

`∑[ceil(n/sqrt(e))]+gcd(n, n+1)`
-/

namespace A022792.P13880811169085225232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℝ) / Real.sqrt (Real.exp 1)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (Nat.gcd n (n + 1) : ℤ)

end

end A022792.P13880811169085225232

namespace A022792

/-- `∑[ceil(n/sqrt(e))]+gcd(n, n+1)` -/
def P13880811169085225232.Spec : Prop :=
  ∀ n, P13880811169085225232.a n = A022792 (n + 1)

end A022792

/-! ## A022792.P17261558746674718087

`a(n-1)+floor(n/sqrt(e))+1` with `a(0)=1`
-/

namespace A022792.P17261558746674718087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (⌊(n : ℝ) / Real.sqrt (Real.exp 1)⌋ + 1)

end

end A022792.P17261558746674718087

namespace A022792

/-- `a(n-1)+floor(n/sqrt(e))+1` -/
def P17261558746674718087.Spec : Prop :=
  ∀ n, P17261558746674718087.a n = A022792 (n + 1)

end A022792

/-!
# A022793: Place where n-th 1 occurs in A023131.

The programs for A022793, the canonical program `A022793.P8078340536079714582` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022793 has offset 1).

The definition of A022793 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2251 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A022793.P16632081179057315865

`∑[floor(n*sqrt(8))+1]`
-/

namespace A022793.P16632081179057315865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.sqrt (8 : ℝ)⌋ + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A022793.P16632081179057315865

namespace A022793

/-- `∑[floor(n*sqrt(8))+1]` -/
def P16632081179057315865.Spec : Prop :=
  ∀ n, P16632081179057315865.a n = A022793 (n + 1)

end A022793

/-! ## A022793.P9876021526249913480

`ceil(a(n-1)+n*sqrt(8))` with `a(0)=1`
-/

namespace A022793.P9876021526249913480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌈(a (n - 1) : ℝ) + (n : ℝ) * Real.sqrt (8 : ℝ)⌉

end

end A022793.P9876021526249913480

namespace A022793

/-- `ceil(a(n-1)+n*sqrt(8))` -/
def P9876021526249913480.Spec : Prop :=
  ∀ n, P9876021526249913480.a n = A022793 (n + 1)

end A022793

/-! ## A022793.P8799335154416456571

`floor(a(n-1)+n*sqrt(8)+1)` with `a(0)=1`
-/

namespace A022793.P8799335154416456571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊(a (n - 1) : ℝ) + ((n : ℝ) * Real.sqrt (8 : ℝ) + 1)⌋

end

end A022793.P8799335154416456571

namespace A022793

/-- `floor(a(n-1)+n*sqrt(8)+1)` -/
def P8799335154416456571.Spec : Prop :=
  ∀ n, P8799335154416456571.a n = A022793 (n + 1)

end A022793

/-! ## A022793.P8078340536079714582

`∑[A198263(n)]+1`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A022793

/-- `∑[A198263(n)]+1` -/
def P8078340536079714582.Spec : Prop :=
  ∀ n, P8078340536079714582.a n = A022793 (n + 1)

theorem P8078340536079714582.correct : P8078340536079714582.Spec := by
  intro n
  simp only [A022793, Nat.add_sub_cancel]

end A022793

/-! ## A022793.P17069954982366771669

`∑[A049474(4*n)]+1`
-/

namespace A022793.P17069954982366771669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049474 (4 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A022793.P17069954982366771669

namespace A022793

/-- `∑[A049474(4*n)]+1` -/
def P17069954982366771669.Spec : Prop :=
  ∀ n, P17069954982366771669.a n = A022793 (n + 1)

end A022793

/-! ## A022793.P524055597843784508

`A129232(2*n)+n+1`
-/

namespace A022793.P524055597843784508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129232 (2 * n) + (n + 1 : ℤ)

end

end A022793.P524055597843784508

namespace A022793

/-- `A129232(2*n)+n+1` -/
def P524055597843784508.Spec : Prop :=
  ∀ n, P524055597843784508.a n = A022793 (n + 1)

end A022793

/-! ## A022793.P18372862827919457666

`∑[A001951(2*n)]+n+1`
-/

namespace A022793.P18372862827919457666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001951 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n + 1 : ℤ)

end

end A022793.P18372862827919457666

namespace A022793

/-- `∑[A001951(2*n)]+n+1` -/
def P18372862827919457666.Spec : Prop :=
  ∀ n, P18372862827919457666.a n = A022793 (n + 1)

end A022793

/-! ## A022793.P8664208955216869740

`∑[n]+(n+1)²-∑[A195177(n)]`
-/

namespace A022793.P8664208955216869740
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195177 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j + (n + 1) ^ 2 : ℕ) : ℤ) - ∑ j ∈ Finset.range (n + 1), f2 j

end

end A022793.P8664208955216869740

namespace A022793

/-- `∑[n]+(n+1)²-∑[A195177(n)]` -/
def P8664208955216869740.Spec : Prop :=
  ∀ n, P8664208955216869740.a n = A022793 (n + 1)

end A022793

/-! ## A022793.P7284903847244357067

`A057427(3*n+4)+∑[ceil(sqrt(2*n*4*n))]`
-/

namespace A022793.P7284903847244357067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (2 * n * (4 * n) : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (3 * n + 4) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A022793.P7284903847244357067

namespace A022793

/-- `A057427(3*n+4)+∑[ceil(sqrt(2*n*4*n))]` -/
def P7284903847244357067.Spec : Prop :=
  ∀ n, P7284903847244357067.a n = A022793 (n + 1)

end A022793

/-! ## A022793.P17462469900519331264

`∑[A022842(n+1)+1]-A022842(n+1)`
-/

namespace A022793.P17462469900519331264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022842 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A022842 (n + 1)

end

end A022793.P17462469900519331264

namespace A022793

/-- `∑[A022842(n+1)+1]-A022842(n+1)` -/
def P17462469900519331264.Spec : Prop :=
  ∀ n, P17462469900519331264.a n = A022793 (n + 1)

end A022793

/-! ## A022793.P7127942762919339458

`A000217(n+1)+∑[A187328(A022846(n))]`
-/

namespace A022793.P7127942762919339458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187328 (A022846 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A022793.P7127942762919339458

namespace A022793

/-- `A000217(n+1)+∑[A187328(A022846(n))]` -/
def P7127942762919339458.Spec : Prop :=
  ∀ n, P7127942762919339458.a n = A022793 (n + 1)

end A022793

/-!
# A022794: Place where n-th 1 occurs in A023132.

The programs for A022794, the canonical program `A022794.P2072618029331811702` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022794 has offset 1).

The definition of A022794 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5973 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A022794.P1952589519644785038

`∑[floor(n/sqrt(8))+1]`
-/

namespace A022794.P1952589519644785038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) / Real.sqrt (8 : ℝ)⌋ + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A022794.P1952589519644785038

namespace A022794

/-- `∑[floor(n/sqrt(8))+1]` -/
def P1952589519644785038.Spec : Prop :=
  ∀ n, P1952589519644785038.a n = A022794 (n + 1)

end A022794

/-! ## A022794.P7337187360093543666

`ceil(a(n-1)+n/sqrt(8))` with `a(0)=1`
-/

namespace A022794.P7337187360093543666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌈(a (n - 1) : ℝ) + (n : ℝ) / Real.sqrt (8 : ℝ)⌉

end

end A022794.P7337187360093543666

namespace A022794

/-- `ceil(a(n-1)+n/sqrt(8))` -/
def P7337187360093543666.Spec : Prop :=
  ∀ n, P7337187360093543666.a n = A022794 (n + 1)

end A022794

/-! ## A022794.P8301321557278685069

`floor(a(n-1)+n/sqrt(8)+1)` with `a(0)=1`
-/

namespace A022794.P8301321557278685069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊(a (n - 1) : ℝ) + ((n : ℝ) / Real.sqrt (8 : ℝ) + 1)⌋

end

end A022794.P8301321557278685069

namespace A022794

/-- `floor(a(n-1)+n/sqrt(8)+1)` -/
def P8301321557278685069.Spec : Prop :=
  ∀ n, P8301321557278685069.a n = A022794 (n + 1)

end A022794

/-! ## A022794.P2072618029331811702

`∑[A172474(n)]+1+n`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A022794

/-- `∑[A172474(n)]+1+n` -/
def P2072618029331811702.Spec : Prop :=
  ∀ n, P2072618029331811702.a n = A022794 (n + 1)

theorem P2072618029331811702.correct : P2072618029331811702.Spec := by
  intro n
  simp only [A022794, Nat.add_sub_cancel]

end A022794

/-! ## A022794.P321237496988805919

`A194990(n)+a(n-1)` with `a(0)=1`
-/

namespace A022794.P321237496988805919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A194990 n + a (n - 1)

end

end A022794.P321237496988805919

namespace A022794

/-- `A194990(n)+a(n-1)` -/
def P321237496988805919.Spec : Prop :=
  ∀ n, P321237496988805919.a n = A022794 (n + 1)

end A022794

/-! ## A022794.P1250604691722159971

`∑[∑[char[A001951(2*n)+1]]]+1`
-/

namespace A022794.P1250604691722159971
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001951 (2 * n) + 1

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A022794.P1250604691722159971

namespace A022794

/-- `∑[∑[char[A001951(2*n)+1]]]+1` -/
def P1250604691722159971.Spec : Prop :=
  ∀ n, (P1250604691722159971.a n : ℤ) = A022794 (n + 1)

end A022794

/-! ## A022794.P1772530842061271691

`∑[∑[char[A022842(n+1)+1]]]+1+n`
-/

namespace A022794.P1772530842061271691
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022842 (n + 1) + 1

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1 + n

end

end A022794.P1772530842061271691

namespace A022794

/-- `∑[∑[char[A022842(n+1)+1]]]+1+n` -/
def P1772530842061271691.Spec : Prop :=
  ∀ n, (P1772530842061271691.a n : ℤ) = A022794 (n + 1)

end A022794

/-! ## A022794.P17185731268520652551

`∑[A194990(n+1)]+1-A194990(n+1)`
-/

namespace A022794.P17185731268520652551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194990 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A194990 (n + 1))

end

end A022794.P17185731268520652551

namespace A022794

/-- `∑[A194990(n+1)]+1-A194990(n+1)` -/
def P17185731268520652551.Spec : Prop :=
  ∀ n, P17185731268520652551.a n = A022794 (n + 1)

end A022794

/-! ## A022794.P2204467583393293385

`eq[1, A023132(n+1)]+1`
-/

namespace A022794.P2204467583393293385
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023132 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A022794.P2204467583393293385

namespace A022794

/-- `eq[1, A023132(n+1)]+1` -/
def P2204467583393293385.Spec : Prop :=
  ∀ n, (P2204467583393293385.a n : ℤ) = A022794 (n + 1)

end A022794

/-! ## A022794.P3001970823127286930

`A283942(∑[n+1])`
-/

namespace A022794.P3001970823127286930
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283942 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A022794.P3001970823127286930

namespace A022794

/-- `A283942(∑[n+1])` -/
def P3001970823127286930.Spec : Prop :=
  ∀ n, P3001970823127286930.a n = A022794 (n + 1)

end A022794

/-!
# A022795: Place where n-th 1 occurs in A023133.

The programs for A022795, the canonical program `A022795.P4523488485773220254` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022795 has offset 1).

The definition of A022795 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1877 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A022795.P7110370877328911283

`∑[floor(π*n)+1]`
-/

namespace A022795.P7110370877328911283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.pi * (n : ℝ)⌋ + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A022795.P7110370877328911283

namespace A022795

/-- `∑[floor(π*n)+1]` -/
def P7110370877328911283.Spec : Prop :=
  ∀ n, P7110370877328911283.a n = A022795 (n + 1)

end A022795

/-! ## A022795.P4096671385696101902

`abs(∑[xor(-1, floor(π*n))])`
-/

namespace A022795.P4096671385696101902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (-1) ⌊Real.pi * (n : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A022795.P4096671385696101902

namespace A022795

/-- `abs(∑[xor(-1, floor(π*n))])` -/
def P4096671385696101902.Spec : Prop :=
  ∀ n, P4096671385696101902.a n = A022795 (n + 1)

end A022795

/-! ## A022795.P18288189237444449227

`-∑[xor(-1, floor(π*n))]`
-/

namespace A022795.P18288189237444449227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (-1) ⌊Real.pi * (n : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ j ∈ Finset.range (n + 1), f1 j)

end

end A022795.P18288189237444449227

namespace A022795

/-- `-∑[xor(-1, floor(π*n))]` -/
def P18288189237444449227.Spec : Prop :=
  ∀ n, P18288189237444449227.a n = A022795 (n + 1)

end A022795

/-! ## A022795.P10051974578961550349

`ceil(a(n-1)+π*n)` with `a(0)=1`
-/

namespace A022795.P10051974578961550349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌈(a (n - 1) : ℝ) + Real.pi * (n : ℝ)⌉

end

end A022795.P10051974578961550349

namespace A022795

/-- `ceil(a(n-1)+π*n)` -/
def P10051974578961550349.Spec : Prop :=
  ∀ n, P10051974578961550349.a n = A022795 (n + 1)

end A022795

/-! ## A022795.P6058219530657120148

`a(n-1)-xor(-1, floor(π*n))` with `a(0)=1, a(1)=5`
-/

namespace A022795.P6058219530657120148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 5] fun n a =>
  a (n - 1) - Int.xor (-1) ⌊Real.pi * (n : ℝ)⌋

end

end A022795.P6058219530657120148

namespace A022795

/-- `a(n-1)-xor(-1, floor(π*n))` -/
def P6058219530657120148.Spec : Prop :=
  ∀ n, P6058219530657120148.a n = A022795 (n + 1)

end A022795

/-! ## A022795.P4523488485773220254

`∑[A121381(n)]+1`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A022795

/-- `∑[A121381(n)]+1` -/
def P4523488485773220254.Spec : Prop :=
  ∀ n, P4523488485773220254.a n = A022795 (n + 1)

theorem P4523488485773220254.correct : P4523488485773220254.Spec := by
  intro n
  simp only [A022795, Nat.add_sub_cancel]

end A022795

/-! ## A022795.P15097860182755005525

`∑[A022844(n)]+1+n`
-/

namespace A022795.P15097860182755005525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022844 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1 + (n : ℤ)

end

end A022795.P15097860182755005525

namespace A022795

/-- `∑[A022844(n)]+1+n` -/
def P15097860182755005525.Spec : Prop :=
  ∀ n, P15097860182755005525.a n = A022795 (n + 1)

end A022795

/-! ## A022795.P4564815205413358353

`∑[A187320(n)]+(n+1)²`
-/

namespace A022795.P4564815205413358353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187320 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ((n + 1) ^ 2 : ℤ)

end

end A022795.P4564815205413358353

namespace A022795

/-- `∑[A187320(n)]+(n+1)²` -/
def P4564815205413358353.Spec : Prop :=
  ∀ n, P4564815205413358353.a n = A022795 (n + 1)

end A022795

/-! ## A022795.P13967411862888984470

`2*∑[A004084(n+1)/2]`
-/

namespace A022795.P13967411862888984470
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004084 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A022795.P13967411862888984470

namespace A022795

/-- `2*∑[A004084(n+1)/2]` -/
def P13967411862888984470.Spec : Prop :=
  ∀ n, P13967411862888984470.a n = (A022795 (n + 1) : ℚ)

end A022795

/-! ## A022795.P6383656034213947422

`∑[2*A292987(n+1)]-A292987(n+1)`
-/

namespace A022795.P6383656034213947422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A292987 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A292987 (n + 1)

end

end A022795.P6383656034213947422

namespace A022795

/-- `∑[2*A292987(n+1)]-A292987(n+1)` -/
def P6383656034213947422.Spec : Prop :=
  ∀ n, P6383656034213947422.a n = A022795 (n + 1)

end A022795

/-! ## A022795.P3517673679317002000

`∑[A121855(n²)]+1`
-/

namespace A022795.P3517673679317002000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121855 (n ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A022795.P3517673679317002000

namespace A022795

/-- `∑[A121855(n²)]+1` -/
def P3517673679317002000.Spec : Prop :=
  ∀ n, P3517673679317002000.a n = A022795 (n + 1)

end A022795

/-! ## A022795.P479786068269280402

`A302255(n²)+(n+1)²`
-/

namespace A022795.P479786068269280402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302255 (n ^ 2) + ((n + 1) ^ 2 : ℤ)

end

end A022795.P479786068269280402

namespace A022795

/-- `A302255(n²)+(n+1)²` -/
def P479786068269280402.Spec : Prop :=
  ∀ n, P479786068269280402.a n = A022795 (n + 1)

end A022795

/-!
# A022796: Place where n-th 1 occurs in A023134.

The programs for A022796, the canonical program `A022796.P10383129870039449392` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022796 has offset 1).

The definition of A022796 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6107 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A022796.P2586046518561429701

`∑[floor(n/π)+1]`
-/

namespace A022796.P2586046518561429701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) / Real.pi⌋ + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A022796.P2586046518561429701

namespace A022796

/-- `∑[floor(n/π)+1]` -/
def P2586046518561429701.Spec : Prop :=
  ∀ n, P2586046518561429701.a n = A022796 (n + 1)

end A022796

/-! ## A022796.P1244882319230805724

`-∑[xor(-1, floor(n/π))]`
-/

namespace A022796.P1244882319230805724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (-1) ⌊(n : ℝ) / Real.pi⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ j ∈ Finset.range (n + 1), f1 j)

end

end A022796.P1244882319230805724

namespace A022796

/-- `-∑[xor(-1, floor(n/π))]` -/
def P1244882319230805724.Spec : Prop :=
  ∀ n, P1244882319230805724.a n = A022796 (n + 1)

end A022796

/-! ## A022796.P14623506216313044565

`ceil(a(n-1)+n/π)` with `a(0)=1`
-/

namespace A022796.P14623506216313044565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌈(a (n - 1) : ℝ) + (n : ℝ) / Real.pi⌉

end

end A022796.P14623506216313044565

namespace A022796

/-- `ceil(a(n-1)+n/π)` -/
def P14623506216313044565.Spec : Prop :=
  ∀ n, P14623506216313044565.a n = A022796 (n + 1)

end A022796

/-! ## A022796.P10383129870039449392

`∑[A032615(n)]+1+n`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A022796

/-- `∑[A032615(n)]+1+n` -/
def P10383129870039449392.Spec : Prop :=
  ∀ n, P10383129870039449392.a n = A022796 (n + 1)

theorem P10383129870039449392.correct : P10383129870039449392.Spec := by
  intro n
  simp only [A022796, Nat.add_sub_cancel]

end A022796

/-! ## A022796.P15162702487834625816

`A296357(n)+a(n-1)` with `a(0)=1`
-/

namespace A022796.P15162702487834625816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A296357 n + a (n - 1)

end

end A022796.P15162702487834625816

namespace A022796

/-- `A296357(n)+a(n-1)` -/
def P15162702487834625816.Spec : Prop :=
  ∀ n, P15162702487834625816.a n = A022796 (n + 1)

end A022796

/-! ## A022796.P6977449388981068605

`abs(∑[comp[A059532(n+1)]+1-n])`
-/

namespace A022796.P6977449388981068605
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059532 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n + 1 : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A022796.P6977449388981068605

namespace A022796

/-- `abs(∑[comp[A059532(n+1)]+1-n])` -/
def P6977449388981068605.Spec : Prop :=
  ∀ n, P6977449388981068605.a n = A022796 (n + 1)

end A022796

/-! ## A022796.P3944735001867201808

`∑[comp[A022844(n)+1+n]-n]+1`
-/

namespace A022796.P3944735001867201808
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022844 n + 1 + (n : ℤ)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A022796.P3944735001867201808

namespace A022796

/-- `∑[comp[A022844(n)+1+n]-n]+1` -/
def P3944735001867201808.Spec : Prop :=
  ∀ n, P3944735001867201808.a n = A022796 (n + 1)

end A022796

/-! ## A022796.P15389663624263496001

`∑[comp[A059532(n+1)]+1]-A000217(n)`
-/

namespace A022796.P15389663624263496001
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059532 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A000217 n

end

end A022796.P15389663624263496001

namespace A022796

/-- `∑[comp[A059532(n+1)]+1]-A000217(n)` -/
def P15389663624263496001.Spec : Prop :=
  ∀ n, P15389663624263496001.a n = A022796 (n + 1)

end A022796

/-! ## A022796.P2193102782610252614

`∑[A296357(n+1)]+1-A296357(n+1)`
-/

namespace A022796.P2193102782610252614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296357 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A296357 (n + 1))

end

end A022796.P2193102782610252614

namespace A022796

/-- `∑[A296357(n+1)]+1-A296357(n+1)` -/
def P2193102782610252614.Spec : Prop :=
  ∀ n, P2193102782610252614.a n = A022796 (n + 1)

end A022796

/-! ## A022796.P2703039675837205562

`eq[1, A023134(n+1)]+1`
-/

namespace A022796.P2703039675837205562
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023134 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A022796.P2703039675837205562

namespace A022796

/-- `eq[1, A023134(n+1)]+1` -/
def P2703039675837205562.Spec : Prop :=
  ∀ n, (P2703039675837205562.a n : ℤ) = A022796 (n + 1)

end A022796

/-!
# A022797: a(n) = n-th prime + n-th nonprime.

The programs for A022797, the canonical program `A022797.P3696269492153289254` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022797 has offset 1).

The definition of A022797 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A018252, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A022797.P3696269492153289254

`A000040(n+1)+A018252(n+1)`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A022797

/-- `A000040(n+1)+A018252(n+1)` -/
def P3696269492153289254.Spec : Prop :=
  ∀ n, P3696269492153289254.a n = A022797 (n + 1)

theorem P3696269492153289254.correct : P3696269492153289254.Spec := by
  intro n
  simp only [A022797, Nat.add_sub_cancel]

end A022797

/-! ## A022797.P5363984372101535844

`A163249(n+1)+1+n`
-/

namespace A022797.P5363984372101535844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163249 (n + 1) + 1 + (n : ℤ)

end

end A022797.P5363984372101535844

namespace A022797

/-- `A163249(n+1)+1+n` -/
def P5363984372101535844.Spec : Prop :=
  ∀ n, P5363984372101535844.a n = A022797 (n + 1)

end A022797

/-! ## A022797.P2342183994736626054

`A073425(n)+A014688(n+1)`
-/

namespace A022797.P2342183994736626054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073425 n + A014688 (n + 1)

end

end A022797.P2342183994736626054

namespace A022797

/-- `A073425(n)+A014688(n+1)` -/
def P2342183994736626054.Spec : Prop :=
  ∀ n, P2342183994736626054.a n = A022797 (n + 1)

end A022797

/-! ## A022797.P11592937271715890542

`A171639(n+1)+A075526(n)`
-/

namespace A022797.P11592937271715890542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171639 (n + 1) + A075526 n

end

end A022797.P11592937271715890542

namespace A022797

/-- `A171639(n+1)+A075526(n)` -/
def P11592937271715890542.Spec : Prop :=
  ∀ n, P11592937271715890542.a n = A022797 (n + 1)

end A022797

/-! ## A022797.P15567279672022542363

`p?[A259153(n)]+Δ[A051349(n)]`
-/

namespace A022797.P15567279672022542363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259153 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051349 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + (f2 (n + 1) - f2 n)

end

end A022797.P15567279672022542363

namespace A022797

/-- `p?[A259153(n)]+Δ[A051349(n)]` -/
def P15567279672022542363.Spec : Prop :=
  ∀ n, P15567279672022542363.a n = A022797 (n + 1)

end A022797

/-! ## A022797.P13825458732568423933

`A018252(n+1)+Δ[A007504(n)]`
-/

namespace A022797.P13825458732568423933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1) + (f1 (n + 1) - f1 n)

end

end A022797.P13825458732568423933

namespace A022797

/-- `A018252(n+1)+Δ[A007504(n)]` -/
def P13825458732568423933.Spec : Prop :=
  ∀ n, P13825458732568423933.a n = A022797 (n + 1)

end A022797

/-! ## A022797.P15954324712991991904

`A000040(n+1)+Δ[A051349(n)]`
-/

namespace A022797.P15954324712991991904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051349 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + (f1 (n + 1) - f1 n)

end

end A022797.P15954324712991991904

namespace A022797

/-- `A000040(n+1)+Δ[A051349(n)]` -/
def P15954324712991991904.Spec : Prop :=
  ∀ n, P15954324712991991904.a n = A022797 (n + 1)

end A022797

/-! ## A022797.P4339687568927994898

`A141468(n+2)+Δ[A007504(n)]`
-/

namespace A022797.P4339687568927994898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (n + 2) + (f1 (n + 1) - f1 n)

end

end A022797.P4339687568927994898

namespace A022797

/-- `A141468(n+2)+Δ[A007504(n)]` -/
def P4339687568927994898.Spec : Prop :=
  ∀ n, P4339687568927994898.a n = A022797 (n + 1)

end A022797

/-! ## A022797.P17505755190642042331

`A018252(n+1)+p?[A259153(n)]`
-/

namespace A022797.P17505755190642042331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259153 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1) + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A022797.P17505755190642042331

namespace A022797

/-- `A018252(n+1)+p?[A259153(n)]` -/
def P17505755190642042331.Spec : Prop :=
  ∀ n, P17505755190642042331.a n = A022797 (n + 1)

end A022797

/-! ## A022797.P3955845066243860698

`A139270(n+1)+A014237(n+1)`
-/

namespace A022797.P3955845066243860698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139270 (n + 1) + A014237 (n + 1)

end

end A022797.P3955845066243860698

namespace A022797

/-- `A139270(n+1)+A014237(n+1)` -/
def P3955845066243860698.Spec : Prop :=
  ∀ n, P3955845066243860698.a n = A022797 (n + 1)

end A022797

/-! ## A022797.P1455262303225852889

`A095116(n+1)+A073425(n)+1`
-/

namespace A022797.P1455262303225852889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095116 (n + 1) + (A073425 n + 1)

end

end A022797.P1455262303225852889

namespace A022797

/-- `A095116(n+1)+A073425(n)+1` -/
def P1455262303225852889.Spec : Prop :=
  ∀ n, P1455262303225852889.a n = A022797 (n + 1)

end A022797

/-! ## A022797.P4657143139314311380

`A171504(n+1)+A014689(n+1)`
-/

namespace A022797.P4657143139314311380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171504 (n + 1) + A014689 (n + 1)

end

end A022797.P4657143139314311380

namespace A022797

/-- `A171504(n+1)+A014689(n+1)` -/
def P4657143139314311380.Spec : Prop :=
  ∀ n, P4657143139314311380.a n = A022797 (n + 1)

end A022797

/-! ## A022797.P2000017416805367076

`A100484(n+1)-A014237(n+1)`
-/

namespace A022797.P2000017416805367076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100484 (n + 1) - A014237 (n + 1)

end

end A022797.P2000017416805367076

namespace A022797

/-- `A100484(n+1)-A014237(n+1)` -/
def P2000017416805367076.Spec : Prop :=
  ∀ n, P2000017416805367076.a n = A022797 (n + 1)

end A022797

/-! ## A022797.P3582007047348790969

`A064799(n+1)-A065310(n+1)`
-/

namespace A022797.P3582007047348790969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064799 (n + 1) - A065310 (n + 1)

end

end A022797.P3582007047348790969

namespace A022797

/-- `A064799(n+1)-A065310(n+1)` -/
def P3582007047348790969.Spec : Prop :=
  ∀ n, P3582007047348790969.a n = A022797 (n + 1)

end A022797

/-! ## A022797.P14679428488766157715

`A141468(n+2)+A000040(n+1)`
-/

namespace A022797.P14679428488766157715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (n + 2) + A000040 (n + 1)

end

end A022797.P14679428488766157715

namespace A022797

/-- `A141468(n+2)+A000040(n+1)` -/
def P14679428488766157715.Spec : Prop :=
  ∀ n, P14679428488766157715.a n = A022797 (n + 1)

end A022797

/-! ## A022797.P10129112403392129684

`A253910(n+1)%A001748(n+1)`
-/

namespace A022797.P10129112403392129684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A253910 (n + 1)) (A001748 (n + 1))

end

end A022797.P10129112403392129684

namespace A022797

/-- `A253910(n+1)%A001748(n+1)` -/
def P10129112403392129684.Spec : Prop :=
  ∀ n, P10129112403392129684.a n = A022797 (n + 1)

end A022797

/-! ## A022797.P589074725422548196

`A018252(n+1)+sqrt(A001248(n+1))`
-/

namespace A022797.P589074725422548196
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A018252 (n + 1) : ℝ) + Real.sqrt (A001248 (n + 1) : ℝ)

end

end A022797.P589074725422548196

namespace A022797

/-- `A018252(n+1)+sqrt(A001248(n+1))` -/
def P589074725422548196.Spec : Prop :=
  ∀ n, P589074725422548196.a n = (A022797 (n + 1) : ℝ)

end A022797

/-! ## A022797.P910532347943466584

`A000040(n+1)+sqrt(A062312(n+1))`
-/

namespace A022797.P910532347943466584
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A000040 (n + 1) : ℝ) + Real.sqrt (A062312 (n + 1) : ℝ)

end

end A022797.P910532347943466584

namespace A022797

/-- `A000040(n+1)+sqrt(A062312(n+1))` -/
def P910532347943466584.Spec : Prop :=
  ∀ n, P910532347943466584.a n = (A022797 (n + 1) : ℝ)

end A022797

/-! ## A022797.P4609057277450208568

`A000040(n+1)+∑[A054546(n+1)]`
-/

namespace A022797.P4609057277450208568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054546 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A022797.P4609057277450208568

namespace A022797

/-- `A000040(n+1)+∑[A054546(n+1)]` -/
def P4609057277450208568.Spec : Prop :=
  ∀ n, P4609057277450208568.a n = A022797 (n + 1)

end A022797

/-! ## A022797.P4413480302496084571

`A018252(n+1)+∑[A054541(n+1)]`
-/

namespace A022797.P4413480302496084571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A022797.P4413480302496084571

namespace A022797

/-- `A018252(n+1)+∑[A054541(n+1)]` -/
def P4413480302496084571.Spec : Prop :=
  ∀ n, P4413480302496084571.a n = A022797 (n + 1)

end A022797

/-!
# A022798: a(n) = P(n) + c(n), where P(1) = 1, P(n) = (n-1)-st prime for n >= 2, c(n) = n-th number not in sequence P.

The programs for A022798, the canonical program `A022798.P9273272214686499992` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022798 has offset 1).

The definition of A022798 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002808, A008578, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A022798.P9273272214686499992

`A002808(n+1)+A008578(n+1)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A022798

/-- `A002808(n+1)+A008578(n+1)` -/
def P9273272214686499992.Spec : Prop :=
  ∀ n, P9273272214686499992.a n = A022798 (n + 1)

theorem P9273272214686499992.correct : P9273272214686499992.Spec := by
  intro n
  simp only [A022798, Nat.add_sub_cancel]

end A022798

/-! ## A022798.P4752500216386609509

`A163248(n+1)+1+n`
-/

namespace A022798.P4752500216386609509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163248 (n + 1) + 1 + (n : ℤ)

end

end A022798.P4752500216386609509

namespace A022798

/-- `A163248(n+1)+1+n` -/
def P4752500216386609509.Spec : Prop :=
  ∀ n, P4752500216386609509.a n = A022798 (n + 1)

end A022798

/-! ## A022798.P16576656424094516212

`A072668(n+1)+A028815(n)`
-/

namespace A022798.P16576656424094516212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072668 (n + 1) + A028815 n

end

end A022798.P16576656424094516212

namespace A022798

/-- `A072668(n+1)+A028815(n)` -/
def P16576656424094516212.Spec : Prop :=
  ∀ n, P16576656424094516212.a n = A022798 (n + 1)

end A022798

/-! ## A022798.P16688822416155808070

`A064799(n+1)-A075526(n)`
-/

namespace A022798.P16688822416155808070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064799 (n + 1) - A075526 n

end

end A022798.P16688822416155808070

namespace A022798

/-- `A064799(n+1)-A075526(n)` -/
def P16688822416155808070.Spec : Prop :=
  ∀ n, P16688822416155808070.a n = A022798 (n + 1)

end A022798

/-! ## A022798.P4869187505080807126

`A008578(n+1)+Δ[A053767(n)]`
-/

namespace A022798.P4869187505080807126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053767 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1) + (f1 (n + 1) - f1 n)

end

end A022798.P4869187505080807126

namespace A022798

/-- `A008578(n+1)+Δ[A053767(n)]` -/
def P4869187505080807126.Spec : Prop :=
  ∀ n, P4869187505080807126.a n = A022798 (n + 1)

end A022798

/-! ## A022798.P6329715063226179011

`A008578(n+1)+comp[A351078(n)]`
-/

namespace A022798.P6329715063226179011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351078 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1) + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A022798.P6329715063226179011

namespace A022798

/-- `A008578(n+1)+comp[A351078(n)]` -/
def P6329715063226179011.Spec : Prop :=
  ∀ n, P6329715063226179011.a n = A022798 (n + 1)

end A022798

/-! ## A022798.P15929556159578149781

`A090178(n+1)+A073169(n+1)`
-/

namespace A022798.P15929556159578149781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090178 (n + 1) + A073169 (n + 1)

end

end A022798.P15929556159578149781

namespace A022798

/-- `A090178(n+1)+A073169(n+1)` -/
def P15929556159578149781.Spec : Prop :=
  ∀ n, P15929556159578149781.a n = A022798 (n + 1)

end A022798

/-! ## A022798.P5536387730138523259

`A171639(n+1)+A065310(n+1)`
-/

namespace A022798.P5536387730138523259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171639 (n + 1) + A065310 (n + 1)

end

end A022798.P5536387730138523259

namespace A022798

/-- `A171639(n+1)+A065310(n+1)` -/
def P5536387730138523259.Spec : Prop :=
  ∀ n, P5536387730138523259.a n = A022798 (n + 1)

end A022798

/-! ## A022798.P8143174693287655413

`A282671(n+1)+A014238(n+1)`
-/

namespace A022798.P8143174693287655413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282671 (n + 1) + A014238 (n + 1)

end

end A022798.P8143174693287655413

namespace A022798

/-- `A282671(n+1)+A014238(n+1)` -/
def P8143174693287655413.Spec : Prop :=
  ∀ n, P8143174693287655413.a n = A022798 (n + 1)

end A022798

/-! ## A022798.P315037342934376915

`A162177(n+1)+A161537(n+1)`
-/

namespace A022798.P315037342934376915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162177 (n + 1) + A161537 (n + 1)

end

end A022798.P315037342934376915

namespace A022798

/-- `A162177(n+1)+A161537(n+1)` -/
def P315037342934376915.Spec : Prop :=
  ∀ n, P315037342934376915.a n = A022798 (n + 1)

end A022798

/-! ## A022798.P10866562734149273793

`A001747(n+1)-A014238(n+1)`
-/

namespace A022798.P10866562734149273793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001747 (n + 1) - A014238 (n + 1)

end

end A022798.P10866562734149273793

namespace A022798

/-- `A001747(n+1)-A014238(n+1)` -/
def P10866562734149273793.Spec : Prop :=
  ∀ n, P10866562734149273793.a n = A022798 (n + 1)

end A022798

/-! ## A022798.P17086580006007944749

`A008578(n+1)+A018252(n+2)`
-/

namespace A022798.P17086580006007944749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1) + A018252 (n + 2)

end

end A022798.P17086580006007944749

namespace A022798

/-- `A008578(n+1)+A018252(n+2)` -/
def P17086580006007944749.Spec : Prop :=
  ∀ n, P17086580006007944749.a n = A022798 (n + 1)

end A022798

/-! ## A022798.P5393277766737450256

`A002808(n+1)+A028815(n)-1`
-/

namespace A022798.P5393277766737450256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1) + (A028815 n - 1)

end

end A022798.P5393277766737450256

namespace A022798

/-- `A002808(n+1)+A028815(n)-1` -/
def P5393277766737450256.Spec : Prop :=
  ∀ n, P5393277766737450256.a n = A022798 (n + 1)

end A022798

/-! ## A022798.P4580391603705532592

`A079696(n+1)+A028815(n)-2`
-/

namespace A022798.P4580391603705532592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079696 (n + 1) + (A028815 n - 2)

end

end A022798.P4580391603705532592

namespace A022798

/-- `A079696(n+1)+A028815(n)-2` -/
def P4580391603705532592.Spec : Prop :=
  ∀ n, P4580391603705532592.a n = A022798 (n + 1)

end A022798

/-! ## A022798.P9274048892567289380

`A141468(n+3)+A008578(n+1)`
-/

namespace A022798.P9274048892567289380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (n + 3) + A008578 (n + 1)

end

end A022798.P9274048892567289380

namespace A022798

/-- `A141468(n+3)+A008578(n+1)` -/
def P9274048892567289380.Spec : Prop :=
  ∀ n, P9274048892567289380.a n = A022798 (n + 1)

end A022798

/-! ## A022798.P8254919196975775088

`A028815(n)+lt[1, A001222(n+1)]`
-/

namespace A022798.P8254919196975775088
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028815 n + (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n : ℤ)

end

end A022798.P8254919196975775088

namespace A022798

/-- `A028815(n)+lt[1, A001222(n+1)]` -/
def P8254919196975775088.Spec : Prop :=
  ∀ n, P8254919196975775088.a n = A022798 (n + 1)

end A022798

/-! ## A022798.P3221807015587918505

`A008578(n+1)+comp[A158611(n+1)]`
-/

namespace A022798.P3221807015587918505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1) + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A022798.P3221807015587918505

namespace A022798

/-- `A008578(n+1)+comp[A158611(n+1)]` -/
def P3221807015587918505.Spec : Prop :=
  ∀ n, P3221807015587918505.a n = A022798 (n + 1)

end A022798

/-! ## A022798.P6707276544721562457

`A008578(n+1)+A072668(n+1)+1`
-/

namespace A022798.P6707276544721562457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1) + (A072668 (n + 1) + 1)

end

end A022798.P6707276544721562457

namespace A022798

/-- `A008578(n+1)+A072668(n+1)+1` -/
def P6707276544721562457.Spec : Prop :=
  ∀ n, P6707276544721562457.a n = A022798 (n + 1)

end A022798

/-! ## A022798.P16084420694977638511

`A008578(n+1)+A079696(n+1)-1`
-/

namespace A022798.P16084420694977638511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1) + (A079696 (n + 1) - 1)

end

end A022798.P16084420694977638511

namespace A022798

/-- `A008578(n+1)+A079696(n+1)-1` -/
def P16084420694977638511.Spec : Prop :=
  ∀ n, P16084420694977638511.a n = A022798 (n + 1)

end A022798

/-! ## A022798.P4835395846569428766

`A014238(n+1)+2*A002808(n+1)`
-/

namespace A022798.P4835395846569428766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014238 (n + 1) + 2 * A002808 (n + 1)

end

end A022798.P4835395846569428766

namespace A022798

/-- `A014238(n+1)+2*A002808(n+1)` -/
def P4835395846569428766.Spec : Prop :=
  ∀ n, P4835395846569428766.a n = A022798 (n + 1)

end A022798

/-!
# A022799: a(n) = F(n+1) + c(n) where F(k) is k-th Fibonacci number and c(n) is n-th non-Fibonacci number.

The programs for A022799, the canonical program `A022799.P3202200011068491808` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A022799 has offset 1).

The definition of A022799 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 479 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A022799.P5583279687864540961

`comp[A000045(n)]+A000045(n+2)`
-/

namespace A022799.P5583279687864540961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) + A000045 (n + 2)

end

end A022799.P5583279687864540961

namespace A022799

/-- `comp[A000045(n)]+A000045(n+2)` -/
def P5583279687864540961.Spec : Prop :=
  ∀ n, P5583279687864540961.a n = A022799 (n + 1)

end A022799

/-! ## A022799.P3748888159350441553

`A212804(n+3)+comp[A212804(n)]`
-/

namespace A022799.P3748888159350441553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (n + 3) + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A022799.P3748888159350441553

namespace A022799

/-- `A212804(n+3)+comp[A212804(n)]` -/
def P3748888159350441553.Spec : Prop :=
  ∀ n, P3748888159350441553.a n = A022799 (n + 1)

end A022799

/-! ## A022799.P3202200011068491808

`A001690(n+1)+A000045(n+2)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A022799

/-- `A001690(n+1)+A000045(n+2)` -/
def P3202200011068491808.Spec : Prop :=
  ∀ n, P3202200011068491808.a n = A022799 (n + 1)

theorem P3202200011068491808.correct : P3202200011068491808.Spec := by
  intro n
  simp only [A022799, Nat.add_sub_cancel]

end A022799

/-! ## A022799.P16551619597797742156

`eq[0, A010056(n)]+A000045(n+2)`
-/

namespace A022799.P16551619597797742156
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010056 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) + A000045 (n + 2)

end

end A022799.P16551619597797742156

namespace A022799

/-- `eq[0, A010056(n)]+A000045(n+2)` -/
def P16551619597797742156.Spec : Prop :=
  ∀ n, P16551619597797742156.a n = A022799 (n + 1)

end A022799

/-! ## A022799.P17427236609703891971

`A001611(n+2)+comp[A000071(n+1)]`
-/

namespace A022799.P17427236609703891971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001611 (n + 2) + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A022799.P17427236609703891971

namespace A022799

/-- `A001611(n+2)+comp[A000071(n+1)]` -/
def P17427236609703891971.Spec : Prop :=
  ∀ n, P17427236609703891971.a n = A022799 (n + 1)

end A022799

/-! ## A022799.P13632817859119470418

`A053602(2*n+1)+comp[A053602(n)]`
-/

namespace A022799.P13632817859119470418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053602 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053602 (2 * n + 1) + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A022799.P13632817859119470418

namespace A022799

/-- `A053602(2*n+1)+comp[A053602(n)]` -/
def P13632817859119470418.Spec : Prop :=
  ∀ n, P13632817859119470418.a n = A022799 (n + 1)

end A022799

/-! ## A022799.P18419500867961211816

`A103609(2*(n+2))+comp[A103609(n)]`
-/

namespace A022799.P18419500867961211816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103609 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103609 (2 * (n + 2)) + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A022799.P18419500867961211816

namespace A022799

/-- `A103609(2*(n+2))+comp[A103609(n)]` -/
def P18419500867961211816.Spec : Prop :=
  ∀ n, P18419500867961211816.a n = A022799 (n + 1)

end A022799

/-! ## A022799.P9116854813036410590

`A327035(3*(n+1))+comp[A327035(n)]`
-/

namespace A022799.P9116854813036410590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327035 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327035 (3 * (n + 1)) + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A022799.P9116854813036410590

namespace A022799

/-- `A327035(3*(n+1))+comp[A327035(n)]` -/
def P9116854813036410590.Spec : Prop :=
  ∀ n, P9116854813036410590.a n = A022799 (n + 1)

end A022799

/-! ## A022799.P17124408562587072890

`A014241(n+1)+2*A001690(n+1)`
-/

namespace A022799.P17124408562587072890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014241 (n + 1) + 2 * A001690 (n + 1)

end

end A022799.P17124408562587072890

namespace A022799

/-- `A014241(n+1)+2*A001690(n+1)` -/
def P17124408562587072890.Spec : Prop :=
  ∀ n, P17124408562587072890.a n = A022799 (n + 1)

end A022799

/-! ## A022799.P8353346578608854665

`A105800(2*(n+2))+A001690(n+1)`
-/

namespace A022799.P8353346578608854665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105800 (2 * (n + 2)) + A001690 (n + 1)

end

end A022799.P8353346578608854665

namespace A022799

/-- `A105800(2*(n+2))+A001690(n+1)` -/
def P8353346578608854665.Spec : Prop :=
  ∀ n, P8353346578608854665.a n = A022799 (n + 1)

end A022799

/-! ## A022799.P2739341546081887531

`A023484(n)-A000045(n)`
-/

namespace A022799.P2739341546081887531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023484 n - A000045 n

end

end A022799.P2739341546081887531

namespace A022799

/-- `A023484(n)-A000045(n)` -/
def P2739341546081887531.Spec : Prop :=
  ∀ n, P2739341546081887531.a n = A022799 (n + 1)

end A022799

/-! ## A022799.P14531503310442060143

`A023484(n)-A212804(n+1)`
-/

namespace A022799.P14531503310442060143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023484 n - A212804 (n + 1)

end

end A022799.P14531503310442060143

namespace A022799

/-- `A023484(n)-A212804(n+1)` -/
def P14531503310442060143.Spec : Prop :=
  ∀ n, P14531503310442060143.a n = A022799 (n + 1)

end A022799

/-! ## A022799.P760319950034201054

`A023483(n+1)-A000045(n+1)`
-/

namespace A022799.P760319950034201054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023483 (n + 1) - A000045 (n + 1)

end

end A022799.P760319950034201054

namespace A022799

/-- `A023483(n+1)-A000045(n+1)` -/
def P760319950034201054.Spec : Prop :=
  ∀ n, P760319950034201054.a n = A022799 (n + 1)

end A022799

/-! ## A022799.P2635370710026560835

`A023483(n+1)-A212804(n+2)`
-/

namespace A022799.P2635370710026560835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023483 (n + 1) - A212804 (n + 2)

end

end A022799.P2635370710026560835

namespace A022799

/-- `A023483(n+1)-A212804(n+2)` -/
def P2635370710026560835.Spec : Prop :=
  ∀ n, P2635370710026560835.a n = A022799 (n + 1)

end A022799

/-! ## A022799.P8210071634206234997

`comp[A000071(n+1)]+A020695(n)-A000071(n+1)`
-/

namespace A022799.P8210071634206234997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) + (A020695 n - A000071 (n + 1))

end

end A022799.P8210071634206234997

namespace A022799

/-- `comp[A000071(n+1)]+A020695(n)-A000071(n+1)` -/
def P8210071634206234997.Spec : Prop :=
  ∀ n, P8210071634206234997.a n = A022799 (n + 1)

end A022799

/-! ## A022799.P15065566438747551834

`A023486(n)-A020695(n)`
-/

namespace A022799.P15065566438747551834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023486 n - A020695 n

end

end A022799.P15065566438747551834

namespace A022799

/-- `A023486(n)-A020695(n)` -/
def P15065566438747551834.Spec : Prop :=
  ∀ n, P15065566438747551834.a n = A022799 (n + 1)

end A022799

/-! ## A022799.P11344934079892890955

`A023486(n)-A000045(n+3)`
-/

namespace A022799.P11344934079892890955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023486 n - A000045 (n + 3)

end

end A022799.P11344934079892890955

namespace A022799

/-- `A023486(n)-A000045(n+3)` -/
def P11344934079892890955.Spec : Prop :=
  ∀ n, P11344934079892890955.a n = A022799 (n + 1)

end A022799

/-! ## A022799.P11409812149224135387

`A001690(n+1)+A023486(n)-A023483(n+1)`
-/

namespace A022799.P11409812149224135387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001690 (n + 1) + (A023486 n - A023483 (n + 1))

end

end A022799.P11409812149224135387

namespace A022799

/-- `A001690(n+1)+A023486(n)-A023483(n+1)` -/
def P11409812149224135387.Spec : Prop :=
  ∀ n, P11409812149224135387.a n = A022799 (n + 1)

end A022799

/-! ## A022799.P907299914675082668

`A023484(n+1)+A023484(n)-A023483(n+2)`
-/

namespace A022799.P907299914675082668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023484 (n + 1) + (A023484 n - A023483 (n + 2))

end

end A022799.P907299914675082668

namespace A022799

/-- `A023484(n+1)+A023484(n)-A023483(n+2)` -/
def P907299914675082668.Spec : Prop :=
  ∀ n, P907299914675082668.a n = A022799 (n + 1)

end A022799

/-! ## A022799.P2601557154334939779

`A001690(n+1)+A022800(n+2)-A023483(n+1)`
-/

namespace A022799.P2601557154334939779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001690 (n + 1) + (A022800 (n + 2) - A023483 (n + 1))

end

end A022799.P2601557154334939779

namespace A022799

/-- `A001690(n+1)+A022800(n+2)-A023483(n+1)` -/
def P2601557154334939779.Spec : Prop :=
  ∀ n, P2601557154334939779.a n = A022799 (n + 1)

end A022799

