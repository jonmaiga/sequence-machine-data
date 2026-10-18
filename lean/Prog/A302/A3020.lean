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
import Seq.B000.C013
import Seq.B000.C015
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C003
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
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

/-!
# A302000: Number of 3Xn 0..1 arrays with every element equal to 1, 2 or 4 horizontally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302000, there is no canonical definition to state claims against.
-/

/-! ## A302000.P511898832476611197

`A301999(∑[n+2]+4)`
-/

namespace A302000.P511898832476611197
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301999 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A302000.P511898832476611197

/-! ## A302000.P2698423906381562175

`A301999(A167614(n+1))+A025466(n)`
-/

namespace A302000.P2698423906381562175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301999 (A167614 (n + 1)).toNat + A025466 n

end

end A302000.P2698423906381562175

/-! ## A302000.P2269120823593221931

`A016068(n)*A301999(A167614(n+1))`
-/

namespace A302000.P2269120823593221931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016068 n * A301999 (A167614 (n + 1)).toNat

end

end A302000.P2269120823593221931

/-! ## A302000.P12373661113041762406

`A054977(n)*A301999(A167614(n+1))`
-/

namespace A302000.P12373661113041762406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n * A301999 (A167614 (n + 1)).toNat

end

end A302000.P12373661113041762406

/-! ## A302000.P5822818671370377261

`A057427(n)*A301999(A167614(n+1))`
-/

namespace A302000.P5822818671370377261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A301999 (A167614 (n + 1)).toNat

end

end A302000.P5822818671370377261

/-!
# A302001: Number of 4Xn 0..1 arrays with every element equal to 1, 2 or 4 horizontally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302001, there is no canonical definition to state claims against.
-/

/-! ## A302001.P4214664648412154025

`A301999(A141214(n)+7)`
-/

namespace A302001.P4214664648412154025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301999 (A141214 n + 7).toNat

end

end A302001.P4214664648412154025

/-! ## A302001.P10086322740709678633

`A301999(A052905(n)+9)`
-/

namespace A302001.P10086322740709678633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301999 (A052905 n + 9).toNat

end

end A302001.P10086322740709678633

/-! ## A302001.P11983346831518056867

`A301999(A167614(n+2)+1)`
-/

namespace A302001.P11983346831518056867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301999 (A167614 (n + 2) + 1).toNat

end

end A302001.P11983346831518056867

/-! ## A302001.P11566969036727138494

`A301999(A166136(n+2)-2)`
-/

namespace A302001.P11566969036727138494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301999 (A166136 (n + 2) - 2).toNat

end

end A302001.P11566969036727138494

/-! ## A302001.P18039726227937278972

`A301999(A000124(n+3)+3)`
-/

namespace A302001.P18039726227937278972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301999 (A000124 (n + 3) + 3).toNat

end

end A302001.P18039726227937278972

/-!
# A302002: Number of 5Xn 0..1 arrays with every element equal to 1, 2 or 4 horizontally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302002, there is no canonical definition to state claims against.
-/

/-! ## A302002.P14783154107557220858

`A301999(A167499(n+3))`
-/

namespace A302002.P14783154107557220858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301999 (A167499 (n + 3)).toNat

end

end A302002.P14783154107557220858

/-! ## A302002.P5317074584975585203

`A301999(A155212(n)+13)`
-/

namespace A302002.P5317074584975585203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301999 (A155212 n + 13).toNat

end

end A302002.P5317074584975585203

/-! ## A302002.P14372960585163379111

`A301999(A056000(n)+15)`
-/

namespace A302002.P14372960585163379111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301999 (A056000 n + 15).toNat

end

end A302002.P14372960585163379111

/-! ## A302002.P10410066576035037253

`A301999(A000124(n+4)+4)`
-/

namespace A302002.P10410066576035037253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301999 (A000124 (n + 4) + 4).toNat

end

end A302002.P10410066576035037253

/-! ## A302002.P12115741793602809502

`A301999(A000217(n+4)+5)`
-/

namespace A302002.P12115741793602809502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301999 (A000217 (n + 4) + 5).toNat

end

end A302002.P12115741793602809502

/-!
# A302003: Number of 6Xn 0..1 arrays with every element equal to 1, 2 or 4 horizontally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302003, there is no canonical definition to state claims against.
-/

/-! ## A302003.P16828162598852183946

`A301999(A166136(n+4))`
-/

namespace A302003.P16828162598852183946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301999 (A166136 (n + 4)).toNat

end

end A302003.P16828162598852183946

/-! ## A302003.P1231077721508709124

`A301999(Δ[A264443(n)]+10)`
-/

namespace A302003.P1231077721508709124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301999 (f1 (n + 1) - f1 n + 10).toNat

end

end A302003.P1231077721508709124

/-! ## A302003.P16767545336574897728

`A301999(A000217(n+5)+6)`
-/

namespace A302003.P16767545336574897728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301999 (A000217 (n + 5) + 6).toNat

end

end A302003.P16767545336574897728

/-! ## A302003.P7963385845433540161

`A301999(A152947(n+7)+5)`
-/

namespace A302003.P7963385845433540161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301999 (A152947 (n + 7) + 5).toNat

end

end A302003.P7963385845433540161

/-! ## A302003.P8172551898876830801

`A301999(A000124(n+6)-(n+1))`
-/

namespace A302003.P8172551898876830801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301999 (A000124 (n + 6) - (n + 1 : ℤ)).toNat

end

end A302003.P8172551898876830801

/-!
# A302004: Number of 7Xn 0..1 arrays with every element equal to 1, 2 or 4 horizontally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302004, there is no canonical definition to state claims against.
-/

/-! ## A302004.P12270384697155890268

`A301999(eq[11, A066657(n)])`
-/

namespace A302004.P12270384697155890268
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301999 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A302004.P12270384697155890268

/-! ## A302004.P7648730621820121556

`A301999(A166136(n+5)+1)`
-/

namespace A302004.P7648730621820121556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301999 (A166136 (n + 5) + 1).toNat

end

end A302004.P7648730621820121556

/-! ## A302004.P15490752086497218735

`A301999(A051938(n+6)+25)`
-/

namespace A302004.P15490752086497218735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301999 (A051938 (n + 6) + 25).toNat

end

end A302004.P15490752086497218735

/-! ## A302004.P6603585780073240984

`A301999(eq[8, A131818(n+1)])`
-/

namespace A302004.P6603585780073240984
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301999 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A302004.P6603585780073240984

/-! ## A302004.P12891067350713172956

`A301999(A052905(n+4)+5-n)`
-/

namespace A302004.P12891067350713172956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301999 (A052905 (n + 4) + 5 - (n : ℤ)).toNat

end

end A302004.P12891067350713172956

/-!
# A302005: Number of n X n 0..1 arrays with every element equal to 0, 1, 2 or 3 horizontally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302005, there is no canonical definition to state claims against.
-/

/-! ## A302005.P7266468024691684233

`A302010(∑[4*n]+1)`
-/

namespace A302005.P7266468024691684233
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302010 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A302005.P7266468024691684233

/-! ## A302005.P9081357139672134789

`record[A003982(n)*A302010(n+1)]`
-/

namespace A302005.P9081357139672134789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A302010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A302005.P9081357139672134789

/-! ## A302005.P362578512367381691

`A302010(A001844(n))+A054900(n)`
-/

namespace A302005.P362578512367381691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302010 (A001844 n).toNat + A054900 n

end

end A302005.P362578512367381691

/-! ## A302005.P4342978090198529734

`A302010(A001844(n))+A034449(n+1)`
-/

namespace A302005.P4342978090198529734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302010 (A001844 n).toNat + A034449 (n + 1)

end

end A302005.P4342978090198529734

/-! ## A302005.P14208747218199340678

`A302010(A001844(n))+A000038(n+4)`
-/

namespace A302005.P14208747218199340678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302010 (A001844 n).toNat + A000038 (n + 4)

end

end A302005.P14208747218199340678

/-!
# A302006: Number of nX4 0..1 arrays with every element equal to 0, 1, 2 or 3 horizontally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302006, there is no canonical definition to state claims against.
-/

/-! ## A302006.P16236661347726373938

`A302010(A141214(n+1))`
-/

namespace A302006.P16236661347726373938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302010 (A141214 (n + 1)).toNat

end

end A302006.P16236661347726373938

/-! ## A302006.P7401510486670670586

`A302010(A055998(n+2))`
-/

namespace A302006.P7401510486670670586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302010 (A055998 (n + 2)).toNat

end

end A302006.P7401510486670670586

/-! ## A302006.P4926559906347927434

`A302010(A056000(n)+7)`
-/

namespace A302006.P4926559906347927434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302010 (A056000 n + 7).toNat

end

end A302006.P4926559906347927434

/-! ## A302006.P2658850791052329618

`A302010(eq[2, A152157(n)])`
-/

namespace A302006.P2658850791052329618
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302010 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A302006.P2658850791052329618

/-! ## A302006.P14707140043634202634

`A302010(eq[3, A193592(n)])`
-/

namespace A302006.P14707140043634202634
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302010 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A302006.P14707140043634202634

/-!
# A302007: Number of nX5 0..1 arrays with every element equal to 0, 1, 2 or 3 horizontally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302007, there is no canonical definition to state claims against.
-/

/-! ## A302007.P3484441605617252668

`A302010(Δ[A264443(n)])`
-/

namespace A302007.P3484441605617252668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302010 (f1 (n + 1) - f1 n).toNat

end

end A302007.P3484441605617252668

/-! ## A302007.P6109399291169666602

`A302010(A046691(n+3))`
-/

namespace A302007.P6109399291169666602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302010 (A046691 (n + 3)).toNat

end

end A302007.P6109399291169666602

/-! ## A302007.P7829288537939385179

`A302010(eq[3, A152157(n)])`
-/

namespace A302007.P7829288537939385179
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302010 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A302007.P7829288537939385179

/-! ## A302007.P11753965809221818868

`A302010(eq[4, A193592(n)])`
-/

namespace A302007.P11753965809221818868
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302010 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A302007.P11753965809221818868

/-! ## A302007.P11390640472026413762

`A302010(Δ[A023545(n+1)])`
-/

namespace A302007.P11390640472026413762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302010 (f1 (n + 1) - f1 n).toNat

end

end A302007.P11390640472026413762

/-!
# A302008: Number of nX6 0..1 arrays with every element equal to 0, 1, 2 or 3 horizontally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302008, there is no canonical definition to state claims against.
-/

/-! ## A302008.P4981633268864733927

`A302010(A052905(n+3))`
-/

namespace A302008.P4981633268864733927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302010 (A052905 (n + 3)).toNat

end

end A302008.P4981633268864733927

/-! ## A302008.P8039378806999117766

`A302010(A056119(n)+16)`
-/

namespace A302008.P8039378806999117766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302010 (A056119 n + 16).toNat

end

end A302008.P8039378806999117766

/-! ## A302008.P10195733009322104648

`A302010(eq[3, A219347(n)])`
-/

namespace A302008.P10195733009322104648
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302010 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A302008.P10195733009322104648

/-! ## A302008.P846974042950744631

`A302010(eq[5, A193592(n)])`
-/

namespace A302008.P846974042950744631
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302010 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A302008.P846974042950744631

/-! ## A302008.P4168393473581215437

`A302010(Δ[Δ[A006504(n+1)]])`
-/

namespace A302008.P4168393473581215437
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006504 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302010 (f1 (n + 1) - f1 n).toNat

end

end A302008.P4168393473581215437

/-!
# A302009: Number of nX7 0..1 arrays with every element equal to 0, 1, 2 or 3 horizontally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302009, there is no canonical definition to state claims against.
-/

/-! ## A302009.P6101128756024258755

`A302010(A055999(n+4))`
-/

namespace A302009.P6101128756024258755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302010 (A055999 (n + 4)).toNat

end

end A302009.P6101128756024258755

/-! ## A302009.P17826267362684756106

`A302010(eq[4, A219347(n)])`
-/

namespace A302009.P17826267362684756106
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302010 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A302009.P17826267362684756106

/-! ## A302009.P15291449244840517552

`A302010(eq[6, A193592(n)])`
-/

namespace A302009.P15291449244840517552
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302010 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A302009.P15291449244840517552

/-! ## A302009.P5184558323249743706

`A302010(eq[5, A332954(n)])`
-/

namespace A302009.P5184558323249743706
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332954 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302010 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A302009.P5184558323249743706

/-! ## A302009.P16857606787952054003

`A302010(eq[6, A243060(n+1)])`
-/

namespace A302009.P16857606787952054003
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243060 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302010 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A302009.P16857606787952054003

/-!
# A302010: T(n,k)=Number of nXk 0..1 arrays with every element equal to 0, 1, 2 or 3 horizontally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302010, there is no canonical definition to state claims against.
-/

/-! ## A302010.P3453009005838320651

`A004182(A301784(n+1))`
-/

namespace A302010.P3453009005838320651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004182 (A301784 (n + 1)).toNat

end

end A302010.P3453009005838320651

/-! ## A302010.P14327301978739464271

`A301784(n+1)%A048424(n+1)`
-/

namespace A302010.P14327301978739464271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A301784 (n + 1)) (A048424 (n + 1))

end

end A302010.P14327301978739464271

/-! ## A302010.P2873447550983020086

`A301784(n+1)+A000007(A001752(n))`
-/

namespace A302010.P2873447550983020086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301784 (n + 1) + A000007 (A001752 n).toNat

end

end A302010.P2873447550983020086

/-! ## A302010.P13474063675462848811

`A301784(n+1)+A025465(A022167(n))`
-/

namespace A302010.P13474063675462848811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301784 (n + 1) + A025465 (A022167 n).toNat

end

end A302010.P13474063675462848811

/-! ## A302010.P221025730611715176

`A301784(n+1)+A046980(A164016(n))`
-/

namespace A302010.P221025730611715176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301784 (n + 1) + A046980 (A164016 n).toNat

end

end A302010.P221025730611715176

/-!
# A302011: Number of 4 X n 0..1 arrays with every element equal to 0, 1, 2 or 3 horizontally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302011, there is no canonical definition to state claims against.
-/

/-! ## A302011.P851697120330122811

`A302010(A141214(n)+7)`
-/

namespace A302011.P851697120330122811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302010 (A141214 n + 7).toNat

end

end A302011.P851697120330122811

/-! ## A302011.P12158868652724365721

`A302010(A052905(n)+9)`
-/

namespace A302011.P12158868652724365721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302010 (A052905 n + 9).toNat

end

end A302011.P12158868652724365721

/-! ## A302011.P16759895601821348862

`A302010(A055999(n)+10)`
-/

namespace A302011.P16759895601821348862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302010 (A055999 n + 10).toNat

end

end A302011.P16759895601821348862

/-! ## A302011.P2951002029406392737

`A302010(A167614(n+2)+1)`
-/

namespace A302011.P2951002029406392737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302010 (A167614 (n + 2) + 1).toNat

end

end A302011.P2951002029406392737

/-! ## A302011.P726526091324265927

`A302010(A112355(n+1)+4)`
-/

namespace A302011.P726526091324265927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302010 (A112355 (n + 1) + 4).toNat

end

end A302011.P726526091324265927

/-!
# A302012: Number of 5Xn 0..1 arrays with every element equal to 0, 1, 2 or 3 horizontally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302012, there is no canonical definition to state claims against.
-/

/-! ## A302012.P12127227098078135720

`A302010(A167499(n+3))`
-/

namespace A302012.P12127227098078135720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302010 (A167499 (n + 3)).toNat

end

end A302012.P12127227098078135720

/-! ## A302012.P4301949332310593981

`A302010(A155212(n)+13)`
-/

namespace A302012.P4301949332310593981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302010 (A155212 n + 13).toNat

end

end A302012.P4301949332310593981

/-! ## A302012.P8747821252515891638

`A302010(A056000(n)+15)`
-/

namespace A302012.P8747821252515891638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302010 (A056000 n + 15).toNat

end

end A302012.P8747821252515891638

/-! ## A302012.P1822964164990009579

`A302010(eq[6, A131818(n+1)])`
-/

namespace A302012.P1822964164990009579
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302010 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A302012.P1822964164990009579

/-! ## A302012.P6894073408554681311

`A302010(eq[7, A066657(n)])`
-/

namespace A302012.P6894073408554681311
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302010 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A302012.P6894073408554681311

/-!
# A302013: Number of 6Xn 0..1 arrays with every element equal to 0, 1, 2 or 3 horizontally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302013, there is no canonical definition to state claims against.
-/

/-! ## A302013.P5095505527629375829

`A302010(A166136(n+4))`
-/

namespace A302013.P5095505527629375829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302010 (A166136 (n + 4)).toNat

end

end A302013.P5095505527629375829

/-! ## A302013.P11066635698204741100

`A302010(A056115(n)+21)`
-/

namespace A302013.P11066635698204741100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302010 (A056115 n + 21).toNat

end

end A302013.P11066635698204741100

/-! ## A302013.P18387548009190699341

`A302010(Δ[A264443(n)]+10)`
-/

namespace A302013.P18387548009190699341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302010 (f1 (n + 1) - f1 n + 10).toNat

end

end A302013.P18387548009190699341

/-! ## A302013.P3598086738858046432

`A302010(A167499(n+4)+1)`
-/

namespace A302013.P3598086738858046432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302010 (A167499 (n + 4) + 1).toNat

end

end A302013.P3598086738858046432

/-! ## A302013.P899054252326795697

`A302010(eq[7, A131818(n+1)])`
-/

namespace A302013.P899054252326795697
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302010 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A302013.P899054252326795697

/-!
# A302014: Number of 7Xn 0..1 arrays with every element equal to 0, 1, 2 or 3 horizontally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302014, there is no canonical definition to state claims against.
-/

/-! ## A302014.P17148372285157867188

`A302010(A056119(n)+28)`
-/

namespace A302014.P17148372285157867188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302010 (A056119 n + 28).toNat

end

end A302014.P17148372285157867188

/-! ## A302014.P12486551650385630635

`A302010(eq[11, A066657(n)])`
-/

namespace A302014.P12486551650385630635
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302010 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A302014.P12486551650385630635

/-! ## A302014.P2327067889663192419

`A302010(A167499(n+5)+2)`
-/

namespace A302014.P2327067889663192419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302010 (A167499 (n + 5) + 2).toNat

end

end A302014.P2327067889663192419

/-! ## A302014.P4885593608417879592

`A302010(A000096(n+5)+8)`
-/

namespace A302014.P4885593608417879592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302010 (A000096 (n + 5) + 8).toNat

end

end A302014.P4885593608417879592

/-! ## A302014.P9958426653711035751

`A302010(A051938(n+6)+25)`
-/

namespace A302014.P9958426653711035751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302010 (A051938 (n + 6) + 25).toNat

end

end A302014.P9958426653711035751

/-!
# A302016: Expansion of 1/(1 - x - x^2/(1 + x^2/(1 + x^3/(1 + x^4/(1 + x^5/(1 + ...)))))), a continued fraction.

The programs for A302016, there is no canonical definition to state claims against.
-/

/-! ## A302016.P541878970610755079

`A225687(A382683(n))`
-/

namespace A302016.P541878970610755079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225687 (A382683 n).toNat

end

end A302016.P541878970610755079

/-! ## A302016.P11656849662964840155

`A003056(A232163(n)+1)`
-/

namespace A302016.P11656849662964840155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A232163 n + 1).toNat

end

end A302016.P11656849662964840155

/-! ## A302016.P16066059174922596275

`A225687(floor(sqrt(A151100(n))))`
-/

namespace A302016.P16066059174922596275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225687 (Int.sqrt (A151100 n)).toNat

end

end A302016.P16066059174922596275

/-! ## A302016.P7823424486893094113

`A003056(ceil(sqrt(A150731(n))))`
-/

namespace A302016.P7823424486893094113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 ⌈Real.sqrt (A150731 n : ℝ)⌉.toNat

end

end A302016.P7823424486893094113

/-! ## A302016.P16160825495775289801

`A003056(ceil(sqrt(A150755(n))))`
-/

namespace A302016.P16160825495775289801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 ⌈Real.sqrt (A150755 n : ℝ)⌉.toNat

end

end A302016.P16160825495775289801

/-!
# A302017: Expansion of 1/(1 - x*Product_{k>=1} (1 + x^(2*k-1))).

The programs for A302017, there is no canonical definition to state claims against.
-/

/-! ## A302017.P12750428032367897082

`∑[A003056(A065600(∑[n]))]`
-/

namespace A302017.P12750428032367897082
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A065600 (∑ j ∈ Finset.range (n + 1), f2 j)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A302017.P12750428032367897082

/-! ## A302017.P2727133897120905399

`∑[A003056(A187913(∑[n]))]`
-/

namespace A302017.P2727133897120905399
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A187913 (∑ j ∈ Finset.range (n + 1), f2 j)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A302017.P2727133897120905399

/-! ## A302017.P11476471462802144841

`∑[A003056(A000957(n+1))]`
-/

namespace A302017.P11476471462802144841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A000957 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A302017.P11476471462802144841

/-! ## A302017.P5347223433321319359

`A185283(A149858(n)+1)-1`
-/

namespace A302017.P5347223433321319359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185283 (A149858 n + 1).toNat - 1

end

end A302017.P5347223433321319359

/-! ## A302017.P7718027134990802350

`∑[A002024(A000957(n+1)+1)-1]`
-/

namespace A302017.P7718027134990802350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A000957 (n + 1) + 1).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A302017.P7718027134990802350

/-!
# A302018: Expansion of 1/(1 - x*(1 + theta_3(x))/2), where theta_3() is the Jacobi theta function.

The programs for A302018, there is no canonical definition to state claims against.
-/

/-! ## A302018.P10272905517252089163

`A073031(n)+A010894(A008279(n))`
-/

namespace A302018.P10272905517252089163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073031 n + A010894 ((A008279 n).toNat + 21)

end

end A302018.P10272905517252089163

/-! ## A302018.P11702097607004479039

`A073031(n)+A044941(A011782(n))`
-/

namespace A302018.P11702097607004479039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073031 n + A044941 (A011782 n).toNat

end

end A302018.P11702097607004479039

/-! ## A302018.P6655508485531275733

`A114138(n)+A010894(A008279(n))`
-/

