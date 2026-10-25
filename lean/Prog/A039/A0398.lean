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
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
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
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B012.C000
import Seq.B013.C000
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
# A039800: Column 1 of Inverse partition triangle A038498.

The programs for A039800, there is no canonical definition to state claims against.
-/

/-! ## A039800.P6482529645684226760

`A038498(1+∑[n])`
-/

namespace A039800.P6482529645684226760
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038498 (1 + ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A039800.P6482529645684226760

/-! ## A039800.P1161802213338831176

`or(char[1], A038498(A000124(n)))`
-/

namespace A039800.P1161802213338831176
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A038498 (A000124 n).toNat)

end

end A039800.P1161802213338831176

/-! ## A039800.P15109399643117166397

`A038498(A000124(n))%A027689(n)`
-/

namespace A039800.P15109399643117166397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A038498 (A000124 n).toNat) (A027689 n)

end

end A039800.P15109399643117166397

/-! ## A039800.P7423798915452734716

`char[A069770(n)]*A038498(A000124(n))`
-/

namespace A039800.P7423798915452734716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069770 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A038498 (A000124 n).toNat

end

end A039800.P7423798915452734716

/-! ## A039800.P13994207948410126899

`A038498(A000124(n))+A000007(n+1)`
-/

namespace A039800.P13994207948410126899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038498 (A000124 n).toNat + A000007 (n + 1)

end

end A039800.P13994207948410126899

/-! ## A039800.P15078640599536955344

`A038498(A000124(n))+A000038(n+1)`
-/

namespace A039800.P15078640599536955344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038498 (A000124 n).toNat + A000038 (n + 1)

end

end A039800.P15078640599536955344

/-! ## A039800.P3233265456586408530

`A038498(A000124(n))+A000035(2*n)`
-/

namespace A039800.P3233265456586408530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038498 (A000124 n).toNat + A000035 (2 * n)

end

end A039800.P3233265456586408530

/-! ## A039800.P10725183627626367156

`A000034(2*n)*A038498(A000124(n))`
-/

namespace A039800.P10725183627626367156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (2 * n) * A038498 (A000124 n).toNat

end

end A039800.P10725183627626367156

/-! ## A039800.P7010139310075415374

`A038498(A000124(n))-A010673(n)%2`
-/

namespace A039800.P7010139310075415374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038498 (A000124 n).toNat - Int.tmod (A010673 n) 2

end

end A039800.P7010139310075415374

/-! ## A039800.P4178337786016522854

`A007318(C(2, n))*A038498(A000124(n))`
-/

namespace A039800.P4178337786016522854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A038498 (A000124 n).toNat

end

end A039800.P4178337786016522854

/-! ## A039800.P5486868481260202363

`A007318(and(3, -n))*A038498(A000124(n))`
-/

namespace A039800.P5486868481260202363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Int.land 3 (-(n : ℤ))).toNat * A038498 (A000124 n).toNat

end

end A039800.P5486868481260202363

/-! ## A039800.P15417867818603286950

`A038498(A000124(n))+char[A000108(n+9)]`
-/

namespace A039800.P15417867818603286950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (n + 9)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038498 (A000124 n).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A039800.P15417867818603286950

/-! ## A039800.P4205535572686579038

`A014963(6*(n+1))*A038498(A000124(n))`
-/

namespace A039800.P4205535572686579038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (6 * (n + 1)) * A038498 (A000124 n).toNat

end

end A039800.P4205535572686579038

/-! ## A039800.P17355386802021569640

`A038498(A000124(n))+A008683(12*(n+1))`
-/

namespace A039800.P17355386802021569640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038498 (A000124 n).toNat + A008683 (12 * (n + 1))

end

end A039800.P17355386802021569640

/-! ## A039800.P5923307657181179694

`A000041(C(2, n+2))*A038498(A000124(n))`
-/

namespace A039800.P5923307657181179694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose 2 (n + 2)) * A038498 (A000124 n).toNat

end

end A039800.P5923307657181179694

/-! ## A039800.P9344069054348507559

`A000108(C(2, n+2))*A038498(A000124(n))`
-/

namespace A039800.P9344069054348507559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (Nat.choose 2 (n + 2)) * A038498 (A000124 n).toNat

end

end A039800.P9344069054348507559

/-! ## A039800.P1879506880177576534

`A038498(A000124(n))^A000045(C(2, n)+2)`
-/

namespace A039800.P1879506880177576534
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038498 (A000124 n).toNat : ℚ) ^ (A000045 (Nat.choose 2 n + 2) : ℤ)

end

end A039800.P1879506880177576534

/-! ## A039800.P9800002155615100873

`log2(A020639(2*(n+1)))*A038498(A000124(n))`
-/

namespace A039800.P9800002155615100873
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A020639 (2 * (n + 1)) : ℝ) * (A038498 (A000124 n).toNat : ℝ)

end

end A039800.P9800002155615100873

/-! ## A039800.P827353513602895183

`A001222(A015913(n+1))*A038498(A000124(n))`
-/

namespace A039800.P827353513602895183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A015913 (n + 1)).toNat * A038498 (A000124 n).toNat

end

end A039800.P827353513602895183

/-! ## A039800.P5580288512038142337

`A038498(A000124(n))^A014963(C(n+2, 2))`
-/

namespace A039800.P5580288512038142337
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038498 (A000124 n).toNat : ℚ) ^ (A014963 (Nat.choose (n + 2) 2) : ℤ)

end

end A039800.P5580288512038142337

/-!
# A039801: Column 2 of Inverse partition triangle A038498.

The programs for A039801, there is no canonical definition to state claims against.
-/

/-! ## A039801.P11501440597574730804

`A038498(∑[n+1]+2)`
-/

namespace A039801.P11501440597574730804
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038498 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A039801.P11501440597574730804

/-! ## A039801.P16707356803572467176

`and(-1, A038498(A133263(n+1)))`
-/

namespace A039801.P16707356803572467176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A038498 (A133263 (n + 1)).toNat)

end

end A039801.P16707356803572467176

/-! ## A039801.P8412932464813177517

`or(char[1], A038498(A152948(n+3)))`
-/

namespace A039801.P8412932464813177517
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A038498 (A152948 (n + 3)).toNat)

end

end A039801.P8412932464813177517

/-! ## A039801.P15419581976007886776

`A038498(A133263(n+1))%A002148(n)`
-/

namespace A039801.P15419581976007886776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A038498 (A133263 (n + 1)).toNat) (A002148 n)

end

end A039801.P15419581976007886776

/-! ## A039801.P18274897582755323173

`char[A014681(n)]*A038498(A152948(n+3))`
-/

namespace A039801.P18274897582755323173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A038498 (A152948 (n + 3)).toNat

end

end A039801.P18274897582755323173

/-! ## A039801.P17499280665966649534

`char[A014682(n)]*A038498(A152948(n+3))`
-/

namespace A039801.P17499280665966649534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A038498 (A152948 (n + 3)).toNat

end

end A039801.P17499280665966649534

/-! ## A039801.P16448965473380673478

`char[A350603(n)]*A038498(A152948(n+3))`
-/

namespace A039801.P16448965473380673478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350603 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A038498 (A152948 (n + 3)).toNat

end

end A039801.P16448965473380673478

/-! ## A039801.P8137457214605836939

`A038498(A152948(n+3))+A000038(n+1)`
-/

namespace A039801.P8137457214605836939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038498 (A152948 (n + 3)).toNat + A000038 (n + 1)

end

end A039801.P8137457214605836939

/-! ## A039801.P18279430932426386494

`A038498(A152948(n+3))^(A000007(n)+1)`
-/

namespace A039801.P18279430932426386494
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038498 (A152948 (n + 3)).toNat : ℚ) ^ (A000007 n + 1 : ℤ)

end

end A039801.P18279430932426386494

/-! ## A039801.P5846872984662451822

`A007318(C(2, n))*A038498(A133263(n+1))`
-/

namespace A039801.P5846872984662451822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A038498 (A133263 (n + 1)).toNat

end

end A039801.P5846872984662451822

/-! ## A039801.P10288744697177047629

`A007318(C(2, n))*A038498(A152948(n+3))`
-/

namespace A039801.P10288744697177047629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A038498 (A152948 (n + 3)).toNat

end

end A039801.P10288744697177047629

/-! ## A039801.P4683590894424858262

`A038498(A152948(n+3))+A008683(4*(n+1))`
-/

namespace A039801.P4683590894424858262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038498 (A152948 (n + 3)).toNat + A008683 (4 * (n + 1))

end

end A039801.P4683590894424858262

/-! ## A039801.P9015642181162757006

`A014963(6*(n+1))*A038498(A152948(n+3))`
-/

namespace A039801.P9015642181162757006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (6 * (n + 1)) * A038498 (A152948 (n + 3)).toNat

end

end A039801.P9015642181162757006

/-! ## A039801.P4885204164543422483

`A038498(A133263(n+1))+val(A006530(n+1), 4)`
-/

namespace A039801.P4885204164543422483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038498 (A133263 (n + 1)).toNat + (SequenceMachineLib.valuation (A006530 (n + 1)).toNat 4 : ℤ)

end

end A039801.P4885204164543422483

/-! ## A039801.P15280041479061614989

`A038498(A133263(n+1))^(A002659(n+1)%2)`
-/

namespace A039801.P15280041479061614989
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038498 (A133263 (n + 1)).toNat : ℚ) ^ (Int.tmod (A002659 (n + 1)) 2 : ℤ)

end

end A039801.P15280041479061614989

/-! ## A039801.P3962369974404906623

`A014963(20*(n+1))*A038498(A133263(n+1))`
-/

namespace A039801.P3962369974404906623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (20 * (n + 1)) * A038498 (A133263 (n + 1)).toNat

end

end A039801.P3962369974404906623

/-! ## A039801.P4503780603121435020

`A000041(C(2, n+2))*A038498(A152948(n+3))`
-/

namespace A039801.P4503780603121435020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose 2 (n + 2)) * A038498 (A152948 (n + 3)).toNat

end

end A039801.P4503780603121435020

/-! ## A039801.P271950995470435049

`A000108(C(2, n+2))*A038498(A152948(n+3))`
-/

namespace A039801.P271950995470435049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (Nat.choose 2 (n + 2)) * A038498 (A152948 (n + 3)).toNat

end

end A039801.P271950995470435049

/-! ## A039801.P9396564827647334652

`A000010(-or(n, -2))*A038498(A152948(n+3))`
-/

namespace A039801.P9396564827647334652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (-Int.lor (n : ℤ) (-2)).toNat * A038498 (A152948 (n + 3)).toNat

end

end A039801.P9396564827647334652

/-! ## A039801.P4926961839346750584

`A000041(round(1/(n+1)))*A038498(A133263(n+1))`
-/

namespace A039801.P4926961839346750584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (SequenceMachineLib.roundAway (1 / (n + 1 : ℚ))).toNat * A038498 (A133263 (n + 1)).toNat

end

end A039801.P4926961839346750584

/-!
# A039802: Column 3 of Inverse partition triangle A038498.

The programs for A039802, there is no canonical definition to state claims against.
-/

/-! ## A039802.P17996042920071275091

`A038498(∑[n+2]+4)`
-/

namespace A039802.P17996042920071275091
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038498 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A039802.P17996042920071275091

/-! ## A039802.P3512052024265824612

`and(-1, A038498(A167614(n+1)))`
-/

namespace A039802.P3512052024265824612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A038498 (A167614 (n + 1)).toNat)

end

end A039802.P3512052024265824612

/-! ## A039802.P15134185672466827928

`or(char[1], A038498(A000217(n+2)+3))`
-/

namespace A039802.P15134185672466827928
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A038498 (A000217 (n + 2) + 3).toNat)

end

end A039802.P15134185672466827928

/-! ## A039802.P17345839925680943586

`A038498(A152950(n+3))%(n+2)²`
-/

namespace A039802.P17345839925680943586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A038498 (A152950 (n + 3)).toNat) ((n + 2) ^ 2 : ℤ)

end

end A039802.P17345839925680943586

/-! ## A039802.P7978233114875864136

`A038498(A167614(n+1))%A006222(n)`
-/

namespace A039802.P7978233114875864136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A038498 (A167614 (n + 1)).toNat) (A006222 n)

end

end A039802.P7978233114875864136

/-! ## A039802.P9345650869961505441

`A033999(n)²*A038498(A167614(n+1))`
-/

namespace A039802.P9345650869961505441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n ^ 2 * A038498 (A167614 (n + 1)).toNat

end

end A039802.P9345650869961505441

/-! ## A039802.P13331661338622845235

`char[A004498(n)]*A038498(A167614(n+1))`
-/

namespace A039802.P13331661338622845235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004498 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A038498 (A167614 (n + 1)).toNat

end

end A039802.P13331661338622845235

/-! ## A039802.P11947395417782566605

`A038498(A167614(n+1))+A000007(n+1)`
-/

namespace A039802.P11947395417782566605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038498 (A167614 (n + 1)).toNat + A000007 (n + 1)

end

end A039802.P11947395417782566605

/-! ## A039802.P17086524190828737601

`A038498(A167614(n+1))+A000038(n+1)`
-/

namespace A039802.P17086524190828737601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038498 (A167614 (n + 1)).toNat + A000038 (n + 1)

end

end A039802.P17086524190828737601

/-! ## A039802.P15875173636982241135

`A007318(C(2, n))*A038498(A167614(n+1))`
-/

namespace A039802.P15875173636982241135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A038498 (A167614 (n + 1)).toNat

end

end A039802.P15875173636982241135

/-! ## A039802.P18040226549451405915

`A014963(10*(n+1))*A038498(A167614(n+1))`
-/

namespace A039802.P18040226549451405915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (10 * (n + 1)) * A038498 (A167614 (n + 1)).toNat

end

end A039802.P18040226549451405915

/-! ## A039802.P13918632724648667459

`A038498(A000217(n+2)+3)%A048880(n+1)`
-/

namespace A039802.P13918632724648667459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A038498 (A000217 (n + 2) + 3).toNat) (A048880 (n + 1))

end

end A039802.P13918632724648667459

/-! ## A039802.P15140851837221154102

`A038498(A167614(n+1))+A008683(64*(n+1))`
-/

namespace A039802.P15140851837221154102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038498 (A167614 (n + 1)).toNat + A008683 (64 * (n + 1))

end

end A039802.P15140851837221154102

/-! ## A039802.P7549588626623571387

`A000005(gcd(n, n+1))*A038498(A167614(n+1))`
-/

namespace A039802.P7549588626623571387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (Nat.gcd n (n + 1)) * A038498 (A167614 (n + 1)).toNat

end

end A039802.P7549588626623571387

/-! ## A039802.P13004319995419629262

`A000041(round(1/(n+1)))*A038498(A167614(n+1))`
-/

namespace A039802.P13004319995419629262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (SequenceMachineLib.roundAway (1 / (n + 1 : ℚ))).toNat * A038498 (A167614 (n + 1)).toNat

end

end A039802.P13004319995419629262

/-! ## A039802.P9586369072368254276

`(3-2*A000034(n))²*A038498(A167499(n)+n)`
-/

namespace A039802.P9586369072368254276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 - 2 * A000034 n) ^ 2 * A038498 (A167499 n + (n : ℤ)).toNat

end

end A039802.P9586369072368254276

/-! ## A039802.P14250985279616725595

`A000045(A020639(2*(n+1)))*A038498(A167614(n+1))`
-/

namespace A039802.P14250985279616725595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A020639 (2 * (n + 1))).toNat * A038498 (A167614 (n + 1)).toNat

end

end A039802.P14250985279616725595

/-!
# A039803: Column 4 of inverse partition triangle A038498.

The programs for A039803, there is no canonical definition to state claims against.
-/

/-! ## A039803.P9792014512172236136

`A038498(∑[n+3]+7)`
-/

namespace A039803.P9792014512172236136
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038498 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A039803.P9792014512172236136

/-! ## A039803.P7350473920284016084

`A038498(A167614(n+2)+1)%A039833(n+1)`
-/

namespace A039803.P7350473920284016084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A038498 (A167614 (n + 2) + 1).toNat) (A039833 (n + 1))

end

end A039803.P7350473920284016084

/-! ## A039803.P13267053219982368781

`A038498(A167614(n+2)+1)%A033844(n)`
-/

namespace A039803.P13267053219982368781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A038498 (A167614 (n + 2) + 1).toNat) (A033844 n)

end

end A039803.P13267053219982368781

/-!
# A039804: Column 5 of Inverse partition triangle A038498.

The programs for A039804, there is no canonical definition to state claims against.
-/

/-! ## A039804.P16660205419964810233

`A038498(A167499(n+3))`
-/

namespace A039804.P16660205419964810233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038498 (A167499 (n + 3)).toNat

end

end A039804.P16660205419964810233

/-! ## A039804.P755331317066298859

`A038498(A077169(n+5))`
-/

namespace A039804.P755331317066298859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038498 (A077169 (n + 5)).toNat

end

end A039804.P755331317066298859

/-! ## A039804.P12837006404147881987

`A038498(A155212(n)+13)`
-/

namespace A039804.P12837006404147881987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038498 (A155212 n + 13).toNat

end

end A039804.P12837006404147881987

/-! ## A039804.P10377606777132147970

`A038498(A056000(n)+15)`
-/

namespace A039804.P10377606777132147970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038498 (A056000 n + 15).toNat

end

end A039804.P10377606777132147970

/-! ## A039804.P11953807640141889419

`A038498(A000124(n+4)+4)`
-/

namespace A039804.P11953807640141889419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038498 (A000124 (n + 4) + 4).toNat

end

end A039804.P11953807640141889419

/-! ## A039804.P2348272867993200741

`A038498(A000096(n+3)+6)`
-/

namespace A039804.P2348272867993200741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038498 (A000096 (n + 3) + 6).toNat

end

end A039804.P2348272867993200741

/-! ## A039804.P16564468219464028695

`A038498(A000217(n+4)+5)`
-/

namespace A039804.P16564468219464028695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038498 (A000217 (n + 4) + 5).toNat

end

end A039804.P16564468219464028695

/-! ## A039804.P18203808914911408709

`A038498(A055998(n+2)+8)`
-/

namespace A039804.P18203808914911408709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038498 (A055998 (n + 2) + 8).toNat

end

end A039804.P18203808914911408709

/-! ## A039804.P8920502643237011387

`A038498(A167614(n+2)+n+6)`
-/

namespace A039804.P8920502643237011387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038498 (A167614 (n + 2) + (n + 6 : ℤ)).toNat

end

end A039804.P8920502643237011387

/-! ## A039804.P511113232030023802

`A038498(A134227(n+4)-2*n)`
-/

namespace A039804.P511113232030023802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038498 (A134227 (n + 4) - (2 * n : ℤ)).toNat

end

end A039804.P511113232030023802

/-! ## A039804.P16440106032919624050

`A038498(A173036(n)+A016825(n))`
-/

namespace A039804.P16440106032919624050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038498 (A173036 n + A016825 n).toNat

end

end A039804.P16440106032919624050

/-!
# A039808: Shifts left under transform T where Ta is product of Partition Triangle A008284 with a.

The programs for A039808, there is no canonical definition to state claims against.
-/

/-! ## A039808.P12885044508186091361

`A245473(A148791(n))`
-/

namespace A039808.P12885044508186091361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245473 (A148791 n).toNat

