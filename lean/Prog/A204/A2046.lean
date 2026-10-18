import SequenceMachineLib
import Mathlib.Tactic
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
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
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
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
import Seq.B007.C000
import Seq.B009.C000
import Seq.B010.C000
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A204600: Number of (n+2)X3 0..2 arrays with every 3X3 subblock having three strictly increasing elements in a row horizontally, vertically or nw-to-se diagonally exactly one way.

The programs for A204600, there is no canonical definition to state claims against.
-/

/-! ## A204600.P1565663785224816326

`A204607(∑[n]+1)`
-/

namespace A204600.P1565663785224816326
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204607 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A204600.P1565663785224816326

/-! ## A204600.P878926534495807587

`record[A204607(n+1)]`
-/

namespace A204600.P878926534495807587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204607 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A204600.P878926534495807587

/-! ## A204600.P7527285506311112889

`and(1-4/2, A204607(A000217(n+1)))`
-/

namespace A204600.P7527285506311112889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (SequenceMachineLib.roundAway (1 - (4 : ℚ) / 2)) (A204607 (A000217 (n + 1)).toNat)

end

end A204600.P7527285506311112889

/-! ## A204600.P16806879663811837791

`A054977(n+1)*A204607(A000217(n+1))`
-/

namespace A204600.P16806879663811837791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 (n + 1) * A204607 (A000217 (n + 1)).toNat

end

end A204600.P16806879663811837791

/-! ## A204600.P3296365455985496089

`A204607(A000217(n+1))+A109718(2*n)`
-/

namespace A204600.P3296365455985496089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204607 (A000217 (n + 1)).toNat + A109718 (2 * n)

end

end A204600.P3296365455985496089

/-!
# A204601: Number of (n+2)X4 0..2 arrays with every 3X3 subblock having three strictly increasing elements in a row horizontally, vertically or nw-to-se diagonally exactly one way.

The programs for A204601, there is no canonical definition to state claims against.
-/

/-! ## A204601.P218790799088096542

`A204607(∑[n+1]+2)`
-/

namespace A204601.P218790799088096542
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204607 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A204601.P218790799088096542

/-! ## A204601.P15263121310984132022

`record[A010054(n)*A204607(n+2)]`
-/

namespace A204601.P15263121310984132022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A204607 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A204601.P15263121310984132022

/-! ## A204601.P3797648220450661722

`record[gcd(A143844(n), A204607(n+2))]`
-/

namespace A204601.P3797648220450661722
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A143844 n) (A204607 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A204601.P3797648220450661722

/-! ## A204601.P17517678228748730815

`record[A204607(n+3)/A204579(n+1)]`
-/

namespace A204601.P17517678228748730815
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A204607 (n + 3) : ℚ) / (A204579 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A204601.P17517678228748730815

/-! ## A204601.P11181923452319890386

`record[gcd(A122286(n), A204607(n+3))]`
-/

namespace A204601.P11181923452319890386
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A122286 n) (A204607 (n + 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A204601.P11181923452319890386

/-!
# A204602: Number of (n+2)X5 0..2 arrays with every 3X3 subblock having three strictly increasing elements in a row horizontally, vertically or nw-to-se diagonally exactly one way.

The programs for A204602, there is no canonical definition to state claims against.
-/

/-! ## A204602.P683431525557884365

`A204607(A167614(n+1))`
-/

namespace A204602.P683431525557884365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204607 (A167614 (n + 1)).toNat

end

end A204602.P683431525557884365

/-! ## A204602.P11632393645860585800

`A204607(A373663(n+1))`
-/

namespace A204602.P11632393645860585800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204607 (A373663 (n + 1)).toNat

end

end A204602.P11632393645860585800

/-! ## A204602.P6171271471960010358

`A204607(A046691(n)+7)`
-/

namespace A204602.P6171271471960010358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204607 (A046691 n + 7).toNat

end

end A204602.P6171271471960010358

/-! ## A204602.P5977324719204992772

`A204607(A167499(n)+n)`
-/

namespace A204602.P5977324719204992772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204607 (A167499 n + (n : ℤ)).toNat

end

end A204602.P5977324719204992772

/-! ## A204602.P7243016800524351050

`A204607(∑[n+3]+1)`
-/

namespace A204602.P7243016800524351050
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204607 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A204602.P7243016800524351050

/-!
# A204603: Number of (n+2)X6 0..2 arrays with every 3X3 subblock having three strictly increasing elements in a row horizontally, vertically or nw-to-se diagonally exactly one way.

The programs for A204603, there is no canonical definition to state claims against.
-/

/-! ## A204603.P16956678540016548281

`A204607(A374004(n+1))`
-/

namespace A204603.P16956678540016548281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204607 (A374004 (n + 1)).toNat

end

end A204603.P16956678540016548281

/-! ## A204603.P10697483772702479196

`A204607(A141214(n)+7)`
-/

namespace A204603.P10697483772702479196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204607 (A141214 n + 7).toNat

end

end A204603.P10697483772702479196

/-! ## A204603.P1494790598455586769

`A204607(A052905(n)+9)`
-/

namespace A204603.P1494790598455586769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204607 (A052905 n + 9).toNat

end

end A204603.P1494790598455586769

/-! ## A204603.P12548774019028359186

`A204607(A055999(n)+10)`
-/

namespace A204603.P12548774019028359186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204607 (A055999 n + 10).toNat

end

end A204603.P12548774019028359186

/-! ## A204603.P3647778373959387036

`A204607(A167614(n+2)+1)`
-/

namespace A204603.P3647778373959387036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204607 (A167614 (n + 2) + 1).toNat

end

end A204603.P3647778373959387036

/-!
# A204604: Number of (n+2)X7 0..2 arrays with every 3X3 subblock having three strictly increasing elements in a row horizontally, vertically or nw-to-se diagonally exactly one way.

The programs for A204604, there is no canonical definition to state claims against.
-/

/-! ## A204604.P8807509114912857766

`A204607(A374005(n+1))`
-/

namespace A204604.P8807509114912857766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204607 (A374005 (n + 1)).toNat

end

end A204604.P8807509114912857766

/-! ## A204604.P7769436271371284866

`A204607(A167499(n+3))`
-/

namespace A204604.P7769436271371284866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204607 (A167499 (n + 3)).toNat

end

end A204604.P7769436271371284866

/-! ## A204604.P2335292930000008202

`A204607(Δ[A264443(n)])`
-/

namespace A204604.P2335292930000008202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204607 (f1 (n + 1) - f1 n).toNat

end

end A204604.P2335292930000008202

/-! ## A204604.P17186493969964626917

`A204607(A046691(n+3))`
-/

namespace A204604.P17186493969964626917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204607 (A046691 (n + 3)).toNat

end

end A204604.P17186493969964626917

/-! ## A204604.P17561521869598934480

`A204607(eq[4, A193592(n)])`
-/

namespace A204604.P17561521869598934480
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204607 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A204604.P17561521869598934480

/-!
# A204605: Number of (n+2)X8 0..2 arrays with every 3X3 subblock having three strictly increasing elements in a row horizontally, vertically or nw-to-se diagonally exactly one way.

The programs for A204605, there is no canonical definition to state claims against.
-/

/-! ## A204605.P11273868201102516283

`A204607(A374007(n+1))`
-/

namespace A204605.P11273868201102516283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204607 (A374007 (n + 1)).toNat

end

end A204605.P11273868201102516283

/-! ## A204605.P2028652182282255255

`A204607(A166136(n+4))`
-/

namespace A204605.P2028652182282255255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204607 (A166136 (n + 4)).toNat

end

end A204605.P2028652182282255255

/-! ## A204605.P2142465696773786125

`A204607(A167499(n+4)+1)`
-/

namespace A204605.P2142465696773786125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204607 (A167499 (n + 4) + 1).toNat

end

end A204605.P2142465696773786125

/-! ## A204605.P5506770104496255123

`A204607(A167614(n+4)+3)`
-/

namespace A204605.P5506770104496255123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204607 (A167614 (n + 4) + 3).toNat

end

end A204605.P5506770104496255123

/-! ## A204605.P622107152996691012

`A204607(Δ[A023545(n+1)]+10)`
-/

namespace A204605.P622107152996691012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204607 (f1 (n + 1) - f1 n + 10).toNat

end

end A204605.P622107152996691012

/-!
# A204606: Number of (n+2)X9 0..2 arrays with every 3X3 subblock having three strictly increasing elements in a row horizontally, vertically or nw-to-se diagonally exactly one way.

The programs for A204606, there is no canonical definition to state claims against.
-/

/-! ## A204606.P2163602558507777999

`A204607(A374008(n+1))`
-/

namespace A204606.P2163602558507777999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204607 (A374008 (n + 1)).toNat

end

end A204606.P2163602558507777999

/-! ## A204606.P13905027109227813126

`A204607(eq[11, A066657(n)])`
-/

namespace A204606.P13905027109227813126
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204607 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A204606.P13905027109227813126

/-! ## A204606.P14814823037577419344

`A204607(A167614(n+5)+4)`
-/

namespace A204606.P14814823037577419344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204607 (A167614 (n + 5) + 4).toNat

end

end A204606.P14814823037577419344

/-! ## A204606.P4267662306543077998

`A204607(A000096(n+5)+8)`
-/

namespace A204606.P4267662306543077998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204607 (A000096 (n + 5) + 8).toNat

end

end A204606.P4267662306543077998

/-! ## A204606.P401555924153480311

`A204607(A141214(n+3)+10)`
-/

namespace A204606.P401555924153480311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204607 (A141214 (n + 3) + 10).toNat

end

end A204606.P401555924153480311

/-!
# A204608: Number of (n+1)X(n+1) 0..1 arrays with the determinants of 2X2 subblocks nondecreasing rightwards and downwards.

The programs for A204608, there is no canonical definition to state claims against.
-/

/-! ## A204608.P15595752892210183224

`A204616((n+1)²+n²)`
-/

namespace A204608.P15595752892210183224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204616 ((n + 1) ^ 2 + n ^ 2)

end

end A204608.P15595752892210183224

/-! ## A204608.P11605932490182869372

`record[gcd(A114327(n), A204616(n+1))]`
-/

namespace A204608.P11605932490182869372
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A114327 n) (A204616 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A204608.P11605932490182869372

/-! ## A204608.P8676720005989463275

`record[root(A204616(n+1), A322550(n+1))]`
-/

namespace A204608.P8676720005989463275
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A204616 (n + 1) : ℝ) ^ (1 / (A322550 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A204608.P8676720005989463275

/-! ## A204608.P17375899219460994365

`or(A188037(n+1), A204616(A001844(n)))`
-/

namespace A204608.P17375899219460994365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A188037 (n + 1)) (A204616 (A001844 n).toNat)

end

end A204608.P17375899219460994365

/-! ## A204608.P461635344898057369

`or(A204616(A001844(n)), A325967(n+1))`
-/

namespace A204608.P461635344898057369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A204616 (A001844 n).toNat) (A325967 (n + 1))

end

end A204608.P461635344898057369

/-!
# A204609: Number of (n+1) X 2 0..1 arrays with the determinants of 2 X 2 subblocks nondecreasing rightwards and downwards.

The programs for A204609, there is no canonical definition to state claims against.
-/

/-! ## A204609.P10481843608629148752

`A253231(∑[n]+1)`
-/

namespace A204609.P10481843608629148752
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253231 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A204609.P10481843608629148752

/-! ## A204609.P1883259663506928979

`record[A253231(A003056(n)+1+n)]`
-/

namespace A204609.P1883259663506928979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253231 (A003056 n + 1 + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A204609.P1883259663506928979

/-! ## A204609.P10377118515938064848

`record[A253231(n+1)/A007318(n)]`
-/

namespace A204609.P10377118515938064848
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A253231 (n + 1) : ℚ) / (A007318 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A204609.P10377118515938064848

/-! ## A204609.P4866568261245663354

`record[A253231(A077028(2*n)+n)]`
-/

namespace A204609.P4866568261245663354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253231 (A077028 (2 * n) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A204609.P4866568261245663354

/-! ## A204609.P1631414585446646608

`record[A253231(n+1)/A077028(n)]`
-/

namespace A204609.P1631414585446646608
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A253231 (n + 1) : ℚ) / (A077028 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A204609.P1631414585446646608

/-!
# A204610: Number of (n+1) X 3 0..1 arrays with the determinants of 2 X 2 subblocks nondecreasing rightwards and downwards.

The programs for A204610, there is no canonical definition to state claims against.
-/

/-! ## A204610.P12177978757704541021

`A204616(∑[n+1]+2)`
-/

namespace A204610.P12177978757704541021
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204616 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A204610.P12177978757704541021

/-! ## A204610.P7083561382376268091

`record[A204616(A286235(n+1)+1)]`
-/

namespace A204610.P7083561382376268091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204616 (A286235 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A204610.P7083561382376268091

/-! ## A204610.P12517667912754366549

`record[A073424(n+1)*A204616(n+3)]`
-/

namespace A204610.P12517667912754366549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073424 (n + 1) * A204616 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A204610.P12517667912754366549

/-! ## A204610.P15837279330702835230

`record[A204616(Δ[A003453(n+5)])]`
-/

namespace A204610.P15837279330702835230
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003453 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204616 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A204610.P15837279330702835230

/-! ## A204610.P3682135437057345547

`A204616(A000096(n+1))+A178798(n)`
-/

namespace A204610.P3682135437057345547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204616 (A000096 (n + 1)).toNat + A178798 n

end

end A204610.P3682135437057345547

/-!
# A204611: Number of (n+1)X4 0..1 arrays with the determinants of 2X2 subblocks nondecreasing rightwards and downwards.

The programs for A204611, there is no canonical definition to state claims against.
-/

/-! ## A204611.P12765280787066380097

`A204616(∑[n+2]+4)`
-/

namespace A204611.P12765280787066380097
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204616 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A204611.P12765280787066380097

/-! ## A204611.P1093711268588936602

`or(1, A204616(A167614(n+1)))`
-/

namespace A204611.P1093711268588936602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A204616 (A167614 (n + 1)).toNat)

end

end A204611.P1093711268588936602

/-! ## A204611.P1794408544620477197

`A204616(A167614(n+1))+A178798(n)`
-/

namespace A204611.P1794408544620477197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204616 (A167614 (n + 1)).toNat + A178798 n

end

end A204611.P1794408544620477197

/-! ## A204611.P1757006698988970270

`A204616(A167614(n+1))+A185255(n)`
-/

namespace A204611.P1757006698988970270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204616 (A167614 (n + 1)).toNat + A185255 n

end

end A204611.P1757006698988970270

/-! ## A204611.P8714034304470721446

`A204616(A167614(n+1))+A185284(n)`
-/

namespace A204611.P8714034304470721446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204616 (A167614 (n + 1)).toNat + A185284 n

end

end A204611.P8714034304470721446

/-!
# A204612: Number of (n+1)X5 0..1 arrays with the determinants of 2X2 subblocks nondecreasing rightwards and downwards.

The programs for A204612, there is no canonical definition to state claims against.
-/

/-! ## A204612.P9517962771096665596

`A204616(A374004(n+1))`
-/

namespace A204612.P9517962771096665596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204616 (A374004 (n + 1)).toNat

end

end A204612.P9517962771096665596

/-! ## A204612.P17537453567659214377

`A204616(A052905(n)+9)`
-/

namespace A204612.P17537453567659214377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204616 (A052905 n + 9).toNat

end

end A204612.P17537453567659214377

/-! ## A204612.P5295431427634865133

`A204616(A167614(n+2)+1)`
-/

namespace A204612.P5295431427634865133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204616 (A167614 (n + 2) + 1).toNat

end

end A204612.P5295431427634865133

/-! ## A204612.P7313470156151159428

`A204616(A167487(n+2)-3)`
-/

namespace A204612.P7313470156151159428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204616 (A167487 (n + 2) - 3).toNat

end

end A204612.P7313470156151159428

/-! ## A204612.P8200664654045292664

`A057427(n+2)*A204616(Δ[A008778(n)]+6)`
-/

namespace A204612.P8200664654045292664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (n + 2) * A204616 (f1 (n + 1) - f1 n + 6).toNat

end

end A204612.P8200664654045292664

/-!
# A204613: Number of (n+1) X 6 0..1 arrays with the determinants of 2 X 2 subblocks nondecreasing rightwards and downwards.

The programs for A204613, there is no canonical definition to state claims against.
-/

/-! ## A204613.P8598429585171898802

`A204616(∑[n+4]+11)`
-/

namespace A204613.P8598429585171898802
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204616 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A204613.P8598429585171898802

/-! ## A204613.P17943379517035390486

`or(1, A204616(A167499(n+3)))`
-/

namespace A204613.P17943379517035390486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A204616 (A167499 (n + 3)).toNat)

end

end A204613.P17943379517035390486

/-! ## A204613.P17377980144560446695

`A204616(A167499(n+3))+A185284(n)`
-/

namespace A204613.P17377980144560446695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204616 (A167499 (n + 3)).toNat + A185284 n

end

end A204613.P17377980144560446695

/-! ## A204613.P2696354664467159913

`A204616(A167499(n+3))%A204614(n+1)`
-/

namespace A204613.P2696354664467159913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A204616 (A167499 (n + 3)).toNat) (A204614 (n + 1))

end

end A204613.P2696354664467159913

/-! ## A204613.P6851066666895129108

`A204616(A167499(n+3))+A000007(2*(n+2))`
-/

namespace A204613.P6851066666895129108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204616 (A167499 (n + 3)).toNat + A000007 (2 * (n + 2))

end

end A204613.P6851066666895129108

/-!
# A204614: Number of (n+1)X7 0..1 arrays with the determinants of 2X2 subblocks nondecreasing rightwards and downwards.

The programs for A204614, there is no canonical definition to state claims against.
-/

/-! ## A204614.P3835303557046089473

`A204616(A374007(n+1))`
-/

namespace A204614.P3835303557046089473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204616 (A374007 (n + 1)).toNat

end

end A204614.P3835303557046089473

/-! ## A204614.P2106044495670087275

`A204616(A167499(n+4)+1)`
-/

namespace A204614.P2106044495670087275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204616 (A167499 (n + 4) + 1).toNat

end

end A204614.P2106044495670087275

/-! ## A204614.P7940056611126017880

`A204616(eq[7, A131818(n+1)])`
-/

namespace A204614.P7940056611126017880
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204616 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A204614.P7940056611126017880

/-! ## A204614.P11377004313277027788

`A204616(A052905(n+3))`
-/

namespace A204614.P11377004313277027788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204616 (A052905 (n + 3)).toNat

end

end A204614.P11377004313277027788

/-! ## A204614.P10873401935764845229

`A204616(eq[3, A219347(n)])`
-/

namespace A204614.P10873401935764845229
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204616 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A204614.P10873401935764845229

/-!
# A204615: Number of (n+1)X8 0..1 arrays with the determinants of 2X2 subblocks nondecreasing rightwards and downwards.

The programs for A204615, there is no canonical definition to state claims against.
-/

/-! ## A204615.P1840927399273195753

`A204616(A374008(n+1))`
-/

namespace A204615.P1840927399273195753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204616 (A374008 (n + 1)).toNat

end

end A204615.P1840927399273195753

/-! ## A204615.P8012281746637845998

`A204616(A167487(n+5))`
-/

namespace A204615.P8012281746637845998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204616 (A167487 (n + 5)).toNat

end

end A204615.P8012281746637845998

/-! ## A204615.P14946402918614816562

`A204616(A167499(n+5)+2)`
-/

namespace A204615.P14946402918614816562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204616 (A167499 (n + 5) + 2).toNat

end

end A204615.P14946402918614816562

/-! ## A204615.P13042886776357504039

`A204616(A000096(n+5)+8)`
-/

namespace A204615.P13042886776357504039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204616 (A000096 (n + 5) + 8).toNat

end

end A204615.P13042886776357504039

/-! ## A204615.P9535233766840343593

`A204616(eq[4, A219347(n)])`
-/

namespace A204615.P9535233766840343593
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204616 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A204615.P9535233766840343593

/-!
# A204616: T(n,k) = Number of (n+1) X (k+1) 0..1 arrays with the determinants of 2 X 2 subblocks nondecreasing rightwards and downwards.

The programs for A204616, there is no canonical definition to state claims against.
-/

/-! ## A204616.P10886122295067648273

`A253350(n+1)+A136546(A022177(n))`
-/

namespace A204616.P10886122295067648273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253350 (n + 1) + A136546 (A022177 n).toNat

end

end A204616.P10886122295067648273

/-! ## A204616.P11305705071344481476

`A253350(n+1)+A080224(A125145(n))`
-/

namespace A204616.P11305705071344481476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253350 (n + 1) + A080224 (A125145 n).toNat

end

end A204616.P11305705071344481476

/-! ## A204616.P3029604865287111896

`A281765(A022179(n))+A253350(n+1)`
-/

namespace A204616.P3029604865287111896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281765 (A022179 n).toNat + A253350 (n + 1)

end

end A204616.P3029604865287111896

/-!
# A204617: Multiplicative with a(p^e) = p^(e-1)*H(p). H(2) = 1, H(p) = p - 1 if p == 1 (mod 4) and H(p) = p + 1 if p == 3 (mod 4).

The programs for A204617, the canonical program `A204617.P10318683178991972701` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A204617 has offset 1).

