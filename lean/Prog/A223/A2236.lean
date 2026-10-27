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
import Seq.B000.C013
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B001.C000
import Seq.B001.C002
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C001
import Seq.B004.C001
import Seq.B005.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.Opaque.C000
import Seq.Opaque.C001
import Seq.Opaque.C002
import Seq.Opaque.C003
import Seq.Opaque.C004
import Seq.Opaque.C005
import Seq.Opaque.C007
import Seq.Opaque.C008
import Seq.Opaque.C009
import Seq.Opaque.C010
import Seq.Opaque.C011
import Seq.Opaque.C012
import Seq.Opaque.C013
import Seq.Opaque.C015
import Seq.Opaque.C016
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C023

/-!
# A223600: Petersen graph (8,2) coloring a rectangular array: number of 2 X n 0..15 arrays where 0..15 label nodes of a graph with edges 0,1 0,8 8,14 8,10 1,2 1,9 9,15 9,11 2,3 2,10 10,12 3,4 3,11 11,13 4,5 4,12 12,14 5,6 5,13 13,15 6,7 6,14 7,0 7,15 and every array movement to a horizontal, diagonal or antidiagonal neighbor moves along an edge of this graph.

The programs for A223600, there is no canonical definition to state claims against.
-/

/-! ## A223600.P9812899803725089490

`A223599(∑[n+1]+2)`
-/

namespace A223600.P9812899803725089490
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223599 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A223600.P9812899803725089490

/-! ## A223600.P1265746470989402581

`A223599(A133263(n+1))+A000007(n+2)`
-/

namespace A223600.P1265746470989402581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223599 (A133263 (n + 1)).toNat + A000007 (n + 2)

end

end A223600.P1265746470989402581

/-! ## A223600.P10494154714829402868

`A223599(A133263(n+1))%A083065(n+8)`
-/

namespace A223600.P10494154714829402868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A223599 (A133263 (n + 1)).toNat) (A083065 (n + 8))

end

end A223600.P10494154714829402868

/-!
# A223601: Petersen graph (8,2) coloring a rectangular array: number of 3Xn 0..15 arrays where 0..15 label nodes of a graph with edges 0,1 0,8 8,14 8,10 1,2 1,9 9,15 9,11 2,3 2,10 10,12 3,4 3,11 11,13 4,5 4,12 12,14 5,6 5,13 13,15 6,7 6,14 7,0 7,15 and every array movement to a horizontal, diagonal or antidiagonal neighbor moves along an edge of this graph.

The programs for A223601, there is no canonical definition to state claims against.
-/

/-! ## A223601.P6164336418156844125

`A223599(∑[n+2]+4)`
-/

namespace A223601.P6164336418156844125
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223599 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A223601.P6164336418156844125

/-! ## A223601.P10177948364917510562

`lcm(2, A223599(A167614(n+1)))`
-/

namespace A223601.P10177948364917510562
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A223599 (A167614 (n + 1)).toNat)

end

end A223601.P10177948364917510562

/-! ## A223601.P527950798053958646

`A223599(A167614(n+1))+A185284(n)`
-/

namespace A223601.P527950798053958646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223599 (A167614 (n + 1)).toNat + A185284 n

end

end A223601.P527950798053958646

/-! ## A223601.P12862122518635268307

`A223599(A167614(n+1))*A291168(n)`
-/

namespace A223601.P12862122518635268307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223599 (A167614 (n + 1)).toNat * A291168 n

end

end A223601.P12862122518635268307

/-! ## A223601.P9231717518612537833

`A223599(A167614(n+1))+A000007(n+1)`
-/

namespace A223601.P9231717518612537833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223599 (A167614 (n + 1)).toNat + A000007 (n + 1)

end

end A223601.P9231717518612537833

/-!
# A223602: Petersen graph (8,2) coloring a rectangular array: number of 4Xn 0..15 arrays where 0..15 label nodes of a graph with edges 0,1 0,8 8,14 8,10 1,2 1,9 9,15 9,11 2,3 2,10 10,12 3,4 3,11 11,13 4,5 4,12 12,14 5,6 5,13 13,15 6,7 6,14 7,0 7,15 and every array movement to a horizontal, diagonal or antidiagonal neighbor moves along an edge of this graph.

The programs for A223602, there is no canonical definition to state claims against.
-/

/-! ## A223602.P16567547111279296723

`A223599(A141214(n)+7)`
-/

namespace A223602.P16567547111279296723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223599 (A141214 n + 7).toNat

end

end A223602.P16567547111279296723

/-! ## A223602.P8896148284854951940

`A223599(A052905(n)+9)`
-/

namespace A223602.P8896148284854951940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223599 (A052905 n + 9).toNat

end

end A223602.P8896148284854951940

/-! ## A223602.P14622374433542582235

`A223599(A055999(n)+10)`
-/

namespace A223602.P14622374433542582235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223599 (A055999 n + 10).toNat

end

end A223602.P14622374433542582235

/-! ## A223602.P220221536153572718

`A223599(A167614(n+2)+1)`
-/

namespace A223602.P220221536153572718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223599 (A167614 (n + 2) + 1).toNat

end

end A223602.P220221536153572718

/-! ## A223602.P8497555506935305809

`A223599(eq[5, A131818(n+1)])`
-/

namespace A223602.P8497555506935305809
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223599 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223602.P8497555506935305809

/-!
# A223603: Petersen graph (8,2) coloring a rectangular array: number of 5Xn 0..15 arrays where 0..15 label nodes of a graph with edges 0,1 0,8 8,14 8,10 1,2 1,9 9,15 9,11 2,3 2,10 10,12 3,4 3,11 11,13 4,5 4,12 12,14 5,6 5,13 13,15 6,7 6,14 7,0 7,15 and every array movement to a horizontal, diagonal or antidiagonal neighbor moves along an edge of this graph.

The programs for A223603, there is no canonical definition to state claims against.
-/

/-! ## A223603.P7295817656482529850

`A223599(A167499(n+3))`
-/

namespace A223603.P7295817656482529850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223599 (A167499 (n + 3)).toNat

end

end A223603.P7295817656482529850

/-! ## A223603.P2053062296316386171

`A223599(A155212(n)+13)`
-/

namespace A223603.P2053062296316386171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223599 (A155212 n + 13).toNat

end

end A223603.P2053062296316386171

/-! ## A223603.P10473387241509943618

`A223599(A056000(n)+15)`
-/

namespace A223603.P10473387241509943618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223599 (A056000 n + 15).toNat

end

end A223603.P10473387241509943618

/-! ## A223603.P3312202240913420585

`A223599(A167614(n+3)+2)`
-/

namespace A223603.P3312202240913420585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223599 (A167614 (n + 3) + 2).toNat

end

end A223603.P3312202240913420585

/-! ## A223603.P1787338191434878124

`A223599(eq[6, A131818(n+1)])`
-/

namespace A223603.P1787338191434878124
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223599 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223603.P1787338191434878124

/-!
# A223604: Petersen graph (8,2) coloring a rectangular array: number of 6Xn 0..15 arrays where 0..15 label nodes of a graph with edges 0,1 0,8 8,14 8,10 1,2 1,9 9,15 9,11 2,3 2,10 10,12 3,4 3,11 11,13 4,5 4,12 12,14 5,6 5,13 13,15 6,7 6,14 7,0 7,15 and every array movement to a horizontal, diagonal or antidiagonal neighbor moves along an edge of this graph.

The programs for A223604, there is no canonical definition to state claims against.
-/

/-! ## A223604.P2026028176536257143

`A223599(A167499(n+4)+1)`
-/

namespace A223604.P2026028176536257143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223599 (A167499 (n + 4) + 1).toNat

end

end A223604.P2026028176536257143

/-! ## A223604.P4597187671622875711

`A223599(A167614(n+4)+3)`
-/

namespace A223604.P4597187671622875711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223599 (A167614 (n + 4) + 3).toNat

end

end A223604.P4597187671622875711

/-! ## A223604.P9271337228161632352

`A223599(A141214(n+2)+9)`
-/

namespace A223604.P9271337228161632352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223599 (A141214 (n + 2) + 9).toNat

end

end A223604.P9271337228161632352

/-! ## A223604.P9031905167890798832

`A223599(eq[5, A002262(n)]+1)`
-/

namespace A223604.P9031905167890798832
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223599 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A223604.P9031905167890798832

/-! ## A223604.P16042107882952344260

`A223599(eq[7, A131818(n+1)])`
-/

namespace A223604.P16042107882952344260
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223599 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223604.P16042107882952344260

/-!
# A223605: Petersen graph (8,2) coloring a rectangular array: number of 7 X n 0..15 arrays where 0..15 label nodes of a graph with edges 0,1 0,8 8,14 8,10 1,2 1,9 9,15 9,11 2,3 2,10 10,12 3,4 3,11 11,13 4,5 4,12 12,14 5,6 5,13 13,15 6,7 6,14 7,0 7,15 and every array movement to a horizontal, diagonal or antidiagonal neighbor moves along an edge of this graph.

The programs for A223605, there is no canonical definition to state claims against.
-/

/-! ## A223605.P14570634429204551467

`A223599(eq[8, A131818(n+1)])`
-/

namespace A223605.P14570634429204551467
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223599 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223605.P14570634429204551467

/-!
# A223606: Numbers k whose deficiency is 22: sigma(k) - 2*k = -22.

The programs for A223606, there is no canonical definition to state claims against.
-/

/-! ## A223606.P17131061712982206113

`eq[20, 2*n-A000203(n+1)]+1`
-/

namespace A223606.P17131061712982206113
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  20

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - A000203 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A223606.P17131061712982206113

/-! ## A223606.P2143070318912250643

`eq[15, A286449(n+1)]+1`
-/

namespace A223606.P2143070318912250643
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286449 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A223606.P2143070318912250643

/-! ## A223606.P17334935536330795016

`eq[21, A235796(n+1)]+1`
-/

namespace A223606.P17334935536330795016
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  21

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235796 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A223606.P17334935536330795016

/-! ## A223606.P7210245997656244541

`eq[23, A157449(n+2)]+2`
-/

namespace A223606.P7210245997656244541
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  23

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157449 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A223606.P7210245997656244541

/-!
# A223607: Numbers whose deficiency is 20: sigma(k) - 2*k = -20.

The programs for A223607, there is no canonical definition to state claims against.
-/

/-! ## A223607.P3400782519788654542

`A274566(n+9)`
-/

namespace A223607.P3400782519788654542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274566 (n + 9)

end

end A223607.P3400782519788654542

/-!
# A223608: Numbers k whose deficiency is 18: sigma(k) - 2*k = -18.

The programs for A223608, there is no canonical definition to state claims against.
-/

/-! ## A223608.P13755696964788003754

`A274564(A248910(n+5)+2)`
-/

namespace A223608.P13755696964788003754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274564 (A248910 (n + 5) + 2).toNat

end

end A223608.P13755696964788003754

/-!
# A223610: Numbers k whose abundance is 18: sigma(k) - 2*k = 18.

The programs for A223610, there is no canonical definition to state claims against.
-/

/-! ## A223610.P6789079121236740402

`A274563(n+2)`
-/

namespace A223610.P6789079121236740402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274563 (n + 2)

end

end A223610.P6789079121236740402

/-! ## A223610.P16111113581679674584

`record[A274563(A085058(n))]`
-/