end

end A039808.P12885044508186091361

/-! ## A039808.P5198583256472559957

`A226762(A163825(n+1))`
-/

namespace A039808.P5198583256472559957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226762 (A163825 (n + 1)).toNat

end

end A039808.P5198583256472559957

/-! ## A039808.P17982114465964487097

`A087188(eq[0, A111843(n)])`
-/

namespace A039808.P17982114465964487097
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111843 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087188 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A039808.P17982114465964487097

/-! ## A039808.P9520170418691688500

`A087188(eq[1, A114151(n)])`
-/

namespace A039808.P9520170418691688500
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114151 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087188 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A039808.P9520170418691688500

/-! ## A039808.P13621350039006126741

`A087188(lt[A113345(n), 2])`
-/

namespace A039808.P13621350039006126741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113345 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087188 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A039808.P13621350039006126741

/-!
# A039809: For n > 1, a(n) doubles under the transform T, where Ta is the matrix product of partition triangle A008284 with a, with a(1) = 1.

The programs for A039809, there is no canonical definition to state claims against.
-/

/-! ## A039809.P3968070638592837422

`ceil(A131408(n+1)/3)`
-/

namespace A039809.P3968070638592837422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A131408 (n + 1) : ℚ) / 3⌉

end

end A039809.P3968070638592837422

/-! ## A039809.P2225820563063816993

`round(A000007(n)+A131408(n+1)/3)`
-/

namespace A039809.P2225820563063816993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A000007 n : ℚ) + (A131408 (n + 1) : ℚ) / 3)

end

end A039809.P2225820563063816993

/-! ## A039809.P5731473318573173033

`floor(A000005(gcd(n, n+1))+A131408(n+1)/3)`
-/

namespace A039809.P5731473318573173033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000005 (Nat.gcd n (n + 1)) : ℚ) + (A131408 (n + 1) : ℚ) / 3⌋

end

end A039809.P5731473318573173033

/-! ## A039809.P9427065520588897220

`floor(A131408(n+1)/3--1%p?[A056847(n)])`
-/

namespace A039809.P9427065520588897220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056847 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A131408 (n + 1) : ℚ) / 3 - (Int.tmod (-1) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) : ℚ)⌋

end

end A039809.P9427065520588897220

/-! ## A039809.P18264294614765826603

`round((A131408(n+1)/3)^A081729(A008458(n)))`
-/

namespace A039809.P18264294614765826603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((A131408 (n + 1) : ℚ) / 3) ^ (A081729 (A008458 n).toNat : ℤ))

end

end A039809.P18264294614765826603

/-!
# A039810: Matrix square of Stirling2 triangle A008277: 2-levels set partitions of [n] into k first-level subsets.

The programs for A039810, there is no canonical definition to state claims against.
-/

/-! ## A039810.P11126703569250198806

`A130191(comp[∑[n]])`
-/

namespace A039810.P11126703569250198806
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130191 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A039810.P11126703569250198806

/-! ## A039810.P10286067896349886252

`A046817(A061579(n))`
-/

namespace A039810.P10286067896349886252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046817 (A061579 n).toNat

end

end A039810.P10286067896349886252

/-! ## A039810.P16579012764858549571

`A046817(A038722(n+1)-1)`
-/

namespace A039810.P16579012764858549571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046817 (A038722 (n + 1) - 1).toNat

end

end A039810.P16579012764858549571

/-! ## A039810.P4934744291221173330

`A046817(A038722(n+2))`
-/

namespace A039810.P4934744291221173330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046817 (A038722 (n + 2)).toNat

end

end A039810.P4934744291221173330

/-! ## A039810.P12338223601598036140

`A233357(n+1)/A166350(n+1)`
-/

namespace A039810.P12338223601598036140
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A233357 (n + 1) : ℚ) / (A166350 (n + 1) : ℚ)

end

end A039810.P12338223601598036140

/-! ## A039810.P12248063900502159451

`A233357(n+1)/(A002262(n)+1)!`
-/

namespace A039810.P12248063900502159451
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A233357 (n + 1) : ℚ) / (Nat.factorial (A002262 n + 1).toNat : ℚ)

end

end A039810.P12248063900502159451

/-!
# A039811: Triangle read by rows: matrix cube of the Stirling2 triangle A008277.

The programs for A039811, there is no canonical definition to state claims against.
-/

/-! ## A039811.P9751174705750119096

`xor(A046089(n+1), A185284((4-n)²))`
-/

namespace A039811.P9751174705750119096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A046089 (n + 1)) (A185284 ((4 - (n : ℤ)) ^ 2).toNat)

end

end A039811.P9751174705750119096

/-! ## A039811.P10881642997770280772

`A046089(n+1)-A184945(A130315(n+1))`
-/

namespace A039811.P10881642997770280772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046089 (n + 1) - A184945 (A130315 (n + 1)).toNat

end

end A039811.P10881642997770280772

/-!
# A039812: Triangle read by rows: matrix 4th power of the Stirling2 triangle A008277.

The programs for A039812, there is no canonical definition to state claims against.
-/

/-! ## A039812.P16568029682801434031

`A007401(A060281(n+1)-A205295(2*n+3))`
-/

namespace A039812.P16568029682801434031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007401 (A060281 (n + 1) - A205295 (2 * n + 3)).toNat

end

end A039812.P16568029682801434031

/-!
# A039813: Matrix 5th power of Stirling2 triangle A008277.

The programs for A039813, there is no canonical definition to state claims against.
-/

/-! ## A039813.P4729803514590712552

`A135553(A330509(n+1))`
-/

namespace A039813.P4729803514590712552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135553 (A330509 (n + 1)).toNat

end

end A039813.P4729803514590712552

/-!
# A039814: Matrix square of Stirling-1 triangle A008275.

The programs for A039814, there is no canonical definition to state claims against.
-/

/-! ## A039814.P14128682525678426887

`A325872(comp[∑[n]])`
-/

namespace A039814.P14128682525678426887
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325872 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A039814.P14128682525678426887

/-! ## A039814.P9599490029832132341

`A325872(∑[A035214(n)])+2-4/2`
-/

namespace A039814.P9599490029832132341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035214 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A325872 (∑ j ∈ Finset.range (n + 1), f1 j).toNat + 2 : ℚ) - (4 : ℚ) / 2

end

end A039814.P9599490029832132341

/-! ## A039814.P2410228590875692513

`A142472(n+1)/A135278(n)`
-/

namespace A039814.P2410228590875692513
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A142472 (n + 1) : ℚ) / (A135278 n : ℚ)

end

end A039814.P2410228590875692513

/-! ## A039814.P3032747741385428415

`A142472(n+1)/A074909(n+1)`
-/

namespace A039814.P3032747741385428415
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A142472 (n + 1) : ℚ) / (A074909 (n + 1) : ℚ)

end

end A039814.P3032747741385428415

/-! ## A039814.P16474588773124237542

`A142472(n+1)/A007318(A014132(n+1))`
-/

namespace A039814.P16474588773124237542
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A142472 (n + 1) : ℚ) / (A007318 (A014132 (n + 1)).toNat : ℚ)

end

end A039814.P16474588773124237542

/-!
# A039815: Triangle read by rows: matrix cube of the Stirling-1 triangle A008275.

The programs for A039815, there is no canonical definition to state claims against.
-/

/-! ## A039815.P636871123002615922

`A134144(n+1)%p?[2^n-1]*A097807(n)`
-/

namespace A039815.P636871123002615922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A134144 (n + 1)) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) * A097807 n

end

end A039815.P636871123002615922

/-! ## A039815.P17531047702793512272

`A008683(A349310(n))*A035342(n+1)`
-/

namespace A039815.P17531047702793512272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A349310 n).toNat * A035342 (n + 1)

end

end A039815.P17531047702793512272

/-! ## A039815.P18158954232993499814

`A035342(n+1)*A209615(A209625(n+1))`
-/

namespace A039815.P18158954232993499814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035342 (n + 1) * A209615 (A209625 (n + 1)).toNat

end

end A039815.P18158954232993499814

/-!
# A039819: Number of divisors of n-th refactorable number (A033950(n)).

The programs for A039819, the canonical program `A039819.P17715660467556399268` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A039819 has offset 1).

The definition of A039819 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A033950, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A039819.P16175777172867380451

`A033950(n+1)/A036762(n+1)`
-/

namespace A039819.P16175777172867380451
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033950 (n + 1) : ℚ) / (A036762 (n + 1) : ℚ)

end

end A039819.P16175777172867380451

namespace A039819

/-- `A033950(n+1)/A036762(n+1)` -/
def P16175777172867380451.Spec : Prop :=
  ∀ n, P16175777172867380451.a n = (A039819 (n + 1) : ℚ)

end A039819

/-! ## A039819.P17715660467556399268

`A000005(A033950(n+1))`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A039819

/-- `A000005(A033950(n+1))` -/
def P17715660467556399268.Spec : Prop :=
  ∀ n, P17715660467556399268.a n = A039819 (n + 1)

theorem P17715660467556399268.correct : P17715660467556399268.Spec := by
  intro n
  simp only [A039819, Nat.add_sub_cancel]

end A039819

/-! ## A039819.P4336911460602256207

`∪[A057265(n+1), A322797(n+1)]/A036762(n+1)`
-/

namespace A039819.P4336911460602256207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057265 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322797 (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n : ℚ) / (A036762 (n + 1) : ℚ)

end

end A039819.P4336911460602256207

namespace A039819

/-- `∪[A057265(n+1), A322797(n+1)]/A036762(n+1)` -/
def P4336911460602256207.Spec : Prop :=
  ∀ n, P4336911460602256207.a n = (A039819 (n + 1) : ℚ)

end A039819

/-! ## A039819.P383858774344471537

`A000005(record[gcd(n+1, (n+1)%A000005(n+1))])`
-/

namespace A039819.P383858774344471537
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (Int.tmod (n + 1 : ℤ) (A000005 (n + 1)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A039819.P383858774344471537

namespace A039819

/-- `A000005(record[gcd(n+1, (n+1)%A000005(n+1))])` -/
def P383858774344471537.Spec : Prop :=
  ∀ n, P383858774344471537.a n = A039819 (n + 1)

end A039819

/-! ## A039819.P15743692786457408382

`A009191(A033950(2*n+1-n))`
-/

namespace A039819.P15743692786457408382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009191 (A033950 (2 * n + 1 - n)).toNat

end

end A039819.P15743692786457408382

namespace A039819

/-- `A009191(A033950(2*n+1-n))` -/
def P15743692786457408382.Spec : Prop :=
  ∀ n, P15743692786457408382.a n = A039819 (n + 1)

end A039819

/-! ## A039819.P1587476144729407846

`A000005(eq[1, A090387(n+1)]+1)`
-/

namespace A039819.P1587476144729407846
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090387 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A039819.P1587476144729407846

namespace A039819

/-- `A000005(eq[1, A090387(n+1)]+1)` -/
def P1587476144729407846.Spec : Prop :=
  ∀ n, P1587476144729407846.a n = A039819 (n + 1)

end A039819

/-! ## A039819.P18257669866960203981

`A000005(eq[A000005(n+1), A009191(n+1)]+1)`
-/

namespace A039819.P18257669866960203981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009191 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A039819.P18257669866960203981

namespace A039819

/-- `A000005(eq[A000005(n+1), A009191(n+1)]+1)` -/
def P18257669866960203981.Spec : Prop :=
  ∀ n, P18257669866960203981.a n = A039819 (n + 1)

end A039819

/-! ## A039819.P15487810681457007605

`A000005(record[A122377(n+1)])`
-/

namespace A039819.P15487810681457007605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122377 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A039819.P15487810681457007605

namespace A039819

/-- `A000005(record[A122377(n+1)])` -/
def P15487810681457007605.Spec : Prop :=
  ∀ n, P15487810681457007605.a n = A039819 (n + 1)

end A039819

/-! ## A039819.P2651593733267734751

`A000005(lt[A298734(n+1), 2]+1)`
-/

namespace A039819.P2651593733267734751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298734 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A039819.P2651593733267734751

namespace A039819

/-- `A000005(lt[A298734(n+1), 2]+1)` -/
def P2651593733267734751.Spec : Prop :=
  ∀ n, P2651593733267734751.a n = A039819 (n + 1)

end A039819

/-! ## A039819.P11768568545019935553

`A000005(lt[n, A122377(n+1)]+1)`
-/

namespace A039819.P11768568545019935553
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122377 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A039819.P11768568545019935553

namespace A039819

/-- `A000005(lt[n, A122377(n+1)]+1)` -/
def P11768568545019935553.Spec : Prop :=
  ∀ n, P11768568545019935553.a n = A039819 (n + 1)

end A039819

/-! ## A039819.P4433194585097327132

`A000005(record[(n+1)/A298734(n+1)])`
-/

namespace A039819.P4433194585097327132
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A298734 (n + 1) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A039819.P4433194585097327132

namespace A039819

/-- `A000005(record[(n+1)/A298734(n+1)])` -/
def P4433194585097327132.Spec : Prop :=
  ∀ n, P4433194585097327132.a n = A039819 (n + 1)

end A039819

/-! ## A039819.P4453830132492337949

`(lt[A298734(n+1), 2]+1)/A036762(n+1)`
-/

namespace A039819.P4453830132492337949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298734 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1 : ℚ) / (A036762 (n + 1) : ℚ)

end

end A039819.P4453830132492337949

namespace A039819

/-- `(lt[A298734(n+1), 2]+1)/A036762(n+1)` -/
def P4453830132492337949.Spec : Prop :=
  ∀ n, P4453830132492337949.a n = (A039819 (n + 1) : ℚ)

end A039819

/-! ## A039819.P12700904949655228229

`∑{d}[A033950(n+1), A057427(#)]`
-/

namespace A039819.P12700904949655228229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033950 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A057427 d

end

end A039819.P12700904949655228229

namespace A039819

/-- `∑{d}[A033950(n+1), A057427(#)]` -/
def P12700904949655228229.Spec : Prop :=
  ∀ n, P12700904949655228229.a n = A039819 (n + 1)

end A039819

/-! ## A039819.P11290755345800560265

`∑{d}[lt[A298734(n+1), 2]+1, A057427(#)]`
-/

namespace A039819.P11290755345800560265
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298734 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A057427 d

end

end A039819.P11290755345800560265

namespace A039819

/-- `∑{d}[lt[A298734(n+1), 2]+1, A057427(#)]` -/
def P11290755345800560265.Spec : Prop :=
  ∀ n, P11290755345800560265.a n = A039819 (n + 1)

end A039819

/-! ## A039819.P6184683439385064602

`A183063(2*A033950(n+1))`
-/

namespace A039819.P6184683439385064602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183063 (2 * A033950 (n + 1)).toNat

end

end A039819.P6184683439385064602

namespace A039819

/-- `A183063(2*A033950(n+1))` -/
def P6184683439385064602.Spec : Prop :=
  ∀ n, P6184683439385064602.a n = A039819 (n + 1)

end A039819

/-! ## A039819.P2007287587405671698

`A000005(record[C(A161654(n+1), n)])`
-/

namespace A039819.P2007287587405671698
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A161654 (n + 1)).toNat n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A039819.P2007287587405671698

namespace A039819

/-- `A000005(record[C(A161654(n+1), n)])` -/
def P2007287587405671698.Spec : Prop :=
  ∀ n, P2007287587405671698.a n = A039819 (n + 1)

end A039819

/-! ## A039819.P1578334708953773374

`A183063(A033950(n+1)+A033950(n+1))`
-/

namespace A039819.P1578334708953773374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183063 (A033950 (n + 1) + A033950 (n + 1)).toNat

end

end A039819.P1578334708953773374

namespace A039819

/-- `A183063(A033950(n+1)+A033950(n+1))` -/
def P1578334708953773374.Spec : Prop :=
  ∀ n, P1578334708953773374.a n = A039819 (n + 1)

end A039819

/-! ## A039819.P15314819233690374461

`∑{d}[A033950(n+1), A090387(A033950(#))]`
-/

namespace A039819.P15314819233690374461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033950 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A090387 (A033950 d).toNat

end

end A039819.P15314819233690374461

namespace A039819

/-- `∑{d}[A033950(n+1), A090387(A033950(#))]` -/
def P15314819233690374461.Spec : Prop :=
  ∀ n, P15314819233690374461.a n = A039819 (n + 1)

end A039819

/-!
# A039820: Numbers whose square contains the same digit more than 2/3 of the time and does not end in 0.

The programs for A039820, there is no canonical definition to state claims against.
-/

/-! ## A039820.P3967157282718232360

`∩[A060812(n+1), A060813(n+1)]`
-/

namespace A039820.P3967157282718232360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060812 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060813 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039820.P3967157282718232360

/-! ## A039820.P10893735360074579383

`filter[A060813(n+1), A011558(#)]`
-/

namespace A039820.P10893735360074579383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060813 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A011558 (f1 j).toNat = 1) n)

end

end A039820.P10893735360074579383

/-! ## A039820.P14492971041230842668

`filter[A060813(n+1), A168046(#)]`
-/

namespace A039820.P14492971041230842668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060813 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A168046 (f1 j).toNat = 1) n)

end

end A039820.P14492971041230842668

/-!
# A039821: Numerators in Stirling expansion of middle binomial coefficient.

The programs for A039821, there is no canonical definition to state claims against.
-/

/-! ## A039821.P1342529151356069764

`lcm(A143477(A148939(n)), A143503(n+2))`
-/

namespace A039821.P1342529151356069764
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A143477 (A148939 n).toNat) (A143503 (n + 2))

end

end A039821.P1342529151356069764

/-!
# A039823: a(n) = ceiling((n^2 + n + 2)/4).

The programs for A039823, the canonical program `A039823.P1817490879723501900` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A039823 has offset 1).

The definition of A039823 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ceil(((n+1)²+n+1+2)/4)` (program `A039823.P1817490879723501900`, by `A039823.P1817490879723501900.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A039823.P16851827462083974682

`floor(C(n+2, 2)/2)+1`
-/

namespace A039823.P16851827462083974682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.choose (n + 2) 2 : ℚ) / 2⌋ + 1

end

end A039823.P16851827462083974682

namespace A039823

/-- `floor(C(n+2, 2)/2)+1` -/
def P16851827462083974682.Spec : Prop :=
  ∀ n, P16851827462083974682.a n = A039823 (n + 1)

end A039823

/-! ## A039823.P1926056752125903950

`ceil(((n+1)²+n+1+1)/4)`
-/

namespace A039823.P1926056752125903950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((n + 1) ^ 2 + (n + 1) + 1 : ℚ) / 4⌉

end

end A039823.P1926056752125903950

namespace A039823

/-- `ceil(((n+1)²+n+1+1)/4)` -/
def P1926056752125903950.Spec : Prop :=
  ∀ n, P1926056752125903950.a n = A039823 (n + 1)

end A039823

/-! ## A039823.P1817490879723501900

`ceil(((n+1)²+n+1+2)/4)`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A039823

/-- `ceil(((n+1)²+n+1+2)/4)` -/
def P1817490879723501900.Spec : Prop :=
  ∀ n, P1817490879723501900.a n = A039823 (n + 1)

theorem P1817490879723501900.correct : P1817490879723501900.Spec := by
  intro n
  simp only [A039823, Nat.add_sub_cancel]

end A039823