The definition of A204617 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A062570, A079458, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A204617.P10318683178991972701

`A079458(n+1)/A062570(n+1)`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A204617

/-- `A079458(n+1)/A062570(n+1)` -/
def P10318683178991972701.Spec : Prop :=
  ∀ n, P10318683178991972701.a n = (A204617 (n + 1) : ℚ)

end A204617

/-! ## A204617.P10051717717985822901

`A060968(n+1)/gcd(4, n+1)`
-/

namespace A204617.P10051717717985822901
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060968 (n + 1) : ℚ) / (Nat.gcd 4 (n + 1) : ℚ)

end

end A204617.P10051717717985822901

namespace A204617

/-- `A060968(n+1)/gcd(4, n+1)` -/
def P10051717717985822901.Spec : Prop :=
  ∀ n, P10051717717985822901.a n = (A204617 (n + 1) : ℚ)

end A204617

/-! ## A204617.P14191773954410595733

`A395768(A026741(n+1))`
-/

namespace A204617.P14191773954410595733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395768 (A026741 (n + 1)).toNat

end

end A204617.P14191773954410595733

namespace A204617

/-- `A395768(A026741(n+1))` -/
def P14191773954410595733.Spec : Prop :=
  ∀ n, P14191773954410595733.a n = A204617 (n + 1)

end A204617

/-! ## A204617.P3971629097111917776

`A395768(n+1)/A000034(n)`
-/

namespace A204617.P3971629097111917776
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A395768 (n + 1) : ℚ) / (A000034 n : ℚ)

end

end A204617.P3971629097111917776

namespace A204617

/-- `A395768(n+1)/A000034(n)` -/
def P3971629097111917776.Spec : Prop :=
  ∀ n, P3971629097111917776.a n = (A204617 (n + 1) : ℚ)

end A204617

/-! ## A204617.P2234596631452646710

`A079458(n+1)/Δ[A049690(n)]`
-/

namespace A204617.P2234596631452646710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049690 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A079458 (n + 1) : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A204617.P2234596631452646710

namespace A204617

/-- `A079458(n+1)/Δ[A049690(n)]` -/
def P2234596631452646710.Spec : Prop :=
  ∀ n, P2234596631452646710.a n = (A204617 (n + 1) : ℚ)

end A204617

/-! ## A204617.P17240526342645953613

`A079458(n+1)/A000010(2*(n+1))`
-/

namespace A204617.P17240526342645953613
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A079458 (n + 1) : ℚ) / (A000010 (2 * (n + 1)) : ℚ)

end

end A204617.P17240526342645953613

namespace A204617

/-- `A079458(n+1)/A000010(2*(n+1))` -/
def P17240526342645953613.Spec : Prop :=
  ∀ n, P17240526342645953613.a n = (A204617 (n + 1) : ℚ)

end A204617

/-! ## A204617.P17644619653084107411

`∑{d}[n+1, A002131(#)*A120630((n+1)/#)]`
-/

namespace A204617.P17644619653084107411
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A002131 d * A120630 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A204617.P17644619653084107411

namespace A204617

/-- `∑{d}[n+1, A002131(#)*A120630((n+1)/#)]` -/
def P17644619653084107411.Spec : Prop :=
  ∀ n, P17644619653084107411.a n = A204617 (n + 1)

end A204617

/-! ## A204617.P11427172442294275972

`∑{d}[n+1, A326305(#)*A374366((n+1)/#)]`
-/

namespace A204617.P11427172442294275972
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A326305 d * A374366 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A204617.P11427172442294275972

namespace A204617

/-- `∑{d}[n+1, A326305(#)*A374366((n+1)/#)]` -/
def P11427172442294275972.Spec : Prop :=
  ∀ n, P11427172442294275972.a n = A204617 (n + 1)

end A204617

/-! ## A204617.P11698770396331187027

`A079458(n+1)/(abs(1-A000010(Δ[n²]+1))+1)`
-/

namespace A204617.P11698770396331187027
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A079458 (n + 1) : ℚ) / (|1 - A000010 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + 1).toNat| + 1 : ℚ)

end

end A204617.P11698770396331187027

namespace A204617

/-- `A079458(n+1)/(abs(1-A000010(Δ[n²]+1))+1)` -/
def P11698770396331187027.Spec : Prop :=
  ∀ n, P11698770396331187027.a n = (A204617 (n + 1) : ℚ)

end A204617

/-! ## A204617.P3774830604705747293

`A003557(n+1)*A060968(A204455(n+1))`
-/

namespace A204617.P3774830604705747293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (n + 1) * A060968 (A204455 (n + 1)).toNat

end

end A204617.P3774830604705747293

namespace A204617

/-- `A003557(n+1)*A060968(A204455(n+1))` -/
def P3774830604705747293.Spec : Prop :=
  ∀ n, P3774830604705747293.a n = A204617 (n + 1)

end A204617

/-! ## A204617.P11795387169540192370

`A079458(n+1)/floor(A000010(A004767(n)+1)/2)`
-/

namespace A204617.P11795387169540192370
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A079458 (n + 1) : ℚ) / (⌊(A000010 (A004767 n + 1).toNat : ℚ) / 2⌋ : ℚ)

end

end A204617.P11795387169540192370

namespace A204617

/-- `A079458(n+1)/floor(A000010(A004767(n)+1)/2)` -/
def P11795387169540192370.Spec : Prop :=
  ∀ n, P11795387169540192370.a n = (A204617 (n + 1) : ℚ)

end A204617

/-! ## A204617.P5677675151424793142

`A079458(n+1)/A000010(A004277(n+1))%(n+2)`
-/

namespace A204617.P5677675151424793142
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A079458 (n + 1) : ℚ) / (Int.tmod (A000010 (A004277 (n + 1)).toNat) (n + 2 : ℤ) : ℚ)

end

end A204617.P5677675151424793142

namespace A204617

/-- `A079458(n+1)/A000010(A004277(n+1))%(n+2)` -/
def P5677675151424793142.Spec : Prop :=
  ∀ n, P5677675151424793142.a n = (A204617 (n + 1) : ℚ)

end A204617

/-! ## A204617.P5284501650112336750

`A079458(n+1)/A000010(A000027(n+1)+n+1)%(n+2)`
-/

namespace A204617.P5284501650112336750
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A079458 (n + 1) : ℚ) / (Int.tmod (A000010 (A000027 (n + 1) + (n : ℤ) + 1).toNat) (n + 2 : ℤ) : ℚ)

end

end A204617.P5284501650112336750

namespace A204617

/-- `A079458(n+1)/A000010(A000027(n+1)+n+1)%(n+2)` -/
def P5284501650112336750.Spec : Prop :=
  ∀ n, P5284501650112336750.a n = (A204617 (n + 1) : ℚ)

end A204617

/-! ## A204617.P1091471304087149478

`A040001(n)*A096445(n+1)`
-/

namespace A204617.P1091471304087149478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 n * A096445 (n + 1)

end

end A204617.P1091471304087149478

namespace A204617

/-- `A040001(n)*A096445(n+1)` -/
def P1091471304087149478.Spec : Prop :=
  ∀ n, P1091471304087149478.a n = A204617 (n + 1)

end A204617

/-! ## A204617.P9002581885726832071

`A079458(n+1)/(A109606(2*(n+1))+1)`
-/

namespace A204617.P9002581885726832071
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A079458 (n + 1) : ℚ) / (A109606 (2 * (n + 1)) + 1 : ℚ)

end

end A204617.P9002581885726832071

namespace A204617

/-- `A079458(n+1)/(A109606(2*(n+1))+1)` -/
def P9002581885726832071.Spec : Prop :=
  ∀ n, P9002581885726832071.a n = (A204617 (n + 1) : ℚ)

end A204617

/-! ## A204617.P12787300624392348828

`A079458(n+1)/(A039649(2*(n+1))-1)`
-/

namespace A204617.P12787300624392348828
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A079458 (n + 1) : ℚ) / (A039649 (2 * (n + 1)) - 1 : ℚ)

end

end A204617.P12787300624392348828

namespace A204617

/-- `A079458(n+1)/(A039649(2*(n+1))-1)` -/
def P12787300624392348828.Spec : Prop :=
  ∀ n, P12787300624392348828.a n = (A204617 (n + 1) : ℚ)

end A204617

/-! ## A204617.P2644620492458307085

`A096445(lcm(2, n+1))`
-/

namespace A204617.P2644620492458307085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096445 (Nat.lcm 2 (n + 1))

end

end A204617.P2644620492458307085

namespace A204617

/-- `A096445(lcm(2, n+1))` -/
def P2644620492458307085.Spec : Prop :=
  ∀ n, P2644620492458307085.a n = A204617 (n + 1)

end A204617

/-! ## A204617.P16134934872318185500

`A096445(A066043(n+1))`
-/

namespace A204617.P16134934872318185500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096445 (A066043 (n + 1)).toNat

end

end A204617.P16134934872318185500

namespace A204617

/-- `A096445(A066043(n+1))` -/
def P16134934872318185500.Spec : Prop :=
  ∀ n, P16134934872318185500.a n = A204617 (n + 1)

end A204617

/-! ## A204617.P2688459032094941622

`A096445(A109043(n+1))`
-/

namespace A204617.P2688459032094941622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096445 (A109043 (n + 1)).toNat

end

end A204617.P2688459032094941622

namespace A204617

/-- `A096445(A109043(n+1))` -/
def P2688459032094941622.Spec : Prop :=
  ∀ n, P2688459032094941622.a n = A204617 (n + 1)

end A204617

/-! ## A204617.P17192449865734396563

`A084540((n+1)²)/2`
-/

namespace A204617.P17192449865734396563
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A084540 ((n + 1) ^ 2) : ℚ) / 2

end

end A204617.P17192449865734396563

namespace A204617

/-- `A084540((n+1)²)/2` -/
def P17192449865734396563.Spec : Prop :=
  ∀ n, P17192449865734396563.a n = (A204617 (n + 1) : ℚ)

end A204617

/-!
# A204618: a(n) = n^2 * B(n) where B(n) are the Bell numbers, A000110.

The programs for A204618, there is no canonical definition to state claims against.
-/

/-! ## A204618.P18139657077071082948

`n*A070071(n)`
-/

namespace A204618.P18139657077071082948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A070071 n

end

end A204618.P18139657077071082948

/-! ## A204618.P18144554236387502031

`n²*A000110(n)`
-/

namespace A204618.P18144554236387502031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) * A000110 n

end

end A204618.P18144554236387502031

/-! ## A204618.P12926223063763568987

`abs(n²*A292935(n))`
-/

namespace A204618.P12926223063763568987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n ^ 2 : ℤ) * A292935 n|

end

end A204618.P12926223063763568987

/-! ## A204618.P15743798627404269694

`n²*A011971(∑[n])`
-/

namespace A204618.P15743798627404269694
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) * A011971 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A204618.P15743798627404269694

/-! ## A204618.P5932279169001378701

`n²*A095149(∑[n])`
-/

namespace A204618.P5932279169001378701
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) * A095149 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A204618.P5932279169001378701

/-! ## A204618.P3194295088788781498

`n²*A108087(∑[n])`
-/

namespace A204618.P3194295088788781498
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) * A108087 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A204618.P3194295088788781498

/-! ## A204618.P4544456744277673725

`n²*A123081(∑[n])`
-/

namespace A204618.P4544456744277673725
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) * A123081 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A204618.P4544456744277673725

/-! ## A204618.P5679307826349690443

`n²*A144155(∑[n])`
-/

namespace A204618.P5679307826349690443
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) * A144155 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A204618.P5679307826349690443

/-! ## A204618.P2007979386993514610

`n²*A154380(∑[n])`
-/

namespace A204618.P2007979386993514610
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) * A154380 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A204618.P2007979386993514610

/-! ## A204618.P10034182583405972059

`n²*A186020(∑[n])`
-/

namespace A204618.P10034182583405972059
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) * A186020 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A204618.P10034182583405972059

/-!
# A204620: Numbers k such that 3*2^k + 1 is a prime factor of a Fermat number 2^(2^m) + 1 for some m.

The programs for A204620, there is no canonical definition to state claims against.
-/

/-! ## A204620.P10557268203155103067

`A268660(lt[A324923(n+4), A276150(n)])`
-/

namespace A204620.P10557268203155103067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324923 (n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276150 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268660 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A204620.P10557268203155103067

/-! ## A204620.P9681851154766112727

`A268660(eq[4, A328388(n)])`
-/

namespace A204620.P9681851154766112727
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328388 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268660 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A204620.P9681851154766112727

/-!
# A204621: Triangle read by rows: coordinator triangle for lattice A*_n.

The programs for A204621, the canonical program `A204621.P10545578004143869044` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A204621 has offset 0).

The definition of A204621 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A204621.P10545578004143869044

