import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
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
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C008
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
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
# A300600: Number of nX3 0..1 arrays with every element equal to 0, 2, 3 or 5 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A300600, there is no canonical definition to state claims against.
-/

/-! ## A300600.P9190962911805476347

`A301325(n+1)-A142150(n)`
-/

namespace A300600.P9190962911805476347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301325 (n + 1) - A142150 n

end

end A300600.P9190962911805476347

/-! ## A300600.P5552773248155214809

`A301325(n+1)+A026741(n)-n`
-/

namespace A300600.P5552773248155214809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301325 (n + 1) + (A026741 n - (n : ℤ))

end

end A300600.P5552773248155214809

/-! ## A300600.P1847612883701210522

`A301325(n+1)-A053615(A002620(n))`
-/

namespace A300600.P1847612883701210522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301325 (n + 1) - A053615 (A002620 n).toNat

end

end A300600.P1847612883701210522

/-! ## A300600.P18402231848391613607

`A301325(n+1)-A101164(A101881(n))`
-/

namespace A300600.P18402231848391613607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301325 (n + 1) - A101164 (A101881 n).toNat

end

end A300600.P18402231848391613607

/-! ## A300600.P3939743787072483137

`A300605(∑[n+2]+4)`
-/

namespace A300600.P3939743787072483137
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300605 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A300600.P3939743787072483137

/-!
# A300601: Number of nX4 0..1 arrays with every element equal to 0, 2, 3 or 5 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A300601, there is no canonical definition to state claims against.
-/

/-! ## A300601.P11945973385445772767

`A300605(∑[n+3]+7)`
-/

namespace A300601.P11945973385445772767
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300605 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A300601.P11945973385445772767

/-! ## A300601.P8271001029269082945

`A300605(A052905(n)+9)+char[19]`
-/

namespace A300601.P8271001029269082945
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  19

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300605 (A052905 n + 9).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A300601.P8271001029269082945

/-! ## A300601.P5282079075281191661

`A336355(n+1)+A300605(A374004(n+1))`
-/

namespace A300601.P5282079075281191661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336355 (n + 1) + A300605 (A374004 (n + 1)).toNat

end

end A300601.P5282079075281191661

/-! ## A300601.P6814542152052372344

`A300605(A374004(n+1))%A154638(n+1)`
-/

namespace A300601.P6814542152052372344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A300605 (A374004 (n + 1)).toNat) (A154638 (n + 1))

end

end A300601.P6814542152052372344

/-! ## A300601.P6040695450785836959

`A007318(C(2, n))*A300605(A052905(n)+9)`
-/

namespace A300601.P6040695450785836959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A300605 (A052905 n + 9).toNat

end

end A300601.P6040695450785836959

/-!
# A300602: Number of nX5 0..1 arrays with every element equal to 0, 2, 3 or 5 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A300602, there is no canonical definition to state claims against.
-/

/-! ## A300602.P12579754618437444573

`A300605(A374005(n+1))`
-/

namespace A300602.P12579754618437444573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300605 (A374005 (n + 1)).toNat

end

end A300602.P12579754618437444573

/-! ## A300602.P12354464552904026048

`A300605(A167499(n+3))`
-/

namespace A300602.P12354464552904026048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300605 (A167499 (n + 3)).toNat

end

end A300602.P12354464552904026048

/-! ## A300602.P11889965819110033514

`A300605(A155212(n)+13)`
-/

namespace A300602.P11889965819110033514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300605 (A155212 n + 13).toNat

end

end A300602.P11889965819110033514

/-! ## A300602.P4741689403484541653

`A300605(A056000(n)+15)`
-/

namespace A300602.P4741689403484541653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300605 (A056000 n + 15).toNat

end

end A300602.P4741689403484541653

/-! ## A300602.P14158001749686054039

`A300605(eq[7, A066657(n)])`
-/

namespace A300602.P14158001749686054039
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300605 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A300602.P14158001749686054039

/-!
# A300603: Number of nX6 0..1 arrays with every element equal to 0, 2, 3 or 5 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A300603, there is no canonical definition to state claims against.
-/

/-! ## A300603.P1043702762837531954

`A300605(∑[n+5]+16)`
-/

namespace A300603.P1043702762837531954
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300605 (∑ j ∈ Finset.range (n + 1), f1 j + 16)

end

end A300603.P1043702762837531954

/-! ## A300603.P16385522858945840914

`A300605(A167499(n+4)+1)+char[16]`
-/

namespace A300603.P16385522858945840914
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300605 (A167499 (n + 4) + 1).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A300603.P16385522858945840914

/-! ## A300603.P13820140619997122484

`A300605(A000217(n+5)+6)+char[17]`
-/

namespace A300603.P13820140619997122484
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300605 (A000217 (n + 5) + 6).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A300603.P13820140619997122484

/-! ## A300603.P1797403480465661873

`A300605(A374007(n+1))+A025469(n)`
-/

namespace A300603.P1797403480465661873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300605 (A374007 (n + 1)).toNat + A025469 n

end

end A300603.P1797403480465661873

/-! ## A300603.P6566397226989980460

`A300605(A374007(n+1))+A185284(n)`
-/

namespace A300603.P6566397226989980460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300605 (A374007 (n + 1)).toNat + A185284 n

end

end A300603.P6566397226989980460

/-!
# A300604: Number of nX7 0..1 arrays with every element equal to 0, 2, 3 or 5 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A300604, there is no canonical definition to state claims against.
-/

/-! ## A300604.P3744340273198293521

`A300605(A374008(n+1))`
-/

namespace A300604.P3744340273198293521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300605 (A374008 (n + 1)).toNat

end

end A300604.P3744340273198293521

/-! ## A300604.P6093182074779674351

`A300605(A056119(n)+28)`
-/

namespace A300604.P6093182074779674351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300605 (A056119 n + 28).toNat

end

end A300604.P6093182074779674351

/-! ## A300604.P16269700664149100313

`A300605(eq[11, A066657(n)])`
-/

namespace A300604.P16269700664149100313
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300605 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A300604.P16269700664149100313

/-! ## A300604.P9115050930734746724

`A300605(A166136(n+5)+1)`
-/

namespace A300604.P9115050930734746724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300605 (A166136 (n + 5) + 1).toNat

end

end A300604.P9115050930734746724

/-! ## A300604.P5691733389266059904

`A300605(A133263(n+6)+5)`
-/

namespace A300604.P5691733389266059904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300605 (A133263 (n + 6) + 5).toNat

end

end A300604.P5691733389266059904

/-!
# A300605: T(n,k)=Number of nXk 0..1 arrays with every element equal to 0, 2, 3 or 5 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A300605, there is no canonical definition to state claims against.
-/

/-! ## A300605.P3288206676584667850

`A301330(n+1)-A102683(A008300(n))`
-/

namespace A300605.P3288206676584667850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301330 (n + 1) - A102683 (A008300 n).toNat

end

end A300605.P3288206676584667850

/-! ## A300605.P807837763298055564

`A301330(n+1)-A025469(A296548(n))`
-/

namespace A300605.P807837763298055564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301330 (n + 1) - A025469 (A296548 n).toNat

end

end A300605.P807837763298055564

/-! ## A300605.P8168584273022581215

`A301330(n+1)+A014324(A199256(n+1))`
-/

namespace A300605.P8168584273022581215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301330 (n + 1) + A014324 (A199256 (n + 1)).toNat

end

end A300605.P8168584273022581215

/-! ## A300605.P10879731155581725306

`A301330(n+1)-A025469(A000043(n+1))`
-/

namespace A300605.P10879731155581725306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301330 (n + 1) - A025469 (A000043 (n + 1)).toNat

end

end A300605.P10879731155581725306

/-! ## A300605.P10794906353511773664

`A301330(n+1)-A359466(A263060(n+1))`
-/

namespace A300605.P10794906353511773664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301330 (n + 1) - A359466 (A263060 (n + 1)).toNat

end

end A300605.P10794906353511773664

/-!
# A300606: Number of n X n 0..1 arrays with every element equal to 1, 2, 3 or 5 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A300606, there is no canonical definition to state claims against.
-/

/-! ## A300606.P17105622565441571019

`A300612(∑[4*n]+1)`
-/

namespace A300606.P17105622565441571019
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300612 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A300606.P17105622565441571019

/-! ## A300606.P13086995503894757779

`A300612(A001844(n))+A056967(n)`
-/

namespace A300606.P13086995503894757779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300612 (A001844 n).toNat + A056967 n

end

end A300606.P13086995503894757779

/-! ## A300606.P17473899769882172450

`A300612(A001844(n))+A185294(n)`
-/

namespace A300606.P17473899769882172450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300612 (A001844 n).toNat + A185294 n

end

end A300606.P17473899769882172450

/-! ## A300606.P11442202909778217222

`A057427(n)*A300612(A001844(n))`
-/

namespace A300606.P11442202909778217222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A300612 (A001844 n).toNat

end

end A300606.P11442202909778217222

/-! ## A300606.P17178083007067009414

`A178334(n)*A300612(A001844(n))`
-/

namespace A300606.P17178083007067009414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 n * A300612 (A001844 n).toNat

end

end A300606.P17178083007067009414

/-!
# A300607: Number of nX3 0..1 arrays with every element equal to 1, 2, 3 or 5 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A300607, there is no canonical definition to state claims against.
-/

/-! ## A300607.P16434918788984767301

`A300612(∑[n+2]+4)`
-/

namespace A300607.P16434918788984767301
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300612 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A300607.P16434918788984767301

/-! ## A300607.P2769399428877431288

`A300612(A167614(n+1))+A011745(n)`
-/

namespace A300607.P2769399428877431288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300612 (A167614 (n + 1)).toNat + A011745 n

end

end A300607.P2769399428877431288

/-! ## A300607.P11174950349057130854

`A300612(A167614(n+1))%A042206(n)`
-/

namespace A300607.P11174950349057130854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A300612 (A167614 (n + 1)).toNat) (A042206 n)

end

end A300607.P11174950349057130854

/-! ## A300607.P6116296638566745447

`or(A000007(n), A300612(A167614(n+1)))`
-/

namespace A300607.P6116296638566745447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A300612 (A167614 (n + 1)).toNat)

end

end A300607.P6116296638566745447

/-! ## A300607.P11059428713197641904

`or(A067898(n), A300612(A167614(n+1)))`
-/

namespace A300607.P11059428713197641904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A067898 n) (A300612 (A167614 (n + 1)).toNat)

end

end A300607.P11059428713197641904

/-!
# A300608: Number of n X 4 0..1 arrays with every element equal to 1, 2, 3 or 5 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A300608, there is no canonical definition to state claims against.
-/

/-! ## A300608.P12042031613482889857

`A300612(A141214(n)+7)`
-/

namespace A300608.P12042031613482889857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300612 (A141214 n + 7).toNat

end

end A300608.P12042031613482889857

/-! ## A300608.P15476127729275888591

`A300612(A052905(n)+9)`
-/

namespace A300608.P15476127729275888591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300612 (A052905 n + 9).toNat

end

end A300608.P15476127729275888591

/-! ## A300608.P100545711439234540

`A300612(A055999(n)+10)`
-/

namespace A300608.P100545711439234540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300612 (A055999 n + 10).toNat

end

end A300608.P100545711439234540

/-! ## A300608.P8484238679936469016

`A300612(A167614(n+2)+1)`
-/

namespace A300608.P8484238679936469016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300612 (A167614 (n + 2) + 1).toNat

end

end A300608.P8484238679936469016

/-! ## A300608.P4391953230885811630

`A300612(eq[5, A131818(n+1)])`
-/

namespace A300608.P4391953230885811630
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300612 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A300608.P4391953230885811630

/-!
# A300609: Number of nX5 0..1 arrays with every element equal to 1, 2, 3 or 5 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A300609, there is no canonical definition to state claims against.
-/

/-! ## A300609.P18368674316460231237

`A300612(A056000(n)+15)`
-/

namespace A300609.P18368674316460231237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300612 (A056000 n + 15).toNat

end

end A300609.P18368674316460231237

/-! ## A300609.P14860531340554805455

`A300612(eq[6, A131818(n+1)])`
-/

namespace A300609.P14860531340554805455
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300612 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A300609.P14860531340554805455

/-! ## A300609.P17832967417495590187

`A300612(A374005(n+1))`
-/

namespace A300609.P17832967417495590187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300612 (A374005 (n + 1)).toNat

end

end A300609.P17832967417495590187

/-! ## A300609.P14907383116033697174

`A300612(A046691(n+3))`
-/

namespace A300609.P14907383116033697174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300612 (A046691 (n + 3)).toNat

end

end A300609.P14907383116033697174

/-! ## A300609.P9648574652690770189

`A300612(eq[4, A193592(n)])`
-/

namespace A300609.P9648574652690770189
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300612 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A300609.P9648574652690770189

/-!
# A300610: Number of nX6 0..1 arrays with every element equal to 1, 2, 3 or 5 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A300610, there is no canonical definition to state claims against.
-/

/-! ## A300610.P17317304613583123733

`A300612(A000124(n+5)+5)`
-/

namespace A300610.P17317304613583123733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300612 (A000124 (n + 5) + 5).toNat

end

end A300610.P17317304613583123733

/-! ## A300610.P4753859338740720127

`A300612(eq[7, A131818(n+1)])`
-/

namespace A300610.P4753859338740720127
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300612 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A300610.P4753859338740720127

/-! ## A300610.P18404943004606864511

`A300612(Δ[A023545(n+1)]+10)`
-/

namespace A300610.P18404943004606864511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300612 (f1 (n + 1) - f1 n + 10).toNat

end

end A300610.P18404943004606864511

/-! ## A300610.P1607529758755423738

`A300612(A374007(n+1))`
-/

namespace A300610.P1607529758755423738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300612 (A374007 (n + 1)).toNat

end

end A300610.P1607529758755423738

/-! ## A300610.P7115148191742882781

`A300612(A052905(n+3))`
-/

namespace A300610.P7115148191742882781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300612 (A052905 (n + 3)).toNat

end

end A300610.P7115148191742882781

/-!
# A300611: Number of nX7 0..1 arrays with every element equal to 1, 2, 3 or 5 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A300611, there is no canonical definition to state claims against.
-/

/-! ## A300611.P2052918170545082881

`A300612(A167487(n+5))`
-/

namespace A300611.P2052918170545082881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300612 (A167487 (n + 5)).toNat

end

end A300611.P2052918170545082881

/-! ## A300611.P15357601703167665788

`A300612(eq[8, A131818(n+1)])`
-/

namespace A300611.P15357601703167665788
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300612 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A300611.P15357601703167665788

/-! ## A300611.P15525120750216186979

`A300612(A374008(n+1))`
-/

namespace A300611.P15525120750216186979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300612 (A374008 (n + 1)).toNat

end

end A300611.P15525120750216186979

/-! ## A300611.P15888910176574705118

`A300612(A055999(n+4))`
-/

namespace A300611.P15888910176574705118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300612 (A055999 (n + 4)).toNat

end

end A300611.P15888910176574705118

/-! ## A300611.P4022257725084084580

`A300612(eq[6, A193592(n)])`
-/

namespace A300611.P4022257725084084580
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300612 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A300611.P4022257725084084580

/-!
# A300612: T(n,k)=Number of nXk 0..1 arrays with every element equal to 1, 2, 3 or 5 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A300612, there is no canonical definition to state claims against.
-/

/-! ## A300612.P2887218463406742512

`A301354(n+1)-A010894(A009766(n))`
-/