namespace A302018.P6655508485531275733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114138 n + A010894 ((A008279 n).toNat + 21)

end

end A302018.P6655508485531275733

/-! ## A302018.P2788141818608294690

`A114138(n)+A044941(A011782(n))`
-/

namespace A302018.P2788141818608294690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114138 n + A044941 (A011782 n).toNat

end

end A302018.P2788141818608294690

/-!
# A302019: Expansion of 1/(1 - x*Sum_{k>=0} x^(k^3)).

The programs for A302019, there is no canonical definition to state claims against.
-/

/-! ## A302019.P17183149422366200648

`A147659(A187829(n+1))-A023440(n)`
-/

namespace A302019.P17183149422366200648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147659 (A187829 (n + 1)).toNat - A023440 n

end

end A302019.P17183149422366200648

/-! ## A302019.P1614865640230083394

`record[A000045(A334725(n+1))]-A023438(n)`
-/

namespace A302019.P1614865640230083394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A334725 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A023438 n

end

end A302019.P1614865640230083394

/-! ## A302019.P11045293343116578562

`A048680(A000079(n))-A023438(n)`
-/

namespace A302019.P11045293343116578562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048680 (A000079 n).toNat - A023438 n

end

end A302019.P11045293343116578562

/-! ## A302019.P13422199339872117083

`A147659(A077168(n))-A023440(n)`
-/

namespace A302019.P13422199339872117083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147659 (A077168 n).toNat - A023440 n

end

end A302019.P13422199339872117083

/-! ## A302019.P9633159555615167488

`A038567(A077996(n)-A224232(n))`
-/

namespace A302019.P9633159555615167488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038567 (A077996 n - A224232 n).toNat

end

end A302019.P9633159555615167488

/-!
# A302020: Expansion of 1/(1 - x*Product_{k>=1} (1 + x^(2*k))/(1 - x^(2*k-1))).

The programs for A302020, there is no canonical definition to state claims against.
-/

/-! ## A302020.P12324294242783791442

`A138194(A145549(n+4))-n`
-/

namespace A302020.P12324294242783791442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138194 (A145549 (n + 4)).toNat - (n : ℤ)

end

end A302020.P12324294242783791442

/-! ## A302020.P10517055597543013886

`A157271(A052912(n)-A002265(n))`
-/

namespace A302020.P10517055597543013886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157271 (A052912 n - A002265 n).toNat

end

end A302020.P10517055597543013886

/-! ## A302020.P18245963829709139032

`A157271(A052912(n))-A137748(n)`
-/

namespace A302020.P18245963829709139032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157271 (A052912 n).toNat - A137748 n

end

end A302020.P18245963829709139032

/-! ## A302020.P13657048844374264075

`A157271(A052912(n)-A241085(n))`
-/

namespace A302020.P13657048844374264075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157271 (A052912 n - A241085 n).toNat

end

end A302020.P13657048844374264075

/-! ## A302020.P2048942283336600278

`A057428(n)+∑[A026819(A176962(n))]`
-/

namespace A302020.P2048942283336600278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026819 (A176962 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A302020.P2048942283336600278

/-!
# A302021: Numbers k such that k^2+1, (k+2)^2+1 and (k+6)^2+1 are prime.

The programs for A302021, there is no canonical definition to state claims against.
-/

/-! ## A302021.P6412143870607327996

`∩[A096012(n+1), A302087(n+1)]`
-/

namespace A302021.P6412143870607327996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096012 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302087 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A302021.P6412143870607327996

/-! ## A302021.P4727441227346625406

`∩[A005574(n+1)-2, A302087(n+1)]`
-/

namespace A302021.P4727441227346625406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005574 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302087 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A302021.P4727441227346625406

/-! ## A302021.P10029179127486400720

`∩[A005574(n+1)-6, A096012(n+1)]`
-/

namespace A302021.P10029179127486400720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005574 (n + 1) - 6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096012 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A302021.P10029179127486400720

/-!
# A302022: Primitive terms from A005279.

The programs for A302022, there is no canonical definition to state claims against.
-/

/-! ## A302022.P6736821650286578302

`∩[A020886(n+1), A302296(n+1)]`
-/

namespace A302022.P6736821650286578302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020886 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302296 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A302022.P6736821650286578302

/-! ## A302022.P10070135696343405988

`∩[A001284(n+1), A302296(n+1)]`
-/

namespace A302022.P10070135696343405988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001284 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302296 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A302022.P10070135696343405988

/-! ## A302022.P15547113117653650919

`eq[1, A174903(n+1)]+1`
-/

namespace A302022.P15547113117653650919
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174903 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A302022.P15547113117653650919

/-! ## A302022.P10098142787182989529

`record[A005279(n+1)/A174903(A005279(n+1))]`
-/

namespace A302022.P10098142787182989529
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005279 (n + 1) : ℚ) / (A174903 (A005279 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A302022.P10098142787182989529

/-! ## A302022.P18426026339974768327

`record[A106430(n+1)/A174903(A106430(n+1))]`
-/

namespace A302022.P18426026339974768327
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A106430 (n + 1) : ℚ) / (A174903 (A106430 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A302022.P18426026339974768327

/-!
# A302023: Permutation of natural numbers mapping ordinary factorization to "Fermi-Dirac factorization": a(1) = 1, a(2n) = 2*A300841(a(n)), a(A003961(n)) = A300841(a(n)).

The programs for A302023, there is no canonical definition to state claims against.
-/

/-! ## A302023.P5522891594616345294

`A052330(A156552(n+1))`
-/

namespace A302023.P5522891594616345294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052330 (A156552 (n + 1)).toNat

end

end A302023.P5522891594616345294

/-! ## A302023.P1693346102547413425

`A052330(A005941(n+1)-1)`
-/

namespace A302023.P1693346102547413425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052330 (A005941 (n + 1) - 1).toNat

end

end A302023.P1693346102547413425

/-! ## A302023.P7728439371269671902

`A052330(A364559(n+1)+n)`
-/

namespace A302023.P7728439371269671902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052330 (A364559 (n + 1) + (n : ℤ)).toNat

end

end A302023.P7728439371269671902

/-! ## A302023.P2404018131203180807

`A052330(∑{d}[n+1, A297112(#)])`
-/

namespace A302023.P2404018131203180807
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052330 (∑ d ∈ Nat.divisors (f1 n), A297112 d).toNat

end

end A302023.P2404018131203180807

/-! ## A302023.P17803130561418624942

`A052330((A322993(2*(n+1))-1)/2)`
-/

namespace A302023.P17803130561418624942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052330 (SequenceMachineLib.roundAway ((A322993 (2 * (n + 1)) - 1 : ℚ) / 2)).toNat

end

end A302023.P17803130561418624942

/-!
# A302024: Permutation of natural numbers mapping "Fermi-Dirac factorization" to ordinary factorization: a(1) = 1, a(2*A300841(n)) = 2*a(n), a(A300841(n)) = A003961(a(n)).

The programs for A302024, there is no canonical definition to state claims against.
-/

/-! ## A302024.P1089184160907506231

`A005940(1+A052331(n+1))`
-/

namespace A302024.P1089184160907506231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005940 (1 + A052331 (n + 1)).toNat

end

end A302024.P1089184160907506231

/-! ## A302024.P8043012210414324723

`A335423(A160102(n+1))`
-/

namespace A302024.P8043012210414324723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335423 (A160102 (n + 1)).toNat

end

end A302024.P8043012210414324723

/-! ## A302024.P12407596255242582598

`A347120(∏{p}[A160102(n+1), #])`
-/

namespace A302024.P12407596255242582598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160102 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347120 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A302024.P12407596255242582598

/-! ## A302024.P15742772383415660190

`A347120(lcm(A065357(n), A160102(n+1)))`
-/

namespace A302024.P15742772383415660190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347120 (Int.lcm (A065357 n) (A160102 (n + 1)))

end

end A302024.P15742772383415660190

/-! ## A302024.P11607322581534364575

`A347120(or(A059841(n), A160102(n+1)))`
-/

namespace A302024.P11607322581534364575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347120 (Int.lor (A059841 n) (A160102 (n + 1))).toNat

end

end A302024.P11607322581534364575

/-! ## A302024.P16930483076159455733

`A347120(A160102(n+1))%A051939(n+6)`
-/

namespace A302024.P16930483076159455733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A347120 (A160102 (n + 1)).toNat) (A051939 (n + 6))

end

end A302024.P16930483076159455733

/-!
# A302025: Permutation of natural numbers mapping ordinary factorization to "Ludic factorization": a(1) = 1, a(2n) = 2*a(n), a(A003961(n)) = A269379(a(n)).

The programs for A302025, there is no canonical definition to state claims against.
-/

/-! ## A302025.P7919316405018550796

`A269171(A250245(n+1))`
-/

namespace A302025.P7919316405018550796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269171 (A250245 (n + 1)).toNat

end

end A302025.P7919316405018550796

/-! ## A302025.P12282257081580898272

`A269387(A156552(n+1))`
-/

namespace A302025.P12282257081580898272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269387 (A156552 (n + 1)).toNat

end

end A302025.P12282257081580898272

/-! ## A302025.P12391286879153995028

`A269171(A280495(2*(n+1)))`
-/

namespace A302025.P12391286879153995028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269171 (A280495 (2 * (n + 1))).toNat

end

end A302025.P12391286879153995028

/-! ## A302025.P1804579544033629224

`A269171(or(char[2], A280495(n+2+n)))`
-/

namespace A302025.P1804579544033629224
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269171 (Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A280495 (n + 2 + n))).toNat

end

end A302025.P1804579544033629224

/-! ## A302025.P2911511222800470879

`A269171(A280495(n+2+n)+A000007(n+1))`
-/

namespace A302025.P2911511222800470879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269171 (A280495 (n + 2 + n) + A000007 (n + 1)).toNat

end

end A302025.P2911511222800470879

/-! ## A302025.P13620450035729003915

`A269171(and(A057428(n+1), A280495(n+2+n)))`
-/

namespace A302025.P13620450035729003915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269171 (Int.land (A057428 (n + 1)) (A280495 (n + 2 + n))).toNat

end

end A302025.P13620450035729003915

/-! ## A302025.P1441392920783529789

`A269171(A280495(n+2+n)^(A000040(n+1)%2))`
-/

namespace A302025.P1441392920783529789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269171 (SequenceMachineLib.roundAway ((A280495 (n + 2 + n) : ℚ) ^ (Int.tmod (A000040 (n + 1)) 2 : ℤ))).toNat

end

end A302025.P1441392920783529789

/-! ## A302025.P14142214840219237941

`A269171(A250249(n+1)%A332821(n+1))`
-/

namespace A302025.P14142214840219237941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269171 (Int.tmod (A250249 (n + 1)) (A332821 (n + 1))).toNat

end

end A302025.P14142214840219237941

/-! ## A302025.P17172618217845314294

`A269171(A250249(n+1))+A000007(A298603(n))`
-/

namespace A302025.P17172618217845314294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269171 (A250249 (n + 1)).toNat + A000007 (A298603 n).toNat

end

end A302025.P17172618217845314294

/-!
# A302026: Permutation of natural numbers mapping "Ludic factorization" to ordinary factorization: a(1) = 1, a(2n) = 2*a(n), a(A269379(n)) = A003961(a(n)).

The programs for A302026, there is no canonical definition to state claims against.
-/

/-! ## A302026.P7235855173809938406

`A250246(A269172(n+1))`
-/

namespace A302026.P7235855173809938406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250246 (A269172 (n + 1)).toNat

end

end A302026.P7235855173809938406

/-! ## A302026.P14632273729914985274

`A005940(1+A269388(n+1))`
-/

namespace A302026.P14632273729914985274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005940 (1 + A269388 (n + 1)).toNat

end

end A302026.P14632273729914985274

/-! ## A302026.P4535352976988205636

`A280496(A269172(2*(n+1)))`
-/

namespace A302026.P4535352976988205636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280496 (A269172 (2 * (n + 1))).toNat

end

end A302026.P4535352976988205636

/-! ## A302026.P7356808987095624501

`A280496(A269172(n+1)+A269172(n+1))`
-/

namespace A302026.P7356808987095624501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280496 (A269172 (n + 1) + A269172 (n + 1)).toNat

end

end A302026.P7356808987095624501

/-! ## A302026.P8882817545790032531

`A250250(A269172(n+1))%A277718(A008619(n))`
-/

namespace A302026.P8882817545790032531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A250250 (A269172 (n + 1)).toNat) (A277718 (A008619 n).toNat)

end

end A302026.P8882817545790032531

/-! ## A302026.P14520560845141762316

`A250250(A269172(n+1)%A227753(n+1))`
-/

namespace A302026.P14520560845141762316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250250 (Int.tmod (A269172 (n + 1)) (A227753 (n + 1))).toNat

end

end A302026.P14520560845141762316

/-! ## A302026.P10750343417354452979

`A001221(A001248(n+1))*A250250(A269172(n+1))`
-/

namespace A302026.P10750343417354452979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A001248 (n + 1)).toNat * A250250 (A269172 (n + 1)).toNat

end

end A302026.P10750343417354452979

/-! ## A302026.P4250763021512188940

`A250246(A252753(A269388(n+1)))`
-/

namespace A302026.P4250763021512188940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250246 (A252753 (A269388 (n + 1)).toNat).toNat

end

end A302026.P4250763021512188940

/-!
# A302027: Permutation of nonnegative integers: a(0) = 0; for n >= 1, a(n) = A057889(1+A057889(n-1)), where A057889 is a bijective bit-reverse.

The programs for A302027, there is no canonical definition to state claims against.
-/

/-! ## A302027.P16820467226616493976

`A057889(A302028(A057889(n)))`
-/

namespace A302027.P16820467226616493976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057889 (A302028 (A057889 n).toNat).toNat

end

end A302027.P16820467226616493976

/-!
# A302028: Permutation of nonnegative integers: a(0) = 0; for n >= 1, a(n) = 1+A057889(A057889(n)-1), where A057889 is a bijective bit-reverse.

The programs for A302028, there is no canonical definition to state claims against.
-/

/-! ## A302028.P318504978343743461

`A057889(A302027(A057889(n)))`
-/

namespace A302028.P318504978343743461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057889 (A302027 (A057889 n).toNat).toNat

end

end A302028.P318504978343743461

/-!
# A302029: Inverse permutation of A207901: a(n) = A006068(A052331(n)).

The programs for A302029, there is no canonical definition to state claims against.
-/

/-! ## A302029.P12841690074289661579