`A054143(A057944(n)+A004197(n))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A204621

/-- `A054143(A057944(n)+A004197(n))` -/
def P10545578004143869044.Spec : Prop :=
  ∀ n, P10545578004143869044.a n = A204621 n

theorem P10545578004143869044.correct : P10545578004143869044.Spec := by
  intro n
  simp only [A204621]

end A204621

/-! ## A204621.P12294879176008023795

`A104709(A057944(n)+A003984(n))`
-/

namespace A204621.P12294879176008023795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104709 (A057944 n + A003984 n).toNat

end

end A204621.P12294879176008023795

namespace A204621

/-- `A104709(A057944(n)+A003984(n))` -/
def P12294879176008023795.Spec : Prop :=
  ∀ n, P12294879176008023795.a n = A204621 n

end A204621

/-! ## A204621.P10588377563446195749

`A008949(A127739(n+1)+A004197(n))`
-/

namespace A204621.P10588377563446195749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008949 (A127739 (n + 1) + A004197 n).toNat

end

end A204621.P10588377563446195749

namespace A204621

/-- `A008949(A127739(n+1)+A004197(n))` -/
def P10588377563446195749.Spec : Prop :=
  ∀ n, P10588377563446195749.a n = A204621 n

end A204621

/-! ## A204621.P560476336060747830

`A008949(A003983(n+1)+A025581(n)+n)`
-/

namespace A204621.P560476336060747830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008949 (A003983 (n + 1) + (A025581 n + (n : ℤ))).toNat

end

end A204621.P560476336060747830

namespace A204621

/-- `A008949(A003983(n+1)+A025581(n)+n)` -/
def P560476336060747830.Spec : Prop :=
  ∀ n, P560476336060747830.a n = A204621 n

end A204621

/-! ## A204621.P11006995302019162066

`A008949(A038722(n+1)+A002262(A004197(n)+n))`
-/

namespace A204621.P11006995302019162066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008949 (A038722 (n + 1) + A002262 (A004197 n + (n : ℤ)).toNat).toNat

end

end A204621.P11006995302019162066

namespace A204621

/-- `A008949(A038722(n+1)+A002262(A004197(n)+n))` -/
def P11006995302019162066.Spec : Prop :=
  ∀ n, P11006995302019162066.a n = A204621 n

end A204621

/-! ## A204621.P5858810016735791550

`A053646(A204206(n+1))`
-/

namespace A204621.P5858810016735791550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053646 (A204206 (n + 1)).toNat

end

end A204621.P5858810016735791550

namespace A204621

/-- `A053646(A204206(n+1))` -/
def P5858810016735791550.Spec : Prop :=
  ∀ n, P5858810016735791550.a n = A204621 n

end A204621

/-! ## A204621.P18367931018083869196

`A053646(A057716(∑[A074909(n)]))`
-/

namespace A204621.P18367931018083869196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053646 (A057716 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A204621.P18367931018083869196

namespace A204621

/-- `A053646(A057716(∑[A074909(n)]))` -/
def P18367931018083869196.Spec : Prop :=
  ∀ n, P18367931018083869196.a n = A204621 n

end A204621

/-! ## A204621.P5273366637639814

`A053646(A140513(n)+A054143(n))`
-/

namespace A204621.P5273366637639814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053646 (A140513 n + A054143 n).toNat

end

end A204621.P5273366637639814

namespace A204621

/-- `A053646(A140513(n)+A054143(n))` -/
def P5273366637639814.Spec : Prop :=
  ∀ n, P5273366637639814.a n = A204621 n

end A204621

/-! ## A204621.P14935912149054401862

`A053646(A102363(n+1)+A102363(n))`
-/

namespace A204621.P14935912149054401862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053646 (A102363 (n + 1) + A102363 n).toNat

end

end A204621.P14935912149054401862

namespace A204621

/-- `A053646(A102363(n+1)+A102363(n))` -/
def P14935912149054401862.Spec : Prop :=
  ∀ n, P14935912149054401862.a n = A204621 n

end A204621

/-! ## A204621.P331369086616352269

`A053646(2*A140513(n)-A054143(n))`
-/

namespace A204621.P331369086616352269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053646 (2 * A140513 n - A054143 n).toNat

end

end A204621.P331369086616352269

namespace A204621

/-- `A053646(2*A140513(n)-A054143(n))` -/
def P331369086616352269.Spec : Prop :=
  ∀ n, P331369086616352269.a n = A204621 n

end A204621

/-!
# A204622: Number of (n+1) X (n+1) 0..2 arrays with every 2 X 2 subblock having unequal diagonal elements or unequal antidiagonal elements, and new values 0..2 introduced in row major order.

The programs for A204622, there is no canonical definition to state claims against.
-/

/-! ## A204622.P234351147073567216

`A204630((n+1)²+n²)`
-/

namespace A204622.P234351147073567216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204630 ((n + 1) ^ 2 + n ^ 2)

end

end A204622.P234351147073567216

/-!
# A204623: Number of (n+1)X2 0..2 arrays with every 2X2 subblock having unequal diagonal elements or unequal antidiagonal elements, and new values 0..2 introduced in row major order.

The programs for A204623, the canonical program `A204623.P2365985493179586750` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A204623 has offset 1).

The definition of A204623 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 110 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A204623.P2365985493179586750

`12*8^n`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A204623

/-- `12*8^n` -/
def P2365985493179586750.Spec : Prop :=
  ∀ n, (P2365985493179586750.a n : ℤ) = A204623 (n + 1)

theorem P2365985493179586750.correct : P2365985493179586750.Spec := by
  intro n
  simp only [A204623, Nat.add_sub_cancel]

end A204623

/-!
# A204624: Number of (n+1) X 3 0..2 arrays with every 2 X 2 subblock having unequal diagonal elements or unequal antidiagonal elements, and new values 0..2 introduced in row major order.

The programs for A204624, there is no canonical definition to state claims against.
-/

/-! ## A204624.P6166522274968582706

`A204630(∑[n+1]+2)`
-/

namespace A204624.P6166522274968582706
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204630 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A204624.P6166522274968582706

/-! ## A204624.P10230587540100073843

`record[root(A204630(n+2), A240783(n+1))]`
-/

namespace A204624.P10230587540100073843
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A204630 (n + 2) : ℝ) ^ (1 / (A240783 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A204624.P10230587540100073843

/-! ## A204624.P8766776815089974146

`record[root(A204630(n+3), A058399(n+1))]`
-/

namespace A204624.P8766776815089974146
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A204630 (n + 3) : ℝ) ^ (1 / (A058399 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A204624.P8766776815089974146

/-! ## A204624.P15082369669307353249

`lcm(3, A204630(A000096(n+1)))`
-/

namespace A204624.P15082369669307353249
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 3 (A204630 (A000096 (n + 1)).toNat)

end

end A204624.P15082369669307353249

/-! ## A204624.P11680104102225765968

`A204630(A000096(n+1))%A236589(2*n+1)`
-/

namespace A204624.P11680104102225765968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A204630 (A000096 (n + 1)).toNat) (A236589 (2 * n + 1))

end

end A204624.P11680104102225765968

/-!
# A204625: Number of (n+1) X 4 0..2 arrays with every 2 X 2 subblock having unequal diagonal elements or unequal antidiagonal elements, and new values 0..2 introduced in row major order.

The programs for A204625, there is no canonical definition to state claims against.
-/

/-! ## A204625.P16480668159438264566

`A204630(∑[n+2]+4)`
-/

namespace A204625.P16480668159438264566
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204630 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A204625.P16480668159438264566

/-! ## A204625.P15260901739000444938

`lcm(2, A204630(A167614(n+1)))`
-/

namespace A204625.P15260901739000444938
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A204630 (A167614 (n + 1)).toNat)

end

end A204625.P15260901739000444938

/-! ## A204625.P18327572567790867488

`record[root(A204630(n+4), A058399(n+1))]`
-/

namespace A204625.P18327572567790867488
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A204630 (n + 4) : ℝ) ^ (1 / (A058399 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A204625.P18327572567790867488

/-! ## A204625.P6488613663049370661

`A204630(A167614(n+1))+A185284(n)`
-/

namespace A204625.P6488613663049370661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204630 (A167614 (n + 1)).toNat + A185284 n

end

end A204625.P6488613663049370661

/-! ## A204625.P14405203334116081714

`A204630(A167614(n+1))+A181340(n+1)`
-/

namespace A204625.P14405203334116081714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204630 (A167614 (n + 1)).toNat + A181340 (n + 1)

end

end A204625.P14405203334116081714

/-!
# A204626: Number of (n+1)X5 0..2 arrays with every 2X2 subblock having unequal diagonal elements or unequal antidiagonal elements, and new values 0..2 introduced in row major order.

The programs for A204626, there is no canonical definition to state claims against.
-/

/-! ## A204626.P10831466644354959836

`A204630(A167614(n+2)+1)`
-/

namespace A204626.P10831466644354959836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204630 (A167614 (n + 2) + 1).toNat

end

end A204626.P10831466644354959836

/-! ## A204626.P16048546939194807816

`A204630(A034856(n+2)+6)`
-/

namespace A204626.P16048546939194807816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204630 (A034856 (n + 2) + 6).toNat

end

end A204626.P16048546939194807816

/-! ## A204626.P5402593258455738939

`A204630(A055998(n+1)+7)`
-/

namespace A204626.P5402593258455738939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204630 (A055998 (n + 1) + 7).toNat

end

end A204626.P5402593258455738939

/-! ## A204626.P11195780185499129598

`A204630(A080036(A167614(n+1)))`
-/

namespace A204626.P11195780185499129598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204630 (A080036 (A167614 (n + 1)).toNat).toNat

end

end A204626.P11195780185499129598

/-! ## A204626.P8525381307767521709

`A204630(∑[n+1]+3*(n+2))`
-/

namespace A204626.P8525381307767521709
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204630 (∑ j ∈ Finset.range (n + 1), f1 j + 3 * (n + 2))

end

end A204626.P8525381307767521709

/-!
# A204627: Number of (n+1)X6 0..2 arrays with every 2X2 subblock having unequal diagonal elements or unequal antidiagonal elements, and new values 0..2 introduced in row major order.

The programs for A204627, there is no canonical definition to state claims against.
-/

/-! ## A204627.P86205447829209324

`A204630(A374005(n+1))`
-/

namespace A204627.P86205447829209324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204630 (A374005 (n + 1)).toNat

end

end A204627.P86205447829209324

/-! ## A204627.P12380024449744025313

`A204630(A167614(n+3)+2)`
-/

namespace A204627.P12380024449744025313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204630 (A167614 (n + 3) + 2).toNat

end

end A204627.P12380024449744025313

/-! ## A204627.P16407092223749045103

`A204630(A034856(n+3)+7)`
-/

namespace A204627.P16407092223749045103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204630 (A034856 (n + 3) + 7).toNat

end

end A204627.P16407092223749045103

/-! ## A204627.P17687037431299370531

`A204630(Δ[A023545(n+1)])`
-/

namespace A204627.P17687037431299370531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204630 (f1 (n + 1) - f1 n).toNat

end

end A204627.P17687037431299370531

/-! ## A204627.P1126711952385954420

`A204630(A052905(n+2)+1)`
-/

namespace A204627.P1126711952385954420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204630 (A052905 (n + 2) + 1).toNat

end

end A204627.P1126711952385954420

/-!
# A204628: 

The programs for A204628, there is no canonical definition to state claims against.
-/

/-! ## A204628.P14774604502768341197

`A204630(A052905(n+3))`
-/

namespace A204628.P14774604502768341197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204630 (A052905 (n + 3)).toNat

end

end A204628.P14774604502768341197

/-! ## A204628.P11369007228422783726

`A204630(A000124(n+6)-6)`
-/

namespace A204628.P11369007228422783726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204630 (A000124 (n + 6) - 6).toNat

end

end A204628.P11369007228422783726

/-!
# A204629: 

The programs for A204629, there is no canonical definition to state claims against.
-/

/-! ## A204629.P10196872734217859932

`A204630(A167499(n+5)+2)`
-/

namespace A204629.P10196872734217859932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204630 (A167499 (n + 5) + 2).toNat

end

end A204629.P10196872734217859932

/-!
# A204630: T(n,k)=Number of (n+1)X(k+1) 0..2 arrays with every 2X2 subblock having unequal diagonal elements or unequal antidiagonal elements, and new values 0..2 introduced in row major order.

The programs for A204630, there is no canonical definition to state claims against.
-/

/-! ## A204630.P9104130395778320784

`A080637(Δ[A198309(n+3)]*A265466(n+1))`
-/

namespace A204630.P9104130395778320784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198309 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080637 ((f1 (n + 1) - f1 n) * A265466 (n + 1)).toNat

end

end A204630.P9104130395778320784

/-!
# A204631: Expansion of 1/(1 - x - x^2 + x^5 - x^7).

The programs for A204631, the canonical program `A204631.P11272510188002141038` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A204631 has offset 0).

The definition of A204631 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A204631.P11272510188002141038

`a(n-1)+a(n-2)-a(n-5)+a(n-7)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=3, a(4)=5, a(5)=7, a(6)=11`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A204631

/-- `a(n-1)+a(n-2)-a(n-5)+a(n-7)` -/
def P11272510188002141038.Spec : Prop :=
  ∀ n, P11272510188002141038.a n = A204631 n

theorem P11272510188002141038.correct : P11272510188002141038.Spec := by
  intro n
  simp only [A204631]

end A204631

/-! ## A204631.P13838429088461947483

`A257639(∑[∑[A067687(n)]])`
-/

namespace A204631.P13838429088461947483
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067687 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257639 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A204631.P13838429088461947483

namespace A204631

/-- `A257639(∑[∑[A067687(n)]])` -/
def P13838429088461947483.Spec : Prop :=
  ∀ n, P13838429088461947483.a n = A204631 n

end A204631

/-! ## A204631.P3538373868595208135

`A293137(A324936(n+1)+1)`
-/

namespace A204631.P3538373868595208135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293137 (A324936 (n + 1) + 1).toNat

end

end A204631.P3538373868595208135

namespace A204631

/-- `A293137(A324936(n+1)+1)` -/
def P3538373868595208135.Spec : Prop :=
  ∀ n, P3538373868595208135.a n = A204631 n

end A204631

/-! ## A204631.P6406481139365211617

`A257639(A024537(n)+A001932(n))`
-/

namespace A204631.P6406481139365211617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257639 (A024537 n + A001932 n).toNat

end

end A204631.P6406481139365211617

namespace A204631

/-- `A257639(A024537(n)+A001932(n))` -/
def P6406481139365211617.Spec : Prop :=
  ∀ n, P6406481139365211617.a n = A204631 n

end A204631

/-! ## A204631.P15398346529292819907

`A257639(A191828(n)+A018096(n))`
-/

namespace A204631.P15398346529292819907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257639 (A191828 n + A018096 n).toNat

end

end A204631.P15398346529292819907

namespace A204631

/-- `A257639(A191828(n)+A018096(n))` -/
def P15398346529292819907.Spec : Prop :=
  ∀ n, P15398346529292819907.a n = A204631 n

end A204631

/-!
# A204634: Number of (n+2)X(n+2) 0..3 arrays with every 3X3 subblock having three equal elements in a row horizontally, vertically, diagonally or antidiagonally exactly three ways, and new values 0..3 introduced in row major order.

The programs for A204634, there is no canonical definition to state claims against.
-/

/-! ## A204634.P1688839676869629141

`A204642(∑[4*n]+1)`
-/

namespace A204634.P1688839676869629141
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204642 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A204634.P1688839676869629141

/-! ## A204634.P9758055796565022491

`lcm(2, A204642(A001844(n)))`
-/

namespace A204634.P9758055796565022491
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A204642 (A001844 n).toNat)

end

end A204634.P9758055796565022491

/-! ## A204634.P4151544143368415760

`A204642(A001844(n))+A025442(n)`
-/

namespace A204634.P4151544143368415760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204642 (A001844 n).toNat + A025442 n

end

end A204634.P4151544143368415760

/-! ## A204634.P16659422820154134582

`A308974(n)+A204642(A001844(n))`
-/

namespace A204634.P16659422820154134582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308974 n + A204642 (A001844 n).toNat

end

end A204634.P16659422820154134582

/-! ## A204634.P13979014334890871783

`A308979(n)+A204642(A001844(n))`
-/

namespace A204634.P13979014334890871783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308979 n + A204642 (A001844 n).toNat

end

end A204634.P13979014334890871783

/-!
# A204635: Number of (n+2)X3 0..3 arrays with every 3X3 subblock having three equal elements in a row horizontally, vertically, diagonally or antidiagonally exactly three ways, and new values 0..3 introduced in row major order.

The programs for A204635, there is no canonical definition to state claims against.
-/

/-! ## A204635.P5360996968005459293

`A204642(∑[n]+1)`
-/

namespace A204635.P5360996968005459293
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204642 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A204635.P5360996968005459293

/-! ## A204635.P2894517221141349443

`record[A204642(A329854(n))]`
-/

namespace A204635.P2894517221141349443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204642 (A329854 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A204635.P2894517221141349443

/-! ## A204635.P14198890109885222641

`and(-1, A204642(A000124(n)))`
-/

namespace A204635.P14198890109885222641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A204642 (A000124 n).toNat)

end

end A204635.P14198890109885222641

/-! ## A204635.P3720024130403439490

`record[A204642(A048671(n+1))]`
-/

namespace A204635.P3720024130403439490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204642 (A048671 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A204635.P3720024130403439490

/-! ## A204635.P5712386098970632267

`record[A204642(A056534(n+1))]`
-/

namespace A204635.P5712386098970632267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204642 (A056534 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A204635.P5712386098970632267

/-!
# A204636: Number of (n+2)X4 0..3 arrays with every 3X3 subblock having three equal elements in a row horizontally, vertically, diagonally or antidiagonally exactly three ways, and new values 0..3 introduced in row major order.

The programs for A204636, there is no canonical definition to state claims against.
-/

/-! ## A204636.P10336875921391676232

`A204642(∑[n+1]+2)`
-/

namespace A204636.P10336875921391676232
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204642 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A204636.P10336875921391676232

/-! ## A204636.P6426383231516978841

`A204642(A000096(n)+3)+char[23]`
-/

namespace A204636.P6426383231516978841
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  23

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204642 (A000096 n + 3).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A204636.P6426383231516978841

/-! ## A204636.P3090519031739030827

`A014963(6*(n+1))*A204642(A000096(n)+3)`
-/

namespace A204636.P3090519031739030827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (6 * (n + 1)) * A204642 (A000096 n + 3).toNat

end

end A204636.P3090519031739030827

/-! ## A204636.P12783696381143275511

`A000005(gcd(n, n+1))*A204642(A000096(n)+3)`
-/

namespace A204636.P12783696381143275511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (Nat.gcd n (n + 1)) * A204642 (A000096 n + 3).toNat

end

end A204636.P12783696381143275511

/-! ## A204636.P12211874509320553643

`A000045(A020639(2*(n+1)))*A204642(A000096(n)+3)`
-/

namespace A204636.P12211874509320553643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A020639 (2 * (n + 1))).toNat * A204642 (A000096 n + 3).toNat

end

end A204636.P12211874509320553643

/-!
# A204637: Number of (n+2) X 5 0..3 arrays with every 3 X 3 subblock having three equal elements in a row horizontally, vertically, diagonally or antidiagonally exactly three ways, and new values 0..3 introduced in row major order.

The programs for A204637, there is no canonical definition to state claims against.
-/

/-! ## A204637.P5313861121772579519

`A204642(∑[n+2]+4)`
-/

namespace A204637.P5313861121772579519
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204642 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A204637.P5313861121772579519

/-! ## A204637.P6917034362299361438

`A204642(A000217(n+2)+3)+char[24]`
-/

namespace A204637.P6917034362299361438
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  24

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204642 (A000217 (n + 2) + 3).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A204637.P6917034362299361438

/-! ## A204637.P14438788575814231519

`lcm((-1)^n, A204642(A167614(n+1)))`
-/

namespace A204637.P14438788575814231519
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A204642 (A167614 (n + 1)).toNat)

end

end A204637.P14438788575814231519

/-! ## A204637.P10252277234888843840

`A204642(A167614(n+1))+A025469(n)`
-/

namespace A204637.P10252277234888843840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204642 (A167614 (n + 1)).toNat + A025469 n

end

end A204637.P10252277234888843840

/-! ## A204637.P10470095780800890228

`A204642(A167614(n+1))+A034560(n+1)`
-/

namespace A204637.P10470095780800890228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204642 (A167614 (n + 1)).toNat + A034560 (n + 1)

end

end A204637.P10470095780800890228

/-!
# A204638: Number of (n+2) X 6 0..3 arrays with every 3 X 3 subblock having three equal elements in a row horizontally, vertically, diagonally or antidiagonally exactly three ways, and new values 0..3 introduced in row major order.

The programs for A204638, there is no canonical definition to state claims against.
-/

/-! ## A204638.P11662930813287950995

`A204642(∑[n+3]+7)`
-/

namespace A204638.P11662930813287950995
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204642 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A204638.P11662930813287950995

/-! ## A204638.P5801160819022998654

`A204642(A000217(n+3)+4)+char[22]`
-/

namespace A204638.P5801160819022998654
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  22

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204642 (A000217 (n + 3) + 4).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A204638.P5801160819022998654

/-! ## A204638.P13364879739633617497

`A285007(n+1)+A204642(A374004(n+1))`
-/

namespace A204638.P13364879739633617497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285007 (n + 1) + A204642 (A374004 (n + 1)).toNat

end

end A204638.P13364879739633617497

/-! ## A204638.P15605070546999427858

`A007318(C(n, 2))*A204642(A000217(n+3)+4)`
-/

namespace A204638.P15605070546999427858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose n 2) * A204642 (A000217 (n + 3) + 4).toNat

end

end A204638.P15605070546999427858

/-! ## A204638.P12182287714339421909

`A014963(6*(n+1))*A204642(A000217(n+3)+4)`
-/

namespace A204638.P12182287714339421909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (6 * (n + 1)) * A204642 (A000217 (n + 3) + 4).toNat

end

end A204638.P12182287714339421909

/-!
# A204639: Number of (n+2) X 7 0..3 arrays with every 3 X 3 subblock having three equal elements in a row horizontally, vertically, diagonally or antidiagonally exactly three ways, and new values 0..3 introduced in row major order.

The programs for A204639, there is no canonical definition to state claims against.
-/

/-! ## A204639.P785896576696746340

`A204642(A374005(n+1))`
-/

namespace A204639.P785896576696746340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204642 (A374005 (n + 1)).toNat

end

end A204639.P785896576696746340

/-! ## A204639.P12582999053092295201

`A204642(A167499(n+3))`
-/

namespace A204639.P12582999053092295201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204642 (A167499 (n + 3)).toNat

end

end A204639.P12582999053092295201

/-! ## A204639.P12889947142326842548

`A204642(A155212(n)+13)`
-/

namespace A204639.P12889947142326842548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204642 (A155212 n + 13).toNat

end

end A204639.P12889947142326842548

/-! ## A204639.P16832675428883134654

`A204642(A056000(n)+15)`
-/

namespace A204639.P16832675428883134654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204642 (A056000 n + 15).toNat

end

end A204639.P16832675428883134654

/-! ## A204639.P11076375466735201237

`A204642(eq[7, A066657(n)])`
-/

namespace A204639.P11076375466735201237
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204642 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A204639.P11076375466735201237

/-!
# A204640: Number of (n+2) X 8 0..3 arrays with every 3 X 3 subblock having three equal elements in a row horizontally, vertically, diagonally or antidiagonally exactly three ways, and new values 0..3 introduced in row major order.

The programs for A204640, there is no canonical definition to state claims against.
-/

/-! ## A204640.P9842890110736559531

`A204642(A374007(n+1))`
-/

namespace A204640.P9842890110736559531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204642 (A374007 (n + 1)).toNat

end

end A204640.P9842890110736559531

/-! ## A204640.P5640670295345742782

`A204642(A166136(n+4))`
-/

namespace A204640.P5640670295345742782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204642 (A166136 (n + 4)).toNat

end

end A204640.P5640670295345742782

/-! ## A204640.P1789573790252279673

`A204642(A056115(n)+21)`
-/

namespace A204640.P1789573790252279673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204642 (A056115 n + 21).toNat

end

end A204640.P1789573790252279673

/-! ## A204640.P15694479906026141632

`A204642(A167499(n+4)+1)`
-/

namespace A204640.P15694479906026141632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204642 (A167499 (n + 4) + 1).toNat

end

end A204640.P15694479906026141632

/-! ## A204640.P9879163011902865510

`A204642(A000124(n+5)+5)`
-/

namespace A204640.P9879163011902865510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204642 (A000124 (n + 5) + 5).toNat

end

end A204640.P9879163011902865510

/-!
# A204641: Number of (n+2) X 9 0..3 arrays with every 3 X 3 subblock having three equal elements in a row horizontally, vertically, diagonally or antidiagonally exactly three ways, and new values 0..3 introduced in row major order.

The programs for A204641, there is no canonical definition to state claims against.
-/

/-! ## A204641.P9478296894271097454

`A204642(A374008(n+1))`
-/

namespace A204641.P9478296894271097454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204642 (A374008 (n + 1)).toNat

end

end A204641.P9478296894271097454

/-! ## A204641.P4043948430846280337

`A204642(eq[11, A066657(n)])`
-/

namespace A204641.P4043948430846280337
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204642 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A204641.P4043948430846280337

/-! ## A204641.P15976513913204484388

`A204642(A167499(n+5)+2)`
-/

namespace A204641.P15976513913204484388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204642 (A167499 (n + 5) + 2).toNat

end

end A204641.P15976513913204484388

/-! ## A204641.P5624230967643294197

`A204642(A000124(n+6)+6)`
-/

namespace A204641.P5624230967643294197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204642 (A000124 (n + 6) + 6).toNat

end

end A204641.P5624230967643294197

/-! ## A204641.P13666886676631566813

`A204642(A000096(n+5)+8)`
-/

namespace A204641.P13666886676631566813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204642 (A000096 (n + 5) + 8).toNat

end

end A204641.P13666886676631566813

/-!
# A204643: Number of (n+1)X(n+1) 0..1 arrays with column and row pair sums b(i,j)=a(i,j)+a(i,j-1) and c(i,j)=a(i,j)+a(i-1,j) nondecreasing in column and row directions, respectively.

The programs for A204643, there is no canonical definition to state claims against.
-/

/-! ## A204643.P2364521837880959006

`A204651(∑[4*n]+1)`
-/

namespace A204643.P2364521837880959006
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204651 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A204643.P2364521837880959006

/-! ## A204643.P5595459178276142881

`lcm(2, A204651(A001844(n)))`
-/

namespace A204643.P5595459178276142881
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A204651 (A001844 n).toNat)

end

end A204643.P5595459178276142881

/-! ## A204643.P12420578222988046011

`A204651(A001844(n))+A000007(n+1)`
-/

namespace A204643.P12420578222988046011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204651 (A001844 n).toNat + A000007 (n + 1)

end

end A204643.P12420578222988046011

/-! ## A204643.P11736739157178202634

`A204651(A001844(n))+A000038(n+1)`
-/

namespace A204643.P11736739157178202634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204651 (A001844 n).toNat + A000038 (n + 1)

end

end A204643.P11736739157178202634

/-! ## A204643.P17040846734376065665

`A204651(A001844(n))%(A000051(n+2)²+1)`
-/

namespace A204643.P17040846734376065665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A204651 (A001844 n).toNat) (A000051 (n + 2) ^ 2 + 1)

end

end A204643.P17040846734376065665

/-! ## A204643.P2442842942591584514

`A204651(A001844(n))+(3*A060995(n+1))%2`
-/

namespace A204643.P2442842942591584514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204651 (A001844 n).toNat + Int.tmod (3 * A060995 (n + 1)) 2

end

end A204643.P2442842942591584514

/-!
# A204644: Number of (n+1) X 2 0..1 arrays with column and row pair sums b(i,j)=a(i,j)+a(i,j-1) and c(i,j)=a(i,j)+a(i-1,j) nondecreasing in column and row directions, respectively.

The programs for A204644, the canonical program `A204644.P8830105383865475096` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A204644 has offset 1).

The definition of A204644 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 474 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A204644.P8830105383865475096

`a(n-1)+a(n-2)+4` with `a(0)=8, a(1)=16`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A204644

/-- `a(n-1)+a(n-2)+4` -/
def P8830105383865475096.Spec : Prop :=
  ∀ n, (P8830105383865475096.a n : ℤ) = A204644 (n + 1)

theorem P8830105383865475096.correct : P8830105383865475096.Spec := by
  intro n
  simp only [A204644, Nat.add_sub_cancel]

end A204644

/-! ## A204644.P3329983205379164007

`A192746(n+2)-1`
-/

namespace A204644.P3329983205379164007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192746 (n + 2) - 1

end

end A204644.P3329983205379164007

namespace A204644

/-- `A192746(n+2)-1` -/
def P3329983205379164007.Spec : Prop :=
  ∀ n, P3329983205379164007.a n = A204644 (n + 1)

end A204644

/-! ## A204644.P6613800100653066173

`A022406(n+2)-3`
-/

namespace A204644.P6613800100653066173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022406 (n + 2) - 3

end

end A204644.P6613800100653066173

namespace A204644

/-- `A022406(n+2)-3` -/
def P6613800100653066173.Spec : Prop :=
  ∀ n, P6613800100653066173.a n = A204644 (n + 1)

end A204644

/-! ## A204644.P2949621628706835885

`A022403(n+3)-3`
-/

namespace A204644.P2949621628706835885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022403 (n + 3) - 3

end

end A204644.P2949621628706835885

namespace A204644

/-- `A022403(n+3)-3` -/
def P2949621628706835885.Spec : Prop :=
  ∀ n, P2949621628706835885.a n = A204644 (n + 1)

end A204644

/-! ## A204644.P14581928291527702987

`A355288(n+3)-3`
-/

namespace A204644.P14581928291527702987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355288 (n + 3) - 3

end

end A204644.P14581928291527702987

namespace A204644

/-- `A355288(n+3)-3` -/
def P14581928291527702987.Spec : Prop :=
  ∀ n, P14581928291527702987.a n = A204644 (n + 1)

end A204644

/-! ## A204644.P6950416547517413692

`2*A019274(n+4)`
-/

namespace A204644.P6950416547517413692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A019274 (n + 4)

end

end A204644.P6950416547517413692

namespace A204644

/-- `2*A019274(n+4)` -/
def P6950416547517413692.Spec : Prop :=
  ∀ n, P6950416547517413692.a n = A204644 (n + 1)

end A204644

/-! ## A204644.P6674917556288352104

`4*(A020701(n)-1)`
-/

namespace A204644.P6674917556288352104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (A020701 n - 1)

end

end A204644.P6674917556288352104

namespace A204644

/-- `4*(A020701(n)-1)` -/
def P6674917556288352104.Spec : Prop :=
  ∀ n, P6674917556288352104.a n = A204644 (n + 1)

end A204644

/-! ## A204644.P5679580492784515745

`4*(A020706(n)-2)`
-/

namespace A204644.P5679580492784515745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (A020706 n - 2)

end

end A204644.P5679580492784515745

namespace A204644

/-- `4*(A020706(n)-2)` -/
def P5679580492784515745.Spec : Prop :=
  ∀ n, P5679580492784515745.a n = A204644 (n + 1)

end A204644

/-! ## A204644.P7661322306673288113

`A022087(n+4)-4`
-/

namespace A204644.P7661322306673288113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022087 (n + 4) - 4

end

end A204644.P7661322306673288113

namespace A204644

/-- `A022087(n+4)-4` -/
def P7661322306673288113.Spec : Prop :=
  ∀ n, P7661322306673288113.a n = A204644 (n + 1)

end A204644

/-! ## A204644.P3234987523865924414

`4*A000071(n+4)`
-/

namespace A204644.P3234987523865924414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A000071 (n + 4)

end

end A204644.P3234987523865924414

namespace A204644

/-- `4*A000071(n+4)` -/
def P3234987523865924414.Spec : Prop :=
  ∀ n, P3234987523865924414.a n = A204644 (n + 1)

end A204644

/-! ## A204644.P2255808218507722834

`4*(A048584(n)-3)`
-/

namespace A204644.P2255808218507722834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (A048584 n - 3)

end

end A204644.P2255808218507722834

namespace A204644

/-- `4*(A048584(n)-3)` -/
def P2255808218507722834.Spec : Prop :=
  ∀ n, P2255808218507722834.a n = A204644 (n + 1)

end A204644

/-! ## A204644.P15274732550669811809

`A164485(n+4)-5`
-/

namespace A204644.P15274732550669811809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164485 (n + 4) - 5

end

end A204644.P15274732550669811809

namespace A204644

/-- `A164485(n+4)-5` -/
def P15274732550669811809.Spec : Prop :=
  ∀ n, P15274732550669811809.a n = A204644 (n + 1)

end A204644

/-! ## A204644.P6416334261008105353

`∑[A022087(n+2)]+4`
-/

namespace A204644.P6416334261008105353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022087 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 4

end

end A204644.P6416334261008105353

namespace A204644

/-- `∑[A022087(n+2)]+4` -/
def P6416334261008105353.Spec : Prop :=
  ∀ n, P6416334261008105353.a n = A204644 (n + 1)

end A204644

/-! ## A204644.P13593086529001294317

`2*(A154691(n+1)+1)`
-/

namespace A204644.P13593086529001294317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A154691 (n + 1) + 1)

end

end A204644.P13593086529001294317

namespace A204644

/-- `2*(A154691(n+1)+1)` -/
def P13593086529001294317.Spec : Prop :=
  ∀ n, P13593086529001294317.a n = A204644 (n + 1)

end A204644

/-! ## A204644.P2085802216266613822

`2*(A168193(n+1)+2)`
-/

namespace A204644.P2085802216266613822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A168193 (n + 1) + 2)

end

end A204644.P2085802216266613822

namespace A204644

/-- `2*(A168193(n+1)+2)` -/
def P2085802216266613822.Spec : Prop :=
  ∀ n, P2085802216266613822.a n = A204644 (n + 1)

end A204644

/-! ## A204644.P6171426387547550640

`2*(A090991(n+1)-2)`
-/

namespace A204644.P6171426387547550640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A090991 (n + 1) - 2)

end

end A204644.P6171426387547550640

namespace A204644

/-- `2*(A090991(n+1)-2)` -/
def P6171426387547550640.Spec : Prop :=
  ∀ n, P6171426387547550640.a n = A204644 (n + 1)

end A204644

/-! ## A204644.P17179864063795036292

`2*(A166863(n+1)+3)`
-/

namespace A204644.P17179864063795036292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A166863 (n + 1) + 3)

end

end A204644.P17179864063795036292

namespace A204644

/-- `2*(A166863(n+1)+3)` -/
def P17179864063795036292.Spec : Prop :=
  ∀ n, P17179864063795036292.a n = A204644 (n + 1)

end A204644

/-! ## A204644.P4553410760108730393

`4*(A000045(n+4)-1)`
-/

namespace A204644.P4553410760108730393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (A000045 (n + 4) - 1)

end

end A204644.P4553410760108730393

namespace A204644

/-- `4*(A000045(n+4)-1)` -/
def P4553410760108730393.Spec : Prop :=
  ∀ n, P4553410760108730393.a n = A204644 (n + 1)

end A204644

/-! ## A204644.P13365849912621956199

`4*(∑[A000045(n+2)]+1)`
-/

namespace A204644.P13365849912621956199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A204644.P13365849912621956199

namespace A204644

/-- `4*(∑[A000045(n+2)]+1)` -/
def P13365849912621956199.Spec : Prop :=
  ∀ n, P13365849912621956199.a n = A204644 (n + 1)

end A204644

/-!
# A204645: Number of (n+1) X 3 0..1 arrays with column and row pair sums b(i,j)=a(i,j)+a(i,j-1) and c(i,j)=a(i,j)+a(i-1,j) nondecreasing in column and row directions, respectively.

The programs for A204645, the canonical program `A204645.P16420233068061579277` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A204645 has offset 1).

The definition of A204645 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A204645.P16420233068061579277

`4*a(n-1)-5*a(n-2)+5*a(n-4)-4*a(n-5)+a(n-6)` with `a(0)=16, a(1)=32, a(2)=56, a(3)=90, a(4)=137, a(5)=200`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A204645

/-- `4*a(n-1)-5*a(n-2)+5*a(n-4)-4*a(n-5)+a(n-6)` -/
def P16420233068061579277.Spec : Prop :=
  ∀ n, P16420233068061579277.a n = A204645 (n + 1)

theorem P16420233068061579277.correct : P16420233068061579277.Spec := by
  intro n
  simp only [A204645, Nat.add_sub_cancel]

end A204645

/-! ## A204645.P3530705283571371925

`A001752(n)+A000217(2*n+5)`
-/

namespace A204645.P3530705283571371925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001752 n + A000217 (2 * n + 5)

end

end A204645.P3530705283571371925

namespace A204645

/-- `A001752(n)+A000217(2*n+5)` -/
def P3530705283571371925.Spec : Prop :=
  ∀ n, P3530705283571371925.a n = A204645 (n + 1)

end A204645

/-! ## A204645.P12641177879213501465

`A000217(2*n+5)+∑[A002623(n)]`
-/

namespace A204645.P12641177879213501465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002623 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (2 * n + 5) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A204645.P12641177879213501465

namespace A204645

/-- `A000217(2*n+5)+∑[A002623(n)]` -/
def P12641177879213501465.Spec : Prop :=
  ∀ n, P12641177879213501465.a n = A204645 (n + 1)

end A204645

/-! ## A204645.P16523704872787337972

`A001752(n)+A000384(n+3)`
-/

namespace A204645.P16523704872787337972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001752 n + A000384 (n + 3)

end

end A204645.P16523704872787337972

namespace A204645

/-- `A001752(n)+A000384(n+3)` -/
def P16523704872787337972.Spec : Prop :=
  ∀ n, P16523704872787337972.a n = A204645 (n + 1)

end A204645

/-! ## A204645.P7915627463857550116

`A000384(n+3)+∑[A002623(n)]`
-/

namespace A204645.P7915627463857550116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002623 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000384 (n + 3) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A204645.P7915627463857550116

namespace A204645

/-- `A000384(n+3)+∑[A002623(n)]` -/
def P7915627463857550116.Spec : Prop :=
  ∀ n, P7915627463857550116.a n = A204645 (n + 1)

end A204645

/-! ## A204645.P11243882120549266563

`A001752(n)+Δ[A002412(n+2)]`
-/

namespace A204645.P11243882120549266563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002412 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001752 n + (f1 (n + 1) - f1 n)

end

end A204645.P11243882120549266563

namespace A204645

/-- `A001752(n)+Δ[A002412(n+2)]` -/
def P11243882120549266563.Spec : Prop :=
  ∀ n, P11243882120549266563.a n = A204645 (n + 1)

end A204645

/-! ## A204645.P14155894640138874570

`A000384(n+3)+∑[∑[A002620(n+2)]]`
-/

namespace A204645.P14155894640138874570
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000384 (n + 3) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A204645.P14155894640138874570

namespace A204645

/-- `A000384(n+3)+∑[∑[A002620(n+2)]]` -/
def P14155894640138874570.Spec : Prop :=
  ∀ n, P14155894640138874570.a n = A204645 (n + 1)

end A204645

/-! ## A204645.P11563238798801874081

`A001752(n)+Δ[A002623(2*(n+1))]`
-/

namespace A204645.P11563238798801874081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002623 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001752 n + (f1 (n + 1) - f1 n)

end

end A204645.P11563238798801874081

namespace A204645

/-- `A001752(n)+Δ[A002623(2*(n+1))]` -/
def P11563238798801874081.Spec : Prop :=
  ∀ n, P11563238798801874081.a n = A204645 (n + 1)

end A204645

/-! ## A204645.P5454790898558642329

`Δ[A002623(2*(n+1))]+∑[A002623(n)]`
-/

namespace A204645.P5454790898558642329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002623 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002623 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + ∑ j ∈ Finset.range (n + 1), f2 j

end

end A204645.P5454790898558642329

namespace A204645

/-- `Δ[A002623(2*(n+1))]+∑[A002623(n)]` -/
def P5454790898558642329.Spec : Prop :=
  ∀ n, P5454790898558642329.a n = A204645 (n + 1)

end A204645

/-! ## A204645.P7654560357823870479

`A161680(A005843(n+3))+A001752(n)`
-/

namespace A204645.P7654560357823870479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 (A005843 (n + 3)).toNat + A001752 n

end

end A204645.P7654560357823870479

namespace A204645

/-- `A161680(A005843(n+3))+A001752(n)` -/
def P7654560357823870479.Spec : Prop :=
  ∀ n, P7654560357823870479.a n = A204645 (n + 1)

end A204645

/-! ## A204645.P9797639328316968496

`A204651(∑[n+1]+2)`
-/

namespace A204645.P9797639328316968496
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204651 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A204645.P9797639328316968496

namespace A204645

/-- `A204651(∑[n+1]+2)` -/
def P9797639328316968496.Spec : Prop :=
  ∀ n, P9797639328316968496.a n = A204645 (n + 1)

end A204645

/-! ## A204645.P2083243725742808760

`lcm(A204651(A055998(n)+2), A343785(n+1))`
-/

namespace A204645.P2083243725742808760
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A204651 (A055998 n + 2).toNat) (A343785 (n + 1))

end

end A204645.P2083243725742808760

namespace A204645

/-- `lcm(A204651(A055998(n)+2), A343785(n+1))` -/
def P2083243725742808760.Spec : Prop :=
  ∀ n, (P2083243725742808760.a n : ℤ) = A204645 (n + 1)

end A204645

/-!
# A204646: Number of (n+1) X 4 0..1 arrays with column and row pair sums b(i,j)=a(i,j)+a(i,j-1) and c(i,j)=a(i,j)+a(i-1,j) nondecreasing in column and row directions, respectively.

The programs for A204646, the canonical program `A204646.P9134910995337132206` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A204646 has offset 1).

The definition of A204646 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A204646.P9134910995337132206

`4*a(n-1)-5*a(n-2)+5*a(n-4)-4*a(n-5)+a(n-6)` with `a(0)=28, a(1)=56, a(2)=104, a(3)=178, a(4)=284, a(5)=434, a(6)=637`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A204646

/-- `4*a(n-1)-5*a(n-2)+5*a(n-4)-4*a(n-5)+a(n-6)` -/
def P9134910995337132206.Spec : Prop :=
  ∀ n, P9134910995337132206.a n = A204646 (n + 1)

theorem P9134910995337132206.correct : P9134910995337132206.Spec := by
  intro n
  simp only [A204646, Nat.add_sub_cancel]

end A204646

/-! ## A204646.P347431621243820762

`A204651(A167614(n+1))`
-/

namespace A204646.P347431621243820762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204651 (A167614 (n + 1)).toNat

end

end A204646.P347431621243820762

namespace A204646

/-- `A204651(A167614(n+1))` -/
def P347431621243820762.Spec : Prop :=
  ∀ n, P347431621243820762.a n = A204646 (n + 1)

end A204646

/-! ## A204646.P6742670224068311812

`A204651(A055998(n)+6)`
-/

namespace A204646.P6742670224068311812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204651 (A055998 n + 6).toNat

end

end A204646.P6742670224068311812

namespace A204646

/-- `A204651(A055998(n)+6)` -/
def P6742670224068311812.Spec : Prop :=
  ∀ n, P6742670224068311812.a n = A204646 (n + 1)

end A204646

/-! ## A204646.P14017885763104395990

`A204651(A046691(n)+7)`
-/

namespace A204646.P14017885763104395990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204651 (A046691 n + 7).toNat

end

end A204646.P14017885763104395990

namespace A204646

/-- `A204651(A046691(n)+7)` -/
def P14017885763104395990.Spec : Prop :=
  ∀ n, P14017885763104395990.a n = A204646 (n + 1)

end A204646

/-! ## A204646.P9696838516012451851

`A204651(A167499(n)+n)`
-/

namespace A204646.P9696838516012451851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204651 (A167499 n + (n : ℤ)).toNat

end

end A204646.P9696838516012451851

namespace A204646

/-- `A204651(A167499(n)+n)` -/
def P9696838516012451851.Spec : Prop :=
  ∀ n, P9696838516012451851.a n = A204646 (n + 1)

end A204646

/-! ## A204646.P3474894504622362779

`A204651(A034856(n+1)+5)`
-/

namespace A204646.P3474894504622362779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204651 (A034856 (n + 1) + 5).toNat

end

end A204646.P3474894504622362779

namespace A204646

/-- `A204651(A034856(n+1)+5)` -/
def P3474894504622362779.Spec : Prop :=
  ∀ n, P3474894504622362779.a n = A204646 (n + 1)

end A204646

/-! ## A204646.P8673040731570700107

`A204651(∑[n+3]+1)`
-/

namespace A204646.P8673040731570700107
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204651 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A204646.P8673040731570700107

namespace A204646

/-- `A204651(∑[n+3]+1)` -/
def P8673040731570700107.Spec : Prop :=
  ∀ n, P8673040731570700107.a n = A204646 (n + 1)

end A204646

/-!
# A204647: Number of (n+1) X 5 0..1 arrays with column and row pair sums b(i,j)=a(i,j)+a(i,j-1) and c(i,j)=a(i,j)+a(i-1,j) nondecreasing in column and row directions, respectively.

The programs for A204647, there is no canonical definition to state claims against.
-/

/-! ## A204647.P8710269510158196652

`A204651(A052905(n)+9)`
-/

namespace A204647.P8710269510158196652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204651 (A052905 n + 9).toNat

end

end A204647.P8710269510158196652

/-! ## A204647.P7872179194234600406

`A204651(A055999(n)+10)`
-/

namespace A204647.P7872179194234600406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204651 (A055999 n + 10).toNat

end

end A204647.P7872179194234600406

/-! ## A204647.P11344427505015765437

`A204651(A167614(n+2)+1)`
-/

namespace A204647.P11344427505015765437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204651 (A167614 (n + 2) + 1).toNat

end

end A204647.P11344427505015765437

/-! ## A204647.P16658678373798219883

`A204651(A166136(n+2)-2)`
-/

namespace A204647.P16658678373798219883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204651 (A166136 (n + 2) - 2).toNat

end

end A204647.P16658678373798219883

/-! ## A204647.P3007268561876317389

`A204651(A166136(n+1)+1+n)`
-/

namespace A204647.P3007268561876317389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204651 (A166136 (n + 1) + 1 + (n : ℤ)).toNat

end

end A204647.P3007268561876317389

/-! ## A204647.P7109213139359851800

`A204651(Δ[A008778(n)]+6)%A204648(n+1)`
-/

namespace A204647.P7109213139359851800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A204651 (f1 (n + 1) - f1 n + 6).toNat) (A204648 (n + 1))

end

end A204647.P7109213139359851800

/-! ## A204647.P4823957856349563812

`A204651(∑[n+4]+3)`
-/

namespace A204647.P4823957856349563812
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204651 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A204647.P4823957856349563812

/-!
# A204648: Number of (n+1) X 6 0..1 arrays with column and row pair sums b(i,j)=a(i,j)+a(i,j-1) and c(i,j)=a(i,j)+a(i-1,j) nondecreasing in column and row directions, respectively.

The programs for A204648, there is no canonical definition to state claims against.
-/

/-! ## A204648.P339782649050529562

`A204651(∑[n+4]+11)`
-/

namespace A204648.P339782649050529562
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204651 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A204648.P339782649050529562

/-! ## A204648.P2972342514147932107

`A204651(A167499(n+3))%A204649(n+1)`
-/

namespace A204648.P2972342514147932107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A204651 (A167499 (n + 3)).toNat) (A204649 (n + 1))

end

end A204648.P2972342514147932107

/-! ## A204648.P10500135680510242325

`A204651(A000217(n+4)+5)%A197711(n+1)`
-/

namespace A204648.P10500135680510242325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A204651 (A000217 (n + 4) + 5).toNat) (A197711 (n + 1))

end

end A204648.P10500135680510242325

/-! ## A204648.P4351298845695634857

`A087960(A002262(n))²*A204651(A167499(n+3))`
-/

namespace A204648.P4351298845695634857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087960 (A002262 n).toNat ^ 2 * A204651 (A167499 (n + 3)).toNat

end

end A204648.P4351298845695634857

/-! ## A204648.P17874943425233750253

`lcm(A204651(A055998(n+3)-1), A343785(n+1))`
-/

namespace A204648.P17874943425233750253
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A204651 (A055998 (n + 3) - 1).toNat) (A343785 (n + 1))

end

end A204648.P17874943425233750253

/-!
# A204649: Number of (n+1) X 7 0..1 arrays with column and row pair sums b(i,j)=a(i,j)+a(i,j-1) and c(i,j)=a(i,j)+a(i-1,j) nondecreasing in column and row directions, respectively.

The programs for A204649, there is no canonical definition to state claims against.
-/

/-! ## A204649.P2796861740958653454

`A204651(A166136(n+4))`
-/

namespace A204649.P2796861740958653454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204651 (A166136 (n + 4)).toNat

end

end A204649.P2796861740958653454

/-! ## A204649.P8668076957566679599

`char[A130981(n)]*A204651(A167499(n+4)+1)`
-/

namespace A204649.P8668076957566679599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130981 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A204651 (A167499 (n + 4) + 1).toNat

end

end A204649.P8668076957566679599

/-! ## A204649.P14968012704196579313

`A204651(A167499(n+4)+1)%A204650(n+1)`
-/

namespace A204649.P14968012704196579313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A204651 (A167499 (n + 4) + 1).toNat) (A204650 (n + 1))

end

end A204649.P14968012704196579313

/-! ## A204649.P30501658255520519

`A204651(A167499(n+4)+1)+char[A047986(n+1)]`
-/

namespace A204649.P30501658255520519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047986 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204651 (A167499 (n + 4) + 1).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A204649.P30501658255520519

/-! ## A204649.P17035144168343471288

`A204651(A167499(n+4)+1)+char[A047987(n+1)]`
-/

namespace A204649.P17035144168343471288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047987 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204651 (A167499 (n + 4) + 1).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A204649.P17035144168343471288

/-! ## A204649.P5592528402754873208

`A204651(A167499(n+4)+1)+A008683(4*(n+1))`
-/

namespace A204649.P5592528402754873208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204651 (A167499 (n + 4) + 1).toNat + A008683 (4 * (n + 1))

end

end A204649.P5592528402754873208

/-! ## A204649.P1769000089397200517

`A204651(∑[n+6]+10)`
-/

namespace A204649.P1769000089397200517
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204651 (∑ j ∈ Finset.range (n + 1), f1 j + 10)

end

end A204649.P1769000089397200517

/-!
# A204650: Number of (n+1) X 8 0..1 arrays with column and row pair sums b(i,j)=a(i,j)+a(i,j-1) and c(i,j)=a(i,j)+a(i-1,j) nondecreasing in column and row directions, respectively.

The programs for A204650, there is no canonical definition to state claims against.
-/

/-! ## A204650.P11229435309692287232

`A204651(A167499(n+5)+2)`
-/

namespace A204650.P11229435309692287232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204651 (A167499 (n + 5) + 2).toNat

end

end A204650.P11229435309692287232

/-! ## A204650.P13799213518914124820

`A204651(A000124(n+6)+6)`
-/

namespace A204650.P13799213518914124820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204651 (A000124 (n + 6) + 6).toNat

end

end A204650.P13799213518914124820

/-! ## A204650.P8662490105708380462

`A204651(A000217(n+6)+7)`
-/

namespace A204650.P8662490105708380462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204651 (A000217 (n + 6) + 7).toNat

end

end A204650.P8662490105708380462

/-! ## A204650.P44819438831485553

`A204651(A374008(n+1))`
-/

namespace A204650.P44819438831485553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204651 (A374008 (n + 1)).toNat

end

end A204650.P44819438831485553

/-! ## A204650.P15486951607979243996

`A204651(A055999(n+4))`
-/

namespace A204650.P15486951607979243996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204651 (A055999 (n + 4)).toNat

end

end A204650.P15486951607979243996

/-! ## A204650.P8720455533402382342

`A204651(A055998(n+4)+n+4)`
-/

namespace A204650.P8720455533402382342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204651 (A055998 (n + 4) + (n + 4 : ℤ)).toNat

end

end A204650.P8720455533402382342

/-! ## A204650.P5759966480401089407

`A204651(A103517(n+3)+A000096(n+4))`
-/

namespace A204650.P5759966480401089407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204651 (A103517 (n + 3) + A000096 (n + 4)).toNat

end

end A204650.P5759966480401089407

/-!
# A204651: T(n,k)=Number of (n+1)X(k+1) 0..1 arrays with column and row pair sums b(i,j)=a(i,j)+a(i,j-1) and c(i,j)=a(i,j)+a(i-1,j) nondecreasing in column and row directions, respectively.

The programs for A204651, there is no canonical definition to state claims against.
-/

/-! ## A204651.P13927263321721285763

`A355432(A207535(n+1))+A224550(n+1)`
-/

namespace A204651.P13927263321721285763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355432 (A207535 (n + 1)).toNat + A224550 (n + 1)

end

end A204651.P13927263321721285763

/-! ## A204651.P4963485761767287599

`A326683(A281139(n+1))+A224550(n+1)`
-/

namespace A204651.P4963485761767287599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326683 (A281139 (n + 1)).toNat + A224550 (n + 1)

end

end A204651.P4963485761767287599

/-!
# A204652: Number of (n+2)X3 0..3 arrays with every 3x3 subblock having three equal elements in a row horizontally, vertically, diagonally or antidiagonally, and new values 0..3 introduced in row major order.

The programs for A204652, there is no canonical definition to state claims against.
-/

/-! ## A204652.P17519366930484939271

`A204655(∑[n]+1)`
-/

namespace A204652.P17519366930484939271
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204655 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A204652.P17519366930484939271

/-! ## A204652.P182654171889582074

`record[A010054(n)*A204655(n+1)]`
-/

namespace A204652.P182654171889582074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A204655 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A204652.P182654171889582074

/-! ## A204652.P9683012576937796818

`record[A204655(n+1)/A015118(n)]`
-/

namespace A204652.P9683012576937796818
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A204655 (n + 1) : ℚ) / (A015118 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A204652.P9683012576937796818

/-!
# A204653: Number of (n+2)X4 0..3 arrays with every 3x3 subblock having three equal elements in a row horizontally, vertically, diagonally or antidiagonally, and new values 0..3 introduced in row major order.

The programs for A204653, there is no canonical definition to state claims against.
-/

/-! ## A204653.P13947203151524692768

`A204655(∑[n+1]+2)`
-/

namespace A204653.P13947203151524692768
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204655 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A204653.P13947203151524692768

/-! ## A204653.P12812686254142099514

`record[A204655(A136417(n))]`
-/

namespace A204653.P12812686254142099514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204655 (A136417 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A204653.P12812686254142099514

/-!
# A204656: Numbers n such that n!10+1 is prime.

The programs for A204656, there is no canonical definition to state claims against.
-/

/-! ## A204656.P13545802062678029580

`lt[A342532(A045831(n)), A082850(2*(n+1))]`
-/

namespace A204656.P13545802062678029580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342532 (A045831 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082850 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A204656.P13545802062678029580

/-! ## A204656.P14938921747618638772

`record[A070824(A120171(n+1))]`
-/

namespace A204656.P14938921747618638772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070824 (A120171 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A204656.P14938921747618638772

/-! ## A204656.P15608132199127252433

`A305117(eq[1, A248189(n+1)])`
-/

namespace A204656.P15608132199127252433
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248189 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305117 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A204656.P15608132199127252433

/-! ## A204656.P4159082379511739286

`lt[A281372(n), A127817(n+4)]`
-/

namespace A204656.P4159082379511739286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281372 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127817 (n + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A204656.P4159082379511739286

/-! ## A204656.P4221573879491785669

`eq[A016729(n+1), A160903(n+1)]`
-/

namespace A204656.P4221573879491785669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016729 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160903 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A204656.P4221573879491785669

/-!
# A204657: Numbers n such that n!10 + 2 is prime.

The programs for A204657, there is no canonical definition to state claims against.
-/

/-! ## A204657.P7678380507834108589

`lt[lt[A286602(n), 9], A278222(n+2)]`
-/

namespace A204657.P7678380507834108589
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286602 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278222 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f4 j) n

end

end A204657.P7678380507834108589

/-! ## A204657.P6552960029598813553

`lt[lt[A336934(n+4), 16], A278222(n+2)]`
-/

namespace A204657.P6552960029598813553
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336934 (n + 4)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278222 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f4 j) n

end

end A204657.P6552960029598813553

/-! ## A204657.P13013993046940483376

`eq[A018783(3*n+4)+1, A333766(2*(n+2))]`
-/

namespace A204657.P13013993046940483376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018783 (3 * n + 4) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333766 (2 * (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A204657.P13013993046940483376

/-! ## A204657.P10903408961919321748

`lt[A131996(A027379(n)), A278222(n+2)]`
-/

namespace A204657.P10903408961919321748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131996 (A027379 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278222 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A204657.P10903408961919321748

/-! ## A204657.P8380174878471491744

`lt[A000292(n), A005153(A286252(n+2)+1)]`
-/

namespace A204657.P8380174878471491744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005153 (A286252 (n + 2) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A204657.P8380174878471491744

/-!
# A204658: Numbers n such that n!10-1 is prime.

The programs for A204658, there is no canonical definition to state claims against.
-/

/-! ## A204658.P5810430024335391143

`record[A000005(A328325(3*(n+1)))]`
-/

namespace A204658.P5810430024335391143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A328325 (3 * (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A204658.P5810430024335391143

/-!
# A204660: Numbers n such that n!9+1 is prime.

The programs for A204660, there is no canonical definition to state claims against.
-/

/-! ## A204660.P15259945486390779262

`eq[1, A001222(A114806(n)+1)]`
-/

namespace A204660.P15259945486390779262
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A114806 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A204660.P15259945486390779262

/-!
# A204661: Numbers n such that n!8+1 is prime (for n!8 see A114800).

The programs for A204661, there is no canonical definition to state claims against.
-/

/-! ## A204661.P7482423105033861720

`eq[A220794(A326567(n+2)), A341866(n+1)]`
-/

namespace A204661.P7482423105033861720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220794 (A326567 (n + 2)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341866 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A204661.P7482423105033861720

/-! ## A204661.P3044902373932795999

`lt[A328097(n+1), A328049(A328077(n+1))]`
-/

namespace A204661.P3044902373932795999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328097 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328049 (A328077 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A204661.P3044902373932795999

/-! ## A204661.P4339932033675470763

`lt[A328099(n+1), A328049(A328077(n+1))]`
-/

namespace A204661.P4339932033675470763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328099 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328049 (A328077 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A204661.P4339932033675470763

/-! ## A204661.P10094353161292198376

`lt[A341866(n+1), A328049(A328077(n+1))]`
-/

namespace A204661.P10094353161292198376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341866 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328049 (A328077 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A204661.P10094353161292198376

/-!
# A204662: Numbers n such that n!8-1 is prime.

The programs for A204662, there is no canonical definition to state claims against.
-/

/-! ## A204662.P3349772839173098920

`record[A031131(∑[A238781(n+1)])]`
-/

namespace A204662.P3349772839173098920
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238781 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031131 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A204662.P3349772839173098920

/-!
# A204663: Numbers n such that n!8 + 2 is prime.

The programs for A204663, there is no canonical definition to state claims against.
-/

/-! ## A204663.P1699903870132489384

`eq[A095874(A231655(n)), A341945(n+2)]`
-/

namespace A204663.P1699903870132489384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095874 (A231655 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341945 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A204663.P1699903870132489384

/-! ## A204663.P3297724122236809122

`eq[A004198(A114706(n+1)), A142150(n)]`
-/

namespace A204663.P3297724122236809122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004198 (A114706 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A204663.P3297724122236809122

/-! ## A204663.P8172025130041773493

`eq[A057237(n+1), A276729(A105556(n))]`
-/

namespace A204663.P8172025130041773493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057237 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276729 (A105556 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A204663.P8172025130041773493

/-! ## A204663.P2197865473102307753

`eq[A142150(n), A227761(A117131(n+1))]`
-/

namespace A204663.P2197865473102307753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227761 (A117131 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A204663.P2197865473102307753

/-! ## A204663.P12488553586324580789

`eq[A001222(n+2), A129449(A230899(n+1))]`
-/

namespace A204663.P12488553586324580789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129449 (A230899 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A204663.P12488553586324580789

/-!
# A204664: Numbers n such that n!8-2 is prime.

The programs for A204664, there is no canonical definition to state claims against.
-/

/-! ## A204664.P10517610953310023702

`∑[A102251(A057153(n+1)+2)]/2`
-/

namespace A204664.P10517610953310023702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102251 (A057153 (n + 1) + 2).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A204664.P10517610953310023702

/-! ## A204664.P6077271346167520089

`A115232(A071274(n+1))-A084290(n+1)`
-/

namespace A204664.P6077271346167520089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115232 (A071274 (n + 1)).toNat - A084290 (n + 1)

end

end A204664.P6077271346167520089

/-! ## A204664.P14362496552803773464

`A114637(lt[A163118(3*n+5), A333660(3*n+2)])`
-/

namespace A204664.P14362496552803773464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163118 (3 * n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333660 (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114637 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A204664.P14362496552803773464

/-!
# A204668: Primes p such that q-p = 58, where q is the next prime after p.

The programs for A204668, there is no canonical definition to state claims against.
-/

/-! ## A204668.P10899451718828173283

`A231609(eq[28, A193592(n)])`
-/

namespace A204668.P10899451718828173283
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  28

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231609 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A204668.P10899451718828173283

/-!
# A204670: Primes p such that q-p = 64, where q is the next prime after p.

The programs for A204670, there is no canonical definition to state claims against.
-/

/-! ## A204670.P5461921514215175677

`A174350(eq[33, A131818(n+1)])`
-/

namespace A204670.P5461921514215175677
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  33

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174350 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A204670.P5461921514215175677

/-!
# A204671: a(n) = n^n (mod 6).

The programs for A204671, the canonical program `A204671.P4052062504924253705` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A204671 has offset 0).

The definition of A204671 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A204671.P4052062504924253705

`a(n-6)` with `a(0)=1, a(1)=1, a(2)=4, a(3)=3, a(4)=4, a(5)=5, a(6)=0`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A204671

/-- `a(n-6)` -/
def P4052062504924253705.Spec : Prop :=
  ∀ n, (P4052062504924253705.a n : ℤ) = A204671 n

theorem P4052062504924253705.correct : P4052062504924253705.Spec := by
  intro n
  simp only [A204671]

end A204671

/-!
# A204674: a(n) = 4*n^3 + 5*n^2 + 2*n + 1.

The programs for A204674, the canonical program `A204674.P410369923834642929` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A204674 has offset 0).

The definition of A204674 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*n^3+5*n²+2*n+1` (program `A204674.P410369923834642929`, by `A204674.P410369923834642929.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A204674.P12737270967156900542

`(4*n²+n+1)*(n+1)`
-/

namespace A204674.P12737270967156900542
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (4 * n ^ 2 + (n + 1)) * (n + 1)

end

end A204674.P12737270967156900542

namespace A204674

/-- `(4*n²+n+1)*(n+1)` -/
def P12737270967156900542.Spec : Prop :=
  ∀ n, (P12737270967156900542.a n : ℤ) = A204674 n

theorem P12737270967156900542.correct : P12737270967156900542.Spec := by
  intro n
  simp only [A204674, Nat.add_sub_cancel, A204674.P12737270967156900542.a, A204674.P410369923834642929.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A204674

/-! ## A204674.P410369923834642929

`4*n^3+5*n²+2*n+1`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A204674

/-- `4*n^3+5*n²+2*n+1` -/
def P410369923834642929.Spec : Prop :=
  ∀ n, (P410369923834642929.a n : ℤ) = A204674 n

theorem P410369923834642929.correct : P410369923834642929.Spec := by
  intro n
  simp only [A204674]

end A204674

/-! ## A204674.P2180679495495887922

`∑[∑[a(n-1)+24]]` with `a(0)=1, a(1)=10`
-/

namespace A204674.P2180679495495887922
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 10] fun n f2 =>
  f2 (n - 1) + 24

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A204674.P2180679495495887922

namespace A204674

/-- `∑[∑[a(n-1)+24]]` -/
def P2180679495495887922.Spec : Prop :=
  ∀ n, (P2180679495495887922.a n : ℤ) = A204674 n

end A204674

/-! ## A204674.P17780986807070634679

`∑[A126964(n)+1]`
-/

namespace A204674.P17780986807070634679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126964 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A204674.P17780986807070634679

namespace A204674

/-- `∑[A126964(n)+1]` -/
def P17780986807070634679.Spec : Prop :=
  ∀ n, P17780986807070634679.a n = A204674 n

end A204674

/-! ## A204674.P12963207838348088797

`∑[A185918(n)+2]`
-/

namespace A204674.P12963207838348088797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185918 n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A204674.P12963207838348088797

namespace A204674

/-- `∑[A185918(n)+2]` -/
def P12963207838348088797.Spec : Prop :=
  ∀ n, P12963207838348088797.a n = A204674 n

end A204674

/-! ## A204674.P1165452518435135385

`(A191593(n)+2)/3`
-/

namespace A204674.P1165452518435135385
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A191593 n + 2 : ℚ) / 3

end

end A204674.P1165452518435135385

namespace A204674

/-- `(A191593(n)+2)/3` -/
def P1165452518435135385.Spec : Prop :=
  ∀ n, P1165452518435135385.a n = (A204674 n : ℚ)

end A204674

/-! ## A204674.P14463784535220984905

`(A280059(n)+3)/4`
-/

namespace A204674.P14463784535220984905
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A280059 n + 3 : ℚ) / 4

end

end A204674.P14463784535220984905

namespace A204674

/-- `(A280059(n)+3)/4` -/
def P14463784535220984905.Spec : Prop :=
  ∀ n, P14463784535220984905.a n = (A204674 n : ℚ)

end A204674

/-! ## A204674.P15656356271501828511

`∑[A062783(n)+n+1]`
-/

namespace A204674.P15656356271501828511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062783 n + (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A204674.P15656356271501828511

namespace A204674

/-- `∑[A062783(n)+n+1]` -/
def P15656356271501828511.Spec : Prop :=
  ∀ n, P15656356271501828511.a n = A204674 n

end A204674

/-! ## A204674.P9930142224636295226

`∑[A244802(n+1)+n]`
-/

namespace A204674.P9930142224636295226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244802 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A204674.P9930142224636295226

namespace A204674

/-- `∑[A244802(n+1)+n]` -/
def P9930142224636295226.Spec : Prop :=
  ∀ n, P9930142224636295226.a n = A204674 n

end A204674

/-! ## A204674.P4432619452406817247

`∑[A244803(n+1)-n]`
-/

namespace A204674.P4432619452406817247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244803 (n + 1) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A204674.P4432619452406817247

namespace A204674

/-- `∑[A244803(n+1)-n]` -/
def P4432619452406817247.Spec : Prop :=
  ∀ n, P4432619452406817247.a n = A204674 n

end A204674

/-!
# A204675: a(n) = 16*n^2 + 2*n + 1.

The programs for A204675, the canonical program `A204675.P17697239893123849999` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A204675 has offset 0).

The definition of A204675 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `16*n²+2*n+1` (program `A204675.P17697239893123849999`, by `A204675.P17697239893123849999.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A204675.P17697239893123849999

`16*n²+2*n+1`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A204675

/-- `16*n²+2*n+1` -/
def P17697239893123849999.Spec : Prop :=
  ∀ n, (P17697239893123849999.a n : ℤ) = A204675 n

theorem P17697239893123849999.correct : P17697239893123849999.Spec := by
  intro n
  simp only [A204675]

end A204675

/-! ## A204675.P16593302890510609972

`∑[a(n-1)+32]` with `a(0)=1, a(1)=18`
-/

namespace A204675.P16593302890510609972
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 18] fun n f1 =>
  f1 (n - 1) + 32

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A204675.P16593302890510609972