namespace A300612.P2887218463406742512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301354 (n + 1) - A010894 ((A009766 n).toNat + 21)

end

end A300612.P2887218463406742512

/-! ## A300612.P8852917795904105454

`A301354(n+1)-A014954(A053802(n))`
-/

namespace A300612.P8852917795904105454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301354 (n + 1) - A014954 (A053802 n).toNat

end

end A300612.P8852917795904105454

/-! ## A300612.P10243435301557658335

`A301354(n+1)-A067898(A174127(n))`
-/

namespace A300612.P10243435301557658335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301354 (n + 1) - A067898 (A174127 n).toNat

end

end A300612.P10243435301557658335

/-! ## A300612.P6245816020612971910

`A301354(n+1)-A185284(A135966(n))`
-/

namespace A300612.P6245816020612971910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301354 (n + 1) - A185284 (A135966 n).toNat

end

end A300612.P6245816020612971910

/-! ## A300612.P5084372779684444764

`lcm(A008836(A259962(n+1)), A301354(n+1))`
-/

namespace A300612.P5084372779684444764
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A008836 (A259962 (n + 1)).toNat) (A301354 (n + 1))

end

end A300612.P5084372779684444764

/-!
# A300613: Number of partitions of the n-dimensional hypercube resulting from a sequence of n n-sections, each of which divides any part perpendicular to any of the axes.

The programs for A300613, there is no canonical definition to state claims against.
-/

/-! ## A300613.P4052150943813659515

`n^n*A091144(n)`
-/

namespace A300613.P4052150943813659515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ n : ℤ) * A091144 n

end

end A300613.P4052150943813659515

/-! ## A300613.P8395213308020686900

`C(n², n)/((1-n)²+n)*A000312(n)`
-/

namespace A300613.P8395213308020686900
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n ^ 2) n : ℚ) / ((1 - (n : ℤ)) ^ 2 + (n : ℤ) : ℚ) * (A000312 n : ℚ)

end

end A300613.P8395213308020686900

/-! ## A300613.P18305068755045590247

`A000312(n)*A070914(2*n²)`
-/

namespace A300613.P18305068755045590247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000312 n * A070914 (2 * n ^ 2)

end

end A300613.P18305068755045590247

/-! ## A300613.P445329133096330059

`A014062(n)/sqrt(A058031(n))*A000312(n)`
-/

namespace A300613.P445329133096330059
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A014062 n : ℝ) / Real.sqrt (A058031 n : ℝ) * (A000312 n : ℝ)

end

end A300613.P445329133096330059

/-! ## A300613.P17766725590084050154

`A091144(n)*A247026(A034856(n+1))`
-/

namespace A300613.P17766725590084050154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091144 n * A247026 (A034856 (n + 1)).toNat

end

end A300613.P17766725590084050154

/-!
# A300615: O.g.f. A(x) satisfies: [x^n] exp( n^5 * A(x) ) = n^5 * [x^(n-1)] exp( n^5 * A(x) ) for n>=1.

The programs for A300615, there is no canonical definition to state claims against.
-/

/-! ## A300615.P17513925633198512006

`A300625(Δ[A264443(n)])`
-/

namespace A300615.P17513925633198512006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300625 (f1 (n + 1) - f1 n).toNat

end

end A300615.P17513925633198512006

/-! ## A300615.P3029244789846981357

`A300625(A046691(n+3))`
-/

namespace A300615.P3029244789846981357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300625 (A046691 (n + 3)).toNat

end

end A300615.P3029244789846981357

/-! ## A300615.P6076874777254260695

`A300625(eq[4, A193592(n)])`
-/

namespace A300615.P6076874777254260695
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300625 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A300615.P6076874777254260695

/-! ## A300615.P6307524979946711435

`A300625(Δ[A023545(n+1)])`
-/

namespace A300615.P6307524979946711435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300625 (f1 (n + 1) - f1 n).toNat

end

end A300615.P6307524979946711435

/-! ## A300615.P2912453472178750408

`A300625(A052905(n+2)+1)`
-/

namespace A300615.P2912453472178750408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300625 (A052905 (n + 2) + 1).toNat

end

end A300615.P2912453472178750408

/-!
# A300617: O.g.f. A(x) satisfies [x^n] exp( n * A(x) ) = n^2 * [x^(n-1)] exp( n * A(x) ) for n >= 1.

The programs for A300617, there is no canonical definition to state claims against.
-/

/-! ## A300617.P7843473334996609193

`∑[n+1]*A300589(n+1)`
-/

namespace A300617.P7843473334996609193
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A300589 (n + 1)

end

end A300617.P7843473334996609193

/-! ## A300617.P17642098810777756705

`A300620(∑[n+2])`
-/

namespace A300617.P17642098810777756705
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300620 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A300617.P17642098810777756705

/-! ## A300617.P7705948326244985505

`record[root(A300620(n+1), A220708(n+1))]`
-/

namespace A300617.P7705948326244985505
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A300620 (n + 1) : ℝ) ^ (1 / (A220708 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A300617.P7705948326244985505

/-! ## A300617.P15795058736870738155

`record[root(A300620(n+1), A301906(n+1))]`
-/

namespace A300617.P15795058736870738155
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A300620 (n + 1) : ℝ) ^ (1 / (A301906 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A300617.P15795058736870738155

/-! ## A300617.P1518158327450388383

`record[root(A300620(n+1), A143364(n+1))]`
-/

namespace A300617.P1518158327450388383
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A300620 (n + 1) : ℝ) ^ (1 / (A143364 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A300617.P1518158327450388383

/-!
# A300619: O.g.f. A(x) satisfies [x^n] exp( n * A(x) ) = n^3 * [x^(n-1)] exp( n * A(x) ) for n >= 1.

The programs for A300619, there is no canonical definition to state claims against.
-/

/-! ## A300619.P13398326417104718456

`A300620(∑[n+3]+1)`
-/

namespace A300619.P13398326417104718456
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300620 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A300619.P13398326417104718456

/-! ## A300619.P2823232512905509980

`record[A300620(Δ[A054974(n+2)])]`
-/

namespace A300619.P2823232512905509980
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054974 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300620 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A300619.P2823232512905509980

/-! ## A300619.P16155190784327355034

`record[A300620(n+1)/A300620(n+4)]`
-/

namespace A300619.P16155190784327355034
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A300620 (n + 1) : ℚ) / (A300620 (n + 4) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A300619.P16155190784327355034

/-! ## A300619.P4313341819590961719

`record[gcd(1-A059117(n), A300620(n+1))]`
-/

namespace A300619.P4313341819590961719
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (1 - A059117 n) (A300620 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A300619.P4313341819590961719

/-! ## A300619.P18248787602901130618

`record[A300620(A110654(n)+A008795(n))]`
-/

namespace A300619.P18248787602901130618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300620 (A110654 n + A008795 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A300619.P18248787602901130618

/-!
# A300622: Denominators of sequence whose exponential self-convolution yields sequence 1, 2, 3, 5, 7, 11, 13, ... (1 with primes).

The programs for A300622, the canonical program `A300622.P9660768521783304710` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A300622 has offset 0).

The definition of A300622 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 666 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A300622.P9660768521783304710

`4*a(n-4)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=1`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A300622

/-- `4*a(n-4)` -/
def P9660768521783304710.Spec : Prop :=
  ∀ n, (P9660768521783304710.a n : ℤ) = A300622 n

theorem P9660768521783304710.correct : P9660768521783304710.Spec := by
  intro n
  simp only [A300622]

end A300622

/-! ## A300622.P1305138785272962722

`sqrt(2)^abs(and(3, n^3)-n)`
-/

namespace A300622.P1305138785272962722
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (2 : ℝ) ^ (|(Nat.land 3 (n ^ 3) : ℤ) - (n : ℤ)| : ℤ)

end

end A300622.P1305138785272962722

namespace A300622

/-- `sqrt(2)^abs(and(3, n^3)-n)` -/
def P1305138785272962722.Spec : Prop :=
  ∀ n, P1305138785272962722.a n = (A300622 n : ℝ)

end A300622

/-! ## A300622.P8119207296710019500

`2^(floor(n/2)-char[or(3, n)])`
-/

namespace A300622.P8119207296710019500
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 3 n

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (⌊(n : ℚ) / 2⌋ - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) : ℤ)

end

end A300622.P8119207296710019500

namespace A300622

/-- `2^(floor(n/2)-char[or(3, n)])` -/
def P8119207296710019500.Spec : Prop :=
  ∀ n, P8119207296710019500.a n = (A300622 n : ℚ)

end A300622

/-! ## A300622.P15557857566759627862

`a(n-4)/(1/2)²` with `a(0)=1, a(1)=1, a(2)=2, a(3)=1`
-/

namespace A300622.P15557857566759627862
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1, 2, 1] fun n a =>
  a (n - 4) / ((1 : ℚ) / 2) ^ 2

end

end A300622.P15557857566759627862

namespace A300622

/-- `a(n-4)/(1/2)²` -/
def P15557857566759627862.Spec : Prop :=
  ∀ n, P15557857566759627862.a n = (A300622 n : ℚ)

end A300622

/-! ## A300622.P15746968849289092332

`A016116(n)/A177704(n)`
-/

namespace A300622.P15746968849289092332
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016116 n : ℚ) / (A177704 n : ℚ)

end

end A300622.P15746968849289092332

namespace A300622

/-- `A016116(n)/A177704(n)` -/
def P15746968849289092332.Spec : Prop :=
  ∀ n, P15746968849289092332.a n = (A300622 n : ℚ)

end A300622

/-! ## A300622.P13300759006302095018

`A016116(n)/ratio[A016116(A004526(n))]`
-/

namespace A300622.P13300759006302095018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 (A004526 n).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016116 n : ℚ) / ((f1 (n + 1) : ℚ) / (f1 n : ℚ))

end

end A300622.P13300759006302095018

namespace A300622

/-- `A016116(n)/ratio[A016116(A004526(n))]` -/
def P13300759006302095018.Spec : Prop :=
  ∀ n, P13300759006302095018.a n = (A300622 n : ℚ)

end A300622

/-! ## A300622.P18167834811403104476

`A011782(A166486(n+1)+A004526(n))`
-/

namespace A300622.P18167834811403104476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A166486 (n + 1) + A004526 n).toNat

end

end A300622.P18167834811403104476

namespace A300622

/-- `A011782(A166486(n+1)+A004526(n))` -/
def P18167834811403104476.Spec : Prop :=
  ∀ n, P18167834811403104476.a n = A300622 n

end A300622

/-! ## A300622.P16287595197894735552

`A016116(n)/A200675(n+1)*A200675(n)`
-/

namespace A300622.P16287595197894735552
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016116 n : ℚ) / (A200675 (n + 1) : ℚ) * (A200675 n : ℚ)

end

end A300622.P16287595197894735552

namespace A300622

/-- `A016116(n)/A200675(n+1)*A200675(n)` -/
def P16287595197894735552.Spec : Prop :=
  ∀ n, P16287595197894735552.a n = (A300622 n : ℚ)

end A300622

/-! ## A300622.P14620172424245617094

`gcd(A009116(n), A137399(n))`
-/

namespace A300622.P14620172424245617094
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A009116 n) (A137399 n)

end

end A300622.P14620172424245617094

namespace A300622

/-- `gcd(A009116(n), A137399(n))` -/
def P14620172424245617094.Spec : Prop :=
  ∀ n, (P14620172424245617094.a n : ℤ) = A300622 n

end A300622

/-! ## A300622.P1076872711406947912

`A137399(n)/A138191(n+1)`
-/

namespace A300622.P1076872711406947912
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A137399 n : ℚ) / (A138191 (n + 1) : ℚ)

end

end A300622.P1076872711406947912

namespace A300622

/-- `A137399(n)/A138191(n+1)` -/
def P1076872711406947912.Spec : Prop :=
  ∀ n, P1076872711406947912.a n = (A300622 n : ℚ)

end A300622

/-! ## A300622.P3825746246065156740

`ogf((1+x+2x^2+x^3)/(1-4x^4))`
-/

namespace A300622.P3825746246065156740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, 2, 1] [1, 0, 0, 0, -4] n

end

end A300622.P3825746246065156740

namespace A300622

/-- `ogf((1+x+2x^2+x^3)/(1-4x^4))` -/
def P3825746246065156740.Spec : Prop :=
  ∀ n, P3825746246065156740.a n = A300622 n

end A300622

/-! ## A300622.P1538509052090881385

`A173300(n+3)/2`
-/

namespace A300622.P1538509052090881385
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A173300 (n + 3) : ℚ) / 2

end

end A300622.P1538509052090881385

namespace A300622

/-- `A173300(n+3)/2` -/
def P1538509052090881385.Spec : Prop :=
  ∀ n, P1538509052090881385.a n = (A300622 n : ℚ)

end A300622

/-! ## A300622.P12883275399287924599

`A079102(A186421(n))`
-/

namespace A300622.P12883275399287924599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079102 (A186421 n).toNat

end

end A300622.P12883275399287924599

namespace A300622

/-- `A079102(A186421(n))` -/
def P12883275399287924599.Spec : Prop :=
  ∀ n, P12883275399287924599.a n = A300622 n

end A300622

/-! ## A300622.P16487466296093910023

`sqrt(2^(n+1-gcd(4, n+1)))`
-/

namespace A300622.P16487466296093910023
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((2 : ℚ) ^ ((n + 1 : ℤ) - (Nat.gcd 4 (n + 1) : ℤ) : ℤ) : ℝ)

end

end A300622.P16487466296093910023

namespace A300622

/-- `sqrt(2^(n+1-gcd(4, n+1)))` -/
def P16487466296093910023.Spec : Prop :=
  ∀ n, P16487466296093910023.a n = (A300622 n : ℝ)

end A300622

/-! ## A300622.P13902352723380148434

`gcd(A016116(n), A124722(n+5))`
-/

namespace A300622.P13902352723380148434
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A016116 n) (A124722 (n + 5))

end

end A300622.P13902352723380148434

namespace A300622

/-- `gcd(A016116(n), A124722(n+5))` -/
def P13902352723380148434.Spec : Prop :=
  ∀ n, (P13902352723380148434.a n : ℤ) = A300622 n

end A300622

/-! ## A300622.P2949636570096943426

`gcd(A000079(n), A080879(n))`
-/

namespace A300622.P2949636570096943426
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000079 n) (A080879 n)

end

end A300622.P2949636570096943426

namespace A300622

/-- `gcd(A000079(n), A080879(n))` -/
def P2949636570096943426.Spec : Prop :=
  ∀ n, (P2949636570096943426.a n : ℤ) = A300622 n

end A300622

/-! ## A300622.P17752759139487250744

`A080879(n)%A164090(n+1)`
-/

namespace A300622.P17752759139487250744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A080879 n) (A164090 (n + 1))

end

end A300622.P17752759139487250744

namespace A300622

/-- `A080879(n)%A164090(n+1)` -/
def P17752759139487250744.Spec : Prop :=
  ∀ n, P17752759139487250744.a n = A300622 n

end A300622

/-! ## A300622.P5648175975872490385

`gcd(A016116(n), A291385(n))`
-/

namespace A300622.P5648175975872490385
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A016116 n) (A291385 n)

end

end A300622.P5648175975872490385

namespace A300622

/-- `gcd(A016116(n), A291385(n))` -/
def P5648175975872490385.Spec : Prop :=
  ∀ n, (P5648175975872490385.a n : ℤ) = A300622 n

end A300622

/-! ## A300622.P6741909658900774147