`A006068(A052331(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A302029.P12841690074289661579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006068 (A052331 (n + 1)).toNat

end

end A302029.P12841690074289661579

/-! ## A302029.P11395220282440012673

`A302030(n+1)-1`
-/

namespace A302029.P11395220282440012673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302030 (n + 1) - 1

end

end A302029.P11395220282440012673

/-! ## A302029.P14669306628291582591

`A302050(A020484(n))+A302030(n+1)`
-/

namespace A302029.P14669306628291582591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302050 (A020484 n).toNat + A302030 (n + 1)

end

end A302029.P14669306628291582591

/-! ## A302029.P9561862283509226653

`A302050(A054906(n+1))+A302030(n+1)`
-/

namespace A302029.P9561862283509226653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302050 (A054906 (n + 1)).toNat + A302030 (n + 1)

end

end A302029.P9561862283509226653

/-! ## A302029.P474640884981149797

`A302050(A073703(n+1))+A302030(n+1)`
-/

namespace A302029.P474640884981149797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302050 (A073703 (n + 1)).toNat + A302030 (n + 1)

end

end A302029.P474640884981149797

/-! ## A302029.P15327994354653653369

`A302050(A073704(n+1))+A302030(n+1)`
-/

namespace A302029.P15327994354653653369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302050 (A073704 (n + 1)).toNat + A302030 (n + 1)

end

end A302029.P15327994354653653369

/-! ## A302029.P11275014431453895956

`A302050(A204894(n+1))+A302030(n+1)`
-/

namespace A302029.P11275014431453895956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302050 (A204894 (n + 1)).toNat + A302030 (n + 1)

end

end A302029.P11275014431453895956

/-! ## A302029.P9558079495014359850

`A302050(A204903(n+1))+A302030(n+1)`
-/

namespace A302029.P9558079495014359850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302050 (A204903 (n + 1)).toNat + A302030 (n + 1)

end

end A302029.P9558079495014359850

/-! ## A302029.P17537862926473349556

`A243354(A302024(n+1))`
-/

namespace A302029.P17537862926473349556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243354 (A302024 (n + 1)).toNat

end

end A302029.P17537862926473349556

/-! ## A302029.P4495022730973903573

`∑{d}[A302024(n+1), A297156(#)]`
-/

namespace A302029.P4495022730973903573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302024 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A297156 d

end

end A302029.P4495022730973903573

/-!
# A302030: a(n) = 1+A006068(A052331(n)).

The programs for A302030, there is no canonical definition to state claims against.
-/

/-! ## A302030.P3128047521101096857

`1+A302029(n+1)`
-/

namespace A302030.P3128047521101096857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A302029 (n + 1)

end

end A302030.P3128047521101096857

/-! ## A302030.P793297421973016743

`1+A006068(A052331(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A302030.P793297421973016743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A006068 (A052331 (n + 1)).toNat

end

end A302030.P793297421973016743

/-! ## A302030.P2379367298027694842

`A243354(A302024(n+1))+1`
-/

namespace A302030.P2379367298027694842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243354 (A302024 (n + 1)).toNat + 1

end

end A302030.P2379367298027694842

/-! ## A302030.P1421190725175524484

`∑{d}[A302024(n+1), A297156(#)]+1`
-/

namespace A302030.P1421190725175524484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302024 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A297156 d + 1

end

end A302030.P1421190725175524484

/-! ## A302030.P16883974527045187355

`A066194(A064358(n+1))`
-/

namespace A302030.P16883974527045187355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066194 (A064358 (n + 1)).toNat

end

end A302030.P16883974527045187355

/-!
# A302031: An omega (A001221) analog based on the Ludic sieve (A255127): a(1) = 0; for n > 1, a(n) = 1 + a(A302034(n)).

The programs for A302031, there is no canonical definition to state claims against.
-/

/-! ## A302031.P14850545599863459854

`1+a(A302034(n+1)-1)` with `a(0)=0, a(1)=1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A302031.P14850545599863459854
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  1 + a (A302034 (n + 1) - 1).toNat

end

end A302031.P14850545599863459854

/-! ## A302031.P12362041779526916314

`A001221(A302026(n+1))`
-/

namespace A302031.P12362041779526916314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A302026 (n + 1)).toNat

end

end A302031.P12362041779526916314

/-! ## A302031.P12541083348075085155

`A069010(A269388(n+1))`
-/

namespace A302031.P12541083348075085155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069010 (A269388 (n + 1)).toNat

end

end A302031.P12541083348075085155

/-! ## A302031.P1144187554653739555

`a(A302034(n+1)-1)+1` with `a(0)=0`
-/

namespace A302031.P1144187554653739555
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (A302034 (n + 1) - 1).toNat + 1

end

end A302031.P1144187554653739555

/-! ## A302031.P7664510213507784995

`∑{p}[A302026(n+1), A000189(#)]`
-/

namespace A302031.P7664510213507784995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302026 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A000189 p

end

end A302031.P7664510213507784995

/-! ## A302031.P3190776625557056003

`∑{p}[A302026(n+1), A001222(#)]`
-/

namespace A302031.P3190776625557056003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302026 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A001222 p

end

end A302031.P3190776625557056003

/-! ## A302031.P13523816997789485422

`∑{p}[A302026(n+1), A003557(#)]`
-/

namespace A302031.P13523816997789485422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302026 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A003557 p

end

end A302031.P13523816997789485422

/-! ## A302031.P6731340953528396753

`∑{p}[A302026(n+1), A032742(#)]`
-/

namespace A302031.P6731340953528396753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302026 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A032742 p

end

end A302031.P6731340953528396753

/-! ## A302031.P15922516528911198331

`A001222(∏{p}[A302026(n+1), #])`
-/

namespace A302031.P15922516528911198331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302026 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A302031.P15922516528911198331

/-! ## A302031.P9515775915863735778

`A349620(∏{p}[A302026(n+1), #])`
-/

namespace A302031.P9515775915863735778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302026 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349620 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A302031.P9515775915863735778

/-! ## A302031.P4520831712395898194

`∑{e}[A302026(n+1), #-A123068(#)]`
-/

namespace A302031.P4520831712395898194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302026 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, ((Nat.factorization (f1 n).natAbs p : ℤ) - A123068 (Nat.factorization (f1 n).natAbs p))

end

end A302031.P4520831712395898194

/-! ## A302031.P9954129080472361709

`∑{e}[A302026(n+1), #/A302026(#)]`
-/

namespace A302031.P9954129080472361709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302026 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p : ℚ) / (A302026 (Nat.factorization (f1 n).natAbs p) : ℚ)

end

end A302031.P9954129080472361709

/-! ## A302031.P15225871629673766484

`∑{e}[A302026(n+1), A302026(#+1)-#]`
-/

namespace A302031.P15225871629673766484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302026 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, (A302026 (Nat.factorization (f1 n).natAbs p + 1) - (Nat.factorization (f1 n).natAbs p : ℤ))

end

end A302031.P15225871629673766484

/-! ## A302031.P17391973509689552677

`A001221(A250246(A269172(n+1)))`
-/

namespace A302031.P17391973509689552677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A250246 (A269172 (n + 1)).toNat).toNat

end

end A302031.P17391973509689552677

/-!
# A302032: Discard the least ludic factor of n: a(n) = A255127(A260738(c) + r - 1, A260739(c)), where r = A260738(n), c = A260739(n) are the row and the column index of n in the table A255127; a(n) = 1 if c = 1.

The programs for A302032, there is no canonical definition to state claims against.
-/

/-! ## A302032.P8550523964190956275

`A302025(A032742(A302026(n+1)))`
-/

namespace A302032.P8550523964190956275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302025 (A032742 (A302026 (n + 1)).toNat).toNat

end

end A302032.P8550523964190956275

/-! ## A302032.P9088245975270944961

`A302025(A302026(n+1)/A020639(A302026(n+1)))`
-/

namespace A302032.P9088245975270944961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302025 (SequenceMachineLib.roundAway ((A302026 (n + 1) : ℚ) / (A020639 (A302026 (n + 1)).toNat : ℚ))).toNat

end

end A302032.P9088245975270944961

/-! ## A302032.P6678092004223044208

`A302025(A302026(n+1)/A302026(A272565(n+1)))`
-/

namespace A302032.P6678092004223044208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302025 (SequenceMachineLib.roundAway ((A302026 (n + 1) : ℚ) / (A302026 (A272565 (n + 1)).toNat : ℚ))).toNat

end

end A302032.P6678092004223044208

/-! ## A302032.P2825356565679735530

`A302042(A123271(n+2)²*A255408(n+1))`
-/

namespace A302032.P2825356565679735530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302042 (A123271 (n + 2) ^ 2 * A255408 (n + 1)).toNat

end

end A302032.P2825356565679735530

/-! ## A302032.P7466014588348371978

`A302042(A255408(n+1)/A123271(n+2)²)`
-/

namespace A302032.P7466014588348371978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302042 (SequenceMachineLib.roundAway ((A255408 (n + 1) : ℚ) / (A123271 (n + 2) ^ 2 : ℚ))).toNat

end

end A302032.P7466014588348371978

/-!
# A302033: a(n) = A019565(A003188(n)).

The programs for A302033, there is no canonical definition to state claims against.
-/

/-! ## A302033.P2607225470721216300

`A019565(A003188(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A302033.P2607225470721216300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019565 (A003188 n).toNat

end

end A302033.P2607225470721216300

/-! ## A302033.P3500035930683624836

`A284003(A064706(n))`
-/

namespace A302033.P3500035930683624836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284003 (A064706 n).toNat

end

end A302033.P3500035930683624836

/-! ## A302033.P9728335558060611792

`A365810(A234613(n))`
-/

namespace A302033.P9728335558060611792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365810 (A234613 n).toNat

end

end A302033.P9728335558060611792

/-! ## A302033.P11660275473525082117

`A019565(A038554(n))*A019565(A053644(n))`
-/

namespace A302033.P11660275473525082117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019565 (A038554 n).toNat * A019565 (A053644 n).toNat

end

end A302033.P11660275473525082117

/-! ## A302033.P10893431959664241981

`A019565(xor(n, floor(n/2)))`
-/

namespace A302033.P10893431959664241981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019565 (Int.xor (n : ℤ) ⌊(n : ℚ) / 2⌋).toNat

end

end A302033.P10893431959664241981

/-! ## A302033.P1464949804715843975

`A284003(xor(n, floor(n/4)))`
-/

namespace A302033.P1464949804715843975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284003 (Int.xor (n : ℤ) ⌊(n : ℚ) / 4⌋).toNat

end

end A302033.P1464949804715843975

/-! ## A302033.P18184034829694325472

`A019565(xor(n, ∑[char[2*(n+1)]])%(2*n+3))`
-/

namespace A302033.P18184034829694325472
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019565 (Nat.xor n (∑ j ∈ Finset.range (n + 1), f1 j) % (2 * n + 3))

end

end A302033.P18184034829694325472

/-! ## A302033.P8090215244364775432

`A019565(A286548(n)+n)`
-/

namespace A302033.P8090215244364775432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019565 (A286548 n + (n : ℤ)).toNat

end

end A302033.P8090215244364775432

/-! ## A302033.P4766968891356710914

`A019565(A105081(n+1)-1)`
-/

namespace A302033.P4766968891356710914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019565 (A105081 (n + 1) - 1).toNat

end

end A302033.P4766968891356710914

/-! ## A302033.P2917467912473673273

`A019565(A057300(A300838(n)))`
-/

namespace A302033.P2917467912473673273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019565 (A057300 (A300838 n).toNat).toNat

end

end A302033.P2917467912473673273

/-! ## A302033.P5576034573991593640

`A019565(A302846(A302843(n)))`
-/

namespace A302033.P5576034573991593640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019565 (A302846 (A302843 n).toNat).toNat

end

end A302033.P5576034573991593640

/-! ## A302033.P891013215106700290

`A019565(A053644(n)+A038554(n))`
-/

namespace A302033.P891013215106700290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019565 (A053644 n + A038554 n).toNat

end

end A302033.P891013215106700290

/-! ## A302033.P2178675844953467374

`A019565(or(A038554(n), A053644(n)))`
-/

namespace A302033.P2178675844953467374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019565 (Int.lor (A038554 n) (A053644 n)).toNat

end

end A302033.P2178675844953467374

/-! ## A302033.P15113132078397223527

`A339809(A003188(n))-A305291(gcd(n, n+1))`
-/

namespace A302033.P15113132078397223527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339809 (A003188 n).toNat - A305291 (Nat.gcd n (n + 1))

end

end A302033.P15113132078397223527

/-! ## A302033.P14665908966127802011

`A277006(A227352(n))`
-/

namespace A302033.P14665908966127802011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277006 (A227352 n).toNat

end

end A302033.P14665908966127802011

/-! ## A302033.P16208239066457577229

`A332462(A243353(n))`
-/

namespace A302033.P16208239066457577229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332462 (A243353 n).toNat

end

end A302033.P16208239066457577229

/-!
# A302034: A028234 analog for a factorization process based on the Ludic sieve (A255127); Discard all instances of the (smallest) Ludic factor A272565(n) from n.

The programs for A302034, there is no canonical definition to state claims against.
-/

/-! ## A302034.P17092337661779765291

`A302025(A028234(A302026(n+1)))`
-/

namespace A302034.P17092337661779765291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302025 (A028234 (A302026 (n + 1)).toNat).toNat

end

end A302034.P17092337661779765291

/-!
# A302035: a(1) = 0, for n > 1, a(n) = A001511(A260739(n)); Number of instances of (the smallest) Ludic factor A272565(n) in n.

The programs for A302035, there is no canonical definition to state claims against.
-/

/-! ## A302035.P71157531179327278

`A067029(A302026(n+1))`
-/

namespace A302035.P71157531179327278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067029 (A302026 (n + 1)).toNat

end

end A302035.P71157531179327278

/-! ## A302035.P7697094923160007954

`(val(A260739(n+1), 2)+1)%(n+1)`
-/

namespace A302035.P7697094923160007954
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (A260739 (n + 1)).toNat 2 + 1) % (n + 1)

end

end A302035.P7697094923160007954

/-! ## A302035.P13007976582492949610

`A001511(A260739(n+1))%(n+1)`
-/

namespace A302035.P13007976582492949610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001511 (A260739 (n + 1)).toNat) (n + 1 : ℤ)

end

end A302035.P13007976582492949610

/-! ## A302035.P16092823650737056102

`A302037(n+1)-A302037(A302034(n+1))`
-/

namespace A302035.P16092823650737056102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302037 (n + 1) - A302037 (A302034 (n + 1)).toNat

end

end A302035.P16092823650737056102

/-! ## A302035.P16865025636683769650

`A001511(A260739(n+1))*A067029(A020639(n+1))`
-/

namespace A302035.P16865025636683769650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A260739 (n + 1)).toNat * A067029 (A020639 (n + 1)).toNat

end

end A302035.P16865025636683769650

/-! ## A302035.P8353998288045818922

`A302045(A269172(n+1))`
-/

namespace A302035.P8353998288045818922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302045 (A269172 (n + 1)).toNat

end

end A302035.P8353998288045818922

/-! ## A302035.P15108919547401763343

`A302045(A255408(n+1))`
-/

namespace A302035.P15108919547401763343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302045 (A255408 (n + 1)).toNat

end

end A302035.P15108919547401763343

/-! ## A302035.P5307106794431602156

`A089309(A269388(n+1))`
-/

namespace A302035.P5307106794431602156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089309 (A269388 (n + 1)).toNat

end

end A302035.P5307106794431602156

/-!
# A302036: Ludic powers: numbers k such that A302031(k) < 2; numbers k such that A260739(k) is a power of 2.

The programs for A302036, there is no canonical definition to state claims against.
-/

/-! ## A302036.P8757096038895779796

`eq[1, A302034(n+1)]+1`
-/

namespace A302036.P8757096038895779796
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302034 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A302036.P8757096038895779796

/-! ## A302036.P8646480672620104782

`lt[A302031(n+1), 2]+1`
-/

namespace A302036.P8646480672620104782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302031 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A302036.P8646480672620104782

/-! ## A302036.P13943295150803941612

`record[A000027(n+1)/A302034(n+1)]`
-/

namespace A302036.P13943295150803941612
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000027 (n + 1) : ℚ) / (A302034 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A302036.P13943295150803941612

/-! ## A302036.P16292490909626811065

`record[(n+1)/A000120(A260739(n+1))]`
-/

namespace A302036.P16292490909626811065
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A000120 (A260739 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A302036.P16292490909626811065

/-! ## A302036.P1178569384067984959

`record[A165998(n)/A302034(A165998(n))]`
-/

namespace A302036.P1178569384067984959
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A165998 n : ℚ) / (A302034 (A165998 n).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A302036.P1178569384067984959

/-! ## A302036.P8348793260400293131

`record[A034887(n)/A302034(A034887(n))]`
-/

namespace A302036.P8348793260400293131
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034887 n : ℚ) / (A302034 (A034887 n).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A302036.P8348793260400293131

/-!
# A302037: A bigomega (A001222) analog based on the Ludic sieve (A255127): a(1) = 0; for n > 1, a(n) = 1 + a(A302032(n)).

The programs for A302037, there is no canonical definition to state claims against.
-/

/-! ## A302037.P15067868839768072084

`1+a(A302032(n+1)-1)` with `a(0)=0, a(1)=1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A302037.P15067868839768072084
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  1 + a (A302032 (n + 1) - 1).toNat

end

end A302037.P15067868839768072084

/-! ## A302037.P7052747612182495870

`A001222(A302026(n+1))`
-/

namespace A302037.P7052747612182495870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A302026 (n + 1)).toNat

end

end A302037.P7052747612182495870

/-! ## A302037.P9577528234449949577

`A000120(A269388(n+1))`
-/

namespace A302037.P9577528234449949577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A269388 (n + 1)).toNat

end

end A302037.P9577528234449949577

/-! ## A302037.P9014698933347124937

`a(A260739(n+1)-1)+1` with `a(0)=0`
-/

namespace A302037.P9014698933347124937
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (A260739 (n + 1) - 1).toNat + 1

end

end A302037.P9014698933347124937

/-! ## A302037.P10679572499184622259

`A253557(A269172(n+1))`
-/

namespace A302037.P10679572499184622259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253557 (A269172 (n + 1)).toNat

end

end A302037.P10679572499184622259

/-! ## A302037.P18072954459421668979

`A253559(A269172(2*(n+1)))`
-/

namespace A302037.P18072954459421668979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253559 (A269172 (2 * (n + 1))).toNat

end

end A302037.P18072954459421668979

/-! ## A302037.P12415184220221922399

`∑{d}[A302026(n+1), A001221(A014963(#))]`
-/

namespace A302037.P12415184220221922399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302026 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A001221 (A014963 d).toNat

end

end A302037.P12415184220221922399

/-! ## A302037.P10424109556263170324

`A290251(A269386(n+1))`
-/

namespace A302037.P10424109556263170324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290251 (A269386 (n + 1)).toNat

end

end A302037.P10424109556263170324

/-!
# A302038: Semiludic numbers or "Ludic semiprimes": numbers n for which A302037(n) = 2.

The programs for A302038, there is no canonical definition to state claims against.
-/

/-! ## A302038.P6962063231324448885

`eq[2, A302037(n+1)]+1`
-/

namespace A302038.P6962063231324448885
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302037 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A302038.P6962063231324448885

/-! ## A302038.P6641207821551219783

`A344180(eq[2, A302037(A344180(n))])`
-/

namespace A302038.P6641207821551219783
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302037 (A344180 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344180 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A302038.P6641207821551219783

/-! ## A302038.P4555364185022015259

`eq[2, A302037(A000007(n)+n)]`
-/

namespace A302038.P4555364185022015259
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302037 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A302038.P4555364185022015259

/-! ## A302038.P11061067643203990530

`eq[2, A302037(A000038(n)+n)]`
-/

namespace A302038.P11061067643203990530
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302037 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A302038.P11061067643203990530

/-! ## A302038.P16560310211127500527

`eq[3, A302037(A008486(n)-n)]`
-/

namespace A302038.P16560310211127500527
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302037 (A008486 n - (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A302038.P16560310211127500527

/-! ## A302038.P13112067776761560456

`eq[4, A302037(A008574(n))]`
-/

namespace A302038.P13112067776761560456
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302037 (A008574 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A302038.P13112067776761560456

/-! ## A302038.P6466010867587859115

`eq[5, A302037(A022144(n))]`
-/

namespace A302038.P6466010867587859115
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302037 (A022144 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A302038.P6466010867587859115

/-! ## A302038.P16901082387676079379

`eq[2, A302037(A233583(n+1))]`
-/

namespace A302038.P16901082387676079379
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302037 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A302038.P16901082387676079379

/-! ## A302038.P13194079766696065892

`eq[2, A001222(A302026(n+1))]+1`
-/

namespace A302038.P13194079766696065892
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A302026 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A302038.P13194079766696065892

/-!
# A302039: Analog of A056239 for nonstandard factorization based on the sieve of Eratosthenes (A083221).

The programs for A302039, there is no canonical definition to state claims against.
-/

/-! ## A302039.P16334757651914266501

`A055396(n+1)+a(A302042(n+1)-1)` with `a(0)=0, a(1)=1`
-/

namespace A302039.P16334757651914266501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A055396 (n + 1) + a (A302042 (n + 1) - 1).toNat

end

end A302039.P16334757651914266501

/-! ## A302039.P15841120003531156243

`A055396(n+1)*A302045(n+1)+a(A302044(n+1)-1)` with `a(0)=0, a(1)=1`
-/

namespace A302039.P15841120003531156243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A055396 (n + 1) * A302045 (n + 1) + a (A302044 (n + 1) - 1).toNat

end

end A302039.P15841120003531156243

/-! ## A302039.P14162394930228506717

`A056239(A250246(n+1))`
-/

namespace A302039.P14162394930228506717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (A250246 (n + 1)).toNat

end

end A302039.P14162394930228506717

/-! ## A302039.P14275434642550304204

`A056239(A346486(n+1))+A056239(A346487(n+1))`
-/

namespace A302039.P14275434642550304204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (A346486 (n + 1)).toNat + A056239 (A346487 (n + 1)).toNat

end

end A302039.P14275434642550304204

/-! ## A302039.P5479806624391132646

`A056239(A020639(n+1))+A056239(A280496(n+1))`
-/

namespace A302039.P5479806624391132646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (A020639 (n + 1)).toNat + A056239 (A280496 (n + 1)).toNat

end

end A302039.P5479806624391132646

/-! ## A302039.P14410820509106586901

`A056239(A280496(2*(n+1)))`
-/

namespace A302039.P14410820509106586901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (A280496 (2 * (n + 1))).toNat

end

end A302039.P14410820509106586901

/-! ## A302039.P15094429652675983056

`∑{d}[A250246(n+1), A055396(A014963(#))]`
-/

namespace A302039.P15094429652675983056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250246 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A055396 (A014963 d).toNat

end

end A302039.P15094429652675983056

/-! ## A302039.P7587156985229716313

`A056239(A324546(n+1)+A324535(n+1))`
-/

namespace A302039.P7587156985229716313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (A324546 (n + 1) + A324535 (n + 1)).toNat

end

end A302039.P7587156985229716313

/-! ## A302039.P3913156602251450092

`A056239(A346486(n+1)*A346487(n+1))`
-/

namespace A302039.P3913156602251450092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (A346486 (n + 1) * A346487 (n + 1)).toNat

end

end A302039.P3913156602251450092

/-!
# A302040: Numbers k such that A078898(k) is a power of 2; an analog for A000961 based on factorization-kind of process involving the sieve of Eratosthenes (A083221).

The programs for A302040, there is no canonical definition to state claims against.
-/

/-! ## A302040.P14712233248100516296

`record[n/A302044(n+1)+1]`
-/

namespace A302040.P14712233248100516296
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A302044 (n + 1) : ℚ) + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A302040.P14712233248100516296

/-! ## A302040.P8733179070582688256

`eq[1, A302044(n+1)]+1`
-/

namespace A302040.P8733179070582688256
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302044 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A302040.P8733179070582688256

/-! ## A302040.P3450561262446084973

`lt[A302041(n+1), 2]+1`
-/

namespace A302040.P3450561262446084973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302041 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A302040.P3450561262446084973

/-! ## A302040.P18347349087529236430

`eq[1, A000120(A078898(n))]`
-/

namespace A302040.P18347349087529236430
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A078898 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A302040.P18347349087529236430

/-! ## A302040.P17802368670360262538

`eq[1, A064989(A078898(n+1))]+1`
-/

namespace A302040.P17802368670360262538
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (A078898 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A302040.P17802368670360262538

/-! ## A302040.P11317127662844819620

`eq[1, A000265(A278524(n+1))]+1`
-/

namespace A302040.P11317127662844819620
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A278524 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A302040.P11317127662844819620

/-! ## A302040.P1062195390592461446

`eq[1, A324378(2*A078898(n+1))]+1`
-/

namespace A302040.P1062195390592461446
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324378 (2 * A078898 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A302040.P1062195390592461446

/-! ## A302040.P7894274108805620011

`record[A003602(2*n+1)/A003602(A078898(n+1))]`
-/

namespace A302040.P7894274108805620011
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003602 (2 * n + 1) : ℚ) / (A003602 (A078898 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A302040.P7894274108805620011

/-! ## A302040.P7116552401664596722

`eq[1, A268674(A078898(n+1)²)]+1`
-/

namespace A302040.P7116552401664596722
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268674 (A078898 (n + 1) ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A302040.P7116552401664596722

/-!
# A302041: An omega analog for a nonstandard factorization based on the sieve of Eratosthenes (A083221).

The programs for A302041, there is no canonical definition to state claims against.
-/

/-! ## A302041.P4445217392333152001

`1+a(A302044(n+1)-1)` with `a(0)=0, a(1)=1`
-/

namespace A302041.P4445217392333152001
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  1 + a (A302044 (n + 1) - 1).toNat

end

end A302041.P4445217392333152001

/-! ## A302041.P2655295822400835487

`A001221(A250246(n+1))`
-/

namespace A302041.P2655295822400835487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A250246 (n + 1)).toNat

end

end A302041.P2655295822400835487

/-! ## A302041.P9237438217699931836

`A069010(A252754(n+1))`
-/

namespace A302041.P9237438217699931836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069010 (A252754 (n + 1)).toNat

end

end A302041.P9237438217699931836

/-! ## A302041.P14954861568958451413

`∑{e}[A346486(n+1), #]`
-/

namespace A302041.P14954861568958451413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346486 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A302041.P14954861568958451413

/-! ## A302041.P9251765506315506770

`a(A302044(n+1)-1)+1` with `a(0)=0`
-/

namespace A302041.P9251765506315506770
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (A302044 (n + 1) - 1).toNat + 1

end

end A302041.P9251765506315506770

/-! ## A302041.P17417455111831423667

`A001221(A278524(n+1))`
-/

namespace A302041.P17417455111831423667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A278524 (n + 1)).toNat

end

end A302041.P17417455111831423667

/-! ## A302041.P8606574802389830959

`A001221(A346486(n+1))`
-/

namespace A302041.P8606574802389830959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A346486 (n + 1)).toNat

end

end A302041.P8606574802389830959

/-! ## A302041.P15118357402393300207

`A001222(A346486(2*n+1-n))`
-/

namespace A302041.P15118357402393300207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A346486 (2 * n + 1 - n)).toNat

end

end A302041.P15118357402393300207

/-! ## A302041.P11304065525067619593

`A001222(A346486(n+1)^(((-1)^n)²%3))`
-/

namespace A302041.P11304065525067619593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((A346486 (n + 1) : ℚ) ^ (Int.tmod (((-1) ^ n) ^ 2) 3 : ℤ))).toNat

end

end A302041.P11304065525067619593

/-! ## A302041.P8233777980625938135

`A001222(A250246(n+1)/A346487(n+1))`
-/

namespace A302041.P8233777980625938135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((A250246 (n + 1) : ℚ) / (A346487 (n + 1) : ℚ))).toNat

end

end A302041.P8233777980625938135

/-! ## A302041.P2390905422708958227

`A001222(∏{p}[A250246(n+1), #])`
-/

namespace A302041.P2390905422708958227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250246 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A302041.P2390905422708958227

/-! ## A302041.P12587470860331940630

`A001222(∏{p}[A250250(n+1), #])`
-/

namespace A302041.P12587470860331940630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250250 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A302041.P12587470860331940630

/-! ## A302041.P16546682795128806316

`∑{p}[A250246(n+1), A276949(#+2)]`
-/

namespace A302041.P16546682795128806316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250246 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A276949 (p + 2)

end

end A302041.P16546682795128806316

/-! ## A302041.P17845236714784799950

`∑{p}[A250246(n+1), #/A006530(#)]`
-/

namespace A302041.P17845236714784799950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250246 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, (p : ℚ) / (A006530 p : ℚ)

end

end A302041.P17845236714784799950

/-! ## A302041.P1240612877088356943

`∑{p}[A250246(n+1), #/A250246(#)]`
-/

namespace A302041.P1240612877088356943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250246 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, (p : ℚ) / (A250246 p : ℚ)

end

end A302041.P1240612877088356943

/-! ## A302041.P16941884217856102493

`A001221(A250250(n+1))`
-/

namespace A302041.P16941884217856102493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A250250 (n + 1)).toNat

end

end A302041.P16941884217856102493

/-! ## A302041.P13601240332818040861

`A001221(A280496(2*(n+1)))`
-/

namespace A302041.P13601240332818040861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A280496 (2 * (n + 1))).toNat

end

end A302041.P13601240332818040861

/-! ## A302041.P17608933659406075041

`A001221(A302026(A269171(n+1)))`
-/

namespace A302041.P17608933659406075041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A302026 (A269171 (n + 1)).toNat).toNat

end

end A302041.P17608933659406075041

/-! ## A302041.P16400914353451262751

`A001222(A346486(n+1)²)/2`
-/

namespace A302041.P16400914353451262751
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001222 (A346486 (n + 1) ^ 2).toNat : ℚ) / 2