/-! ## A039823.P6780687495506006634

`3*a(n-1)-4*a(n-2)+4*a(n-3)-3*a(n-4)+a(n-5)` with `a(0)=1, a(1)=2, a(2)=4, a(3)=6, a(4)=8`
-/

namespace A039823.P6780687495506006634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 4, 6, 8] fun n a =>
  3 * a (n - 1) - 4 * a (n - 2) + 4 * a (n - 3) - 3 * a (n - 4) + a (n - 5)

end

end A039823.P6780687495506006634

namespace A039823

/-- `3*a(n-1)-4*a(n-2)+4*a(n-3)-3*a(n-4)+a(n-5)` -/
def P6780687495506006634.Spec : Prop :=
  ∀ n, P6780687495506006634.a n = A039823 (n + 1)

end A039823

/-! ## A039823.P4211627703278691387

`A011848(n+2)+1`
-/

namespace A039823.P4211627703278691387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011848 (n + 2) + 1

end

end A039823.P4211627703278691387

namespace A039823

/-- `A011848(n+2)+1` -/
def P4211627703278691387.Spec : Prop :=
  ∀ n, P4211627703278691387.a n = A039823 (n + 1)

end A039823

/-! ## A039823.P16775281305762097589

`a(n-1)+A004524(n+2)` with `a(0)=1`
-/

namespace A039823.P16775281305762097589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + A004524 (n + 2)

end

end A039823.P16775281305762097589

namespace A039823

/-- `a(n-1)+A004524(n+2)` -/
def P16775281305762097589.Spec : Prop :=
  ∀ n, P16775281305762097589.a n = A039823 (n + 1)

end A039823

/-! ## A039823.P8132887907989399129

`record[ceil((xor(1, n)/4)²)]`
-/

namespace A039823.P8132887907989399129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((Nat.xor 1 n : ℚ) / 4) ^ 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A039823.P8132887907989399129

namespace A039823

/-- `record[ceil((xor(1, n)/4)²)]` -/
def P8132887907989399129.Spec : Prop :=
  ∀ n, P8132887907989399129.a n = A039823 (n + 1)

end A039823

/-! ## A039823.P10832547383040152172

`∑[∑[∑[n]%2]]+1`
-/

namespace A039823.P10832547383040152172
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f3 j) % 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A039823.P10832547383040152172

namespace A039823

/-- `∑[∑[∑[n]%2]]+1` -/
def P10832547383040152172.Spec : Prop :=
  ∀ n, (P10832547383040152172.a n : ℤ) = A039823 (n + 1)

end A039823

/-! ## A039823.P9659268537875020648

`∑[∑[and(1, ∑[n])]]+1`
-/

namespace A039823.P9659268537875020648
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (∑ j ∈ Finset.range (n + 1), f3 j)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A039823.P9659268537875020648

namespace A039823

/-- `∑[∑[and(1, ∑[n])]]+1` -/
def P9659268537875020648.Spec : Prop :=
  ∀ n, (P9659268537875020648.a n : ℤ) = A039823 (n + 1)

end A039823

/-! ## A039823.P17039057256137719329

`round(or(1, ∑[n+1])/2)`
-/

namespace A039823.P17039057256137719329
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.lor 1 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / 2)

end

end A039823.P17039057256137719329

namespace A039823

/-- `round(or(1, ∑[n+1])/2)` -/
def P17039057256137719329.Spec : Prop :=
  ∀ n, P17039057256137719329.a n = A039823 (n + 1)

end A039823

/-! ## A039823.P8594049461566296276

`round((C(n+2, 2)+1)/2)`
-/

namespace A039823.P8594049461566296276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.choose (n + 2) 2 + 1 : ℚ) / 2)

end

end A039823.P8594049461566296276

namespace A039823

/-- `round((C(n+2, 2)+1)/2)` -/
def P8594049461566296276.Spec : Prop :=
  ∀ n, P8594049461566296276.a n = A039823 (n + 1)

end A039823

/-! ## A039823.P17513203674872979480

`(or(1, ∑[n+1])+1)/2`
-/

namespace A039823.P17513203674872979480
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lor 1 (∑ j ∈ Finset.range (n + 1), f1 j) + 1 : ℚ) / 2

end

end A039823.P17513203674872979480

namespace A039823

/-- `(or(1, ∑[n+1])+1)/2` -/
def P17513203674872979480.Spec : Prop :=
  ∀ n, P17513203674872979480.a n = (A039823 (n + 1) : ℚ)

end A039823

/-! ## A039823.P7867155517484614565

`∑[n-a(n-2)]` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A039823.P7867155517484614565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2] fun n f1 =>
  (n : ℤ) - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A039823.P7867155517484614565

namespace A039823

/-- `∑[n-a(n-2)]` -/
def P7867155517484614565.Spec : Prop :=
  ∀ n, P7867155517484614565.a n = A039823 (n + 1)

end A039823

/-! ## A039823.P15916747797654810275

`ceil(C(n, 2)/2)+n+1`
-/

namespace A039823.P15916747797654810275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.choose n 2 : ℚ) / 2⌉ + (n + 1 : ℤ)

end

end A039823.P15916747797654810275

namespace A039823

/-- `ceil(C(n, 2)/2)+n+1` -/
def P15916747797654810275.Spec : Prop :=
  ∀ n, P15916747797654810275.a n = A039823 (n + 1)

end A039823

/-! ## A039823.P16253226675568976764

`round(cos(1)+∑[(n+1)/2])`
-/

namespace A039823.P16253226675568976764
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.cos (1 : ℝ) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℚ) : ℝ))

end

end A039823.P16253226675568976764

namespace A039823

/-- `round(cos(1)+∑[(n+1)/2])` -/
def P16253226675568976764.Spec : Prop :=
  ∀ n, P16253226675568976764.a n = A039823 (n + 1)

end A039823

/-! ## A039823.P6240294571664122741

`round(sin(1)+∑[(n+1)/2])`
-/

namespace A039823.P6240294571664122741
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sin (1 : ℝ) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℚ) : ℝ))

end

end A039823.P6240294571664122741

namespace A039823

/-- `round(sin(1)+∑[(n+1)/2])` -/
def P6240294571664122741.Spec : Prop :=
  ∀ n, P6240294571664122741.a n = A039823 (n + 1)

end A039823

/-! ## A039823.P129952955432436704

`round((tan(1)+∑[n+1])/2)`
-/

namespace A039823.P129952955432436704
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Real.tan (1 : ℝ) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ)) / 2)

end

end A039823.P129952955432436704

namespace A039823

/-- `round((tan(1)+∑[n+1])/2)` -/
def P129952955432436704.Spec : Prop :=
  ∀ n, P129952955432436704.a n = A039823 (n + 1)

end A039823

/-! ## A039823.P16802117702986731997

`round((asin(1)+∑[n+1])/2)`
-/

namespace A039823.P16802117702986731997
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Real.arcsin (1 : ℝ) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ)) / 2)

end

end A039823.P16802117702986731997

namespace A039823

/-- `round((asin(1)+∑[n+1])/2)` -/
def P16802117702986731997.Spec : Prop :=
  ∀ n, P16802117702986731997.a n = A039823 (n + 1)

end A039823

/-! ## A039823.P4790660997154413342

`round(atan(1)+∑[(n+1)/2])`
-/

namespace A039823.P4790660997154413342
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.arctan (1 : ℝ) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℚ) : ℝ))

end

end A039823.P4790660997154413342

namespace A039823

/-- `round(atan(1)+∑[(n+1)/2])` -/
def P4790660997154413342.Spec : Prop :=
  ∀ n, P4790660997154413342.a n = A039823 (n + 1)

end A039823

/-! ## A039823.P3082743315354120011

`round((cosh(1)+∑[n+1])/2)`
-/

namespace A039823.P3082743315354120011
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Real.cosh (1 : ℝ) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ)) / 2)

end

end A039823.P3082743315354120011

namespace A039823

/-- `round((cosh(1)+∑[n+1])/2)` -/
def P3082743315354120011.Spec : Prop :=
  ∀ n, P3082743315354120011.a n = A039823 (n + 1)

end A039823

/-!
# A039824: Number of different coefficient values in expansion of Product (1+q^1+q^3...+q^(2i-1)), i=1 to n.

The programs for A039824, the canonical program `A039824.P1843734589319922015` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A039824 has offset 1).

The definition of A039824 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A039824.P1843734589319922015

`3*a(n-1)-3*a(n-2)+a(n-3)` with `a(0)=1, a(1)=2, a(2)=4, a(3)=11, a(4)=20, a(5)=31, a(6)=46, a(7)=61, a(8)=78`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A039824

/-- `3*a(n-1)-3*a(n-2)+a(n-3)` -/
def P1843734589319922015.Spec : Prop :=
  ∀ n, P1843734589319922015.a n = A039824 (n + 1)

theorem P1843734589319922015.correct : P1843734589319922015.Spec := by
  intro n
  simp only [A039824, Nat.add_sub_cancel]

end A039824

/-!
# A039825: a(n) = floor((n^2 + n + 8) / 4).

The programs for A039825, the canonical program `A039825.P5401419556523718908` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A039825 has offset 1).

The definition of A039825 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(((n+1)²+n+1+8)/4)` (program `A039825.P5401419556523718908`, by `A039825.P5401419556523718908.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A039825.P5401419556523718908

`floor(((n+1)²+n+1+8)/4)`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A039825

/-- `floor(((n+1)²+n+1+8)/4)` -/
def P5401419556523718908.Spec : Prop :=
  ∀ n, P5401419556523718908.a n = A039825 (n + 1)

theorem P5401419556523718908.correct : P5401419556523718908.Spec := by
  intro n
  simp only [A039825, Nat.add_sub_cancel]

end A039825

/-! ## A039825.P3423662284199342075

`3*a(n-1)-4*a(n-2)+4*a(n-3)-3*a(n-4)+a(n-5)` with `a(0)=2, a(1)=3, a(2)=5, a(3)=7, a(4)=9`
-/

namespace A039825.P3423662284199342075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 3, 5, 7, 9] fun n a =>
  3 * a (n - 1) - 4 * a (n - 2) + 4 * a (n - 3) - 3 * a (n - 4) + a (n - 5)

end

end A039825.P3423662284199342075

namespace A039825

/-- `3*a(n-1)-4*a(n-2)+4*a(n-3)-3*a(n-4)+a(n-5)` -/
def P3423662284199342075.Spec : Prop :=
  ∀ n, P3423662284199342075.a n = A039825 (n + 1)

end A039825

/-! ## A039825.P14162282482312462149

`A039823(n+1)+1`
-/

namespace A039825.P14162282482312462149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039823 (n + 1) + 1

end

end A039825.P14162282482312462149

namespace A039825

/-- `A039823(n+1)+1` -/
def P14162282482312462149.Spec : Prop :=
  ∀ n, P14162282482312462149.a n = A039825 (n + 1)

end A039825

/-! ## A039825.P1633243209345245257

`∑[∑[∑[n]%2]]+2`
-/

namespace A039825.P1633243209345245257
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f3 j) % 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A039825.P1633243209345245257

namespace A039825

/-- `∑[∑[∑[n]%2]]+2` -/
def P1633243209345245257.Spec : Prop :=
  ∀ n, (P1633243209345245257.a n : ℤ) = A039825 (n + 1)

end A039825

/-! ## A039825.P5378716886836725880

`∑[∑[and(1, ∑[n])]]+2`
-/

namespace A039825.P5378716886836725880
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (∑ j ∈ Finset.range (n + 1), f3 j)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A039825.P5378716886836725880

namespace A039825

/-- `∑[∑[and(1, ∑[n])]]+2` -/
def P5378716886836725880.Spec : Prop :=
  ∀ n, (P5378716886836725880.a n : ℤ) = A039825 (n + 1)

end A039825

/-! ## A039825.P12227298195541393189

`ceil(cosh(log(∑[n+1]+2)))`
-/

namespace A039825.P12227298195541393189
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.cosh (Real.log ((∑ j ∈ Finset.range (n + 1), f1 j + 2 : ℕ) : ℝ))⌉

end

end A039825.P12227298195541393189

namespace A039825

/-- `ceil(cosh(log(∑[n+1]+2)))` -/
def P12227298195541393189.Spec : Prop :=
  ∀ n, P12227298195541393189.a n = A039825 (n + 1)

end A039825

/-! ## A039825.P18167297842613156510

`ceil((C(n+2, 2)+3)/2)`
-/

namespace A039825.P18167297842613156510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.choose (n + 2) 2 + 3 : ℚ) / 2⌉

end

end A039825.P18167297842613156510

namespace A039825

/-- `ceil((C(n+2, 2)+3)/2)` -/
def P18167297842613156510.Spec : Prop :=
  ∀ n, P18167297842613156510.a n = A039825 (n + 1)

end A039825

/-! ## A039825.P1367433719614762792

`round((C(n+2, 2)+3)/2)`
-/

namespace A039825.P1367433719614762792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.choose (n + 2) 2 + 3 : ℚ) / 2)

end

end A039825.P1367433719614762792

namespace A039825

/-- `round((C(n+2, 2)+3)/2)` -/
def P1367433719614762792.Spec : Prop :=
  ∀ n, P1367433719614762792.a n = A039825 (n + 1)

end A039825

/-! ## A039825.P17590582579051769976

`(or(1, ∑[n+1])+3)/2`
-/

namespace A039825.P17590582579051769976
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lor 1 (∑ j ∈ Finset.range (n + 1), f1 j) + 3 : ℚ) / 2

end

end A039825.P17590582579051769976

namespace A039825

/-- `(or(1, ∑[n+1])+3)/2` -/
def P17590582579051769976.Spec : Prop :=
  ∀ n, P17590582579051769976.a n = (A039825 (n + 1) : ℚ)

end A039825

/-! ## A039825.P13908366107910468118

`∑[n-a(n-2)]` with `a(0)=2, a(1)=1, a(2)=2`
-/

namespace A039825.P13908366107910468118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 1, 2] fun n f1 =>
  (n : ℤ) - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A039825.P13908366107910468118

namespace A039825

/-- `∑[n-a(n-2)]` -/
def P13908366107910468118.Spec : Prop :=
  ∀ n, P13908366107910468118.a n = A039825 (n + 1)

end A039825

/-! ## A039825.P13686859686405475959

`round(tan(1)+∑[(n+1)/2])`
-/

namespace A039825.P13686859686405475959
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.tan (1 : ℝ) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℚ) : ℝ))

end

end A039825.P13686859686405475959

namespace A039825

/-- `round(tan(1)+∑[(n+1)/2])` -/
def P13686859686405475959.Spec : Prop :=
  ∀ n, P13686859686405475959.a n = A039825 (n + 1)

end A039825

/-! ## A039825.P804476823957174333

`ceil((∑[n+1]-tan(2))/2)`
-/

namespace A039825.P804476823957174333
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ) - Real.tan (2 : ℝ)) / 2⌉

end

end A039825.P804476823957174333

namespace A039825

/-- `ceil((∑[n+1]-tan(2))/2)` -/
def P804476823957174333.Spec : Prop :=
  ∀ n, P804476823957174333.a n = A039825 (n + 1)

end A039825

/-! ## A039825.P5387960532955581212

`round(asin(1)+∑[(n+1)/2])`
-/

namespace A039825.P5387960532955581212
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.arcsin (1 : ℝ) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℚ) : ℝ))

end

end A039825.P5387960532955581212

namespace A039825

/-- `round(asin(1)+∑[(n+1)/2])` -/
def P5387960532955581212.Spec : Prop :=
  ∀ n, P5387960532955581212.a n = A039825 (n + 1)

end A039825

/-! ## A039825.P17690000889503720522

`ceil(atan(2)+∑[(n+1)/2])`
-/

namespace A039825.P17690000889503720522
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.arctan (2 : ℝ) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℚ) : ℝ)⌉

end

end A039825.P17690000889503720522

namespace A039825

/-- `ceil(atan(2)+∑[(n+1)/2])` -/
def P17690000889503720522.Spec : Prop :=
  ∀ n, P17690000889503720522.a n = A039825 (n + 1)

end A039825

/-! ## A039825.P7384737258601689285

`round(cosh(1)+∑[(n+1)/2])`
-/

namespace A039825.P7384737258601689285
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.cosh (1 : ℝ) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℚ) : ℝ))

end

end A039825.P7384737258601689285

namespace A039825

/-- `round(cosh(1)+∑[(n+1)/2])` -/
def P7384737258601689285.Spec : Prop :=
  ∀ n, P7384737258601689285.a n = A039825 (n + 1)

end A039825

/-! ## A039825.P15657042924474915562

`ceil(sinh(1)+∑[(n+1)/2])`
-/

namespace A039825.P15657042924474915562
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sinh (1 : ℝ) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℚ) : ℝ)⌉

end

end A039825.P15657042924474915562

namespace A039825

/-- `ceil(sinh(1)+∑[(n+1)/2])` -/
def P15657042924474915562.Spec : Prop :=
  ∀ n, P15657042924474915562.a n = A039825 (n + 1)

end A039825

/-! ## A039825.P7578195160659428817

`round((sinh(2)+∑[n+1])/2)`
-/

namespace A039825.P7578195160659428817
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Real.sinh (2 : ℝ) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ)) / 2)

end

end A039825.P7578195160659428817

namespace A039825

/-- `round((sinh(2)+∑[n+1])/2)` -/
def P7578195160659428817.Spec : Prop :=
  ∀ n, P7578195160659428817.a n = A039825 (n + 1)

end A039825

/-! ## A039825.P1843549039424333809

`ceil(cot(2/(∑[n+1]+3)))`
-/

namespace A039825.P1843549039424333809
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.cot (2 / ((∑ j ∈ Finset.range (n + 1), f1 j + 3 : ℕ) : ℚ) : ℝ)⌉

end

end A039825.P1843549039424333809

namespace A039825

/-- `ceil(cot(2/(∑[n+1]+3)))` -/
def P1843549039424333809.Spec : Prop :=
  ∀ n, P1843549039424333809.a n = A039825 (n + 1)

end A039825

/-! ## A039825.P6935923990026828937

`ceil((n+2)/atan(4/(n+1)))`
-/

namespace A039825.P6935923990026828937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 2 : ℝ) / Real.arctan (4 / (n + 1 : ℚ) : ℝ)⌉

end

end A039825.P6935923990026828937

namespace A039825

/-- `ceil((n+2)/atan(4/(n+1)))` -/
def P6935923990026828937.Spec : Prop :=
  ∀ n, P6935923990026828937.a n = A039825 (n + 1)

end A039825

/-! ## A039825.P11502239961678174832

`ceil((n+2)/acot((n+1)/4))`
-/

namespace A039825.P11502239961678174832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 2 : ℝ) / SequenceMachineLib.acot ((n + 1 : ℚ) / 4 : ℝ)⌉

end

end A039825.P11502239961678174832

namespace A039825

/-- `ceil((n+2)/acot((n+1)/4))` -/
def P11502239961678174832.Spec : Prop :=
  ∀ n, P11502239961678174832.a n = A039825 (n + 1)

end A039825

/-!
# A039826: Largest coefficient in expansion of Product_{i=1..n} (1 + q^i + q^(2i)).

The programs for A039826, there is no canonical definition to state claims against.
-/

/-! ## A039826.P18051279098441368074