`gcd(A034583(n), A292399(n))`
-/

namespace A300622.P6741909658900774147
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A034583 n) (A292399 n)

end

end A300622.P6741909658900774147

namespace A300622

/-- `gcd(A034583(n), A292399(n))` -/
def P6741909658900774147.Spec : Prop :=
  ∀ n, (P6741909658900774147.a n : ℤ) = A300622 n

end A300622

/-! ## A300622.P3491058351087991706

`gcd(A007052(n), A054146(n))`
-/

namespace A300622.P3491058351087991706
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A007052 n) (A054146 n)

end

end A300622.P3491058351087991706

namespace A300622

/-- `gcd(A007052(n), A054146(n))` -/
def P3491058351087991706.Spec : Prop :=
  ∀ n, (P3491058351087991706.a n : ℤ) = A300622 n

end A300622

/-!
# A300624: Figurate numbers based on the 11-dimensional regular convex polytope called the 11-dimensional cross-polytope, or 11-dimensional hyperoctahedron.

The programs for A300624, the canonical program `A300624.P1798579072279093080` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A300624 has offset 0).

The definition of A300624 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A300624.P5154699113643512956

`A035605(n)/2`
-/

namespace A300624.P5154699113643512956
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A035605 n : ℚ) / 2

end

end A300624.P5154699113643512956

namespace A300624

/-- `A035605(n)/2` -/
def P5154699113643512956.Spec : Prop :=
  ∀ n, P5154699113643512956.a n = (A300624 n : ℚ)

end A300624

/-! ## A300624.P1798579072279093080

`A008421(n-1)+a(n-1)` with `a(0)=0`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A300624

/-- `A008421(n-1)+a(n-1)` -/
def P1798579072279093080.Spec : Prop :=
  ∀ n, P1798579072279093080.a n = A300624 n

theorem P1798579072279093080.correct : P1798579072279093080.Spec := by
  intro n
  simp only [A300624]

end A300624

/-! ## A300624.P5734364494951992316

`∑[A008421(n)]-A008421(n)`
-/

namespace A300624.P5734364494951992316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008421 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A008421 n

end

end A300624.P5734364494951992316

namespace A300624

/-- `∑[A008421(n)]-A008421(n)` -/
def P5734364494951992316.Spec : Prop :=
  ∀ n, P5734364494951992316.a n = A300624 n

end A300624

/-! ## A300624.P14226888660831986000

`A240876(n)%∑[A008421(n)]`
-/

namespace A300624.P14226888660831986000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008421 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A240876 n) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A300624.P14226888660831986000

namespace A300624

/-- `A240876(n)%∑[A008421(n)]` -/
def P14226888660831986000.Spec : Prop :=
  ∀ n, P14226888660831986000.a n = A300624 n

end A300624

/-! ## A300624.P7968574651873887646

`∑[∑[A008420(n)]-A008420(n)]`
-/

namespace A300624.P7968574651873887646
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008420 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A008420 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A300624.P7968574651873887646

namespace A300624

/-- `∑[∑[A008420(n)]-A008420(n)]` -/
def P7968574651873887646.Spec : Prop :=
  ∀ n, P7968574651873887646.a n = A300624 n

end A300624

/-! ## A300624.P6171588143049615048

`∑[2*A099197(n)]-A099197(n)`
-/

namespace A300624.P6171588143049615048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A099197 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A099197 n

end

end A300624.P6171588143049615048

namespace A300624

/-- `∑[2*A099197(n)]-A099197(n)` -/
def P6171588143049615048.Spec : Prop :=
  ∀ n, P6171588143049615048.a n = A300624 n

end A300624

/-! ## A300624.P1520476024798644481

`∑[A035604(n)]-A035604(n)/2`
-/

namespace A300624.P1520476024798644481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035604 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) - (A035604 n : ℚ) / 2

end

end A300624.P1520476024798644481

namespace A300624

/-- `∑[A035604(n)]-A035604(n)/2` -/
def P1520476024798644481.Spec : Prop :=
  ∀ n, P1520476024798644481.a n = (A300624 n : ℚ)

end A300624

/-!
# A300626: Number of inequivalent colorings of free pure symmetric multifunctions (with empty expressions allowed) with n positions.

The programs for A300626, there is no canonical definition to state claims against.
-/

/-! ## A300626.P2340913479963652213

`A001003(n)-A237817(A000699(n))`
-/

namespace A300626.P2340913479963652213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001003 n - A237817 (A000699 n).toNat

end

end A300626.P2340913479963652213

/-! ## A300626.P12857688531420163749

`A066655(n+1)+A065716(A048862(n))`
-/

namespace A300626.P12857688531420163749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066655 (n + 1) + A065716 (A048862 n).toNat

end

end A300626.P12857688531420163749

/-! ## A300626.P10874493557934602684

`A065033(A280767(n+1)+A124303(n))`
-/

namespace A300626.P10874493557934602684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A280767 (n + 1) + A124303 n).toNat

end

end A300626.P10874493557934602684

/-!
# A300627: G.f. A(x) satisfies: [x^n] A(x)^(2*n+1) / (x*A(x)^2)' = 0 for n>1.

The programs for A300627, there is no canonical definition to state claims against.
-/

/-! ## A300627.P9267678663854796319

`floor(A319646(n²)/2)+1`
-/

namespace A300627.P9267678663854796319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A319646 (n ^ 2) : ℚ) / 2⌋ + 1

end

end A300627.P9267678663854796319

/-!
# A300628: Triangular array T(n,k) giving coefficients in expansion of Product_{j=1..n} (1+x^j)^2 mod x^(n+1)-1.

The programs for A300628, there is no canonical definition to state claims against.
-/

/-! ## A300628.P6571239364134292466

`A053633(A185869(n+1)-1)`
-/

namespace A300628.P6571239364134292466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053633 (A185869 (n + 1) - 1).toNat

end

end A300628.P6571239364134292466

/-! ## A300628.P18180151309074227837

`A053633(A185870(n+1)-2)`
-/

namespace A300628.P18180151309074227837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053633 (A185870 (n + 1) - 2).toNat

end

end A300628.P18180151309074227837

/-! ## A300628.P2353422393780513733

`A053633(A061579(n)+A016777(n))`
-/

namespace A300628.P2353422393780513733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053633 (A061579 n + A016777 n).toNat

end

end A300628.P2353422393780513733

/-! ## A300628.P9413375240829998492

`A053633(A038722(n+1)+A008486(n))`
-/

namespace A300628.P9413375240829998492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053633 (A038722 (n + 1) + A008486 n).toNat

end

end A300628.P9413375240829998492

/-! ## A300628.P12127724307966276535

`A053633(A038722(n+1)+A008585(n))`
-/

namespace A300628.P12127724307966276535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053633 (A038722 (n + 1) + A008585 n).toNat

end

end A300628.P12127724307966276535

/-!
# A300629: a(1) = 561; a(n+1) = smallest Fermat pseudoprime to all natural bases up to lpf(a(n)).

The programs for A300629, there is no canonical definition to state claims against.
-/

/-! ## A300629.P10372156680618672074

`A135720(record[A237266(n+1)+1])`
-/

namespace A300629.P10372156680618672074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237266 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135720 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A300629.P10372156680618672074

/-!
# A300630: Positive numbers k without two consecutive ones in the binary representation of 1/k.

The programs for A300630, there is no canonical definition to state claims against.
-/

/-! ## A300630.P8569756718539175462

`eq[1, A069010(n*A090079(n))]`
-/

namespace A300630.P8569756718539175462
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069010 ((n : ℤ) * A090079 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A300630.P8569756718539175462

/-! ## A300630.P7552477101032956328

`eq[A002487(n), A156061(A163511(n))]`
-/

namespace A300630.P7552477101032956328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156061 (A163511 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A300630.P7552477101032956328

/-! ## A300630.P5832926071157702434

`eq[A069010(n), A337201(A286374(n))]`
-/

namespace A300630.P5832926071157702434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069010 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337201 (A286374 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A300630.P5832926071157702434

/-! ## A300630.P14171584500373156114

`eq[A069010(n), A239061(A127473(2*(n+2)))]`
-/

namespace A300630.P14171584500373156114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069010 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239061 (A127473 (2 * (n + 2))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A300630.P14171584500373156114

/-! ## A300630.P13316180214058702913

`eq[1, A300655(n+1)]+1`
-/

namespace A300630.P13316180214058702913
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300655 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A300630.P13316180214058702913

/-!
# A300632: Expansion of e.g.f. exp(x + Sum_{k>=2} prime(k-1)*x^k/k!).

The programs for A300632, there is no canonical definition to state claims against.
-/

/-! ## A300632.P8704619443298637002

`A300511(n)-A025456(A000166(n))`
-/

namespace A300632.P8704619443298637002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300511 n - A025456 (A000166 n).toNat

end

end A300632.P8704619443298637002

/-! ## A300632.P15964331122870330368

`A300511(n)-A025466(A001096(n))`
-/

namespace A300632.P15964331122870330368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300511 n - A025466 (A001096 n).toNat

end

end A300632.P15964331122870330368

/-! ## A300632.P16252991095156935227

`A300511(n)-A025466(A001710(n))`
-/

namespace A300632.P16252991095156935227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300511 n - A025466 (A001710 n).toNat

end

end A300632.P16252991095156935227

/-! ## A300632.P14308155358385452520

`A300511(n)-A151755(A035079(n))`
-/

namespace A300632.P14308155358385452520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300511 n - A151755 (A035079 n).toNat

end

end A300632.P14308155358385452520

/-!
# A300633: Number of n X n 0..1 arrays with every element equal to 1, 2, 4 or 5 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A300633, there is no canonical definition to state claims against.
-/

/-! ## A300633.P554822695351507383

`A300639(∑[4*n]+1)`
-/

namespace A300633.P554822695351507383
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300639 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A300633.P554822695351507383

/-! ## A300633.P15866451465978570167

`A300639((n+1)²+n²)%(23^n)`
-/

namespace A300633.P15866451465978570167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A300639 ((n + 1) ^ 2 + n ^ 2)) (23 ^ n : ℤ)

end

end A300633.P15866451465978570167

/-! ## A300633.P3535992581059196464

`record[A300639(Δ[A235355(n)])]`
-/

namespace A300633.P3535992581059196464
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235355 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300639 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A300633.P3535992581059196464

/-! ## A300633.P14570572638316591868

`A300639(A001844(n))+char[19]`
-/

namespace A300633.P14570572638316591868
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  19

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300639 (A001844 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A300633.P14570572638316591868

/-! ## A300633.P14798641169748922395

`record[A003982(n)*A300639(n+1)]`
-/

namespace A300633.P14798641169748922395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A300639 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A300633.P14798641169748922395

/-!
# A300634: Number of nX3 0..1 arrays with every element equal to 1, 2, 4 or 5 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A300634, there is no canonical definition to state claims against.
-/

/-! ## A300634.P1257344563374112616

`A300639(∑[n+2]+4)`
-/

namespace A300634.P1257344563374112616
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300639 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A300634.P1257344563374112616

/-! ## A300634.P14270738447485858731

`record[A300639(A008795(n)+3)]`
-/

namespace A300634.P14270738447485858731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300639 (A008795 n + 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A300634.P14270738447485858731

/-! ## A300634.P16012041583731691033

`A300639(A152950(n+3))+char[20]`
-/

namespace A300634.P16012041583731691033
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  20

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300639 (A152950 (n + 3)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A300634.P16012041583731691033

/-! ## A300634.P12558037650284743506

`or(char[2], A300639(A167614(n+1)))`
-/

namespace A300634.P12558037650284743506
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A300639 (A167614 (n + 1)).toNat)

end

end A300634.P12558037650284743506

/-! ## A300634.P12617476746613197058

`A300639(A000124(n+2)+2)+char[19]`
-/

namespace A300634.P12617476746613197058
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  19

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300639 (A000124 (n + 2) + 2).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A300634.P12617476746613197058

/-!
# A300635: Number of nX4 0..1 arrays with every element equal to 1, 2, 4 or 5 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A300635, there is no canonical definition to state claims against.
-/

/-! ## A300635.P3588804426087512608

`A300639(∑[n+3]+7)`
-/

namespace A300635.P3588804426087512608
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300639 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A300635.P3588804426087512608

/-! ## A300635.P2982349683998844796

`record[A300639(A008795(n)+4)]`
-/

namespace A300635.P2982349683998844796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300639 (A008795 n + 4).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A300635.P2982349683998844796

/-! ## A300635.P5652693751498025361

`A300639(A052905(n)+9)+char[21]`
-/

namespace A300635.P5652693751498025361
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  21

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300639 (A052905 n + 9).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A300635.P5652693751498025361

/-! ## A300635.P13289991368984095440

`A300639(A167614(n+2)+1)+char[18]`
-/

namespace A300635.P13289991368984095440
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  18

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300639 (A167614 (n + 2) + 1).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A300635.P13289991368984095440

/-! ## A300635.P17804678775418866092

`record[gcd(A084938(n+1), A300639(n+5))]`
-/

namespace A300635.P17804678775418866092
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A084938 (n + 1)) (A300639 (n + 5))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A300635.P17804678775418866092

/-!
# A300636: Number of nX5 0..1 arrays with every element equal to 1, 2, 4 or 5 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A300636, there is no canonical definition to state claims against.
-/

/-! ## A300636.P529039595709528330

`A300639(A374005(n+1))`
-/

namespace A300636.P529039595709528330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300639 (A374005 (n + 1)).toNat

end

end A300636.P529039595709528330

/-! ## A300636.P5815111688786886411

`A300639(A167499(n+3))`
-/

namespace A300636.P5815111688786886411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300639 (A167499 (n + 3)).toNat

end

end A300636.P5815111688786886411

/-! ## A300636.P17265250405670454481

`A300639(A155212(n)+13)`
-/

namespace A300636.P17265250405670454481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300639 (A155212 n + 13).toNat

end

end A300636.P17265250405670454481

/-! ## A300636.P1504897151041871422

`A300639(A056000(n)+15)`
-/

namespace A300636.P1504897151041871422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300639 (A056000 n + 15).toNat

end

end A300636.P1504897151041871422

/-! ## A300636.P10878744990943778339

`A300639(eq[7, A066657(n)])`
-/

namespace A300636.P10878744990943778339
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300639 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A300636.P10878744990943778339

/-!
# A300637: Number of nX6 0..1 arrays with every element equal to 1, 2, 4 or 5 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A300637, there is no canonical definition to state claims against.
-/

/-! ## A300637.P8628153019548390094

`A300639(A374007(n+1))`
-/

namespace A300637.P8628153019548390094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300639 (A374007 (n + 1)).toNat

end

end A300637.P8628153019548390094

/-! ## A300637.P1069792839209005259

`A300639(A166136(n+4))`
-/

namespace A300637.P1069792839209005259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300639 (A166136 (n + 4)).toNat

end

end A300637.P1069792839209005259

/-! ## A300637.P13633674586428126709

`A300639(A056115(n)+21)`
-/

namespace A300637.P13633674586428126709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300639 (A056115 n + 21).toNat

end

end A300637.P13633674586428126709

/-! ## A300637.P13381016549242860614

`A300639(A167499(n+4)+1)`
-/

namespace A300637.P13381016549242860614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300639 (A167499 (n + 4) + 1).toNat

end

end A300637.P13381016549242860614

/-! ## A300637.P13859618307179811535

`A300639(A077169(n+6)+1)`
-/

namespace A300637.P13859618307179811535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300639 (A077169 (n + 6) + 1).toNat

end

end A300637.P13859618307179811535

/-!
# A300638: Number of nX7 0..1 arrays with every element equal to 1, 2, 4 or 5 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A300638, there is no canonical definition to state claims against.
-/

/-! ## A300638.P9256008253395028154

`A300639(A374008(n+1))`
-/

namespace A300638.P9256008253395028154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300639 (A374008 (n + 1)).toNat

end

end A300638.P9256008253395028154

/-! ## A300638.P17101143900475638388

`A300639(A167487(n+5))`
-/

namespace A300638.P17101143900475638388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300639 (A167487 (n + 5)).toNat

end

end A300638.P17101143900475638388

/-! ## A300638.P4233585369525956584

`A300639(A056119(n)+28)`
-/

namespace A300638.P4233585369525956584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300639 (A056119 n + 28).toNat

end

end A300638.P4233585369525956584

/-! ## A300638.P14642708154100838054

`A300639(eq[11, A066657(n)])`
-/

namespace A300638.P14642708154100838054
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300639 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A300638.P14642708154100838054

/-! ## A300638.P16233100292490357282

`A300639(A166136(n+5)+1)`
-/

namespace A300638.P16233100292490357282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300639 (A166136 (n + 5) + 1).toNat

end

end A300638.P16233100292490357282

/-!
# A300639: T(n,k)=Number of nXk 0..1 arrays with every element equal to 1, 2, 4 or 5 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A300639, there is no canonical definition to state claims against.
-/

/-! ## A300639.P16689286716773616579

`A301361(n+1)+A088194(A131067(n))`
-/

namespace A300639.P16689286716773616579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301361 (n + 1) + A088194 (A131067 n).toNat

end

end A300639.P16689286716773616579

/-! ## A300639.P16106850053815436161

`A301361(n+1)-A011697(A058343(n))`
-/

namespace A300639.P16106850053815436161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301361 (n + 1) - A011697 (A058343 n).toNat

end

end A300639.P16106850053815436161

/-! ## A300639.P6530183635392245831

`A301361(n+1)-A098841(A007318(n))`
-/

namespace A300639.P6530183635392245831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301361 (n + 1) - A098841 (A007318 n).toNat

end

end A300639.P6530183635392245831

/-! ## A300639.P664201787217077971

`A301361(n+1)-A185284(A061897(n))`
-/

namespace A300639.P664201787217077971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301361 (n + 1) - A185284 (A061897 n).toNat

end

end A300639.P664201787217077971

/-! ## A300639.P201270054118999127

`filter[A301361(n+1), A385395(#)]`
-/

namespace A300639.P201270054118999127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301361 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A385395 (f1 j).toNat = 1) n)

end

end A300639.P201270054118999127

/-!
# A300640: Number of n X n 0..1 arrays with every element equal to 2, 3, 4 or 5 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A300640, there is no canonical definition to state claims against.
-/

/-! ## A300640.P11765903185531339234

`A300646(∑[4*n]+1)`
-/

namespace A300640.P11765903185531339234
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300646 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A300640.P11765903185531339234

/-! ## A300640.P4376178718532127373

`A300646(A001844(n))+A054900(n)`
-/

namespace A300640.P4376178718532127373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300646 (A001844 n).toNat + A054900 n

end

end A300640.P4376178718532127373

/-! ## A300640.P17650826477009207742

`or(A103674(n), A300646(A001844(n)))`
-/

namespace A300640.P17650826477009207742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A103674 n) (A300646 (A001844 n).toNat)

end

end A300640.P17650826477009207742

/-! ## A300640.P1873520107740348410

`A324326(n+1)+A300646(A001844(n))`
-/

namespace A300640.P1873520107740348410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324326 (n + 1) + A300646 (A001844 n).toNat

end

end A300640.P1873520107740348410

/-!
# A300641: Number of nX3 0..1 arrays with every element equal to 2, 3, 4 or 5 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A300641, there is no canonical definition to state claims against.
-/

/-! ## A300641.P15540263276396062008

`A300646(∑[n+2]+4)`
-/

namespace A300641.P15540263276396062008
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300646 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A300641.P15540263276396062008

/-! ## A300641.P8405750658268074321

`A300646(A167614(n+1))+A025444(n)`
-/

namespace A300641.P8405750658268074321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300646 (A167614 (n + 1)).toNat + A025444 n

end

end A300641.P8405750658268074321

/-! ## A300641.P16794644732111606460

`A326292(n)+A300646(A167614(n+1))`
-/

namespace A300641.P16794644732111606460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326292 n + A300646 (A167614 (n + 1)).toNat

end

end A300641.P16794644732111606460

/-! ## A300641.P12467946239795813347

`A057427(n)*A300646(A167614(n+1))`
-/

namespace A300641.P12467946239795813347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A300646 (A167614 (n + 1)).toNat

end

end A300641.P12467946239795813347

/-! ## A300641.P13866935530528089919

`A300646(A167614(n+1))%A017297(n)`
-/

namespace A300641.P13866935530528089919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A300646 (A167614 (n + 1)).toNat) (A017297 n)