namespace A223610.P16111113581679674584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274563 (A085058 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A223610.P16111113581679674584

/-! ## A223610.P15245560448397375743

`record[A274563(A328578(n))]`
-/

namespace A223610.P15245560448397375743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274563 (A328578 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A223610.P15245560448397375743

/-! ## A223610.P1710016533772685448

`record[A274563(Δ[A061885(n)])]`
-/

namespace A223610.P1710016533772685448
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061885 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274563 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A223610.P1710016533772685448

/-!
# A223611: Numbers k whose abundance is 20: sigma(k) - 2*k = 20.

The programs for A223611, there is no canonical definition to state claims against.
-/

/-! ## A223611.P11791139880218290996

`A274565(n+2)`
-/

namespace A223611.P11791139880218290996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274565 (n + 2)

end

end A223611.P11791139880218290996

/-! ## A223611.P673162722073796276

`record[A274565(A008619(n)*A054977(n))]`
-/

namespace A223611.P673162722073796276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274565 (A008619 n * A054977 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A223611.P673162722073796276

/-! ## A223611.P11075474212442120506

`record[A274565(A085058(n))]`
-/

namespace A223611.P11075474212442120506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274565 (A085058 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A223611.P11075474212442120506

/-!
# A223614: Number of n X n 0..1 arrays with rows and columns unimodal.

The programs for A223614, there is no canonical definition to state claims against.
-/

/-! ## A223614.P10961253145915903298

`A223620(∑[4*n]+1)`
-/

namespace A223614.P10961253145915903298
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223620 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A223614.P10961253145915903298

/-! ## A223614.P8975933021197710602

`lcm(2, A223620(A001844(n)))`
-/

namespace A223614.P8975933021197710602
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A223620 (A001844 n).toNat)

end

end A223614.P8975933021197710602

/-! ## A223614.P15633601093472473298

`record[A003982(n)*A223620(n+1)]`
-/

namespace A223614.P15633601093472473298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A223620 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A223614.P15633601093472473298

/-! ## A223614.P4060899568181357341

`record[gcd(A003987(n), A223620(n+1))]`
-/

namespace A223614.P4060899568181357341
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003987 n) (A223620 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A223614.P4060899568181357341

/-! ## A223614.P12062881431718551199

`record[root(A223620(n+1), A286157(n+1))]`
-/

namespace A223614.P12062881431718551199
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A223620 (n + 1) : ℝ) ^ (1 / (A286157 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A223614.P12062881431718551199

/-!
# A223615: Number of n X 3 0..1 arrays with rows and columns unimodal.

The programs for A223615, there is no canonical definition to state claims against.
-/

/-! ## A223615.P366381862986921102

`A223620(∑[n+2]+4)`
-/

namespace A223615.P366381862986921102
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223620 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A223615.P366381862986921102

/-! ## A223615.P8711029681368929602

`A223620(A167614(n+1))+A185284(n)`
-/

namespace A223615.P8711029681368929602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223620 (A167614 (n + 1)).toNat + A185284 n

end

end A223615.P8711029681368929602

/-! ## A223615.P11197320753146049510

`A223620(A167614(n+1))%A198692(n)`
-/

namespace A223615.P11197320753146049510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A223620 (A167614 (n + 1)).toNat) (A198692 n)

end

end A223615.P11197320753146049510

/-! ## A223615.P197897634766248101

`lcm(A158388(n), A223620(A167614(n+1)))`
-/

namespace A223615.P197897634766248101
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A158388 n) (A223620 (A167614 (n + 1)).toNat)

end

end A223615.P197897634766248101

/-! ## A223615.P14532548958979024195

`or(A000007(n), A223620(A167614(n+1)))`
-/

namespace A223615.P14532548958979024195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A223620 (A167614 (n + 1)).toNat)

end

end A223615.P14532548958979024195

/-!
# A223616: Number of n X 4 0..1 arrays with rows and columns unimodal.

The programs for A223616, there is no canonical definition to state claims against.
-/

/-! ## A223616.P3282737346927814615

`A223620(A374004(n+1))`
-/

namespace A223616.P3282737346927814615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223620 (A374004 (n + 1)).toNat

end

end A223616.P3282737346927814615

/-! ## A223616.P1576487789272900536

`A223620(A052905(n)+9)`
-/

namespace A223616.P1576487789272900536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223620 (A052905 n + 9).toNat

end

end A223616.P1576487789272900536

/-! ## A223616.P11429658741833280600

`A223620(A055999(n)+10)`
-/

namespace A223616.P11429658741833280600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223620 (A055999 n + 10).toNat

end

end A223616.P11429658741833280600

/-! ## A223616.P3771136241681841409

`A223620(A167614(n+2)+1)`
-/

namespace A223616.P3771136241681841409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223620 (A167614 (n + 2) + 1).toNat

end

end A223616.P3771136241681841409

/-! ## A223616.P6310654778532630733

`A223620(A166136(n+2)-2)`
-/

namespace A223616.P6310654778532630733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223620 (A166136 (n + 2) - 2).toNat

end

end A223616.P6310654778532630733

/-!
# A223617: Number of n X 5 0..1 arrays with rows and columns unimodal.

The programs for A223617, there is no canonical definition to state claims against.
-/

/-! ## A223617.P4682063924024867303

`A223620(A374005(n+1))`
-/

namespace A223617.P4682063924024867303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223620 (A374005 (n + 1)).toNat

end

end A223617.P4682063924024867303

/-! ## A223617.P15642270969146022012

`A223620(A056000(n)+15)`
-/

namespace A223617.P15642270969146022012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223620 (A056000 n + 15).toNat

end

end A223617.P15642270969146022012

/-! ## A223617.P2886223663252976597

`A223620(A000217(n+4)+5)`
-/

namespace A223617.P2886223663252976597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223620 (A000217 (n + 4) + 5).toNat

end

end A223617.P2886223663252976597

/-! ## A223617.P6641229684613072638

`A223620(A000124(n+5)-(n+1))`
-/

namespace A223617.P6641229684613072638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223620 (A000124 (n + 5) - (n + 1 : ℤ)).toNat

end

end A223617.P6641229684613072638

/-! ## A223617.P9727001907363134126

`A223620(A046691(n+3)-(n-4))`
-/

namespace A223617.P9727001907363134126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223620 (A046691 (n + 3) - ((n : ℤ) - 4)).toNat

end

end A223617.P9727001907363134126

/-!
# A223618: Number of nX6 0..1 arrays with rows and columns unimodal.

The programs for A223618, there is no canonical definition to state claims against.
-/

/-! ## A223618.P13056103126882353224

`A223620(A374007(n+1))`
-/

namespace A223618.P13056103126882353224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223620 (A374007 (n + 1)).toNat

end

end A223618.P13056103126882353224

/-! ## A223618.P12309742137114274712

`A223620(A166136(n+4))`
-/

namespace A223618.P12309742137114274712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223620 (A166136 (n + 4)).toNat

end

end A223618.P12309742137114274712

/-! ## A223618.P1645938490266092339

`A223620(A167499(n+4)+1)`
-/

namespace A223618.P1645938490266092339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223620 (A167499 (n + 4) + 1).toNat

end

end A223618.P1645938490266092339

/-! ## A223618.P5122299342742438432

`A223620(A000217(n+5)+6)`
-/

namespace A223618.P5122299342742438432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223620 (A000217 (n + 5) + 6).toNat

end

end A223618.P5122299342742438432

/-! ## A223618.P12635997551907628984

`A223620(Δ[A023545(n+1)]+10)`
-/

namespace A223618.P12635997551907628984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223620 (f1 (n + 1) - f1 n + 10).toNat

end

end A223618.P12635997551907628984

/-!
# A223619: Number of nX7 0..1 arrays with rows and columns unimodal.

The programs for A223619, there is no canonical definition to state claims against.
-/

/-! ## A223619.P17012267611218980012

`A223620(A374008(n+1))`
-/

namespace A223619.P17012267611218980012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223620 (A374008 (n + 1)).toNat

end

end A223619.P17012267611218980012

/-! ## A223619.P874982591776685167

`A223620(A167487(n+5))`
-/

namespace A223619.P874982591776685167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223620 (A167487 (n + 5)).toNat

end

end A223619.P874982591776685167

/-! ## A223619.P7471860259479826988

`A223620(A056119(n)+28)`
-/

namespace A223619.P7471860259479826988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223620 (A056119 n + 28).toNat

end

end A223619.P7471860259479826988

/-! ## A223619.P18348346908997030813

`A223620(A167499(n+5)+2)`
-/

namespace A223619.P18348346908997030813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223620 (A167499 (n + 5) + 2).toNat

end

end A223619.P18348346908997030813

/-! ## A223619.P6596629226378171747

`A223620(A000124(n+6)+6)`
-/

namespace A223619.P6596629226378171747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223620 (A000124 (n + 6) + 6).toNat

end

end A223619.P6596629226378171747

/-!
# A223620: T(n,k) = Number of n X k 0..1 arrays with rows and columns unimodal.

The programs for A223620, there is no canonical definition to state claims against.
-/

/-! ## A223620.P7293130793781703578

`A223637(n+1)+A185203(A223012(n+1))`
-/

namespace A223620.P7293130793781703578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223637 (n + 1) + A185203 (A223012 (n + 1)).toNat

end

end A223620.P7293130793781703578

/-! ## A223620.P9791309511639576281

`A223637(A031501(∑[n]))`
-/

namespace A223620.P9791309511639576281
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223637 (A031501 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A223620.P9791309511639576281

/-! ## A223620.P15029334353170351950

`A223637(A084192(∑[n]))`
-/

namespace A223620.P15029334353170351950
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223637 (A084192 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A223620.P15029334353170351950

/-! ## A223620.P5047051057989338865

`A223637(A084193(∑[n]))`
-/

namespace A223620.P5047051057989338865
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223637 (A084193 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A223620.P5047051057989338865

/-! ## A223620.P11932126091396093762

`A223644(A004885(n+2))`
-/

namespace A223620.P11932126091396093762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223644 (A004885 (n + 2)).toNat

end

end A223620.P11932126091396093762

/-!
# A223621: Number of nX3 0..1 arrays with row sums nondecreasing and column sums unimodal.

The programs for A223621, there is no canonical definition to state claims against.
-/

/-! ## A223621.P16334669480808770830

`A223625(∑[n+3]+1)`
-/

namespace A223621.P16334669480808770830
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223625 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A223621.P16334669480808770830

/-! ## A223621.P12641571564291252712

`A057427(n+1)*A223625(A034856(n+2))`
-/

namespace A223621.P12641571564291252712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (n + 1) * A223625 (A034856 (n + 2)).toNat

end

end A223621.P12641571564291252712

/-! ## A223621.P10738818980605746828

`A223625(A034856(n+2))%A065728(n+2)`
-/

namespace A223621.P10738818980605746828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A223625 (A034856 (n + 2)).toNat) (A065728 (n + 2))

end

end A223621.P10738818980605746828

/-!
# A223622: Number of nX4 0..1 arrays with row sums nondecreasing and column sums unimodal.

The programs for A223622, there is no canonical definition to state claims against.
-/

/-! ## A223622.P6648105266399470232

`A223625(A141214(n+1))`
-/

namespace A223622.P6648105266399470232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223625 (A141214 (n + 1)).toNat

end

end A223622.P6648105266399470232

/-! ## A223622.P10292567689567233339

`A223625(A055998(n+2))`
-/

namespace A223622.P10292567689567233339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223625 (A055998 (n + 2)).toNat

end

end A223622.P10292567689567233339

/-! ## A223622.P12665080434324173505

`A223625(A155212(n)+5)`
-/

namespace A223622.P12665080434324173505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223625 (A155212 n + 5).toNat

end

end A223622.P12665080434324173505

/-! ## A223622.P12539354179646669015

`A223625(A056000(n)+7)`
-/

namespace A223622.P12539354179646669015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223625 (A056000 n + 7).toNat

end

end A223622.P12539354179646669015

/-! ## A223622.P127450108207964960

`A223625(eq[2, A054123(n)])`
-/

namespace A223622.P127450108207964960
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054123 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223625 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223622.P127450108207964960

/-!
# A223623: Number of nX5 0..1 arrays with row sums nondecreasing and column sums unimodal.

The programs for A223623, there is no canonical definition to state claims against.
-/

/-! ## A223623.P16419187100278023507

`A223625(∑[n+5]+6)`
-/

namespace A223623.P16419187100278023507
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223625 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A223623.P16419187100278023507

/-!
# A223624: Number of n X 6 0..1 arrays with row sums nondecreasing and column sums unimodal.

The programs for A223624, there is no canonical definition to state claims against.
-/

/-! ## A223624.P3662876905393626568

`A223625(A052905(n+3))`
-/

namespace A223624.P3662876905393626568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223625 (A052905 (n + 3)).toNat

end

end A223624.P3662876905393626568

/-! ## A223624.P6333740852155148515

`A223625(A302537(n)+15)`
-/

namespace A223624.P6333740852155148515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223625 (A302537 n + 15).toNat

end

end A223624.P6333740852155148515

/-! ## A223624.P12750496604760333237

`A223625(A056119(n)+16)`
-/

namespace A223624.P12750496604760333237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223625 (A056119 n + 16).toNat

end

end A223624.P12750496604760333237

/-! ## A223624.P3579900988210010307

`A223625(eq[3, A219347(n)])`
-/

namespace A223624.P3579900988210010307
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223625 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223624.P3579900988210010307

/-!
# A223626: Number of 2Xn 0..1 arrays with row sums nondecreasing and column sums unimodal.

The programs for A223626, there is no canonical definition to state claims against.
-/

/-! ## A223626.P12160887376867485454

`A223625(∑[n+1]+2)`
-/

namespace A223626.P12160887376867485454
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223625 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A223626.P12160887376867485454

/-! ## A223626.P14984694468690778218

`A223625(A133263(n+1))+char[21]`
-/

namespace A223626.P14984694468690778218
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  21

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223625 (A133263 (n + 1)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A223626.P14984694468690778218

/-! ## A223626.P1665099273591032408

`A033999(n)²*A223625(A133263(n+1))`
-/

namespace A223626.P1665099273591032408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n ^ 2 * A223625 (A133263 (n + 1)).toNat

end

end A223626.P1665099273591032408

/-! ## A223626.P13147045522582246641

`A223625(A133263(n+1))%A000108(n+3)`
-/

namespace A223626.P13147045522582246641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A223625 (A133263 (n + 1)).toNat) (A000108 (n + 3))

end

end A223626.P13147045522582246641

/-! ## A223626.P5920377482491245701

`A007318(C(2, n))*A223625(A133263(n+1))`
-/

namespace A223626.P5920377482491245701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A223625 (A133263 (n + 1)).toNat

end

end A223626.P5920377482491245701

/-!
# A223627: Number of 3Xn 0..1 arrays with row sums nondecreasing and column sums unimodal.

The programs for A223627, there is no canonical definition to state claims against.
-/

/-! ## A223627.P10046687462189492854

`A223625(∑[n+2]+4)`
-/

namespace A223627.P10046687462189492854
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223625 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A223627.P10046687462189492854

/-! ## A223627.P7764652445909183522

`and(-1, A223625(A167614(n+1)))`
-/

namespace A223627.P7764652445909183522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A223625 (A167614 (n + 1)).toNat)

end

end A223627.P7764652445909183522

/-! ## A223627.P13674242659708538091

`A223625(A167614(n+1))+A011738(n)`
-/

namespace A223627.P13674242659708538091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223625 (A167614 (n + 1)).toNat + A011738 n

end

end A223627.P13674242659708538091

/-! ## A223627.P8489998000198438392

`A223625(A167614(n+1))+A025437(n)`
-/

namespace A223627.P8489998000198438392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223625 (A167614 (n + 1)).toNat + A025437 n

end

end A223627.P8489998000198438392

/-! ## A223627.P14396930291080416875

`A223625(A167614(n+1))+A025438(n)`
-/

namespace A223627.P14396930291080416875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223625 (A167614 (n + 1)).toNat + A025438 n

end

end A223627.P14396930291080416875

/-!
# A223628: Number of 4Xn 0..1 arrays with row sums nondecreasing and column sums unimodal.

The programs for A223628, there is no canonical definition to state claims against.
-/

/-! ## A223628.P3102923676998104236

`A223625(∑[n+3]+7)`
-/

namespace A223628.P3102923676998104236
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223625 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A223628.P3102923676998104236

/-!
# A223629: Number of 5Xn 0..1 arrays with row sums nondecreasing and column sums unimodal.

The programs for A223629, there is no canonical definition to state claims against.
-/

/-! ## A223629.P8748674018421224735

`A223625(A167499(n+3))`
-/

namespace A223629.P8748674018421224735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223625 (A167499 (n + 3)).toNat

end

end A223629.P8748674018421224735

/-! ## A223629.P13334777784137710082

`A223625(A155212(n)+13)`
-/

namespace A223629.P13334777784137710082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223625 (A155212 n + 13).toNat

end

end A223629.P13334777784137710082

/-! ## A223629.P13765733679931277129

`A223625(A056000(n)+15)`
-/

namespace A223629.P13765733679931277129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223625 (A056000 n + 15).toNat

end

end A223629.P13765733679931277129

/-! ## A223629.P2282783200507793994

`A223625(eq[7, A066657(n)])`
-/

namespace A223629.P2282783200507793994
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223625 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223629.P2282783200507793994

/-!
# A223630: Number of 6Xn 0..1 arrays with row sums nondecreasing and column sums unimodal.

The programs for A223630, there is no canonical definition to state claims against.
-/

/-! ## A223630.P8225083301517077969

`A223625(A056115(n)+21)`
-/

namespace A223630.P8225083301517077969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223625 (A056115 n + 21).toNat

end

end A223630.P8225083301517077969

/-! ## A223630.P7747077789999536367

`A223625(A167499(n+4)+1)`
-/

namespace A223630.P7747077789999536367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223625 (A167499 (n + 4) + 1).toNat

end

end A223630.P7747077789999536367

/-! ## A223630.P13798818707447500991

`A223625(A167614(n+4)+3)`
-/

namespace A223630.P13798818707447500991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223625 (A167614 (n + 4) + 3).toNat

end

end A223630.P13798818707447500991

/-! ## A223630.P15530651697800755072

`A223625(A000217(n+5)+6)`
-/

namespace A223630.P15530651697800755072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223625 (A000217 (n + 5) + 6).toNat

end

end A223630.P15530651697800755072

/-! ## A223630.P289076237416723299

`A223625(A046691(n+3)+10)`
-/

namespace A223630.P289076237416723299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223625 (A046691 (n + 3) + 10).toNat

end

end A223630.P289076237416723299

/-!
# A223631: Number of n X n 0..1 arrays with rows, antidiagonals and columns unimodal.

The programs for A223631, there is no canonical definition to state claims against.
-/

/-! ## A223631.P8486191307293011381

`A223637(∑[4*n]+1)`
-/

namespace A223631.P8486191307293011381
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223637 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A223631.P8486191307293011381

/-! ## A223631.P3542602139581388956

`record[gcd(abs(round(sqrt(2*(n+1)))²-(2*n+1)), A223637(n+1))]`
-/

namespace A223631.P3542602139581388956
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd |SequenceMachineLib.roundAway (Real.sqrt (2 * (n + 1) : ℝ)) ^ 2 - (2 * n + 1 : ℤ)| (A223637 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A223631.P3542602139581388956

/-! ## A223631.P2960825628895298334

`record[A223637(Δ[A235355(n)])]`
-/

namespace A223631.P2960825628895298334
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235355 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223637 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A223631.P2960825628895298334

/-! ## A223631.P2328615891040822611

`record[A223637(A272267(n+1))]`
-/

namespace A223631.P2328615891040822611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223637 (A272267 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A223631.P2328615891040822611

/-! ## A223631.P3587571957216622840

`record[A223637(A330613(n+1))]`
-/

namespace A223631.P3587571957216622840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223637 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A223631.P3587571957216622840

/-!
# A223632: Number of n X 3 0..1 arrays with rows, antidiagonals and columns unimodal.

The programs for A223632, there is no canonical definition to state claims against.
-/

/-! ## A223632.P1036889567306648143

`A223637(∑[n+2]+4)`
-/

namespace A223632.P1036889567306648143
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223637 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A223632.P1036889567306648143

/-! ## A223632.P15122802621506722816

`or(1, A223637(A167614(n+1)))`
-/

namespace A223632.P15122802621506722816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A223637 (A167614 (n + 1)).toNat)

end

end A223632.P15122802621506722816

/-! ## A223632.P16060792423919553017

`or(1, A223637(A167499(n)+n))`
-/

namespace A223632.P16060792423919553017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A223637 (A167499 n + (n : ℤ)).toNat)

end

end A223632.P16060792423919553017

/-! ## A223632.P9647407004895427957

`record[A223637(n+4)/A213118(n+1)]`
-/

namespace A223632.P9647407004895427957
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A223637 (n + 4) : ℚ) / (A213118 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A223632.P9647407004895427957

/-! ## A223632.P4063333528864988454

`A223637(A167614(n+1))+A185203(n)`
-/

namespace A223632.P4063333528864988454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223637 (A167614 (n + 1)).toNat + A185203 n

end

end A223632.P4063333528864988454

/-!
# A223633: Number of n X 4 0..1 arrays with rows, antidiagonals and columns unimodal.

The programs for A223633, there is no canonical definition to state claims against.
-/

/-! ## A223633.P14787189945347647151

`A223637(∑[n+3]+7)`
-/

namespace A223633.P14787189945347647151
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223637 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A223633.P14787189945347647151

/-! ## A223633.P11086584661523284142

`A223637(A055998(n+2))%A254561(n+1)`
-/

namespace A223633.P11086584661523284142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A223637 (A055998 (n + 2)).toNat) (A254561 (n + 1))

end

end A223633.P11086584661523284142

/-! ## A223633.P624947347300382703

`A006519(2*n+5)*A223637(A055998(n+2))`
-/

namespace A223633.P624947347300382703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (2 * n + 5) * A223637 (A055998 (n + 2)).toNat

end

end A223633.P624947347300382703

/-!
# A223634: Number of nX5 0..1 arrays with rows, antidiagonals and columns unimodal.

The programs for A223634, there is no canonical definition to state claims against.
-/

/-! ## A223634.P15606253304795957454

`A223637(∑[n+4]+11)`
-/

namespace A223634.P15606253304795957454
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223637 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A223634.P15606253304795957454

/-!
# A223635: Number of nX6 0..1 arrays with rows, antidiagonals and columns unimodal.

The programs for A223635, there is no canonical definition to state claims against.
-/

/-! ## A223635.P15663779737368820164

`A223637(∑[n+5]+16)`
-/

namespace A223635.P15663779737368820164
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223637 (∑ j ∈ Finset.range (n + 1), f1 j + 16)

end

end A223635.P15663779737368820164

/-! ## A223635.P16021982545911794594

`A223637(A046691(n+3)+10)+char[20]`
-/

namespace A223635.P16021982545911794594
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  20

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223637 (A046691 (n + 3) + 10).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A223635.P16021982545911794594

/-! ## A223635.P2537716947159966489

`A007318(C(2, n))*A223637(A046691(n+3)+10)`
-/

namespace A223635.P2537716947159966489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A223637 (A046691 (n + 3) + 10).toNat

end

end A223635.P2537716947159966489

/-! ## A223635.P4560765868006982176

`A223637(A046691(n+3)+10)/A007318(C(n, n²))`
-/

namespace A223635.P4560765868006982176
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A223637 (A046691 (n + 3) + 10).toNat : ℚ) / (A007318 (Nat.choose n (n ^ 2)) : ℚ)