`A036234((n+1)*A000045(n)²+2)-1`
-/

namespace A039826.P18051279098441368074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036234 ((n + 1 : ℤ) * A000045 n ^ 2 + 2).toNat - 1

end

end A039826.P18051279098441368074

/-! ## A039826.P3451462848220044320

`A182488(n)+A054846(A306409(n))`
-/

namespace A039826.P3451462848220044320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182488 n + A054846 (A306409 n).toNat

end

end A039826.P3451462848220044320

/-! ## A039826.P2489962648432937757

`A054846(A306409(n))+A046155(A263779(n)+1)`
-/

namespace A039826.P2489962648432937757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054846 (A306409 n).toNat + A046155 (A263779 n + 1).toNat

end

end A039826.P2489962648432937757

/-! ## A039826.P6009928145773625577

`A054846(A150002(n))`
-/

namespace A039826.P6009928145773625577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054846 (A150002 n).toNat

end

end A039826.P6009928145773625577

/-!
# A039827: Number of different coefficient values in expansion of Product (1+q^i+q^(2i)), i=1 to n.

The programs for A039827, there is no canonical definition to state claims against.
-/

/-! ## A039827.P5553893772699464013

`record[A056757(n+1)-A264704(n+1)]`
-/

namespace A039827.P5553893772699464013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056757 (n + 1) - A264704 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A039827.P5553893772699464013

/-! ## A039827.P13103627015098828770

`record[A023128(∑[A065190(n+1)²]+1)]`
-/

namespace A039827.P13103627015098828770
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065190 (n + 1) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023128 (∑ j ∈ Finset.range (n + 1), f2 j + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A039827.P13103627015098828770

/-! ## A039827.P6493982008727730100

`A347707(A143211(n+1)+A006578(n))`
-/

namespace A039827.P6493982008727730100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347707 (A143211 (n + 1) + A006578 n).toNat

end

end A039827.P6493982008727730100

/-! ## A039827.P8216164251209777218

`xor(A001222(A003341(n+1)), A003192(n+1))`
-/

namespace A039827.P8216164251209777218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A001222 (A003341 (n + 1)).toNat) (A003192 (n + 1))

end

end A039827.P8216164251209777218

/-!
# A039828: Largest coefficient in expansion of Product_{i=1..n} (1 + (-q)^i).

The programs for A039828, there is no canonical definition to state claims against.
-/

/-! ## A039828.P3832347568645773252

`A025591(n+1)-A091225(A001970(n))`
-/

namespace A039828.P3832347568645773252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025591 (n + 1) - A091225 (A001970 n).toNat

end

end A039828.P3832347568645773252

/-! ## A039828.P10328605086788841493

`A261104(A334741(n)+A238824(n+1))`
-/

namespace A039828.P10328605086788841493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261104 (A334741 n + A238824 (n + 1)).toNat

end

end A039828.P10328605086788841493

/-! ## A039828.P11971391972840706302

`A055086(floor(sqrt(A267384(n))))`
-/

namespace A039828.P11971391972840706302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055086 (Int.sqrt (A267384 n)).toNat

end

end A039828.P11971391972840706302

/-! ## A039828.P13972605769673797519

`A055086(round(sqrt(A267384(n))))`
-/

namespace A039828.P13972605769673797519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055086 (SequenceMachineLib.roundAway (Real.sqrt (A267384 n : ℝ))).toNat

end

end A039828.P13972605769673797519

/-! ## A039828.P4667538273619296819

`A239088(A005627(n))`
-/

namespace A039828.P4667538273619296819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239088 (A005627 n).toNat

end

end A039828.P4667538273619296819

/-!
# A039829: Number of different coefficient values in expansion of Product_{i=1..n} (1 + (-q)^i).

The programs for A039829, there is no canonical definition to state claims against.
-/

/-! ## A039829.P13030181736416494763

`A347445(n)+A273021(A000110(n))`
-/

namespace A039829.P13030181736416494763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347445 n + A273021 (A000110 n).toNat

end

end A039829.P13030181736416494763

/-! ## A039829.P110914662369558464

`A111076(A006248(n+1))+A008636(n)`
-/

namespace A039829.P110914662369558464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111076 (A006248 (n + 1)).toNat + A008636 n

end

end A039829.P110914662369558464

/-! ## A039829.P4386994000444030651

`A261595(A046097(n+1))+A046097(n+1)`
-/

namespace A039829.P4386994000444030651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261595 (A046097 (n + 1)).toNat + A046097 (n + 1)

end

end A039829.P4386994000444030651

/-!
# A039830: Number of different coefficient values in expansion of Product_{i=1..n} (1-q^1+q^2-...+(-q)^i).

The programs for A039830, the canonical program `A039830.P6141328336636973729` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A039830 has offset 0).

The definition of A039830 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 323 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A039830.P5086533478329626086

`lcm(2, ∑[n])/2+1`
-/

namespace A039830.P5086533478329626086
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 2 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / 2 + 1

end

end A039830.P5086533478329626086

namespace A039830

/-- `lcm(2, ∑[n])/2+1` -/
def P5086533478329626086.Spec : Prop :=
  ∀ n, P5086533478329626086.a n = (A039830 n : ℚ)

end A039830

/-! ## A039830.P12702394610668888170

`∑[n]/gcd(2, ∑[n])+1`
-/

namespace A039830.P12702394610668888170
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / (Nat.gcd 2 (∑ j ∈ Finset.range (n + 1), f2 j) : ℚ) + 1

end

end A039830.P12702394610668888170

namespace A039830

/-- `∑[n]/gcd(2, ∑[n])+1` -/
def P12702394610668888170.Spec : Prop :=
  ∀ n, P12702394610668888170.a n = (A039830 n : ℚ)

end A039830

/-! ## A039830.P6141328336636973729

`floor(lcm(4, n²+n)/4)+1`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A039830

/-- `floor(lcm(4, n²+n)/4)+1` -/
def P6141328336636973729.Spec : Prop :=
  ∀ n, P6141328336636973729.a n = A039830 n

theorem P6141328336636973729.correct : P6141328336636973729.Spec := by
  intro n
  simp only [A039830]

end A039830

/-! ## A039830.P16358888184759509853

`∑[n]/(2-∑[n]%2)+1`
-/

namespace A039830.P16358888184759509853
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / (2 - (((∑ j ∈ Finset.range (n + 1), f2 j) % 2 : ℕ) : ℤ) : ℚ) + 1

end

end A039830.P16358888184759509853

namespace A039830

/-- `∑[n]/(2-∑[n]%2)+1` -/
def P16358888184759509853.Spec : Prop :=
  ∀ n, P16358888184759509853.a n = (A039830 n : ℚ)

end A039830

/-! ## A039830.P6491230719279447625

`∑[n]/(2-and(1, ∑[n]))+1`
-/

namespace A039830.P6491230719279447625
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / (2 - (Nat.land 1 (∑ j ∈ Finset.range (n + 1), f2 j) : ℤ) : ℚ) + 1

end

end A039830.P6491230719279447625

namespace A039830

/-- `∑[n]/(2-and(1, ∑[n]))+1` -/
def P6491230719279447625.Spec : Prop :=
  ∀ n, P6491230719279447625.a n = (A039830 n : ℚ)

end A039830

/-! ## A039830.P15607423099821383198

`gcd(3*∑[n]², C(∑[n]+1, 2))+1`
-/

namespace A039830.P15607423099821383198
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (3 * (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2) (Nat.choose (∑ j ∈ Finset.range (n + 1), f2 j + 1) 2) + 1

end

end A039830.P15607423099821383198

namespace A039830

/-- `gcd(3*∑[n]², C(∑[n]+1, 2))+1` -/
def P15607423099821383198.Spec : Prop :=
  ∀ n, (P15607423099821383198.a n : ℤ) = A039830 n

end A039830

/-! ## A039830.P8918523579381610943

`A064038(n+1)+1`
-/

namespace A039830.P8918523579381610943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064038 (n + 1) + 1

end

end A039830.P8918523579381610943

namespace A039830

/-- `A064038(n+1)+1` -/
def P8918523579381610943.Spec : Prop :=
  ∀ n, P8918523579381610943.a n = A039830 n

end A039830

/-! ## A039830.P6133149800509733313

`A330082(n)/5+1`
-/

namespace A039830.P6133149800509733313
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A330082 n : ℚ) / 5 + 1

end

end A039830.P6133149800509733313

namespace A039830

/-- `A330082(n)/5+1` -/
def P6133149800509733313.Spec : Prop :=
  ∀ n, P6133149800509733313.a n = (A039830 n : ℚ)

end A039830

/-! ## A039830.P12929563336755233991

`A273943(lcm(2, ∑[n]))+1`
-/

namespace A039830.P12929563336755233991
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (Nat.lcm 2 (∑ j ∈ Finset.range (n + 1), f1 j)) + 1

end

end A039830.P12929563336755233991

namespace A039830

/-- `A273943(lcm(2, ∑[n]))+1` -/
def P12929563336755233991.Spec : Prop :=
  ∀ n, P12929563336755233991.a n = A039830 n

end A039830

/-! ## A039830.P2732850435097568585

`A061041(8*n+4)+1`
-/

namespace A039830.P2732850435097568585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061041 (8 * n + 4) + 1

end

end A039830.P2732850435097568585

namespace A039830

/-- `A061041(8*n+4)+1` -/
def P2732850435097568585.Spec : Prop :=
  ∀ n, P2732850435097568585.a n = A039830 n

end A039830

/-! ## A039830.P16430194644810247988

`A174680(8*n+4)+1`
-/

namespace A039830.P16430194644810247988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174680 (8 * n + 4) + 1

end

end A039830.P16430194644810247988

namespace A039830

/-- `A174680(8*n+4)+1` -/
def P16430194644810247988.Spec : Prop :=
  ∀ n, P16430194644810247988.a n = A039830 n

end A039830

/-! ## A039830.P14894763320436906942

`∑[n]/A040724(2*n+1)+1`
-/

namespace A039830.P14894763320436906942
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / (A040724 (2 * n + 1) : ℚ) + 1

end

end A039830.P14894763320436906942

namespace A039830

/-- `∑[n]/A040724(2*n+1)+1` -/
def P14894763320436906942.Spec : Prop :=
  ∀ n, P14894763320436906942.a n = (A039830 n : ℚ)

end A039830

/-! ## A039830.P6884589591818451037

`A014695(n)+A176126(n)+1`
-/

namespace A039830.P6884589591818451037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014695 n + (A176126 n + 1)

end

end A039830.P6884589591818451037

namespace A039830

/-- `A014695(n)+A176126(n)+1` -/
def P6884589591818451037.Spec : Prop :=
  ∀ n, P6884589591818451037.a n = A039830 n

end A039830

/-! ## A039830.P12555402463752160066

`gcd(A000217(n), A050534(n))+1`
-/

namespace A039830.P12555402463752160066
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000217 n) (A050534 n) + 1

end

end A039830.P12555402463752160066

namespace A039830

/-- `gcd(A000217(n), A050534(n))+1` -/
def P12555402463752160066.Spec : Prop :=
  ∀ n, (P12555402463752160066.a n : ℤ) = A039830 n

end A039830

/-! ## A039830.P14530652088776406042

`gcd(∑[n], A000217(∑[n]))+1`
-/

namespace A039830.P14530652088776406042
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (A000217 (∑ j ∈ Finset.range (n + 1), f2 j)) + 1

end

end A039830.P14530652088776406042

namespace A039830

/-- `gcd(∑[n], A000217(∑[n]))+1` -/
def P14530652088776406042.Spec : Prop :=
  ∀ n, (P14530652088776406042.a n : ℤ) = A039830 n

end A039830

/-! ## A039830.P14721025169236633796

`A026741(∑[n])+1`
-/

namespace A039830.P14721025169236633796
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (∑ j ∈ Finset.range (n + 1), f1 j) + 1

end

end A039830.P14721025169236633796

namespace A039830

/-- `A026741(∑[n])+1` -/
def P14721025169236633796.Spec : Prop :=
  ∀ n, P14721025169236633796.a n = A039830 n

end A039830

/-! ## A039830.P3147920218351031189

`A029578(∑[n]+2)`
-/

namespace A039830.P3147920218351031189
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029578 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A039830.P3147920218351031189

namespace A039830

/-- `A029578(∑[n]+2)` -/
def P3147920218351031189.Spec : Prop :=
  ∀ n, P3147920218351031189.a n = A039830 n

end A039830

/-! ## A039830.P14760500585609221280

`A087627(A281026(n))`
-/

namespace A039830.P14760500585609221280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087627 (A281026 n).toNat

end

end A039830.P14760500585609221280

namespace A039830

/-- `A087627(A281026(n))` -/
def P14760500585609221280.Spec : Prop :=
  ∀ n, P14760500585609221280.a n = A039830 n

end A039830

/-! ## A039830.P4129483293579274852

`A339914(A268810(n)+2)`
-/

namespace A039830.P4129483293579274852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339914 (A268810 n + 2).toNat

end

end A039830.P4129483293579274852

namespace A039830

/-- `A339914(A268810(n)+2)` -/
def P4129483293579274852.Spec : Prop :=
  ∀ n, P4129483293579274852.a n = A039830 n

end A039830

/-! ## A039830.P17391909692026364411

`A008619(lcm(2, ∑[n]))`
-/

namespace A039830.P17391909692026364411
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (Nat.lcm 2 (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A039830.P17391909692026364411

namespace A039830

/-- `A008619(lcm(2, ∑[n]))` -/
def P17391909692026364411.Spec : Prop :=
  ∀ n, P17391909692026364411.a n = A039830 n

end A039830

/-!
# A039831: Largest coefficient in expansion of Product (1+q^1+q^3...+q^(2i-1)), i=1 to n.

The programs for A039831, there is no canonical definition to state claims against.
-/

/-! ## A039831.P16187022196581705991

`A065033(A289681(n+1)+A001045(n))`
-/

namespace A039831.P16187022196581705991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A289681 (n + 1) + A001045 n).toNat

end

end A039831.P16187022196581705991

/-! ## A039831.P10538676307657139742

`A154255(A000129(n)+3)`
-/

namespace A039831.P10538676307657139742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154255 (A000129 n + 3).toNat

end

end A039831.P10538676307657139742

/-!
# A039832: Numbers k such that k and k+1 both have 4 divisors.

The programs for A039832, the canonical program `A039832.P5669691020800147113` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A039832 has offset 1).

The definition of A039832 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2992 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A039832.P5669691020800147113

`filter[A005237(n+1), A354927(#)]`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A039832

/-- `filter[A005237(n+1), A354927(#)]` -/
def P5669691020800147113.Spec : Prop :=
  ∀ n, P5669691020800147113.a n = A039832 (n + 1)

theorem P5669691020800147113.correct : P5669691020800147113.Spec := by
  intro n
  simp only [A039832, Nat.add_sub_cancel]

end A039832

/-! ## A039832.P12562974687430240405

`filter[A005237(n+2), A374128(#)]`
-/

namespace A039832.P12562974687430240405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005237 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374128 (f1 j).toNat = 1) n)

end

end A039832.P12562974687430240405

namespace A039832

/-- `filter[A005237(n+2), A374128(#)]` -/
def P12562974687430240405.Spec : Prop :=
  ∀ n, P12562974687430240405.a n = A039832 (n + 1)

end A039832

/-! ## A039832.P8607944177134103468

`∩[A005237(n+1), A038456(n+1)]`
-/

namespace A039832.P8607944177134103468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005237 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038456 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039832.P8607944177134103468

namespace A039832

/-- `∩[A005237(n+1), A038456(n+1)]` -/
def P8607944177134103468.Spec : Prop :=
  ∀ n, (P8607944177134103468.a n : ℤ) = A039832 (n + 1)

end A039832

/-! ## A039832.P14292846583962167633

`∩[A001358(n+1), A005237(n+1)]`
-/

namespace A039832.P14292846583962167633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005237 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039832.P14292846583962167633

namespace A039832

/-- `∩[A001358(n+1), A005237(n+1)]` -/
def P14292846583962167633.Spec : Prop :=
  ∀ n, (P14292846583962167633.a n : ℤ) = A039832 (n + 1)

end A039832

/-! ## A039832.P10440604966097773275

`filter[A005237(n+1), A064911(#)]`
-/

namespace A039832.P10440604966097773275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005237 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A039832.P10440604966097773275

namespace A039832

/-- `filter[A005237(n+1), A064911(#)]` -/
def P10440604966097773275.Spec : Prop :=
  ∀ n, P10440604966097773275.a n = A039832 (n + 1)

end A039832

/-! ## A039832.P3174218758251361303

`filter[A005237(n+1), A280710(#)]`
-/

namespace A039832.P3174218758251361303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005237 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A280710 (f1 j).toNat = 1) n)

end

end A039832.P3174218758251361303

namespace A039832

/-- `filter[A005237(n+1), A280710(#)]` -/
def P3174218758251361303.Spec : Prop :=
  ∀ n, P3174218758251361303.a n = A039832 (n + 1)

end A039832

/-! ## A039832.P6765608450928183106

`filter[A005237(n+2), A101040(#)]`
-/

namespace A039832.P6765608450928183106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005237 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A101040 (f1 j).toNat = 1) n)

end

end A039832.P6765608450928183106

namespace A039832

/-- `filter[A005237(n+2), A101040(#)]` -/
def P6765608450928183106.Spec : Prop :=
  ∀ n, P6765608450928183106.a n = A039832 (n + 1)

end A039832

/-! ## A039832.P18362002592482645456

`filter[A005237(n+2), A353471(#)]`
-/

namespace A039832.P18362002592482645456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005237 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353471 (f1 j).toNat = 1) n)

end

end A039832.P18362002592482645456

namespace A039832

/-- `filter[A005237(n+2), A353471(#)]` -/
def P18362002592482645456.Spec : Prop :=
  ∀ n, P18362002592482645456.a n = A039832 (n + 1)

end A039832

/-! ## A039832.P14976137692442950311

`filter[A005237(n+2), A353788(#)]`
-/

namespace A039832.P14976137692442950311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005237 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353788 (f1 j).toNat = 1) n)

end

end A039832.P14976137692442950311

namespace A039832

/-- `filter[A005237(n+2), A353788(#)]` -/
def P14976137692442950311.Spec : Prop :=
  ∀ n, P14976137692442950311.a n = A039832 (n + 1)

end A039832

/-! ## A039832.P1306231401124180145

`filter[A005237(n+2), A353799(#)]`
-/

namespace A039832.P1306231401124180145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005237 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353799 (f1 j).toNat = 1) n)

end

end A039832.P1306231401124180145

namespace A039832

/-- `filter[A005237(n+2), A353799(#)]` -/
def P1306231401124180145.Spec : Prop :=
  ∀ n, P1306231401124180145.a n = A039832 (n + 1)

end A039832

/-! ## A039832.P2846691275790291778

`∩[A005237(n+1), A089995(n+1)]`
-/

namespace A039832.P2846691275790291778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005237 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089995 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039832.P2846691275790291778

namespace A039832

/-- `∩[A005237(n+1), A089995(n+1)]` -/
def P2846691275790291778.Spec : Prop :=
  ∀ n, (P2846691275790291778.a n : ℤ) = A039832 (n + 1)

end A039832

/-! ## A039832.P10929510121607031587

`∩[A089995(n+1), A140128(n+1)]`
-/