end

end A300641.P13866935530528089919

/-!
# A300642: Number of nX4 0..1 arrays with every element equal to 2, 3, 4 or 5 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A300642, there is no canonical definition to state claims against.
-/

/-! ## A300642.P44927032908490870

`A300646(∑[n+3]+7)`
-/

namespace A300642.P44927032908490870
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300646 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A300642.P44927032908490870

/-! ## A300642.P7413385844871859177

`A300646(A052905(n)+9)%A300607(n+1)`
-/

namespace A300642.P7413385844871859177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A300646 (A052905 n + 9).toNat) (A300607 (n + 1))

end

end A300642.P7413385844871859177

/-! ## A300642.P6043089127005769868

`A256039(C(2, n))*A300646(A141214(n)+7)`
-/

namespace A300642.P6043089127005769868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256039 (Nat.choose 2 n) * A300646 (A141214 n + 7).toNat

end

end A300642.P6043089127005769868

/-! ## A300642.P15217440387359812631

`A300776(A000124(n+2))+A300646(A141214(n)+7)`
-/

namespace A300642.P15217440387359812631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300776 (A000124 (n + 2)).toNat + A300646 (A141214 n + 7).toNat

end

end A300642.P15217440387359812631

/-! ## A300642.P13268340557084114390

`A300646(A167499(n)+A005843(n+2))%A300607(n+1)`
-/

namespace A300642.P13268340557084114390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A300646 (A167499 n + A005843 (n + 2)).toNat) (A300607 (n + 1))

end

end A300642.P13268340557084114390

/-!
# A300643: Number of nX5 0..1 arrays with every element equal to 2, 3, 4 or 5 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A300643, there is no canonical definition to state claims against.
-/

/-! ## A300643.P14101421952005169745

`A300646(A155212(n)+13)`
-/

namespace A300643.P14101421952005169745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300646 (A155212 n + 13).toNat

end

end A300643.P14101421952005169745

/-! ## A300643.P2537692750198286575

`A300646(A056000(n)+15)`
-/

namespace A300643.P2537692750198286575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300646 (A056000 n + 15).toNat

end

end A300643.P2537692750198286575

/-! ## A300643.P7151946027889615710

`A300646(A374005(n+1))`
-/

namespace A300643.P7151946027889615710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300646 (A374005 (n + 1)).toNat

end

end A300643.P7151946027889615710

/-! ## A300643.P1942357147655914509

`A300646(A046691(n+3))`
-/

namespace A300643.P1942357147655914509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300646 (A046691 (n + 3)).toNat

end

end A300643.P1942357147655914509

/-! ## A300643.P91147595733341003

`A300646(eq[4, A193592(n)])`
-/

namespace A300643.P91147595733341003
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300646 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A300643.P91147595733341003

/-!
# A300644: Number of nX6 0..1 arrays with every element equal to 2, 3, 4 or 5 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A300644, there is no canonical definition to state claims against.
-/

/-! ## A300644.P15472547920760202396

`A300646(A374007(n+1))`
-/

namespace A300644.P15472547920760202396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300646 (A374007 (n + 1)).toNat

end

end A300644.P15472547920760202396

/-! ## A300644.P13514001135842557928

`A300646(A052905(n+3))`
-/

namespace A300644.P13514001135842557928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300646 (A052905 (n + 3)).toNat

end

end A300644.P13514001135842557928

/-! ## A300644.P1312876962185251737

`A300646(eq[3, A219347(n)])`
-/

namespace A300644.P1312876962185251737
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300646 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A300644.P1312876962185251737

/-! ## A300644.P10195822166300770812

`A300646(eq[16, A057728(n+1)])`
-/

namespace A300644.P10195822166300770812
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057728 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300646 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A300644.P10195822166300770812

/-! ## A300644.P9856726907882003097

`A300646(Δ[Δ[A006504(n+1)]])`
-/

namespace A300644.P9856726907882003097
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006504 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300646 (f1 (n + 1) - f1 n).toNat

end

end A300644.P9856726907882003097

/-!
# A300645: Number of nX7 0..1 arrays with every element equal to 2, 3, 4 or 5 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A300645, there is no canonical definition to state claims against.
-/

/-! ## A300645.P1463932281873030346

`A300646(A000217(n+6)+7)`
-/

namespace A300645.P1463932281873030346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300646 (A000217 (n + 6) + 7).toNat

end

end A300645.P1463932281873030346

/-! ## A300645.P3297113249678517322

`A300646(eq[8, A131818(n+1)])`
-/

namespace A300645.P3297113249678517322
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300646 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A300645.P3297113249678517322

/-! ## A300645.P1069937949994211365

`A300646(A374008(n+1))`
-/

namespace A300645.P1069937949994211365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300646 (A374008 (n + 1)).toNat

end

end A300645.P1069937949994211365

/-! ## A300645.P11002147306649403728

`A300646(eq[4, A219347(n)])`
-/

namespace A300645.P11002147306649403728
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300646 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A300645.P11002147306649403728

/-! ## A300645.P1507441982326763418

`A300646(eq[6, A193592(n)])`
-/

namespace A300645.P1507441982326763418
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300646 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A300645.P1507441982326763418

/-!
# A300646: T(n,k)=Number of nXk 0..1 arrays with every element equal to 2, 3, 4 or 5 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A300646, there is no canonical definition to state claims against.
-/

/-! ## A300646.P1415310978842198850

`A300776(n+1)-A348264(A157148(n))`
-/

namespace A300646.P1415310978842198850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300776 (n + 1) - A348264 (A157148 n).toNat

end

end A300646.P1415310978842198850

/-! ## A300646.P592869632286689323

`A301636(A146772(n))`
-/

namespace A300646.P592869632286689323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301636 (A146772 n).toNat

end

end A300646.P592869632286689323

/-!
# A300647: Number of same-trees of weight n in which all outdegrees are odd.

The programs for A300647, there is no canonical definition to state claims against.
-/

/-! ## A300647.P8200150873882229797

`A305572((n+1)/and(n+1, -(n+1)))`
-/

namespace A300647.P8200150873882229797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305572 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℚ))).toNat

end

end A300647.P8200150873882229797

/-! ## A300647.P3690046374952425138

`A305572(A000265(n+1))`
-/

namespace A300647.P3690046374952425138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305572 (A000265 (n + 1)).toNat

end

end A300647.P3690046374952425138

/-! ## A300647.P11453834228946500482

`A281145((n+1)/and(n+1, -(n+1)))`
-/

namespace A300647.P11453834228946500482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281145 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℚ))).toNat

end

end A300647.P11453834228946500482

/-! ## A300647.P6859569897322381425

`A281145((n+1)/(n+1-and(n, n+1)))`
-/

namespace A300647.P6859569897322381425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281145 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((n + 1 : ℤ) - (Nat.land n (n + 1) : ℤ) : ℚ))).toNat

end

end A300647.P6859569897322381425

/-! ## A300647.P10924023853682787508

`A281145(A153733(n)+1)`
-/

namespace A300647.P10924023853682787508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281145 (A153733 n + 1).toNat

end

end A300647.P10924023853682787508

/-! ## A300647.P642044414910482441

`A281145(A000265(2*(n+1)))`
-/

namespace A300647.P642044414910482441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281145 (A000265 (2 * (n + 1))).toNat

end

end A300647.P642044414910482441

/-! ## A300647.P3742844176011544372

`A281145(A227140(A227140(n+1)))`
-/

namespace A300647.P3742844176011544372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281145 (A227140 (A227140 (n + 1)).toNat).toNat

end

end A300647.P3742844176011544372

/-! ## A300647.P15501085214886540315

`A281145(A051537(∑[n+1]-and(n, n+1)))`
-/

namespace A300647.P15501085214886540315
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281145 (A051537 (∑ j ∈ Finset.range (n + 1), f1 j - Nat.land n (n + 1))).toNat

end

end A300647.P15501085214886540315

/-!
# A300648: Number of orderless same-trees of weight n in which all outdegrees are odd.

The programs for A300648, there is no canonical definition to state claims against.
-/

/-! ## A300648.P13044799117670039109

`A305610((n+1)/and(n+1, -(n+1)))`
-/

namespace A300648.P13044799117670039109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305610 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℚ))).toNat

end

end A300648.P13044799117670039109

/-! ## A300648.P16744471173089080840

`A305610(A000265(n+1))`
-/

namespace A300648.P16744471173089080840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305610 (A000265 (n + 1)).toNat

end

end A300648.P16744471173089080840

/-! ## A300648.P17188612780325397980

`A289078(or(1, (n+1)/and(n+1, -(n+1))))`
-/

namespace A300648.P17188612780325397980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289078 (Int.lor 1 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℚ)))).toNat

end

end A300648.P17188612780325397980

/-! ## A300648.P12384022409277047497

`A289078(A153733(n)+1)`
-/

namespace A300648.P12384022409277047497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289078 (A153733 n + 1).toNat

end

end A300648.P12384022409277047497

/-! ## A300648.P14365820201670910530

`A289078(A000265(2*(n+1)))`
-/

namespace A300648.P14365820201670910530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289078 (A000265 (2 * (n + 1))).toNat

end

end A300648.P14365820201670910530

/-! ## A300648.P13037753202821031285

`A289078(2*A025480(n)+1)`
-/

namespace A300648.P13037753202821031285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289078 (2 * A025480 n + 1).toNat

end

end A300648.P13037753202821031285

/-! ## A300648.P16504856533169335914

`A289078(or(1, A000265(n+1)))`
-/

namespace A300648.P16504856533169335914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289078 (Int.lor 1 (A000265 (n + 1))).toNat

end

end A300648.P16504856533169335914

/-! ## A300648.P6153876113813678121

`A289078(A227140(A227140(n+1)))`
-/

namespace A300648.P6153876113813678121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289078 (A227140 (A227140 (n + 1)).toNat).toNat

end

end A300648.P6153876113813678121

/-! ## A300648.P14485152444169520968

`A289078(A025480(n)+A025480(n)+1)`
-/

namespace A300648.P14485152444169520968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289078 (A025480 n + (A025480 n + 1)).toNat

end

end A300648.P14485152444169520968

/-!
# A300649: Number of same-trees of weight 2n + 1 in which all outdegrees are odd and all leaves greater than 1.

The programs for A300649, there is no canonical definition to state claims against.
-/

/-! ## A300649.P4872714294205808651

`A006241(Δ[n²])`
-/

namespace A300649.P4872714294205808651
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006241 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A300649.P4872714294205808651

/-! ## A300649.P3456413413056026637

`∏{p}[A006241(2*n+1), #]`
-/