end

end A302041.P16400914353451262751

/-! ## A302041.P4369286952324976414

`A001222(A007947(A346486(n+1)²))`
-/

namespace A302041.P4369286952324976414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A007947 (A346486 (n + 1) ^ 2).toNat).toNat

end

end A302041.P4369286952324976414

/-!
# A302042: A032742 analog for a nonstandard factorization process based on the sieve of Eratosthenes (A083221).

The programs for A302042, there is no canonical definition to state claims against.
-/

/-! ## A302042.P16293379737290806204

`n+1-A302043(n+1)`
-/

namespace A302042.P16293379737290806204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A302043 (n + 1)

end

end A302042.P16293379737290806204

/-! ## A302042.P4258640685942214354

`A250245(A280496(n+1))`
-/

namespace A302042.P4258640685942214354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250245 (A280496 (n + 1)).toNat

end

end A302042.P4258640685942214354

/-! ## A302042.P5668341070226926380

`A250245(A250246(n+1)/A020639(n+1))`
-/

namespace A302042.P5668341070226926380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250245 (SequenceMachineLib.roundAway ((A250246 (n + 1) : ℚ) / (A020639 (n + 1) : ℚ))).toNat

end

end A302042.P5668341070226926380

/-! ## A302042.P7171115452443335301

`A250245(A032742(A250246(n+1)))`
-/

namespace A302042.P7171115452443335301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250245 (A032742 (A250246 (n + 1)).toNat).toNat

end

end A302042.P7171115452443335301

/-! ## A302042.P11847496276070350157

`A024000(A302043(n+1))+n`
-/

namespace A302042.P11847496276070350157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024000 (A302043 (n + 1)).toNat + (n : ℤ)

end

end A302042.P11847496276070350157

/-! ## A302042.P17484490214601360548

`A280495(2*A280496(n+1))`
-/

namespace A302042.P17484490214601360548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280495 (2 * A280496 (n + 1)).toNat

end

end A302042.P17484490214601360548

/-! ## A302042.P16953505059738918026

`A280495(A280496(n+1)+A280496(n+1))`
-/

namespace A302042.P16953505059738918026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280495 (A280496 (n + 1) + A280496 (n + 1)).toNat

end

end A302042.P16953505059738918026

/-! ## A302042.P15556841287883269429

`-A302043(n+1)%A020247(n+1)+n+1`
-/

namespace A302042.P15556841287883269429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (-A302043 (n + 1)) (A020247 (n + 1)) + (n + 1 : ℤ)

end

end A302042.P15556841287883269429

/-! ## A302042.P14332362719563754861

`A280496(2*A280496(n+1)%A334760(n+1))`
-/

namespace A302042.P14332362719563754861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280496 (2 * Int.tmod (A280496 (n + 1)) (A334760 (n + 1))).toNat

end

end A302042.P14332362719563754861

/-!
# A302043: a(n) = n - A302042(n); an analog of A060681 based on the sieve of Eratosthenes (A083221).

The programs for A302043, there is no canonical definition to state claims against.
-/

/-! ## A302043.P3501451930823267507

`n+1-A302042(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A302043.P3501451930823267507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A302042 (n + 1)

end

end A302043.P3501451930823267507

/-! ## A302043.P12328737107589459653

`A005408(n)%(A302042(n+1)+n)`
-/

namespace A302043.P12328737107589459653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005408 n) (A302042 (n + 1) + (n : ℤ))

end

end A302043.P12328737107589459653

/-! ## A302043.P5357363667976475467

`(A016897(n)*A302042(n+1))%(n+1)`
-/

namespace A302043.P5357363667976475467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016897 n * A302042 (n + 1)) (n + 1 : ℤ)

end

end A302043.P5357363667976475467

/-! ## A302043.P10143382267073047775

`n+1-A250245(A280496(n+1))`
-/

namespace A302043.P10143382267073047775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A250245 (A280496 (n + 1)).toNat

end

end A302043.P10143382267073047775

/-! ## A302043.P8128895860648939084

`n+1-A250245(A032742(A250246(n+1)))`
-/

namespace A302043.P8128895860648939084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A250245 (A032742 (A250246 (n + 1)).toNat).toNat

end

end A302043.P8128895860648939084

/-! ## A302043.P14008318869649682794

`A053188(A302042(n+1)+n²+n)`
-/

namespace A302043.P14008318869649682794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053188 (A302042 (n + 1) + (n ^ 2 + n : ℤ)).toNat

end

end A302043.P14008318869649682794

/-!
# A302044: A028234 analog for factorization process based on the sieve of Eratosthenes (A083221).

The programs for A302044, there is no canonical definition to state claims against.
-/

/-! ## A302044.P9134599714655521402

`A250245(A028234(A250246(n+1)))`
-/

namespace A302044.P9134599714655521402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250245 (A028234 (A250246 (n + 1)).toNat).toNat

end

end A302044.P9134599714655521402

/-! ## A302044.P2398032733457164394

`A000196(A028234(A249818(n+1))²)`
-/

namespace A302044.P2398032733457164394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A028234 (A249818 (n + 1)).toNat ^ 2).toNat

end

end A302044.P2398032733457164394

/-! ## A302044.P12927688521831142856

`A033676(A028234(A249818(n+1))²)`
-/

namespace A302044.P12927688521831142856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033676 (A028234 (A249818 (n + 1)).toNat ^ 2).toNat

end

end A302044.P12927688521831142856

/-! ## A302044.P14666979847083270507

`A071974(A028234(A249818(n+1))²)`
-/

namespace A302044.P14666979847083270507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071974 (A028234 (A249818 (n + 1)).toNat ^ 2).toNat

end

end A302044.P14666979847083270507

/-! ## A302044.P6034764391338560341

`A028234(A249818(n+1))%p?[A028884(n)]`
-/

namespace A302044.P6034764391338560341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028884 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A028234 (A249818 (n + 1)).toNat) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A302044.P6034764391338560341

/-! ## A302044.P16838769870120911820

`A028234(A250248(n+1))+A000007(A052291(n+1))`
-/

namespace A302044.P16838769870120911820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028234 (A250248 (n + 1)).toNat + A000007 (A052291 (n + 1)).toNat

end

end A302044.P16838769870120911820

/-! ## A302044.P12477444221497734768

`A028234(A249818(n+1)%A256356(n+1))`
-/

namespace A302044.P12477444221497734768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028234 (Int.tmod (A249818 (n + 1)) (A256356 (n + 1))).toNat

end

end A302044.P12477444221497734768

/-! ## A302044.P17067242342041371924

`A028234(A249818(n+1))*A058281(A027691(n))`
-/

namespace A302044.P17067242342041371924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028234 (A249818 (n + 1)).toNat * A058281 (A027691 n).toNat

end

end A302044.P17067242342041371924

/-! ## A302044.P16225238630309865791

`A028234(A006519(n+1)*A249818(n+1))`
-/

namespace A302044.P16225238630309865791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028234 (A006519 (n + 1) * A249818 (n + 1)).toNat

end

end A302044.P16225238630309865791

/-! ## A302044.P13350875356493732950

`A028234(A028234(n+1)*A249818(n+1))/A028234(n+1)`
-/

namespace A302044.P13350875356493732950
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028234 (A028234 (n + 1) * A249818 (n + 1)).toNat : ℚ) / (A028234 (n + 1) : ℚ)

end

end A302044.P13350875356493732950

/-! ## A302044.P2110058253311991574

`A028234(A028234(n+1)*A250248(n+1))/A028234(n+1)`
-/

namespace A302044.P2110058253311991574
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028234 (A028234 (n + 1) * A250248 (n + 1)).toNat : ℚ) / (A028234 (n + 1) : ℚ)

end

end A302044.P2110058253311991574

/-! ## A302044.P2046310827685024074

`A028234(A250248(n+1)%A320775(n+1))`
-/

namespace A302044.P2046310827685024074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028234 (Int.tmod (A250248 (n + 1)) (A320775 (n + 1))).toNat

end

end A302044.P2046310827685024074

/-!
# A302045: a(1) = 0, for n > 1, a(n) = A001511(A078898(n)); Number of instances of the smallest prime factor A020639(n) in nonstandard factorization of n that is based on the sieve of Eratosthenes (A083221).

The programs for A302045, there is no canonical definition to state claims against.
-/

/-! ## A302045.P2464402946292674515

`A067029(A250246(n+1))`
-/

namespace A302045.P2464402946292674515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067029 (A250246 (n + 1)).toNat

end

end A302045.P2464402946292674515

/-! ## A302045.P1996231089297281502

`A001511(A078898(n+1))%(n+1)`
-/

namespace A302045.P1996231089297281502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001511 (A078898 (n + 1)).toNat) (n + 1 : ℤ)

end

end A302045.P1996231089297281502

/-! ## A302045.P8499324235158839327

`A253557(n+1)-A253557(A302044(n+1))`
-/

namespace A302045.P8499324235158839327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253557 (n + 1) - A253557 (A302044 (n + 1)).toNat

end

end A302045.P8499324235158839327

/-! ## A302045.P17004847857454444978

`A302035(A255407(n+1))`
-/

namespace A302045.P17004847857454444978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302035 (A255407 (n + 1)).toNat

end

end A302045.P17004847857454444978

/-! ## A302045.P12120269764844946402

`A302035(A269171(n+1))`
-/

namespace A302045.P12120269764844946402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302035 (A269171 (n + 1)).toNat

end

end A302045.P12120269764844946402

/-! ## A302045.P646492958649585409

`val(A250246(n+1), A051664(A028233(n+1)))`
-/

namespace A302045.P646492958649585409
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A250246 (n + 1)).toNat (A051664 (A028233 (n + 1)).toNat).toNat

end

end A302045.P646492958649585409

/-! ## A302045.P9001521082763656426

`A001511(A078898(n+1))*A055396(A006093(2*n+1))`
-/

namespace A302045.P9001521082763656426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A078898 (n + 1)).toNat * A055396 (A006093 (2 * n + 1)).toNat

end

end A302045.P9001521082763656426

/-! ## A302045.P11414705079436221905

`A067029(A249818(n+1))`
-/

namespace A302045.P11414705079436221905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067029 (A249818 (n + 1)).toNat

end

end A302045.P11414705079436221905

/-! ## A302045.P142710962132221481

`A067029(A250248(n+1))`
-/

namespace A302045.P142710962132221481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067029 (A250248 (n + 1)).toNat

end

end A302045.P142710962132221481

/-! ## A302045.P12232537018374964249

`A067029(A250250(n+1))`
-/

namespace A302045.P12232537018374964249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067029 (A250250 (n + 1)).toNat

end

end A302045.P12232537018374964249

/-!
# A302046: A filter sequence analogous to A101296 for nonstandard factorization based on the sieve of Eratosthenes (A083221).

The programs for A302046, there is no canonical definition to state claims against.
-/

/-! ## A302046.P16249306316369939946

`A085089(A278524(n+1))+A000007(A025706(n))`
-/

namespace A302046.P16249306316369939946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085089 (A278524 (n + 1)).toNat + A000007 (A025706 n).toNat

end

end A302046.P16249306316369939946

/-! ## A302046.P4042891618553304905

`A085089(A278524(n+1))+A000007(A163511(n))`
-/

namespace A302046.P4042891618553304905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085089 (A278524 (n + 1)).toNat + A000007 (A163511 n).toNat

end

end A302046.P4042891618553304905

/-! ## A302046.P1560444601932730181

`A101296(A250250(n+1))%A003371(A025706(n))`
-/

namespace A302046.P1560444601932730181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A101296 (A250250 (n + 1)).toNat) (A003371 (A025706 n).toNat)

end

end A302046.P1560444601932730181

/-! ## A302046.P17792177509188522741

`A085089(A278524(n+1))%A327516(A000040(n+2))`
-/

namespace A302046.P17792177509188522741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A085089 (A278524 (n + 1)).toNat) (A327516 (A000040 (n + 2)).toNat)

end

end A302046.P17792177509188522741

/-! ## A302046.P11319484536472926153

`A101296(A250250(n+1))+A023533(A056000(n+6)+2)`
-/

namespace A302046.P11319484536472926153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101296 (A250250 (n + 1)).toNat + A023533 (A056000 (n + 6) + 2).toNat

end

end A302046.P11319484536472926153

/-! ## A302046.P7209625324276467357

`A101296(A250246(n+1))%A198277(A224212(n))`
-/

namespace A302046.P7209625324276467357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A101296 (A250246 (n + 1)).toNat) (A198277 (A224212 n).toNat)

end

end A302046.P7209625324276467357

/-! ## A302046.P14685042908011241028

`A085089(A278524(n+1))*A211095(A278231(n+1))`
-/

namespace A302046.P14685042908011241028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085089 (A278524 (n + 1)).toNat * A211095 (A278231 (n + 1)).toNat

end

end A302046.P14685042908011241028

/-! ## A302046.P1952935962803531127

`A101296(A250246(n+1)%A217521(n+2))`
-/

namespace A302046.P1952935962803531127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101296 (Int.tmod (A250246 (n + 1)) (A217521 (n + 2))).toNat

end

end A302046.P1952935962803531127

/-! ## A302046.P6330387885887260204

`A085089(A278524(n+1))*A211095(A278263(n+1))`
-/

namespace A302046.P6330387885887260204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085089 (A278524 (n + 1)).toNat * A211095 (A278263 (n + 1)).toNat

end

end A302046.P6330387885887260204

/-! ## A302046.P14704752401618944161

`A085089(A278524(n+1))*A211095(A348717(n+1))`
-/

namespace A302046.P14704752401618944161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085089 (A278524 (n + 1)).toNat * A211095 (A348717 (n + 1)).toNat

end

end A302046.P14704752401618944161

/-! ## A302046.P1177691202403940251

`A101296(A000196(A278524(n+1)²))`
-/

namespace A302046.P1177691202403940251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101296 (A000196 (A278524 (n + 1) ^ 2).toNat).toNat

end

end A302046.P1177691202403940251

/-! ## A302046.P16816925943649820930

`A101296(A250246(n+1)%A198277(n))`
-/

namespace A302046.P16816925943649820930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101296 (Int.tmod (A250246 (n + 1)) (A198277 n)).toNat

end

end A302046.P16816925943649820930

/-! ## A302046.P7026725164562120795

`A101296(A010052(n²)*A250246(n+1))`
-/

namespace A302046.P7026725164562120795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101296 (A010052 (n ^ 2) * A250246 (n + 1)).toNat

end

end A302046.P7026725164562120795

/-!
# A302047: a(n) = 1 if n = prime(k)*prime(2+k) for some k, otherwise 0.

The programs for A302047, the canonical program `A302047.P17846565131991589604` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A302047 has offset 1).

The definition of A302047 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A185015, A246277, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A302047.P17846565131991589604

`A185015(A246277(n+1))`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A302047

/-- `A185015(A246277(n+1))` -/
def P17846565131991589604.Spec : Prop :=
  ∀ n, P17846565131991589604.a n = A302047 (n + 1)

theorem P17846565131991589604.correct : P17846565131991589604.Spec := by
  intro n
  simp only [A302047, Nat.add_sub_cancel]

end A302047

/-! ## A302047.P8646642694935117735

`char[A090076(n+1)-1]`
-/

namespace A302047.P8646642694935117735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090076 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A302047.P8646642694935117735

namespace A302047

/-- `char[A090076(n+1)-1]` -/
def P8646642694935117735.Spec : Prop :=
  ∀ n, (P8646642694935117735.a n : ℤ) = A302047 (n + 1)

end A302047

/-! ## A302047.P9681440573798523343

`char[eq[10, A348717(n+1)]]`
-/

namespace A302047.P9681440573798523343
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348717 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A302047.P9681440573798523343

namespace A302047

/-- `char[eq[10, A348717(n+1)]]` -/
def P9681440573798523343.Spec : Prop :=
  ∀ n, (P9681440573798523343.a n : ℤ) = A302047 (n + 1)

end A302047

/-! ## A302047.P3792764959348780054

`A185016(A246277(n+1)+1)`
-/

namespace A302047.P3792764959348780054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185016 (A246277 (n + 1) + 1).toNat

end

end A302047.P3792764959348780054

namespace A302047

/-- `A185016(A246277(n+1)+1)` -/
def P3792764959348780054.Spec : Prop :=
  ∀ n, P3792764959348780054.a n = A302047 (n + 1)

end A302047

/-! ## A302047.P15662558355032610043

`A185017(A246277(n+1)+2)`
-/

namespace A302047.P15662558355032610043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185017 (A246277 (n + 1) + 2).toNat

end

end A302047.P15662558355032610043

namespace A302047

/-- `A185017(A246277(n+1)+2)` -/
def P15662558355032610043.Spec : Prop :=
  ∀ n, P15662558355032610043.a n = A302047 (n + 1)

end A302047

/-! ## A302047.P2420008274378148862

`A063524(xor(4, A246277(n+1)))`
-/

namespace A302047.P2420008274378148862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063524 (Int.xor 4 (A246277 (n + 1))).toNat

end

end A302047.P2420008274378148862

namespace A302047

/-- `A063524(xor(4, A246277(n+1)))` -/
def P2420008274378148862.Spec : Prop :=
  ∀ n, P2420008274378148862.a n = A302047 (n + 1)

end A302047

/-! ## A302047.P11088662463220252917

`A000007(xor(6, A305897(n+1)))`
-/

namespace A302047.P11088662463220252917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (Int.xor 6 (A305897 (n + 1))).toNat

end

end A302047.P11088662463220252917

namespace A302047

/-- `A000007(xor(6, A305897(n+1)))` -/
def P11088662463220252917.Spec : Prop :=
  ∀ n, P11088662463220252917.a n = A302047 (n + 1)

end A302047

/-! ## A302047.P10892375765960886386

`char[(A006093(n+3)+1)*A000040(n+1)-1]`
-/

namespace A302047.P10892375765960886386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A006093 (n + 3) + 1) * A000040 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A302047.P10892375765960886386

namespace A302047

/-- `char[(A006093(n+3)+1)*A000040(n+1)-1]` -/
def P10892375765960886386.Spec : Prop :=
  ∀ n, (P10892375765960886386.a n : ℤ) = A302047 (n + 1)

end A302047

/-! ## A302047.P158231173728743277

`A302049(A246277(n+1)*A280710(n+1)+1)`
-/

namespace A302047.P158231173728743277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302049 (A246277 (n + 1) * A280710 (n + 1) + 1).toNat

end

end A302047.P158231173728743277

namespace A302047

/-- `A302049(A246277(n+1)*A280710(n+1)+1)` -/
def P158231173728743277.Spec : Prop :=
  ∀ n, P158231173728743277.a n = A302047 (n + 1)

end A302047

/-! ## A302047.P6762803099954228455

`A137794(3*A246277(n+1)+1)*A280710(n+1)`
-/

namespace A302047.P6762803099954228455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137794 (3 * A246277 (n + 1) + 1).toNat * A280710 (n + 1)

end

end A302047.P6762803099954228455

namespace A302047

/-- `A137794(3*A246277(n+1)+1)*A280710(n+1)` -/
def P6762803099954228455.Spec : Prop :=
  ∀ n, P6762803099954228455.a n = A302047 (n + 1)

end A302047

/-! ## A302047.P13239862623390054958

`C(A324825(n+1), A000040(A324837(n+1)))`
-/

namespace A302047.P13239862623390054958
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A324825 (n + 1)).toNat (A000040 (A324837 (n + 1)).toNat).toNat

end

end A302047.P13239862623390054958

namespace A302047

/-- `C(A324825(n+1), A000040(A324837(n+1)))` -/
def P13239862623390054958.Spec : Prop :=
  ∀ n, (P13239862623390054958.a n : ℤ) = A302047 (n + 1)

end A302047

/-! ## A302047.P15074852511810368645

`and(A324823(n+1), A324829(A324837(n+1)))`
-/

namespace A302047.P15074852511810368645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A324823 (n + 1)) (A324829 (A324837 (n + 1)).toNat)

end

end A302047.P15074852511810368645

namespace A302047

/-- `and(A324823(n+1), A324829(A324837(n+1)))` -/
def P15074852511810368645.Spec : Prop :=
  ∀ n, P15074852511810368645.a n = A302047 (n + 1)

end A302047

/-! ## A302047.P6775512846290836492

`and(A324823(n+1), A334659(A324837(n+1)+1))`
-/

namespace A302047.P6775512846290836492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A324823 (n + 1)) (A334659 (A324837 (n + 1) + 1).toNat)

end

end A302047.P6775512846290836492

namespace A302047

/-- `and(A324823(n+1), A334659(A324837(n+1)+1))` -/
def P6775512846290836492.Spec : Prop :=
  ∀ n, P6775512846290836492.a n = A302047 (n + 1)

end A302047

/-! ## A302047.P3263308989450062626

`A010052(A048058(A246277(n+1))-5)`
-/

namespace A302047.P3263308989450062626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (A048058 (A246277 (n + 1)).toNat - 5).toNat

end

end A302047.P3263308989450062626

namespace A302047

/-- `A010052(A048058(A246277(n+1))-5)` -/
def P3263308989450062626.Spec : Prop :=
  ∀ n, P3263308989450062626.a n = A302047 (n + 1)

end A302047

/-! ## A302047.P16790503199459444920

`A010052(A048058(A246277(n+1)+5))`
-/

namespace A302047.P16790503199459444920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (A048058 (A246277 (n + 1) + 5).toNat).toNat

end

end A302047.P16790503199459444920

namespace A302047

/-- `A010052(A048058(A246277(n+1)+5))` -/
def P16790503199459444920.Spec : Prop :=
  ∀ n, P16790503199459444920.a n = A302047 (n + 1)

end A302047

/-! ## A302047.P219475484237587573

`and(A023531(n), A024940(A066256(n+2)))`
-/

namespace A302047.P219475484237587573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A023531 n) (A024940 (A066256 (n + 2)).toNat)

end

end A302047.P219475484237587573

namespace A302047

/-- `and(A023531(n), A024940(A066256(n+2)))` -/
def P219475484237587573.Spec : Prop :=
  ∀ n, P219475484237587573.a n = A302047 (n + 1)

end A302047

/-!
# A302048: a(n) = 1 if n = p^2 for some prime p, otherwise 0. Characteristic function of squares of primes (A001248).

The programs for A302048, the canonical program `A302048.P8618753497546879016` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A302048 has offset 0).

The definition of A302048 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A302048.P11729808264520209317

`A185012(A078898(n))`
-/

namespace A302048.P11729808264520209317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185012 (A078898 n).toNat

end

end A302048.P11729808264520209317

namespace A302048

/-- `A185012(A078898(n))` -/
def P11729808264520209317.Spec : Prop :=
  ∀ n, P11729808264520209317.a n = A302048 n

end A302048

/-! ## A302048.P2746373684328435140

`char[p?[xor(1, n)]²]`
-/

namespace A302048.P2746373684328435140
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n) ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A302048.P2746373684328435140

namespace A302048

/-- `char[p?[xor(1, n)]²]` -/
def P2746373684328435140.Spec : Prop :=
  ∀ n, (P2746373684328435140.a n : ℤ) = A302048 n

end A302048

/-! ## A302048.P11400256887535549507

`char[p?[floor(sqrt(n))]²]`
-/

namespace A302048.P11400256887535549507
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.sqrt n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n) ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A302048.P11400256887535549507

namespace A302048

/-- `char[p?[floor(sqrt(n))]²]` -/
def P11400256887535549507.Spec : Prop :=
  ∀ n, (P11400256887535549507.a n : ℤ) = A302048 n

end A302048

/-! ## A302048.P8618753497546879016

`∑{p}[n, val(#²+1, n+1)]`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A302048

/-- `∑{p}[n, val(#²+1, n+1)]` -/
def P8618753497546879016.Spec : Prop :=
  ∀ n, (P8618753497546879016.a n : ℤ) = A302048 n

theorem P8618753497546879016.correct : P8618753497546879016.Spec := by
  intro n
  simp only [A302048]

end A302048

/-! ## A302048.P5174016707664141860

`char[A007918(n)²]`
-/

namespace A302048.P5174016707664141860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A302048.P5174016707664141860

namespace A302048

/-- `char[A007918(n)²]` -/
def P5174016707664141860.Spec : Prop :=
  ∀ n, (P5174016707664141860.a n : ℤ) = A302048 n

end A302048

/-! ## A302048.P1317423065903593997

`char[A020483(n)²]`
-/

namespace A302048.P1317423065903593997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020483 n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A302048.P1317423065903593997

namespace A302048

/-- `char[A020483(n)²]` -/
def P1317423065903593997.Spec : Prop :=
  ∀ n, (P1317423065903593997.a n : ℤ) = A302048 n

end A302048

/-! ## A302048.P10577263006821723721

`char[A051697(n)²]`
-/

namespace A302048.P10577263006821723721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051697 n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A302048.P10577263006821723721

namespace A302048

/-- `char[A051697(n)²]` -/
def P10577263006821723721.Spec : Prop :=
  ∀ n, (P10577263006821723721.a n : ℤ) = A302048 n

end A302048

/-! ## A302048.P14039308991030857423

`char[A051698(n)²]`
-/

namespace A302048.P14039308991030857423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051698 n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A302048.P14039308991030857423

namespace A302048

/-- `char[A051698(n)²]` -/
def P14039308991030857423.Spec : Prop :=
  ∀ n, (P14039308991030857423.a n : ℤ) = A302048 n

end A302048

/-! ## A302048.P8496120822883910488

`char[A051886(n)²]`
-/

namespace A302048.P8496120822883910488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051886 n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A302048.P8496120822883910488

namespace A302048

/-- `char[A051886(n)²]` -/
def P8496120822883910488.Spec : Prop :=
  ∀ n, (P8496120822883910488.a n : ℤ) = A302048 n

end A302048

/-! ## A302048.P9779440585435254696

`char[A056206(n)²]`
-/

namespace A302048.P9779440585435254696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056206 n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A302048.P9779440585435254696

namespace A302048

/-- `char[A056206(n)²]` -/
def P9779440585435254696.Spec : Prop :=
  ∀ n, (P9779440585435254696.a n : ℤ) = A302048 n

end A302048

/-! ## A302048.P13714490277205824110

`char[A060264(n)²]`
-/

namespace A302048.P13714490277205824110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060264 n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A302048.P13714490277205824110

namespace A302048

/-- `char[A060264(n)²]` -/
def P13714490277205824110.Spec : Prop :=
  ∀ n, (P13714490277205824110.a n : ℤ) = A302048 n

end A302048

/-! ## A302048.P10268707770743251688

`char[A062584(n)²]`
-/

namespace A302048.P10268707770743251688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062584 n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A302048.P10268707770743251688

namespace A302048

/-- `char[A062584(n)²]` -/
def P10268707770743251688.Spec : Prop :=
  ∀ n, (P10268707770743251688.a n : ℤ) = A302048 n

end A302048

/-! ## A302048.P13008673951957127188

`char[A079366(n)²]`
-/

namespace A302048.P13008673951957127188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079366 n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A302048.P13008673951957127188

namespace A302048

/-- `char[A079366(n)²]` -/
def P13008673951957127188.Spec : Prop :=
  ∀ n, (P13008673951957127188.a n : ℤ) = A302048 n

end A302048

/-! ## A302048.P5473238370985447534

`char[A088732(n)²]`
-/

namespace A302048.P5473238370985447534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088732 n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A302048.P5473238370985447534

namespace A302048

/-- `char[A088732(n)²]` -/
def P5473238370985447534.Spec : Prop :=
  ∀ n, (P5473238370985447534.a n : ℤ) = A302048 n

end A302048

/-! ## A302048.P2155071883208068229

`char[A089793(n)²]`
-/

namespace A302048.P2155071883208068229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089793 n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A302048.P2155071883208068229

namespace A302048

/-- `char[A089793(n)²]` -/
def P2155071883208068229.Spec : Prop :=
  ∀ n, (P2155071883208068229.a n : ℤ) = A302048 n

end A302048

/-! ## A302048.P6789034483536903659

`char[A134204(n)²]`
-/

namespace A302048.P6789034483536903659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134204 n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A302048.P6789034483536903659

namespace A302048

/-- `char[A134204(n)²]` -/
def P6789034483536903659.Spec : Prop :=
  ∀ n, (P6789034483536903659.a n : ℤ) = A302048 n

end A302048

/-! ## A302048.P15089435685362339345

`char[A151800(n)²]`
-/

namespace A302048.P15089435685362339345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A302048.P15089435685362339345

namespace A302048

/-- `char[A151800(n)²]` -/
def P15089435685362339345.Spec : Prop :=
  ∀ n, (P15089435685362339345.a n : ℤ) = A302048 n

end A302048

/-! ## A302048.P5847586744941285388

`char[A162753(n)²]`
-/

namespace A302048.P5847586744941285388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162753 n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A302048.P5847586744941285388

namespace A302048

/-- `char[A162753(n)²]` -/
def P5847586744941285388.Spec : Prop :=
  ∀ n, (P5847586744941285388.a n : ℤ) = A302048 n

end A302048

/-! ## A302048.P3402346795684172577

`char[A224229(n)²]`
-/

namespace A302048.P3402346795684172577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224229 n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A302048.P3402346795684172577

namespace A302048

/-- `char[A224229(n)²]` -/
def P3402346795684172577.Spec : Prop :=
  ∀ n, (P3402346795684172577.a n : ℤ) = A302048 n

end A302048

/-! ## A302048.P14614385588402215253

`char[Δ[A024525(n)]]`
-/

namespace A302048.P14614385588402215253
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024525 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A302048.P14614385588402215253

namespace A302048

/-- `char[Δ[A024525(n)]]` -/
def P14614385588402215253.Spec : Prop :=
  ∀ n, (P14614385588402215253.a n : ℤ) = A302048 n

end A302048

/-!
# A302049: a(n) = 1 if n = prime(k)*prime(1+k) for some k, otherwise 0.

The programs for A302049, the canonical program `A302049.P1408104828822165467` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A302049 has offset 1).

The definition of A302049 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A137794, A280710, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A302049.P15552358347448896384

`A185013(A078898(n+1))`
-/

namespace A302049.P15552358347448896384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185013 (A078898 (n + 1)).toNat

end

end A302049.P15552358347448896384

namespace A302049

/-- `A185013(A078898(n+1))` -/
def P15552358347448896384.Spec : Prop :=
  ∀ n, P15552358347448896384.a n = A302049 (n + 1)

end A302049

/-! ## A302049.P1246416795274983592

`A185013(A246277(n+1))`
-/

namespace A302049.P1246416795274983592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185013 (A246277 (n + 1)).toNat

end

end A302049.P1246416795274983592

namespace A302049

/-- `A185013(A246277(n+1))` -/
def P1246416795274983592.Spec : Prop :=
  ∀ n, P1246416795274983592.a n = A302049 (n + 1)

end A302049

/-! ## A302049.P1408104828822165467

`A137794(n+1)*A280710(n+1)`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A302049

/-- `A137794(n+1)*A280710(n+1)` -/
def P1408104828822165467.Spec : Prop :=
  ∀ n, P1408104828822165467.a n = A302049 (n + 1)

theorem P1408104828822165467.correct : P1408104828822165467.Spec := by
  intro n
  simp only [A302049, Nat.add_sub_cancel]

end A302049

/-! ## A302049.P16297939209273345674

`char[A023515(n+2)]`
-/

namespace A302049.P16297939209273345674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023515 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A302049.P16297939209273345674

namespace A302049

/-- `char[A023515(n+2)]` -/
def P16297939209273345674.Spec : Prop :=
  ∀ n, (P16297939209273345674.a n : ℤ) = A302049 (n + 1)

end A302049

/-! ## A302049.P18338116528497097027

`char[A006094(n+1)-1]`
-/

namespace A302049.P18338116528497097027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006094 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A302049.P18338116528497097027

namespace A302049

/-- `char[A006094(n+1)-1]` -/
def P18338116528497097027.Spec : Prop :=
  ∀ n, (P18338116528497097027.a n : ℤ) = A302049 (n + 1)

end A302049

/-! ## A302049.P15755957656440367689

`char[A205149(n+1)-1]`
-/

namespace A302049.P15755957656440367689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205149 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A302049.P15755957656440367689

namespace A302049

/-- `char[A205149(n+1)-1]` -/
def P15755957656440367689.Spec : Prop :=
  ∀ n, (P15755957656440367689.a n : ℤ) = A302049 (n + 1)

end A302049

/-! ## A302049.P15529177057968594535

`char[eq[1, A261079(n+1)]]`
-/

namespace A302049.P15529177057968594535
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261079 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A302049.P15529177057968594535

namespace A302049

/-- `char[eq[1, A261079(n+1)]]` -/
def P15529177057968594535.Spec : Prop :=
  ∀ n, (P15529177057968594535.a n : ℤ) = A302049 (n + 1)

end A302049

/-! ## A302049.P16735040064834764626

`char[eq[6, A137502(n+1)]]`
-/

namespace A302049.P16735040064834764626
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137502 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A302049.P16735040064834764626

namespace A302049

/-- `char[eq[6, A137502(n+1)]]` -/
def P16735040064834764626.Spec : Prop :=
  ∀ n, (P16735040064834764626.a n : ℤ) = A302049 (n + 1)

end A302049

/-! ## A302049.P6445883583695191554

`char[A249741(∑[n+3]+1)]`
-/

namespace A302049.P6445883583695191554
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249741 (∑ j ∈ Finset.range (n + 1), f2 j + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A302049.P6445883583695191554

namespace A302049

/-- `char[A249741(∑[n+3]+1)]` -/
def P6445883583695191554.Spec : Prop :=
  ∀ n, (P6445883583695191554.a n : ℤ) = A302049 (n + 1)

end A302049

/-! ## A302049.P17575551737907373596

`char[A033476(2*n+1)-1]`
-/

namespace A302049.P17575551737907373596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033476 (2 * n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A302049.P17575551737907373596

namespace A302049

/-- `char[A033476(2*n+1)-1]` -/
def P17575551737907373596.Spec : Prop :=
  ∀ n, (P17575551737907373596.a n : ℤ) = A302049 (n + 1)

end A302049

/-! ## A302049.P6812666974802815725

`A185015(A246277(n+1)+2)`
-/

namespace A302049.P6812666974802815725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185015 (A246277 (n + 1) + 2).toNat

end

end A302049.P6812666974802815725

namespace A302049

/-- `A185015(A246277(n+1)+2)` -/
def P6812666974802815725.Spec : Prop :=
  ∀ n, P6812666974802815725.a n = A302049 (n + 1)

end A302049

/-! ## A302049.P17995664790132681523

`A063524(xor(2, A246277(n+1)))`
-/

namespace A302049.P17995664790132681523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063524 (Int.xor 2 (A246277 (n + 1))).toNat

end

end A302049.P17995664790132681523

namespace A302049

/-- `A063524(xor(2, A246277(n+1)))` -/
def P17995664790132681523.Spec : Prop :=
  ∀ n, P17995664790132681523.a n = A302049 (n + 1)

end A302049

/-! ## A302049.P2839774273195447022

`char[A000040(n+1)*A000040(n+2)-1]`
-/

namespace A302049.P2839774273195447022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A000040 (n + 2) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A302049.P2839774273195447022

namespace A302049

/-- `char[A000040(n+1)*A000040(n+2)-1]` -/
def P2839774273195447022.Spec : Prop :=
  ∀ n, (P2839774273195447022.a n : ℤ) = A302049 (n + 1)

end A302049

/-! ## A302049.P4355684917481456413

`A185012(A246277(n+1)-A064911(n+1))`
-/

namespace A302049.P4355684917481456413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185012 (A246277 (n + 1) - A064911 (n + 1)).toNat

end

end A302049.P4355684917481456413

namespace A302049

/-- `A185012(A246277(n+1)-A064911(n+1))` -/
def P4355684917481456413.Spec : Prop :=
  ∀ n, P4355684917481456413.a n = A302049 (n + 1)

end A302049

/-! ## A302049.P17657791321880882433

`val(A003961(A020639(n+1)), A139171(n+1))`
-/

namespace A302049.P17657791321880882433
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A003961 (A020639 (n + 1)).toNat).toNat (A139171 (n + 1)).toNat

end

end A302049.P17657791321880882433

namespace A302049

/-- `val(A003961(A020639(n+1)), A139171(n+1))` -/
def P17657791321880882433.Spec : Prop :=
  ∀ n, (P17657791321880882433.a n : ℤ) = A302049 (n + 1)

end A302049

/-! ## A302049.P9618111581922791205

`A064911(n+1)*A137794(n+1)-A302048(n+1)`
-/

namespace A302049.P9618111581922791205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064911 (n + 1) * A137794 (n + 1) - A302048 (n + 1)

end

end A302049.P9618111581922791205

namespace A302049

/-- `A064911(n+1)*A137794(n+1)-A302048(n+1)` -/
def P9618111581922791205.Spec : Prop :=
  ∀ n, P9618111581922791205.a n = A302049 (n + 1)

end A302049

/-! ## A302049.P5002659067969871001

`A185016(2*A246277(n+1))`
-/

namespace A302049.P5002659067969871001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185016 (2 * A246277 (n + 1)).toNat

end

end A302049.P5002659067969871001

namespace A302049

/-- `A185016(2*A246277(n+1))` -/
def P5002659067969871001.Spec : Prop :=
  ∀ n, P5002659067969871001.a n = A302049 (n + 1)

end A302049

/-! ## A302049.P15224433809628028872

`A129251(A046022(A300247(n+1)))`
-/

namespace A302049.P15224433809628028872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129251 (A046022 (A300247 (n + 1)).toNat).toNat

end

end A302049.P15224433809628028872

namespace A302049

/-- `A129251(A046022(A300247(n+1)))` -/
def P15224433809628028872.Spec : Prop :=
  ∀ n, P15224433809628028872.a n = A302049 (n + 1)

end A302049

/-!
# A302050: An analog of Möbius function (A008683) for nonstandard factorization based on the sieve of Eratosthenes (A083221).

The programs for A302050, there is no canonical definition to state claims against.
-/

/-! ## A302050.P14852523686151720257

`A008683(A250246(n+1))`
-/

namespace A302050.P14852523686151720257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A250246 (n + 1)).toNat

end

end A302050.P14852523686151720257

/-! ## A302050.P11691947526313130437

`A008683(A278524(n+1))`
-/

namespace A302050.P11691947526313130437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A278524 (n + 1)).toNat