namespace A039832.P10929510121607031587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089995 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140128 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039832.P10929510121607031587

namespace A039832

/-- `∩[A089995(n+1), A140128(n+1)]` -/
def P10929510121607031587.Spec : Prop :=
  ∀ n, (P10929510121607031587.a n : ℤ) = A039832 (n + 1)

end A039832

/-! ## A039832.P3780652150361306707

`∩[A005237(n+1), A006881(n+1)]`
-/

namespace A039832.P3780652150361306707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005237 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006881 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039832.P3780652150361306707

namespace A039832

/-- `∩[A005237(n+1), A006881(n+1)]` -/
def P3780652150361306707.Spec : Prop :=
  ∀ n, (P3780652150361306707.a n : ℤ) = A039832 (n + 1)

end A039832

/-! ## A039832.P7084965641194037601

`∩[A005237(n+1), A068993(n+1)]`
-/

namespace A039832.P7084965641194037601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005237 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068993 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039832.P7084965641194037601

namespace A039832

/-- `∩[A005237(n+1), A068993(n+1)]` -/
def P7084965641194037601.Spec : Prop :=
  ∀ n, (P7084965641194037601.a n : ℤ) = A039832 (n + 1)

end A039832

/-! ## A039832.P2192110689685274123

`∩[A005237(n+1), A161918(n+1)]`
-/

namespace A039832.P2192110689685274123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005237 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161918 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039832.P2192110689685274123

namespace A039832

/-- `∩[A005237(n+1), A161918(n+1)]` -/
def P2192110689685274123.Spec : Prop :=
  ∀ n, (P2192110689685274123.a n : ℤ) = A039832 (n + 1)

end A039832

/-! ## A039832.P5193322706352153399

`∩[A005237(n+1), A007422(n+1)]`
-/

namespace A039832.P5193322706352153399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005237 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007422 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039832.P5193322706352153399

namespace A039832

/-- `∩[A005237(n+1), A007422(n+1)]` -/
def P5193322706352153399.Spec : Prop :=
  ∀ n, (P5193322706352153399.a n : ℤ) = A039832 (n + 1)

end A039832

/-! ## A039832.P14619047596455101490

`∩[A005237(n+1), A030513(n+1)]`
-/

namespace A039832.P14619047596455101490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005237 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030513 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039832.P14619047596455101490

namespace A039832

/-- `∩[A005237(n+1), A030513(n+1)]` -/
def P14619047596455101490.Spec : Prop :=
  ∀ n, (P14619047596455101490.a n : ℤ) = A039832 (n + 1)

end A039832

/-! ## A039832.P9557622645187723192

`∩[A007422(n+2)-1, A007422(n+2)]`
-/

namespace A039832.P9557622645187723192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007422 (n + 2) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007422 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039832.P9557622645187723192

namespace A039832

/-- `∩[A007422(n+2)-1, A007422(n+2)]` -/
def P9557622645187723192.Spec : Prop :=
  ∀ n, (P9557622645187723192.a n : ℤ) = A039832 (n + 1)

end A039832

/-! ## A039832.P15264379497750565852

`∩[A030513(n+2)-1, A030513(n+2)]`
-/

namespace A039832.P15264379497750565852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030513 (n + 2) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030513 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039832.P15264379497750565852

namespace A039832

/-- `∩[A030513(n+2)-1, A030513(n+2)]` -/
def P15264379497750565852.Spec : Prop :=
  ∀ n, (P15264379497750565852.a n : ℤ) = A039832 (n + 1)

end A039832

/-! ## A039832.P8481139610223492911

`A030513(eq[1, A030513(n+1)-A007422(n+1)])`
-/

namespace A039832.P8481139610223492911
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030513 (n + 1) - A007422 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030513 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A039832.P8481139610223492911

namespace A039832

/-- `A030513(eq[1, A030513(n+1)-A007422(n+1)])` -/
def P8481139610223492911.Spec : Prop :=
  ∀ n, P8481139610223492911.a n = A039832 (n + 1)

end A039832

/-!
# A039833: Smallest of three consecutive squarefree numbers k, k+1, k+2 of the form p*q where p and q are distinct primes.

The programs for A039833, there is no canonical definition to state claims against.
-/

/-! ## A039833.P7309838843225814167

`A248201(n+1)-1`
-/

namespace A039833.P7309838843225814167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248201 (n + 1) - 1

end

end A039833.P7309838843225814167

/-! ## A039833.P5033713767652621365

`2*A195685(n+1)-1`
-/

namespace A039833.P5033713767652621365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A195685 (n + 1) - 1

end

end A039833.P5033713767652621365

/-! ## A039833.P7437809156054461112

`A349911(A020639(2*(n+1)))+A248201(n+1)`
-/

namespace A039833.P7437809156054461112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349911 (A020639 (2 * (n + 1))).toNat + A248201 (n + 1)

end

end A039833.P7437809156054461112

/-! ## A039833.P17568971458053639985

`∩[A056809(n+1), A075039(n+1)]`
-/

namespace A039833.P17568971458053639985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056809 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075039 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039833.P17568971458053639985

/-! ## A039833.P3953863090011010235

`∩[A056809(n+1), A359746(n+1)]`
-/

namespace A039833.P3953863090011010235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056809 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359746 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039833.P3953863090011010235

/-! ## A039833.P6973677669365050998

`∩[A052214(n+1), A056809(n+1)]`
-/

namespace A039833.P6973677669365050998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052214 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056809 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039833.P6973677669365050998

/-! ## A039833.P2138495966174328275

`∩[A056809(n+1), A364307(n+1)]`
-/

namespace A039833.P2138495966174328275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056809 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364307 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039833.P2138495966174328275

/-! ## A039833.P5311634678964156459

`∩[A075039(n+1), A364307(n+1)]`
-/

namespace A039833.P5311634678964156459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075039 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364307 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039833.P5311634678964156459

/-! ## A039833.P4435901039587498045

`∩[A052214(n+1), A362410(n+1)]`
-/

namespace A039833.P4435901039587498045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052214 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362410 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039833.P4435901039587498045

/-! ## A039833.P7012670603899843756

`∩[A056809(n+1), A362410(n+1)]`
-/

namespace A039833.P7012670603899843756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056809 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362410 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039833.P7012670603899843756

/-! ## A039833.P9506904227388207564

`∩[A075039(n+1), A362410(n+1)]`
-/

namespace A039833.P9506904227388207564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075039 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362410 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039833.P9506904227388207564

/-! ## A039833.P2389872156268933092

`∩[A359746(n+1), A362410(n+1)]`
-/

namespace A039833.P2389872156268933092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359746 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362410 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039833.P2389872156268933092

/-! ## A039833.P4594803296361795594

`∩[A005238(n+1), A056809(n+1)]`
-/

namespace A039833.P4594803296361795594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005238 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056809 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039833.P4594803296361795594

/-! ## A039833.P8228240251100672615

`∩[A005238(n+1), A362410(n+1)]`
-/

namespace A039833.P8228240251100672615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005238 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362410 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039833.P8228240251100672615

/-! ## A039833.P1354247771384998439

`∩[A086005(n+1), A169834(n+1)]-1`
-/

namespace A039833.P1354247771384998439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169834 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A039833.P1354247771384998439

/-! ## A039833.P922422962984332138

`∩[A056809(n+1), A063838(n+1)]`
-/

namespace A039833.P922422962984332138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056809 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063838 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039833.P922422962984332138

/-! ## A039833.P13751378749214038926

`∩[A063838(n+1), A362410(n+1)]`
-/

namespace A039833.P13751378749214038926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063838 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362410 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039833.P13751378749214038926

/-! ## A039833.P867990635831633311

`∩[A063838(n+1), A364307(n+1)]`
-/

namespace A039833.P867990635831633311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063838 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364307 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039833.P867990635831633311

/-! ## A039833.P15005272764576320692

`∩[A086005(n+1), A192220(n+1)]-1`
-/

namespace A039833.P15005272764576320692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192220 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A039833.P15005272764576320692

/-! ## A039833.P13053191157331542694

`∩[A169834(n+1), A192220(n+1)]-1`
-/

namespace A039833.P13053191157331542694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169834 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192220 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A039833.P13053191157331542694

/-!
# A039834: a(n+2) = -a(n+1) + a(n) (signed Fibonacci numbers) with a(-2) = a(-1) = 1; or Fibonacci numbers (A000045) extended to negative indices.

The programs for A039834, there is no canonical definition to state claims against.
-/

/-! ## A039834.P4158764021298902708

`ogf((1+2x)/(1+x-x^2))`
-/

namespace A039834.P4158764021298902708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2] [1, 1, -1] n

end

end A039834.P4158764021298902708

/-! ## A039834.P8663267268794129103

`a(n-2)-a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A039834.P8663267268794129103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 2) - a (n - 1)

end

end A039834.P8663267268794129103

/-! ## A039834.P557706885024779337

`A051792(A004274(n+1))`
-/

namespace A039834.P557706885024779337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051792 (A004274 (n + 1)).toNat

end

end A039834.P557706885024779337

/-! ## A039834.P5116199367308142632

`A051792(A004280(n+1))`
-/

namespace A039834.P5116199367308142632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051792 (A004280 (n + 1)).toNat

end

end A039834.P5116199367308142632

/-! ## A039834.P2787276872260729804

`A033999(n)*A152163(n)`
-/

namespace A039834.P2787276872260729804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A152163 n

end

end A039834.P2787276872260729804

/-! ## A039834.P8076048212828716158

`2-A033999(n)*A078024(n)`
-/

namespace A039834.P8076048212828716158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A033999 n * A078024 n

end

end A039834.P8076048212828716158

/-! ## A039834.P12193970343525137874

`A152163(Δ[A004526(n)])*A152163(n)`
-/

namespace A039834.P12193970343525137874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152163 (f1 (n + 1) - f1 n).toNat * A152163 n

end

end A039834.P12193970343525137874

/-! ## A039834.P5982259439885859216

`A152163(Δ[A008619(n)])*A152163(n)`
-/

namespace A039834.P5982259439885859216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152163 (f1 (n + 1) - f1 n).toNat * A152163 n

end

end A039834.P5982259439885859216

/-! ## A039834.P15552590607953653013

`A051792(2*(n+1))`
-/

namespace A039834.P15552590607953653013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051792 (2 * (n + 1))

end

end A039834.P15552590607953653013

/-! ## A039834.P8302452035892605780

`2-∑[A119282(n)+1]`
-/

namespace A039834.P8302452035892605780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119282 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A039834.P8302452035892605780

/-! ## A039834.P290110424761137313

`2-∑[A033999(n)*A212804(n)]`
-/

namespace A039834.P290110424761137313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A212804 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A039834.P290110424761137313

/-! ## A039834.P4360232611060868040

`Δ[A113312(n)]`
-/

namespace A039834.P4360232611060868040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113312 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A039834.P4360232611060868040

/-! ## A039834.P15308157686679892867

`A113312(n+1)-A113312(n)`
-/

namespace A039834.P15308157686679892867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113312 (n + 1) - A113312 n

end

end A039834.P15308157686679892867

/-! ## A039834.P2410546250954961677

`A119282(n)+2-A355020(n)`
-/

namespace A039834.P2410546250954961677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119282 n + (2 - A355020 n)

end

end A039834.P2410546250954961677

/-! ## A039834.P15586769245920774454

`Δ[A212804(n)]*A033999(n+1)`
-/

namespace A039834.P15586769245920774454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A033999 (n + 1)

end

end A039834.P15586769245920774454

/-! ## A039834.P11027080040250092562

`2-A112469(n)`
-/

namespace A039834.P11027080040250092562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A112469 n

end

end A039834.P11027080040250092562

/-! ## A039834.P11655437020224245288

`4-A113312(n+2)`
-/

namespace A039834.P11655437020224245288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 - A113312 (n + 2)

end

end A039834.P11655437020224245288

/-! ## A039834.P9317710458933508341

`∑[A094966(n)-A094967(n)]+2`
-/

namespace A039834.P9317710458933508341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094966 n - A094967 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A039834.P9317710458933508341

/-! ## A039834.P6744739404449544008

`(A066983(n+1)-A008346(n+1))*A033999(n)`
-/

namespace A039834.P6744739404449544008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A066983 (n + 1) - A008346 (n + 1)) * A033999 n

end

end A039834.P6744739404449544008

/-! ## A039834.P18048655923650384255

`A087123(n)-A005013(n)`
-/

namespace A039834.P18048655923650384255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087123 n - A005013 n

end

end A039834.P18048655923650384255

/-!
# A039835: Indices of triangular numbers which are also heptagonal.

The programs for A039835, there is no canonical definition to state claims against.
-/

/-! ## A039835.P809474458721665781

`A254627(record[or(2, n)])-1`
-/

namespace A039835.P809474458721665781
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254627 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) - 1

end

end A039835.P809474458721665781

/-! ## A039835.P4616868861827113420

`A004695(4*ceil((3*(n+1)-2)/2))`
-/

namespace A039835.P4616868861827113420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004695 (4 * ⌈((3 * (n + 1) : ℤ) - 2 : ℚ) / 2⌉).toNat

end

end A039835.P4616868861827113420

/-! ## A039835.P17230759210624199265

`A099517(A087445(n+1))`
-/

namespace A039835.P17230759210624199265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099517 (A087445 (n + 1)).toNat

end

end A039835.P17230759210624199265

/-! ## A039835.P13779105672419132222

`A173673(A259751(n+1))`
-/

namespace A039835.P13779105672419132222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173673 (A259751 (n + 1)).toNat

end

end A039835.P13779105672419132222

/-! ## A039835.P5528036892392342849

`A387778(A047241(n+1))`
-/

namespace A039835.P5528036892392342849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387778 (A047241 (n + 1)).toNat

end

end A039835.P5528036892392342849

/-! ## A039835.P17460964415277061637

`A201864(A092899(n+1)+1)`
-/

namespace A039835.P17460964415277061637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201864 (A092899 (n + 1) + 1).toNat

end

end A039835.P17460964415277061637

/-! ## A039835.P1541514617834467253

`A147997(A092259(n+1))-1`
-/

namespace A039835.P1541514617834467253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147997 (A092259 (n + 1)).toNat - 1

end

end A039835.P1541514617834467253

/-! ## A039835.P16869202170967038585

`A254627(A042964(n+1))-1`
-/

namespace A039835.P16869202170967038585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254627 (A042964 (n + 1)).toNat - 1

end

end A039835.P16869202170967038585

/-! ## A039835.P17146464872100994329

`floor(sqrt(5)*(sqrt(5)-(-1)^(n+1))*(2+sqrt(5))^(2*(n+1)-1)/20)`
-/

namespace A039835.P17146464872100994329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (5 : ℝ) * (Real.sqrt (5 : ℝ) - ((-1) ^ (n + 1) : ℝ)) * (2 + Real.sqrt (5 : ℝ)) ^ ((2 * (n + 1) : ℤ) - 1 : ℤ) / 20⌋

end

end A039835.P17146464872100994329

/-!
# A039836: Maximal number m of integers s(i), with 1 <= s(1) < s(2) < ... < s(m) <= n, such that all sums s(i) + s(j), i<>j, are distinct.

The programs for A039836, there is no canonical definition to state claims against.
-/

/-! ## A039836.P2198070661884971200

`A127321(A181325(n)+8*n)`
-/

namespace A039836.P2198070661884971200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127321 (A181325 n + (8 * n : ℤ)).toNat

end

end A039836.P2198070661884971200

/-! ## A039836.P3269707054918933033

`A331256(A331246(n+1)+A133280(n))`
-/

namespace A039836.P3269707054918933033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331256 (A331246 (n + 1) + A133280 n).toNat

end

end A039836.P3269707054918933033

/-! ## A039836.P13732651076751412228

`A331256(A331256(n+1)+A133280(n))`
-/

namespace A039836.P13732651076751412228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331256 (A331256 (n + 1) + A133280 n).toNat

end

end A039836.P13732651076751412228

/-! ## A039836.P17356769597793861939

`A377722(A276916(n))`
-/

namespace A039836.P17356769597793861939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377722 (A276916 n).toNat

end

end A039836.P17356769597793861939

/-! ## A039836.P10322166495953384342

`A387704(A023660(n+1))`
-/

namespace A039836.P10322166495953384342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387704 (A023660 (n + 1)).toNat

end

end A039836.P10322166495953384342

/-!
# A039837: Number of partitions satisfying cn(0,5) <= cn(1,5) and cn(0,5) <= cn(4,5).

The programs for A039837, there is no canonical definition to state claims against.
-/

/-! ## A039837.P17411249922421182529

`A039838(A055645(n))`
-/

namespace A039837.P17411249922421182529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039838 (A055645 n).toNat

end

end A039837.P17411249922421182529

/-! ## A039837.P5316258904461156411

`A039838(A262545(n+1))`
-/

namespace A039837.P5316258904461156411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039838 (A262545 (n + 1)).toNat

end

end A039837.P5316258904461156411

/-! ## A039837.P10553163245043321833

`A039838(n)%A001262(A076739(n))`
-/

namespace A039837.P10553163245043321833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A039838 n) (A001262 (A076739 n).toNat)

end

end A039837.P10553163245043321833

/-! ## A039837.P10707119045317079401

`A039838(n)*A368330(A039795(n+1))`
-/

namespace A039837.P10707119045317079401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039838 n * A368330 (A039795 (n + 1)).toNat

end

end A039837.P10707119045317079401

/-!
# A039839: Number of partitions satisfying cn(0,5) <= cn(1,5) + cn(4,5).

The programs for A039839, there is no canonical definition to state claims against.
-/

/-! ## A039839.P9086860424387223336

`A344652(A000601(n))+A117193(2*n+1)`
-/

namespace A039839.P9086860424387223336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344652 (A000601 n).toNat + A117193 (2 * n + 1)

end

end A039839.P9086860424387223336

/-! ## A039839.P15886843251551809524

`A343779(A008637(n)+1)+A024794(A000010(n+2))`
-/

namespace A039839.P15886843251551809524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343779 (A008637 n + 1).toNat + A024794 (A000010 (n + 2)).toNat

end

end A039839.P15886843251551809524

/-! ## A039839.P1534200060637488720

`A184640(n)+A179830(A274077(n))`
-/

namespace A039839.P1534200060637488720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184640 n + A179830 (A274077 n).toNat

end

end A039839.P1534200060637488720

/-! ## A039839.P7916393112022367357

`A000041(n)-A144625(A001190(n))`
-/

namespace A039839.P7916393112022367357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A144625 (A001190 n).toNat

end

end A039839.P7916393112022367357

/-! ## A039839.P9859111987224837948

`A261775(n)-A316345(A169774(n+4))`
-/

namespace A039839.P9859111987224837948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261775 n - A316345 (A169774 (n + 4)).toNat

end

end A039839.P9859111987224837948

/-!
# A039840: Number of partitions of n satisfying cn(0,5) <= cn(2,5) + cn(3,5).

The programs for A039840, there is no canonical definition to state claims against.
-/

/-! ## A039840.P1220302420103255435

`A039859(n)+A039841(n)`
-/

namespace A039840.P1220302420103255435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039859 n + A039841 n

end

end A039840.P1220302420103255435

/-! ## A039840.P977542356458120025

`A027341(n)-A085978(A082582(n))`
-/

namespace A039840.P977542356458120025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027341 n - A085978 (A082582 n).toNat

end

end A039840.P977542356458120025

/-! ## A039840.P16479750061072945999

`A027341(n)-A030315(A239259(3*(n+1)))`
-/

namespace A039840.P16479750061072945999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027341 n - A030315 (A239259 (3 * (n + 1))).toNat

end

end A039840.P16479750061072945999

/-! ## A039840.P12929701342224768343

`A332745(n)-A135528(A332745(3*n+4))`
-/

namespace A039840.P12929701342224768343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332745 n - A135528 (A332745 (3 * n + 4)).toNat

end

end A039840.P12929701342224768343

/-! ## A039840.P12476538315714986596

`A343779(A340719(n)+1)-A011731(A000040(n+1))`
-/

namespace A039840.P12476538315714986596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343779 (A340719 (n + 36) + 1).toNat - A011731 (A000040 (n + 1)).toNat

end

end A039840.P12476538315714986596

/-!
# A039841: Number of partitions of n satisfying cn(0,5) < cn(2,5) + cn(3,5).

The programs for A039841, there is no canonical definition to state claims against.
-/

/-! ## A039841.P5580016360101209404

`A000041(n)-A039861(n)`
-/

namespace A039841.P5580016360101209404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A039861 n

end

end A039841.P5580016360101209404

/-! ## A039841.P6121667227521922693

`A039840(n)-A039859(n)`
-/

namespace A039841.P6121667227521922693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039840 n - A039859 n

end

end A039841.P6121667227521922693

/-! ## A039841.P8060369985751816200

`A064174(n+1)-A378284(A134736(3*n+4))`
-/

namespace A039841.P8060369985751816200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064174 (n + 1) - A378284 (A134736 (3 * n + 4)).toNat

end

end A039841.P8060369985751816200

/-!
# A039842: Number of partitions satisfying cn(0,5) < cn(1,5) + cn(4,5).

The programs for A039842, there is no canonical definition to state claims against.
-/

/-! ## A039842.P14000691823869682438

`Δ[A000070(n)]-A039860(n+1)`
-/

namespace A039842.P14000691823869682438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000070 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A039860 (n + 1)

end

end A039842.P14000691823869682438

/-! ## A039842.P8195916903373300235

`record[A035363(n)]-A039860(n+1)`
-/

namespace A039842.P8195916903373300235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A039860 (n + 1)

end

end A039842.P8195916903373300235

/-! ## A039842.P16298822887608948118

`record[A035444(n)]-A039860(n+1)`
-/

namespace A039842.P16298822887608948118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035444 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A039860 (n + 1)

end

end A039842.P16298822887608948118

/-! ## A039842.P17649540264244531353

`record[A114099(n)]-A039860(n+1)`
-/

namespace A039842.P17649540264244531353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114099 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A039860 (n + 1)

end

end A039842.P17649540264244531353

/-! ## A039842.P58342821613829014

`A000041(n+1)-A039860(n+1)`
-/

namespace A039842.P58342821613829014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) - A039860 (n + 1)

end

end A039842.P58342821613829014

/-! ## A039842.P13043318357443129574

`Δ[A025065(2*n)]-A039860(n+1)`
-/

namespace A039842.P13043318357443129574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025065 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A039860 (n + 1)

end

end A039842.P13043318357443129574

/-! ## A039842.P7820871063930160603

`A242642(A000124(n))-A039860(n+1)`
-/

namespace A039842.P7820871063930160603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242642 (A000124 n).toNat - A039860 (n + 1)

end

end A039842.P7820871063930160603

/-! ## A039842.P8827382703189006329

`A039839(n+1)-A039858(n+1)`
-/

namespace A039842.P8827382703189006329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039839 (n + 1) - A039858 (n + 1)

end

end A039842.P8827382703189006329

/-!
# A039843: Number of partitions satisfying cn(0,5) <= cn(1,5) + cn(2,5) and cn(0,5) <= cn(4,5) + cn(2,5) and cn(0,5) <= cn(1,5) + cn(3,5) and cn(0,5) <= cn(4,5) + cn(3,5).

The programs for A039843, there is no canonical definition to state claims against.
-/

/-! ## A039843.P1076243666255874810

`abs(A145724(A187829(n+1)))`
-/

namespace A039843.P1076243666255874810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A145724 (A187829 (n + 1)).toNat|

end

end A039843.P1076243666255874810

/-! ## A039843.P7287177662150348247

`gcd(A315075(n)!, A145724(n+1))`
-/

namespace A039843.P7287177662150348247
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Nat.factorial (A315075 n).toNat : ℤ) (A145724 (n + 1))

end

end A039843.P7287177662150348247

/-! ## A039843.P4543931339944575231

`∑{d}[A145724(A043320(n+1)), A000010(#)]`
-/

namespace A039843.P4543931339944575231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145724 (A043320 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A039843.P4543931339944575231

/-! ## A039843.P16115541864825219634

`A027336(n)+A027193(A006577(2^((n-1)%(n+1))))`
-/

namespace A039843.P16115541864825219634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027336 n + A027193 (A006577 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (Int.tmod ((n : ℤ) - 1) (n + 1 : ℤ) : ℤ))).toNat).toNat

end

end A039843.P16115541864825219634

/-! ## A039843.P15333563043639053799

`A019554(A145724(n+1)²)`
-/

namespace A039843.P15333563043639053799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019554 (A145724 (n + 1) ^ 2).toNat

end

end A039843.P15333563043639053799

/-!
# A039844: Number of partitions satisfying cn(0,5) <= cn(1,5) + cn(4,5) + cn(2,5) and cn(0,5) <= cn(1,5) + cn(4,5) + cn(3,5).

The programs for A039844, there is no canonical definition to state claims against.
-/

/-! ## A039844.P785818247143054959

`A000194(A000041(n)*A184640(n))`
-/

namespace A039844.P785818247143054959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A000041 n * A184640 n).toNat