end

end A223635.P4560765868006982176

/-! ## A223635.P15818317594177230776

`A000041(C(2, n+2))*A223637(A046691(n+3)+10)`
-/

namespace A223635.P15818317594177230776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose 2 (n + 2)) * A223637 (A046691 (n + 3) + 10).toNat

end

end A223635.P15818317594177230776

/-!
# A223636: Number of nX7 0..1 arrays with rows, antidiagonals and columns unimodal.

The programs for A223636, there is no canonical definition to state claims against.
-/

/-! ## A223636.P9802600417580788866

`A223637(A374008(n+1))`
-/

namespace A223636.P9802600417580788866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223637 (A374008 (n + 1)).toNat

end

end A223636.P9802600417580788866

/-! ## A223636.P9127932362009911270

`A223637(A167487(n+5))`
-/

namespace A223636.P9127932362009911270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223637 (A167487 (n + 5)).toNat

end

end A223636.P9127932362009911270

/-! ## A223636.P5624541850099586977

`A223637(A056119(n)+28)`
-/

namespace A223636.P5624541850099586977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223637 (A056119 n + 28).toNat

end

end A223636.P5624541850099586977

/-! ## A223636.P2345516671351244570

`A223637(eq[11, A066657(n)])`
-/

namespace A223636.P2345516671351244570
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223637 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223636.P2345516671351244570

/-! ## A223636.P9424671306227555882

`A223637(A166136(n+5)+1)`
-/

namespace A223636.P9424671306227555882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223637 (A166136 (n + 5) + 1).toNat

end

end A223636.P9424671306227555882

/-!
# A223637: T(n,k)=Number of nXk 0..1 arrays with rows, antidiagonals and columns unimodal.

The programs for A223637, there is no canonical definition to state claims against.
-/

/-! ## A223637.P3060594641398598583

`A223644(n+1)+A185203(A124816(3*n+4))`
-/

namespace A223637.P3060594641398598583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223644 (n + 1) + A185203 (A124816 (3 * n + 4)).toNat

end

end A223637.P3060594641398598583

/-! ## A223637.P6904780822064763120

`A223644(n+1)+A185203(A223012(n+1))`
-/

namespace A223637.P6904780822064763120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223644 (n + 1) + A185203 (A223012 (n + 1)).toNat

end

end A223637.P6904780822064763120

/-!
# A223638: Number of n X n 0..1 arrays with rows, columns, diagonals and antidiagonals unimodal.

The programs for A223638, there is no canonical definition to state claims against.
-/

/-! ## A223638.P9443944706029108444

`A223644(∑[4*n]+1)`
-/

namespace A223638.P9443944706029108444
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223644 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A223638.P9443944706029108444

/-! ## A223638.P9537340998458029495

`record[A223644(A272267(n+1))]`
-/

namespace A223638.P9537340998458029495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223644 (A272267 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A223638.P9537340998458029495

/-! ## A223638.P14102131167248682475

`record[A223644(A330613(n+1))]`
-/

namespace A223638.P14102131167248682475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223644 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A223638.P14102131167248682475

/-! ## A223638.P16528253982227596501

`A223644(A001844(n))+char[10]`
-/

namespace A223638.P16528253982227596501
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223644 (A001844 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A223638.P16528253982227596501

/-! ## A223638.P9660146569180495829

`record[A003982(n)*A223644(n+1)]`
-/

namespace A223638.P9660146569180495829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A223644 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A223638.P9660146569180495829

/-!
# A223639: Number of n X 3 0..1 arrays with rows, columns, diagonals and antidiagonals unimodal.

The programs for A223639, there is no canonical definition to state claims against.
-/

/-! ## A223639.P10145294275389055144

`A223644(∑[n+2]+4)`
-/

namespace A223639.P10145294275389055144
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223644 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A223639.P10145294275389055144

/-! ## A223639.P8598957794148120962

`A223644(A167614(n+1))+char[18]`
-/

namespace A223639.P8598957794148120962
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  18

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223644 (A167614 (n + 1)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A223639.P8598957794148120962

/-! ## A223639.P17940594806339483793

`A223644(A055998(n)+6)+char[18]`
-/

namespace A223639.P17940594806339483793
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  18

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223644 (A055998 n + 6).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A223639.P17940594806339483793

/-! ## A223639.P9665777194564573230

`record[A223644(n+4)/A123967(n)]`
-/

namespace A223639.P9665777194564573230
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A223644 (n + 4) : ℚ) / (A123967 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A223639.P9665777194564573230

/-! ## A223639.P1005292830509922930

`record[A223644(n+4)/A125906(n)]`
-/

namespace A223639.P1005292830509922930
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A223644 (n + 4) : ℚ) / (A125906 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A223639.P1005292830509922930

/-!
# A223640: Number of n X 4 0..1 arrays with rows, columns, diagonals and antidiagonals unimodal.

The programs for A223640, there is no canonical definition to state claims against.
-/

/-! ## A223640.P6765593010351910470

`A223644(∑[n+3]+7)`
-/

namespace A223640.P6765593010351910470
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223644 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A223640.P6765593010351910470

/-! ## A223640.P849107734141336650

`A223644(A055999(n)+10)+char[17]`
-/

namespace A223640.P849107734141336650
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223644 (A055999 n + 10).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A223640.P849107734141336650

/-! ## A223640.P5809810107848538477

`A007318(C(2, n))*A223644(A055999(n)+10)`
-/

namespace A223640.P5809810107848538477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A223644 (A055999 n + 10).toNat

end

end A223640.P5809810107848538477

/-! ## A223640.P6577505408219845949

`A014963(6*(n+1))*A223644(A055999(n)+10)`
-/

namespace A223640.P6577505408219845949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (6 * (n + 1)) * A223644 (A055999 n + 10).toNat

end

end A223640.P6577505408219845949

/-! ## A223640.P6998930944849196188

`A000041(C(2, n+2))*A223644(A055999(n)+10)`
-/

namespace A223640.P6998930944849196188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose 2 (n + 2)) * A223644 (A055999 n + 10).toNat

end

end A223640.P6998930944849196188

/-!
# A223641: Number of nX5 0..1 arrays with rows, columns, diagonals and antidiagonals unimodal.

The programs for A223641, there is no canonical definition to state claims against.
-/

/-! ## A223641.P8922068424991830905

`A223644(∑[n+4]+11)`
-/

namespace A223641.P8922068424991830905
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223644 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A223641.P8922068424991830905

/-! ## A223641.P15836634217107077133

`A223644(A167499(n+3))%A223636(n+1)`
-/

namespace A223641.P15836634217107077133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A223644 (A167499 (n + 3)).toNat) (A223636 (n + 1))

end

end A223641.P15836634217107077133

/-! ## A223641.P62533751899354722

`A223644(A374005(n+1))+A000007(2*(n+2))`
-/

namespace A223641.P62533751899354722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223644 (A374005 (n + 1)).toNat + A000007 (2 * (n + 2))

end

end A223641.P62533751899354722

/-! ## A223641.P15936111667488291509

`A329678(3*n+4)+A223644(A374005(n+1))`
-/

namespace A223641.P15936111667488291509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329678 (3 * n + 4) + A223644 (A374005 (n + 1)).toNat

end

end A223641.P15936111667488291509

/-! ## A223641.P1187759949702776682

`A223644(A167499(n+3))%A223643(A167487(n))`
-/

namespace A223641.P1187759949702776682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A223644 (A167499 (n + 3)).toNat) (A223643 (A167487 n).toNat)