namespace A204675

/-- `∑[a(n-1)+32]` -/
def P16593302890510609972.Spec : Prop :=
  ∀ n, (P16593302890510609972.a n : ℤ) = A204675 n

end A204675

/-! ## A204675.P14580545252663226801

`abs(A143854(n+1)-n)`
-/

namespace A204675.P14580545252663226801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A143854 (n + 1) - (n : ℤ)|

end

end A204675.P14580545252663226801

namespace A204675

/-- `abs(A143854(n+1)-n)` -/
def P14580545252663226801.Spec : Prop :=
  ∀ n, P14580545252663226801.a n = A204675 n

end A204675

/-! ## A204675.P4274281578903575368

`(A188135(2*n)+1)/2`
-/

namespace A204675.P4274281578903575368
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A188135 (2 * n) + 1 : ℚ) / 2

end

end A204675.P4274281578903575368

namespace A204675

/-- `(A188135(2*n)+1)/2` -/
def P4274281578903575368.Spec : Prop :=
  ∀ n, P4274281578903575368.a n = (A204675 n : ℚ)

end A204675

/-! ## A204675.P16375719694443889803

`record[Δ[n*A019427(n+1)]]`
-/

namespace A204675.P16375719694443889803
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A019427 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A204675.P16375719694443889803