end

end A302050.P11691947526313130437

/-! ## A302050.P10931499993495732973

`A008683(A250250(n+1)%A141865(n+1))`
-/

namespace A302050.P10931499993495732973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (Int.tmod (A250250 (n + 1)) (A141865 (n + 1))).toNat

end

end A302050.P10931499993495732973

/-! ## A302050.P3556736071910500225

`A008683(A250250(n+1))`
-/

namespace A302050.P3556736071910500225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A250250 (n + 1)).toNat

end

end A302050.P3556736071910500225

/-! ## A302050.P8320326633854041877

`A008683(A280496(2*(n+1)))`
-/

namespace A302050.P8320326633854041877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A280496 (2 * (n + 1))).toNat

end

end A302050.P8320326633854041877

/-! ## A302050.P16765279977609521868

`A008683(A302026(A269171(n+1)))`
-/

namespace A302050.P16765279977609521868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A302026 (A269171 (n + 1)).toNat).toNat

end

end A302050.P16765279977609521868

/-! ## A302050.P17091908420202571302

`A008683(A346486(n+1)*A346487(n+1))`
-/

namespace A302050.P17091908420202571302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A346486 (n + 1) * A346487 (n + 1)).toNat

end

end A302050.P17091908420202571302

/-! ## A302050.P1763656677585008123

`A008683(A278222(A252754(n+1)))`
-/

namespace A302050.P1763656677585008123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A278222 (A252754 (n + 1)).toNat).toNat

end

end A302050.P1763656677585008123

/-! ## A302050.P8843483850388342292

`A008683(A278219(A286556(n+1)))`
-/

namespace A302050.P8843483850388342292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A278219 (A286556 (n + 1)).toNat).toNat

end

end A302050.P8843483850388342292

/-!
# A302051: An analog of A000005 for nonstandard factorization based on the sieve of Eratosthenes (A083221).

The programs for A302051, there is no canonical definition to state claims against.
-/

/-! ## A302051.P7865953713354953887

`(A302045(n+1)+1)*a(A302044(n+1)-1)` with `a(0)=1`
-/

namespace A302051.P7865953713354953887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (A302045 (n + 1) + 1) * a (A302044 (n + 1) - 1).toNat

end

end A302051.P7865953713354953887

/-! ## A302051.P5020101512001946289

`A000005(A250246(n+1))`
-/

namespace A302051.P5020101512001946289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A250246 (n + 1)).toNat

end

end A302051.P5020101512001946289

/-! ## A302051.P9713157940291646954

`A106737(A252754(n+1))`
-/

namespace A302051.P9713157940291646954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106737 (A252754 (n + 1)).toNat

end

end A302051.P9713157940291646954

/-! ## A302051.P621954835985930319

`A000005(A278524(n+1))`
-/

namespace A302051.P621954835985930319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A278524 (n + 1)).toNat

end

end A302051.P621954835985930319

/-! ## A302051.P9758337937894132510

`A032741(A278524(n+1))+A000035(2*n+3)`
-/

namespace A302051.P9758337937894132510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (A278524 (n + 1)).toNat + A000035 (2 * n + 3)

end

end A302051.P9758337937894132510

/-! ## A302051.P605578848826504800

`A000005(A250250(n+1))`
-/

namespace A302051.P605578848826504800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A250250 (n + 1)).toNat

end

end A302051.P605578848826504800

/-! ## A302051.P12082499903371743463

`A000005(A280496(2*(n+1)))`
-/

namespace A302051.P12082499903371743463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A280496 (2 * (n + 1))).toNat

end

end A302051.P12082499903371743463

/-! ## A302051.P4969878777968383313

`A000005(A302026(A269171(n+1)))`
-/

namespace A302051.P4969878777968383313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A302026 (A269171 (n + 1)).toNat).toNat

end

end A302051.P4969878777968383313

/-! ## A302051.P10973371354723823171

`A000005(A324545(n+1)-A324535(n+1))`
-/

namespace A302051.P10973371354723823171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A324545 (n + 1) - A324535 (n + 1)).toNat

end

end A302051.P10973371354723823171

/-! ## A302051.P3921105395939241619

`A000005(A346486(n+1)*A346487(n+1))`
-/

namespace A302051.P3921105395939241619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A346486 (n + 1) * A346487 (n + 1)).toNat

end

end A302051.P3921105395939241619

/-! ## A302051.P14432628056084405512

`∑{d}[A250250(n+1), A057427(#)]`
-/

namespace A302051.P14432628056084405512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250250 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A057427 d

end

end A302051.P14432628056084405512

/-! ## A302051.P413576014160919902

`∑{d}[A250246(n+1), A055396(2*#)]`
-/

namespace A302051.P413576014160919902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250246 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A055396 (2 * d)

end

end A302051.P413576014160919902

/-! ## A302051.P17360121832616215544

`A057427(n+4)+A032741(A250250(n+1))`
-/

namespace A302051.P17360121832616215544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (n + 4) + A032741 (A250250 (n + 1)).toNat

end

end A302051.P17360121832616215544

/-!
# A302052: Characteristic function for A302053; an analog of A010052 (char. fun of squares) for the nonstandard factorization based on the sieve of Eratosthenes (A083221).

The programs for A302052, there is no canonical definition to state claims against.
-/

/-! ## A302052.P13808719599551159939

`char[A302053(n)]`
-/

namespace A302052.P13808719599551159939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302053 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A302052.P13808719599551159939

/-! ## A302052.P1917440656168903592

`A302051(A008574(n))%2`
-/

namespace A302052.P1917440656168903592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A302051 (A008574 n).toNat) 2

end

end A302052.P1917440656168903592

/-! ## A302052.P3535706342764535325

`gcd(2, A302051(A028310(n)))%2`
-/

namespace A302052.P3535706342764535325
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A302051 (A028310 n).toNat) % 2

end

end A302052.P3535706342764535325

/-! ## A302052.P13112162045848247946