namespace A300649.P3456413413056026637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006241 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A300649.P3456413413056026637

/-! ## A300649.P477784308266709146

`A006241(2*n+1)+and(1, A000031(2*n+1))`
-/

namespace A300649.P477784308266709146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006241 (2 * n + 1) + Int.land 1 (A000031 (2 * n + 1))

end

end A300649.P477784308266709146

/-! ## A300649.P16561934096795692812

`lcm(A006241(A005408(n)), A034947(n+1))`
-/

namespace A300649.P16561934096795692812
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A006241 (A005408 n).toNat) (A034947 (n + 1))

end

end A300649.P16561934096795692812

/-! ## A300649.P4222593796024893882

`and(1, A056220(n))*A006241(A005408(n))`
-/

namespace A300649.P4222593796024893882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A056220 n) * A006241 (A005408 n).toNat

end

end A300649.P4222593796024893882

/-! ## A300649.P2364060303817673902

`A006241(A005408(n))^(A098058(n+1)%2)`
-/

namespace A300649.P2364060303817673902
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006241 (A005408 n).toNat : ℚ) ^ (Int.tmod (A098058 (n + 1)) 2 : ℤ)

end

end A300649.P2364060303817673902

/-! ## A300649.P13465649998024365864

`A006241(2*n+1)*A006241(A098058(n+2))`
-/

namespace A300649.P13465649998024365864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006241 (2 * n + 1) * A006241 (A098058 (n + 2)).toNat

end

end A300649.P13465649998024365864

/-! ## A300649.P2556034337102222888

`A006241(2*n+1)+A000038(n+1)*A000079(2*n)`
-/

namespace A300649.P2556034337102222888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006241 (2 * n + 1) + A000038 (n + 1) * A000079 (2 * n)

end

end A300649.P2556034337102222888

/-! ## A300649.P9725455602102195714

`A006241(A098058(n+1))*A006241(A005408(n))`
-/

namespace A300649.P9725455602102195714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006241 (A098058 (n + 1)).toNat * A006241 (A005408 n).toNat

end

end A300649.P9725455602102195714

/-!
# A300650: Number of orderless same-trees of weight 2n + 1 in which all outdegrees are odd and all leaves greater than 1.

The programs for A300650, there is no canonical definition to state claims against.
-/

/-! ## A300650.P3013920212004324032

`A289079(Δ[n²])`
-/

namespace A300650.P3013920212004324032
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289079 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A300650.P3013920212004324032

/-! ## A300650.P18337495204174018125

`root(A289079(2*n+1), 2)²`
-/

namespace A300650.P18337495204174018125
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((A289079 (2 * n + 1) : ℝ) ^ (1 / (2 : ℝ))) ^ 2

end

end A300650.P18337495204174018125

/-! ## A300650.P13518301749780675316

`A289079(n+1+n)%(n+2)²`
-/

namespace A300650.P13518301749780675316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A289079 (n + 1 + n)) ((n + 2) ^ 2 : ℤ)

end

end A300650.P13518301749780675316

/-! ## A300650.P18305977184042721052

`gcd(floor(1/(n+1)), A289079((n+1)²-n²))`
-/

namespace A300650.P18305977184042721052
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ⌊1 / (n + 1 : ℚ)⌋ (A289079 ((n + 1) ^ 2 - n ^ 2))

end

end A300650.P18305977184042721052

/-! ## A300650.P16736523088666240586

`A028310(A289079(comp[2*n]))`
-/

namespace A300650.P16736523088666240586
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A289079 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)).toNat

end

end A300650.P16736523088666240586

/-! ## A300650.P11851683046027989298

`A000027(A289079(2*n+1))`
-/

namespace A300650.P11851683046027989298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A289079 (2 * n + 1)).toNat

end

end A300650.P11851683046027989298

/-! ## A300650.P4505992058290044448

`and(A289041(n), A289079(2*n+1))`
-/

namespace A300650.P4505992058290044448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A289041 n) (A289079 (2 * n + 1))

end

end A300650.P4505992058290044448

/-! ## A300650.P4790830150835940512

`filter[A289079(2*n+1), A145568(#)]`
-/

namespace A300650.P4790830150835940512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289079 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A145568 (f1 j).toNat = 1) n)

end

end A300650.P4790830150835940512

/-! ## A300650.P4463675705221039870

`filter[A289079(2*n+1), A168046(#)]`
-/

namespace A300650.P4463675705221039870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289079 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A168046 (f1 j).toNat = 1) n)

end

end A300650.P4463675705221039870

/-! ## A300650.P9307226115375176248

`∑{d}[A289079(2*n+1), A000010(#)]`
-/

namespace A300650.P9307226115375176248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289079 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A300650.P9307226115375176248

/-!
# A300652: Number of enriched p-trees of weight 2n + 1 in which all outdegrees and all leaves are odd.

The programs for A300652, there is no canonical definition to state claims against.
-/

/-! ## A300652.P15659461898308846943

`A213594(A150922(n))`
-/

namespace A300652.P15659461898308846943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213594 (A150922 n).toNat

end

end A300652.P15659461898308846943

/-! ## A300652.P15819658262908758015

`A005425(n)-A324829(A054726(n))`
-/

namespace A300652.P15819658262908758015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005425 n - A324829 (A054726 n).toNat

end

end A300652.P15819658262908758015

/-! ## A300652.P784966588157837025

`A105518(A048118(n+3))+A048088(n+1)`
-/

namespace A300652.P784966588157837025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105518 (A048118 (n + 3)).toNat + A048088 (n + 1)

end

end A300652.P784966588157837025

/-!
# A300653: Square array T(n, k) (n >= 1, k >= 1) read by antidiagonals upwards: T(n, k) is the k-th positive number whose binary representation appears as a substring in the binary representation of 1/n (ignoring the radix point and adding trailing zeros if necessary in case of a terminating expansion).

The programs for A300653, there is no canonical definition to state claims against.
-/

/-! ## A300653.P14126567935020141174

`A082859(A347618(n))+A059268(n)`
-/

namespace A300653.P14126567935020141174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082859 (A347618 n).toNat + A059268 n

end

end A300653.P14126567935020141174

/-! ## A300653.P17176709553129692167

`A307598(A322549(n))+A059268(n)`
-/

namespace A300653.P17176709553129692167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307598 (A322549 n).toNat + A059268 n

end

end A300653.P17176709553129692167

/-! ## A300653.P7546447642551364748

`and(-A347618(A322549(n)), A256009(n))`
-/

namespace A300653.P7546447642551364748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A347618 (A322549 n).toNat) (A256009 n)

end

end A300653.P7546447642551364748

/-! ## A300653.P4934740835023818091

`A124762(A145140(n+1))+A059268(n)`
-/

namespace A300653.P4934740835023818091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124762 (A145140 (n + 1)).toNat + A059268 n

end

end A300653.P4934740835023818091

/-! ## A300653.P11587874562859888348

`A292272(A256009(n)%A256013(n+1))`
-/

namespace A300653.P11587874562859888348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292272 (Int.tmod (A256009 n) (A256013 (n + 1))).toNat

end

end A300653.P11587874562859888348

/-!
# A300655: a(n) is the length of the longest contiguous block of ones in the binary expansion of 1/n.

The programs for A300655, there is no canonical definition to state claims against.
-/

/-! ## A300655.P5427435052597846324

`A070940(A124778(n)+A025480(n))`
-/

namespace A300655.P5427435052597846324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070940 (A124778 n + A025480 n).toNat

end

end A300655.P5427435052597846324

/-! ## A300655.P5435910863969543215

`val(A278222(A204984(n+1)), 2)`
-/

namespace A300655.P5435910863969543215
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A278222 (A204984 (n + 1)).toNat).toNat 2

end

end A300655.P5435910863969543215

/-! ## A300655.P3141397625456938773

`val(A278222(A204992(2*(n+1))), 2)`
-/

namespace A300655.P3141397625456938773
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A278222 (A204992 (2 * (n + 1))).toNat).toNat 2

end

end A300655.P3141397625456938773

/-! ## A300655.P9937655813778110564

`val(A278222(lcm(2, A204992(n+1))/2), 2)`
-/

namespace A300655.P9937655813778110564
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A278222 (SequenceMachineLib.roundAway ((Int.lcm 2 (A204992 (n + 1)) : ℚ) / 2)).toNat).toNat 2

end

end A300655.P9937655813778110564

/-! ## A300655.P16247837596255855133

`val(A278222(A204983(n+1)/(n+1)), 2)`
-/

namespace A300655.P16247837596255855133
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A278222 (SequenceMachineLib.roundAway ((A204983 (n + 1) : ℚ) / (n + 1 : ℚ))).toNat).toNat 2

end

end A300655.P16247837596255855133

/-!
# A300656: Triangle read by rows: T(n,k) = 30*k^2*(n-k)^2 + 1; n >= 0, 0 <= k <= n.

The programs for A300656, the canonical program `A300656.P11645637042434351895` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A300656 has offset 0).

The definition of A300656 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A300656.P11645637042434351895

`A158558(A004247(n))`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A300656

/-- `A158558(A004247(n))` -/
def P11645637042434351895.Spec : Prop :=
  ∀ n, P11645637042434351895.a n = A300656 n

theorem P11645637042434351895.correct : P11645637042434351895.Spec := by
  intro n
  simp only [A300656]

end A300656

/-! ## A300656.P15419182144027802124

`A158558(A077028(n)-1)`
-/

namespace A300656.P15419182144027802124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158558 (A077028 n - 1).toNat

end

end A300656.P15419182144027802124

namespace A300656

/-- `A158558(A077028(n)-1)` -/
def P15419182144027802124.Spec : Prop :=
  ∀ n, P15419182144027802124.a n = A300656 n

end A300656

/-! ## A300656.P13586092198137659309

`A158558(1-A176270(n))`
-/

namespace A300656.P13586092198137659309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158558 (1 - A176270 n).toNat

end

end A300656.P13586092198137659309

namespace A300656

/-- `A158558(1-A176270(n))` -/
def P13586092198137659309.Spec : Prop :=
  ∀ n, P13586092198137659309.a n = A300656 n

end A300656

/-! ## A300656.P6949135460056897253

`A158558((A077028(n)+n)%(n+1))`
-/

namespace A300656.P6949135460056897253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158558 (Int.tmod (A077028 n + (n : ℤ)) (n + 1 : ℤ)).toNat

end

end A300656.P6949135460056897253

namespace A300656

/-- `A158558((A077028(n)+n)%(n+1))` -/
def P6949135460056897253.Spec : Prop :=
  ∀ n, P6949135460056897253.a n = A300656 n

end A300656

/-! ## A300656.P17652898843114361482

`A158558(A002262(n)*A025581(n))`
-/

namespace A300656.P17652898843114361482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158558 (A002262 n * A025581 n).toNat

end

end A300656.P17652898843114361482

namespace A300656

/-- `A158558(A002262(n)*A025581(n))` -/
def P17652898843114361482.Spec : Prop :=
  ∀ n, P17652898843114361482.a n = A300656 n

end A300656

/-! ## A300656.P9137352695441203396

`A128470(A004247(n)²)`
-/

namespace A300656.P9137352695441203396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128470 (A004247 n ^ 2).toNat

end

end A300656.P9137352695441203396

namespace A300656

/-- `A128470(A004247(n)²)` -/
def P9137352695441203396.Spec : Prop :=
  ∀ n, P9137352695441203396.a n = A300656 n

end A300656

/-! ## A300656.P18272366196064930723

`10*A008585(A004247(n)²)+1`
-/

namespace A300656.P18272366196064930723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * A008585 (A004247 n ^ 2).toNat + 1

end

end A300656.P18272366196064930723

namespace A300656

/-- `10*A008585(A004247(n)²)+1` -/
def P18272366196064930723.Spec : Prop :=
  ∀ n, P18272366196064930723.a n = A300656 n

end A300656

/-! ## A300656.P17292565611601526063

`A016777(10*A004247(n)²)`
-/

namespace A300656.P17292565611601526063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 (10 * A004247 n ^ 2).toNat

end

end A300656.P17292565611601526063

namespace A300656

/-- `A016777(10*A004247(n)²)` -/
def P17292565611601526063.Spec : Prop :=
  ∀ n, P17292565611601526063.a n = A300656 n

end A300656

/-! ## A300656.P6879577943735226289

`A001651(5*(2*A004247(n))²+1)`
-/

namespace A300656.P6879577943735226289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001651 (5 * (2 * A004247 n) ^ 2 + 1).toNat

end

end A300656.P6879577943735226289

namespace A300656

/-- `A001651(5*(2*A004247(n))²+1)` -/
def P6879577943735226289.Spec : Prop :=
  ∀ n, P6879577943735226289.a n = A300656 n

end A300656

/-!
# A300657: a(n) = Sum_{d|n} sigma(d) mod d.

The programs for A300657, the canonical program `A300657.P2454119295566594023` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A300657 has offset 1).

The definition of A300657 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A300657.P2454119295566594023

`∑{d}[n+1, A054024(#)]`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A300657

/-- `∑{d}[n+1, A054024(#)]` -/
def P2454119295566594023.Spec : Prop :=
  ∀ n, P2454119295566594023.a n = A300657 (n + 1)

theorem P2454119295566594023.correct : P2454119295566594023.Spec := by
  intro n
  simp only [A300657, Nat.add_sub_cancel]

end A300657

/-! ## A300657.P3158781908860961197

`∑{d}[n+1, A000203(#)%#]`
-/

namespace A300657.P3158781908860961197
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), Int.tmod (A000203 d) (d : ℤ)

end

end A300657.P3158781908860961197

namespace A300657

/-- `∑{d}[n+1, A000203(#)%#]` -/
def P3158781908860961197.Spec : Prop :=
  ∀ n, P3158781908860961197.a n = A300657 (n + 1)

end A300657

/-! ## A300657.P11704592434218429982

`∑{d}[n+1, A001065(#)%#]`
-/

namespace A300657.P11704592434218429982
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), Int.tmod (A001065 d) (d : ℤ)

end

end A300657.P11704592434218429982

namespace A300657

/-- `∑{d}[n+1, A001065(#)%#]` -/
def P11704592434218429982.Spec : Prop :=
  ∀ n, P11704592434218429982.a n = A300657 (n + 1)

end A300657

/-! ## A300657.P1410446336326063743

`∑{d}[n+1, (#-A033879(#))%#]`
-/

namespace A300657.P1410446336326063743
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), Int.tmod ((d : ℤ) - A033879 d) (d : ℤ)

end

end A300657.P1410446336326063743

namespace A300657

/-- `∑{d}[n+1, (#-A033879(#))%#]` -/
def P1410446336326063743.Spec : Prop :=
  ∀ n, P1410446336326063743.a n = A300657 (n + 1)

end A300657

/-! ## A300657.P975686831396452673

`A187793(n+1)%A270660(n+1)-A296075(n+1)`
-/

namespace A300657.P975686831396452673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A187793 (n + 1)) (A270660 (n + 1)) - A296075 (n + 1)

end

end A300657.P975686831396452673

namespace A300657

/-- `A187793(n+1)%A270660(n+1)-A296075(n+1)` -/
def P975686831396452673.Spec : Prop :=
  ∀ n, P975686831396452673.a n = A300657 (n + 1)

end A300657

/-!
# A300658: Numbers m that divide sigma(sigma(m) - m) where sigma is the sum of divisors function (A000203).

The programs for A300658, there is no canonical definition to state claims against.
-/