namespace A204675

/-- `record[Δ[n*A019427(n+1)]]` -/
def P16375719694443889803.Spec : Prop :=
  ∀ n, P16375719694443889803.a n = A204675 n

end A204675

/-! ## A204675.P18157057897086964973

`abs(∑[record[2*n*A010689(n)-1]+3]-1)`
-/

namespace A204675.P18157057897086964973
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((n : ℤ) * A010689 n) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j - 1|

end

end A204675.P18157057897086964973

namespace A204675

/-- `abs(∑[record[2*n*A010689(n)-1]+3]-1)` -/
def P18157057897086964973.Spec : Prop :=
  ∀ n, P18157057897086964973.a n = A204675 n

end A204675

/-! ## A204675.P12456912771440712981

`A054567(Δ[n²])`
-/

namespace A204675.P12456912771440712981
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054567 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A204675.P12456912771440712981

namespace A204675

/-- `A054567(Δ[n²])` -/
def P12456912771440712981.Spec : Prop :=
  ∀ n, P12456912771440712981.a n = A204675 n

end A204675

/-! ## A204675.P13234890917304837043

`A204674(2*n)/(2*n+1)`
-/

namespace A204675.P13234890917304837043
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A204674 (2 * n) : ℚ) / (2 * n + 1 : ℚ)