`A302051(A008486(n)+n)%2`
-/

namespace A302052.P13112162045848247946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A302051 (A008486 n + (n : ℤ)).toNat) 2

end

end A302052.P13112162045848247946

/-! ## A302052.P13180846599895616723

`and(1, A302051(A000007(n)+n))`
-/

namespace A302052.P13180846599895616723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A302051 (A000007 n + (n : ℤ)).toNat)

end

end A302052.P13180846599895616723

/-! ## A302052.P13978618297571852085

`and(A000034(2*n), A302051(A008574(n)))`
-/

namespace A302052.P13978618297571852085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000034 (2 * n)) (A302051 (A008574 n).toNat)

end

end A302052.P13978618297571852085

/-! ## A302052.P15456409085325538057

`A010052(A250246(A008574(n)))`
-/

namespace A302052.P15456409085325538057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (A250246 (A008574 n).toNat).toNat

end

end A302052.P15456409085325538057

/-! ## A302052.P5509967870943134711

`A323402(A342797(n+1))`
-/

namespace A302052.P5509967870943134711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323402 (A342797 (n + 1)).toNat

end

end A302052.P5509967870943134711

/-! ## A302052.P6556182590846367259

`and(A007789(n), A214284(n))`
-/

namespace A302052.P6556182590846367259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A007789 n) (A214284 n)

end

end A302052.P6556182590846367259

/-!
# A302053: Squares (A000290) analog for nonstandard factorization process based on the sieve of Eratosthenes (A083221).

The programs for A302053, there is no canonical definition to state claims against.
-/

/-! ## A302053.P16933832919229995596

`record[n*A302052(n)]`
-/

namespace A302053.P16933832919229995596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A302052 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A302053.P16933832919229995596

/-! ## A302053.P5746395897374268680

`lt[0, A302052(n)]`
-/

namespace A302053.P5746395897374268680
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302052 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A302053.P5746395897374268680

/-! ## A302053.P15507980678775814940

`eq[1, A302052(2*n)]/2`
-/

namespace A302053.P15507980678775814940
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302052 (2 * n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℚ) / 2

end

end A302053.P15507980678775814940

/-! ## A302053.P3540323309153590738

`filter[A107750(n), A302052(#)]`
-/

namespace A302053.P3540323309153590738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107750 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A302052 (f1 j).toNat = 1) n)

end

end A302053.P3540323309153590738

/-! ## A302053.P15870762864505693922

`eq[1, A302052(A028310(n))]`
-/

namespace A302053.P15870762864505693922
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302052 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A302053.P15870762864505693922

/-! ## A302053.P4769251923194436390

`eq[A302052(n), A329684(n)]`
-/

namespace A302053.P4769251923194436390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302052 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329684 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A302053.P4769251923194436390

/-! ## A302053.P5940921367873377824

`eq[A033999(n)², A302052(n)]`
-/

namespace A302053.P5940921367873377824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302052 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A302053.P5940921367873377824

/-! ## A302053.P13019652228277098019

`eq[char[A302027(n)], A302052(n)]`
-/

namespace A302053.P13019652228277098019
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302027 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302052 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A302053.P13019652228277098019

/-! ## A302053.P9870926235689825131

`eq[char[A302028(n)], A302052(n)]`
-/

namespace A302053.P9870926235689825131
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302028 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302052 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A302053.P9870926235689825131

/-! ## A302053.P16813100645390172710

`eq[1, gcd(2, A302051(A008574(n)))]`
-/

namespace A302053.P16813100645390172710
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A302051 (A008574 n).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A302053.P16813100645390172710

/-! ## A302053.P1820925343726007373

`eq[A008836(n+1)², A302052(n)]`
-/

namespace A302053.P1820925343726007373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008836 (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302052 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A302053.P1820925343726007373

/-! ## A302053.P14847291847325969617

`eq[char[A302043(n+1)], A302052(n)]`
-/

namespace A302053.P14847291847325969617
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302043 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302052 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A302053.P14847291847325969617

/-! ## A302053.P12120499902903243931

`eq[1, and(1, A302051(A000007(n)+n))]`
-/

namespace A302053.P12120499902903243931
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A302051 (A000007 n + (n : ℤ)).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A302053.P12120499902903243931

/-! ## A302053.P5026633456144572478

`eq[A302044(A302040(n+1)), A302052(n)]`
-/

namespace A302053.P5026633456144572478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302044 (A302040 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302052 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A302053.P5026633456144572478

/-! ## A302053.P6887603599018130503

`eq[A302041(A302040(n+3)), A302052(n)]`
-/

namespace A302053.P6887603599018130503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302041 (A302040 (n + 3)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302052 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A302053.P6887603599018130503

/-! ## A302053.P12910830080668986463

`eq[A302034(A302036(n+1)), A302052(n)]`
-/

namespace A302053.P12910830080668986463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302034 (A302036 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302052 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A302053.P12910830080668986463

/-!
# A302054: a(n) is the sum of prime divisors of A302033(n).

The programs for A302054, there is no canonical definition to state claims against.
-/

/-! ## A302054.P13558842686020537532

`A001414(A302033(n))`
-/

namespace A302054.P13558842686020537532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (A302033 n).toNat

end

end A302054.P13558842686020537532

/-! ## A302054.P424211238199886950

`A331835(2*A003188(n))`
-/

namespace A302054.P424211238199886950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331835 (2 * A003188 n).toNat

end

end A302054.P424211238199886950

/-! ## A302054.P5108097699069581533

`A331835(xor(n, A014601(n)))`
-/

namespace A302054.P5108097699069581533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331835 (Int.xor (n : ℤ) (A014601 n)).toNat

end

end A302054.P5108097699069581533

/-! ## A302054.P2314341243458504335

`A331835(xor(2*n, A052928(n)))`
-/

namespace A302054.P2314341243458504335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331835 (Int.xor (2 * n : ℤ) (A052928 n)).toNat

end

end A302054.P2314341243458504335

/-! ## A302054.P16352280700261144809

`A331835(A005843(A003188(n)))`
-/

namespace A302054.P16352280700261144809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331835 (A005843 (A003188 n).toNat).toNat

end

end A302054.P16352280700261144809

/-! ## A302054.P8613660094111028090

`A331835(A052928(xor(n, A005843(n))))`
-/

namespace A302054.P8613660094111028090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331835 (A052928 (Int.xor (n : ℤ) (A005843 n)).toNat).toNat

end

end A302054.P8613660094111028090

/-! ## A302054.P5497574450582514685

`A331835(xor(A005408(n), A109613(n)))`
-/

namespace A302054.P5497574450582514685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331835 (Int.xor (A005408 n) (A109613 n)).toNat

end

end A302054.P5497574450582514685

/-! ## A302054.P7635998082325482694

`A331835(xor(A109613(2*n), A109613(n)))`
-/

namespace A302054.P7635998082325482694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331835 (Int.xor (A109613 (2 * n)) (A109613 n)).toNat

end

end A302054.P7635998082325482694

/-! ## A302054.P15454903423710458241

`∑{p}[A284003(A064706(n)), #]`
-/

namespace A302054.P15454903423710458241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284003 (A064706 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A302054.P15454903423710458241

/-! ## A302054.P4416038739624772399

`∑{p}[A019565(xor(n, A004526(n))), #]`
-/

namespace A302054.P4416038739624772399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019565 (Int.xor (n : ℤ) (A004526 n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A302054.P4416038739624772399

/-!
# A302055: An arithmetic derivative analog for nonstandard factorization process based on the sieve of Eratosthenes (A083221).

The programs for A302055, there is no canonical definition to state claims against.
-/

/-! ## A302055.P11301467646633721535

`A020639(n)*a(A302042(n))+A302042(n)` with `a(0)=0, a(1)=0, a(2)=1`
-/

namespace A302055.P11301467646633721535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 1] fun n a =>
  A020639 n * a (A302042 n).toNat + A302042 n

end

end A302055.P11301467646633721535

/-! ## A302055.P3181302181517585079

`or(A003415(n), A058348(A250476(n+1)))`
-/

namespace A302055.P3181302181517585079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A003415 n) (A058348 (A250476 (n + 1)).toNat)

end

end A302055.P3181302181517585079

/-! ## A302055.P15408178789734265473

`or(A003415(n), A245552(A277312(n+1)))`
-/

namespace A302055.P15408178789734265473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A003415 n) (A245552 (A277312 (n + 1)).toNat)

end

end A302055.P15408178789734265473

/-! ## A302055.P2367728811274916791

`or(A003415(n), A185246(A019426(n)))`
-/

namespace A302055.P2367728811274916791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A003415 n) (A185246 (A019426 n).toNat)

end

end A302055.P2367728811274916791

/-!
# A302056: Numbers k such that the coefficient of x^k in the expansion of Product_{j>=1} (1 - x^j)^4 is zero.

The programs for A302056, the canonical program `A302056.P1047659896841164977` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A302056 has offset 1).

The definition of A302056 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4167 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A302056.P13116702273949162201

`lt[A115979(6*n+1), 1]`
-/

namespace A302056.P13116702273949162201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115979 (6 * n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A302056.P13116702273949162201

namespace A302056

/-- `lt[A115979(6*n+1), 1]` -/
def P13116702273949162201.Spec : Prop :=
  ∀ n, (P13116702273949162201.a n : ℤ) = A302056 (n + 1)

end A302056

/-! ## A302056.P15795600672739545954

`eq[0, A000727(n)]`
-/

namespace A302056.P15795600672739545954
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000727 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A302056.P15795600672739545954

namespace A302056

/-- `eq[0, A000727(n)]` -/
def P15795600672739545954.Spec : Prop :=
  ∀ n, (P15795600672739545954.a n : ℤ) = A302056 (n + 1)

end A302056

/-! ## A302056.P1047659896841164977

`eq[0, A097195(n)]`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A302056

/-- `eq[0, A097195(n)]` -/
def P1047659896841164977.Spec : Prop :=
  ∀ n, (P1047659896841164977.a n : ℤ) = A302056 (n + 1)

theorem P1047659896841164977.correct : P1047659896841164977.Spec := by
  intro n
  simp only [A302056, Nat.add_sub_cancel]

end A302056

/-! ## A302056.P9979259175326964100

`eq[0, A129451(n)]`
-/

namespace A302056.P9979259175326964100
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129451 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A302056.P9979259175326964100

namespace A302056

/-- `eq[0, A129451(n)]` -/
def P9979259175326964100.Spec : Prop :=
  ∀ n, (P9979259175326964100.a n : ℤ) = A302056 (n + 1)

end A302056

/-! ## A302056.P3100320008469328187

`eq[0, A318375(n)]`
-/

namespace A302056.P3100320008469328187
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318375 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A302056.P3100320008469328187

namespace A302056

/-- `eq[0, A318375(n)]` -/
def P3100320008469328187.Spec : Prop :=
  ∀ n, (P3100320008469328187.a n : ℤ) = A302056 (n + 1)

end A302056

/-! ## A302056.P18004320778664135256

`A000027(lt[A097195(n), 1])`
-/

namespace A302056.P18004320778664135256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097195 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A302056.P18004320778664135256

namespace A302056

/-- `A000027(lt[A097195(n), 1])` -/
def P18004320778664135256.Spec : Prop :=
  ∀ n, P18004320778664135256.a n = A302056 (n + 1)

end A302056

/-! ## A302056.P7079727069489935908

`A000027(lt[abs(A129451(n)), 1])`
-/

namespace A302056.P7079727069489935908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A129451 n|

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A302056.P7079727069489935908

namespace A302056

/-- `A000027(lt[abs(A129451(n)), 1])` -/
def P7079727069489935908.Spec : Prop :=
  ∀ n, P7079727069489935908.a n = A302056 (n + 1)

end A302056

/-! ## A302056.P14174060952996005373

`lt[A003188(abs(A129451(n))), 1]`
-/

namespace A302056.P14174060952996005373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 |A129451 n|.toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A302056.P14174060952996005373

namespace A302056

/-- `lt[A003188(abs(A129451(n))), 1]` -/
def P14174060952996005373.Spec : Prop :=
  ∀ n, (P14174060952996005373.a n : ℤ) = A302056 (n + 1)

end A302056

/-! ## A302056.P3798652225532775342

`lt[A000124(abs(A129451(n))), 2]`
-/

namespace A302056.P3798652225532775342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 |A129451 n|.toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A302056.P3798652225532775342

namespace A302056

/-- `lt[A000124(abs(A129451(n))), 2]` -/
def P3798652225532775342.Spec : Prop :=
  ∀ n, (P3798652225532775342.a n : ℤ) = A302056 (n + 1)

end A302056

/-! ## A302056.P13344612876515060789

`lt[A019430(A097195(n)²), 1]`
-/

namespace A302056.P13344612876515060789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019430 (A097195 n ^ 2).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A302056.P13344612876515060789

namespace A302056

/-- `lt[A019430(A097195(n)²), 1]` -/
def P13344612876515060789.Spec : Prop :=
  ∀ n, (P13344612876515060789.a n : ℤ) = A302056 (n + 1)

end A302056

/-! ## A302056.P9088996384549076406

`A000027(lt[A129451(n)², 1])`
-/

namespace A302056.P9088996384549076406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129451 n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A302056.P9088996384549076406

namespace A302056

/-- `A000027(lt[A129451(n)², 1])` -/
def P9088996384549076406.Spec : Prop :=
  ∀ n, P9088996384549076406.a n = A302056 (n + 1)

end A302056

/-! ## A302056.P11821635942971921315

`lt[A003188(A129451(n)²), 1]`
-/

namespace A302056.P11821635942971921315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 (A129451 n ^ 2).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A302056.P11821635942971921315

namespace A302056

/-- `lt[A003188(A129451(n)²), 1]` -/
def P11821635942971921315.Spec : Prop :=
  ∀ n, (P11821635942971921315.a n : ℤ) = A302056 (n + 1)

end A302056

/-! ## A302056.P11558473558416959638

`lt[A000124(A129451(n)²), 2]`
-/

namespace A302056.P11558473558416959638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 (A129451 n ^ 2).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A302056.P11558473558416959638

namespace A302056

/-- `lt[A000124(A129451(n)²), 2]` -/
def P11558473558416959638.Spec : Prop :=
  ∀ n, (P11558473558416959638.a n : ℤ) = A302056 (n + 1)

end A302056

/-! ## A302056.P18291519034296165055

`lt[A097195(n), A354354(n)+1]`
-/

namespace A302056.P18291519034296165055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097195 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354354 n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A302056.P18291519034296165055

namespace A302056

/-- `lt[A097195(n), A354354(n)+1]` -/
def P18291519034296165055.Spec : Prop :=
  ∀ n, (P18291519034296165055.a n : ℤ) = A302056 (n + 1)

end A302056

/-! ## A302056.P18048167159783581076

`lt[A060632(n)*A097195(n), 1]`
-/

namespace A302056.P18048167159783581076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060632 n * A097195 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A302056.P18048167159783581076

namespace A302056

/-- `lt[A060632(n)*A097195(n), 1]` -/
def P18048167159783581076.Spec : Prop :=
  ∀ n, (P18048167159783581076.a n : ℤ) = A302056 (n + 1)

end A302056

/-! ## A302056.P4630306061368454279

`lt[A097195(n)*A261461(n), 1]`
-/

namespace A302056.P4630306061368454279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097195 n * A261461 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A302056.P4630306061368454279

namespace A302056

/-- `lt[A097195(n)*A261461(n), 1]` -/
def P4630306061368454279.Spec : Prop :=
  ∀ n, (P4630306061368454279.a n : ℤ) = A302056 (n + 1)

end A302056

/-! ## A302056.P7088450090143511824

`lt[A097195(n)*A320136(n), 1]`
-/

namespace A302056.P7088450090143511824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097195 n * A320136 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A302056.P7088450090143511824

namespace A302056

/-- `lt[A097195(n)*A320136(n), 1]` -/
def P7088450090143511824.Spec : Prop :=
  ∀ n, (P7088450090143511824.a n : ℤ) = A302056 (n + 1)

end A302056

/-! ## A302056.P215148258229566769

`lt[A000005(n+1)*A097195(n), 1]`
-/

namespace A302056.P215148258229566769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) * A097195 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A302056.P215148258229566769

namespace A302056

/-- `lt[A000005(n+1)*A097195(n), 1]` -/
def P215148258229566769.Spec : Prop :=
  ∀ n, (P215148258229566769.a n : ℤ) = A302056 (n + 1)

end A302056

/-! ## A302056.P13815863550165972499

`lt[A097195(n)*A137351(n+1), 1]`
-/

namespace A302056.P13815863550165972499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097195 n * A137351 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A302056.P13815863550165972499

namespace A302056

/-- `lt[A097195(n)*A137351(n+1), 1]` -/
def P13815863550165972499.Spec : Prop :=
  ∀ n, (P13815863550165972499.a n : ℤ) = A302056 (n + 1)

end A302056

/-! ## A302056.P5724947003783730818

`eq[0, A152243(n)]`
-/

namespace A302056.P5724947003783730818
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152243 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A302056.P5724947003783730818

namespace A302056

/-- `eq[0, A152243(n)]` -/
def P5724947003783730818.Spec : Prop :=
  ∀ n, (P5724947003783730818.a n : ℤ) = A302056 (n + 1)

end A302056

/-!
# A302058: Numbers that are not square pyramidal numbers.

The programs for A302058, the canonical program `A302058.P16285445021793098694` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A302058 has offset 1).

The definition of A302058 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A302058.P16285445021793098694

`comp[∑[n²]]`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A302058

/-- `comp[∑[n²]]` -/
def P16285445021793098694.Spec : Prop :=
  ∀ n, (P16285445021793098694.a n : ℤ) = A302058 (n + 1)

theorem P16285445021793098694.correct : P16285445021793098694.Spec := by
  intro n
  simp only [A302058, Nat.add_sub_cancel]

end A302058

/-! ## A302058.P7039597070890576664

`∑[char[∑[lcm(n, n+1)+n]]+1]`
-/

namespace A302058.P7039597070890576664
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm n (n + 1) + n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = n then 1 else 0) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A302058.P7039597070890576664

namespace A302058

/-- `∑[char[∑[lcm(n, n+1)+n]]+1]` -/
def P7039597070890576664.Spec : Prop :=
  ∀ n, (P7039597070890576664.a n : ℤ) = A302058 (n + 1)

end A302058

/-! ## A302058.P3469445495641094431

`comp[a(n-1)+(n+1)²]+1` with `a(0)=0`
-/

namespace A302058.P3469445495641094431
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 (n - 1) + (n + 1) ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1

end

end A302058.P3469445495641094431

namespace A302058

/-- `comp[a(n-1)+(n+1)²]+1` -/
def P3469445495641094431.Spec : Prop :=
  ∀ n, (P3469445495641094431.a n : ℤ) = A302058 (n + 1)

end A302058

/-! ## A302058.P14801165869057053458

`and(comp[A000330(n)], -1)`
-/

namespace A302058.P14801165869057053458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000330 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) (-1)

end

end A302058.P14801165869057053458

namespace A302058

/-- `and(comp[A000330(n)], -1)` -/
def P14801165869057053458.Spec : Prop :=
  ∀ n, P14801165869057053458.a n = A302058 (n + 1)

end A302058

/-! ## A302058.P12171514344869218903

`∑[char[∑[A005563(n)]]+1]`
-/

namespace A302058.P12171514344869218903
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005563 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = (n : ℤ) then 1 else 0) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A302058.P12171514344869218903

namespace A302058

/-- `∑[char[∑[A005563(n)]]+1]` -/
def P12171514344869218903.Spec : Prop :=
  ∀ n, (P12171514344869218903.a n : ℤ) = A302058 (n + 1)

end A302058

/-! ## A302058.P16961079931654535007

`comp[∑[A000290(n)]-1]+1`
-/

namespace A302058.P16961079931654535007
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A302058.P16961079931654535007

namespace A302058

/-- `comp[∑[A000290(n)]-1]+1` -/
def P16961079931654535007.Spec : Prop :=
  ∀ n, (P16961079931654535007.a n : ℤ) = A302058 (n + 1)

end A302058

/-! ## A302058.P14267883983297382860

`A000027(comp[a(n-1)+n²])` with `a(0)=0`
-/

namespace A302058.P14267883983297382860
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 (n - 1) + n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A302058.P14267883983297382860

namespace A302058

/-- `A000027(comp[a(n-1)+n²])` -/
def P14267883983297382860.Spec : Prop :=
  ∀ n, P14267883983297382860.a n = A302058 (n + 1)

end A302058

/-! ## A302058.P16102355393349083582

`A000027(comp[A000330(n)])`
-/

namespace A302058.P16102355393349083582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000330 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A302058.P16102355393349083582

namespace A302058

/-- `A000027(comp[A000330(n)])` -/
def P16102355393349083582.Spec : Prop :=
  ∀ n, P16102355393349083582.a n = A302058 (n + 1)

end A302058

/-! ## A302058.P14083710087186328010

`A000027(comp[∑[A000290(n)]])`
-/

namespace A302058.P14083710087186328010
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A302058.P14083710087186328010

namespace A302058

/-- `A000027(comp[∑[A000290(n)]])` -/
def P14083710087186328010.Spec : Prop :=
  ∀ n, P14083710087186328010.a n = A302058 (n + 1)

end A302058

/-! ## A302058.P10978227500834266843

`A000027(comp[A000290(n)+a(n-1)])` with `a(0)=0`
-/

namespace A302058.P10978227500834266843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  A000290 n + f1 (n - 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A302058.P10978227500834266843

namespace A302058

/-- `A000027(comp[A000290(n)+a(n-1)])` -/
def P10978227500834266843.Spec : Prop :=
  ∀ n, P10978227500834266843.a n = A302058 (n + 1)

end A302058

/-! ## A302058.P11757421687757101895

`eq[0, A253903(n)]`
-/

namespace A302058.P11757421687757101895
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253903 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A302058.P11757421687757101895

namespace A302058

/-- `eq[0, A253903(n)]` -/
def P11757421687757101895.Spec : Prop :=
  ∀ n, (P11757421687757101895.a n : ℤ) = A302058 (n + 1)

end A302058

/-! ## A302058.P2165759837045507047

`eq[0, char[∑[n²]]]`
-/

namespace A302058.P2165759837045507047
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A302058.P2165759837045507047

namespace A302058

/-- `eq[0, char[∑[n²]]]` -/
def P2165759837045507047.Spec : Prop :=
  ∀ n, (P2165759837045507047.a n : ℤ) = A302058 (n + 1)

end A302058

/-! ## A302058.P7697997927221314812

`lt[char[∑[n²]], 1]`
-/

namespace A302058.P7697997927221314812
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f4 j) n