end

end A039844.P785818247143054959

/-! ## A039844.P10071719046622399042

`A000194(A184640(n)*A184645(n))`
-/

namespace A039844.P10071719046622399042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A184640 n * A184645 n).toNat

end

end A039844.P10071719046622399042

/-! ## A039844.P10860383155495397666

`A034298(A035959(n))-A347698(n+1)`
-/

namespace A039844.P10860383155495397666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034298 (A035959 n).toNat - A347698 (n + 1)

end

end A039844.P10860383155495397666

/-! ## A039844.P13734684640179883719

`A328221(n)+A005361(A175361(2*n+1))`
-/

namespace A039844.P13734684640179883719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328221 n + A005361 (A175361 (2 * n + 1)).toNat

end

end A039844.P13734684640179883719

/-! ## A039844.P16477917534194290688

`A167904(A039839(n))`
-/

namespace A039844.P16477917534194290688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167904 (A039839 n).toNat

end

end A039844.P16477917534194290688

/-!
# A039845: Number of partitions satisfying cn(0,5) <= cn(1,5) + cn(2,5) + cn(3,5) and cn(0,5) <= cn(4,5) + cn(2,5) + cn(3,5).

The programs for A039845, there is no canonical definition to state claims against.
-/

/-! ## A039845.P17946404485100469305

`A287864(A139582(n))`
-/

namespace A039845.P17946404485100469305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287864 (A139582 n).toNat

end

end A039845.P17946404485100469305

/-! ## A039845.P5327020393801522772

`A287864(2*A000041(n))`
-/

namespace A039845.P5327020393801522772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287864 (2 * A000041 n).toNat

end

end A039845.P5327020393801522772

/-! ## A039845.P4309357316061516801

`A319564(n)-A269243(A000079(n))`
-/

namespace A039845.P4309357316061516801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319564 n - A269243 (A000079 n).toNat

end

end A039845.P4309357316061516801

/-! ## A039845.P7609196429576106068

`A137734(A039840(n)*A039844(n))`
-/

namespace A039845.P7609196429576106068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137734 (A039840 n * A039844 n).toNat

end

end A039845.P7609196429576106068

/-! ## A039845.P13364253584672957005

`A000194(A184640(n)*A184641(n))`
-/

namespace A039845.P13364253584672957005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A184640 n * A184641 n).toNat

end

end A039845.P13364253584672957005

/-!
# A039846: Number of partitions satisfying cn(0,5) < cn(1,5) + cn(4,5) + cn(2,5) and cn(0,5) < cn(1,5) + cn(4,5) + cn(3,5).

The programs for A039846, there is no canonical definition to state claims against.
-/

/-! ## A039846.P16167180905349146324

`A239948(2*n+3)-A352516(A216021(n+1))`
-/

namespace A039846.P16167180905349146324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239948 (2 * n + 3) - A352516 (A216021 (n + 1)).toNat

end

end A039846.P16167180905349146324

/-! ## A039846.P18222282034469564507

`A127433(A075648(n+1))`
-/

namespace A039846.P18222282034469564507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127433 (A075648 (n + 1)).toNat

end

end A039846.P18222282034469564507

/-! ## A039846.P16332779558673202625

`A320278(A026352(∑[or(1, 3*(2^n-1))-n]))`
-/

namespace A039846.P16332779558673202625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (3 * ((2 ^ n : ℤ) - 1)) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320278 (A026352 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A039846.P16332779558673202625

/-! ## A039846.P15524674351716792146

`A300826(A371758(n)+1)+A177116(n+1)`
-/

namespace A039846.P15524674351716792146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300826 (A371758 n + 1).toNat + A177116 (n + 1)

end

end A039846.P15524674351716792146

/-!
# A039847: Number of partitions satisfying cn(0,5) < cn(1,5) + cn(2,5) + cn(3,5) and cn(0,5) < cn(4,5) + cn(2,5) + cn(3,5).

The programs for A039847, there is no canonical definition to state claims against.
-/

/-! ## A039847.P13821823817110510495

`A390447(n+1)+A010059(A226254(n))-1`
-/

namespace A039847.P13821823817110510495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390447 (n + 1) + A010059 (A226254 n).toNat - 1

end

end A039847.P13821823817110510495

/-! ## A039847.P15169769712732727123

`∑[A000041(A083920(n))%A190376(n)]`
-/

namespace A039847.P15169769712732727123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000041 (A083920 n).toNat) (A190376 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A039847.P15169769712732727123

/-! ## A039847.P14502832182757481838

`A390447(n+1)+A010815(A384072(n))`
-/

namespace A039847.P14502832182757481838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390447 (n + 1) + A010815 (A384072 n).toNat

end

end A039847.P14502832182757481838

/-! ## A039847.P726872360534257269

`A390447(n+1)-A113704(A210379(n))`
-/

namespace A039847.P726872360534257269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390447 (n + 1) - A113704 (A210379 n).toNat

end

end A039847.P726872360534257269

/-! ## A039847.P17239887710165501955

`A390447(n+1)%A344472(A355324(n))`
-/

namespace A039847.P17239887710165501955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A390447 (n + 1)) (A344472 (A355324 n).toNat)

end

end A039847.P17239887710165501955

/-!
# A039848: Number of partitions satisfying cn(0,5) < cn(1,5) + cn(4,5) + cn(2,5) + cn(3,5).

The programs for A039848, there is no canonical definition to state claims against.
-/

/-! ## A039848.P11584234147297052213

`A347868(n+1)+A098852(A279344(n))`
-/

namespace A039848.P11584234147297052213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347868 (n + 1) + A098852 (A279344 n).toNat

end

end A039848.P11584234147297052213

/-! ## A039848.P3933762867675737114

`A347868(n+1)+A342910(A084061(n))`
-/

namespace A039848.P3933762867675737114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347868 (n + 1) + A342910 (A084061 n).toNat

end

end A039848.P3933762867675737114

/-! ## A039848.P14167510819955909363

`or(A102683((8*n)²), A347868(n+1))`
-/

namespace A039848.P14167510819955909363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A102683 ((8 * n) ^ 2)) (A347868 (n + 1))

end

end A039848.P14167510819955909363

/-! ## A039848.P17445429524268592485

`A347868(n+1)+A011745(A143891(n))`
-/

namespace A039848.P17445429524268592485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347868 (n + 1) + A011745 (A143891 n).toNat

end

end A039848.P17445429524268592485

/-! ## A039848.P11255865132407930411

`A347868(n+1)+A184974(A104144(n))`
-/

namespace A039848.P11255865132407930411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347868 (n + 1) + A184974 (A104144 n).toNat

end

end A039848.P11255865132407930411

/-!
# A039849: Number of partitions satisfying cn(0,5) <= cn(1,5) + cn(4,5) + cn(2,5) + cn(3,5).

The programs for A039849, there is no canonical definition to state claims against.
-/

/-! ## A039849.P9620473171117424344

`A036009(n+1)-A055641(A155587(n))`
-/

namespace A039849.P9620473171117424344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036009 (n + 1) - A055641 (A155587 n).toNat

end

end A039849.P9620473171117424344

/-! ## A039849.P1864715819921689464

`A000041(n+1)-A046080(A124900(n+1))`
-/

namespace A039849.P1864715819921689464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) - A046080 (A124900 (n + 1)).toNat

end

end A039849.P1864715819921689464

/-! ## A039849.P4282503226136198396

`A039896(A062399(n+1))`
-/

namespace A039849.P4282503226136198396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039896 (A062399 (n + 1)).toNat

end

end A039849.P4282503226136198396

/-! ## A039849.P16293722861660698355

`A039896(A120126(n+1))`
-/

namespace A039849.P16293722861660698355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039896 (A120126 (n + 1)).toNat

end

end A039849.P16293722861660698355

/-!
# A039851: Number of partitions satisfying cn(0,5) + cn(2,5) <= 1 and cn(0,5) + cn(3,5) <= 1.

The programs for A039851, there is no canonical definition to state claims against.
-/

/-! ## A039851.P6493095496672188739

`∑[∑[A060315(n+1)%2]]`
-/

namespace A039851.P6493095496672188739
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A060315 (n + 1)) 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A039851.P6493095496672188739

/-! ## A039851.P2867421640550709290

`∑[∑[C(A270831(3*(n+1)), 2)%2]-1]+1`
-/

namespace A039851.P2867421640550709290
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A270831 (3 * (n + 1))).toNat 2 % 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A039851.P2867421640550709290

/-! ## A039851.P503092209311609726

`∑[∑[A181923(A027292(n))]]`
-/