end

end A204675.P13234890917304837043

namespace A204675

/-- `A204674(2*n)/(2*n+1)` -/
def P13234890917304837043.Spec : Prop :=
  ∀ n, P13234890917304837043.a n = (A204675 n : ℚ)

end A204675

/-! ## A204675.P14470906495292231682

`A263511(4*n)`
-/

namespace A204675.P14470906495292231682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263511 (4 * n)

end

end A204675.P14470906495292231682

namespace A204675

/-- `A263511(4*n)` -/
def P14470906495292231682.Spec : Prop :=
  ∀ n, P14470906495292231682.a n = A204675 n

end A204675

/-! ## A204675.P6688349591312675499

`A266883(4*n)`
-/

namespace A204675.P6688349591312675499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266883 (4 * n)

end

end A204675.P6688349591312675499

namespace A204675

/-- `A266883(4*n)` -/
def P6688349591312675499.Spec : Prop :=
  ∀ n, P6688349591312675499.a n = A204675 n

end A204675

/-! ## A204675.P8377713779571277917

`A317186(4*n)`
-/

namespace A204675.P8377713779571277917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317186 (4 * n)

end

end A204675.P8377713779571277917

namespace A204675

/-- `A317186(4*n)` -/
def P8377713779571277917.Spec : Prop :=
  ∀ n, P8377713779571277917.a n = A204675 n