end

end A302058.P7697997927221314812

namespace A302058

/-- `lt[char[∑[n²]], 1]` -/
def P7697997927221314812.Spec : Prop :=
  ∀ n, (P7697997927221314812.a n : ℤ) = A302058 (n + 1)

end A302058

/-! ## A302058.P6020390594096179485

`A074279(a(n-1)+2)+n` with `a(0)=2`
-/

namespace A302058.P6020390594096179485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A074279 (a (n - 1) + 2).toNat + (n : ℤ)

end

end A302058.P6020390594096179485

namespace A302058

/-- `A074279(a(n-1)+2)+n` -/
def P6020390594096179485.Spec : Prop :=
  ∀ n, P6020390594096179485.a n = A302058 (n + 1)

end A302058

/-! ## A302058.P11286846394168153971

`A074279(A184336(n+2))+n`
-/

namespace A302058.P11286846394168153971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074279 (A184336 (n + 2)).toNat + (n : ℤ)

end

end A302058.P11286846394168153971

namespace A302058

/-- `A074279(A184336(n+2))+n` -/
def P11286846394168153971.Spec : Prop :=
  ∀ n, P11286846394168153971.a n = A302058 (n + 1)

end A302058

/-! ## A302058.P1874086660804472981

`A074279(A377721(n+2))+n`
-/

namespace A302058.P1874086660804472981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074279 (A377721 (n + 2)).toNat + (n : ℤ)

end

end A302058.P1874086660804472981

namespace A302058

/-- `A074279(A377721(n+2))+n` -/
def P1874086660804472981.Spec : Prop :=
  ∀ n, P1874086660804472981.a n = A302058 (n + 1)

end A302058

/-! ## A302058.P12972737389479099084

`record[A253903(A026233(n+1))+A026233(n+1)]`
-/

namespace A302058.P12972737389479099084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253903 (A026233 (n + 1)).toNat + A026233 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A302058.P12972737389479099084

namespace A302058

/-- `record[A253903(A026233(n+1))+A026233(n+1)]` -/
def P12972737389479099084.Spec : Prop :=
  ∀ n, P12972737389479099084.a n = A302058 (n + 1)

end A302058

/-! ## A302058.P16715614879732673209

`record[A253903(A007599(n))+A007599(n)]`
-/

namespace A302058.P16715614879732673209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253903 (A007599 n).toNat + A007599 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A302058.P16715614879732673209

namespace A302058

/-- `record[A253903(A007599(n))+A007599(n)]` -/
def P16715614879732673209.Spec : Prop :=
  ∀ n, P16715614879732673209.a n = A302058 (n + 1)

end A302058

/-!
# A302060: G.f. A(x) satisfies: [x^n] A(x)^(n*(n+1)-1) / (x*A(x)^n)' = 0 for n>1.

The programs for A302060, there is no canonical definition to state claims against.
-/

/-! ## A302060.P2258607334435429683

`A118903(a(n-1)+1)-1` with `a(0)=1, a(1)=1, a(2)=3`
-/

namespace A302060.P2258607334435429683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 3] fun n a =>
  A118903 (a (n - 1) + 1).toNat - 1

end

end A302060.P2258607334435429683

/-!
# A302061: G.f. A(x) satisfies: A(x) = Sum_{n>=0} x^n * (A(x) + (1+x)^n)^n.

The programs for A302061, there is no canonical definition to state claims against.
-/

/-! ## A302061.P17516692602738141905

`A151851(A057991(n))+A007863(n)`
-/

namespace A302061.P17516692602738141905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151851 (A057991 n).toNat + A007863 n

end

end A302061.P17516692602738141905

/-! ## A302061.P3528293469072921200

`A239470(A000111(n))+A007863(n)`
-/

namespace A302061.P3528293469072921200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239470 (A000111 n).toNat + A007863 n

end

end A302061.P3528293469072921200

/-!
# A302063: Number of n X n 0..1 arrays with every element equal to 0, 1, 2 or 4 horizontally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302063, there is no canonical definition to state claims against.
-/

/-! ## A302063.P15170629275512635661

`A302069(∑[4*n]+1)`
-/

namespace A302063.P15170629275512635661
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302069 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A302063.P15170629275512635661

/-! ## A302063.P3558414685895516807

`record[A302069(A152271(n²))]`
-/

namespace A302063.P3558414685895516807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302069 (A152271 (n ^ 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A302063.P3558414685895516807

/-! ## A302063.P14568928547771877493

`A302069(A001844(n))+A025469(n)`
-/

namespace A302063.P14568928547771877493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302069 (A001844 n).toNat + A025469 n

end

end A302063.P14568928547771877493

/-! ## A302063.P4620702318458243736

`A005117(gcd(n, n+1))*A302069(A001844(n))`
-/

namespace A302063.P4620702318458243736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (Nat.gcd n (n + 1)) * A302069 (A001844 n).toNat

end

end A302063.P4620702318458243736

/-! ## A302063.P16264799853883848374

`gcd(1-A000040(n+1)%2, A302069(A001844(n)))`
-/

namespace A302063.P16264799853883848374
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (1 - Int.tmod (A000040 (n + 1)) 2) (A302069 (A001844 n).toNat)

end

end A302063.P16264799853883848374

/-!
# A302064: Number of n X 3 0..1 arrays with every element equal to 0, 1, 2 or 4 horizontally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302064, the canonical program `A302064.P11861503428538905035` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A302064 has offset 1).

The definition of A302064 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 128 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A302064.P2301865749995667840

`ogf((4-7x-4x^2)/(1-8x+12x^2))`
-/

namespace A302064.P2301865749995667840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, -7, -4] [1, -8, 12] n

end

end A302064.P2301865749995667840

namespace A302064

/-- `ogf((4-7x-4x^2)/(1-8x+12x^2))` -/
def P2301865749995667840.Spec : Prop :=
  ∀ n, P2301865749995667840.a n = A302064 (n + 1)

end A302064

/-! ## A302064.P11861503428538905035

`8*a(n-1)-12*a(n-2)` with `a(0)=4, a(1)=25, a(2)=148`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A302064

/-- `8*a(n-1)-12*a(n-2)` -/
def P11861503428538905035.Spec : Prop :=
  ∀ n, P11861503428538905035.a n = A302064 (n + 1)

theorem P11861503428538905035.correct : P11861503428538905035.Spec := by
  intro n
  simp only [A302064, Nat.add_sub_cancel]

end A302064

/-! ## A302064.P6281354748460963674

`6*a(n-1)-A011782(n)` with `a(0)=4, a(1)=25`
-/

namespace A302064.P6281354748460963674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4, 25] fun n a =>
  6 * a (n - 1) - A011782 n

end

end A302064.P6281354748460963674

namespace A302064

/-- `6*a(n-1)-A011782(n)` -/
def P6281354748460963674.Spec : Prop :=
  ∀ n, P6281354748460963674.a n = A302064 (n + 1)

end A302064

/-! ## A302064.P15705416081646627761

`6*a(n-1)-A131577(n)` with `a(0)=4, a(1)=25`
-/

namespace A302064.P15705416081646627761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4, 25] fun n a =>
  6 * a (n - 1) - A131577 n

end

end A302064.P15705416081646627761

namespace A302064

/-- `6*a(n-1)-A131577(n)` -/
def P15705416081646627761.Spec : Prop :=
  ∀ n, P15705416081646627761.a n = A302064 (n + 1)

end A302064

/-! ## A302064.P9551749310761518995

`A302069(∑[n+3]+1)`
-/

namespace A302064.P9551749310761518995
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302069 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A302064.P9551749310761518995

namespace A302064

/-- `A302069(∑[n+3]+1)` -/
def P9551749310761518995.Spec : Prop :=
  ∀ n, P9551749310761518995.a n = A302064 (n + 1)

end A302064

/-!
# A302065: Number of nX4 0..1 arrays with every element equal to 0, 1, 2 or 4 horizontally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302065, there is no canonical definition to state claims against.
-/

/-! ## A302065.P11505668246760184678

`A302069(A141214(n+1))`
-/

namespace A302065.P11505668246760184678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302069 (A141214 (n + 1)).toNat

end

end A302065.P11505668246760184678

/-! ## A302065.P896756704160607578

`A302069(A027379(n+2))`
-/

namespace A302065.P896756704160607578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302069 (A027379 (n + 2)).toNat

end

end A302065.P896756704160607578

/-! ## A302065.P17513170405115331390

`A302069(A055998(n+2))`
-/

namespace A302065.P17513170405115331390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302069 (A055998 (n + 2)).toNat

end

end A302065.P17513170405115331390

/-! ## A302065.P16406367716677682095

`A302069(A155212(n)+5)`
-/

namespace A302065.P16406367716677682095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302069 (A155212 n + 5).toNat

end

end A302065.P16406367716677682095

/-! ## A302065.P3226573613558446070

`A302069(A056000(n)+7)`
-/

namespace A302065.P3226573613558446070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302069 (A056000 n + 7).toNat

end

end A302065.P3226573613558446070

/-!
# A302066: Number of nX5 0..1 arrays with every element equal to 0, 1, 2 or 4 horizontally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302066, there is no canonical definition to state claims against.
-/

/-! ## A302066.P10289084147321999641

`A302069(Δ[A264443(n)])`
-/

namespace A302066.P10289084147321999641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302069 (f1 (n + 1) - f1 n).toNat

end

end A302066.P10289084147321999641

/-! ## A302066.P17453616390786255205

`A302069(A046691(n+3))`
-/

namespace A302066.P17453616390786255205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302069 (A046691 (n + 3)).toNat

end

end A302066.P17453616390786255205

/-! ## A302066.P5300282267319125485

`A302069(eq[2, A092921(n)])`
-/

namespace A302066.P5300282267319125485
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092921 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302069 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A302066.P5300282267319125485

/-! ## A302066.P17867970710568451864

`A302069(eq[5, A239144(n)])`
-/

namespace A302066.P17867970710568451864
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239144 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302069 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A302066.P17867970710568451864

/-! ## A302066.P11777390636489720587

`A302069(Δ[A023545(n+1)])`
-/

namespace A302066.P11777390636489720587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302069 (f1 (n + 1) - f1 n).toNat

end

end A302066.P11777390636489720587

/-!
# A302067: Number of nX6 0..1 arrays with every element equal to 0, 1, 2 or 4 horizontally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302067, there is no canonical definition to state claims against.
-/

/-! ## A302067.P9040115434814287777

`A302069(A052905(n+3))`
-/

namespace A302067.P9040115434814287777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302069 (A052905 (n + 3)).toNat

end

end A302067.P9040115434814287777

/-! ## A302067.P13283249239763839364

`A302069(eq[3, A219347(n)])`
-/

namespace A302067.P13283249239763839364
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302069 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A302067.P13283249239763839364

/-! ## A302067.P39584850223169750

`A302069(A055999(n+3)+1)`
-/

namespace A302067.P39584850223169750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302069 (A055999 (n + 3) + 1).toNat

end

end A302067.P39584850223169750

/-! ## A302067.P9536073389494003872

`A302069(A000124(n+6)-6)`
-/

namespace A302067.P9536073389494003872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302069 (A000124 (n + 6) - 6).toNat

end

end A302067.P9536073389494003872

/-! ## A302067.P2506604256430927153

`A302069(eq[8, A185782(n+1)])`
-/

namespace A302067.P2506604256430927153
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302069 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A302067.P2506604256430927153

/-!
# A302068: Number of nX7 0..1 arrays with every element equal to 0, 1, 2 or 4 horizontally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302068, there is no canonical definition to state claims against.
-/

/-! ## A302068.P2762380753834578449

`A302069(A055999(n+4))`
-/

namespace A302068.P2762380753834578449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302069 (A055999 (n + 4)).toNat

end

end A302068.P2762380753834578449

/-! ## A302068.P12923757833780243175

`A302069(eq[4, A219347(n)])`
-/

namespace A302068.P12923757833780243175
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302069 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A302068.P12923757833780243175

/-! ## A302068.P2176213498128055811

`A302069(eq[6, A193592(n)])`
-/

namespace A302068.P2176213498128055811
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302069 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A302068.P2176213498128055811

/-! ## A302068.P15030086110104714551

`A302069(A056115(n+2)+9)`
-/

namespace A302068.P15030086110104714551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302069 (A056115 (n + 2) + 9).toNat

end

end A302068.P15030086110104714551

/-! ## A302068.P8807553845373731537

`A302069(eq[10, A185782(n+1)])`
-/

namespace A302068.P8807553845373731537
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302069 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A302068.P8807553845373731537

/-!
# A302069: T(n,k)=Number of nXk 0..1 arrays with every element equal to 0, 1, 2 or 4 horizontally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302069, there is no canonical definition to state claims against.
-/

/-! ## A302069.P8430808800465906176

`A301841(n+1)+A070635(A056040(n))`
-/

namespace A302069.P8430808800465906176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301841 (n + 1) + A070635 (A056040 n).toNat

end

end A302069.P8430808800465906176

/-!
# A302070: Number of 3Xn 0..1 arrays with every element equal to 0, 1, 2 or 4 horizontally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302070, there is no canonical definition to state claims against.
-/

/-! ## A302070.P13924787390034799093

`A302069(∑[n+2]+4)`
-/

namespace A302070.P13924787390034799093
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302069 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A302070.P13924787390034799093

/-! ## A302070.P14202989421439671069

`lcm((-1)^n, A302069(A167614(n+1)))`
-/

namespace A302070.P14202989421439671069
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A302069 (A167614 (n + 1)).toNat)

end

end A302070.P14202989421439671069

/-! ## A302070.P2439683970101754167

`A302069(A167614(n+1))+A025469(n)`
-/

namespace A302070.P2439683970101754167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302069 (A167614 (n + 1)).toNat + A025469 n

end

end A302070.P2439683970101754167

/-! ## A302070.P8764923432941030868

`A302069(A167614(n+1))+A185037(n)`
-/

namespace A302070.P8764923432941030868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302069 (A167614 (n + 1)).toNat + A185037 n

end

end A302070.P8764923432941030868

/-! ## A302070.P18443357600034632741

`A302069(A167614(n+1))+A185284(n)`
-/

namespace A302070.P18443357600034632741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302069 (A167614 (n + 1)).toNat + A185284 n

end

end A302070.P18443357600034632741

/-!
# A302071: Number of 4Xn 0..1 arrays with every element equal to 0, 1, 2 or 4 horizontally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302071, there is no canonical definition to state claims against.
-/

/-! ## A302071.P12290157099610869806

`A302069(A141214(n)+7)`
-/

namespace A302071.P12290157099610869806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302069 (A141214 n + 7).toNat

end

end A302071.P12290157099610869806

/-! ## A302071.P11234169375610705898

`A302069(A052905(n)+9)`
-/

namespace A302071.P11234169375610705898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302069 (A052905 n + 9).toNat

end

end A302071.P11234169375610705898

/-! ## A302071.P4018646153995431348

`A302069(A055999(n)+10)`
-/

namespace A302071.P4018646153995431348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302069 (A055999 n + 10).toNat

end

end A302071.P4018646153995431348

/-! ## A302071.P18106780528223285638

`A302069(A167614(n+2)+1)`
-/

namespace A302071.P18106780528223285638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302069 (A167614 (n + 2) + 1).toNat

end

end A302071.P18106780528223285638

/-! ## A302071.P10884719842300941411

`A302069(A166136(n+2)-2)`
-/

namespace A302071.P10884719842300941411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302069 (A166136 (n + 2) - 2).toNat

end

end A302071.P10884719842300941411

/-!
# A302072: Number of 5Xn 0..1 arrays with every element equal to 0, 1, 2 or 4 horizontally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302072, there is no canonical definition to state claims against.
-/

/-! ## A302072.P9757284991647424425

`A302069(A167499(n+3))`
-/

namespace A302072.P9757284991647424425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302069 (A167499 (n + 3)).toNat

end

end A302072.P9757284991647424425

/-! ## A302072.P10739433438155271709

`A302069(A155212(n)+13)`
-/

namespace A302072.P10739433438155271709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302069 (A155212 n + 13).toNat

end

end A302072.P10739433438155271709

/-! ## A302072.P7976715710755528837

`A302069(eq[7, A066657(n)])`
-/

namespace A302072.P7976715710755528837
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302069 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A302072.P7976715710755528837

/-! ## A302072.P7177273621085273733

`A302069(A051936(n+4)+14)`
-/

namespace A302072.P7177273621085273733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302069 (A051936 (n + 4) + 14).toNat

end

end A302072.P7177273621085273733

/-! ## A302072.P4399155333374559912

`A302069(eq[6, A131818(n+1)])`
-/

namespace A302072.P4399155333374559912
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302069 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A302072.P4399155333374559912

/-!
# A302073: Number of 6Xn 0..1 arrays with every element equal to 0, 1, 2 or 4 horizontally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302073, there is no canonical definition to state claims against.
-/

/-! ## A302073.P9061567175764736920

`A302069(A166136(n+4))`
-/

namespace A302073.P9061567175764736920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302069 (A166136 (n + 4)).toNat

end

end A302073.P9061567175764736920

/-! ## A302073.P8170763286493150520

`A302069(A056115(n)+21)`
-/

namespace A302073.P8170763286493150520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302069 (A056115 n + 21).toNat

end

end A302073.P8170763286493150520

/-! ## A302073.P13348095159361099946

`A302069(A167614(n+4)+3)`
-/

namespace A302073.P13348095159361099946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302069 (A167614 (n + 4) + 3).toNat

end

end A302073.P13348095159361099946

/-! ## A302073.P5101038727868534723

`A302069(A000124(n+5)+5)`
-/

namespace A302073.P5101038727868534723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302069 (A000124 (n + 5) + 5).toNat

end

end A302073.P5101038727868534723

/-! ## A302073.P16556755342836800521

`A302069(A000217(n+5)+6)`
-/

namespace A302073.P16556755342836800521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302069 (A000217 (n + 5) + 6).toNat

end

end A302073.P16556755342836800521

/-!
# A302074: Number of 7Xn 0..1 arrays with every element equal to 0, 1, 2 or 4 horizontally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302074, there is no canonical definition to state claims against.
-/

/-! ## A302074.P9616037074063134294

`A302069(eq[11, A066657(n)])`
-/

namespace A302074.P9616037074063134294
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302069 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A302074.P9616037074063134294

/-! ## A302074.P13356997371465081715

`A302069(A000096(n+5)+8)`
-/

namespace A302074.P13356997371465081715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302069 (A000096 (n + 5) + 8).toNat

end

end A302074.P13356997371465081715

/-! ## A302074.P7491783432713167803

`A302069(A000217(n+6)+7)`
-/

namespace A302074.P7491783432713167803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302069 (A000217 (n + 6) + 7).toNat

end

end A302074.P7491783432713167803

/-! ## A302074.P10048783322992170314

`A302069(eq[8, A131818(n+1)])`
-/

namespace A302074.P10048783322992170314
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302069 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A302074.P10048783322992170314

/-! ## A302074.P12221867345292276512

`A302069(A000124(n+7)-(n+1))`
-/

namespace A302074.P12221867345292276512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302069 (A000124 (n + 7) - (n + 1 : ℤ)).toNat

end

end A302074.P12221867345292276512

/-!
# A302075: Number of n X n 0..1 arrays with every element equal to 0, 1, 3 or 4 horizontally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302075, there is no canonical definition to state claims against.
-/

/-! ## A302075.P10276164209557023360

`A302081(∑[4*n]+1)`
-/

namespace A302075.P10276164209557023360
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302081 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A302075.P10276164209557023360

/-! ## A302075.P12168768068325609490

`record[A003982(n)*A302081(n+1)]`
-/

namespace A302075.P12168768068325609490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A302081 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A302075.P12168768068325609490

/-! ## A302075.P16211585920699883615

`record[gcd(A114327(n), A302081(n+1))]`
-/

namespace A302075.P16211585920699883615
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A114327 n) (A302081 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A302075.P16211585920699883615

/-! ## A302075.P3253743642369387152

`record[A077606(n+1)*A302081(n+1)]`
-/

namespace A302075.P3253743642369387152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077606 (n + 1) * A302081 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A302075.P3253743642369387152

/-! ## A302075.P6637696691609701512

`record[and(A185917(n+1), A302081(n+1))]`
-/

namespace A302075.P6637696691609701512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A185917 (n + 1)) (A302081 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A302075.P6637696691609701512

/-!
# A302076: Number of nX3 0..1 arrays with every element equal to 0, 1, 3 or 4 horizontally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302076, the canonical program `A302076.P2603173100680774651` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A302076 has offset 1).

The definition of A302076 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 188 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A302076.P15196433824813899148

`ogf((3+7x+2x^2)/(1-x-7x^2-4x^3))`
-/

namespace A302076.P15196433824813899148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, 7, 2] [1, -1, -7, -4] n

end

end A302076.P15196433824813899148

namespace A302076

/-- `ogf((3+7x+2x^2)/(1-x-7x^2-4x^3))` -/
def P15196433824813899148.Spec : Prop :=
  ∀ n, P15196433824813899148.a n = A302076 (n + 1)

end A302076

/-! ## A302076.P2603173100680774651

`a(n-1)+7*a(n-2)+4*a(n-3)` with `a(0)=3, a(1)=10, a(2)=33`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A302076

/-- `a(n-1)+7*a(n-2)+4*a(n-3)` -/
def P2603173100680774651.Spec : Prop :=
  ∀ n, (P2603173100680774651.a n : ℤ) = A302076 (n + 1)

theorem P2603173100680774651.correct : P2603173100680774651.Spec := by
  intro n
  simp only [A302076, Nat.add_sub_cancel]

end A302076

/-! ## A302076.P4503046111968322740

`A302081(∑[n+3]+1)`
-/

namespace A302076.P4503046111968322740
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302081 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A302076.P4503046111968322740