end

end A223641.P1187759949702776682

/-!
# A223642: Number of nX6 0..1 arrays with rows, columns, diagonals and antidiagonals unimodal.

The programs for A223642, there is no canonical definition to state claims against.
-/

/-! ## A223642.P15517119890082829219

`A223644(∑[n+5]+16)`
-/

namespace A223642.P15517119890082829219
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223644 (∑ j ∈ Finset.range (n + 1), f1 j + 16)

end

end A223642.P15517119890082829219

/-! ## A223642.P480166053464095848

`A223644(A000096(n+4)+7)+char[15]`
-/

namespace A223642.P480166053464095848
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223644 (A000096 (n + 4) + 7).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A223642.P480166053464095848

/-! ## A223642.P1912506480841582731

`A223644(A000217(n+5)+6)+char[17]`
-/

namespace A223642.P1912506480841582731
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223644 (A000217 (n + 5) + 6).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A223642.P1912506480841582731

/-! ## A223642.P16698702915616329992

`A007318(C(2, n))*A223644(A000217(n+5)+6)`
-/

namespace A223642.P16698702915616329992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A223644 (A000217 (n + 5) + 6).toNat

end

end A223642.P16698702915616329992

/-! ## A223642.P16923062455501842648

`A007318(A001222(n+1))*A223644(A000096(n+4)+7)`
-/

namespace A223642.P16923062455501842648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A001222 (n + 1)).toNat * A223644 (A000096 (n + 4) + 7).toNat

end

end A223642.P16923062455501842648

/-!
# A223643: Number of nX7 0..1 arrays with rows, columns, diagonals and antidiagonals unimodal.

The programs for A223643, there is no canonical definition to state claims against.
-/

/-! ## A223643.P16276401838519898685

`A223644(A167487(n+5))`
-/

namespace A223643.P16276401838519898685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223644 (A167487 (n + 5)).toNat

end

end A223643.P16276401838519898685

/-! ## A223643.P18269830140856202583

`A223644(A056119(n)+28)`
-/

namespace A223643.P18269830140856202583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223644 (A056119 n + 28).toNat

end

end A223643.P18269830140856202583

/-! ## A223643.P7197381763697136114

`A223644(eq[11, A066657(n)])`
-/

namespace A223643.P7197381763697136114
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223644 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223643.P7197381763697136114

/-! ## A223643.P17385022821886489160

`A223644(A166136(n+5)+1)`
-/

namespace A223643.P17385022821886489160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223644 (A166136 (n + 5) + 1).toNat

end

end A223643.P17385022821886489160

/-! ## A223643.P8030208836417453874

`A223644(A167499(n+5)+2)`
-/

namespace A223643.P8030208836417453874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223644 (A167499 (n + 5) + 2).toNat

end

end A223643.P8030208836417453874

/-!
# A223644: T(n,k)=Number of nXk 0..1 arrays with rows, columns, diagonals and antidiagonals unimodal.

The programs for A223644, there is no canonical definition to state claims against.
-/

/-! ## A223644.P12315117579428884547

`A223637(n+1)-A185203(A223012(n+1))`
-/

namespace A223644.P12315117579428884547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223637 (n + 1) - A185203 (A223012 (n + 1)).toNat

end

end A223644.P12315117579428884547

/-!
# A223645: Number of (n+2)X1 0..1 arrays with all rows having a nonnegative second derivative, and all and columns having a positive second derivative in a quadratic least squares fit, with one and two element arrays taken as having a zero second derivative.

The programs for A223645, there is no canonical definition to state claims against.
-/

/-! ## A223645.P1525029792369346298

`2^(n+3)-A223220(n+3)`
-/

namespace A223645.P1525029792369346298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 3) : ℤ) - A223220 (n + 3)

end

end A223645.P1525029792369346298

/-! ## A223645.P17038444140713314350

`A011782(n+4)%A223220(n+3)`
-/

namespace A223645.P17038444140713314350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A011782 (n + 4)) (A223220 (n + 3))

end

end A223645.P17038444140713314350

/-! ## A223645.P1145224562442117610

`sqrt(A223646(n+1))`
-/

namespace A223645.P1145224562442117610
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A223646 (n + 1) : ℝ)

end

end A223645.P1145224562442117610

/-! ## A223645.P7465305956679821017

`floor(sqrt(A223646(Δ[n²]-n)))`
-/

namespace A223645.P7465305956679821017
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A223646 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat)

end

end A223645.P7465305956679821017

/-!
# A223646: Number of (n+2)X2 0..1 arrays with all rows having a nonnegative second derivative, and all and columns having a positive second derivative in a quadratic least squares fit, with one and two element arrays taken as having a zero second derivative.

The programs for A223646, there is no canonical definition to state claims against.
-/

/-! ## A223646.P13676408033889829676

`A223645(n+1)²`
-/

namespace A223646.P13676408033889829676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223645 (n + 1) ^ 2

end

end A223646.P13676408033889829676

/-! ## A223646.P4364537612542075678

`(A011782(n+4)-A223220(n+3))²`
-/

namespace A223646.P4364537612542075678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A011782 (n + 4) - A223220 (n + 3)) ^ 2

end

end A223646.P4364537612542075678

/-! ## A223646.P373983242978976123

`A223645(n+1)^A020639(2*(n+1))`
-/

namespace A223646.P373983242978976123
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A223645 (n + 1) : ℚ) ^ (A020639 (2 * (n + 1)) : ℤ)

end

end A223646.P373983242978976123

/-! ## A223646.P13139640393994093377

`A223645(n+1)^A000005(A006512(n+1))`
-/

namespace A223646.P13139640393994093377
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A223645 (n + 1) : ℚ) ^ (A000005 (A006512 (n + 1)).toNat : ℤ)

end

end A223646.P13139640393994093377

/-! ## A223646.P5374411022764128391

`A223645(n+1)^A000005(A007510(n+1))`
-/

namespace A223646.P5374411022764128391
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A223645 (n + 1) : ℚ) ^ (A000005 (A007510 (n + 1)).toNat : ℤ)

end

end A223646.P5374411022764128391

/-!
# A223647: Number of (n+2)X3 0..1 arrays with all rows having a nonnegative second derivative, and all and columns having a positive second derivative in a quadratic least squares fit, with one and two element arrays taken as having a zero second derivative.

The programs for A223647, there is no canonical definition to state claims against.
-/

/-! ## A223647.P12109442418367445403

`A223652(∑[n+3]+1)`
-/

namespace A223647.P12109442418367445403
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223652 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A223647.P12109442418367445403

/-!
# A223648: Number of (n+2)X4 0..1 arrays with all rows having a nonnegative second derivative, and all and columns having a positive second derivative in a quadratic least squares fit, with one and two element arrays taken as having a zero second derivative.

The programs for A223648, there is no canonical definition to state claims against.
-/

/-! ## A223648.P12041365669345501130

`A223652(∑[n+4]+3)`
-/

namespace A223648.P12041365669345501130
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223652 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A223648.P12041365669345501130

/-!
# A223649: Number of (n+2)X5 0..1 arrays with all rows having a nonnegative second derivative, and all and columns having a positive second derivative in a quadratic least squares fit, with one and two element arrays taken as having a zero second derivative.

The programs for A223649, there is no canonical definition to state claims against.
-/

/-! ## A223649.P11539057075720871113

`A223652(Δ[A264443(n)])`
-/

namespace A223649.P11539057075720871113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223652 (f1 (n + 1) - f1 n).toNat

end

end A223649.P11539057075720871113

/-! ## A223649.P7287735039705051750

`A223652(A056115(n)+11)`
-/

namespace A223649.P7287735039705051750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223652 (A056115 n + 11).toNat

end

end A223649.P7287735039705051750

/-! ## A223649.P12570728307947605937

`A223652(eq[2, A092921(n)])`
-/

namespace A223649.P12570728307947605937
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092921 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223652 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223649.P12570728307947605937

/-! ## A223649.P779718666216920995

`A223652(eq[3, A152157(n)])`
-/

namespace A223649.P779718666216920995
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223652 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223649.P779718666216920995

/-! ## A223649.P13936930412219912202

`A223652(eq[4, A193592(n)])`
-/

namespace A223649.P13936930412219912202
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223652 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223649.P13936930412219912202

/-!
# A223650: Number of (n+2)X6 0..1 arrays with all rows having a nonnegative second derivative, and all and columns having a positive second derivative in a quadratic least squares fit, with one and two element arrays taken as having a zero second derivative.

The programs for A223650, there is no canonical definition to state claims against.
-/

/-! ## A223650.P15086573026521690740

`A223652(A052905(n+3))`
-/

namespace A223650.P15086573026521690740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223652 (A052905 (n + 3)).toNat

end

end A223650.P15086573026521690740

/-! ## A223650.P10087592595208826166

`A223652(A056119(n)+16)`
-/

namespace A223650.P10087592595208826166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223652 (A056119 n + 16).toNat

end

end A223650.P10087592595208826166

/-! ## A223650.P1068827968515995915

`A223652(eq[3, A219347(n)])`
-/

namespace A223650.P1068827968515995915
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223652 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223650.P1068827968515995915

/-! ## A223650.P6202205506175744498

`A223652(eq[5, A193592(n)])`
-/

namespace A223650.P6202205506175744498
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223652 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223650.P6202205506175744498

/-!
# A223651: Number of (n+2)X7 0..1 arrays with all rows having a nonnegative second derivative, and all and columns having a positive second derivative in a quadratic least squares fit, with one and two element arrays taken as having a zero second derivative.

The programs for A223651, there is no canonical definition to state claims against.
-/

/-! ## A223651.P16034349643573790468

`A223652(A055999(n+4))`
-/

namespace A223651.P16034349643573790468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223652 (A055999 (n + 4)).toNat

end

end A223651.P16034349643573790468

/-! ## A223651.P5986489899300899277

`A223652(eq[4, A219347(n)])`
-/

namespace A223651.P5986489899300899277
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223652 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223651.P5986489899300899277

/-! ## A223651.P17659904948748272991

`A223652(eq[6, A193592(n)])`
-/

namespace A223651.P17659904948748272991
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223652 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223651.P17659904948748272991

/-!
# A223653: Number of 3Xn 0..1 arrays with all rows having a nonnegative second derivative, and all and columns having a positive second derivative in a quadratic least squares fit, with one and two element arrays taken as having a zero second derivative.

The programs for A223653, there is no canonical definition to state claims against.
-/

/-! ## A223653.P10314797814672693052

`A223652(∑[n]+1)`
-/

namespace A223653.P10314797814672693052
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223652 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A223653.P10314797814672693052

/-! ## A223653.P15531971159330814814

`or(1, A223652(A000124(n)))`
-/

namespace A223653.P15531971159330814814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A223652 (A000124 n).toNat)

end

end A223653.P15531971159330814814

/-! ## A223653.P13111822921012116351

`or(1, A223652(∑[A028310(n)]))`
-/

namespace A223653.P13111822921012116351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A223652 (∑ j ∈ Finset.range (n + 1), f1 j).toNat)

end

end A223653.P13111822921012116351

/-! ## A223653.P17249373393897409252

`A223652(A000124(n))+A025443(n)`
-/

namespace A223653.P17249373393897409252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223652 (A000124 n).toNat + A025443 n

end

end A223653.P17249373393897409252

/-! ## A223653.P15351779871543753386

`A223652(A000124(n))+A178780(n)`
-/

namespace A223653.P15351779871543753386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223652 (A000124 n).toNat + A178780 n

end

end A223653.P15351779871543753386

/-!
# A223654: Number of 4Xn 0..1 arrays with all rows having a nonnegative second derivative, and all and columns having a positive second derivative in a quadratic least squares fit, with one and two element arrays taken as having a zero second derivative.

The programs for A223654, there is no canonical definition to state claims against.
-/

/-! ## A223654.P12189373753078957075

`A223652(∑[n+1]+2)`
-/

namespace A223654.P12189373753078957075
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223652 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A223654.P12189373753078957075

/-! ## A223654.P15106967917014095413

`or(1, A223652(A133263(n+1)))`
-/

namespace A223654.P15106967917014095413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A223652 (A133263 (n + 1)).toNat)