namespace A039851.P503092209311609726
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181923 (A027292 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A039851.P503092209311609726

/-! ## A039851.P18236881979287898973

`∑[∑[A011558(A268814(n))]]`
-/

namespace A039851.P18236881979287898973
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011558 (A268814 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A039851.P18236881979287898973

/-! ## A039851.P2420204766351087124

`∑[A110591(A242519(n+1))]`
-/

namespace A039851.P2420204766351087124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110591 (A242519 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A039851.P2420204766351087124

/-!
# A039852: Number of partitions satisfying cn(0,5) + cn(1,5) + cn(4,5) <= 1.

The programs for A039852, there is no canonical definition to state claims against.
-/

/-! ## A039852.P6731800371796866579

`A084630(A084630(2*(n+1))%A084617(n+1))`
-/

namespace A039852.P6731800371796866579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084630 (Int.tmod (A084630 (2 * (n + 1))) (A084617 (n + 1))).toNat

end

end A039852.P6731800371796866579

/-! ## A039852.P1263127903768020429

`A084630(A084630(2*(n+1)))%A336329(3*n+2)`
-/

namespace A039852.P1263127903768020429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A084630 (A084630 (2 * (n + 1))).toNat) (A336329 (3 * n + 2))

end

end A039852.P1263127903768020429

/-! ## A039852.P9354221166887609584

`A084630(A084630(2*(n+1)))+A000007(A001405(n))`
-/

namespace A039852.P9354221166887609584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084630 (A084630 (2 * (n + 1))).toNat + A000007 (A001405 n).toNat

end

end A039852.P9354221166887609584

/-! ## A039852.P1557245826613274539

`A204553(A089351(n+5))`
-/

namespace A039852.P1557245826613274539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204553 (A089351 (n + 5)).toNat

end

end A039852.P1557245826613274539

/-!
# A039853: Number of partitions satisfying cn(0,5) + cn(2,5) + cn(3,5) <= 1.

The programs for A039853, there is no canonical definition to state claims against.
-/

/-! ## A039853.P10902381118677252934

`∑[A130290(A000120(A024493(n)))]`
-/

namespace A039853.P10902381118677252934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130290 (A000120 (A024493 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A039853.P10902381118677252934

/-! ## A039853.P15686453357427918139

`∑[A134021(∏[A344391(n)])]`
-/

namespace A039853.P15686453357427918139
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344391 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134021 (∏ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A039853.P15686453357427918139

/-! ## A039853.P14553527794524886464

`∑[∑[A318721(A003592(n+1))]]`
-/

namespace A039853.P14553527794524886464
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318721 (A003592 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A039853.P14553527794524886464

/-! ## A039853.P770120373328188127

`ceil(A001650(A230119(n+1))/4)`
-/

namespace A039853.P770120373328188127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A001650 (A230119 (n + 1)).toNat : ℚ) / 4⌉

end

end A039853.P770120373328188127

/-! ## A039853.P9933970317326108586

`A360010(A230439(n+1))`
-/

namespace A039853.P9933970317326108586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360010 (A230439 (n + 1)).toNat

end

end A039853.P9933970317326108586

/-!
# A039855: Number of partitions satisfying cn(2,5) <= 1 and cn(3,5) <= 1.

The programs for A039855, there is no canonical definition to state claims against.
-/

/-! ## A039855.P2428384494198423157

`A180447(A327727(n+1))`
-/

namespace A039855.P2428384494198423157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180447 (A327727 (n + 1)).toNat

end

end A039855.P2428384494198423157

/-! ## A039855.P1361924373356578054

`A204164(A035955(3*n+5)-n)`
-/

namespace A039855.P1361924373356578054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204164 (A035955 (3 * n + 5) - (n : ℤ)).toNat

end

end A039855.P1361924373356578054

/-! ## A039855.P13972828980946969337

`A180447(A280204(2*n)+A276076(n))`
-/

namespace A039855.P13972828980946969337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180447 (A280204 (2 * n) + A276076 n).toNat

end

end A039855.P13972828980946969337

/-! ## A039855.P88328317482832270

`A263846(A237500(n+1))`
-/

namespace A039855.P88328317482832270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263846 (A237500 (n + 1)).toNat

end

end A039855.P88328317482832270

/-! ## A039855.P15631303076452663088

`A263846(A288831(n+1))`
-/

namespace A039855.P15631303076452663088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263846 (A288831 (n + 1)).toNat

end

end A039855.P15631303076452663088

/-!
# A039857: Number of partitions satisfying cn(2,5) + cn(3,5) <= 1.

The programs for A039857, there is no canonical definition to state claims against.
-/

/-! ## A039857.P2698250629501453574

`∑[A348192(A018271(n+1)+2)]`
-/

namespace A039857.P2698250629501453574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348192 (A018271 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A039857.P2698250629501453574

/-! ## A039857.P3055291681328687226

`∑[A350840(A050322(n+1)^A033106(n+1))]`
-/

namespace A039857.P3055291681328687226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350840 (SequenceMachineLib.roundAway ((A050322 (n + 1) : ℚ) ^ (A033106 (n + 1) : ℤ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A039857.P3055291681328687226

/-!
# A039858: Number of partitions satisfying cn(0,5) = cn(1,5) + cn(4,5).

The programs for A039858, there is no canonical definition to state claims against.
-/

/-! ## A039858.P3340776181330113504

`A039839(n+1)-A039842(n+1)`
-/

namespace A039858.P3340776181330113504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039839 (n + 1) - A039842 (n + 1)

end

end A039858.P3340776181330113504

/-! ## A039858.P3779733913876310968

`A039839(n+1)+A039860(n+1)-Δ[A000070(n)]`
-/

namespace A039858.P3779733913876310968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000070 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039839 (n + 1) + (A039860 (n + 1) - (f1 (n + 1) - f1 n))

end

end A039858.P3779733913876310968

/-! ## A039858.P1932577678724214521

`A039839(n+1)+A039860(n+1)-record[A035363(n)]`
-/

namespace A039858.P1932577678724214521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039839 (n + 1) + (A039860 (n + 1) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A039858.P1932577678724214521

/-! ## A039858.P17637732728479846072

`A039839(n+1)+A039860(n+1)-record[A035444(n)]`
-/

namespace A039858.P17637732728479846072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035444 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039839 (n + 1) + (A039860 (n + 1) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A039858.P17637732728479846072

/-! ## A039858.P5465299063444398260

`A039839(n+1)+A039860(n+1)-record[A114099(n)]`
-/

namespace A039858.P5465299063444398260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114099 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039839 (n + 1) + (A039860 (n + 1) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A039858.P5465299063444398260

/-! ## A039858.P2125979418214054786

`A039839(n+1)-(A000041(n+1)-A039860(n+1))`
-/

namespace A039858.P2125979418214054786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039839 (n + 1) - (A000041 (n + 1) - A039860 (n + 1))

end

end A039858.P2125979418214054786

/-! ## A039858.P14291168388131490592

`A039839(n+1)-(Δ[A025065(2*n)]-A039860(n+1))`
-/

namespace A039858.P14291168388131490592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025065 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039839 (n + 1) - (f1 (n + 1) - f1 n - A039860 (n + 1))

end

end A039858.P14291168388131490592

/-! ## A039858.P4572559443050066382

`A039839(n+1)+A039860(n+1)-A242642(A000124(n))`
-/

namespace A039858.P4572559443050066382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039839 (n + 1) + (A039860 (n + 1) - A242642 (A000124 n).toNat)

end

end A039858.P4572559443050066382

/-!
# A039859: Number of partitions of n satisfying cn(0,5) = cn(2,5) + cn(3,5).

The programs for A039859, there is no canonical definition to state claims against.
-/

/-! ## A039859.P15572420782044112729

`A039840(n)-A039841(n)`
-/

namespace A039859.P15572420782044112729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039840 n - A039841 n

end

end A039859.P15572420782044112729

/-!
# A039860: Number of partitions satisfying cn(1,5) + cn(4,5) <= cn(0,5).

The programs for A039860, there is no canonical definition to state claims against.
-/

/-! ## A039860.P277314640157997569

`Δ[A000070(n)]-A039842(n+1)`
-/

namespace A039860.P277314640157997569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000070 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A039842 (n + 1)

end

end A039860.P277314640157997569

/-! ## A039860.P14628524568884321592

`record[A035363(n)]-A039842(n+1)`
-/

namespace A039860.P14628524568884321592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A039842 (n + 1)

end

end A039860.P14628524568884321592

/-! ## A039860.P6118383677121060540

`record[A035444(n)]-A039842(n+1)`
-/

namespace A039860.P6118383677121060540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035444 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A039842 (n + 1)

end

end A039860.P6118383677121060540

/-! ## A039860.P14399618670425161064

`record[A114099(n)]-A039842(n+1)`
-/

namespace A039860.P14399618670425161064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114099 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A039842 (n + 1)

end

end A039860.P14399618670425161064

/-! ## A039860.P10249705865560398821

`A000041(n+1)-A039842(n+1)`
-/

namespace A039860.P10249705865560398821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) - A039842 (n + 1)

end

end A039860.P10249705865560398821

/-! ## A039860.P5090404094166025119

`A035363(2*(n+1))-A039842(n+1)`
-/

namespace A039860.P5090404094166025119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 (2 * (n + 1)) - A039842 (n + 1)

end

end A039860.P5090404094166025119

/-! ## A039860.P17235740223869022700

`A242642(A000124(n))-A039842(n+1)`
-/

namespace A039860.P17235740223869022700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242642 (A000124 n).toNat - A039842 (n + 1)

end

end A039860.P17235740223869022700

/-!
# A039861: Number of partitions of n satisfying cn(2,5) + cn(3,5) <= cn(0,5).

The programs for A039861, there is no canonical definition to state claims against.
-/

/-! ## A039861.P13563421413024655498

`A000041(n)-A039841(n)`
-/

namespace A039861.P13563421413024655498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A039841 n

end

end A039861.P13563421413024655498

/-!
# A039862: Number of partitions satisfying cn(1,5) <= cn(0,5) and cn(4,5) <= cn(0,5).

The programs for A039862, there is no canonical definition to state claims against.
-/

/-! ## A039862.P10893859280716911878

`A157685(A131945(n+1)+1)`
-/

namespace A039862.P10893859280716911878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157685 (A131945 (n + 1) + 1).toNat

end

end A039862.P10893859280716911878

/-! ## A039862.P2053709344496958682

`floor(A208574(3*n+2)/A052962(n+4))`
-/

namespace A039862.P2053709344496958682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A208574 (3 * n + 2) : ℚ) / (A052962 (n + 4) : ℚ)⌋

end

end A039862.P2053709344496958682

/-! ## A039862.P17410034366973263732

`A086707(A105420(n+1))`
-/

namespace A039862.P17410034366973263732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086707 (A105420 (n + 1)).toNat

end

end A039862.P17410034366973263732

/-! ## A039862.P10947932827423278364

`A127321(A204514(n+1))`
-/

namespace A039862.P10947932827423278364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127321 (A204514 (n + 1)).toNat

end

end A039862.P10947932827423278364

/-!
# A039863: Number of partitions satisfying cn(2,5) <= cn(0,5) and cn(3,5) <= cn(0,5).

The programs for A039863, there is no canonical definition to state claims against.
-/

/-! ## A039863.P5279978460272379278

`A105224(A024481(n+2))`
-/

namespace A039863.P5279978460272379278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105224 (A024481 (n + 2)).toNat

end

end A039863.P5279978460272379278

/-! ## A039863.P9398950802409713699

`A052335(n)-A064873(A052335(3*n+2))`
-/

namespace A039863.P9398950802409713699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052335 n - A064873 (A052335 (3 * n + 2)).toNat

end

end A039863.P9398950802409713699

/-!
# A039866: Number of partitions satisfying cn(1,5) + cn(4,5) <= cn(0,5) + cn(2,5) + cn(3,5).

The programs for A039866, there is no canonical definition to state claims against.
-/

/-! ## A039866.P5419531514607129302

`Δ[A000070(n)]-A039881(n+1)`
-/

namespace A039866.P5419531514607129302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000070 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A039881 (n + 1)

end

end A039866.P5419531514607129302

/-! ## A039866.P18402553528666959126

`record[A035363(n)]-A039881(n+1)`
-/

namespace A039866.P18402553528666959126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A039881 (n + 1)

end

end A039866.P18402553528666959126

/-! ## A039866.P151043949514200299

`record[A035377(n)]-A039881(n+1)`
-/

namespace A039866.P151043949514200299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035377 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A039881 (n + 1)

end

end A039866.P151043949514200299

/-! ## A039866.P12591572448846335204

`record[A035444(n)]-A039881(n+1)`
-/

namespace A039866.P12591572448846335204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035444 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A039881 (n + 1)

end

end A039866.P12591572448846335204

/-! ## A039866.P7413848791376092778

`record[A114099(n)]-A039881(n+1)`
-/

namespace A039866.P7413848791376092778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114099 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A039881 (n + 1)

end

end A039866.P7413848791376092778

/-! ## A039866.P7030758164920861679

`record[A194543(n)]-A039881(n+1)`
-/

namespace A039866.P7030758164920861679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194543 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A039881 (n + 1)

end

end A039866.P7030758164920861679

/-! ## A039866.P2407923759433740672

`A000041(n+1)-A039881(n+1)`
-/

namespace A039866.P2407923759433740672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) - A039881 (n + 1)

end

end A039866.P2407923759433740672

/-! ## A039866.P4302674645508458784

`A035363(2*(n+1))-A039881(n+1)`
-/

namespace A039866.P4302674645508458784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 (2 * (n + 1)) - A039881 (n + 1)

end

end A039866.P4302674645508458784

/-!
# A039867: Number of partitions satisfying cn(2,5) + cn(3,5) <= cn(0,5) + cn(1,5) + cn(4,5).

The programs for A039867, there is no canonical definition to state claims against.
-/

/-! ## A039867.P1530560682678025340

`Δ[A000070(n)]-A039880(n+1)`
-/

namespace A039867.P1530560682678025340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000070 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A039880 (n + 1)

end

end A039867.P1530560682678025340

/-! ## A039867.P147512004736281305

`record[A035363(n)]-A039880(n+1)`
-/

namespace A039867.P147512004736281305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A039880 (n + 1)

end

end A039867.P147512004736281305

/-! ## A039867.P16890726506701506713

`record[A035377(n)]-A039880(n+1)`
-/

namespace A039867.P16890726506701506713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035377 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A039880 (n + 1)

end

end A039867.P16890726506701506713

/-! ## A039867.P3980975714301599804

`record[A035444(n)]-A039880(n+1)`
-/

namespace A039867.P3980975714301599804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035444 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A039880 (n + 1)

end

end A039867.P3980975714301599804

/-! ## A039867.P13215884801604105629

`record[A114099(n)]-A039880(n+1)`
-/

namespace A039867.P13215884801604105629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114099 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A039880 (n + 1)

end

end A039867.P13215884801604105629

/-! ## A039867.P14157129505125480367

`A000041(n+1)-A039880(n+1)`
-/

namespace A039867.P14157129505125480367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) - A039880 (n + 1)

end

end A039867.P14157129505125480367

/-! ## A039867.P7915760726544469577

`A035363(2*(n+1))-A039880(n+1)`
-/

namespace A039867.P7915760726544469577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 (2 * (n + 1)) - A039880 (n + 1)

end

end A039867.P7915760726544469577

/-!
# A039868: Number of partitions satisfying cn(1,5) + cn(4,5) < cn(0,5) + cn(2,5) + cn(3,5).

The programs for A039868, there is no canonical definition to state claims against.
-/

/-! ## A039868.P17875432493236581271

`Δ[A000070(n)]-A039879(n+1)`
-/

namespace A039868.P17875432493236581271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000070 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A039879 (n + 1)

end

end A039868.P17875432493236581271

/-! ## A039868.P5564530700278090329

`record[A035363(n)]-A039879(n+1)`
-/

namespace A039868.P5564530700278090329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A039879 (n + 1)

end

end A039868.P5564530700278090329

/-! ## A039868.P14301045737285877220

`record[A035444(n)]-A039879(n+1)`
-/

namespace A039868.P14301045737285877220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035444 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A039879 (n + 1)

end

end A039868.P14301045737285877220

/-! ## A039868.P8231538630555709014

`record[A114099(n)]-A039879(n+1)`
-/

namespace A039868.P8231538630555709014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114099 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A039879 (n + 1)

end

end A039868.P8231538630555709014

/-! ## A039868.P17797064533806124478

`A000041(n+1)-A039879(n+1)`
-/

namespace A039868.P17797064533806124478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) - A039879 (n + 1)

end

end A039868.P17797064533806124478

/-! ## A039868.P2281831818329754333

`record[A026807(n+1)]-A039879(n+1)`
-/

namespace A039868.P2281831818329754333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026807 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A039879 (n + 1)

end

end A039868.P2281831818329754333

/-!
# A039869: Number of partitions satisfying cn(2,5) + cn(3,5) < cn(0,5) + cn(1,5) + cn(4,5).

The programs for A039869, there is no canonical definition to state claims against.
-/

/-! ## A039869.P7176868119172762077

`Δ[A000070(n)]-A039878(n+1)`
-/

namespace A039869.P7176868119172762077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000070 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A039878 (n + 1)

end

end A039869.P7176868119172762077

/-! ## A039869.P16335226623182433085

`record[A035363(n)]-A039878(n+1)`
-/

namespace A039869.P16335226623182433085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A039878 (n + 1)

end

end A039869.P16335226623182433085

/-! ## A039869.P15426865609001066726

`record[A035444(n)]-A039878(n+1)`
-/

namespace A039869.P15426865609001066726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035444 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A039878 (n + 1)

end

end A039869.P15426865609001066726

/-! ## A039869.P9098056799338410263

`record[A114099(n)]-A039878(n+1)`
-/

namespace A039869.P9098056799338410263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114099 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A039878 (n + 1)

end

end A039869.P9098056799338410263

/-! ## A039869.P9375595719433179550

`A000041(n+1)-A039878(n+1)`
-/

namespace A039869.P9375595719433179550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) - A039878 (n + 1)

end

end A039869.P9375595719433179550

/-! ## A039869.P11830647313034207827

`A035363(2*(n+1))-A039878(n+1)`
-/

namespace A039869.P11830647313034207827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 (2 * (n + 1)) - A039878 (n + 1)

end

end A039869.P11830647313034207827

/-!
# A039871: Number of partitions satisfying cn(2,5) <= cn(0,5) + cn(1,5) + cn(4,5) and cn(3,5) <= cn(0,5) + cn(1,5) + cn(4,5).

The programs for A039871, there is no canonical definition to state claims against.
-/

/-! ## A039871.P5192741631745930128

`A000041(n)+A185153(n)%3`
-/

namespace A039871.P5192741631745930128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n + Int.tmod (A185153 n) 3

end

end A039871.P5192741631745930128

/-! ## A039871.P7603390959211970723

`A000041(n)+A206477(n+4)%3`
-/

namespace A039871.P7603390959211970723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n + Int.tmod (A206477 (n + 4)) 3

end

end A039871.P7603390959211970723

/-! ## A039871.P1451054853326459957

`A080843(A371965(n))+A000041(n)`
-/

namespace A039871.P1451054853326459957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080843 (A371965 n).toNat + A000041 n

end

end A039871.P1451054853326459957

/-! ## A039871.P3493734326103934729

`A037816(A387784(n)+1)+A000041(n)`
-/

namespace A039871.P3493734326103934729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037816 (A387784 n + 1).toNat + A000041 n

end

end A039871.P3493734326103934729

/-! ## A039871.P4473685858838233157

`A322523(A225546(n+1))+A000041(n)`
-/

namespace A039871.P4473685858838233157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322523 (A225546 (n + 1)).toNat + A000041 n

end

end A039871.P4473685858838233157

/-!
# A039875: Number of partitions satisfying cn(2,5) <= cn(0,5) + cn(3,5) and cn(2,5) <= cn(0,5) + cn(4,5) and cn(3,5) <= cn(0,5) + cn(1,5) and cn(3,5) <= cn(0,5) + cn(4,5).

The programs for A039875, there is no canonical definition to state claims against.
-/

/-! ## A039875.P10467272352468628990

`A346130(A036802(n+1))`
-/

namespace A039875.P10467272352468628990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346130 (A036802 (n + 1)).toNat

end

end A039875.P10467272352468628990

/-! ## A039875.P16781459692331960982

`or(A056556(A100095(n)), A280586(n))`
-/

namespace A039875.P16781459692331960982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A056556 (A100095 n).toNat) (A280586 n)

end

end A039875.P16781459692331960982

/-!
# A039876: Number of partitions satisfying cn(1,5) + cn(4,5) <= cn(2,5) and cn(1,5) + cn(4,5) <= cn(3,5).

The programs for A039876, there is no canonical definition to state claims against.
-/

/-! ## A039876.P16375607359970119121

`A193095(A187829(n+1))+A039860(n+1)`
-/

namespace A039876.P16375607359970119121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193095 (A187829 (n + 1)).toNat + A039860 (n + 1)

end

end A039876.P16375607359970119121

/-! ## A039876.P5439711082277397812

`Δ[A123068(A064174(n+1))]`
-/

namespace A039876.P5439711082277397812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123068 (A064174 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A039876.P5439711082277397812

/-! ## A039876.P8604238627600268905

`A363131(A002064(n))+A339405(n)`
-/

namespace A039876.P8604238627600268905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363131 (A002064 n).toNat + A339405 n

end

end A039876.P8604238627600268905

/-!
# A039877: Number of partitions satisfying cn(2,5) + cn(3,5) <= cn(1,5) and cn(2,5) + cn(3,5) <= cn(4,5).

The programs for A039877, there is no canonical definition to state claims against.
-/

/-! ## A039877.P2714504254923980480

`A002865(A187829(n+1))+A025866(n)²`
-/

namespace A039877.P2714504254923980480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 (A187829 (n + 1)).toNat + A025866 n ^ 2

end

end A039877.P2714504254923980480

/-!
# A039878: Number of partitions satisfying cn(0,5) + cn(1,5) + cn(4,5) <= cn(2,5) + cn(3,5).

The programs for A039878, there is no canonical definition to state claims against.
-/

/-! ## A039878.P101927971581538787

`Δ[A000070(n)]-A039869(n+1)`
-/

namespace A039878.P101927971581538787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000070 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A039869 (n + 1)

end

end A039878.P101927971581538787

/-! ## A039878.P11596667619857423388

`record[A035363(n)]-A039869(n+1)`
-/

namespace A039878.P11596667619857423388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A039869 (n + 1)

end

end A039878.P11596667619857423388

/-! ## A039878.P12634614006729715392

`record[A035444(n)]-A039869(n+1)`
-/

namespace A039878.P12634614006729715392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035444 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A039869 (n + 1)

end

end A039878.P12634614006729715392

/-! ## A039878.P16463869756295750804

`record[A114099(n)]-A039869(n+1)`
-/

namespace A039878.P16463869756295750804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114099 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A039869 (n + 1)

end

end A039878.P16463869756295750804

/-! ## A039878.P17587624163260521815

`record[A175788(n)]-A039869(n+1)`
-/

namespace A039878.P17587624163260521815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175788 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A039869 (n + 1)

end

end A039878.P17587624163260521815

/-! ## A039878.P17412421824157631914

`A000041(n+1)-A039869(n+1)`
-/

namespace A039878.P17412421824157631914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) - A039869 (n + 1)

end

end A039878.P17412421824157631914

/-! ## A039878.P10076081364795660336

`A035363(2*(n+1))-A039869(n+1)`
-/

namespace A039878.P10076081364795660336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 (2 * (n + 1)) - A039869 (n + 1)

end

end A039878.P10076081364795660336

/-!
# A039879: Number of partitions satisfying cn(0,5) + cn(2,5) + cn(3,5) <= cn(1,5) + cn(4,5).

The programs for A039879, there is no canonical definition to state claims against.
-/

/-! ## A039879.P12061473681585342130

`Δ[A000070(n)]-A039868(n+1)`
-/

namespace A039879.P12061473681585342130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000070 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A039868 (n + 1)

end

end A039879.P12061473681585342130

/-! ## A039879.P12633756777750477333

`record[A035363(n)]-A039868(n+1)`
-/

namespace A039879.P12633756777750477333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A039868 (n + 1)

end

end A039879.P12633756777750477333

/-! ## A039879.P15649050562740309395

`record[A035444(n)]-A039868(n+1)`
-/

namespace A039879.P15649050562740309395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035444 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A039868 (n + 1)

end

end A039879.P15649050562740309395

/-! ## A039879.P10211398124110744261

`record[A114099(n)]-A039868(n+1)`
-/

namespace A039879.P10211398124110744261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114099 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A039868 (n + 1)

end

end A039879.P10211398124110744261

/-! ## A039879.P7104356517464527567

`A000041(n+1)-A039868(n+1)`
-/

namespace A039879.P7104356517464527567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) - A039868 (n + 1)

end

end A039879.P7104356517464527567

/-! ## A039879.P17048932949631484023

`A026807(A000124(n))-A039868(n+1)`
-/

namespace A039879.P17048932949631484023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026807 (A000124 n).toNat - A039868 (n + 1)

end

end A039879.P17048932949631484023

/-!
# A039880: Number of partitions satisfying cn(0,5) + cn(1,5) + cn(4,5) < cn(2,5) + cn(3,5).

The programs for A039880, there is no canonical definition to state claims against.
-/

/-! ## A039880.P4879293377349151540

`Δ[A000070(n)]-A039867(n+1)`
-/

namespace A039880.P4879293377349151540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000070 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A039867 (n + 1)

end

end A039880.P4879293377349151540

/-! ## A039880.P15291670833307234879

`record[A035363(n)]-A039867(n+1)`
-/

namespace A039880.P15291670833307234879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A039867 (n + 1)

end

end A039880.P15291670833307234879

/-! ## A039880.P7058191436941789404

`record[A035377(n)]-A039867(n+1)`
-/

namespace A039880.P7058191436941789404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035377 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A039867 (n + 1)

end

end A039880.P7058191436941789404

/-! ## A039880.P11632544490268972717

`record[A035444(n)]-A039867(n+1)`
-/

namespace A039880.P11632544490268972717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035444 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A039867 (n + 1)

end

end A039880.P11632544490268972717

/-! ## A039880.P14847857481623670077

`record[A114099(n)]-A039867(n+1)`
-/

namespace A039880.P14847857481623670077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114099 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A039867 (n + 1)

end

end A039880.P14847857481623670077

/-! ## A039880.P6197050233836725299

`record[A124094(n)]-A039867(n+1)`
-/

namespace A039880.P6197050233836725299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124094 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A039867 (n + 1)

end

end A039880.P6197050233836725299

/-! ## A039880.P18349730819797409532

`A000041(n+1)-A039867(n+1)`
-/

namespace A039880.P18349730819797409532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) - A039867 (n + 1)

end

end A039880.P18349730819797409532

/-! ## A039880.P3213333725952306022

`A035363(2*(n+1))-A039867(n+1)`
-/

namespace A039880.P3213333725952306022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 (2 * (n + 1)) - A039867 (n + 1)

end

end A039880.P3213333725952306022

/-!
# A039881: Number of partitions satisfying cn(0,5) + cn(2,5) + cn(3,5) < cn(1,5) + cn(4,5).

The programs for A039881, there is no canonical definition to state claims against.
-/

/-! ## A039881.P15357420373710195471

`Δ[A000070(n)]-A039866(n+1)`
-/

namespace A039881.P15357420373710195471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000070 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A039866 (n + 1)

end

end A039881.P15357420373710195471

/-! ## A039881.P4416029752202647044

`record[A035363(n)]-A039866(n+1)`
-/

namespace A039881.P4416029752202647044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A039866 (n + 1)

end

end A039881.P4416029752202647044

/-! ## A039881.P1631528000117082870

`record[A035377(n)]-A039866(n+1)`
-/

namespace A039881.P1631528000117082870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035377 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A039866 (n + 1)

end

end A039881.P1631528000117082870

/-! ## A039881.P2910731823303882627

`record[A035444(n)]-A039866(n+1)`
-/

namespace A039881.P2910731823303882627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035444 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A039866 (n + 1)

end

end A039881.P2910731823303882627

/-! ## A039881.P2731120441984600657

`record[A114099(n)]-A039866(n+1)`
-/

namespace A039881.P2731120441984600657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114099 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A039866 (n + 1)

end

end A039881.P2731120441984600657

/-! ## A039881.P7138550007635013348

`record[A194543(n)]-A039866(n+1)`
-/

namespace A039881.P7138550007635013348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194543 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A039866 (n + 1)

end

end A039881.P7138550007635013348

/-! ## A039881.P9240519704494493890

`A000041(n+1)-A039866(n+1)`
-/

namespace A039881.P9240519704494493890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) - A039866 (n + 1)

end

end A039881.P9240519704494493890

/-! ## A039881.P3719735313154820811

`A035363(2*(n+1))-A039866(n+1)`
-/

namespace A039881.P3719735313154820811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 (2 * (n + 1)) - A039866 (n + 1)

end

end A039881.P3719735313154820811

/-!
# A039889: Number of partitions satisfying cn(2,5) < cn(1,5) + cn(4,5) and cn(3,5) < cn(1,5) + cn(4,5).

The programs for A039889, there is no canonical definition to state claims against.
-/

/-! ## A039889.P3792104119321762968

`A100883(n)-A196564(A100874(n+1))`
-/

namespace A039889.P3792104119321762968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100883 n - A196564 (A100874 (n + 1)).toNat

end

end A039889.P3792104119321762968

/-! ## A039889.P9034147294482198526

`A194253(A236634(n+2)+1)-A196564(A100874(n+1))`
-/

namespace A039889.P9034147294482198526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194253 (A236634 (n + 2) + 1).toNat - A196564 (A100874 (n + 1)).toNat

end

end A039889.P9034147294482198526

/-!
# A039892: Number of partitions satisfying cn(1,5) + cn(4,5) < cn(2,5) + cn(3,5).

The programs for A039892, there is no canonical definition to state claims against.
-/

/-! ## A039892.P13141497062319718894

`Δ[A000070(n)]-A039895(n+1)`
-/

namespace A039892.P13141497062319718894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000070 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A039895 (n + 1)

end

end A039892.P13141497062319718894

/-! ## A039892.P6821143296942584780

`record[A035363(n)]-A039895(n+1)`
-/

namespace A039892.P6821143296942584780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A039895 (n + 1)

end

end A039892.P6821143296942584780

/-! ## A039892.P17812046390493136895

`record[A035377(n)]-A039895(n+1)`
-/

namespace A039892.P17812046390493136895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035377 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A039895 (n + 1)

end

end A039892.P17812046390493136895

/-! ## A039892.P12158219393367280199

`record[A035444(n)]-A039895(n+1)`
-/

namespace A039892.P12158219393367280199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035444 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A039895 (n + 1)

end

end A039892.P12158219393367280199

/-! ## A039892.P10811576509522290787

`record[A114099(n)]-A039895(n+1)`
-/

namespace A039892.P10811576509522290787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114099 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A039895 (n + 1)

end

end A039892.P10811576509522290787

/-! ## A039892.P8020375795533642627

`record[A124094(n)]-A039895(n+1)`
-/

namespace A039892.P8020375795533642627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124094 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A039895 (n + 1)

end

end A039892.P8020375795533642627

/-! ## A039892.P16801360880595554162

`A000041(n+1)-A039895(n+1)`
-/

namespace A039892.P16801360880595554162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) - A039895 (n + 1)

end

end A039892.P16801360880595554162

/-!
# A039893: Number of partitions satisfying cn(2,5) + cn(3,5) < cn(1,5) + cn(4,5).

The programs for A039893, there is no canonical definition to state claims against.
-/

/-! ## A039893.P8740216204675310728

`Δ[A000070(n)]-A039894(n+1)`
-/

namespace A039893.P8740216204675310728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000070 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A039894 (n + 1)

end

end A039893.P8740216204675310728

/-! ## A039893.P9285690141986360686

`record[A035363(n)]-A039894(n+1)`
-/

namespace A039893.P9285690141986360686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A039894 (n + 1)

end

end A039893.P9285690141986360686

/-! ## A039893.P5623818415595124920

`record[A035377(n)]-A039894(n+1)`
-/

namespace A039893.P5623818415595124920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035377 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A039894 (n + 1)

end

end A039893.P5623818415595124920

/-! ## A039893.P8021007052886274928

`record[A035444(n)]-A039894(n+1)`
-/

namespace A039893.P8021007052886274928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035444 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A039894 (n + 1)

end

end A039893.P8021007052886274928

/-! ## A039893.P7083387513304839157

`record[A114099(n)]-A039894(n+1)`
-/

namespace A039893.P7083387513304839157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114099 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A039894 (n + 1)

end

end A039893.P7083387513304839157

/-! ## A039893.P16015921561406840005

`A000041(n+1)-A039894(n+1)`
-/

namespace A039893.P16015921561406840005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) - A039894 (n + 1)