namespace A302076

/-- `A302081(∑[n+3]+1)` -/
def P4503046111968322740.Spec : Prop :=
  ∀ n, P4503046111968322740.a n = A302076 (n + 1)

end A302076

/-! ## A302076.P5344731105337066343

`record[A302081(A198464(n+1))]`
-/

namespace A302076.P5344731105337066343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302081 (A198464 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A302076.P5344731105337066343

namespace A302076

/-- `record[A302081(A198464(n+1))]` -/
def P5344731105337066343.Spec : Prop :=
  ∀ n, P5344731105337066343.a n = A302076 (n + 1)

end A302076

/-! ## A302076.P3711239456391912476

`A302081(A034856(n+2))%A195524(n+1)`
-/

namespace A302076.P3711239456391912476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A302081 (A034856 (n + 2)).toNat) (A195524 (n + 1))

end

end A302076.P3711239456391912476

namespace A302076

/-- `A302081(A034856(n+2))%A195524(n+1)` -/
def P3711239456391912476.Spec : Prop :=
  ∀ n, P3711239456391912476.a n = A302076 (n + 1)

end A302076

/-!
# A302077: Number of nX4 0..1 arrays with every element equal to 0, 1, 3 or 4 horizontally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302077, there is no canonical definition to state claims against.
-/

/-! ## A302077.P11515664756501131791

`A302081(A141214(n+1))`
-/

namespace A302077.P11515664756501131791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302081 (A141214 (n + 1)).toNat

end

end A302077.P11515664756501131791

/-! ## A302077.P3097485489009986072

`A302081(A027379(n+2))`
-/

namespace A302077.P3097485489009986072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302081 (A027379 (n + 2)).toNat

end

end A302077.P3097485489009986072

/-! ## A302077.P6773179712622889380

`A302081(A055998(n+2))`
-/

namespace A302077.P6773179712622889380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302081 (A055998 (n + 2)).toNat

end

end A302077.P6773179712622889380

/-! ## A302077.P8621400843565939691

`A302081(A155212(n)+5)`
-/

namespace A302077.P8621400843565939691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302081 (A155212 n + 5).toNat

end

end A302077.P8621400843565939691

/-! ## A302077.P6830152300171914044

`A302081(A046691(n+2)+1)`
-/

namespace A302077.P6830152300171914044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302081 (A046691 (n + 2) + 1).toNat

end

end A302077.P6830152300171914044

/-!
# A302078: Number of n X 5 0..1 arrays with every element equal to 0, 1, 3 or 4 horizontally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302078, there is no canonical definition to state claims against.
-/

/-! ## A302078.P9603306232449029172

`A302081(∑[n+5]+6)`
-/

namespace A302078.P9603306232449029172
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302081 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A302078.P9603306232449029172

/-! ## A302078.P66130186049661237

`and(-1, A302081(A046691(n+3)))`
-/

namespace A302078.P66130186049661237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A302081 (A046691 (n + 3)).toNat)

end

end A302078.P66130186049661237

/-! ## A302078.P9434040325165975352

`char[A353313(n)]*A302081(A046691(n+3))`
-/

namespace A302078.P9434040325165975352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353313 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A302081 (A046691 (n + 3)).toNat

end

end A302078.P9434040325165975352

/-! ## A302078.P16834749132025347963

`A302081(A046691(n+3))+A000038(n+1)`
-/

namespace A302078.P16834749132025347963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302081 (A046691 (n + 3)).toNat + A000038 (n + 1)

end

end A302078.P16834749132025347963

/-! ## A302078.P13757186320943579114

`char[A055396(n+1)]*A302081(A046691(n+3))`
-/

namespace A302078.P13757186320943579114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A302081 (A046691 (n + 3)).toNat

end

end A302078.P13757186320943579114

/-!
# A302079: Number of n X 6 0..1 arrays with every element equal to 0, 1, 3 or 4 horizontally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302079, there is no canonical definition to state claims against.
-/

/-! ## A302079.P2983024789261503892

`A302081(A052905(n+3))`
-/

namespace A302079.P2983024789261503892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302081 (A052905 (n + 3)).toNat

end

end A302079.P2983024789261503892

/-! ## A302079.P6256049007513203830

`A302081(eq[3, A219347(n)])`
-/

namespace A302079.P6256049007513203830
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302081 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A302079.P6256049007513203830

/-! ## A302079.P4412699569845480229

`A302081(Δ[A023545(n+2)]-1)`
-/

namespace A302079.P4412699569845480229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302081 (f1 (n + 1) - f1 n - 1).toNat

end

end A302079.P4412699569845480229

/-! ## A302079.P12639621541488950929

`A302081(Δ[A026054(n+3)]+1)`
-/

namespace A302079.P12639621541488950929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026054 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302081 (f1 (n + 1) - f1 n + 1).toNat

end

end A302079.P12639621541488950929

/-! ## A302079.P12541284276442260118

`A302081(A000217(n+5)+n+1)`
-/

namespace A302079.P12541284276442260118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302081 (A000217 (n + 5) + (n + 1 : ℤ)).toNat

end

end A302079.P12541284276442260118

/-!
# A302080: Number of nX7 0..1 arrays with every element equal to 0, 1, 3 or 4 horizontally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302080, there is no canonical definition to state claims against.
-/

/-! ## A302080.P8624432863281873772

`A302081(A055999(n+4))`
-/

namespace A302080.P8624432863281873772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302081 (A055999 (n + 4)).toNat

end

end A302080.P8624432863281873772

/-! ## A302080.P13838809849800109474

`A302081(eq[4, A219347(n)])`
-/

namespace A302080.P13838809849800109474
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302081 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A302080.P13838809849800109474

/-! ## A302080.P12148024751498337871

`A302081(eq[6, A193592(n)])`
-/

namespace A302080.P12148024751498337871
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302081 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A302080.P12148024751498337871

/-! ## A302080.P13947324289431462144

`A302081(Δ[A026054(n+4)])`
-/

namespace A302080.P13947324289431462144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026054 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302081 (f1 (n + 1) - f1 n).toNat

end

end A302080.P13947324289431462144

/-! ## A302080.P17786943386229284799

`A302081(eq[10, A185782(n+1)])`
-/

namespace A302080.P17786943386229284799
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302081 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A302080.P17786943386229284799

/-!
# A302081: T(n,k) = Number of n X k 0..1 arrays with every element equal to 0, 1, 3 or 4 horizontally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302081, there is no canonical definition to state claims against.
-/

/-! ## A302081.P3981414011283834490

`A325801(A038247(n))+A301884(n+1)`
-/

namespace A302081.P3981414011283834490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325801 (A038247 n).toNat + A301884 (n + 1)

end

end A302081.P3981414011283834490

/-! ## A302081.P968906308054774460

`A301884(n+1)-A088194(A172349(n))`
-/

namespace A302081.P968906308054774460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301884 (n + 1) - A088194 (A172349 n).toNat

end

end A302081.P968906308054774460

/-! ## A302081.P4172123019506320479

`A301884(n+1)-A088194(A294950(n))`
-/

namespace A302081.P4172123019506320479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301884 (n + 1) - A088194 (A294950 n).toNat

end

end A302081.P4172123019506320479

/-! ## A302081.P2724005812027492395

`A324802(A046741(n+1))+A301884(n+1)`
-/

namespace A302081.P2724005812027492395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324802 (A046741 (n + 1)).toNat + A301884 (n + 1)

end

end A302081.P2724005812027492395

/-! ## A302081.P15560737413035250046

`A072089(A301884(n+1)+A324802(n+1)²)`
-/

namespace A302081.P15560737413035250046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072089 (A301884 (n + 1) + A324802 (n + 1) ^ 2).toNat

end

end A302081.P15560737413035250046

/-!
# A302082: Number of 3Xn 0..1 arrays with every element equal to 0, 1, 3 or 4 horizontally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302082, there is no canonical definition to state claims against.
-/

/-! ## A302082.P10106550504385819826

`A302081(∑[n+2]+4)`
-/

namespace A302082.P10106550504385819826
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302081 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A302082.P10106550504385819826

/-! ## A302082.P8467000347096357436

`A302081(A167614(n+1))+A010673(2*n)`
-/

namespace A302082.P8467000347096357436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302081 (A167614 (n + 1)).toNat + A010673 (2 * n)

end

end A302082.P8467000347096357436

/-! ## A302082.P18427625012885608518

`A302081(A167614(n+1))%A301887(n+1)`
-/

namespace A302082.P18427625012885608518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A302081 (A167614 (n + 1)).toNat) (A301887 (n + 1))

end

end A302082.P18427625012885608518

/-! ## A302082.P2466314184053886733

`lcm(A014083(n)+1, A302081(A167614(n+1)))`
-/

namespace A302082.P2466314184053886733
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A014083 n + 1) (A302081 (A167614 (n + 1)).toNat)

end

end A302082.P2466314184053886733

/-! ## A302082.P13487723454460464646

`or(A302081(A167614(n+1)), A325801(n+1))`
-/

namespace A302082.P13487723454460464646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A302081 (A167614 (n + 1)).toNat) (A325801 (n + 1))

end

end A302082.P13487723454460464646

/-!
# A302083: Number of 4 X n 0..1 arrays with every element equal to 0, 1, 3 or 4 horizontally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302083, there is no canonical definition to state claims against.
-/

/-! ## A302083.P16161940724754376105

`A302081(A141214(n)+7)`
-/

namespace A302083.P16161940724754376105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302081 (A141214 n + 7).toNat

end

end A302083.P16161940724754376105

/-! ## A302083.P6128650296369357203

`A302081(A052905(n)+9)`
-/

namespace A302083.P6128650296369357203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302081 (A052905 n + 9).toNat

end

end A302083.P6128650296369357203

/-! ## A302083.P15760737477782544801

`A302081(A055999(n)+10)`
-/

namespace A302083.P15760737477782544801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302081 (A055999 n + 10).toNat

end

end A302083.P15760737477782544801

/-! ## A302083.P6454868379216382717

`A302081(A167614(n+2)+1)`
-/

namespace A302083.P6454868379216382717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302081 (A167614 (n + 2) + 1).toNat

end

end A302083.P6454868379216382717

/-! ## A302083.P2662374846048197106

`A302081(A027379(n+1)+7)`
-/

namespace A302083.P2662374846048197106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302081 (A027379 (n + 1) + 7).toNat

end

end A302083.P2662374846048197106

/-!
# A302084: Number of 5 X n 0..1 arrays with every element equal to 0, 1, 3 or 4 horizontally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302084, there is no canonical definition to state claims against.
-/

/-! ## A302084.P7812064200810909297

`A302081(A167499(n+3))`
-/

namespace A302084.P7812064200810909297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302081 (A167499 (n + 3)).toNat

end

end A302084.P7812064200810909297

/-! ## A302084.P9335453706865032513

`A302081(A000217(n+4)+5)`
-/

namespace A302084.P9335453706865032513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302081 (A000217 (n + 4) + 5).toNat

end

end A302084.P9335453706865032513

/-! ## A302084.P7747959748412327401

`A302081(A027379(n+2)+8)`
-/

namespace A302084.P7747959748412327401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302081 (A027379 (n + 2) + 8).toNat

end

end A302084.P7747959748412327401

/-! ## A302084.P17023880324823702668

`A302081(A034856(n+3)+7)`
-/

namespace A302084.P17023880324823702668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302081 (A034856 (n + 3) + 7).toNat

end

end A302084.P17023880324823702668

/-! ## A302084.P14880528562515483774

`A302081(A052905(n+1)+10)`
-/

namespace A302084.P14880528562515483774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302081 (A052905 (n + 1) + 10).toNat

end

end A302084.P14880528562515483774

/-!
# A302085: Number of 6Xn 0..1 arrays with every element equal to 0, 1, 3 or 4 horizontally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302085, there is no canonical definition to state claims against.
-/

/-! ## A302085.P723613766855270602

`A302081(A167614(n+4)+3)`
-/

namespace A302085.P723613766855270602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302081 (A167614 (n + 4) + 3).toNat

end

end A302085.P723613766855270602

/-! ## A302085.P1671856669664232440

`A302081(A000124(n+5)+5)`
-/

namespace A302085.P1671856669664232440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302081 (A000124 (n + 5) + 5).toNat

end

end A302085.P1671856669664232440

/-! ## A302085.P16165791118723870707

`A302081(A000217(n+5)+6)`
-/

namespace A302085.P16165791118723870707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302081 (A000217 (n + 5) + 6).toNat

end

end A302085.P16165791118723870707

/-! ## A302085.P14950454567179098542

`A302081(A141214(n+2)+9)`
-/

namespace A302085.P14950454567179098542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302081 (A141214 (n + 2) + 9).toNat

end

end A302085.P14950454567179098542

/-! ## A302085.P16084722963970703067

`A302081(A052905(n+2)+11)`
-/

namespace A302085.P16084722963970703067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302081 (A052905 (n + 2) + 11).toNat

end

end A302085.P16084722963970703067

/-!
# A302086: Number of 7Xn 0..1 arrays with every element equal to 0, 1, 3 or 4 horizontally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302086, there is no canonical definition to state claims against.
-/

/-! ## A302086.P13553019073159456677

`A302081(A167487(n+5))`
-/

namespace A302086.P13553019073159456677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302081 (A167487 (n + 5)).toNat

end

end A302086.P13553019073159456677

/-! ## A302086.P12468117588316447689

`A302081(A167499(n+5)+2)`
-/

namespace A302086.P12468117588316447689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302081 (A167499 (n + 5) + 2).toNat

end

end A302086.P12468117588316447689

/-! ## A302086.P1164939131187043048

`A302081(A000124(n+6)+6)`
-/

namespace A302086.P1164939131187043048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302081 (A000124 (n + 6) + 6).toNat

end

end A302086.P1164939131187043048

/-! ## A302086.P17328651885026073735

`A302081(A000217(n+6)+7)`
-/

namespace A302086.P17328651885026073735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302081 (A000217 (n + 6) + 7).toNat

end

end A302086.P17328651885026073735

/-! ## A302086.P9769799195753182695

`A302081(A173036(n+6)-6)`
-/

namespace A302086.P9769799195753182695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302081 (A173036 (n + 6) - 6).toNat

end

end A302086.P9769799195753182695

/-!
# A302087: Numbers k such that k^2+1 and (k+6)^2+1 are both prime.

The programs for A302087, the canonical program `A302087.P18273818907020710396` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A302087 has offset 1).

The definition of A302087 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1384 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A302087.P6667276488285112107

`∩[2*A001912(n+1), 2*A001912(n+1)-6]`
-/

namespace A302087.P6667276488285112107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001912 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001912 (n + 1) - 6

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A302087.P6667276488285112107

namespace A302087

/-- `∩[2*A001912(n+1), 2*A001912(n+1)-6]` -/
def P6667276488285112107.Spec : Prop :=
  ∀ n, (P6667276488285112107.a n : ℤ) = A302087 (n + 1)

end A302087

/-! ## A302087.P18273818907020710396

`∩[A005574(n+1), ∑[A214516(n+4)]]`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A302087

/-- `∩[A005574(n+1), ∑[A214516(n+4)]]` -/
def P18273818907020710396.Spec : Prop :=
  ∀ n, (P18273818907020710396.a n : ℤ) = A302087 (n + 1)

theorem P18273818907020710396.correct : P18273818907020710396.Spec := by
  intro n
  simp only [A302087, Nat.add_sub_cancel]

end A302087

/-! ## A302087.P6258365715638287409

`∩[A005574(n+1), A089593(n+1)-5]`
-/

namespace A302087.P6258365715638287409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005574 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089593 (n + 1) - 5

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A302087.P6258365715638287409

namespace A302087

/-- `∩[A005574(n+1), A089593(n+1)-5]` -/
def P6258365715638287409.Spec : Prop :=
  ∀ n, (P6258365715638287409.a n : ℤ) = A302087 (n + 1)

end A302087

/-! ## A302087.P4739717622191399412

`∩[A005574(n+1)-6, A005574(n+3)]`
-/

namespace A302087.P4739717622191399412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005574 (n + 1) - 6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005574 (n + 3)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A302087.P4739717622191399412

namespace A302087

/-- `∩[A005574(n+1)-6, A005574(n+3)]` -/
def P4739717622191399412.Spec : Prop :=
  ∀ n, (P4739717622191399412.a n : ℤ) = A302087 (n + 1)

end A302087

/-! ## A302087.P2350893162763854591

`record[A247339(∑[A214516(n+4)])]`
-/

namespace A302087.P2350893162763854591
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214516 (n + 4)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247339 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A302087.P2350893162763854591

namespace A302087

/-- `record[A247339(∑[A214516(n+4)])]` -/
def P2350893162763854591.Spec : Prop :=
  ∀ n, P2350893162763854591.a n = A302087 (n + 1)

end A302087

/-!
# A302088: Numbers k such that 5*k^k + 4 is prime.

The programs for A302088, there is no canonical definition to state claims against.
-/

/-! ## A302088.P3458792911983591323

`A002180(A084350(n+1))`
-/

namespace A302088.P3458792911983591323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002180 (A084350 (n + 1)).toNat

end

end A302088.P3458792911983591323

/-!
# A302090: Numbers k such that 6*k^k + 5 is prime.

The programs for A302090, there is no canonical definition to state claims against.
-/

/-! ## A302090.P13605703466488730719

`or(n, A331980(ceil(2^(n-1))))`
-/

namespace A302090.P13605703466488730719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (A331980 ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉.toNat)

end

end A302090.P13605703466488730719

/-! ## A302090.P5775662950471296162

`A191922(A101128(n+2))`
-/

namespace A302090.P5775662950471296162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191922 (A101128 (n + 2)).toNat

end

end A302090.P5775662950471296162

/-! ## A302090.P12338937817877438261

`A247085(A001200(n))+n`
-/

namespace A302090.P12338937817877438261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247085 (A001200 n).toNat + (n : ℤ)

end

end A302090.P12338937817877438261

/-!
# A302091: Primes of form 6*k^k + 5.

The programs for A302091, there is no canonical definition to state claims against.
-/

/-! ## A302091.P6515831420122154412

`6*A045503(A035346(n+1))+5`
-/

namespace A302091.P6515831420122154412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A045503 (A035346 (n + 1)).toNat + 5

end

end A302091.P6515831420122154412

/-!
# A302092: Product of n-th Bell number and n-th Bell number written backwards.

The programs for A302092, there is no canonical definition to state claims against.
-/

/-! ## A302092.P13406949213300923074

`A000110(n)*A004098(n)`
-/

namespace A302092.P13406949213300923074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000110 n * A004098 n

end

end A302092.P13406949213300923074

/-! ## A302092.P1701321757123452453

`A004098(n)*A011971(∑[n])`
-/

namespace A302092.P1701321757123452453
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004098 n * A011971 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A302092.P1701321757123452453

/-! ## A302092.P3425988971516068818

`A004098(n)*A095149(∑[n])`
-/

namespace A302092.P3425988971516068818
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004098 n * A095149 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A302092.P3425988971516068818

/-! ## A302092.P15104825564461514214

`A004098(n)*A123081(∑[n])`
-/

namespace A302092.P15104825564461514214
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004098 n * A123081 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A302092.P15104825564461514214

/-! ## A302092.P2022418904302519371

`A004098(n)*A186020(∑[n])`
-/

namespace A302092.P2022418904302519371
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004098 n * A186020 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A302092.P2022418904302519371

/-! ## A302092.P15072766823836547179

`Δ[A005001(n)]*A004098(n)`
-/

namespace A302092.P15072766823836547179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005001 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A004098 n

end

end A302092.P15072766823836547179

/-! ## A302092.P13790062399922363386

`A004098(n)*A056857(A000124(n))`
-/

namespace A302092.P13790062399922363386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004098 n * A056857 (A000124 n).toNat

end

end A302092.P13790062399922363386

/-! ## A302092.P7283697794487608679

`A004098(n)*A085838(A000096(n))`
-/

namespace A302092.P7283697794487608679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004098 n * A085838 (A000096 n).toNat

end

end A302092.P7283697794487608679

/-! ## A302092.P15549664200089880538

`(A322924(n)-A000110(n))*A000110(n)`
-/

namespace A302092.P15549664200089880538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A322924 n - A000110 n) * A000110 n

end

end A302092.P15549664200089880538

/-! ## A302092.P2057981188845005925

`(A322924(n)-A004098(n))*A004098(n)`
-/

namespace A302092.P2057981188845005925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A322924 n - A004098 n) * A004098 n

end

end A302092.P2057981188845005925

/-!
# A302093: a(n) = floor(C(n/2)*C(n/2+1)), where C = Catalan numbers (A000108).

The programs for A302093, there is no canonical definition to state claims against.
-/

/-! ## A302093.P6137594733054497458

`A088722(A093129(n))+A005817(n)`
-/

namespace A302093.P6137594733054497458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088722 (A093129 n).toNat + A005817 n

end

end A302093.P6137594733054497458

/-! ## A302093.P16818794392446296986

`A250213(A241601(n))+A005817(n)`
-/

namespace A302093.P16818794392446296986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250213 (A241601 n).toNat + A005817 n

end

end A302093.P16818794392446296986

/-! ## A302093.P11909889335367737912

`A250213(A246006(n))+A005817(n)`
-/

namespace A302093.P11909889335367737912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250213 (A246006 n).toNat + A005817 n

end

end A302093.P11909889335367737912

/-! ## A302093.P1219477897351529589

`A250213(A249909(n))+A005817(n)`
-/

namespace A302093.P1219477897351529589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250213 (A249909 n).toNat + A005817 n

end

end A302093.P1219477897351529589

/-! ## A302093.P10297405142497826420

`A318499(A146917(n+1))+A005817(n)`
-/

namespace A302093.P10297405142497826420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318499 (A146917 (n + 1)).toNat + A005817 n

end

end A302093.P10297405142497826420

/-!
# A302094: Number of relatively prime or monic twice-partitions of n.

The programs for A302094, there is no canonical definition to state claims against.
-/

/-! ## A302094.P17458133710358045217

`A211231(n)+A211225(∑[A199675(n)])`
-/

namespace A302094.P17458133710358045217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199675 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211231 n + A211225 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A302094.P17458133710358045217