end

end A223654.P15106967917014095413

/-! ## A223654.P12993444187906614530

`record[A167374(n)*A223652(n+3)]`
-/

namespace A223654.P12993444187906614530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167374 n * A223652 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A223654.P12993444187906614530

/-! ## A223654.P16587366857708236285

`record[A223652(n+3)/A030526(n+1)]`
-/

namespace A223654.P16587366857708236285
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A223652 (n + 3) : ℚ) / (A030526 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A223654.P16587366857708236285

/-! ## A223654.P6019089976814249436

`record[A223652(n+3)/A124574(n+1)]`
-/

namespace A223654.P6019089976814249436
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A223652 (n + 3) : ℚ) / (A124574 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A223654.P6019089976814249436

/-!
# A223655: Number of 5 X n 0..1 arrays with all rows having a nonnegative second derivative, and all and columns having a positive second derivative in a quadratic least squares fit, with one and two element arrays taken as having a zero second derivative.

The programs for A223655, there is no canonical definition to state claims against.
-/

/-! ## A223655.P2895238717952462506

`A223652(∑[n+2]+4)`
-/

namespace A223655.P2895238717952462506
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223652 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A223655.P2895238717952462506

/-! ## A223655.P906106082419124786

`or(1, A223652(A167614(n+1)))`
-/

namespace A223655.P906106082419124786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A223652 (A167614 (n + 1)).toNat)

end

end A223655.P906106082419124786

/-! ## A223655.P13713417663611950440

`A223652(A167614(n+1))+A178780(n)`
-/

namespace A223655.P13713417663611950440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223652 (A167614 (n + 1)).toNat + A178780 n

end

end A223655.P13713417663611950440

/-! ## A223655.P7099541214373545227

`A223652(A167614(n+1))+A185044(n)`
-/

namespace A223655.P7099541214373545227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223652 (A167614 (n + 1)).toNat + A185044 n

end

end A223655.P7099541214373545227

/-! ## A223655.P17055870224782534208

`A223652(A167614(n+1))+A185255(n)`
-/

namespace A223655.P17055870224782534208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223652 (A167614 (n + 1)).toNat + A185255 n

end

end A223655.P17055870224782534208

/-!
# A223656: Number of 6Xn 0..1 arrays with all rows having a nonnegative second derivative, and all and columns having a positive second derivative in a quadratic least squares fit, with one and two element arrays taken as having a zero second derivative.

The programs for A223656, there is no canonical definition to state claims against.
-/

/-! ## A223656.P16859009390019396617

`A223652(∑[n+3]+7)`
-/

namespace A223656.P16859009390019396617
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223652 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A223656.P16859009390019396617

/-!
# A223657: Number of 7Xn 0..1 arrays with all rows having a nonnegative second derivative, and all and columns having a positive second derivative in a quadratic least squares fit, with one and two element arrays taken as having a zero second derivative.

The programs for A223657, there is no canonical definition to state claims against.
-/

/-! ## A223657.P8155368340481731685

`A223652(A167499(n+3))`
-/

namespace A223657.P8155368340481731685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223652 (A167499 (n + 3)).toNat

end

end A223657.P8155368340481731685

/-! ## A223657.P3024469426334924899

`A223652(A155212(n)+13)`
-/

namespace A223657.P3024469426334924899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223652 (A155212 n + 13).toNat

end

end A223657.P3024469426334924899

/-! ## A223657.P18218511407802548812

`A223652(A056000(n)+15)`
-/

namespace A223657.P18218511407802548812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223652 (A056000 n + 15).toNat

end

end A223657.P18218511407802548812

/-! ## A223657.P5430961138470649645

`A223652(eq[7, A066657(n)])`
-/

namespace A223657.P5430961138470649645
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223652 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223657.P5430961138470649645

/-! ## A223657.P7982870925630337237

`A223652(A167614(n+3)+2)`
-/

namespace A223657.P7982870925630337237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223652 (A167614 (n + 3) + 2).toNat

end

end A223657.P7982870925630337237

/-!
# A223658: Number of n X n 0..3 arrays with row sums unimodal and column sums inverted unimodal.

The programs for A223658, there is no canonical definition to state claims against.
-/

/-! ## A223658.P11817558393448670198

`A223663(∑[4*n]+1)`
-/

namespace A223658.P11817558393448670198
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223663 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A223658.P11817558393448670198

/-!
# A223659: Number of unimodal maps [1..n]->[0..3].

The programs for A223659, the canonical program `A223659.P6840941151427606144` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A223659 has offset 0).

The definition of A223659 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A223659.P5351616603865460080

`1+n*(n+1)*(n^4+14*n^3+n²*101+n*304+660)/720`
-/

namespace A223659.P5351616603865460080
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 + (n : ℚ) * ((n + 1 : ℚ) * ((n ^ 4 + 14 * n ^ 3 + n ^ 2 * 101 + n * 304 + 660 : ℚ) / 720))

end

end A223659.P5351616603865460080

namespace A223659

/-- `1+n*(n+1)*(n^4+14*n^3+n²*101+n*304+660)/720` -/
def P5351616603865460080.Spec : Prop :=
  ∀ n, P5351616603865460080.a n = (A223659 n : ℚ)

end A223659

/-! ## A223659.P6840941151427606144