/-! ## A300658.P14819852513521933511

`record[gcd(2*(n+2), A072869(2*(n+2)))]`
-/

namespace A300658.P14819852513521933511
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (2 * (n + 2) : ℤ) (A072869 (2 * (n + 2)))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A300658.P14819852513521933511

/-!
# A300659: Product of digits of n!.

The programs for A300659, the canonical program `A300659.P792870857574255436` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A300659 has offset 0).

The definition of A300659 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A300659.P792870857574255436

`n*a(n-1)%4` with `a(0)=1`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A300659

/-- `n*a(n-1)%4` -/
def P792870857574255436.Spec : Prop :=
  ∀ n, (P792870857574255436.a n : ℤ) = A300659 n

theorem P792870857574255436.correct : P792870857574255436.Spec := by
  intro n
  simp only [A300659]

end A300659

/-!
# A300660: Number of unlabeled rooted phylogenetic trees with n (leaf-) nodes such that for each inner node all children are either leaves or roots of distinct subtrees.

The programs for A300660, there is no canonical definition to state claims against.
-/

/-! ## A300660.P14275636823709860411

`A316784(2^n)%(5^n)`
-/

namespace A300660.P14275636823709860411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A316784 (2 ^ n)) (5 ^ n : ℤ)

end

end A300660.P14275636823709860411

/-! ## A300660.P6105879351037093448

`A316784(A000079(n))-floor(acot(n))`
-/

namespace A300660.P6105879351037093448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316784 (A000079 n).toNat - ⌊SequenceMachineLib.acot (n : ℝ)⌋

end

end A300660.P6105879351037093448

/-! ## A300660.P17291548161214852191

`A316784(A000079(n))-A000007(n)`
-/

namespace A300660.P17291548161214852191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316784 (A000079 n).toNat - A000007 n

end

end A300660.P17291548161214852191

/-! ## A300660.P3216507015329535266

`A316784(A000079(n))-A010894(n)`
-/

namespace A300660.P3216507015329535266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316784 (A000079 n).toNat - A010894 (n + 21)

end

end A300660.P3216507015329535266

/-! ## A300660.P18021215309114816455

`A316784(A000079(n))-A063524(n+1)`
-/

namespace A300660.P18021215309114816455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316784 (A000079 n).toNat - A063524 (n + 1)

end

end A300660.P18021215309114816455

/-!
# A300662: Expansion of 1/(1 - x - Sum_{k>=2} prime(k-1)*x^k).

The programs for A300662, there is no canonical definition to state claims against.
-/

/-! ## A300662.P18360150199253001044

`A253081(ceil(2^(n-1))-1)`
-/

namespace A300662.P18360150199253001044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253081 (⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉ - 1).toNat

end

end A300662.P18360150199253001044

/-! ## A300662.P4572100063759474511

`A253081(A011782(n))-2`
-/

namespace A300662.P4572100063759474511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253081 (A011782 n).toNat - 2

end

end A300662.P4572100063759474511

/-! ## A300662.P550159191135152433

`A055887(n)-A117138(A348290(n+4))`
-/

namespace A300662.P550159191135152433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055887 n - A117138 (A348290 (n + 4)).toNat

end

end A300662.P550159191135152433

/-! ## A300662.P7474655635287385255

`A055887(n)-A025456(A000166(n))`
-/

namespace A300662.P7474655635287385255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055887 n - A025456 (A000166 n).toNat

end

end A300662.P7474655635287385255

/-!
# A300664: Infinitary 3-nondeficient numbers: numbers k such that isigma(k) >= 3*k, where isigma(k) is the sum of infinitary divisors of k (A049417).

The programs for A300664, there is no canonical definition to state claims against.
-/

/-! ## A300664.P15442464317144288370

`A175742(A028310(n))%A179669(A032557(n+1))`
-/

namespace A300664.P15442464317144288370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A175742 (A028310 n).toNat) (A179669 (A032557 (n + 1)).toNat)

end

end A300664.P15442464317144288370

/-! ## A300664.P977848846835775667

`A293187(n+1)%A344177(n+5)`
-/

namespace A300664.P977848846835775667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A293187 (n + 1)) (A344177 (n + 5))

end

end A300664.P977848846835775667

/-!
# A300665: Number of n-step paths made by a chess king, starting from the corner of an infinite chessboard, and never revisiting a cell.

The programs for A300665, there is no canonical definition to state claims against.
-/

/-! ## A300665.P8356394999741584611

`A156250(floor(sqrt(A090249(n))))`
-/

namespace A300665.P8356394999741584611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156250 (Int.sqrt (A090249 n)).toNat

end

end A300665.P8356394999741584611

/-! ## A300665.P2819140647277273481

`A156250(round(sqrt(A090249(n))))`
-/

namespace A300665.P2819140647277273481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156250 (SequenceMachineLib.roundAway (Real.sqrt (A090249 n : ℝ))).toNat

end

end A300665.P2819140647277273481

/-!
# A300666: Number of ways to write n as x^2 + y^2 + z^2 + w^2 with nonnegative integers x,y,z,w and z <= w such that x or 2*y is a square and x + 3*y is also a square.

The programs for A300666, there is no canonical definition to state claims against.
-/

/-! ## A300666.P17173915642838413978

`A229830(A036650(n)+2+n)`
-/

namespace A300666.P17173915642838413978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229830 (A036650 n + 2 + (n : ℤ)).toNat

end

end A300666.P17173915642838413978

/-!
# A300667: Number of ways to write n as x^2 + y^2 + z^2 + w^2 with x,y,z,w nonnegative integers and z <= w such that 3*x or y is a square and x + 2*y is also a square.

The programs for A300667, there is no canonical definition to state claims against.
-/

/-! ## A300667.P11679598854342083008

`A275297(n)+A168184(A088625(n)/7)`
-/

namespace A300667.P11679598854342083008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275297 n + A168184 (SequenceMachineLib.roundAway ((A088625 n : ℚ) / 7)).toNat

end

end A300667.P11679598854342083008

/-! ## A300667.P4597845227214215563

`A332897(A276320(3*n+1)*A346097(n+1))`
-/

namespace A300667.P4597845227214215563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332897 (A276320 (3 * n + 1) * A346097 (n + 1)).toNat

end

end A300667.P4597845227214215563

/-! ## A300667.P3716649900365301548

`A070402(xor(n+1, A166467(n)))`
-/

namespace A300667.P3716649900365301548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070402 (Int.xor (n + 1 : ℤ) (A166467 n)).toNat

end

end A300667.P3716649900365301548

/-! ## A300667.P8027479999538344019

`A275297(n)+A168184(A088625(n))`
-/

namespace A300667.P8027479999538344019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275297 n + A168184 (A088625 n).toNat

end

end A300667.P8027479999538344019

/-! ## A300667.P11431839556790582512

`A377432(A104294(n+2))+A275297(n)`
-/

namespace A300667.P11431839556790582512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377432 (A104294 (n + 2)).toNat + A275297 n

end

end A300667.P11431839556790582512

/-!
# A300668: a(n) = A000016(2*n).

The programs for A300668, the canonical program `A300668.P3762773084760890773` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A300668 has offset 0).

The definition of A300668 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000016, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A300668.P3762773084760890773

`A000016(2*n)`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A300668

/-- `A000016(2*n)` -/
def P3762773084760890773.Spec : Prop :=
  ∀ n, P3762773084760890773.a n = A300668 n

theorem P3762773084760890773.correct : P3762773084760890773.Spec := by
  intro n
  simp only [A300668]

end A300668

/-! ## A300668.P912032980843740752

`A063776(abs(1-n)+n+1)/2`
-/

namespace A300668.P912032980843740752
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A063776 (|1 - (n : ℤ)| + (n + 1 : ℤ)).toNat : ℚ) / 2

end

end A300668.P912032980843740752

namespace A300668

/-- `A063776(abs(1-n)+n+1)/2` -/
def P912032980843740752.Spec : Prop :=
  ∀ n, P912032980843740752.a n = (A300668 n : ℚ)

end A300668

/-! ## A300668.P6979682956751339341

`A096010(A004277(n))-1`
-/

namespace A300668.P6979682956751339341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096010 (A004277 n).toNat - 1

end

end A300668.P6979682956751339341

namespace A300668

/-- `A096010(A004277(n))-1` -/
def P6979682956751339341.Spec : Prop :=
  ∀ n, P6979682956751339341.a n = A300668 n

end A300668

/-! ## A300668.P15221758984998730239

`A114702(A004278(n+2))`
-/

namespace A300668.P15221758984998730239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114702 (A004278 (n + 2)).toNat

end

end A300668.P15221758984998730239

namespace A300668

/-- `A114702(A004278(n+2))` -/
def P15221758984998730239.Spec : Prop :=
  ∀ n, P15221758984998730239.a n = A300668 n

end A300668

/-! ## A300668.P16854411199449185245

`∑{d}[A004277(n), A051841(#)]`
-/

namespace A300668.P16854411199449185245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A051841 d

end

end A300668.P16854411199449185245

namespace A300668

/-- `∑{d}[A004277(n), A051841(#)]` -/
def P16854411199449185245.Spec : Prop :=
  ∀ n, P16854411199449185245.a n = A300668 n

end A300668

/-! ## A300668.P5916239349321704815

`∑{d}[A028310(n), A054664(#)]`
-/

namespace A300668.P5916239349321704815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A054664 d

end

end A300668.P5916239349321704815

namespace A300668

/-- `∑{d}[A028310(n), A054664(#)]` -/
def P5916239349321704815.Spec : Prop :=
  ∀ n, P5916239349321704815.a n = A300668 n

end A300668

/-! ## A300668.P1775899849658778129

`A096010(A004273(n)+1)-1`
-/

namespace A300668.P1775899849658778129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096010 (A004273 n + 1).toNat - 1

end

end A300668.P1775899849658778129

namespace A300668

/-- `A096010(A004273(n)+1)-1` -/
def P1775899849658778129.Spec : Prop :=
  ∀ n, P1775899849658778129.a n = A300668 n

end A300668

/-! ## A300668.P17306817030991090509

`lcm(2, A000116(n))-A000013(n)`
-/

namespace A300668.P17306817030991090509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (A000116 n) : ℤ) - A000013 n

end

end A300668.P17306817030991090509

namespace A300668

/-- `lcm(2, A000116(n))-A000013(n)` -/
def P17306817030991090509.Spec : Prop :=
  ∀ n, P17306817030991090509.a n = A300668 n

end A300668

/-! ## A300668.P13672819046882912269

`A096010(A057428(n)+Δ[n²])-1`
-/

namespace A300668.P13672819046882912269
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096010 (A057428 n + ((f1 (n + 1) : ℤ) - (f1 n : ℤ))).toNat - 1

end

end A300668.P13672819046882912269

namespace A300668

/-- `A096010(A057428(n)+Δ[n²])-1` -/
def P13672819046882912269.Spec : Prop :=
  ∀ n, P13672819046882912269.a n = A300668 n

end A300668

/-! ## A300668.P464735927840837481

`A096010(2*n+1-A057427(n))-1`
-/

namespace A300668.P464735927840837481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096010 ((2 * n + 1 : ℤ) - A057427 n).toNat - 1

end

end A300668.P464735927840837481

namespace A300668

/-- `A096010(2*n+1-A057427(n))-1` -/
def P464735927840837481.Spec : Prop :=
  ∀ n, P464735927840837481.a n = A300668 n

end A300668

/-! ## A300668.P7706616967808289661

`A052823(2*n)+2-A000013(2*n)`
-/

namespace A300668.P7706616967808289661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052823 (2 * n) + (2 - A000013 (2 * n))

end

end A300668.P7706616967808289661

namespace A300668

/-- `A052823(2*n)+2-A000013(2*n)` -/
def P7706616967808289661.Spec : Prop :=
  ∀ n, P7706616967808289661.a n = A300668 n

end A300668

/-! ## A300668.P10579497237871220139

`A000016(n)+A000116(n)-A000031(n)`
-/

namespace A300668.P10579497237871220139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000016 n + (A000116 n - A000031 n)

end

end A300668.P10579497237871220139

namespace A300668

/-- `A000016(n)+A000116(n)-A000031(n)` -/
def P10579497237871220139.Spec : Prop :=
  ∀ n, P10579497237871220139.a n = A300668 n

end A300668

/-! ## A300668.P6798981385860827453

`A000116(n)-A000013(n)%A000031(n)`
-/

namespace A300668.P6798981385860827453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000116 n - Int.tmod (A000013 n) (A000031 n)

end

end A300668.P6798981385860827453

namespace A300668

/-- `A000116(n)-A000013(n)%A000031(n)` -/
def P6798981385860827453.Spec : Prop :=
  ∀ n, P6798981385860827453.a n = A300668 n

end A300668

/-! ## A300668.P13595790205432142013

`A011782(2*n)-A327477(2*n)`
-/

namespace A300668.P13595790205432142013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (2 * n) - A327477 (2 * n)

end

end A300668.P13595790205432142013

namespace A300668

/-- `A011782(2*n)-A327477(2*n)` -/
def P13595790205432142013.Spec : Prop :=
  ∀ n, P13595790205432142013.a n = A300668 n

end A300668

/-! ## A300668.P10112320356497663921

`A300628(C(n, 2))`
-/

namespace A300668.P10112320356497663921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300628 (Nat.choose n 2)

end

end A300668.P10112320356497663921

namespace A300668

/-- `A300628(C(n, 2))` -/
def P10112320356497663921.Spec : Prop :=
  ∀ n, P10112320356497663921.a n = A300668 n

end A300668

/-! ## A300668.P2480843481393080641

`A300628(∑[n]-n)`
-/

namespace A300668.P2480843481393080641
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300628 (∑ j ∈ Finset.range (n + 1), f1 j - n)

end

end A300668.P2480843481393080641

namespace A300668

/-- `A300628(∑[n]-n)` -/
def P2480843481393080641.Spec : Prop :=
  ∀ n, P2480843481393080641.a n = A300668 n

end A300668

/-!
# A300669: Positive numbers k with two consecutive ones in the binary representation of 1/k.

The programs for A300669, there is no canonical definition to state claims against.
-/

/-! ## A300669.P7173684496268240090

`lt[1, A139353(xor(n, 2*n))]`
-/