end

end A039893.P16015921561406840005

/-!
# A039894: Number of partitions satisfying cn(1,5) + cn(4,5) <= cn(2,5) + cn(3,5).

The programs for A039894, there is no canonical definition to state claims against.
-/

/-! ## A039894.P11565484506893009299

`Δ[A000070(n)]-A039893(n+1)`
-/

namespace A039894.P11565484506893009299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000070 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A039893 (n + 1)

end

end A039894.P11565484506893009299

/-! ## A039894.P3927064743482447592

`record[A035363(n)]-A039893(n+1)`
-/

namespace A039894.P3927064743482447592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A039893 (n + 1)

end

end A039894.P3927064743482447592

/-! ## A039894.P13445893903169371494

`record[A035377(n)]-A039893(n+1)`
-/

namespace A039894.P13445893903169371494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035377 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A039893 (n + 1)

end

end A039894.P13445893903169371494

/-! ## A039894.P6798746747177191410

`record[A035444(n)]-A039893(n+1)`
-/

namespace A039894.P6798746747177191410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035444 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A039893 (n + 1)

end

end A039894.P6798746747177191410

/-! ## A039894.P252660249262621801

`record[A114099(n)]-A039893(n+1)`
-/

namespace A039894.P252660249262621801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114099 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A039893 (n + 1)

end

end A039894.P252660249262621801

/-! ## A039894.P7545606900987051667

`A000041(n+1)-A039893(n+1)`
-/

namespace A039894.P7545606900987051667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) - A039893 (n + 1)

end

end A039894.P7545606900987051667

/-!
# A039895: Number of partitions satisfying cn(2,5) + cn(3,5) <= cn(1,5) + cn(4,5).

The programs for A039895, there is no canonical definition to state claims against.
-/

/-! ## A039895.P290751055344920384

`Δ[A000070(n)]-A039892(n+1)`
-/

namespace A039895.P290751055344920384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000070 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A039892 (n + 1)

end

end A039895.P290751055344920384

/-! ## A039895.P1420868842183161897

`record[A035363(n)]-A039892(n+1)`
-/

namespace A039895.P1420868842183161897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A039892 (n + 1)

end

end A039895.P1420868842183161897

/-! ## A039895.P15356394626071810346

`record[A035377(n)]-A039892(n+1)`
-/

namespace A039895.P15356394626071810346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035377 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A039892 (n + 1)

end

end A039895.P15356394626071810346

/-! ## A039895.P12517160971845997277

`record[A035444(n)]-A039892(n+1)`
-/

namespace A039895.P12517160971845997277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035444 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A039892 (n + 1)

end

end A039895.P12517160971845997277

/-! ## A039895.P8950206344574721791

`record[A114099(n)]-A039892(n+1)`
-/

namespace A039895.P8950206344574721791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114099 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A039892 (n + 1)

end

end A039895.P8950206344574721791

/-! ## A039895.P5116926918709705384

`A000041(n+1)-A039892(n+1)`
-/

namespace A039895.P5116926918709705384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) - A039892 (n + 1)

end

end A039895.P5116926918709705384

/-! ## A039895.P8275504858878097394

`A039866(n+1)+A039881(n+1)-A039892(n+1)`
-/

namespace A039895.P8275504858878097394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039866 (n + 1) + (A039881 (n + 1) - A039892 (n + 1))

end

end A039895.P8275504858878097394

/-! ## A039895.P15574708471157141985

`A039893(n+1)+A039894(n+1)-A039892(n+1)`
-/

namespace A039895.P15574708471157141985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039893 (n + 1) + (A039894 (n + 1) - A039892 (n + 1))

end

end A039895.P15574708471157141985

/-!
# A039896: Number of partitions satisfying 0 < cn(1,5) + cn(4,5) + cn(2,5) + cn(3,5).

The programs for A039896, there is no canonical definition to state claims against.
-/

/-! ## A039896.P15692130216446552367

`record[A035444(n)-A035444(A134119(n))]`
-/

namespace A039896.P15692130216446552367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035444 n - A035444 (A134119 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A039896.P15692130216446552367

/-! ## A039896.P1693840003314302005

`record[A114099(n)-A114099(A058207(n))]`
-/

namespace A039896.P1693840003314302005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114099 n - A114099 (A058207 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A039896.P1693840003314302005

/-! ## A039896.P6630199212056560976

`A000041(n)-A114099(A265227(n+1))`
-/

namespace A039896.P6630199212056560976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A114099 (A265227 (n + 1)).toNat

end

end A039896.P6630199212056560976

/-! ## A039896.P13999441005647348244

`A055892(C(A020739(n), 2)-n)`
-/

namespace A039896.P13999441005647348244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055892 (Nat.choose (A020739 n).toNat 2 - n)

end

end A039896.P13999441005647348244

/-! ## A039896.P4919072423548678473

`A055892(C(A103517(n+2), 2)-n)`
-/

namespace A039896.P4919072423548678473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055892 (Nat.choose (A103517 (n + 2)).toNat 2 - n)

end

end A039896.P4919072423548678473

/-! ## A039896.P13853529890871303617

`A055892(Δ[2*A077415(n+2)]+5)`
-/

namespace A039896.P13853529890871303617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A077415 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055892 (f1 (n + 1) - f1 n + 5).toNat

end

end A039896.P13853529890871303617

/-!
# A039897: Number of partitions satisfying 0 < cn(2,5) + cn(3,5).

The programs for A039897, there is no canonical definition to state claims against.
-/

/-! ## A039897.P11818273346223725707

`A000041(n)-A036820(n)`
-/

namespace A039897.P11818273346223725707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A036820 n

end

end A039897.P11818273346223725707

/-! ## A039897.P519490742377079898

`∑[A002865(n)]-A036820(n)`
-/

namespace A039897.P519490742377079898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A036820 n

end

end A039897.P519490742377079898

/-! ## A039897.P17236879561416125717

`A035363(2*n)-A036820(n)`
-/

namespace A039897.P17236879561416125717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 (2 * n) - A036820 n

end

end A039897.P17236879561416125717

/-! ## A039897.P711569085180046788

`A000041(n)+A035569(n)-A035559(n)`
-/

namespace A039897.P711569085180046788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n + (A035569 n - A035559 n)

end

end A039897.P711569085180046788

/-! ## A039897.P3344482057686340242

`A100824(2*n)-A036820(n)`
-/

namespace A039897.P3344482057686340242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100824 (2 * n) - A036820 n

end

end A039897.P3344482057686340242

/-! ## A039897.P16049842616718462783

`A103923(A000217(n))-A036820(n)`
-/

namespace A039897.P16049842616718462783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103923 (A000217 n).toNat - A036820 n

end

end A039897.P16049842616718462783

/-!
# A039898: Number of partitions satisfying 0 < cn(1,5) + cn(4,5).

The programs for A039898, there is no canonical definition to state claims against.
-/

/-! ## A039898.P11898262433890690861

`A371171(n+2)+A157687(A120035(n+4))`
-/

namespace A039898.P11898262433890690861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371171 (n + 2) + A157687 (A120035 (n + 4)).toNat

end

end A039898.P11898262433890690861

/-! ## A039898.P8973601126358775566

`A371171(n+2)+A339824(A083416(2*n+1))`
-/

namespace A039898.P8973601126358775566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371171 (n + 2) + A339824 (A083416 (2 * n + 1)).toNat

end

end A039898.P8973601126358775566

/-! ## A039898.P3327860637888209311

`A371171(n+2)+A045698(A335820(3*(n+1)))`
-/

namespace A039898.P3327860637888209311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371171 (n + 2) + A045698 (A335820 (3 * (n + 1))).toNat

end

end A039898.P3327860637888209311

/-! ## A039898.P4224028154787740853

`A055572(∑[A292402(n)])`
-/

namespace A039898.P4224028154787740853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292402 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055572 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A039898.P4224028154787740853

/-! ## A039898.P13755303321803942312

`A029294(∑[dr(A076321(n+1))])`
-/

namespace A039898.P13755303321803942312
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A076321 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029294 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A039898.P13755303321803942312

/-!
# A039899: Number of partitions satisfying 0 < cn(0,5) + cn(2,5) + cn(3,5).

The programs for A039899, there is no canonical definition to state claims against.
-/

/-! ## A039899.P13462130884819561684

`A238708(n)+A047967(n)`
-/

namespace A039899.P13462130884819561684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238708 n + A047967 n

end

end A039899.P13462130884819561684

/-! ## A039899.P5145737621612265846

`A000041(n)-A003114(n)`
-/

namespace A039899.P5145737621612265846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A003114 n

end

end A039899.P5145737621612265846

/-! ## A039899.P3075602778005586187

`A035363(2*n)-A003114(n)`
-/

namespace A039899.P3075602778005586187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 (2 * n) - A003114 n

end

end A039899.P3075602778005586187

/-! ## A039899.P12970349923871378465

`A119620(2*n)-A003114(n)`
-/

namespace A039899.P12970349923871378465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119620 (2 * n) - A003114 n

end

end A039899.P12970349923871378465

/-! ## A039899.P12378010297096107922

`A003106(n)+A039900(n)-A003114(n)`
-/

namespace A039899.P12378010297096107922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003106 n + (A039900 n - A003114 n)

end

end A039899.P12378010297096107922

/-! ## A039899.P16262628341454702942

`A000009(n)+A047967(n)-A003114(n)`
-/

namespace A039899.P16262628341454702942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n + (A047967 n - A003114 n)

end

end A039899.P16262628341454702942

/-! ## A039899.P8550204534212931056

`A000041(n)+A238708(n)-A000009(n)`
-/

namespace A039899.P8550204534212931056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n + (A238708 n - A000009 n)

end

end A039899.P8550204534212931056

/-! ## A039899.P17648556249658039717

`A052335(n)+A387578(n)-A003114(n)`
-/

namespace A039899.P17648556249658039717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052335 n + (A387578 n - A003114 n)

end

end A039899.P17648556249658039717

/-! ## A039899.P6981483325990977399

`A276428(n+1)+A277101(n+1)-A003114(n)`
-/

namespace A039899.P6981483325990977399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276428 (n + 1) + (A277101 (n + 1) - A003114 n)

end

end A039899.P6981483325990977399

/-! ## A039899.P559060679433382269

`A194543(∑[n])-A003114(n)`
-/

namespace A039899.P559060679433382269
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194543 (∑ j ∈ Finset.range (n + 1), f1 j) - A003114 n

end

end A039899.P559060679433382269

/-! ## A039899.P36670995374569148

`A000041(n)-A114087(∑[n]+2)`
-/

namespace A039899.P36670995374569148
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A114087 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A039899.P36670995374569148