`abs(∑[∑[A223718(n)]]-n)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A223659

/-- `abs(∑[∑[A223718(n)]]-n)` -/
def P6840941151427606144.Spec : Prop :=
  ∀ n, P6840941151427606144.a n = A223659 n

theorem P6840941151427606144.correct : P6840941151427606144.Spec := by
  intro n
  simp only [A223659]

end A223659

/-! ## A223659.P10318734445180729502

`A210219(∑[n+3])`
-/

namespace A223659.P10318734445180729502
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210219 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A223659.P10318734445180729502

namespace A223659

/-- `A210219(∑[n+3])` -/
def P10318734445180729502.Spec : Prop :=
  ∀ n, P10318734445180729502.a n = A223659 n

end A223659

/-! ## A223659.P5080899892429097208

`A071922(A155212(n)+4)`
-/

namespace A223659.P5080899892429097208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071922 (A155212 n + 4).toNat

end

end A223659.P5080899892429097208

namespace A223659

/-- `A071922(A155212(n)+4)` -/
def P5080899892429097208.Spec : Prop :=
  ∀ n, P5080899892429097208.a n = A223659 n

end A223659

/-! ## A223659.P13282533508667416571

`A071922(A056000(n)+6)`
-/

namespace A223659.P13282533508667416571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071922 (A056000 n + 6).toNat

end

end A223659.P13282533508667416571

namespace A223659

/-- `A071922(A056000(n)+6)` -/
def P13282533508667416571.Spec : Prop :=
  ∀ n, P13282533508667416571.a n = A223659 n

end A223659

/-! ## A223659.P9405169047402759361

`A071922(A052905(n+1)+1)`
-/

namespace A223659.P9405169047402759361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071922 (A052905 (n + 1) + 1).toNat

end

end A223659.P9405169047402759361

namespace A223659

/-- `A071922(A052905(n+1)+1)` -/
def P9405169047402759361.Spec : Prop :=
  ∀ n, P9405169047402759361.a n = A223659 n

end A223659

/-! ## A223659.P15925376981373553107

`record[A131054(A155212(n))]`
-/

namespace A223659.P15925376981373553107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131054 (A155212 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A223659.P15925376981373553107

namespace A223659

/-- `record[A131054(A155212(n))]` -/
def P15925376981373553107.Spec : Prop :=
  ∀ n, P15925376981373553107.a n = A223659 n

end A223659

/-!
# A223660: Number of nX2 0..3 arrays with row sums unimodal and column sums inverted unimodal.

The programs for A223660, there is no canonical definition to state claims against.
-/

/-! ## A223660.P14718375185315351883

`A223663(∑[n+1]+2)`
-/

namespace A223660.P14718375185315351883
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223663 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A223660.P14718375185315351883

/-! ## A223660.P7157506616317857120

`A224113(∑[n+1]+2)`
-/

namespace A223660.P7157506616317857120
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224113 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A223660.P7157506616317857120

/-! ## A223660.P16909367917693886723

`record[A224113(A133263(val(n+1, 2)+1))]`
-/

namespace A223660.P16909367917693886723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224113 (A133263 (SequenceMachineLib.valuation (n + 1) 2 + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A223660.P16909367917693886723

/-! ## A223660.P15660939512839831739

`A334709(n+1)+A223663(A167487(n)-5)`
-/

namespace A223660.P15660939512839831739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334709 (n + 1) + A223663 (A167487 n - 5).toNat

end

end A223660.P15660939512839831739

/-! ## A223660.P4994390340469839933

`A223663(A167487(n)-5)%A223649(n+1)`
-/

namespace A223660.P4994390340469839933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A223663 (A167487 n - 5).toNat) (A223649 (n + 1))

end

end A223660.P4994390340469839933

/-!
# A223661: Number of nX3 0..3 arrays with row sums unimodal and column sums inverted unimodal.

The programs for A223661, there is no canonical definition to state claims against.
-/

/-! ## A223661.P7919097207680715190

`A223663(∑[n+2]+4)`
-/

namespace A223661.P7919097207680715190
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223663 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A223661.P7919097207680715190

/-! ## A223661.P14400540801256929414

`A223663(A167614(n+1))+A102683(n)`
-/

namespace A223661.P14400540801256929414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223663 (A167614 (n + 1)).toNat + A102683 n

end

end A223661.P14400540801256929414

/-! ## A223661.P11198142312350130065

`A055642(n)*A223663(A167614(n+1))`
-/

namespace A223661.P11198142312350130065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 n * A223663 (A167614 (n + 1)).toNat

end

end A223661.P11198142312350130065

/-! ## A223661.P9173985537855960135

`or(A000038(n), A223663(A167614(n+1)))`
-/

namespace A223661.P9173985537855960135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000038 n) (A223663 (A167614 (n + 1)).toNat)

end

end A223661.P9173985537855960135

/-! ## A223661.P12567185345020795151

`A223663(A167614(n+1))%A223688(n+1)`
-/

namespace A223661.P12567185345020795151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A223663 (A167614 (n + 1)).toNat) (A223688 (n + 1))

end

end A223661.P12567185345020795151

/-!
# A223662: Number of nX4 0..3 arrays with row sums unimodal and column sums inverted unimodal.

The programs for A223662, there is no canonical definition to state claims against.
-/

/-! ## A223662.P10554345908447464815

`A223663(∑[n+3]+7)`
-/

namespace A223662.P10554345908447464815
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223663 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A223662.P10554345908447464815

/-! ## A223662.P14198039549834548392

`A326636(n)+A223663(A055998(n+2))`
-/

namespace A223662.P14198039549834548392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326636 n + A223663 (A055998 (n + 2)).toNat

end

end A223662.P14198039549834548392

/-!
# A223663: T(n,k) = Number of n X k 0..3 arrays with row sums unimodal and column sums inverted unimodal.

The programs for A223663, there is no canonical definition to state claims against.
-/

/-! ## A223663.P2435717100146870212

`A224113(A084192(∑[n]))`
-/

namespace A223663.P2435717100146870212
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224113 (A084192 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A223663.P2435717100146870212

/-! ## A223663.P17912195948144496144

`A224113(A043317(n+1))`
-/

namespace A223663.P17912195948144496144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224113 (A043317 (n + 1)).toNat

end

end A223663.P17912195948144496144

/-! ## A223663.P6964175416843925429

`A224113(A044914(n+1))`
-/

namespace A223663.P6964175416843925429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224113 (A044914 (n + 1)).toNat

end

end A223663.P6964175416843925429

/-! ## A223663.P5039920336101299584

`A224113(A049872(n)+1)`
-/

namespace A223663.P5039920336101299584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224113 (A049872 n + 1).toNat

end

end A223663.P5039920336101299584

/-! ## A223663.P1176729180722997755

`A224113(A055648(n+1))`
-/

namespace A223663.P1176729180722997755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224113 (A055648 (n + 1)).toNat

end

end A223663.P1176729180722997755

/-!
# A223664: Number of n X n 0..1 arrays with rows, diagonals and antidiagonals unimodal.

The programs for A223664, there is no canonical definition to state claims against.
-/

/-! ## A223664.P1912119660368498420

`A223669(∑[4*n]+1)`
-/

namespace A223664.P1912119660368498420
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223669 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A223664.P1912119660368498420

/-! ## A223664.P1133835304350485176

`record[A223669(Δ[A235355(n)])]`
-/

namespace A223664.P1133835304350485176
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235355 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223669 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A223664.P1133835304350485176

/-! ## A223664.P7198462771104157853

`and(-1, A223669(A001844(n)))`
-/

namespace A223664.P7198462771104157853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A223669 (A001844 n).toNat)

end

end A223664.P7198462771104157853

/-! ## A223664.P3330817879002132420

`record[A223669(A178218(n+1))]`
-/

namespace A223664.P3330817879002132420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223669 (A178218 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A223664.P3330817879002132420

/-! ## A223664.P13809442634380483750

`record[A003982(n)*A223669(n+1)]`
-/

namespace A223664.P13809442634380483750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A223669 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A223664.P13809442634380483750

/-!
# A223665: Number of nX4 0..1 arrays with rows, diagonals and antidiagonals unimodal.

The programs for A223665, there is no canonical definition to state claims against.
-/

/-! ## A223665.P4228181307696699943

`A223669(∑[n+3]+n+4)`
-/

namespace A223665.P4228181307696699943
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223669 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 4))

end

end A223665.P4228181307696699943

/-! ## A223665.P1861559115323892372

`A223669(A141214(n+1))+char[18]`
-/

namespace A223665.P1861559115323892372
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  18

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223669 (A141214 (n + 1)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A223665.P1861559115323892372

/-! ## A223665.P15326175986605491963

`A000108(C(2, n+2))*A223669(A141214(n+1))`
-/

namespace A223665.P15326175986605491963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (Nat.choose 2 (n + 2)) * A223669 (A141214 (n + 1)).toNat

end

end A223665.P15326175986605491963

/-! ## A223665.P4077692750853451613

`A007318(C(2, n+2))*A223669(A141214(n+1))`
-/

namespace A223665.P4077692750853451613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 (n + 2)) * A223669 (A141214 (n + 1)).toNat

end

end A223665.P4077692750853451613

/-! ## A223665.P3333454517030888696

`A014963(26*(n+1))*A223669(A141214(n+1))`
-/

namespace A223665.P3333454517030888696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (26 * (n + 1)) * A223669 (A141214 (n + 1)).toNat

end

end A223665.P3333454517030888696

/-!
# A223666: Number of nX5 0..1 arrays with rows, diagonals and antidiagonals unimodal.

The programs for A223666, there is no canonical definition to state claims against.
-/

/-! ## A223666.P3901723946960110498

`A223669(∑[n+5]+6)`
-/

namespace A223666.P3901723946960110498
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223669 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A223666.P3901723946960110498

/-!
# A223667: Number of nX6 0..1 arrays with rows, diagonals and antidiagonals unimodal.

The programs for A223667, there is no canonical definition to state claims against.
-/

/-! ## A223667.P7403649495823234113

`A223669(A052905(n+3))`
-/

namespace A223667.P7403649495823234113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223669 (A052905 (n + 3)).toNat

end

end A223667.P7403649495823234113

/-! ## A223667.P16548762499421940640

`A223669(A056119(n)+16)`
-/

namespace A223667.P16548762499421940640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223669 (A056119 n + 16).toNat

end

end A223667.P16548762499421940640

/-! ## A223667.P4246308301642756269

`A223669(eq[3, A219347(n)])`
-/

namespace A223667.P4246308301642756269
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223669 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223667.P4246308301642756269

/-! ## A223667.P17404221823205252692

`A223669(eq[5, A193592(n)])`
-/

namespace A223667.P17404221823205252692
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223669 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223667.P17404221823205252692

/-! ## A223667.P8374386012640808363

`A223669(eq[8, A258709(n)])`
-/

namespace A223667.P8374386012640808363
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258709 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223669 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223667.P8374386012640808363

/-!
# A223668: Number of nX7 0..1 arrays with rows, diagonals and antidiagonals unimodal.

The programs for A223668, there is no canonical definition to state claims against.
-/

/-! ## A223668.P15163874616317093800

`A223669(A055999(n+4))`
-/

namespace A223668.P15163874616317093800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223669 (A055999 (n + 4)).toNat

end

end A223668.P15163874616317093800

/-! ## A223668.P9718332516911206332

`A223669(eq[4, A219347(n)])`
-/

namespace A223668.P9718332516911206332
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223669 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223668.P9718332516911206332

/-! ## A223668.P6439163670436011328

`A223669(eq[5, A332954(n)])`
-/

namespace A223668.P6439163670436011328
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332954 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223669 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223668.P6439163670436011328

/-! ## A223668.P17630844813534399791

`A223669(eq[6, A193592(n)])`
-/

namespace A223668.P17630844813534399791
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223669 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223668.P17630844813534399791

/-! ## A223668.P13019328223081014971

`A223669(A155212(n+3)+2)`
-/

namespace A223668.P13019328223081014971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223669 (A155212 (n + 3) + 2).toNat

end

end A223668.P13019328223081014971

/-!
# A223669: T(n,k)=Number of nXk 0..1 arrays with rows, diagonals and antidiagonals unimodal.

The programs for A223669, there is no canonical definition to state claims against.
-/

/-! ## A223669.P6089233303057867787

`A223680(A084192(∑[n]))`
-/

namespace A223669.P6089233303057867787
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223680 (A084192 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A223669.P6089233303057867787

/-! ## A223669.P5706602567353481310

`A223680(A084193(∑[n]))`
-/

namespace A223669.P5706602567353481310
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223680 (A084193 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A223669.P5706602567353481310

/-! ## A223669.P8982840542799760554

`A130446(A223680(n+1))`
-/

namespace A223669.P8982840542799760554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130446 (A223680 (n + 1)).toNat

end

end A223669.P8982840542799760554

/-! ## A223669.P14292203442807432748

`A223680(A004896(n+2))`
-/

namespace A223669.P14292203442807432748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223680 (A004896 (n + 2)).toNat

end

end A223669.P14292203442807432748

/-! ## A223669.P11127202460431415169

`A223680(A004907(n+2))`
-/

namespace A223669.P11127202460431415169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223680 (A004907 (n + 2)).toNat

end

end A223669.P11127202460431415169

/-!
# A223670: Number of 3 X n 0..1 arrays with rows, diagonals and antidiagonals unimodal.

The programs for A223670, there is no canonical definition to state claims against.
-/

/-! ## A223670.P3546909090518369191

`A223669(∑[n+2]+4)`
-/

namespace A223670.P3546909090518369191
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223669 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A223670.P3546909090518369191

/-! ## A223670.P9657743730473082329

`A223669(A167614(n+1))+char[18]`
-/

namespace A223670.P9657743730473082329
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  18

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223669 (A167614 (n + 1)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A223670.P9657743730473082329

/-! ## A223670.P4754744710466354791

`A326681(n)+A223669(A167614(n+1))`
-/

namespace A223670.P4754744710466354791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326681 n + A223669 (A167614 (n + 1)).toNat

end

end A223670.P4754744710466354791

/-! ## A223670.P9342410999999743773

`or(A025469(n), A223669(A167614(n+1)))`
-/

namespace A223670.P9342410999999743773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A025469 n) (A223669 (A167614 (n + 1)).toNat)

end

end A223670.P9342410999999743773

/-! ## A223670.P15144240501804665509

`A223669(A167614(n+1))%A017389(n+1)`
-/

namespace A223670.P15144240501804665509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A223669 (A167614 (n + 1)).toNat) (A017389 (n + 1))

end

end A223670.P15144240501804665509

/-!
# A223671: Number of 4Xn 0..1 arrays with rows, diagonals and antidiagonals unimodal.

The programs for A223671, there is no canonical definition to state claims against.
-/

/-! ## A223671.P16372092829907253351

`A223669(∑[n+3]+7)`
-/

namespace A223671.P16372092829907253351
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223669 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A223671.P16372092829907253351

/-! ## A223671.P6592126095442461573

`record[A223669(∑[A031285(n)])]`
-/

namespace A223671.P6592126095442461573
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031285 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223669 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A223671.P6592126095442461573

/-! ## A223671.P14389030451825614708

`record[A223669(A145018(n+2))]`
-/

namespace A223671.P14389030451825614708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223669 (A145018 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A223671.P14389030451825614708

/-! ## A223671.P6652215835636038607

`record[A223669(A167487(n)-3)]`
-/

namespace A223671.P6652215835636038607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223669 (A167487 n - 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A223671.P6652215835636038607

/-! ## A223671.P966453192520667062

`record[A223669(A000096(n)+5)]`
-/

namespace A223671.P966453192520667062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223669 (A000096 n + 5).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A223671.P966453192520667062

/-!
# A223672: Number of 5 X n 0..1 arrays with rows, diagonals and antidiagonals unimodal.

The programs for A223672, there is no canonical definition to state claims against.
-/

/-! ## A223672.P16465601230199649452

`A223669(∑[n+4]+11)`
-/

namespace A223672.P16465601230199649452
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223669 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A223672.P16465601230199649452

/-! ## A223672.P12046352929037852990

`A223669(A167499(n+3))+char[18]`
-/

namespace A223672.P12046352929037852990
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  18

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223669 (A167499 (n + 3)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A223672.P12046352929037852990

/-! ## A223672.P4344190130536326835

`A007318(C(2, n))*A223669(A167499(n+3))`
-/

namespace A223672.P4344190130536326835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A223669 (A167499 (n + 3)).toNat

end

end A223672.P4344190130536326835

/-! ## A223672.P5240692625022591562

`A223669(A167499(n+3))/A007318(C(n, 2))`
-/

namespace A223672.P5240692625022591562
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A223669 (A167499 (n + 3)).toNat : ℚ) / (A007318 (Nat.choose n 2) : ℚ)

end

end A223672.P5240692625022591562

/-! ## A223672.P13851141379200558592

`A223669(A167499(n+3))%A000032(n+32)`
-/

namespace A223672.P13851141379200558592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A223669 (A167499 (n + 3)).toNat) (A000032 (n + 32))

end

end A223672.P13851141379200558592

/-!
# A223673: Number of 6Xn 0..1 arrays with rows, diagonals and antidiagonals unimodal.

The programs for A223673, there is no canonical definition to state claims against.
-/

/-! ## A223673.P6089785876670233184

`A223669(∑[n+5]+16)`
-/

namespace A223673.P6089785876670233184
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223669 (∑ j ∈ Finset.range (n + 1), f1 j + 16)

end

end A223673.P6089785876670233184

/-!
# A223674: Number of 7Xn 0..1 arrays with rows, diagonals and antidiagonals unimodal.

The programs for A223674, there is no canonical definition to state claims against.
-/

/-! ## A223674.P13562458577368317995

`A223669(A167487(n+5))`
-/

namespace A223674.P13562458577368317995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223669 (A167487 (n + 5)).toNat

end

end A223674.P13562458577368317995

/-! ## A223674.P13114172534157706487

`A223669(A056119(n)+28)`
-/

namespace A223674.P13114172534157706487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223669 (A056119 n + 28).toNat

end

end A223674.P13114172534157706487

/-! ## A223674.P15366346822039151081

`A223669(eq[11, A066657(n)])`
-/

namespace A223674.P15366346822039151081
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223669 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223674.P15366346822039151081

/-! ## A223674.P589001377236158094

`A223669(A167499(n+5)+2)`
-/

namespace A223674.P589001377236158094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223669 (A167499 (n + 5) + 2).toNat

end

end A223674.P589001377236158094

/-! ## A223674.P11422582582711154684

`A223669(A000124(n+6)+6)`
-/

namespace A223674.P11422582582711154684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223669 (A000124 (n + 6) + 6).toNat

end

end A223674.P11422582582711154684

/-!
# A223675: Number of n X n 0..1 arrays with rows and antidiagonals unimodal.

The programs for A223675, there is no canonical definition to state claims against.
-/

/-! ## A223675.P9497475301233608603

`A223680((n+1)²+n²)`
-/

namespace A223675.P9497475301233608603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223680 ((n + 1) ^ 2 + n ^ 2)

end

end A223675.P9497475301233608603

/-! ## A223675.P17547930718383056162

`record[A003982(n)*A223680(n+1)]`
-/

namespace A223675.P17547930718383056162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A223680 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A223675.P17547930718383056162

/-! ## A223675.P4705981403536677247

`record[gcd(A114327(n), A223680(n+1))]`
-/

namespace A223675.P4705981403536677247
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A114327 n) (A223680 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A223675.P4705981403536677247

/-! ## A223675.P8209014640999242000

`A223680(A001844(n))*A280865(n)`
-/

namespace A223675.P8209014640999242000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223680 (A001844 n).toNat * A280865 n

end

end A223675.P8209014640999242000

/-! ## A223675.P1514958698756021217

`gcd(A000038(n), A223680(A001844(n)))`
-/

namespace A223675.P1514958698756021217
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A223680 (A001844 n).toNat)

end

end A223675.P1514958698756021217

/-!
# A223676: Number of nX4 0..1 arrays with rows and antidiagonals unimodal.

The programs for A223676, there is no canonical definition to state claims against.
-/

/-! ## A223676.P5765765634762241700

`A223680(∑[n+2]+2*n+5)`
-/

namespace A223676.P5765765634762241700
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223680 (∑ j ∈ Finset.range (n + 1), f1 j + (2 * n + 5))

end

end A223676.P5765765634762241700

/-! ## A223676.P14826705356920834351

`A223680(∑[n+4]+3)%A362747(n+4)`
-/

namespace A223676.P14826705356920834351
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A223680 (∑ j ∈ Finset.range (n + 1), f1 j + 3)) (A362747 (n + 4))

end

end A223676.P14826705356920834351

/-! ## A223676.P8117789640634077228

`A223680(A141214(n+1))%A016226(n+1)`
-/

namespace A223676.P8117789640634077228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A223680 (A141214 (n + 1)).toNat) (A016226 (n + 1))

end

end A223676.P8117789640634077228

/-!
# A223677: Number of nX5 0..1 arrays with rows and antidiagonals unimodal.

The programs for A223677, there is no canonical definition to state claims against.
-/

/-! ## A223677.P18393052558617692355

`A223680(Δ[A264443(n)])`
-/

namespace A223677.P18393052558617692355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223680 (f1 (n + 1) - f1 n).toNat

end

end A223677.P18393052558617692355

/-! ## A223677.P14039185062308063252

`A223680(A046691(n+3))`
-/

namespace A223677.P14039185062308063252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223680 (A046691 (n + 3)).toNat

end

end A223677.P14039185062308063252

/-! ## A223677.P8178934225353863450

`A223680(Δ[A023545(n+1)])`
-/

namespace A223677.P8178934225353863450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223680 (f1 (n + 1) - f1 n).toNat

end

end A223677.P8178934225353863450

/-! ## A223677.P5855635644006768177

`A223680(∑[A020710(n)]+6)`
-/

namespace A223677.P5855635644006768177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020710 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223680 (∑ j ∈ Finset.range (n + 1), f1 j + 6).toNat

end

end A223677.P5855635644006768177

/-! ## A223677.P3066353693499876390

`A223680(A000124(n+5)-5)`
-/

namespace A223677.P3066353693499876390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223680 (A000124 (n + 5) - 5).toNat

end

end A223677.P3066353693499876390

/-!
# A223678: Number of nX6 0..1 arrays with rows and antidiagonals unimodal.

The programs for A223678, there is no canonical definition to state claims against.
-/

/-! ## A223678.P4295226376816437796

`A223680(A052905(n+3))`
-/

namespace A223678.P4295226376816437796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223680 (A052905 (n + 3)).toNat

end

end A223678.P4295226376816437796

/-! ## A223678.P827604647665831373

`A223680(A056119(n)+16)`
-/

namespace A223678.P827604647665831373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223680 (A056119 n + 16).toNat

end

end A223678.P827604647665831373

/-! ## A223678.P4962209181398300277

`A223680(eq[3, A219347(n)])`
-/

namespace A223678.P4962209181398300277
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223680 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223678.P4962209181398300277

/-! ## A223678.P6711307087944511899

`A223680(eq[5, A193592(n)])`
-/

namespace A223678.P6711307087944511899
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223680 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223678.P6711307087944511899

/-! ## A223678.P1152847788367449151

`A223680(eq[8, A243070(n+1)])`
-/

namespace A223678.P1152847788367449151
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243070 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223680 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223678.P1152847788367449151

/-!
# A223679: Number of nX7 0..1 arrays with rows and antidiagonals unimodal.

The programs for A223679, there is no canonical definition to state claims against.
-/

/-! ## A223679.P1361718324364970374

`A223680(eq[4, A219347(n)])`
-/

namespace A223679.P1361718324364970374
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223680 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223679.P1361718324364970374

/-! ## A223679.P4687971384120798916

`A223680(eq[6, A193592(n)])`
-/

namespace A223679.P4687971384120798916
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223680 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223679.P4687971384120798916

/-! ## A223679.P11512417962364713990

`A223680(A000124(n+7)-7)`
-/

namespace A223679.P11512417962364713990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223680 (A000124 (n + 7) - 7).toNat

end

end A223679.P11512417962364713990

/-! ## A223679.P13365226379999134414

`A223680(eq[10, A185782(n+1)])`
-/

namespace A223679.P13365226379999134414
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223680 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223679.P13365226379999134414

/-! ## A223679.P6048814761408389126

`A223680(eq[7, A200370(n+1)])`
-/

namespace A223679.P6048814761408389126
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223680 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223679.P6048814761408389126

/-!
# A223681: Number of 3 X n 0..1 arrays with rows and antidiagonals unimodal.

The programs for A223681, there is no canonical definition to state claims against.
-/

/-! ## A223681.P13712874479619402503

`A223680(∑[n+2]+4)`
-/

namespace A223681.P13712874479619402503
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223680 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A223681.P13712874479619402503

/-! ## A223681.P13967747056417518632

`lcm((-1)^n, A223680(A167614(n+1)))`
-/

namespace A223681.P13967747056417518632
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A223680 (A167614 (n + 1)).toNat)

end

end A223681.P13967747056417518632

/-! ## A223681.P7076674977026820309

`A223680(A167614(n+1))+A025466(n)`
-/

namespace A223681.P7076674977026820309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223680 (A167614 (n + 1)).toNat + A025466 n

end

end A223681.P7076674977026820309

/-! ## A223681.P2238523287156240901

`A223680(A167614(n+1))+A185284(n)`
-/

namespace A223681.P2238523287156240901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223680 (A167614 (n + 1)).toNat + A185284 n

end

end A223681.P2238523287156240901

/-! ## A223681.P5469740463451906552

`A223680(A167614(n+1))%A017360(n)`
-/

namespace A223681.P5469740463451906552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A223680 (A167614 (n + 1)).toNat) (A017360 n)

end

end A223681.P5469740463451906552

/-!
# A223682: Number of 4 X n 0..1 arrays with rows and antidiagonals unimodal.

The programs for A223682, there is no canonical definition to state claims against.
-/

/-! ## A223682.P3504081092730578219

`A223680(A141214(n)+7)`
-/

namespace A223682.P3504081092730578219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223680 (A141214 n + 7).toNat

end

end A223682.P3504081092730578219

/-! ## A223682.P549198091164367760

`A223680(A052905(n)+9)`
-/

namespace A223682.P549198091164367760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223680 (A052905 n + 9).toNat

end

end A223682.P549198091164367760

/-! ## A223682.P13128372367297676420

`record[A223680(A167499(n)-1)]`
-/

namespace A223682.P13128372367297676420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223680 (A167499 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A223682.P13128372367297676420

/-! ## A223682.P3532120135845423727

`record[A223680(A008805(n)+4)]`
-/

namespace A223682.P3532120135845423727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223680 (A008805 n + 4).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A223682.P3532120135845423727

/-! ## A223682.P15696287258003484255

`A223680(A167614(n+2)+1)`
-/

namespace A223682.P15696287258003484255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223680 (A167614 (n + 2) + 1).toNat

end

end A223682.P15696287258003484255

/-!
# A223683: Number of 5Xn 0..1 arrays with rows and antidiagonals unimodal.

The programs for A223683, there is no canonical definition to state claims against.
-/

/-! ## A223683.P7340810646498470671

`A223680(A167499(n+3))`
-/

namespace A223683.P7340810646498470671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223680 (A167499 (n + 3)).toNat

end

end A223683.P7340810646498470671

/-! ## A223683.P10735465471174943434

`A223680(A167614(n+3)+2)`
-/

namespace A223683.P10735465471174943434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223680 (A167614 (n + 3) + 2).toNat

end

end A223683.P10735465471174943434

/-! ## A223683.P10208621551529536648

`A223680(A000124(n+4)+4)`
-/

namespace A223683.P10208621551529536648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223680 (A000124 (n + 4) + 4).toNat

end

end A223683.P10208621551529536648

/-! ## A223683.P10504748062074140427

`A223680(A000217(n+4)+5)`
-/

namespace A223683.P10504748062074140427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223680 (A000217 (n + 4) + 5).toNat

end

end A223683.P10504748062074140427

/-!
# A223684: Number of 6Xn 0..1 arrays with rows and antidiagonals unimodal.

The programs for A223684, there is no canonical definition to state claims against.
-/

/-! ## A223684.P2594133735402705814

`A223680(A166136(n+4))`
-/

namespace A223684.P2594133735402705814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223680 (A166136 (n + 4)).toNat

end

end A223684.P2594133735402705814

/-! ## A223684.P10547017280398403420

`A223680(A167499(n+4)+1)`
-/

namespace A223684.P10547017280398403420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223680 (A167499 (n + 4) + 1).toNat

end

end A223684.P10547017280398403420

/-! ## A223684.P10300766873327691608

`A223680(A167614(n+4)+3)`
-/

namespace A223684.P10300766873327691608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223680 (A167614 (n + 4) + 3).toNat

end

end A223684.P10300766873327691608

/-! ## A223684.P2222832355205480904

`A223680(A000124(n+5)+5)`
-/

namespace A223684.P2222832355205480904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223680 (A000124 (n + 5) + 5).toNat

end

end A223684.P2222832355205480904

/-! ## A223684.P8513701667397141053

`A223680(A000217(n+5)+6)`
-/

namespace A223684.P8513701667397141053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223680 (A000217 (n + 5) + 6).toNat

end

end A223684.P8513701667397141053

/-!
# A223685: Number of 7Xn 0..1 arrays with rows and antidiagonals unimodal.

The programs for A223685, there is no canonical definition to state claims against.
-/

/-! ## A223685.P2843182260517477167

`A223680(A167487(n+5))`
-/

namespace A223685.P2843182260517477167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223680 (A167487 (n + 5)).toNat

end

end A223685.P2843182260517477167

/-! ## A223685.P16023552498965078781

`A223680(A056119(n)+28)`
-/

namespace A223685.P16023552498965078781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223680 (A056119 n + 28).toNat

end

end A223685.P16023552498965078781

/-! ## A223685.P7110088402144996543

`A223680(eq[11, A066657(n)])`
-/

namespace A223685.P7110088402144996543
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223680 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223685.P7110088402144996543

/-! ## A223685.P5958973805169380067

`A223680(A167614(n+5)+4)`
-/

namespace A223685.P5958973805169380067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223680 (A167614 (n + 5) + 4).toNat

end

end A223685.P5958973805169380067

/-! ## A223685.P5349410950397213083

`A223680(eq[8, A131818(n+1)])`
-/

namespace A223685.P5349410950397213083
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223680 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223685.P5349410950397213083

/-!
# A223686: Petersen graph (8,2) coloring a rectangular array: number of n X n 0..15 arrays where 0..15 label nodes of a graph with edges 0,1 0,8 8,14 8,10 1,2 1,9 9,15 9,11 2,3 2,10 10,12 3,4 3,11 11,13 4,5 4,12 12,14 5,6 5,13 13,15 6,7 6,14 7,0 7,15 and every array movement to a horizontal or antidiagonal neighbor moves along an edge of this graph.

The programs for A223686, there is no canonical definition to state claims against.
-/

/-! ## A223686.P3833337352466803430

`A223692((n+1)²+n²)`
-/

namespace A223686.P3833337352466803430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223692 ((n + 1) ^ 2 + n ^ 2)

end

end A223686.P3833337352466803430

/-! ## A223686.P15759803776254469059

`A054977(n+1)*A223692(A001844(n))`
-/

namespace A223686.P15759803776254469059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 (n + 1) * A223692 (A001844 n).toNat

end

end A223686.P15759803776254469059

/-! ## A223686.P11919591803880458542

`A007318(A049581(n))*A223692(A001844(n))`
-/

namespace A223686.P11919591803880458542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A049581 n).toNat * A223692 (A001844 n).toNat

end

end A223686.P11919591803880458542

/-! ## A223686.P9121705176045392170

`A007318(A195644(n+1))*A223692(A001844(n))`
-/

namespace A223686.P9121705176045392170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A195644 (n + 1)).toNat * A223692 (A001844 n).toNat

end

end A223686.P9121705176045392170

/-!
# A223687: Petersen graph (8,2) coloring a rectangular array: number of n X 3 0..15 arrays where 0..15 label nodes of a graph with edges 0,1 0,8 8,14 8,10 1,2 1,9 9,15 9,11 2,3 2,10 10,12 3,4 3,11 11,13 4,5 4,12 12,14 5,6 5,13 13,15 6,7 6,14 7,0 7,15 and every array movement to a horizontal or antidiagonal neighbor moves along an edge of this graph.

The programs for A223687, there is no canonical definition to state claims against.
-/

/-! ## A223687.P4151998083230938995

`A223692(∑[n+3]+1)`
-/

namespace A223687.P4151998083230938995
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223692 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A223687.P4151998083230938995

/-! ## A223687.P17084065083200868471

`record[A223692(A198464(n+1))]`
-/

namespace A223687.P17084065083200868471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223692 (A198464 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A223687.P17084065083200868471

/-! ## A223687.P4912718152080341664

`lcm(2, A223692(A034856(n+2)))`
-/

namespace A223687.P4912718152080341664
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A223692 (A034856 (n + 2)).toNat)

end

end A223687.P4912718152080341664

/-! ## A223687.P15759935145217009602

`A223692(A034856(n+2))+A217155(n+1)`
-/

namespace A223687.P15759935145217009602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223692 (A034856 (n + 2)).toNat + A217155 (n + 1)

end

end A223687.P15759935145217009602

/-! ## A223687.P11261810901734026550

`A223692(A052905(n)+3)%A223690(n+1)`
-/

namespace A223687.P11261810901734026550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A223692 (A052905 n + 3).toNat) (A223690 (n + 1))

end

end A223687.P11261810901734026550

/-!
# A223688: Petersen graph (8,2) coloring a rectangular array: number of n X 4 0..15 arrays where 0..15 label nodes of a graph with edges 0,1 0,8 8,14 8,10 1,2 1,9 9,15 9,11 2,3 2,10 10,12 3,4 3,11 11,13 4,5 4,12 12,14 5,6 5,13 13,15 6,7 6,14 7,0 7,15 and every array movement to a horizontal or antidiagonal neighbor moves along an edge of this graph.

The programs for A223688, there is no canonical definition to state claims against.
-/

/-! ## A223688.P6830473722182016642

`A223692(A141214(n+1))`
-/

namespace A223688.P6830473722182016642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223692 (A141214 (n + 1)).toNat

end

end A223688.P6830473722182016642

/-! ## A223688.P6428481557956679869

`A223692(A027379(n+2))`
-/

namespace A223688.P6428481557956679869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223692 (A027379 (n + 2)).toNat

end

end A223688.P6428481557956679869

/-! ## A223688.P1005690399208122210

`A223692(A155212(n)+5)`
-/

namespace A223688.P1005690399208122210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223692 (A155212 n + 5).toNat

end

end A223688.P1005690399208122210

/-! ## A223688.P2850094304133015335

`A223692(A056000(n)+7)`
-/

namespace A223688.P2850094304133015335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223692 (A056000 n + 7).toNat

end

end A223688.P2850094304133015335

/-! ## A223688.P7731680496288897990

`A223692(Δ[A006416(n+2)])`
-/

namespace A223688.P7731680496288897990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006416 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223692 (f1 (n + 1) - f1 n).toNat

end

end A223688.P7731680496288897990

/-!
# A223689: Petersen graph (8,2) coloring a rectangular array: number of nX5 0..15 arrays where 0..15 label nodes of a graph with edges 0,1 0,8 8,14 8,10 1,2 1,9 9,15 9,11 2,3 2,10 10,12 3,4 3,11 11,13 4,5 4,12 12,14 5,6 5,13 13,15 6,7 6,14 7,0 7,15 and every array movement to a horizontal or antidiagonal neighbor moves along an edge of this graph.

The programs for A223689, there is no canonical definition to state claims against.
-/

/-! ## A223689.P17834707171312482048

`A223692(Δ[A264443(n)])`
-/

namespace A223689.P17834707171312482048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223692 (f1 (n + 1) - f1 n).toNat

end

end A223689.P17834707171312482048

/-! ## A223689.P4926192069880081186

`A223692(A046691(n+3))`
-/

namespace A223689.P4926192069880081186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223692 (A046691 (n + 3)).toNat

end

end A223689.P4926192069880081186

/-! ## A223689.P10283581869463365174

`A223692(eq[4, A193592(n)])`
-/

namespace A223689.P10283581869463365174
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223692 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223689.P10283581869463365174

/-! ## A223689.P13133536910037427714

`A223692(A167614(n+4)-7)`
-/

namespace A223689.P13133536910037427714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223692 (A167614 (n + 4) - 7).toNat

end

end A223689.P13133536910037427714

/-! ## A223689.P15825047909329099757

`A223692(eq[6, A185782(n+1)])`
-/

namespace A223689.P15825047909329099757
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223692 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223689.P15825047909329099757

/-!
# A223690: Petersen graph (8,2) coloring a rectangular array: number of nX6 0..15 arrays where 0..15 label nodes of a graph with edges 0,1 0,8 8,14 8,10 1,2 1,9 9,15 9,11 2,3 2,10 10,12 3,4 3,11 11,13 4,5 4,12 12,14 5,6 5,13 13,15 6,7 6,14 7,0 7,15 and every array movement to a horizontal or antidiagonal neighbor moves along an edge of this graph.

The programs for A223690, there is no canonical definition to state claims against.
-/

/-! ## A223690.P13394277194058661879

`A223692(A052905(n+3))`
-/

namespace A223690.P13394277194058661879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223692 (A052905 (n + 3)).toNat

end

end A223690.P13394277194058661879

/-! ## A223690.P941606585109109566

`A223692(Δ[A264443(n+1)]-1)`
-/

namespace A223690.P941606585109109566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223692 (f1 (n + 1) - f1 n - 1).toNat

end

end A223690.P941606585109109566

/-!
# A223691: Petersen graph (8,2) coloring a rectangular array: number of nX7 0..15 arrays where 0..15 label nodes of a graph with edges 0,1 0,8 8,14 8,10 1,2 1,9 9,15 9,11 2,3 2,10 10,12 3,4 3,11 11,13 4,5 4,12 12,14 5,6 5,13 13,15 6,7 6,14 7,0 7,15 and every array movement to a horizontal or antidiagonal neighbor moves along an edge of this graph.

The programs for A223691, there is no canonical definition to state claims against.
-/

/-! ## A223691.P17099281848542823296

`A223692(eq[10, A185782(n+1)])`
-/

namespace A223691.P17099281848542823296
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223692 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223691.P17099281848542823296

/-!
# A223692: T(n,k)=Petersen graph (8,2) coloring a rectangular array: number of nXk 0..15 arrays where 0..15 label nodes of a graph with edges 0,1 0,8 8,14 8,10 1,2 1,9 9,15 9,11 2,3 2,10 10,12 3,4 3,11 11,13 4,5 4,12 12,14 5,6 5,13 13,15 6,7 6,14 7,0 7,15 and every array movement to a horizontal or antidiagonal neighbor moves along an edge of this graph.

The programs for A223692, there is no canonical definition to state claims against.
-/

/-! ## A223692.P15480496862507290171

`A223599(A082284(n)-∑[A119093(2*n+5)]%3)`
-/

namespace A223692.P15480496862507290171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119093 (2 * n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223599 (A082284 n - Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) 3).toNat

end

end A223692.P15480496862507290171

/-! ## A223692.P18366548376750336433

`A223599(gcd(A000984(3*n+1), A023095(n+4)))`
-/

namespace A223692.P18366548376750336433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223599 (Int.gcd (A000984 (3 * n + 1)) (A023095 (n + 4)))

end

end A223692.P18366548376750336433

/-!
# A223693: Petersen graph (8,2) coloring a rectangular array: number of 2 X n 0..15 arrays where 0..15 label nodes of a graph with edges 0,1 0,8 8,14 8,10 1,2 1,9 9,15 9,11 2,3 2,10 10,12 3,4 3,11 11,13 4,5 4,12 12,14 5,6 5,13 13,15 6,7 6,14 7,0 7,15 and every array movement to a horizontal or antidiagonal neighbor moves along an edge of this graph.

The programs for A223693, there is no canonical definition to state claims against.
-/

/-! ## A223693.P16730404063991257157

`A223692(∑[n+1]+2)`
-/

namespace A223693.P16730404063991257157
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223692 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A223693.P16730404063991257157

/-! ## A223693.P6937302086302956327

`record[A223692(A347629(n+1)+1)]`
-/

namespace A223693.P6937302086302956327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223692 (A347629 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A223693.P6937302086302956327

/-! ## A223693.P7939777588684090313

`record[gcd(A223692(n+3), A302728(n+1))]`
-/

namespace A223693.P7939777588684090313
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A223692 (n + 3)) (A302728 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A223693.P7939777588684090313

/-! ## A223693.P9327119408645281873

`A223692(A000096(n)+3)%A223688(n+1)`
-/

namespace A223693.P9327119408645281873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A223692 (A000096 n + 3).toNat) (A223688 (n + 1))

end

end A223693.P9327119408645281873

/-! ## A223693.P17494954624478763935

`record[A223692(A133263(val(n+1, 2)+1))]`
-/

namespace A223693.P17494954624478763935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223692 (A133263 (SequenceMachineLib.valuation (n + 1) 2 + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A223693.P17494954624478763935

/-!
# A223694: Petersen graph (8,2) coloring a rectangular array: number of 3Xn 0..15 arrays where 0..15 label nodes of a graph with edges 0,1 0,8 8,14 8,10 1,2 1,9 9,15 9,11 2,3 2,10 10,12 3,4 3,11 11,13 4,5 4,12 12,14 5,6 5,13 13,15 6,7 6,14 7,0 7,15 and every array movement to a horizontal or antidiagonal neighbor moves along an edge of this graph.

The programs for A223694, there is no canonical definition to state claims against.
-/

/-! ## A223694.P13559045703709066645

`A223692(∑[n+2]+4)`
-/

namespace A223694.P13559045703709066645
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223692 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A223694.P13559045703709066645

/-! ## A223694.P7300241054932165563

`lcm(2, A223692(A167614(n+1)))`
-/

namespace A223694.P7300241054932165563
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A223692 (A167614 (n + 1)).toNat)

end

end A223694.P7300241054932165563

/-! ## A223694.P17062680294647904085

`A223692(A167614(n+1))+A178798(n)`
-/

namespace A223694.P17062680294647904085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223692 (A167614 (n + 1)).toNat + A178798 n

end

end A223694.P17062680294647904085

/-! ## A223694.P14423257172171738230

`A062513(n+1)*A223692(A167614(n+1))`
-/

namespace A223694.P14423257172171738230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062513 (n + 1) * A223692 (A167614 (n + 1)).toNat

end

end A223694.P14423257172171738230

/-! ## A223694.P832763008481433630

`A223692(A167614(n+1))%A223691(n+1)`
-/

namespace A223694.P832763008481433630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A223692 (A167614 (n + 1)).toNat) (A223691 (n + 1))

end

end A223694.P832763008481433630

/-!
# A223695: Petersen graph (8,2) coloring a rectangular array: number of 4Xn 0..15 arrays where 0..15 label nodes of a graph with edges 0,1 0,8 8,14 8,10 1,2 1,9 9,15 9,11 2,3 2,10 10,12 3,4 3,11 11,13 4,5 4,12 12,14 5,6 5,13 13,15 6,7 6,14 7,0 7,15 and every array movement to a horizontal or antidiagonal neighbor moves along an edge of this graph.

The programs for A223695, there is no canonical definition to state claims against.
-/

/-! ## A223695.P14191549032604045508

`A223692(A141214(n)+7)`
-/

namespace A223695.P14191549032604045508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223692 (A141214 n + 7).toNat

end

end A223695.P14191549032604045508

/-! ## A223695.P17826387890996795018

`A223692(A052905(n)+9)`
-/

namespace A223695.P17826387890996795018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223692 (A052905 n + 9).toNat

end

end A223695.P17826387890996795018

/-! ## A223695.P4422288239778572972

`A223692(A055999(n)+10)`
-/

namespace A223695.P4422288239778572972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223692 (A055999 n + 10).toNat

end

end A223695.P4422288239778572972

/-! ## A223695.P10680104773955188963

`A223692(A167614(n+2)+1)`
-/

namespace A223695.P10680104773955188963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223692 (A167614 (n + 2) + 1).toNat

end

end A223695.P10680104773955188963

/-! ## A223695.P4224121146227668876

`A223692(Δ[A264443(n)-n²])`
-/

namespace A223695.P4224121146227668876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223692 (f1 (n + 1) - f1 n).toNat

end

end A223695.P4224121146227668876

/-!
# A223696: Petersen graph (8,2) coloring a rectangular array: number of 5Xn 0..15 arrays where 0..15 label nodes of a graph with edges 0,1 0,8 8,14 8,10 1,2 1,9 9,15 9,11 2,3 2,10 10,12 3,4 3,11 11,13 4,5 4,12 12,14 5,6 5,13 13,15 6,7 6,14 7,0 7,15 and every array movement to a horizontal or antidiagonal neighbor moves along an edge of this graph.

The programs for A223696, there is no canonical definition to state claims against.
-/

/-! ## A223696.P14633289334668483464

`A223692(A167499(n+3))`
-/

namespace A223696.P14633289334668483464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223692 (A167499 (n + 3)).toNat

end

end A223696.P14633289334668483464

/-! ## A223696.P10928007220102802844

`A223692(A056000(n)+15)`
-/

namespace A223696.P10928007220102802844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223692 (A056000 n + 15).toNat

end

end A223696.P10928007220102802844

/-! ## A223696.P14333011670931590798

`A223692(A000217(n+4)+5)`
-/

namespace A223696.P14333011670931590798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223692 (A000217 (n + 4) + 5).toNat

end

end A223696.P14333011670931590798

/-! ## A223696.P7831497229677063182

`A223692(eq[6, A131818(n+1)])`
-/

namespace A223696.P7831497229677063182
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223692 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223696.P7831497229677063182

/-! ## A223696.P13147377343002853840

`A223692(A167614(n+4)-(n+3))`
-/

namespace A223696.P13147377343002853840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223692 (A167614 (n + 4) - (n + 3 : ℤ)).toNat

end

end A223696.P13147377343002853840

/-!
# A223697: Petersen graph (8,2) coloring a rectangular array: number of 6Xn 0..15 arrays where 0..15 label nodes of a graph with edges 0,1 0,8 8,14 8,10 1,2 1,9 9,15 9,11 2,3 2,10 10,12 3,4 3,11 11,13 4,5 4,12 12,14 5,6 5,13 13,15 6,7 6,14 7,0 7,15 and every array movement to a horizontal or antidiagonal neighbor moves along an edge of this graph.

The programs for A223697, there is no canonical definition to state claims against.
-/

/-! ## A223697.P5039544794904959599

`A223692(A056115(n)+21)`
-/

namespace A223697.P5039544794904959599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223692 (A056115 n + 21).toNat

end

end A223697.P5039544794904959599

/-! ## A223697.P5192767697961504677

`A223692(A167614(n+4)+3)`
-/

namespace A223697.P5192767697961504677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223692 (A167614 (n + 4) + 3).toNat

end

end A223697.P5192767697961504677

/-! ## A223697.P4240573967657235122

`A223692(A027379(n+3)+9)`
-/

namespace A223697.P4240573967657235122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223692 (A027379 (n + 3) + 9).toNat

end

end A223697.P4240573967657235122

/-! ## A223697.P5877950954226411712

`A223692(A246172(n+1)+20)`
-/

namespace A223697.P5877950954226411712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223692 (A246172 (n + 1) + 20).toNat

end

end A223697.P5877950954226411712

/-! ## A223697.P3037998062934420127

`A223692(eq[7, A131818(n+1)])`
-/

namespace A223697.P3037998062934420127
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223692 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223697.P3037998062934420127

/-!
# A223698: Petersen graph (8,2) coloring a rectangular array: number of 7Xn 0..15 arrays where 0..15 label nodes of a graph with edges 0,1 0,8 8,14 8,10 1,2 1,9 9,15 9,11 2,3 2,10 10,12 3,4 3,11 11,13 4,5 4,12 12,14 5,6 5,13 13,15 6,7 6,14 7,0 7,15 and every array movement to a horizontal or antidiagonal neighbor moves along an edge of this graph.

The programs for A223698, there is no canonical definition to state claims against.
-/

/-! ## A223698.P7005109433666469389

`A223692(A000124(n+7)-(n+1))`
-/

namespace A223698.P7005109433666469389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223692 (A000124 (n + 7) - (n + 1 : ℤ)).toNat

end

end A223698.P7005109433666469389

/-!
# A223699: Least number whose Collatz (3x+1) iteration has its maximum value at position n (counting from 1).

The programs for A223699, there is no canonical definition to state claims against.
-/

/-! ## A223699.P17347685942692836105

`A087263(A223700(n+1))`
-/

namespace A223699.P17347685942692836105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087263 (A223700 (n + 1)).toNat

end

end A223699.P17347685942692836105