namespace A300669.P7173684496268240090
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139353 (Nat.xor n (2 * n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A300669.P7173684496268240090

/-! ## A300669.P17080477879331988951

`lt[2, A136277(xor(n, 2*n))]`
-/

namespace A300669.P17080477879331988951
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136277 (Nat.xor n (2 * n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A300669.P17080477879331988951

/-! ## A300669.P3561750652504637812

`lt[4, A053737(xor(n, 2*n))]`
-/

namespace A300669.P3561750652504637812
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053737 (Nat.xor n (2 * n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A300669.P3561750652504637812

/-! ## A300669.P3973306843715170588

`comp[A300630(n+1)-1]+1`
-/

namespace A300669.P3973306843715170588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300630 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A300669.P3973306843715170588

/-! ## A300669.P5683459192480645734

`lt[8, A209639(xor(n, floor(n/2)))]`
-/

namespace A300669.P5683459192480645734
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209639 (Int.xor (n : ℤ) ⌊(n : ℚ) / 2⌋).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A300669.P5683459192480645734

/-! ## A300669.P101995532941358232

`lt[0, A153733(a(floor(n/2))+n*n%2)]` with `a(0)=0`
-/

namespace A300669.P101995532941358232
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f2 =>
  A153733 (f2 ⌊(n : ℚ) / 2⌋.toNat + ((n * (n % 2) : ℕ) : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A300669.P101995532941358232

/-! ## A300669.P6195056895637147376

`A101082(A277112(n+1))`
-/

namespace A300669.P6195056895637147376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101082 (A277112 (n + 1)).toNat

end

end A300669.P6195056895637147376

/-! ## A300669.P12550707174377552692

`eq[1, A057979(A277326(n))]`
-/

namespace A300669.P12550707174377552692
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (A277326 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A300669.P12550707174377552692

/-!
# A300670: Table read by antidiagonals: the n-th row is the lexicographically earliest sequence such that no k + 2 points of ((1, a(1)), (2, a(2)), ...) lie on a polynomial of degree k for k < n.

The programs for A300670, there is no canonical definition to state claims against.
-/

/-! ## A300670.P8019576422396890474

`A004736(n+1)+1-A094098(A155586(n))`
-/

namespace A300670.P8019576422396890474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1) + (1 - A094098 (A155586 n).toNat)

end

end A300670.P8019576422396890474

/-! ## A300670.P12941755026981242588

`A268830(n)+A010060(A347811(n))`
-/

namespace A300670.P12941755026981242588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268830 n + A010060 (A347811 n).toNat

end

end A300670.P12941755026981242588

/-! ## A300670.P2207337539054563556

`A001222(lcm(3, A099627(n)^A116433(n)))`
-/

namespace A300670.P2207337539054563556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.lcm 3 (SequenceMachineLib.roundAway ((A099627 n : ℚ) ^ (A116433 n : ℤ))))

end

end A300670.P2207337539054563556

/-! ## A300670.P1209212649153832161

`lcm(A120885(n+1), A327395(A297762(n+1)))`
-/

namespace A300670.P1209212649153832161
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A120885 (n + 1)) (A327395 (A297762 (n + 1)).toNat)

end

end A300670.P1209212649153832161

/-! ## A300670.P6189067764941204396

`A025581(n)+A025581(A007318(A094816(n)))`
-/

namespace A300670.P6189067764941204396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n + A025581 (A007318 (A094816 n).toNat).toNat

end

end A300670.P6189067764941204396

/-!
# A300671: Expansion of 1/(1 - Sum_{k>=1} x^prime(k)/(1 - x^prime(k))).

The programs for A300671, there is no canonical definition to state claims against.
-/

/-! ## A300671.P13161746442019987263

`A119016(n)-A097295(A196856(n+1))`
-/

namespace A300671.P13161746442019987263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119016 n - A097295 (A196856 (n + 1)).toNat

end

end A300671.P13161746442019987263

/-! ## A300671.P852136638038175434

`A266778(n)+A111660(A035564(2*n))`
-/

namespace A300671.P852136638038175434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266778 n + A111660 (A035564 (2 * n)).toNat

end

end A300671.P852136638038175434

/-! ## A300671.P5215273010829741615

`A195174(xor(A023506(n+1), A319632(n)))`
-/

namespace A300671.P5215273010829741615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195174 (Int.xor (A023506 (n + 1)) (A319632 n)).toNat

end

end A300671.P5215273010829741615

/-! ## A300671.P1904469658470319105

`A327219(2*(n+2))+A121902(A358907(n))`
-/

namespace A300671.P1904469658470319105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327219 (2 * (n + 2)) + A121902 (A358907 n).toNat

end

end A300671.P1904469658470319105

/-! ## A300671.P10519827149429829836

`A185226(3*n)+A030308(A107429(n+5))`
-/

namespace A300671.P10519827149429829836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185226 (3 * n) + A030308 (A107429 (n + 5)).toNat

end

end A300671.P10519827149429829836

/-!
# A300672: Expansion of 1/(1 - Sum_{p prime, k>=1} x^(p^k)/(1 - x^(p^k))).

The programs for A300672, there is no canonical definition to state claims against.
-/

/-! ## A300672.P12769046265689166966

`A154129(A330054(n))+A000701(n)`
-/

namespace A300672.P12769046265689166966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154129 (A330054 n).toNat + A000701 n

end

end A300672.P12769046265689166966

/-! ## A300672.P478042158253245306

`A105224(A008478(n+1))-A001221(2*n+1)`
-/

namespace A300672.P478042158253245306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105224 (A008478 (n + 1)).toNat - A001221 (2 * n + 1)

end

end A300672.P478042158253245306

/-!
# A300674: Number of monic irreducible polynomials of degree n over GF(8) that have a given nonzero trace.

The programs for A300674, there is no canonical definition to state claims against.
-/

/-! ## A300674.P3070668920736364493

`A110540(A167487(n+6)+1)`
-/

namespace A300674.P3070668920736364493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110540 (A167487 (n + 6) + 1).toNat

end

end A300674.P3070668920736364493

/-! ## A300674.P16875605149524575664

`A110540(A000217(n+7)+8)`
-/

namespace A300674.P16875605149524575664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110540 (A000217 (n + 7) + 8).toNat

end

end A300674.P16875605149524575664

/-! ## A300674.P10606247508470050159

`A110540(A055999(n+4)+14)`
-/

namespace A300674.P10606247508470050159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110540 (A055999 (n + 4) + 14).toNat

end

end A300674.P10606247508470050159

/-! ## A300674.P10736644447387853030

`A110540(A000096(n+7)-(n-1))`
-/

namespace A300674.P10736644447387853030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110540 (A000096 (n + 7) - ((n : ℤ) - 1)).toNat

end

end A300674.P10736644447387853030

/-! ## A300674.P9570620627988430509

`A110540(A000124(n+8)-(n+1))`
-/

namespace A300674.P9570620627988430509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110540 (A000124 (n + 8) - (n + 1 : ℤ)).toNat

end

end A300674.P9570620627988430509

/-!
# A300675: Number of monic irreducible polynomials of degree n over GF(16) that have a given nonzero trace.

The programs for A300675, there is no canonical definition to state claims against.
-/

/-! ## A300675.P3846635325633719093

`A042981(4*(n+1))`
-/

namespace A300675.P3846635325633719093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042981 (4 * (n + 1))

end

end A300675.P3846635325633719093

/-! ## A300675.P12769049835481709274

`A042982(4*(n+1))`
-/

namespace A300675.P12769049835481709274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042982 (4 * (n + 1))

end

end A300675.P12769049835481709274

/-! ## A300675.P8213581906958646

`A074029(4*(n+1))`
-/

namespace A300675.P8213581906958646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074029 (4 * (n + 1))

end

end A300675.P8213581906958646

/-! ## A300675.P3548282948458116172

`A074030(4*(n+1))`
-/

namespace A300675.P3548282948458116172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074030 (4 * (n + 1))

end

end A300675.P3548282948458116172

/-! ## A300675.P15880285781538308517

`A054660(2*(n+1))/2`
-/

namespace A300675.P15880285781538308517
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054660 (2 * (n + 1)) : ℚ) / 2

end

end A300675.P15880285781538308517

/-! ## A300675.P3942737272702876777

`A000048(4*(n+1))/2`
-/

namespace A300675.P3942737272702876777
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000048 (4 * (n + 1)) : ℚ) / 2

end

end A300675.P3942737272702876777

/-! ## A300675.P4769199423898090300

`record[A042981(A257088(n))]`
-/

namespace A300675.P4769199423898090300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042981 (A257088 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A300675.P4769199423898090300

/-! ## A300675.P9633239815876591040

`record[A042981(A022998(n+1))]`
-/

namespace A300675.P9633239815876591040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042981 (A022998 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A300675.P9633239815876591040

/-! ## A300675.P6697958652082211358

`record[A042982(A124356(n+1))]`
-/

namespace A300675.P6697958652082211358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042982 (A124356 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A300675.P6697958652082211358

/-! ## A300675.P9912911958861077042

`record[A042981(4*A028920(n))]`
-/

namespace A300675.P9912911958861077042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042981 (4 * A028920 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A300675.P9912911958861077042

/-!
# A300676: Number of n X n 0..1 arrays with every element equal to 0, 2, 3 or 6 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A300676, there is no canonical definition to state claims against.
-/

/-! ## A300676.P15250298072954888435

`A300682(∑[4*n]+1)`
-/

namespace A300676.P15250298072954888435
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300682 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A300676.P15250298072954888435

/-! ## A300676.P3219876888232307989

`record[A300682(∑[A266981(n)])]`
-/

namespace A300676.P3219876888232307989
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266981 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300682 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A300676.P3219876888232307989

/-! ## A300676.P13850577138405825895

`A300682(A001844(n))+char[14]`
-/

namespace A300676.P13850577138405825895
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  14

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300682 (A001844 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A300676.P13850577138405825895

/-! ## A300676.P16641847169205367476

`record[A300682(A226725(n+1)+1)]`
-/

namespace A300676.P16641847169205367476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300682 (A226725 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A300676.P16641847169205367476

/-! ## A300676.P17148912066756904624

`record[A003982(n)*A300682(n+1)]`
-/

namespace A300676.P17148912066756904624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A300682 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A300676.P17148912066756904624

/-!
# A300677: Number of nX3 0..1 arrays with every element equal to 0, 2, 3 or 6 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A300677, there is no canonical definition to state claims against.
-/

/-! ## A300677.P9383998217715614130

`A300375(n+1)+char[2]`
-/

namespace A300677.P9383998217715614130
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300375 (n + 1) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A300677.P9383998217715614130

/-! ## A300677.P2681990716215753720

`or(A185012(n), A300375(n+1))`
-/

namespace A300677.P2681990716215753720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A185012 n) (A300375 (n + 1))

end

end A300677.P2681990716215753720

/-! ## A300677.P10717050765971588939

`or(A003982(n²), A300375(n+1))`
-/

namespace A300677.P10717050765971588939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A003982 (n ^ 2)) (A300375 (n + 1))

end

end A300677.P10717050765971588939

/-! ## A300677.P9769712480382315744

`or(A000035(A225530(n)), A300375(n+1))`
-/

namespace A300677.P9769712480382315744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000035 (A225530 n).toNat) (A300375 (n + 1))

end

end A300677.P9769712480382315744

/-! ## A300677.P8174523441225392302

`or(A300375(n+1), A307985(A067126(n+1)))`
-/

namespace A300677.P8174523441225392302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A300375 (n + 1)) (A307985 (A067126 (n + 1)).toNat)

end

end A300677.P8174523441225392302

/-! ## A300677.P17710223866332645504

`A240353(2*n+1)+xor(A185012(n), A300375(n+1))`
-/

namespace A300677.P17710223866332645504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240353 (2 * n + 1) + Int.xor (A185012 n) (A300375 (n + 1))

end

end A300677.P17710223866332645504

/-! ## A300677.P9929994241205908849

`xor(A240353(A130822(n+1)), A300375(n+1))`
-/

namespace A300677.P9929994241205908849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A240353 (A130822 (n + 1)).toNat) (A300375 (n + 1))

end

end A300677.P9929994241205908849

/-!
# A300678: Number of nX4 0..1 arrays with every element equal to 0, 2, 3 or 6 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A300678, there is no canonical definition to state claims against.
-/

/-! ## A300678.P14087119127306455478

`A300682(∑[n+3]+7)`
-/

namespace A300678.P14087119127306455478
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300682 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A300678.P14087119127306455478

/-! ## A300678.P2176810481193704452

`A300682(A166136(n+2)-2)+char[A196464(n+1)-1]`
-/

namespace A300678.P2176810481193704452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196464 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300682 (A166136 (n + 2) - 2).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A300678.P2176810481193704452

/-! ## A300678.P15192531218222106734

`A300682(A166136(n+2)-2)+char[A248489(n+1)-1]`
-/

namespace A300678.P15192531218222106734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248489 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300682 (A166136 (n + 2) - 2).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A300678.P15192531218222106734

/-! ## A300678.P12258060718617422930

`A300682(A166136(n+2)-2)+char[A051875(n+3)-1]`
-/

namespace A300678.P12258060718617422930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051875 (n + 3) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300682 (A166136 (n + 2) - 2).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A300678.P12258060718617422930

/-! ## A300678.P8287235348725036158

`A300682(A166136(n+2)-2)+char[A119131(3*(n+1))-1]`
-/

namespace A300678.P8287235348725036158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119131 (3 * (n + 1)) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300682 (A166136 (n + 2) - 2).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A300678.P8287235348725036158

/-!
# A300679: Number of nX5 0..1 arrays with every element equal to 0, 2, 3 or 6 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A300679, there is no canonical definition to state claims against.
-/

/-! ## A300679.P296708425830237898

`A300682(A374005(n+1))`
-/

namespace A300679.P296708425830237898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300682 (A374005 (n + 1)).toNat

end

end A300679.P296708425830237898

/-! ## A300679.P11040975693680700713

`A300682(A167499(n+3))`
-/

namespace A300679.P11040975693680700713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300682 (A167499 (n + 3)).toNat

end

end A300679.P11040975693680700713

/-! ## A300679.P724350951863432755

`A300682(A155212(n)+13)`
-/

namespace A300679.P724350951863432755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300682 (A155212 n + 13).toNat

end

end A300679.P724350951863432755

/-! ## A300679.P15088601797858575528

`A300682(A056000(n)+15)`
-/

namespace A300679.P15088601797858575528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300682 (A056000 n + 15).toNat

end

end A300679.P15088601797858575528

/-! ## A300679.P16417703668493578383

`A300682(eq[7, A066657(n)])`
-/

namespace A300679.P16417703668493578383
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300682 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A300679.P16417703668493578383

/-!
# A300680: Number of nX6 0..1 arrays with every element equal to 0, 2, 3 or 6 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A300680, there is no canonical definition to state claims against.
-/

/-! ## A300680.P8107739253761932610

`A300682(A374007(n+1))`
-/

namespace A300680.P8107739253761932610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300682 (A374007 (n + 1)).toNat

end

end A300680.P8107739253761932610

/-! ## A300680.P646271584003889789

`A300682(A166136(n+4))`
-/

namespace A300680.P646271584003889789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300682 (A166136 (n + 4)).toNat

end

end A300680.P646271584003889789

/-! ## A300680.P1208782362730183583

`A300682(A056115(n)+21)`
-/

namespace A300680.P1208782362730183583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300682 (A056115 n + 21).toNat

end

end A300680.P1208782362730183583

/-! ## A300680.P15293682443055959080

`A300682(eq[6, A256910(n)])`
-/

namespace A300680.P15293682443055959080
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256910 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300682 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A300680.P15293682443055959080

/-! ## A300680.P7459582120222100081

`A300682(A167499(n+4)+1)`
-/

namespace A300680.P7459582120222100081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300682 (A167499 (n + 4) + 1).toNat

end

end A300680.P7459582120222100081

/-!
# A300681: Number of nX7 0..1 arrays with every element equal to 0, 2, 3 or 6 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A300681, there is no canonical definition to state claims against.
-/

/-! ## A300681.P5601701435341287092

`A300682(A374008(n+1))`
-/

namespace A300681.P5601701435341287092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300682 (A374008 (n + 1)).toNat

end

end A300681.P5601701435341287092

/-! ## A300681.P15604370513777958527

`A300682(A056119(n)+28)`
-/

namespace A300681.P15604370513777958527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300682 (A056119 n + 28).toNat

end

end A300681.P15604370513777958527

/-! ## A300681.P6770179880281747935

`A300682(eq[11, A066657(n)])`
-/

namespace A300681.P6770179880281747935
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300682 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A300681.P6770179880281747935

/-! ## A300681.P1667999581008315824

`A300682(A167499(n+5)+2)`
-/

namespace A300681.P1667999581008315824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300682 (A167499 (n + 5) + 2).toNat

end

end A300681.P1667999581008315824

/-! ## A300681.P412356530181011586

`A300682(A000124(n+6)+6)`
-/

namespace A300681.P412356530181011586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300682 (A000124 (n + 6) + 6).toNat

end

end A300681.P412356530181011586

/-!
# A300682: T(n,k)=Number of nXk 0..1 arrays with every element equal to 0, 2, 3 or 6 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A300682, there is no canonical definition to state claims against.
-/

/-! ## A300682.P2163365627332244396

`A300380(n+1)+A014646(A271456(n))`
-/

namespace A300682.P2163365627332244396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300380 (n + 1) + A014646 (A271456 n).toNat

end

end A300682.P2163365627332244396

/-! ## A300682.P13155593018022259575

`or(A217096(A014626(n)), A300380(n+1))`
-/

namespace A300682.P13155593018022259575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A217096 (A014626 n).toNat) (A300380 (n + 1))

end

end A300682.P13155593018022259575

/-! ## A300682.P5958363114654478661

`or(A235127(A000211(n)), A300380(n+1))`
-/

namespace A300682.P5958363114654478661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A235127 (A000211 n).toNat) (A300380 (n + 1))

end

end A300682.P5958363114654478661

/-! ## A300682.P11914651068618798344

`or(A300380(n+1), A307597(A000071(n+1)))`
-/

namespace A300682.P11914651068618798344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A300380 (n + 1)) (A307597 (A000071 (n + 1)).toNat)

end

end A300682.P11914651068618798344

/-! ## A300682.P10026047449936787931

`or(A010054(A175579(2*(n+2))), A300380(n+1))`
-/

namespace A300682.P10026047449936787931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A010054 (A175579 (2 * (n + 2))).toNat) (A300380 (n + 1))

end

end A300682.P10026047449936787931

/-!
# A300683: Number of n X n 0..1 arrays with every element equal to 1, 2, 3 or 6 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A300683, there is no canonical definition to state claims against.
-/

/-! ## A300683.P5554392798571090839

`A300689(∑[4*n]+1)`
-/

namespace A300683.P5554392798571090839
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300689 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A300683.P5554392798571090839

/-! ## A300683.P12787455727090444508

`record[A003982(n)*A300689(n+1)]`
-/

namespace A300683.P12787455727090444508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A300689 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A300683.P12787455727090444508

/-! ## A300683.P6059917623628575637

`record[A077606(n+1)*A300689(n+1)]`
-/

namespace A300683.P6059917623628575637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077606 (n + 1) * A300689 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A300683.P6059917623628575637

/-! ## A300683.P18041304546642686300

`A300689(A001844(n))+A056967(n)`
-/

namespace A300683.P18041304546642686300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300689 (A001844 n).toNat + A056967 n

end

end A300683.P18041304546642686300

/-! ## A300683.P10891015245585478803

`A300689(A001844(n))+A185294(n)`
-/

namespace A300683.P10891015245585478803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300689 (A001844 n).toNat + A185294 n

end

end A300683.P10891015245585478803

/-!
# A300684: Number of nX3 0..1 arrays with every element equal to 1, 2, 3 or 6 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A300684, there is no canonical definition to state claims against.
-/

/-! ## A300684.P4533773770298511356

`A300689(∑[n+2]+4)`
-/

namespace A300684.P4533773770298511356
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300689 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A300684.P4533773770298511356

/-! ## A300684.P7733505020324941515

`A300689(A167614(n+1))+A178798(n)`
-/

namespace A300684.P7733505020324941515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300689 (A167614 (n + 1)).toNat + A178798 n

end

end A300684.P7733505020324941515

/-! ## A300684.P7254178446657337363

`lcm(A033999(n), A300689(A167614(n+1)))`
-/

namespace A300684.P7254178446657337363
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A300689 (A167614 (n + 1)).toNat)