end A204675

/-! ## A204675.P13645667358061973666

`A039823(A022144(n))`
-/

namespace A204675.P13645667358061973666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039823 (A022144 n).toNat

end

end A204675.P13645667358061973666

namespace A204675

/-- `A039823(A022144(n))` -/
def P13645667358061973666.Spec : Prop :=
  ∀ n, P13645667358061973666.a n = A204675 n

end A204675

/-! ## A204675.P335470986210125947

`∑[A111284(A113127(2*n))]`
-/

namespace A204675.P335470986210125947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111284 (A113127 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A204675.P335470986210125947

namespace A204675

/-- `∑[A111284(A113127(2*n))]` -/
def P335470986210125947.Spec : Prop :=
  ∀ n, P335470986210125947.a n = A204675 n

end A204675

/-! ## A204675.P13519681842063795758

`∑[A111284(A161718(2*n))]`
-/

namespace A204675.P13519681842063795758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111284 (A161718 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A204675.P13519681842063795758

namespace A204675

/-- `∑[A111284(A161718(2*n))]` -/
def P13519681842063795758.Spec : Prop :=
  ∀ n, P13519681842063795758.a n = A204675 n

end A204675

/-! ## A204675.P15121120678792176435

`A373662(A008574(2*n))/2`
-/

namespace A204675.P15121120678792176435
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A373662 (A008574 (2 * n)).toNat : ℚ) / 2

end

end A204675.P15121120678792176435

namespace A204675

/-- `A373662(A008574(2*n))/2` -/
def P15121120678792176435.Spec : Prop :=
  ∀ n, P15121120678792176435.a n = (A204675 n : ℚ)

end A204675

/-! ## A204675.P2115761954427038267

`∑[A111284(A111284(2*n+1))]`
-/

namespace A204675.P2115761954427038267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111284 (A111284 (2 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A204675.P2115761954427038267

namespace A204675

/-- `∑[A111284(A111284(2*n+1))]` -/
def P2115761954427038267.Spec : Prop :=
  ∀ n, P2115761954427038267.a n = A204675 n

end A204675

/-! ## A204675.P13323583844312258298

`A089071(A016825(2*n))/2`
-/

namespace A204675.P13323583844312258298
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A089071 (A016825 (2 * n)).toNat : ℚ) / 2

end

end A204675.P13323583844312258298

namespace A204675

/-- `A089071(A016825(2*n))/2` -/
def P13323583844312258298.Spec : Prop :=
  ∀ n, P13323583844312258298.a n = (A204675 n : ℚ)

end A204675

/-!
# A204676: a(n) = n! * (prime(n+1) + prime(n)) / (prime(n+1) - prime(n)).

The programs for A204676, there is no canonical definition to state claims against.
-/

/-! ## A204676.P1904556676189534761

`∑[A048448(record[A332006(3*n+4)])]+3`
-/

namespace A204676.P1904556676189534761
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332006 (3 * n + 4)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048448 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 3

end

end A204676.P1904556676189534761

/-!
# A204677: Number of n X n 0..3 arrays with no occurrence of three equal elements in a row horizontally, vertically, diagonally or antidiagonally, and new values 0..3 introduced in row major order.

The programs for A204677, there is no canonical definition to state claims against.
-/

/-! ## A204677.P7369543906239593712

`A204685(∑[4*n]+1)`
-/

namespace A204677.P7369543906239593712
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204685 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A204677.P7369543906239593712

/-!
# A204678: Number of n X 1 0..3 arrays with no occurrence of three equal elements in a row horizontally, vertically, diagonally or antidiagonally, and new values 0..3 introduced in row major order.

The programs for A204678, the canonical program `A204678.P11976021100268320725` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A204678 has offset 1).

The definition of A204678 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 174 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A204678.P11976021100268320725

`4*a(n-1)+a(n-2)-6*a(n-3)-3*a(n-4)` with `a(0)=1, a(1)=2, a(2)=4, a(3)=12, a(4)=40, a(5)=143`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A204678

/-- `4*a(n-1)+a(n-2)-6*a(n-3)-3*a(n-4)` -/
def P11976021100268320725.Spec : Prop :=
  ∀ n, P11976021100268320725.a n = A204678 (n + 1)

theorem P11976021100268320725.correct : P11976021100268320725.Spec := by
  intro n
  simp only [A204678, Nat.add_sub_cancel]

end A204678

/-! ## A204678.P10995110333339559305

`A205161(∑[n]+1)`
-/

namespace A204678.P10995110333339559305
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205161 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A204678.P10995110333339559305

namespace A204678

/-- `A205161(∑[n]+1)` -/
def P10995110333339559305.Spec : Prop :=
  ∀ n, P10995110333339559305.a n = A204678 (n + 1)

end A204678

/-! ## A204678.P5652411893975588582

`A205310(∑[n]+1)`
-/

namespace A204678.P5652411893975588582
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205310 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A204678.P5652411893975588582

namespace A204678

/-- `A205310(∑[n]+1)` -/
def P5652411893975588582.Spec : Prop :=
  ∀ n, P5652411893975588582.a n = A204678 (n + 1)

end A204678

/-! ## A204678.P17517066753847142495

`A240629(∑[n]+1)`
-/

namespace A204678.P17517066753847142495
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240629 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A204678.P17517066753847142495

namespace A204678

/-- `A240629(∑[n]+1)` -/
def P17517066753847142495.Spec : Prop :=
  ∀ n, P17517066753847142495.a n = A204678 (n + 1)

end A204678

/-! ## A204678.P9859194053693546521

`record[gcd(A002262(n), A205310(n+1))]`
-/

namespace A204678.P9859194053693546521
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A205310 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A204678.P9859194053693546521

namespace A204678

/-- `record[gcd(A002262(n), A205310(n+1))]` -/
def P9859194053693546521.Spec : Prop :=
  ∀ n, (P9859194053693546521.a n : ℤ) = A204678 (n + 1)

end A204678

/-!
# A204679: Number of n X 2 0..3 arrays with no occurrence of three equal elements in a row horizontally, vertically, diagonally or antidiagonally, and new values 0..3 introduced in row major order.

The programs for A204679, there is no canonical definition to state claims against.
-/

/-! ## A204679.P5446576229649172717

`A205161(∑[n+1]+2)`
-/

namespace A204679.P5446576229649172717
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205161 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A204679.P5446576229649172717

/-! ## A204679.P2001305187750015423

`A205310(∑[n+1]+2)`
-/

namespace A204679.P2001305187750015423
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205310 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A204679.P2001305187750015423

/-! ## A204679.P9917319920283808889

`record[gcd(A002262(n), A205310(n+2))]`
-/

namespace A204679.P9917319920283808889
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A205310 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A204679.P9917319920283808889

/-! ## A204679.P734926979264918737

`A205310(A000096(n)+3)%A205316(n+1)`
-/

namespace A204679.P734926979264918737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A205310 (A000096 n + 3).toNat) (A205316 (n + 1))

end

end A204679.P734926979264918737

/-! ## A204679.P9499601916590484663

`A205310(A000096(n+1))+A000007(n+1)`
-/

namespace A204679.P9499601916590484663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205310 (A000096 (n + 1)).toNat + A000007 (n + 1)

end

end A204679.P9499601916590484663

/-!
# A204680: Number of nX3 0..3 arrays with no occurrence of three equal elements in a row horizontally, vertically, diagonally or antidiagonally, and new values 0..3 introduced in row major order.

The programs for A204680, there is no canonical definition to state claims against.
-/

/-! ## A204680.P15587028646607120655

`A204685(∑[n+2]+4)`
-/

namespace A204680.P15587028646607120655
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204685 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A204680.P15587028646607120655

/-! ## A204680.P5587627128946272412

`record[A103452(n)*A204685(n+4)]`
-/

namespace A204680.P5587627128946272412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103452 n * A204685 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A204680.P5587627128946272412

/-! ## A204680.P6221979930582781456

`record[A204685(n+4)^A167374(n)]`
-/

namespace A204680.P6221979930582781456
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A204685 (n + 4) : ℚ) ^ (A167374 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A204680.P6221979930582781456

/-! ## A204680.P16434365561648802638

`(n%2)!*A204685(A167614(n+1))`
-/

namespace A204680.P16434365561648802638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n % 2) : ℤ) * A204685 (A167614 (n + 1)).toNat

end

end A204680.P16434365561648802638

/-! ## A204680.P8525184477367533255

`A204685(A167614(n+1))+A025437(n)`
-/

namespace A204680.P8525184477367533255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204685 (A167614 (n + 1)).toNat + A025437 n

end

end A204680.P8525184477367533255

/-!
# A204681: Number of nX4 0..3 arrays with no occurrence of three equal elements in a row horizontally, vertically, diagonally or antidiagonally, and new values 0..3 introduced in row major order.

The programs for A204681, there is no canonical definition to state claims against.
-/

/-! ## A204681.P5611611873259571133

`A204685(∑[n+3]+7)`
-/

namespace A204681.P5611611873259571133
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204685 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A204681.P5611611873259571133

/-! ## A204681.P12770163359368239143

`A204685(A141214(n+1))+A025466(n)`
-/

namespace A204681.P12770163359368239143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204685 (A141214 (n + 1)).toNat + A025466 n

end

end A204681.P12770163359368239143

/-! ## A204681.P15690712351242739166

`A204685(A141214(n+1))+A137581(n)`
-/

namespace A204681.P15690712351242739166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204685 (A141214 (n + 1)).toNat + A137581 n

end

end A204681.P15690712351242739166

/-!
# A204682: Number of n X 5 0..3 arrays with no occurrence of three equal elements in a row horizontally, vertically, diagonally or antidiagonally, and new values 0..3 introduced in row major order.

The programs for A204682, there is no canonical definition to state claims against.
-/

/-! ## A204682.P15192305560830024977

`A204685(A374005(n+1))`
-/

namespace A204682.P15192305560830024977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204685 (A374005 (n + 1)).toNat

end

end A204682.P15192305560830024977

/-! ## A204682.P14090947287116098739

`A204685(A056000(n)+15)`
-/

namespace A204682.P14090947287116098739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204685 (A056000 n + 15).toNat

end

end A204682.P14090947287116098739

/-!
# A204683: Number of nX6 0..3 arrays with no occurrence of three equal elements in a row horizontally, vertically, diagonally or antidiagonally, and new values 0..3 introduced in row major order.

The programs for A204683, there is no canonical definition to state claims against.
-/

/-! ## A204683.P14829546898581817097

`A204685(∑[n+6]+10)`
-/

namespace A204683.P14829546898581817097
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204685 (∑ j ∈ Finset.range (n + 1), f1 j + 10)

end

end A204683.P14829546898581817097

/-!
# A204685: T(n,k)=Number of nXk 0..3 arrays with no occurrence of three equal elements in a row horizontally, vertically, diagonally or antidiagonally, and new values 0..3 introduced in row major order.

The programs for A204685, there is no canonical definition to state claims against.
-/

/-! ## A204685.P14410953414163556134

`A205161(A043317(n+1))`
-/

namespace A204685.P14410953414163556134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205161 (A043317 (n + 1)).toNat

end

end A204685.P14410953414163556134

/-! ## A204685.P11127670500267952611

`A205161(A044914(n+1))`
-/

namespace A204685.P11127670500267952611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205161 (A044914 (n + 1)).toNat

end

end A204685.P11127670500267952611

/-! ## A204685.P4031718072041377744

`A205161(A049872(n)+1)`
-/

namespace A204685.P4031718072041377744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205161 (A049872 n + 1).toNat

end

end A204685.P4031718072041377744

/-! ## A204685.P5418847811898556695

`A205310(A049872(n)+1)`
-/

namespace A204685.P5418847811898556695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205310 (A049872 n + 1).toNat

end

end A204685.P5418847811898556695

/-! ## A204685.P11941778274934073883

`A205161(A055648(n+1))`
-/

namespace A204685.P11941778274934073883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205161 (A055648 (n + 1)).toNat

end

end A204685.P11941778274934073883

/-!
# A204686: G.f.: A(x) = Sum_{n>=0} x^n * A(x)^A006068(n) where A006068 forms the inverse permutation of the binary Gray code numbers (A003188).

The programs for A204686, there is no canonical definition to state claims against.
-/

/-! ## A204686.P14428093282748880511

`A034887(A149993(n))`
-/

namespace A204686.P14428093282748880511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034887 (A149993 n).toNat

end

end A204686.P14428093282748880511

/-! ## A204686.P9713822526553406454

`A112325(A127632(n))`
-/

namespace A204686.P9713822526553406454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112325 (A127632 n).toNat

end

end A204686.P9713822526553406454

/-!
# A204687: a(n) = A204321(n)/4.

The programs for A204687, the canonical program `A204687.P14046039806429045827` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A204687 has offset 1).

The definition of A204687 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A204687.P14046039806429045827

`A204321(n+1)/4`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A204687

/-- `A204321(n+1)/4` -/
def P14046039806429045827.Spec : Prop :=
  ∀ n, P14046039806429045827.a n = (A204687 (n + 1) : ℚ)

end A204687

/-! ## A204687.P4037089935960232626

`C(4*a(n-1), 2)/2` with `a(0)=1`
-/

namespace A204687.P4037089935960232626
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (Nat.choose (SequenceMachineLib.roundAway (4 * a (n - 1))).toNat 2 : ℚ) / 2

end

end A204687.P4037089935960232626

namespace A204687

/-- `C(4*a(n-1), 2)/2` -/
def P4037089935960232626.Spec : Prop :=
  ∀ n, P4037089935960232626.a n = (A204687 (n + 1) : ℚ)

end A204687

/-! ## A204687.P9382267526578683546

`floor((1/4-2*a(n-1))²)` with `a(0)=1`
-/

namespace A204687.P9382267526578683546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊((1 : ℚ) / 4 - (2 * a (n - 1) : ℚ)) ^ 2⌋

end

end A204687.P9382267526578683546

namespace A204687

/-- `floor((1/4-2*a(n-1))²)` -/
def P9382267526578683546.Spec : Prop :=
  ∀ n, P9382267526578683546.a n = A204687 (n + 1)

end A204687

/-! ## A204687.P1501950188971021139

`(2*a(n-1))²-a(n-1)` with `a(0)=1`
-/

namespace A204687.P1501950188971021139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (2 * a (n - 1)) ^ 2 - a (n - 1)

end

end A204687.P1501950188971021139

namespace A204687

/-- `(2*a(n-1))²-a(n-1)` -/
def P1501950188971021139.Spec : Prop :=
  ∀ n, P1501950188971021139.a n = A204687 (n + 1)

end A204687

/-!
# A204688: a(n) = n^n (mod 3).

The programs for A204688, the canonical program `A204688.P6383956628504138900` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A204688 has offset 0).

The definition of A204688 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A204688.P6383956628504138900

`a(n-6)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=0, a(4)=1, a(5)=2, a(6)=0`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A204688