end

end A300684.P7254178446657337363

/-! ## A300684.P8611896914475645789

`A300689(A167614(n+1))+A008683(lcm(9, n+1))`
-/

namespace A300684.P8611896914475645789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300689 (A167614 (n + 1)).toNat + A008683 (Nat.lcm 9 (n + 1))

end

end A300684.P8611896914475645789

/-! ## A300684.P2496802368944800770

`lcm(A157142(n)%2, A300689(A000217(n+2)+3))`
-/

namespace A300684.P2496802368944800770
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (Int.tmod (A157142 n) 2) (A300689 (A000217 (n + 2) + 3).toNat)

end

end A300684.P2496802368944800770

/-!
# A300685: Number of nX4 0..1 arrays with every element equal to 1, 2, 3 or 6 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A300685, there is no canonical definition to state claims against.
-/

/-! ## A300685.P7586737163828551922

`A300689(A141214(n)+7)`
-/

namespace A300685.P7586737163828551922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300689 (A141214 n + 7).toNat

end

end A300685.P7586737163828551922

/-! ## A300685.P14695616044923604176

`A300689(A052905(n)+9)`
-/

namespace A300685.P14695616044923604176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300689 (A052905 n + 9).toNat

end

end A300685.P14695616044923604176

/-! ## A300685.P11181722729896867128

`A300689(A055999(n)+10)`
-/

namespace A300685.P11181722729896867128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300689 (A055999 n + 10).toNat

end

end A300685.P11181722729896867128

/-! ## A300685.P16021818339947942502

`A300689(A167614(n+2)+1)`
-/

namespace A300685.P16021818339947942502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300689 (A167614 (n + 2) + 1).toNat

end

end A300685.P16021818339947942502

/-! ## A300685.P1261645126444600285

`A300689(Δ[A264443(n)-n²])`
-/

namespace A300685.P1261645126444600285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300689 (f1 (n + 1) - f1 n).toNat

end

end A300685.P1261645126444600285

/-!
# A300686: Number of nX5 0..1 arrays with every element equal to 1, 2, 3 or 6 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A300686, there is no canonical definition to state claims against.
-/

/-! ## A300686.P13922718059698018341

`A300689(A155212(n)+13)`
-/

namespace A300686.P13922718059698018341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300689 (A155212 n + 13).toNat

end

end A300686.P13922718059698018341

/-! ## A300686.P9894923100622188958

`A300689(A056000(n)+15)`
-/

namespace A300686.P9894923100622188958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300689 (A056000 n + 15).toNat

end

end A300686.P9894923100622188958

/-! ## A300686.P2545396684282191966

`A300689(eq[6, A131818(n+1)])`
-/

namespace A300686.P2545396684282191966
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300689 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A300686.P2545396684282191966

/-! ## A300686.P8491415611883490180

`A300689(Δ[A264443(n)])`
-/

namespace A300686.P8491415611883490180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300689 (f1 (n + 1) - f1 n).toNat

end

end A300686.P8491415611883490180

/-!
# A300687: Number of nX6 0..1 arrays with every element equal to 1, 2, 3 or 6 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A300687, there is no canonical definition to state claims against.
-/

/-! ## A300687.P4394871632470437005

`A300689(eq[7, A131818(n+1)])`
-/

namespace A300687.P4394871632470437005
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300689 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A300687.P4394871632470437005

/-! ## A300687.P8322233147510430936

`A300689(A374007(n+1))`
-/

namespace A300687.P8322233147510430936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300689 (A374007 (n + 1)).toNat

end

end A300687.P8322233147510430936

/-! ## A300687.P5056984848423237899

`A300689(eq[3, A219347(n)])`
-/

namespace A300687.P5056984848423237899
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300689 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A300687.P5056984848423237899

/-! ## A300687.P6360698482233356976

`A300689(eq[5, A193592(n)])`
-/

namespace A300687.P6360698482233356976
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300689 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A300687.P6360698482233356976

/-! ## A300687.P718177570802694574

`A300689(A141214(n+3)-2)`
-/

namespace A300687.P718177570802694574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300689 (A141214 (n + 3) - 2).toNat

end

end A300687.P718177570802694574

/-!
# A300688: Number of nX7 0..1 arrays with every element equal to 1, 2, 3 or 6 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A300688, there is no canonical definition to state claims against.
-/

/-! ## A300688.P7566589291311542488

`A300689(eq[8, A131818(n+1)])`
-/

namespace A300688.P7566589291311542488
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300689 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A300688.P7566589291311542488

/-! ## A300688.P11800287795347834333

`A300689(A374008(n+1))`
-/

namespace A300688.P11800287795347834333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300689 (A374008 (n + 1)).toNat

end

end A300688.P11800287795347834333

/-! ## A300688.P13501210797106803246

`A300689(A055999(n+4))`
-/

namespace A300688.P13501210797106803246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300689 (A055999 (n + 4)).toNat

end

end A300688.P13501210797106803246

/-! ## A300688.P1223320442109094077

`A300689(eq[4, A219347(n)])`
-/

namespace A300688.P1223320442109094077
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300689 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A300688.P1223320442109094077

/-! ## A300688.P17283166986669031798

`A300689(eq[6, A193592(n)])`
-/

namespace A300688.P17283166986669031798
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300689 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A300688.P17283166986669031798

/-!
# A300689: T(n,k)=Number of nXk 0..1 arrays with every element equal to 1, 2, 3 or 6 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A300689, there is no canonical definition to state claims against.
-/

/-! ## A300689.P6796703354990659710

`A300427(n+1)+A010894(A009766(n))`
-/

namespace A300689.P6796703354990659710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300427 (n + 1) + A010894 ((A009766 n).toNat + 21)

end

end A300689.P6796703354990659710

/-! ## A300689.P14112969215565491227

`A300427(n+1)+A014954(A053802(n))`
-/

namespace A300689.P14112969215565491227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300427 (n + 1) + A014954 (A053802 n).toNat

end

end A300689.P14112969215565491227

/-! ## A300689.P10351305202624315344

`A300427(n+1)+A109527(A054907(n))`
-/

namespace A300689.P10351305202624315344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300427 (n + 1) + A109527 (A054907 n).toNat

end

end A300689.P10351305202624315344

/-! ## A300689.P4877526711062993865

`A300427(n+1)+A067898(A174127(n))`
-/

namespace A300689.P4877526711062993865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300427 (n + 1) + A067898 (A174127 n).toNat

end

end A300689.P4877526711062993865

/-!
# A300693: a(n) = number of edges in a concertina n-cube.

The programs for A300693, there is no canonical definition to state claims against.
-/

/-! ## A300693.P5321640899944471024

`record[A243753(n+2)*A300700(n)]`
-/

namespace A300693.P5321640899944471024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243753 (n + 2) * A300700 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A300693.P5321640899944471024

/-! ## A300693.P12648738125301014159

`n*A141206(A292809(n+1))`
-/

namespace A300693.P12648738125301014159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A141206 (A292809 (n + 1)).toNat

end

end A300693.P12648738125301014159

/-!
# A300694: a(n) = number of edges in a cocoon concertina n-cube.

The programs for A300694, there is no canonical definition to state claims against.
-/

/-! ## A300694.P1542145918719355161

`∑[A293228(A005260(n))]`
-/

namespace A300694.P1542145918719355161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293228 (A005260 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A300694.P1542145918719355161

/-!
# A300696: a(n) is the number of n-place formulas in first-order logic when variables are allowed to coincide.

The programs for A300696, there is no canonical definition to state claims against.
-/

/-! ## A300696.P12204065750629357410

`(A057427(n)+1)*A083355(n)`
-/

namespace A300696.P12204065750629357410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A057427 n + 1) * A083355 n

end

end A300696.P12204065750629357410

/-! ## A300696.P9189385381182341606

`(A178334(n)+1)*A083355(n)`
-/

namespace A300696.P9189385381182341606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A178334 n + 1) * A083355 n

end

end A300696.P9189385381182341606

/-! ## A300696.P13646864848614833326

`(2-A000007(n))*A083355(n)`
-/

namespace A300696.P13646864848614833326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A000007 n) * A083355 n

end

end A300696.P13646864848614833326

/-! ## A300696.P16944455260655256107

`(Δ[n²]-A004273(n))*A083355(n)`
-/

namespace A300696.P16944455260655256107
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - A004273 n) * A083355 n

end

end A300696.P16944455260655256107

/-! ## A300696.P1229210164308758079

`A020639(A004277(n))*A083355(n)`
-/

namespace A300696.P1229210164308758079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A004277 n).toNat * A083355 n

end

end A300696.P1229210164308758079

/-! ## A300696.P5712015754736521810

`A000629(n)/A000670(n)*A083355(n)`
-/

namespace A300696.P5712015754736521810
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000629 n : ℚ) / (A000670 n : ℚ) * (A083355 n : ℚ)

end

end A300696.P5712015754736521810

/-! ## A300696.P4932254376079343570

`A001037(A135973(n)-A066645(n))*A083355(n)`
-/

namespace A300696.P4932254376079343570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001037 (A135973 n - A066645 n).toNat * A083355 n

end

end A300696.P4932254376079343570

/-! ## A300696.P13824851720329934848

`A020639(A095726(n+1))*A083355(n)`
-/

namespace A300696.P13824851720329934848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A095726 (n + 1)).toNat * A083355 n

end

end A300696.P13824851720329934848

/-!
# A300697: Volumes of concertina hypercubes.

The programs for A300697, there is no canonical definition to state claims against.
-/

/-! ## A300697.P3755374565949199982

`2*A300698(n)`
-/

namespace A300697.P3755374565949199982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A300698 n

end

end A300697.P3755374565949199982

/-! ## A300697.P1323069358909729617

`∏{digits}[n, A300698(n)+A300698(#)]`
-/

namespace A300697.P1323069358909729617
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A300698 n + A300698 x).prod

end

end A300697.P1323069358909729617

/-! ## A300697.P1546578537342524538

`A300698(A004086(n))+A300698(n)`
-/

namespace A300697.P1546578537342524538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300698 (A004086 n).toNat + A300698 n

end

end A300697.P1546578537342524538

/-! ## A300697.P15190418556086972907

`A300698(A007095(n))+A300698(n)`
-/

namespace A300697.P15190418556086972907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300698 (A007095 n).toNat + A300698 n

end

end A300697.P15190418556086972907

/-! ## A300697.P4137217450618528137

`A300698(A007954(n))+A300698(n)`
-/

namespace A300697.P4137217450618528137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300698 (A007954 n).toNat + A300698 n

end

end A300697.P4137217450618528137

/-!
# A300698: Half volumes of concertina hypercubes: a(n) = A300697(n)/2.

The programs for A300698, there is no canonical definition to state claims against.
-/

/-! ## A300698.P2975779422201070344

`A300697(n)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A300698.P2975779422201070344
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A300697 n : ℚ) / 2

end

end A300698.P2975779422201070344

/-! ## A300698.P1313105513133951831

`A014682(A300697(n))`
-/

namespace A300698.P1313105513133951831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A300697 n).toNat

end

end A300698.P1313105513133951831

/-! ## A300698.P9143537424066870657

`A273943(lcm(2, A300697(n)))`
-/

namespace A300698.P9143537424066870657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (Int.lcm 2 (A300697 n))

end

end A300698.P9143537424066870657

/-!
# A300699: Irregular triangle read by rows: T(n, k) = number of vertices with rank k in concertina n-cube.

The programs for A300699, there is no canonical definition to state claims against.
-/

/-! ## A300699.P10847853023072809088

`A088459(∑[A188090(A000712(n))])`
-/

namespace A300699.P10847853023072809088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188090 (A000712 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088459 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A300699.P10847853023072809088