/-- `a(n-6)` -/
def P6383956628504138900.Spec : Prop :=
  ∀ n, (P6383956628504138900.a n : ℤ) = A204688 n

theorem P6383956628504138900.correct : P6383956628504138900.Spec := by
  intro n
  simp only [A204688]

end A204688

/-!
# A204689: a(n) = n^n (mod 4).

The programs for A204689, the canonical program `A204689.P5582448903579038771` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A204689 has offset 0).

The definition of A204689 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A204689.P5582448903579038771

`a(n-4)` with `a(0)=1, a(1)=1, a(2)=0, a(3)=3, a(4)=0`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A204689

/-- `a(n-4)` -/
def P5582448903579038771.Spec : Prop :=
  ∀ n, (P5582448903579038771.a n : ℤ) = A204689 n

theorem P5582448903579038771.correct : P5582448903579038771.Spec := by
  intro n
  simp only [A204689]

end A204689

/-!
# A204690: n^n (mod 5).

The programs for A204690, there is no canonical definition to state claims against.
-/

/-! ## A204690.P4353083328105735852

`A347671(n)%5`
-/

namespace A204690.P4353083328105735852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A347671 n) 5

end

end A204690.P4353083328105735852

/-!
# A204693: a(n) = n^n (mod 7).

The programs for A204693, the canonical program `A204693.P13506939711790664675` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A204693 has offset 0).

The definition of A204693 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 132 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A204693.P13506939711790664675

`((n%7)^n)%7`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A204693

/-- `((n%7)^n)%7` -/
def P13506939711790664675.Spec : Prop :=
  ∀ n, (P13506939711790664675.a n : ℤ) = A204693 n

theorem P13506939711790664675.correct : P13506939711790664675.Spec := by
  intro n
  simp only [A204693]

end A204693

/-!
# A204694: a(n) = n^n (mod 8).

The programs for A204694, the canonical program `A204694.P4962773171595922053` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A204694 has offset 0).

The definition of A204694 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A204694.P4962773171595922053

`n%(2*gcd(4, a(n-1)))` with `a(0)=1, a(1)=1, a(2)=4`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A204694

/-- `n%(2*gcd(4, a(n-1)))` -/
def P4962773171595922053.Spec : Prop :=
  ∀ n, (P4962773171595922053.a n : ℤ) = A204694 n

theorem P4962773171595922053.correct : P4962773171595922053.Spec := by
  intro n
  simp only [A204694]

end A204694

/-!
# A204695: a(n) = n^n (mod 9).

The programs for A204695, the canonical program `A204695.P11128389482933440744` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A204695 has offset 0).

The definition of A204695 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A204695.P11128389482933440744

`A189510(n)%9`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A204695

/-- `A189510(n)%9` -/
def P11128389482933440744.Spec : Prop :=
  ∀ n, P11128389482933440744.a n = A204695 n

theorem P11128389482933440744.correct : P11128389482933440744.Spec := by
  intro n
  simp only [A204695]

end A204695

/-!
# A204696: G.f.: (32*x^7/(1-2*x) + 16*x^5 + 24*x^6)/(1-2*x^2).

The programs for A204696, the canonical program `A204696.P9995879390703459657` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A204696 has offset 0).

The definition of A204696 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 334 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A204696.P9995879390703459657

`8*floor(A007179(A289207(n))/2)`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A204696

/-- `8*floor(A007179(A289207(n))/2)` -/
def P9995879390703459657.Spec : Prop :=
  ∀ n, P9995879390703459657.a n = A204696 n

theorem P9995879390703459657.correct : P9995879390703459657.Spec := by
  intro n
  simp only [A204696]

end A204696

/-! ## A204696.P1408290364791199292

`and(xor(4, A007179(n)), A233411(n))`
-/

namespace A204696.P1408290364791199292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (Int.xor 4 (A007179 n)) (A233411 n)

end

end A204696.P1408290364791199292

namespace A204696

/-- `and(xor(4, A007179(n)), A233411(n))` -/
def P1408290364791199292.Spec : Prop :=
  ∀ n, P1408290364791199292.a n = A204696 n

end A204696

/-! ## A204696.P8795224285438660619

`and(xor(5, A113979(n+1)), A233411(n))`
-/

namespace A204696.P8795224285438660619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (Int.xor 5 (A113979 (n + 1))) (A233411 n)

end

end A204696.P8795224285438660619

namespace A204696

/-- `and(xor(5, A113979(n+1)), A233411(n))` -/
def P8795224285438660619.Spec : Prop :=
  ∀ n, P8795224285438660619.a n = A204696 n

end A204696

/-! ## A204696.P9261599822922773166

`and(lcm(8, A122746(n)), A007179(n))`
-/

namespace A204696.P9261599822922773166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (Int.lcm 8 (A122746 n) : ℤ) (A007179 n)

end

end A204696.P9261599822922773166

namespace A204696

/-- `and(lcm(8, A122746(n)), A007179(n))` -/
def P9261599822922773166.Spec : Prop :=
  ∀ n, P9261599822922773166.a n = A204696 n

end A204696

/-! ## A204696.P14215905759800946625

`and(A122746(n)%A094388(n), A007179(n))`
-/

namespace A204696.P14215905759800946625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (Int.tmod (A122746 n) (A094388 n)) (A007179 n)

end

end A204696.P14215905759800946625

namespace A204696

/-- `and(A122746(n)%A094388(n), A007179(n))` -/
def P14215905759800946625.Spec : Prop :=
  ∀ n, P14215905759800946625.a n = A204696 n

end A204696

/-!
# A204697: Final nonzero digit of n^n in base 3.

The programs for A204697, the canonical program `A204697.P15234551903142194925` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A204697 has offset 0).

The definition of A204697 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3220 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A204697.P18271947908591684644

`(gcd(2, n+1)-char[(n+1)*((n+1)/3^val(n+1, 3))%3])!`
-/

namespace A204697.P18271947908591684644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * Int.tmod (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (3 ^ SequenceMachineLib.valuation (n + 1) 3 : ℚ))) 3

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial ((Nat.gcd 2 (n + 1) : ℤ) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)).toNat

end

end A204697.P18271947908591684644

namespace A204697

/-- `(gcd(2, n+1)-char[(n+1)*((n+1)/3^val(n+1, 3))%3])!` -/
def P18271947908591684644.Spec : Prop :=
  ∀ n, (P18271947908591684644.a n : ℤ) = A204697 n

end A204697

/-! ## A204697.P13210071286441254207

`A060236(or(1, 3*n))`
-/

namespace A204697.P13210071286441254207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060236 (Nat.lor 1 (3 * n))

end

end A204697.P13210071286441254207

namespace A204697

/-- `A060236(or(1, 3*n))` -/
def P13210071286441254207.Spec : Prop :=
  ∀ n, P13210071286441254207.a n = A204697 n

end A204697

/-! ## A204697.P3250652141005623635

`A060236(n^(n%2))`
-/

namespace A204697.P3250652141005623635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060236 (n ^ (n % 2))

end

end A204697.P3250652141005623635

namespace A204697

/-- `A060236(n^(n%2))` -/
def P3250652141005623635.Spec : Prop :=
  ∀ n, P3250652141005623635.a n = A204697 n

end A204697

/-! ## A204697.P7510742075464707526

`A060236(n^and(1, n))`
-/

namespace A204697.P7510742075464707526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060236 (n ^ Nat.land 1 n)

end

end A204697.P7510742075464707526

namespace A204697

/-- `A060236(n^and(1, n))` -/
def P7510742075464707526.Spec : Prop :=
  ∀ n, P7510742075464707526.a n = A204697 n

end A204697

/-! ## A204697.P15234551903142194925

`and(n, A189640(n+1))+1`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A204697

/-- `and(n, A189640(n+1))+1` -/
def P15234551903142194925.Spec : Prop :=
  ∀ n, P15234551903142194925.a n = A204697 n

theorem P15234551903142194925.correct : P15234551903142194925.Spec := by
  intro n
  simp only [A204697]

end A204697

/-! ## A204697.P14202214919178228772

`gcd(2, gcd(n+1, A126760(n)))`
-/

namespace A204697.P14202214919178228772
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 (Int.gcd (n + 1 : ℤ) (A126760 n))

end

end A204697.P14202214919178228772

namespace A204697

/-- `gcd(2, gcd(n+1, A126760(n)))` -/
def P14202214919178228772.Spec : Prop :=
  ∀ n, (P14202214919178228772.a n : ℤ) = A204697 n

end A204697

/-! ## A204697.P3018552224063348115

`ceil((n+1)/A026202(n+1))`
-/

namespace A204697.P3018552224063348115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 1 : ℚ) / (A026202 (n + 1) : ℚ)⌉

end

end A204697.P3018552224063348115

namespace A204697

/-- `ceil((n+1)/A026202(n+1))` -/
def P3018552224063348115.Spec : Prop :=
  ∀ n, P3018552224063348115.a n = A204697 n

end A204697

/-! ## A204697.P2668691299570459354

`2^and(n, char[lt[A327252(n), 0]])`
-/

namespace A204697.P2668691299570459354
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327252 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ Nat.land n (if ∃ j, f1 j = n then 1 else 0)

end

end A204697.P2668691299570459354

namespace A204697

/-- `2^and(n, char[lt[A327252(n), 0]])` -/
def P2668691299570459354.Spec : Prop :=
  ∀ n, (P2668691299570459354.a n : ℤ) = A204697 n

end A204697

/-! ## A204697.P10891568816525668399

`and(n, A189673(2*n+1))+1`
-/

namespace A204697.P10891568816525668399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (A189673 (2 * n + 1)) + 1

end

end A204697.P10891568816525668399

namespace A204697

/-- `and(n, A189673(2*n+1))+1` -/
def P10891568816525668399.Spec : Prop :=
  ∀ n, P10891568816525668399.a n = A204697 n

end A204697

/-! ## A204697.P16320408782748666853

`∏{p}[and(A189673(Δ[n²])+n, -(n+1)), #]`
-/

namespace A204697.P16320408782748666853
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A189673 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat + (n : ℤ)) (-(n + 1 : ℤ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A204697.P16320408782748666853

namespace A204697

/-- `∏{p}[and(A189673(Δ[n²])+n, -(n+1)), #]` -/
def P16320408782748666853.Spec : Prop :=
  ∀ n, (P16320408782748666853.a n : ℤ) = A204697 n

end A204697

/-! ## A204697.P13362118936416017604

`A060236(A093178(n))`
-/

namespace A204697.P13362118936416017604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060236 (A093178 n).toNat

end

end A204697.P13362118936416017604

namespace A204697

/-- `A060236(A093178(n))` -/
def P13362118936416017604.Spec : Prop :=
  ∀ n, P13362118936416017604.a n = A204697 n

end A204697

/-! ## A204697.P4832897462216322283

`A093718(A308364(n))`
-/

namespace A204697.P4832897462216322283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093718 (A308364 n).toNat

end

end A204697.P4832897462216322283

namespace A204697

/-- `A093718(A308364(n))` -/
def P4832897462216322283.Spec : Prop :=
  ∀ n, P4832897462216322283.a n = A204697 n

end A204697

/-! ## A204697.P9078686964801671811

`A060236(A047241(n+1))`
-/

namespace A204697.P9078686964801671811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060236 (A047241 (n + 1)).toNat

end

end A204697.P9078686964801671811

namespace A204697

/-- `A060236(A047241(n+1))` -/
def P9078686964801671811.Spec : Prop :=
  ∀ n, P9078686964801671811.a n = A204697 n

end A204697

/-! ## A204697.P7413243220458339640

`A060236(A284884(n+1))`
-/

namespace A204697.P7413243220458339640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060236 (A284884 (n + 1)).toNat

end

end A204697.P7413243220458339640

namespace A204697

/-- `A060236(A284884(n+1))` -/
def P7413243220458339640.Spec : Prop :=
  ∀ n, P7413243220458339640.a n = A204697 n

end A204697

/-! ## A204697.P10429354997667513251

`gcd(A000034(n), A126760(n))`
-/

namespace A204697.P10429354997667513251
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000034 n) (A126760 n)

end

end A204697.P10429354997667513251

namespace A204697

/-- `gcd(A000034(n), A126760(n))` -/
def P10429354997667513251.Spec : Prop :=
  ∀ n, (P10429354997667513251.a n : ℤ) = A204697 n

end A204697

/-! ## A204697.P515065403066874459

`gcd(A084642(n), A368230(n))`
-/

namespace A204697.P515065403066874459
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A084642 n) (A368230 n)

end

end A204697.P515065403066874459

namespace A204697

/-- `gcd(A084642(n), A368230(n))` -/
def P515065403066874459.Spec : Prop :=
  ∀ n, (P515065403066874459.a n : ℤ) = A204697 n

end A204697

/-! ## A204697.P14442987138696778194

`A189673(A266072(n)+2)+1`
-/

namespace A204697.P14442987138696778194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189673 (A266072 n + 2).toNat + 1

end

end A204697.P14442987138696778194

namespace A204697

/-- `A189673(A266072(n)+2)+1` -/
def P14442987138696778194.Spec : Prop :=
  ∀ n, P14442987138696778194.a n = A204697 n

end A204697

/-! ## A204697.P16382627152534778464

`2-A189673(A093178(n)+1)`
-/

namespace A204697.P16382627152534778464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A189673 (A093178 n + 1).toNat

end

end A204697.P16382627152534778464

namespace A204697

/-- `2-A189673(A093178(n)+1)` -/
def P16382627152534778464.Spec : Prop :=
  ∀ n, P16382627152534778464.a n = A204697 n

end A204697

/-! ## A204697.P2574553154044812395

`2-A189673(2*A152271(n))`
-/

namespace A204697.P2574553154044812395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A189673 (2 * A152271 n).toNat

end

end A204697.P2574553154044812395

namespace A204697

/-- `2-A189673(2*A152271(n))` -/
def P2574553154044812395.Spec : Prop :=
  ∀ n, P2574553154044812395.a n = A204697 n

end A204697

/-! ## A204697.P5620030423016957375

`A189640(A321220(n)-n)+1`
-/

namespace A204697.P5620030423016957375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189640 (A321220 n - (n : ℤ)).toNat + 1

end

end A204697.P5620030423016957375

namespace A204697

/-- `A189640(A321220(n)-n)+1` -/
def P5620030423016957375.Spec : Prop :=
  ∀ n, P5620030423016957375.a n = A204697 n

end A204697

/-!
# A204698: Number of n X n 0..2 arrays with no occurrence of three equal elements in a row horizontally, vertically or nw-to-se diagonally, and new values 0..2 introduced in row major order.

The programs for A204698, there is no canonical definition to state claims against.
-/

/-! ## A204698.P12855225779125816279

`A204705((n+1)²+n²)`
-/

namespace A204698.P12855225779125816279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204705 ((n + 1) ^ 2 + n ^ 2)

end

end A204698.P12855225779125816279

/-!
# A204699: Number of n X 2 0..2 arrays with no occurrence of three equal elements in a row horizontally, vertically or nw-to-se diagonally, and new values 0..2 introduced in row major order.

The programs for A204699, the canonical program `A204699.P2186860894411587563` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A204699 has offset 1).

The definition of A204699 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 114 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A204699.P2186860894411587563

`ceil((3*A028859(n))²/6)`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A204699

/-- `ceil((3*A028859(n))²/6)` -/
def P2186860894411587563.Spec : Prop :=
  ∀ n, P2186860894411587563.a n = A204699 (n + 1)

theorem P2186860894411587563.correct : P2186860894411587563.Spec := by
  intro n
  simp only [A204699, Nat.add_sub_cancel]

end A204699

/-! ## A204699.P851075417315879965

`ceil((3*A155020(n+1))²/6)`
-/

namespace A204699.P851075417315879965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((3 * A155020 (n + 1)) ^ 2 : ℚ) / 6⌉

end

end A204699.P851075417315879965

namespace A204699

/-- `ceil((3*A155020(n+1))²/6)` -/
def P851075417315879965.Spec : Prop :=
  ∀ n, P851075417315879965.a n = A204699 (n + 1)

end A204699

/-! ## A204699.P18263388744714949683

`A204705(∑[n+1]+2)`
-/

namespace A204699.P18263388744714949683
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204705 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A204699.P18263388744714949683

namespace A204699

/-- `A204705(∑[n+1]+2)` -/
def P18263388744714949683.Spec : Prop :=
  ∀ n, P18263388744714949683.a n = A204699 (n + 1)

end A204699

/-! ## A204699.P1312298890733405185

`A206650(∑[n+1]+2)`
-/

namespace A204699.P1312298890733405185
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206650 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A204699.P1312298890733405185

namespace A204699

/-- `A206650(∑[n+1]+2)` -/
def P1312298890733405185.Spec : Prop :=
  ∀ n, P1312298890733405185.a n = A204699 (n + 1)

end A204699

/-! ## A204699.P3518978625919065115

`A316867(2*n+1)+A206650(A000096(n+1))`
-/

namespace A204699.P3518978625919065115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316867 (2 * n + 1) + A206650 (A000096 (n + 1)).toNat

end

end A204699.P3518978625919065115

namespace A204699

/-- `A316867(2*n+1)+A206650(A000096(n+1))` -/
def P3518978625919065115.Spec : Prop :=
  ∀ n, P3518978625919065115.a n = A204699 (n + 1)

end A204699

