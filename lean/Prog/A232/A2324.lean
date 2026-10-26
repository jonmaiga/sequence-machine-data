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
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C039
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C004
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C011
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C004
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A232400: Number of (n+1)X(2+1) 0..2 arrays with every element next to itself plus and minus one within the range 0..2 horizontally or vertically, with no adjacent elements equal.

The programs for A232400, there is no canonical definition to state claims against.
-/

/-! ## A232400.P8959015708551597212

`A232406(∑[n+1]+2)`
-/

namespace A232400.P8959015708551597212
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232406 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A232400.P8959015708551597212

/-! ## A232400.P16903179968243166522

`lcm(2, A232406(A133263(n+1)))`
-/

namespace A232400.P16903179968243166522
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A232406 (A133263 (n + 1)).toNat)

end

end A232400.P16903179968243166522

/-! ## A232400.P1445329858100263006

`A232406(A133263(n+1))+A000035(2*n)`
-/

namespace A232400.P1445329858100263006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232406 (A133263 (n + 1)).toNat + A000035 (2 * n)

end

end A232400.P1445329858100263006

/-! ## A232400.P10229594576995287096

`A007318(A000096(n))*A232406(A133263(n+1))`
-/

namespace A232400.P10229594576995287096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A000096 n).toNat * A232406 (A133263 (n + 1)).toNat

end

end A232400.P10229594576995287096

/-! ## A232400.P16204238170930876203

`A001221(A000043(n+1))*A232406(A133263(n+1))`
-/

namespace A232400.P16204238170930876203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A000043 (n + 1)).toNat * A232406 (A133263 (n + 1)).toNat

end

end A232400.P16204238170930876203

/-!
# A232401: Number of (n+1)X(3+1) 0..2 arrays with every element next to itself plus and minus one within the range 0..2 horizontally or vertically, with no adjacent elements equal.

The programs for A232401, there is no canonical definition to state claims against.
-/

/-! ## A232401.P587733964914287168

`A232406(∑[n+2]+4)`
-/

namespace A232401.P587733964914287168
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232406 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A232401.P587733964914287168

/-! ## A232401.P3359218117442767932

`lcm(2, A232406(A167614(n+1)))`
-/

namespace A232401.P3359218117442767932
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A232406 (A167614 (n + 1)).toNat)

end

end A232401.P3359218117442767932

/-! ## A232401.P17728345984427887368

`A014860(n)*A232406(A167614(n+1))`
-/

namespace A232401.P17728345984427887368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014860 n * A232406 (A167614 (n + 1)).toNat

end

end A232401.P17728345984427887368

/-! ## A232401.P7981011807758633591

`A232406(A167614(n+1))%A122609(n+1)`
-/

namespace A232401.P7981011807758633591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A232406 (A167614 (n + 1)).toNat) (A122609 (n + 1))

end

end A232401.P7981011807758633591

/-! ## A232401.P10758425850257322519

`A232406(A055998(n)+6)%A237794(n+1)`
-/

namespace A232401.P10758425850257322519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A232406 (A055998 n + 6).toNat) (A237794 (n + 1))

end

end A232401.P10758425850257322519

/-!
# A232402: Number of (n+1) X (4+1) 0..2 arrays with every element next to itself plus and minus one within the range 0..2 horizontally or vertically, with no adjacent elements equal.

The programs for A232402, there is no canonical definition to state claims against.
-/

/-! ## A232402.P15808043794968912497

`A232406(A374004(n+1))`
-/

namespace A232402.P15808043794968912497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232406 (A374004 (n + 1)).toNat

end

end A232402.P15808043794968912497

/-! ## A232402.P5783393228451949218

`A232406(A141214(n)+7)`
-/

namespace A232402.P5783393228451949218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232406 (A141214 n + 7).toNat

end

end A232402.P5783393228451949218

/-! ## A232402.P8590216316332817588

`A232406(A052905(n)+9)`
-/

namespace A232402.P8590216316332817588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232406 (A052905 n + 9).toNat

end

end A232402.P8590216316332817588

/-! ## A232402.P11760700421387763930

`A232406(A055999(n)+10)`
-/

namespace A232402.P11760700421387763930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232406 (A055999 n + 10).toNat

end

end A232402.P11760700421387763930

/-! ## A232402.P7884353024434157801

`record[A232406(A008795(n)+4)]`
-/

namespace A232402.P7884353024434157801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232406 (A008795 n + 4).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A232402.P7884353024434157801

/-!
# A232403: Number of (n+1)X(5+1) 0..2 arrays with every element next to itself plus and minus one within the range 0..2 horizontally or vertically, with no adjacent elements equal.

The programs for A232403, there is no canonical definition to state claims against.
-/

/-! ## A232403.P9992281825721550623

`A232406(A374005(n+1))`
-/

namespace A232403.P9992281825721550623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232406 (A374005 (n + 1)).toNat

end

end A232403.P9992281825721550623

/-! ## A232403.P12943743321539511480

`A232406(A167499(n+3))`
-/

namespace A232403.P12943743321539511480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232406 (A167499 (n + 3)).toNat

end

end A232403.P12943743321539511480

/-! ## A232403.P15799915100409355447

`A232406(A155212(n)+13)`
-/

namespace A232403.P15799915100409355447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232406 (A155212 n + 13).toNat

end

end A232403.P15799915100409355447

/-! ## A232403.P14889200387830510504

`A232406(A038722(Δ[A264443(n)]))`
-/

namespace A232403.P14889200387830510504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232406 (A038722 (f1 (n + 1) - f1 n).toNat).toNat

end

end A232403.P14889200387830510504

/-! ## A232403.P183981662079382327

`A232406(Δ[A264443(n)])`
-/

namespace A232403.P183981662079382327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232406 (f1 (n + 1) - f1 n).toNat

end

end A232403.P183981662079382327

/-!
# A232404: Number of (n+1)X(6+1) 0..2 arrays with every element next to itself plus and minus one within the range 0..2 horizontally or vertically, with no adjacent elements equal.

The programs for A232404, there is no canonical definition to state claims against.
-/

/-! ## A232404.P14259369411038623965

`A232406(A374007(n+1))`
-/

namespace A232404.P14259369411038623965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232406 (A374007 (n + 1)).toNat

end

end A232404.P14259369411038623965

/-! ## A232404.P8771378866132273635

`A232406(A167499(n+4)+1)`
-/

namespace A232404.P8771378866132273635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232406 (A167499 (n + 4) + 1).toNat

end

end A232404.P8771378866132273635

/-! ## A232404.P12245199272072507622

`A232406(A000124(n+5)+5)`
-/

namespace A232404.P12245199272072507622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232406 (A000124 (n + 5) + 5).toNat

end

end A232404.P12245199272072507622

/-! ## A232404.P16145046324792643642

`A232406(A000217(n+5)+6)`
-/

namespace A232404.P16145046324792643642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232406 (A000217 (n + 5) + 6).toNat

end

end A232404.P16145046324792643642

/-! ## A232404.P7193508568067974671

`A232406(A046691(n+3)+10)`
-/

namespace A232404.P7193508568067974671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232406 (A046691 (n + 3) + 10).toNat

end

end A232404.P7193508568067974671

/-!
# A232405: Number of (n+1) X (7+1) 0..2 arrays with every element next to itself plus and minus one within the range 0..2 horizontally or vertically, with no adjacent elements equal.

The programs for A232405, there is no canonical definition to state claims against.
-/

/-! ## A232405.P14370602508195867582

`A232406(A374008(n+1))`
-/

namespace A232405.P14370602508195867582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232406 (A374008 (n + 1)).toNat

end

end A232405.P14370602508195867582

/-! ## A232405.P2200144699512770795

`A232406(A167614(n+5)+4)`
-/

namespace A232405.P2200144699512770795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232406 (A167614 (n + 5) + 4).toNat

end

end A232405.P2200144699512770795

/-! ## A232405.P7294086348272556207

`A232406(A000124(n+6)+6)`
-/

namespace A232405.P7294086348272556207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232406 (A000124 (n + 6) + 6).toNat

end

end A232405.P7294086348272556207

/-! ## A232405.P15605181001638860890

`A232406(A000096(n+5)+8)`
-/

namespace A232405.P15605181001638860890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232406 (A000096 (n + 5) + 8).toNat

end

end A232405.P15605181001638860890

/-! ## A232405.P1684646947463858801

`A232406(A000217(n+6)+7)`
-/

namespace A232405.P1684646947463858801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232406 (A000217 (n + 6) + 7).toNat

end

end A232405.P1684646947463858801

/-!
# A232407: Number of (n+1)X(n+1) 0..2 arrays with every element both >= and <= some horizontal, diagonal or antidiagonal neighbor.

The programs for A232407, there is no canonical definition to state claims against.
-/

/-! ## A232407.P8830518069710612194

`A232414(∑[4*n]+1)`
-/

namespace A232407.P8830518069710612194
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232414 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A232407.P8830518069710612194

/-!
# A232408: Number of (n+1) X (2+1) 0..2 arrays with every element both >= and <= some horizontal, diagonal or antidiagonal neighbor.

The programs for A232408, there is no canonical definition to state claims against.
-/

/-! ## A232408.P3795134713879141243

`A232414(∑[n+2])`
-/

namespace A232408.P3795134713879141243
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232414 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A232408.P3795134713879141243

/-! ## A232408.P12209438369989296953

`or(1, A232414(A000096(n+1)))`
-/

namespace A232408.P12209438369989296953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A232414 (A000096 (n + 1)).toNat)

end

end A232408.P12209438369989296953

/-! ## A232408.P12904114718200931557

`record[A232414(Δ[A003453(n+5)])]`
-/

namespace A232408.P12904114718200931557
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003453 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232414 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A232408.P12904114718200931557

/-! ## A232408.P18256453515236514214

`record[gcd(A185782(n+3), A232414(n+2))]`
-/

namespace A232408.P18256453515236514214
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A185782 (n + 3)) (A232414 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A232408.P18256453515236514214

/-! ## A232408.P12054376066957256765

`A232414(A055998(n)+2)%A232322(n+1)`
-/

namespace A232408.P12054376066957256765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A232414 (A055998 n + 2).toNat) (A232322 (n + 1))

end

end A232408.P12054376066957256765

/-!
# A232409: Number of (n+1) X (3+1) 0..2 arrays with every element both >= and <= some horizontal, diagonal or antidiagonal neighbor.

The programs for A232409, there is no canonical definition to state claims against.
-/

/-! ## A232409.P13306371450269171824

`A232414(∑[n+3]+1)`
-/

namespace A232409.P13306371450269171824
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232414 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A232409.P13306371450269171824

/-! ## A232409.P4492904611212162322

`record[A232414(A237519(n+2))]`
-/

namespace A232409.P4492904611212162322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232414 (A237519 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A232409.P4492904611212162322

/-! ## A232409.P1263304019280501738

`or(1, A232414(eq[3, A200370(n+1)]))`
-/

namespace A232409.P1263304019280501738
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A232414 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n))

end

end A232409.P1263304019280501738

/-!
# A232410: Number of (n+1) X (4+1) 0..2 arrays with every element both >= and <= some horizontal, diagonal or antidiagonal neighbor.

The programs for A232410, there is no canonical definition to state claims against.
-/

/-! ## A232410.P3389469192146658053

`A232414(A141214(n+1))`
-/

namespace A232410.P3389469192146658053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232414 (A141214 (n + 1)).toNat

end

end A232410.P3389469192146658053

/-! ## A232410.P15759624676780341006

`A232414(A027379(n+2))`
-/

namespace A232410.P15759624676780341006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232414 (A027379 (n + 2)).toNat

end

end A232410.P15759624676780341006

/-! ## A232410.P4029633467208139573

`A232414(A155212(n)+5)`
-/

namespace A232410.P4029633467208139573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232414 (A155212 n + 5).toNat

end

end A232410.P4029633467208139573

/-!
# A232411: Number of (n+1)X(5+1) 0..2 arrays with every element both >= and <= some horizontal, diagonal or antidiagonal neighbor.

The programs for A232411, there is no canonical definition to state claims against.
-/

/-! ## A232411.P13477657677238855061

`A232414(A027379(n+3)-1)`
-/

namespace A232411.P13477657677238855061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232414 (A027379 (n + 3) - 1).toNat

end

end A232411.P13477657677238855061

/-! ## A232411.P3096215164695662338

`A232414(A246172(n+1)+10)`
-/

namespace A232411.P3096215164695662338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232414 (A246172 (n + 1) + 10).toNat

end

end A232411.P3096215164695662338

/-!
# A232412: 

The programs for A232412, there is no canonical definition to state claims against.
-/

/-! ## A232412.P2642059952018843522

`A232414(A167499(n+5)-10)`
-/

namespace A232412.P2642059952018843522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232414 (A167499 (n + 5) - 10).toNat

end

end A232412.P2642059952018843522

/-! ## A232412.P9018622683376153950

`A232414(Δ[A026054(n+3)]+1)`
-/

namespace A232412.P9018622683376153950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026054 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232414 (f1 (n + 1) - f1 n + 1).toNat

end

end A232412.P9018622683376153950

/-!
# A232415: Number of (1+1)X(n+1) 0..2 arrays with every element both >= and <= some horizontal, diagonal or antidiagonal neighbor.

The programs for A232415, there is no canonical definition to state claims against.
-/

/-! ## A232415.P13909305335443257613

`A232414(∑[n]+1)`
-/

namespace A232415.P13909305335443257613
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232414 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A232415.P13909305335443257613

/-! ## A232415.P14873820234525159445

`or(1, A232414(A000124(n)))`
-/

namespace A232415.P14873820234525159445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A232414 (A000124 n).toNat)

end

end A232415.P14873820234525159445

/-! ## A232415.P13713342492440427271

`record[root(A232414(n+1), A056588(n))]`
-/

namespace A232415.P13713342492440427271
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A232414 (n + 1) : ℝ) ^ (1 / (A056588 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A232415.P13713342492440427271

/-! ## A232415.P15208730146084740715

`record[gcd(A067138(n), A232414(n+1))]`
-/

namespace A232415.P15208730146084740715
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A067138 n) (A232414 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A232415.P15208730146084740715

/-! ## A232415.P12534855556827355858

`A139551(n)*A232414(A000124(n))`
-/

namespace A232415.P12534855556827355858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139551 n * A232414 (A000124 n).toNat

end

end A232415.P12534855556827355858

/-!
# A232416: Number of (2+1)X(n+1) 0..2 arrays with every element both >= and <= some horizontal, diagonal or antidiagonal neighbor.

The programs for A232416, there is no canonical definition to state claims against.
-/

/-! ## A232416.P1774923613844644827

`A232414(∑[n+1]+2)`
-/

namespace A232416.P1774923613844644827
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232414 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A232416.P1774923613844644827

/-! ## A232416.P16893882581233542965

`or(1, A232414(A133263(n+1)))`
-/

namespace A232416.P16893882581233542965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A232414 (A133263 (n + 1)).toNat)

end

end A232416.P16893882581233542965

/-! ## A232416.P7692174052897834886

`record[A232414(n+3)/A070918(n)]`
-/

namespace A232416.P7692174052897834886
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A232414 (n + 3) : ℚ) / (A070918 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A232416.P7692174052897834886

/-! ## A232416.P5806114264112541629

`or(1, A232414(A000124(n+1)+1))`
-/

namespace A232416.P5806114264112541629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A232414 (A000124 (n + 1) + 1).toNat)

end

end A232416.P5806114264112541629

/-! ## A232416.P11070742646109129920

`record[A232414(A133263(∑[(-1)^(n%3)]))]`
-/

namespace A232416.P11070742646109129920
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ (n % 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232414 (A133263 (∑ j ∈ Finset.range (n + 1), f2 j).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A232416.P11070742646109129920

/-!
# A232417: Number of (3+1)X(n+1) 0..2 arrays with every element both >= and <= some horizontal, diagonal or antidiagonal neighbor.

The programs for A232417, there is no canonical definition to state claims against.
-/

/-! ## A232417.P15831565232479844872

`A232414(∑[n+2]+4)`
-/

namespace A232417.P15831565232479844872
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232414 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A232417.P15831565232479844872

/-! ## A232417.P9350157384108727075

`or(1, A232414(A167614(n+1)))`
-/

namespace A232417.P9350157384108727075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A232414 (A167614 (n + 1)).toNat)

end

end A232417.P9350157384108727075

/-! ## A232417.P9894583677415612690

`A232414(A167614(n+1))+A025438(n)`
-/

namespace A232417.P9894583677415612690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232414 (A167614 (n + 1)).toNat + A025438 n

end

end A232417.P9894583677415612690

/-! ## A232417.P4262432052912928398

`lcm(A033999(n), A232414(A167614(n+1)))`
-/

namespace A232417.P4262432052912928398
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A232414 (A167614 (n + 1)).toNat)

end

end A232417.P4262432052912928398

/-! ## A232417.P11487753095628970612

`A232414(A167614(n+1))*A250131(n+1)`
-/

namespace A232417.P11487753095628970612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232414 (A167614 (n + 1)).toNat * A250131 (n + 1)

end

end A232417.P11487753095628970612

/-!
# A232418: Number of (4+1)X(n+1) 0..2 arrays with every element both >= and <= some horizontal, diagonal or antidiagonal neighbor.

The programs for A232418, there is no canonical definition to state claims against.
-/

/-! ## A232418.P3607059060825072558

`A232414(∑[n+3]+7)`
-/

namespace A232418.P3607059060825072558
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232414 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A232418.P3607059060825072558

/-! ## A232418.P7511007226280861241

`A027082(A027082(n))*A232414(A167614(n+2)+1)`
-/

namespace A232418.P7511007226280861241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027082 (A027082 n).toNat * A232414 (A167614 (n + 2) + 1).toNat

end

end A232418.P7511007226280861241

/-! ## A232418.P1302785452955209615

`A228832(A107862(n))*A232414(A167614(n+2)+1)`
-/

namespace A232418.P1302785452955209615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228832 (A107862 n).toNat * A232414 (A167614 (n + 2) + 1).toNat

end

end A232418.P1302785452955209615

/-! ## A232418.P5617131125774583290

`A228832(A228832(n))*A232414(A167614(n+2)+1)`
-/

namespace A232418.P5617131125774583290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228832 (A228832 n).toNat * A232414 (A167614 (n + 2) + 1).toNat

end

end A232418.P5617131125774583290

/-! ## A232418.P13152924482144366124

`A232414(A167614(n+2)+1)^A027082(A142150(n+1))`
-/

namespace A232418.P13152924482144366124
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A232414 (A167614 (n + 2) + 1).toNat : ℚ) ^ (A027082 (A142150 (n + 1)).toNat : ℤ)

end

end A232418.P13152924482144366124

/-!
# A232419: Number of (5+1)X(n+1) 0..2 arrays with every element both >= and <= some horizontal, diagonal or antidiagonal neighbor.

The programs for A232419, there is no canonical definition to state claims against.
-/

/-! ## A232419.P17644015655324088815

`A232414(A056000(n)+15)`
-/

namespace A232419.P17644015655324088815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232414 (A056000 n + 15).toNat

end

end A232419.P17644015655324088815

/-! ## A232419.P3214340598061260566

`A232414(A141214(n+1)+8)`
-/

namespace A232419.P3214340598061260566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232414 (A141214 (n + 1) + 8).toNat

end

end A232419.P3214340598061260566

/-!
# A232421: 

The programs for A232421, there is no canonical definition to state claims against.
-/

/-! ## A232421.P11180568081955435345

`A232414(A167499(n+5)+2)`
-/

namespace A232421.P11180568081955435345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232414 (A167499 (n + 5) + 2).toNat

end

end A232421.P11180568081955435345

/-!
# A232423: a(n) = ceiling(sqrt(n^4 - n^3 - n^2 + n + 1))^2 - (n^4 - n^3 - n^2 + n + 1).

The programs for A232423, the canonical program `A232423.P495389796751276557` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A232423 has offset 0).

The definition of A232423 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ceil(sqrt(n^4-n^3-n²+n+1))²-(n^4-n^3-n²+n+1)` (program `A232423.P495389796751276557`, by `A232423.P495389796751276557.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A232423.P495389796751276557

`ceil(sqrt(n^4-n^3-n²+n+1))²-(n^4-n^3-n²+n+1)`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A232423

/-- `ceil(sqrt(n^4-n^3-n²+n+1))²-(n^4-n^3-n²+n+1)` -/
def P495389796751276557.Spec : Prop :=
  ∀ n, P495389796751276557.a n = A232423 n

theorem P495389796751276557.correct : P495389796751276557.Spec := by
  intro n
  simp only [A232423]

end A232423

/-! ## A232423.P316673809252215783

`Δ[A067998(A065033(n))*A233583(n+1)]`
-/

namespace A232423.P316673809252215783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067998 (A065033 n).toNat * A233583 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A232423.P316673809252215783

namespace A232423

/-- `Δ[A067998(A065033(n))*A233583(n+1)]` -/
def P316673809252215783.Spec : Prop :=
  ∀ n, P316673809252215783.a n = A232423 n

end A232423

/-! ## A232423.P2800675730397682260

`A348596((1-n)²*∑[n])`
-/

namespace A232423.P2800675730397682260
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348596 ((1 - (n : ℤ)) ^ 2 * ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A232423.P2800675730397682260

namespace A232423

/-- `A348596((1-n)²*∑[n])` -/
def P2800675730397682260.Spec : Prop :=
  ∀ n, P2800675730397682260.a n = A232423 n

end A232423

/-! ## A232423.P15481744788343271100

`A068527(n+1+(n²-(n+1))*n²)`
-/

namespace A232423.P15481744788343271100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068527 ((n + 1 : ℤ) + ((n ^ 2 : ℤ) - (n + 1 : ℤ)) * (n ^ 2 : ℤ)).toNat

end

end A232423.P15481744788343271100

namespace A232423

/-- `A068527(n+1+(n²-(n+1))*n²)` -/
def P15481744788343271100.Spec : Prop :=
  ∀ n, P15481744788343271100.a n = A232423 n

end A232423

/-!
# A232424: Floor of the half derivative of x^2 at n.

The programs for A232424, the canonical program `A232424.P17597634578347525914` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A232424 has offset 0).

The definition of A232424 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A232424.P17597634578347525914

`floor(8*n^(3/2)/(3*sqrt(π)))`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A232424

/-- `floor(8*n^(3/2)/(3*sqrt(π)))` -/
def P17597634578347525914.Spec : Prop :=
  ∀ n, P17597634578347525914.a n = A232424 n

theorem P17597634578347525914.correct : P17597634578347525914.Spec := by
  intro n
  simp only [A232424]

end A232424

/-! ## A232424.P1557346390188057549

`A003056(floor((n+1)^3/sqrt(72))+n^3)`
-/

namespace A232424.P1557346390188057549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (⌊((n + 1) ^ 3 : ℝ) / Real.sqrt (72 : ℝ)⌋ + (n ^ 3 : ℤ)).toNat

end

end A232424.P1557346390188057549

namespace A232424

/-- `A003056(floor((n+1)^3/sqrt(72))+n^3)` -/
def P1557346390188057549.Spec : Prop :=
  ∀ n, P1557346390188057549.a n = A232424 n

end A232424

/-! ## A232424.P1666952794172328520

`A259361(A060419(n)²)+n`
-/

namespace A232424.P1666952794172328520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259361 (A060419 n ^ 2).toNat + (n : ℤ)

end

end A232424.P1666952794172328520

namespace A232424

/-- `A259361(A060419(n)²)+n` -/
def P1666952794172328520.Spec : Prop :=
  ∀ n, P1666952794172328520.a n = A232424 n

end A232424

/-! ## A232424.P8871341063796344197

`A060419(n)+A001222(A011782(n))`
-/

namespace A232424.P8871341063796344197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060419 n + A001222 (A011782 n).toNat

end

end A232424.P8871341063796344197

namespace A232424

/-- `A060419(n)+A001222(A011782(n))` -/
def P8871341063796344197.Spec : Prop :=
  ∀ n, P8871341063796344197.a n = A232424 n

end A232424

/-! ## A232424.P12450130456820395172

`A000196(n*A033638(3*n))`
-/

namespace A232424.P12450130456820395172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 ((n : ℤ) * A033638 (3 * n)).toNat

end

end A232424.P12450130456820395172

namespace A232424

/-- `A000196(n*A033638(3*n))` -/
def P12450130456820395172.Spec : Prop :=
  ∀ n, P12450130456820395172.a n = A232424 n

end A232424

/-!
# A232425: Number of (n+1) X (1+1) 0..2 arrays with every element next to itself plus and minus one within the range 0..2 horizontally or vertically.

The programs for A232425, there is no canonical definition to state claims against.
-/

/-! ## A232425.P7296644385191883071

`A232431(∑[n]+1)`
-/

namespace A232425.P7296644385191883071
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232431 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A232425.P7296644385191883071

/-! ## A232425.P15224776478797393623

`lcm(2, A232431(A000124(n)))`
-/

namespace A232425.P15224776478797393623
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A232431 (A000124 n).toNat)

end

end A232425.P15224776478797393623

/-! ## A232425.P5901776989654280243

`record[A010054(n)*A232431(n+1)]`
-/

namespace A232425.P5901776989654280243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A232431 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A232425.P5901776989654280243

/-! ## A232425.P2629193128594660292

`record[A232431(n+1)/A022167(n)]`
-/

namespace A232425.P2629193128594660292
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A232431 (n + 1) : ℚ) / (A022167 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A232425.P2629193128594660292

/-! ## A232425.P1590302527643131951

`record[root(A232431(n+1), A008288(n))]`
-/

namespace A232425.P1590302527643131951
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A232431 (n + 1) : ℝ) ^ (1 / (A008288 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A232425.P1590302527643131951

/-!
# A232426: Number of (n+1)X(2+1) 0..2 arrays with every element next to itself plus and minus one within the range 0..2 horizontally or vertically.

The programs for A232426, there is no canonical definition to state claims against.
-/

/-! ## A232426.P5115308146452706159

`A232431(∑[n+1]+2)`
-/

namespace A232426.P5115308146452706159
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232431 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A232426.P5115308146452706159

/-! ## A232426.P17071442294885560799

`record[A010054(n)*A232431(n+2)]`
-/

namespace A232426.P17071442294885560799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A232431 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A232426.P17071442294885560799

/-! ## A232426.P3580260376982945690

`record[root(A232431(n+2), A002260(n+1))]`
-/

namespace A232426.P3580260376982945690
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A232431 (n + 2) : ℝ) ^ (1 / (A002260 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A232426.P3580260376982945690

/-! ## A232426.P16943028665345978568

`record[A232431(A022856(n+1)+A000007(n))]`
-/

namespace A232426.P16943028665345978568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232431 (A022856 (n + 1) + A000007 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A232426.P16943028665345978568

/-! ## A232426.P10046846941170896195

`record[A232431(abs(A201163(n)))]`
-/

namespace A232426.P10046846941170896195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232431 |A201163 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A232426.P10046846941170896195

/-!
# A232427: Number of (n+1)X(3+1) 0..2 arrays with every element next to itself plus and minus one within the range 0..2 horizontally or vertically.

The programs for A232427, there is no canonical definition to state claims against.
-/

/-! ## A232427.P1302826315053547803

`A232431(∑[n+2]+4)`
-/

namespace A232427.P1302826315053547803
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232431 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A232427.P1302826315053547803

/-! ## A232427.P11423892253255299969

`lcm(2, A232431(A167614(n+1)))`
-/

namespace A232427.P11423892253255299969
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A232431 (A167614 (n + 1)).toNat)

end

end A232427.P11423892253255299969

/-! ## A232427.P10763703762965747854

`A232431(A167614(n+1))+A097599(n)`
-/

namespace A232427.P10763703762965747854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232431 (A167614 (n + 1)).toNat + A097599 n

end

end A232427.P10763703762965747854

/-! ## A232427.P13122697557351999521

`A232431(A167614(n+1))+A185284(n)`
-/

namespace A232427.P13122697557351999521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232431 (A167614 (n + 1)).toNat + A185284 n

end

end A232427.P13122697557351999521

/-! ## A232427.P15595602493535724095

`A232431(A167614(n+1))%A210305(n+1)`
-/

namespace A232427.P15595602493535724095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A232431 (A167614 (n + 1)).toNat) (A210305 (n + 1))

end

end A232427.P15595602493535724095

/-!
# A232428: Number of (n+1)X(4+1) 0..2 arrays with every element next to itself plus and minus one within the range 0..2 horizontally or vertically.

The programs for A232428, there is no canonical definition to state claims against.
-/

/-! ## A232428.P5355866430073114373

`A232431(A374004(n+1))`
-/

namespace A232428.P5355866430073114373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232431 (A374004 (n + 1)).toNat

end

end A232428.P5355866430073114373

/-! ## A232428.P1016086140958505272

`A232431(A052905(n)+9)`
-/

namespace A232428.P1016086140958505272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232431 (A052905 n + 9).toNat

end

end A232428.P1016086140958505272

/-! ## A232428.P12277068686358023540

`A232431(A055999(n)+10)`
-/

namespace A232428.P12277068686358023540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232431 (A055999 n + 10).toNat

end

end A232428.P12277068686358023540

/-! ## A232428.P7160969808358451416

`A232431(A167614(n+2)+1)`
-/

namespace A232428.P7160969808358451416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232431 (A167614 (n + 2) + 1).toNat

end

end A232428.P7160969808358451416

/-! ## A232428.P7634442415491932373

`A232431(A141214(n+1))`
-/

namespace A232428.P7634442415491932373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232431 (A141214 (n + 1)).toNat

end

end A232428.P7634442415491932373

/-!
# A232429: Number of (n+1)X(5+1) 0..2 arrays with every element next to itself plus and minus one within the range 0..2 horizontally or vertically.

The programs for A232429, there is no canonical definition to state claims against.
-/

/-! ## A232429.P10484935241475418890

`A232431(A374005(n+1))`
-/

namespace A232429.P10484935241475418890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232431 (A374005 (n + 1)).toNat

end

end A232429.P10484935241475418890

/-! ## A232429.P6596722302942451249

`A232431(A155212(n)+13)`
-/

namespace A232429.P6596722302942451249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232431 (A155212 n + 13).toNat

end

end A232429.P6596722302942451249

/-! ## A232429.P4230697606807529483

`A232431(A056000(n)+15)`
-/

namespace A232429.P4230697606807529483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232431 (A056000 n + 15).toNat

end

end A232429.P4230697606807529483

/-! ## A232429.P1934154840368807657

`A232431(eq[7, A066657(n)])`
-/

namespace A232429.P1934154840368807657
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232431 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A232429.P1934154840368807657

/-! ## A232429.P3918397719351983143

`A232431(A167614(n+3)+2)`
-/

namespace A232429.P3918397719351983143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232431 (A167614 (n + 3) + 2).toNat

end

end A232429.P3918397719351983143

/-!
# A232430: Number of (n+1)X(6+1) 0..2 arrays with every element next to itself plus and minus one within the range 0..2 horizontally or vertically.

The programs for A232430, there is no canonical definition to state claims against.
-/

/-! ## A232430.P10650911156141993803

`A232431(A374007(n+1))`
-/

namespace A232430.P10650911156141993803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232431 (A374007 (n + 1)).toNat

end

end A232430.P10650911156141993803

/-! ## A232430.P6353658608680309503

`A232431(A052905(n+3))`
-/

namespace A232430.P6353658608680309503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232431 (A052905 (n + 3)).toNat

end

end A232430.P6353658608680309503

/-! ## A232430.P5620544643497518879

`A232431(eq[5, A193592(n)])`
-/

namespace A232430.P5620544643497518879
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232431 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A232430.P5620544643497518879

/-!
# A232431: T(n,k)=Number of (n+1)X(k+1) 0..2 arrays with every element next to itself plus and minus one within the range 0..2 horizontally or vertically.

The programs for A232431, there is no canonical definition to state claims against.
-/

/-! ## A232431.P13595097096486869395

`∏[A184338(∑{d}[n+1, #]²)]`
-/

namespace A232431.P13595097096486869395
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184338 ((∑ d ∈ Nat.divisors (f2 n), d) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A232431.P13595097096486869395

/-!
# A232432: Number of compositions of n avoiding the pattern 111.

The programs for A232432, there is no canonical definition to state claims against.
-/

/-! ## A232432.P8987551663090180947

`A242447(A133263(n))+A032020(n)`
-/

namespace A232432.P8987551663090180947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242447 (A133263 n).toNat + A032020 n

end

end A232432.P8987551663090180947

/-! ## A232432.P6305446597237014556

`A242447(A238531(n+1))+A032020(n)`
-/

namespace A232432.P6305446597237014556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242447 (A238531 (n + 1)).toNat + A032020 n

end

end A232432.P6305446597237014556

/-! ## A232432.P13623135595406697077

`A242447(A133263(n))+A333149(n)+A333147(n)`
-/

namespace A232432.P13623135595406697077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242447 (A133263 n).toNat + (A333149 n + A333147 n)

end

end A232432.P13623135595406697077

/-! ## A232432.P4074643716645598944

`A011782(n)+A242447(A133263(n))-A261982(n)`
-/

namespace A232432.P4074643716645598944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n + (A242447 (A133263 n).toNat - A261982 n)

end

end A232432.P4074643716645598944

/-! ## A232432.P148327334262627167

`A003242(n)+A242447(A133263(n))-A285981(n)`
-/

namespace A232432.P148327334262627167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003242 n + (A242447 (A133263 n).toNat - A285981 n)

end

end A232432.P148327334262627167

/-! ## A232432.P6320767074193614599

`A324969(n+1)+A242447(A133263(n))-A282694(n)`
-/

namespace A232432.P6320767074193614599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324969 (n + 1) + (A242447 (A133263 n).toNat - A282694 n)

end

end A232432.P6320767074193614599

/-! ## A232432.P15212513592930576170

`A242447(A133263(n))+A339435(n)+2*A332304(n)`
-/

namespace A232432.P15212513592930576170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242447 (A133263 n).toNat + (A339435 n + 2 * A332304 n)

end

end A232432.P15212513592930576170

/-! ## A232432.P6717822271575597275

`A243081(∑[n+3])`
-/

namespace A232432.P6717822271575597275
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243081 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A232432.P6717822271575597275

/-! ## A232432.P17951987422275255955

`lcm(A033999(n), A243081(A027379(n+1)))`
-/

namespace A232432.P17951987422275255955
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A243081 (A027379 (n + 1)).toNat)

end

end A232432.P17951987422275255955

/-! ## A232432.P12107710311921120462

`or(A000007(n), A243081(A027379(n+1)))`
-/

namespace A232432.P12107710311921120462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A243081 (A027379 (n + 1)).toNat)

end

end A232432.P12107710311921120462

/-!
# A232433: E.g.f. satisfies: A(x,q) = exp( Integral A(x,q)*A(q*x,q) dx ).

The programs for A232433, there is no canonical definition to state claims against.
-/

/-! ## A232433.P3406622952918852028

`A107106(A349190(n+1)+A007318(n))`
-/

namespace A232433.P3406622952918852028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107106 (A349190 (n + 1) + A007318 n).toNat

end

end A232433.P3406622952918852028

/-! ## A232433.P6536940011479451325

`A107106(A349190(n+1)+A223968(n))`
-/

namespace A232433.P6536940011479451325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107106 (A349190 (n + 1) + A223968 n).toNat

end

end A232433.P6536940011479451325

/-! ## A232433.P17394973845717730567

`A124772(n)*A124773(A061808(n+1))`
-/

namespace A232433.P17394973845717730567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124772 n * A124773 (A061808 (n + 1)).toNat

end

end A232433.P17394973845717730567

/-! ## A232433.P6419138786569349491

`A124773(A061808(n+1))*A126347(n)`
-/

namespace A232433.P6419138786569349491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124773 (A061808 (n + 1)).toNat * A126347 n

end

end A232433.P6419138786569349491

/-! ## A232433.P12435123637119410777

`A052121(n+1)-A369731(A369731(3*n))`
-/

namespace A232433.P12435123637119410777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052121 (n + 1) - A369731 (A369731 (3 * n)).toNat

end

end A232433.P12435123637119410777

/-!
# A232434: Limit of rows in triangle A232433 when read in reverse order.

The programs for A232434, there is no canonical definition to state claims against.
-/

/-! ## A232434.P4024185281946621211

`A232433(∑[∑[n]]+1)`
-/

namespace A232434.P4024185281946621211
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232433 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A232434.P4024185281946621211

/-! ## A232434.P13020258313448018292

`A209211((2^∑{p}[2*n+1, and(1, #)])^n)`
-/

namespace A232434.P13020258313448018292
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209211 ((2 ^ (∑ p ∈ Nat.primeFactors (f1 n), Nat.land 1 p)) ^ n)

end

end A232434.P13020258313448018292

/-! ## A232434.P8325898040069546059

`A026819(A066822(n))`
-/

namespace A232434.P8325898040069546059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026819 (A066822 n).toNat

end

end A232434.P8325898040069546059

/-!
# A232436: 

The programs for A232436, there is no canonical definition to state claims against.
-/

/-! ## A232436.P7829654918980418778

`filter[A232437(n+1), A353815(#)]`
-/

namespace A232436.P7829654918980418778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232437 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353815 (f1 j).toNat = 1) n)

end

end A232436.P7829654918980418778

/-! ## A232436.P927555810462282653

`filter[A232437(n+1), A353816(#)]`
-/

namespace A232436.P927555810462282653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232437 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353816 (f1 j).toNat = 1) n)

end

end A232436.P927555810462282653

/-! ## A232436.P12497439451040353951

`∩[A003136(n+1), A232437(n+1)]`
-/

namespace A232436.P12497439451040353951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003136 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232437 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A232436.P12497439451040353951

/-! ## A232436.P18270773983838937314

`∩[A024614(n+1), A232437(n+1)]`
-/

namespace A232436.P18270773983838937314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024614 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232437 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A232436.P18270773983838937314

/-! ## A232436.P17396277562464129987

`∩[A034022(n+1), A232437(n+1)]`
-/

namespace A232436.P17396277562464129987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232437 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A232436.P17396277562464129987

/-! ## A232436.P12721444519614036084

`∩[A092572(n+1), A232437(n+1)]`
-/

namespace A232436.P12721444519614036084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092572 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232437 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A232436.P12721444519614036084

/-! ## A232436.P3042039951754524567

`∩[A097503(n+1), A232437(n+1)]`
-/

namespace A232436.P3042039951754524567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097503 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232437 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A232436.P3042039951754524567

/-! ## A232436.P6607063661967527269

`∩[A198772(n+1), A232437(n+1)]`
-/

namespace A232436.P6607063661967527269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198772 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232437 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A232436.P6607063661967527269

/-! ## A232436.P15842493973788583774

`∩[A232437(n+1), A329963(n+1)]`
-/

namespace A232436.P15842493973788583774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232437 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329963 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A232436.P15842493973788583774

/-! ## A232436.P16653786353884003069

`eq[A033716(n), A040032(n)]`
-/

namespace A232436.P16653786353884003069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033716 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040032 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A232436.P16653786353884003069

/-! ## A232436.P17722287945036991260

`eq[2*A040008(n), A033716(n)]`
-/

namespace A232436.P17722287945036991260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A040008 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033716 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A232436.P17722287945036991260

/-! ## A232436.P12824658715846705342

`∩[A198772(n+1), A373587(n+1)]`
-/

namespace A232436.P12824658715846705342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198772 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373587 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A232436.P12824658715846705342

/-! ## A232436.P12574754908108429819

`∩[A198772(n+1), A374109(n+1)]`
-/

namespace A232436.P12574754908108429819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198772 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374109 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A232436.P12574754908108429819

/-! ## A232436.P3426254129097269558

`∩[A198772(n+1), A374115(n+1)]`
-/

namespace A232436.P3426254129097269558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198772 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374115 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A232436.P3426254129097269558

/-! ## A232436.P14651065438164226162

`∩[A072864(n+1), A198772(n+1)]`
-/

namespace A232436.P14651065438164226162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072864 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198772 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A232436.P14651065438164226162

/-! ## A232436.P13322264773906706084

`eq[3, A119395(4*n)]`
-/

namespace A232436.P13322264773906706084
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119395 (4 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A232436.P13322264773906706084

/-! ## A232436.P15457631844499905009

`∩[A050931(n+1), A198772(n+1)]`
-/

namespace A232436.P15457631844499905009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050931 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198772 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A232436.P15457631844499905009

/-! ## A232436.P3343255513787450006

`∩[A092206(n+1), A198772(n+1)]`
-/

namespace A232436.P3343255513787450006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092206 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198772 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A232436.P3343255513787450006

/-! ## A232436.P9926506741148766489

`eq[12, A004016(n)]`
-/

namespace A232436.P9926506741148766489
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004016 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A232436.P9926506741148766489

/-! ## A232436.P5225989705270464578

`eq[2, A002324(n+1)]+1`
-/

namespace A232436.P5225989705270464578
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002324 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A232436.P5225989705270464578

/-!
# A232437: Numbers whose square is expressible in only one way as x^2+xy+y^2, with x and y > 0.

The programs for A232437, the canonical program `A232437.P68544861243217390` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A232437 has offset 1).

The definition of A232437 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4712 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A232437.P13747562695981230710

`eq[2, A319986(n+1)%4]+1`
-/

namespace A232437.P13747562695981230710
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A319986 (n + 1)) 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A232437.P13747562695981230710

namespace A232437

/-- `eq[2, A319986(n+1)%4]+1` -/
def P13747562695981230710.Spec : Prop :=
  ∀ n, (P13747562695981230710.a n : ℤ) = A232437 (n + 1)

end A232437

/-! ## A232437.P6238832534711830622

`eq[A040005(n), A387908(n)]`
-/

namespace A232437.P6238832534711830622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040005 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387908 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A232437.P6238832534711830622

namespace A232437

/-- `eq[A040005(n), A387908(n)]` -/
def P6238832534711830622.Spec : Prop :=
  ∀ n, (P6238832534711830622.a n : ℤ) = A232437 (n + 1)

end A232437

/-! ## A232437.P12624597421143769628

`eq[2, A319986(A028310(n))%4]`
-/

namespace A232437.P12624597421143769628
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A319986 (A028310 n).toNat) 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A232437.P12624597421143769628

namespace A232437

/-- `eq[2, A319986(A028310(n))%4]` -/
def P12624597421143769628.Spec : Prop :=
  ∀ n, (P12624597421143769628.a n : ℤ) = A232437 (n + 1)

end A232437

/-! ## A232437.P7752278758410120500

`eq[A161826(n+1), A387908(n)]`
-/

namespace A232437.P7752278758410120500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161826 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387908 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A232437.P7752278758410120500

namespace A232437

/-- `eq[A161826(n+1), A387908(n)]` -/
def P7752278758410120500.Spec : Prop :=
  ∀ n, (P7752278758410120500.a n : ℤ) = A232437 (n + 1)

end A232437

/-! ## A232437.P68544861243217390

`eq[2, A000005(A248909(n+1))]+1`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A232437

/-- `eq[2, A000005(A248909(n+1))]+1` -/
def P68544861243217390.Spec : Prop :=
  ∀ n, (P68544861243217390.a n : ℤ) = A232437 (n + 1)

theorem P68544861243217390.correct : P68544861243217390.Spec := by
  intro n
  simp only [A232437, Nat.add_sub_cancel]

end A232437

/-! ## A232437.P9515412384907841590

`eq[2, A319986(A000007(n)+n)%4]`
-/

namespace A232437.P9515412384907841590
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A319986 (A000007 n + (n : ℤ)).toNat) 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A232437.P9515412384907841590

namespace A232437

/-- `eq[2, A319986(A000007(n)+n)%4]` -/
def P9515412384907841590.Spec : Prop :=
  ∀ n, (P9515412384907841590.a n : ℤ) = A232437 (n + 1)

end A232437

/-! ## A232437.P8617327897138877939

`eq[4, A387908(2*n)]`
-/

namespace A232437.P8617327897138877939
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387908 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A232437.P8617327897138877939

namespace A232437

/-- `eq[4, A387908(2*n)]` -/
def P8617327897138877939.Spec : Prop :=
  ∀ n, (P8617327897138877939.a n : ℤ) = A232437 (n + 1)

end A232437

/-! ## A232437.P12914635578860913123

`eq[2, A000005(A248909(A008486(n)))]`
-/

namespace A232437.P12914635578860913123
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A248909 (A008486 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A232437.P12914635578860913123

namespace A232437

/-- `eq[2, A000005(A248909(A008486(n)))]` -/
def P12914635578860913123.Spec : Prop :=
  ∀ n, (P12914635578860913123.a n : ℤ) = A232437 (n + 1)

end A232437

/-! ## A232437.P6689344116790324630

`eq[2, A000005(A248909(A008574(n)))]`
-/

namespace A232437.P6689344116790324630
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A248909 (A008574 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A232437.P6689344116790324630

namespace A232437

/-- `eq[2, A000005(A248909(A008574(n)))]` -/
def P6689344116790324630.Spec : Prop :=
  ∀ n, (P6689344116790324630.a n : ℤ) = A232437 (n + 1)

end A232437

/-! ## A232437.P14045192871436298794

`eq[1, A018783(A248909(A298036(n)))]`
-/

namespace A232437.P14045192871436298794
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018783 (A248909 (A298036 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A232437.P14045192871436298794

namespace A232437

/-- `eq[1, A018783(A248909(A298036(n)))]` -/
def P14045192871436298794.Spec : Prop :=
  ∀ n, (P14045192871436298794.a n : ℤ) = A232437 (n + 1)

end A232437

/-! ## A232437.P4325023238019350452

`eq[3, dr(A000203((n+1)²))]+1`
-/

namespace A232437.P4325023238019350452
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A000203 ((n + 1) ^ 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A232437.P4325023238019350452

namespace A232437

/-- `eq[3, dr(A000203((n+1)²))]+1` -/
def P4325023238019350452.Spec : Prop :=
  ∀ n, (P4325023238019350452.a n : ℤ) = A232437 (n + 1)

end A232437

/-! ## A232437.P1371006548715564765

`eq[2, A119395(A093411(n)²)]`
-/

namespace A232437.P1371006548715564765
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119395 (A093411 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A232437.P1371006548715564765

namespace A232437

/-- `eq[2, A119395(A093411(n)²)]` -/
def P1371006548715564765.Spec : Prop :=
  ∀ n, (P1371006548715564765.a n : ℤ) = A232437 (n + 1)

end A232437

/-! ## A232437.P16078896258543337798

`eq[2, A119963(A217220(n²))]`
-/

namespace A232437.P16078896258543337798
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119963 (A217220 (n ^ 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A232437.P16078896258543337798

namespace A232437

/-- `eq[2, A119963(A217220(n²))]` -/
def P16078896258543337798.Spec : Prop :=
  ∀ n, (P16078896258543337798.a n : ℤ) = A232437 (n + 1)

end A232437

/-!
# A232438: Squares or double-squares that are the sum of two distinct nonzero squares in exactly one way.

The programs for A232438, the canonical program `A232438.P17320831510734793226` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A232438 has offset 1).

The definition of A232438 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 534 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A232438.P17320831510734793226

`∩[A028982(n+1), A084646(n+1)]`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A232438

/-- `∩[A028982(n+1), A084646(n+1)]` -/
def P17320831510734793226.Spec : Prop :=
  ∀ n, (P17320831510734793226.a n : ℤ) = A232438 (n + 1)

theorem P17320831510734793226.correct : P17320831510734793226.Spec := by
  intro n
  simp only [A232438, Nat.add_sub_cancel]

end A232438

/-! ## A232438.P2739575129613694271

`∩[A069562(n+1), A084646(n+1)]`
-/

namespace A232438.P2739575129613694271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069562 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084646 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A232438.P2739575129613694271

namespace A232438

/-- `∩[A069562(n+1), A084646(n+1)]` -/
def P2739575129613694271.Spec : Prop :=
  ∀ n, (P2739575129613694271.a n : ℤ) = A232438 (n + 1)

end A232438

/-! ## A232438.P4369379757463832286

`∩[A084646(n+1), A371013(n+1)]`
-/

namespace A232438.P4369379757463832286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084646 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371013 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A232438.P4369379757463832286

namespace A232438

/-- `∩[A084646(n+1), A371013(n+1)]` -/
def P4369379757463832286.Spec : Prop :=
  ∀ n, (P4369379757463832286.a n : ℤ) = A232438 (n + 1)

end A232438

/-! ## A232438.P10694782526861065759

`∩[A084646(n+1), A389210(n+1)]`
-/

namespace A232438.P10694782526861065759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084646 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389210 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A232438.P10694782526861065759

namespace A232438

/-- `∩[A084646(n+1), A389210(n+1)]` -/
def P10694782526861065759.Spec : Prop :=
  ∀ n, (P10694782526861065759.a n : ℤ) = A232438 (n + 1)

end A232438

/-! ## A232438.P8087865175279485108

`∩[A085625(n+1), A083854(n)]`
-/

namespace A232438.P8087865175279485108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085625 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083854 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A232438.P8087865175279485108

namespace A232438

/-- `∩[A085625(n+1), A083854(n)]` -/
def P8087865175279485108.Spec : Prop :=
  ∀ n, (P8087865175279485108.a n : ℤ) = A232438 (n + 1)

end A232438

/-! ## A232438.P17307887323668500348

`∩[A028982(n+1), A085625(n+1)]`
-/

namespace A232438.P17307887323668500348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028982 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085625 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A232438.P17307887323668500348

namespace A232438

/-- `∩[A028982(n+1), A085625(n+1)]` -/
def P17307887323668500348.Spec : Prop :=
  ∀ n, (P17307887323668500348.a n : ℤ) = A232438 (n + 1)

end A232438

/-! ## A232438.P4574016302657057076

`∩[A069265(n+1), A085625(n+1)]`
-/

namespace A232438.P4574016302657057076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069265 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085625 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A232438.P4574016302657057076

namespace A232438

/-- `∩[A069265(n+1), A085625(n+1)]` -/
def P4574016302657057076.Spec : Prop :=
  ∀ n, (P4574016302657057076.a n : ℤ) = A232438 (n + 1)

end A232438

/-! ## A232438.P16572249140570219005

`∩[A069562(n+1), A085625(n+1)]`
-/

namespace A232438.P16572249140570219005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069562 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085625 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A232438.P16572249140570219005

namespace A232438

/-- `∩[A069562(n+1), A085625(n+1)]` -/
def P16572249140570219005.Spec : Prop :=
  ∀ n, (P16572249140570219005.a n : ℤ) = A232438 (n + 1)

end A232438

/-! ## A232438.P11440014239669331900

`∩[A084646(n+1), A085625(n+1)]`
-/

namespace A232438.P11440014239669331900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084646 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085625 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A232438.P11440014239669331900

namespace A232438

/-- `∩[A084646(n+1), A085625(n+1)]` -/
def P11440014239669331900.Spec : Prop :=
  ∀ n, (P11440014239669331900.a n : ℤ) = A232438 (n + 1)

end A232438

/-! ## A232438.P5321508074519282272

`∩[A085625(n+1), A389210(n+1)]`
-/

namespace A232438.P5321508074519282272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085625 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389210 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A232438.P5321508074519282272

namespace A232438

/-- `∩[A085625(n+1), A389210(n+1)]` -/
def P5321508074519282272.Spec : Prop :=
  ∀ n, (P5321508074519282272.a n : ℤ) = A232438 (n + 1)

end A232438

/-! ## A232438.P5595681138547610210

`∩[A084646(n+1), A155562(n+1)]`
-/

namespace A232438.P5595681138547610210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084646 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155562 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A232438.P5595681138547610210

namespace A232438

/-- `∩[A084646(n+1), A155562(n+1)]` -/
def P5595681138547610210.Spec : Prop :=
  ∀ n, (P5595681138547610210.a n : ℤ) = A232438 (n + 1)

end A232438

/-! ## A232438.P11193462435130951911

`filter[A084646(n+1), A353814(#)]`
-/

namespace A232438.P11193462435130951911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084646 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353814 (f1 j).toNat = 1) n)

end

end A232438.P11193462435130951911

namespace A232438

/-- `filter[A084646(n+1), A353814(#)]` -/
def P11193462435130951911.Spec : Prop :=
  ∀ n, P11193462435130951911.a n = A232438 (n + 1)

end A232438

/-! ## A232438.P14324557833958947183

`∩[A084646(n+1), A034023(n)]`
-/

namespace A232438.P14324557833958947183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084646 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034023 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A232438.P14324557833958947183

namespace A232438

/-- `∩[A084646(n+1), A034023(n)]` -/
def P14324557833958947183.Spec : Prop :=
  ∀ n, (P14324557833958947183.a n : ℤ) = A232438 (n + 1)

end A232438

/-! ## A232438.P10801048922131850129

`∩[A084646(n+1), A118882(n+1)]`
-/

namespace A232438.P10801048922131850129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084646 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118882 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A232438.P10801048922131850129

namespace A232438

/-- `∩[A084646(n+1), A118882(n+1)]` -/
def P10801048922131850129.Spec : Prop :=
  ∀ n, (P10801048922131850129.a n : ℤ) = A232438 (n + 1)

end A232438

/-! ## A232438.P14798412058433729561

`∩[A025302(n+1), A083854(n)]`
-/

namespace A232438.P14798412058433729561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025302 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083854 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A232438.P14798412058433729561

namespace A232438

/-- `∩[A025302(n+1), A083854(n)]` -/
def P14798412058433729561.Spec : Prop :=
  ∀ n, (P14798412058433729561.a n : ℤ) = A232438 (n + 1)

end A232438

/-! ## A232438.P9345219859598298519

`∩[A025302(n+1), A028982(n+1)]`
-/

namespace A232438.P9345219859598298519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025302 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028982 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A232438.P9345219859598298519

namespace A232438

/-- `∩[A025302(n+1), A028982(n+1)]` -/
def P9345219859598298519.Spec : Prop :=
  ∀ n, (P9345219859598298519.a n : ℤ) = A232438 (n + 1)

end A232438

/-! ## A232438.P9851658642927194841

`∩[A025302(n+1), A069265(n+1)]`
-/

namespace A232438.P9851658642927194841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025302 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069265 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A232438.P9851658642927194841

namespace A232438

/-- `∩[A025302(n+1), A069265(n+1)]` -/
def P9851658642927194841.Spec : Prop :=
  ∀ n, (P9851658642927194841.a n : ℤ) = A232438 (n + 1)

end A232438

/-! ## A232438.P4927264298276673773

`∩[A025302(n+1), A069562(n+1)]`
-/

namespace A232438.P4927264298276673773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025302 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069562 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A232438.P4927264298276673773

namespace A232438

/-- `∩[A025302(n+1), A069562(n+1)]` -/
def P4927264298276673773.Spec : Prop :=
  ∀ n, (P4927264298276673773.a n : ℤ) = A232438 (n + 1)

end A232438

/-! ## A232438.P8386291330299951797

`∩[A025302(n+1), A084646(n+1)]`
-/

namespace A232438.P8386291330299951797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025302 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084646 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A232438.P8386291330299951797

namespace A232438

/-- `∩[A025302(n+1), A084646(n+1)]` -/
def P8386291330299951797.Spec : Prop :=
  ∀ n, (P8386291330299951797.a n : ℤ) = A232438 (n + 1)

end A232438

/-! ## A232438.P2483250474647073008

`∩[A025302(n+1), A085625(n+1)]`
-/

namespace A232438.P2483250474647073008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025302 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085625 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A232438.P2483250474647073008

namespace A232438

/-- `∩[A025302(n+1), A085625(n+1)]` -/
def P2483250474647073008.Spec : Prop :=
  ∀ n, (P2483250474647073008.a n : ℤ) = A232438 (n + 1)

end A232438

/-!
# A232440: Number T(n,k) of equivalence classes of ways of placing k 5 X 5 tiles in an n X 5 rectangle under all symmetry operations of the rectangle; irregular triangle T(n,k), n>=5, 0<=k<=floor(n/5), read by rows.

The programs for A232440, there is no canonical definition to state claims against.
-/

/-! ## A232440.P12795229209249691638

`gcd(A108602(n+1), A321187(A002541(n+1)))`
-/

namespace A232440.P12795229209249691638
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A108602 (n + 1)) (A321187 (A002541 (n + 1)).toNat)

end

end A232440.P12795229209249691638

/-! ## A232440.P11925654314254372778

`A000194(A062083(n))-A285125(A064297(n+1))`
-/

namespace A232440.P11925654314254372778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A062083 n).toNat - A285125 (A064297 (n + 1)).toNat

end

end A232440.P11925654314254372778

/-! ## A232440.P13236129679354507795

`A000194(A062083(n))/A340102(A296756(n+1))`
-/

namespace A232440.P13236129679354507795
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000194 (A062083 n).toNat : ℚ) / (A340102 (A296756 (n + 1)).toNat : ℚ)

end

end A232440.P13236129679354507795

/-! ## A232440.P15634389264134157989

`gcd(A043542(A164204(n)), A296560(n+1))`
-/

namespace A232440.P15634389264134157989
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A043542 (A164204 n).toNat) (A296560 (n + 1))

end

end A232440.P15634389264134157989

/-! ## A232440.P9977532453549188929

`A066099(A100683(n)+5)`
-/

namespace A232440.P9977532453549188929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066099 (A100683 n + 5).toNat

end

end A232440.P9977532453549188929

/-!
# A232441: Sequence read from antidiagonals of rectangular array given by A(n,k) = 2^(2*k)*(Sum_{j=1..n-floor(n/2)-1} (cos(j*Pi/n))^(2*k)), rows n >= 3, columns k >= 0.

The programs for A232441, there is no canonical definition to state claims against.
-/

/-! ## A232441.P12433510937449932793

`A283297(A102473(n+2))`
-/

namespace A232441.P12433510937449932793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283297 (A102473 (n + 2)).toNat

end

end A232441.P12433510937449932793

/-! ## A232441.P12153611031701183502

`A238598(A103298(n)*A294046(n))`
-/

namespace A232441.P12153611031701183502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238598 (A103298 n * A294046 n).toNat

end

end A232441.P12153611031701183502

/-! ## A232441.P10985622696908911300

`A305962(n)+A000520(A232149(n+1))`
-/

namespace A232441.P10985622696908911300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305962 n + A000520 (A232149 (n + 1)).toNat

end

end A232441.P10985622696908911300

/-! ## A232441.P1266438935262339008

`A081604(A337884(n+2)+A280398(n+1))`
-/

namespace A232441.P1266438935262339008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081604 (A337884 (n + 2) + A280398 (n + 1)).toNat

end

end A232441.P1266438935262339008

/-! ## A232441.P15515824897427627

`A081604((A081604(n)-1)*A337884(n+2))`
-/

namespace A232441.P15515824897427627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081604 ((A081604 n - 1) * A337884 (n + 2)).toNat

end

end A232441.P15515824897427627

/-!
# A232443: Number of ways to write n = p + q - pi(q), where p and q are odd primes, and pi(q) is the number of primes not exceeding q.

The programs for A232443, there is no canonical definition to state claims against.
-/

/-! ## A232443.P5260684219207611006

`A001221(A002572(n+1)*A110566(n+1))`
-/

namespace A232443.P5260684219207611006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A002572 (n + 1) * A110566 (n + 1)).toNat

end

end A232443.P5260684219207611006

/-! ## A232443.P234369422575235463

`A001221(lcm(A002572(n+1), A110566(n+1)))`
-/

namespace A232443.P234369422575235463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Int.lcm (A002572 (n + 1)) (A110566 (n + 1)))

end

end A232443.P234369422575235463

/-! ## A232443.P2029309851090207065

`A001221(A056040(n)-A174595(n))`
-/

namespace A232443.P2029309851090207065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A056040 n - A174595 n).toNat

end

end A232443.P2029309851090207065

/-! ## A232443.P18060933851799960764

`A242753(n+1)+A216579(A027423(n))`
-/

namespace A232443.P18060933851799960764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242753 (n + 1) + A216579 (A027423 n).toNat

end

end A232443.P18060933851799960764

/-! ## A232443.P6433390428528307459

`A242753(n+1)+A216579(A225117(n))`
-/

namespace A232443.P6433390428528307459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242753 (n + 1) + A216579 (A225117 n).toNat

end

end A232443.P6433390428528307459

/-!
# A232444: Numbers n such that sigma(n) and sigma(n^2) are primes.

The programs for A232444, there is no canonical definition to state claims against.
-/

/-! ## A232444.P8378212516337440311

`record[A324892(A055638(n+1))]`
-/

namespace A232444.P8378212516337440311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324892 (A055638 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A232444.P8378212516337440311

/-! ## A232444.P10496591838986712979

`filter[A023194(n+1), A355938(#)]`
-/

namespace A232444.P10496591838986712979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023194 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355938 (f1 j).toNat = 1) n)

end

end A232444.P10496591838986712979

/-!
# A232448: Indices of Belphegor primes: numbers k such that the decimal number 1 0...0(k 0's) 666 0...0(k 0's) 1 (i.e., A232449(k)) is prime.

The programs for A232448, there is no canonical definition to state claims against.
-/

/-! ## A232448.P16584234379975381767

`A156166(n+1)-1`
-/

namespace A232448.P16584234379975381767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156166 (n + 1) - 1

end

end A232448.P16584234379975381767

/-! ## A232448.P838276688791338991

`abs(A156166(Δ[n²]-n)-1)`
-/

namespace A232448.P838276688791338991
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A156166 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat - 1|

end

end A232448.P838276688791338991

/-! ## A232448.P8087833918295276073

`record[Δ[A156166(A152271(n))]]`
-/

namespace A232448.P8087833918295276073
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156166 (A152271 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A232448.P8087833918295276073

/-! ## A232448.P10526077844971911937

`record[Δ[A156166(A158416(n))]]`
-/

namespace A232448.P10526077844971911937
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156166 (A158416 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A232448.P10526077844971911937

/-! ## A232448.P15044109630099849591

`record[Δ[A156166(A193592(n))]]`
-/

namespace A232448.P15044109630099849591
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156166 (A193592 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A232448.P15044109630099849591

/-!
# A232449: The palindromic Belphegor numbers: (10^(n+3)+666)*10^(n+1)+1.

The programs for A232449, the canonical program `A232449.P14968527568840868476` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A232449 has offset 0).

The definition of A232449 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(10^(n+3)+666)*10^(n+1)+1` (program `A232449.P14968527568840868476`, by `A232449.P14968527568840868476.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A232449.P14968527568840868476

`(10^(n+3)+666)*10^(n+1)+1`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A232449

/-- `(10^(n+3)+666)*10^(n+1)+1` -/
def P14968527568840868476.Spec : Prop :=
  ∀ n, (P14968527568840868476.a n : ℤ) = A232449 n

theorem P14968527568840868476.correct : P14968527568840868476.Spec := by
  intro n
  simp only [A232449]

end A232449

/-!
# A232451: Number of prime divisors of (10^(n+3) + 666)*10^(n+1) + 1 (see A232449) counted with multiplicity.

The programs for A232451, there is no canonical definition to state claims against.
-/

/-! ## A232451.P5939264212631136279

`A267263(xor(1, A164423(n+4)))`
-/

namespace A232451.P5939264212631136279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267263 (Int.xor 1 (A164423 (n + 4))).toNat

end

end A232451.P5939264212631136279

/-! ## A232451.P11276972976161761159

`A039996(A034839(n+4)*A051484(n+5))`
-/

namespace A232451.P11276972976161761159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039996 (A034839 (n + 4) * A051484 (n + 5)).toNat

end

end A232451.P11276972976161761159

/-! ## A232451.P12233999574754855780

`A106348(lcm(9, A153152(n)))`
-/

namespace A232451.P12233999574754855780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106348 (Int.lcm 9 (A153152 n))

end

end A232451.P12233999574754855780

/-! ## A232451.P4365244812022698855

`A007895(or(n, A337212(n+1)))`
-/

namespace A232451.P4365244812022698855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007895 (Int.lor (n : ℤ) (A337212 (n + 1))).toNat

end

end A232451.P4365244812022698855

/-! ## A232451.P7519303782571732417

`A354762(A080046(n+1))+A000120(n)`
-/

namespace A232451.P7519303782571732417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354762 (A080046 (n + 1)).toNat + A000120 n

end

end A232451.P7519303782571732417

/-!
# A232452: Number of n X n 0..2 arrays with every 0 next to a 1 and every 1 next to a 2 horizontally, vertically, diagonally or antidiagonally.

The programs for A232452, there is no canonical definition to state claims against.
-/

/-! ## A232452.P14124852624093717899

`A232459(∑[4*n]+1)`
-/

namespace A232452.P14124852624093717899
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232459 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A232452.P14124852624093717899

/-! ## A232452.P17818274899584047003

`or(1, A232459(A001844(n)))`
-/

namespace A232452.P17818274899584047003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A232459 (A001844 n).toNat)

end

end A232452.P17818274899584047003

/-! ## A232452.P10263233003142806375

`record[gcd(A003987(n), A232459(n+1))]`
-/

namespace A232452.P10263233003142806375
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003987 n) (A232459 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A232452.P10263233003142806375

/-! ## A232452.P13939637224774692119

`A036225(n)*A232459(A001844(n))`
-/

namespace A232452.P13939637224774692119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036225 n * A232459 (A001844 n).toNat

end

end A232452.P13939637224774692119

/-! ## A232452.P2970184688529168550

`A055642(n)*A232459(A001844(n))`
-/

namespace A232452.P2970184688529168550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 n * A232459 (A001844 n).toNat

end

end A232452.P2970184688529168550

/-!
# A232453: Number of n X 2 0..2 arrays with every 0 next to a 1 and every 1 next to a 2 horizontally, vertically, diagonally or antidiagonally.

The programs for A232453, the canonical program `A232453.P4984227688367656424` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A232453 has offset 1).

The definition of A232453 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 110 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A232453.P4984227688367656424

`6*a(n-1)+12*a(n-2)+39*a(n-3)` with `a(0)=3, a(1)=51, a(2)=381`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A232453

/-- `6*a(n-1)+12*a(n-2)+39*a(n-3)` -/
def P4984227688367656424.Spec : Prop :=
  ∀ n, (P4984227688367656424.a n : ℤ) = A232453 (n + 1)

theorem P4984227688367656424.correct : P4984227688367656424.Spec := by
  intro n
  simp only [A232453, Nat.add_sub_cancel]

end A232453

/-! ## A232453.P13472304767325262504

`A232459(∑[n+1]+2)`
-/

namespace A232453.P13472304767325262504
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232459 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A232453.P13472304767325262504

namespace A232453

/-- `A232459(∑[n+1]+2)` -/
def P13472304767325262504.Spec : Prop :=
  ∀ n, P13472304767325262504.a n = A232453 (n + 1)

end A232453

/-! ## A232453.P9997188853352369853

`record[gcd(A002262(n), A232459(n+2))]`
-/

namespace A232453.P9997188853352369853
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A232459 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A232453.P9997188853352369853

namespace A232453

/-- `record[gcd(A002262(n), A232459(n+2))]` -/
def P9997188853352369853.Spec : Prop :=
  ∀ n, (P9997188853352369853.a n : ℤ) = A232453 (n + 1)

end A232453

/-! ## A232453.P10232088180194949594

`record[A232459(Δ[A003453(n+5)])]`
-/

namespace A232453.P10232088180194949594
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003453 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232459 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A232453.P10232088180194949594

namespace A232453

/-- `record[A232459(Δ[A003453(n+5)])]` -/
def P10232088180194949594.Spec : Prop :=
  ∀ n, P10232088180194949594.a n = A232453 (n + 1)

end A232453

/-! ## A232453.P12947182645483402287

`record[A232459(record[A316669(n+2)])]`
-/

namespace A232453.P12947182645483402287
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316669 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232459 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A232453.P12947182645483402287

namespace A232453

/-- `record[A232459(record[A316669(n+2)])]` -/
def P12947182645483402287.Spec : Prop :=
  ∀ n, P12947182645483402287.a n = A232453 (n + 1)

end A232453

/-!
# A232454: Number of nX3 0..2 arrays with every 0 next to a 1 and every 1 next to a 2 horizontally, vertically, diagonally or antidiagonally.

The programs for A232454, there is no canonical definition to state claims against.
-/

/-! ## A232454.P17607823137821049463

`A232459(∑[n+2]+4)`
-/

namespace A232454.P17607823137821049463
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232459 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A232454.P17607823137821049463

/-! ## A232454.P1272431895099439802

`or(1, A232459(A167614(n+1)))`
-/

namespace A232454.P1272431895099439802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A232459 (A167614 (n + 1)).toNat)

end

end A232454.P1272431895099439802

/-! ## A232454.P5013275627337819141

`A232459(A167614(n+1))+A185284(n)`
-/

namespace A232454.P5013275627337819141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232459 (A167614 (n + 1)).toNat + A185284 n

end

end A232454.P5013275627337819141

/-! ## A232454.P1223801444565558057

`A014722(n)*A232459(A167614(n+1))`
-/

namespace A232454.P1223801444565558057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014722 n * A232459 (A167614 (n + 1)).toNat

end

end A232454.P1223801444565558057

/-! ## A232454.P7205221589258873658

`A232459(A167614(n+1))%A203783(n+1)`
-/

namespace A232454.P7205221589258873658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A232459 (A167614 (n + 1)).toNat) (A203783 (n + 1))

end

end A232454.P7205221589258873658

/-!
# A232455: Number of nX4 0..2 arrays with every 0 next to a 1 and every 1 next to a 2 horizontally, vertically, diagonally or antidiagonally.

The programs for A232455, there is no canonical definition to state claims against.
-/

/-! ## A232455.P10948727078202625052

`A232459(A374004(n+1))`
-/

namespace A232455.P10948727078202625052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232459 (A374004 (n + 1)).toNat

end

end A232455.P10948727078202625052

/-! ## A232455.P8034176848651165613

`A232459(A141214(n)+7)`
-/

namespace A232455.P8034176848651165613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232459 (A141214 n + 7).toNat

end

end A232455.P8034176848651165613

/-! ## A232455.P11584620662222356176

`A232459(A052905(n)+9)`
-/

namespace A232455.P11584620662222356176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232459 (A052905 n + 9).toNat

end

end A232455.P11584620662222356176

/-! ## A232455.P18172020158549931422

`A232459(A055999(n)+10)`
-/

namespace A232455.P18172020158549931422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232459 (A055999 n + 10).toNat

end

end A232455.P18172020158549931422

/-! ## A232455.P13595410036530950751

`A232459(A167614(n+2)+1)`
-/

namespace A232455.P13595410036530950751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232459 (A167614 (n + 2) + 1).toNat

end

end A232455.P13595410036530950751

/-!
# A232456: Number of nX5 0..2 arrays with every 0 next to a 1 and every 1 next to a 2 horizontally, vertically, diagonally or antidiagonally.

The programs for A232456, there is no canonical definition to state claims against.
-/

/-! ## A232456.P2263882269539307891

`A232459(A374005(n+1))`
-/

namespace A232456.P2263882269539307891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232459 (A374005 (n + 1)).toNat

end

end A232456.P2263882269539307891

/-! ## A232456.P13516053103873855165

`A232459(A155212(n)+13)`
-/

namespace A232456.P13516053103873855165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232459 (A155212 n + 13).toNat

end

end A232456.P13516053103873855165

/-! ## A232456.P15663574512809646988

`A232459(eq[7, A066657(n)])`
-/

namespace A232456.P15663574512809646988
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232459 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A232456.P15663574512809646988

/-! ## A232456.P4437967765641462784

`A232459(eq[6, A131818(n+1)])`
-/

namespace A232456.P4437967765641462784
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232459 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A232456.P4437967765641462784

/-! ## A232456.P13214457158707344409

`A232459(eq[4, A193592(n)])`
-/

namespace A232456.P13214457158707344409
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232459 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A232456.P13214457158707344409

/-!
# A232457: Number of nX6 0..2 arrays with every 0 next to a 1 and every 1 next to a 2 horizontally, vertically, diagonally or antidiagonally.

The programs for A232457, there is no canonical definition to state claims against.
-/

/-! ## A232457.P1540371489198315332

`A232459(A374007(n+1))`
-/

namespace A232457.P1540371489198315332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232459 (A374007 (n + 1)).toNat

end

end A232457.P1540371489198315332

/-! ## A232457.P16459981681391427228

`A232459(eq[3, A219347(n)])`
-/

namespace A232457.P16459981681391427228
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232459 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A232457.P16459981681391427228

/-! ## A232457.P16005883666304428079

`A232459(A055999(n+3)+1)`
-/

namespace A232457.P16005883666304428079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232459 (A055999 (n + 3) + 1).toNat

end

end A232457.P16005883666304428079

/-! ## A232457.P13389964768768575496

`A232459(Δ[Δ[A006504(n+1)]])`
-/

namespace A232457.P13389964768768575496
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006504 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232459 (f1 (n + 1) - f1 n).toNat

end

end A232457.P13389964768768575496

/-!
# A232458: Number of nX7 0..2 arrays with every 0 next to a 1 and every 1 next to a 2 horizontally, vertically, diagonally or antidiagonally.

The programs for A232458, there is no canonical definition to state claims against.
-/

/-! ## A232458.P3560084802336406869

`A232459(eq[4, A219347(n)])`
-/

namespace A232458.P3560084802336406869
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232459 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A232458.P3560084802336406869

/-! ## A232458.P4073975828904081444

`A232459(eq[6, A193592(n)])`
-/

namespace A232458.P4073975828904081444
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232459 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A232458.P4073975828904081444

/-! ## A232458.P3954604781911304370

`A232459(eq[7, A200370(n+1)])`
-/

namespace A232458.P3954604781911304370
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232459 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A232458.P3954604781911304370

/-!
# A232460: a(n) = 2^(2^n) - 5.

The programs for A232460, the canonical program `A232460.P12962232100748788068` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A232460 has offset 0).

The definition of A232460 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2^2^n-5` (program `A232460.P12962232100748788068`, by `A232460.P12962232100748788068.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A232460.P12962232100748788068

`2^2^n-5`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A232460

/-- `2^2^n-5` -/
def P12962232100748788068.Spec : Prop :=
  ∀ n, P12962232100748788068.a n = A232460 n

theorem P12962232100748788068.correct : P12962232100748788068.Spec := by
  intro n
  simp only [A232460]

end A232460

/-! ## A232460.P9690895819103328623

`A168616(2^n)`
-/

namespace A232460.P9690895819103328623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168616 (2 ^ n)

end

end A232460.P9690895819103328623

namespace A232460

/-- `A168616(2^n)` -/
def P9690895819103328623.Spec : Prop :=
  ∀ n, P9690895819103328623.a n = A232460 n

end A232460

/-! ## A232460.P16404107282692454987

`record[A228540(n)-4]`
-/

namespace A232460.P16404107282692454987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228540 n - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A232460.P16404107282692454987

namespace A232460

/-- `record[A228540(n)-4]` -/
def P16404107282692454987.Spec : Prop :=
  ∀ n, P16404107282692454987.a n = A232460 n

end A232460

/-! ## A232460.P13880277331092794058

`record[A329050(n)-5]`
-/

namespace A232460.P13880277331092794058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329050 n - 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A232460.P13880277331092794058

namespace A232460

/-- `record[A329050(n)-5]` -/
def P13880277331092794058.Spec : Prop :=
  ∀ n, P13880277331092794058.a n = A232460 n

end A232460

/-! ## A232460.P4397078085467003684

`record[A225546(n+2)-5]`
-/

namespace A232460.P4397078085467003684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225546 (n + 2) - 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A232460.P4397078085467003684

namespace A232460

/-- `record[A225546(n+2)-5]` -/
def P4397078085467003684.Spec : Prop :=
  ∀ n, P4397078085467003684.a n = A232460 n

end A232460

/-!
# A232463: Number of ways to write n = p + q - pi(q), where p and q are odd primes not exceeding n, and pi(q) is the number of primes not exceeding q.

The programs for A232463, there is no canonical definition to state claims against.
-/

/-! ## A232463.P11255188498880397526

`A305079(A323529(3*n+1))`
-/

namespace A232463.P11255188498880397526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305079 (A323529 (3 * n + 1)).toNat

end

end A232463.P11255188498880397526

/-!
# A232464: Number of compositions of n avoiding the pattern 1111.

The programs for A232464, there is no canonical definition to state claims against.
-/

/-! ## A232464.P9718621199762149767

`A243081(∑[n+4]+2)`
-/

namespace A232464.P9718621199762149767
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243081 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A232464.P9718621199762149767

/-! ## A232464.P2025557986541578722

`round((4*A243081(A167499(n)+A008585(n))+1)/4)`
-/

namespace A232464.P2025557986541578722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((4 * A243081 (A167499 n + A008585 n).toNat + 1 : ℚ) / 4)

end

end A232464.P2025557986541578722

/-! ## A232464.P15202677168176136008

`A243081(A167499(n)+A008585(n))%A007689(n)`
-/

namespace A232464.P15202677168176136008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A243081 (A167499 n + A008585 n).toNat) (A007689 n)

end

end A232464.P15202677168176136008

/-! ## A232464.P16035064111159522206

`A243081(A167499(n)+A008585(n))+A000007(n+1)`
-/

namespace A232464.P16035064111159522206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243081 (A167499 n + A008585 n).toNat + A000007 (n + 1)

end

end A232464.P16035064111159522206

/-! ## A232464.P3192687445163702393

`A243081(A167499(n)+A008585(n))+A000035(2*n)`
-/

namespace A232464.P3192687445163702393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243081 (A167499 n + A008585 n).toNat + A000035 (2 * n)

end

end A232464.P3192687445163702393

/-! ## A232464.P8030150439337999409

`A033999(2*n)*A243081(A167499(n)+A008585(n))`
-/

namespace A232464.P8030150439337999409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (2 * n) * A243081 (A167499 n + A008585 n).toNat

end

end A232464.P8030150439337999409

/-! ## A232464.P10972869795203569390

`A001511(2*n+1)*A243081(A167499(n)+A008585(n))`
-/

namespace A232464.P10972869795203569390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (2 * n + 1) * A243081 (A167499 n + A008585 n).toNat

end

end A232464.P10972869795203569390

/-! ## A232464.P9135367636561830567

`A243081(A167499(n)+A008585(n))^A014963(4*n+2)`
-/

namespace A232464.P9135367636561830567
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A243081 (A167499 n + A008585 n).toNat : ℚ) ^ (A014963 (4 * n + 2) : ℤ)

end

end A232464.P9135367636561830567

/-! ## A232464.P12462210586969060529

`A243081(A167499(n)+A008585(n))+A007814(12*n+5)`
-/

namespace A232464.P12462210586969060529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243081 (A167499 n + A008585 n).toNat + A007814 (12 * n + 5)

end

end A232464.P12462210586969060529

/-! ## A232464.P8826657730529023816

`(2*n+1-A005843(n))*A243081(A167499(n)+A008585(n))`
-/

namespace A232464.P8826657730529023816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * n + 1 : ℤ) - A005843 n) * A243081 (A167499 n + A008585 n).toNat

end

end A232464.P8826657730529023816

/-! ## A232464.P11978639079067306172

`A008683(6*n+3)²!*A243081(A167499(n)+A008585(n))`
-/

namespace A232464.P11978639079067306172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A008683 (6 * n + 3) ^ 2).toNat : ℤ) * A243081 (A167499 n + A008585 n).toNat

end

end A232464.P11978639079067306172

/-!
# A232465: a(n) = |{0 < k <= n/2: prime(k) + prime(n-k) - 1 is prime}|.

The programs for A232465, there is no canonical definition to state claims against.
-/

/-! ## A232465.P14626928118987039235

`A004273(n)%A190321(A023515(n+11))`
-/

namespace A232465.P14626928118987039235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004273 n) (A190321 (A023515 (n + 11)).toNat)

end

end A232465.P14626928118987039235

/-! ## A232465.P12830442745483250097

`A332677(∑[A000041(A004525(n))])`
-/

namespace A232465.P12830442745483250097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A004525 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332677 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A232465.P12830442745483250097

/-! ## A232465.P14691930907670223761

`A332677(∑[A023030(A004525(n))])`
-/

namespace A232465.P14691930907670223761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023030 ((A004525 n).toNat + 10)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332677 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A232465.P14691930907670223761

/-! ## A232465.P14969380762976724378

`A004273(n)%A073093(A017996(n))`
-/

namespace A232465.P14969380762976724378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004273 n) (A073093 (A017996 n).toNat)

end

end A232465.P14969380762976724378

/-! ## A232465.P5265883360286016141

`A029244(∑[A253641(A034345(n+1))])`
-/

namespace A232465.P5265883360286016141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253641 (A034345 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029244 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A232465.P5265883360286016141

/-!
# A232466: Number of dependent sets with largest element n.

The programs for A232466, there is no canonical definition to state claims against.
-/

/-! ## A232466.P17116548170469889849

`Δ[A371791(n)]`
-/

namespace A232466.P17116548170469889849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371791 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A232466.P17116548170469889849

/-! ## A232466.P12410151570554478239

`Δ[2^n-A371792(n)]`
-/

namespace A232466.P12410151570554478239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A371792 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A232466.P12410151570554478239

/-! ## A232466.P14176503939596778057

`2^n-A371793(n+1)`
-/

namespace A232466.P14176503939596778057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A371793 (n + 1)

end

end A232466.P14176503939596778057

/-! ## A232466.P17797493524619559549

`A000079(n)-Δ[A371792(n)]`
-/

namespace A232466.P17797493524619559549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371792 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n - (f1 (n + 1) - f1 n)

end

end A232466.P17797493524619559549

/-! ## A232466.P2071066882484429117

`A155559(n)%Δ[A371792(n)]`
-/

namespace A232466.P2071066882484429117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371792 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A155559 n) (f1 (n + 1) - f1 n)

end

end A232466.P2071066882484429117

/-!
# A232468: Row sums of A232467.

The programs for A232468, there is no canonical definition to state claims against.
-/

/-! ## A232468.P5576528465361116713

`A341392(n)+A000720(A011781(n))`
-/

namespace A232468.P5576528465361116713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341392 n + A000720 (A011781 n).toNat

end

end A232468.P5576528465361116713

/-!
# A232469: Leading column of A232467.

The programs for A232469, there is no canonical definition to state claims against.
-/

/-! ## A232469.P9922588678892561829

`A232467(∑[n])`
-/

namespace A232469.P9922588678892561829
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232467 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A232469.P9922588678892561829

/-!
# A232470: Second column of A232467.

The programs for A232470, there is no canonical definition to state claims against.
-/

/-! ## A232470.P14224563193986709168

`record[A232467(comp[∑[n]])]`
-/

namespace A232470.P14224563193986709168
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232467 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A232470.P14224563193986709168

/-!
# A232471: Main diagonal of A232467.

The programs for A232471, there is no canonical definition to state claims against.
-/

/-! ## A232471.P15242349706710049624

`A232467(∑[n]+n)`
-/

namespace A232471.P15242349706710049624
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232467 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A232471.P15242349706710049624

/-!
# A232472: 2-Fubini numbers.

The programs for A232472, there is no canonical definition to state claims against.
-/

/-! ## A232472.P12195804636209184610

`2*A069321(n+1)`
-/

namespace A232472.P12195804636209184610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A069321 (n + 1)

end

end A232472.P12195804636209184610

/-! ## A232472.P10272716473619426151

`A000670(n+2)-A000670(n+1)`
-/

namespace A232472.P10272716473619426151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000670 (n + 2) - A000670 (n + 1)

end

end A232472.P10272716473619426151

/-! ## A232472.P18352208031049124525

`Δ[Δ[A217389(n)]]`
-/

namespace A232472.P18352208031049124525
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217389 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A232472.P18352208031049124525

/-! ## A232472.P604407340367223658

`Δ[record[A122101(n)]]`
-/

namespace A232472.P604407340367223658
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122101 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A232472.P604407340367223658

/-! ## A232472.P8730156498939682708

`Δ[record[A154921(n)]]`
-/

namespace A232472.P8730156498939682708
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154921 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A232472.P8730156498939682708

/-! ## A232472.P6576478657836248127

`Δ[record[A355666(n)]]`
-/

namespace A232472.P6576478657836248127
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355666 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A232472.P6576478657836248127

/-! ## A232472.P1867970184638510338

`Δ[record[A357868(n)]]`
-/

namespace A232472.P1867970184638510338
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357868 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A232472.P1867970184638510338

/-! ## A232472.P2107785853056571854

`Δ[A000670(n+1)]`
-/

namespace A232472.P2107785853056571854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000670 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A232472.P2107785853056571854

/-! ## A232472.P11855885108384027414

`Δ[A052856(n+1)]`
-/

namespace A232472.P11855885108384027414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052856 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A232472.P11855885108384027414

/-! ## A232472.P1507990945538439156

`Δ[A052875(n+1)]`
-/

namespace A232472.P1507990945538439156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052875 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A232472.P1507990945538439156

/-!
# A232473: 3-Fubini numbers.

The programs for A232473, there is no canonical definition to state claims against.
-/

/-! ## A232473.P1374141860594668804

`Δ[A274273(n+1)]`
-/

namespace A232473.P1374141860594668804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274273 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A232473.P1374141860594668804

/-! ## A232473.P996874691701035394

`Δ[A343583(n+1)]`
-/

namespace A232473.P996874691701035394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343583 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A232473.P996874691701035394

/-! ## A232473.P16518925272531199810

`A343583(n+2)-A343583(n+1)`
-/

namespace A232473.P16518925272531199810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343583 (n + 2) - A343583 (n + 1)

end

end A232473.P16518925272531199810

/-! ## A232473.P10845211709105829106

`Δ[A069321(n+1)+A052876(n+1)]`
-/

namespace A232473.P10845211709105829106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069321 (n + 1) + A052876 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A232473.P10845211709105829106

/-! ## A232473.P11978936599192423621

`Δ[A000670(n+2)-A000629(n+1)]`
-/

namespace A232473.P11978936599192423621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000670 (n + 2) - A000629 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A232473.P11978936599192423621

/-! ## A232473.P3189484544076132009

`Δ[A052875(n+2)-A000629(n+1)]`
-/

namespace A232473.P3189484544076132009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052875 (n + 2) - A000629 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A232473.P3189484544076132009

/-! ## A232473.P7790009655230833388

`Δ[A000670(n+2)-A076726(n+1)]`
-/

namespace A232473.P7790009655230833388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000670 (n + 2) - A076726 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A232473.P7790009655230833388

/-! ## A232473.P7576424078321323214

`Δ[A052875(n+2)-A076726(n+1)]`
-/

namespace A232473.P7576424078321323214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052875 (n + 2) - A076726 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A232473.P7576424078321323214

/-! ## A232473.P7939201118636028606

`Δ[Δ[A000670(n+1)]-A000670(n+1)]`
-/

namespace A232473.P7939201118636028606
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000670 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - A000670 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A232473.P7939201118636028606

/-! ## A232473.P12947944960178906339

`Δ[Δ[A052856(n+1)]-A052856(n+1)]`
-/

namespace A232473.P12947944960178906339
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052856 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - A052856 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A232473.P12947944960178906339

/-!
# A232474: 4-Fubini numbers.

The programs for A232474, there is no canonical definition to state claims against.
-/

/-! ## A232474.P6770845799125494603

`A219374(A020752(n+1))`
-/

namespace A232474.P6770845799125494603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219374 (A020752 (n + 1)).toNat

end

end A232474.P6770845799125494603

/-! ## A232474.P2119650272736831808

`A219374(A141214(n)+7)`
-/

namespace A232474.P2119650272736831808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219374 (A141214 n + 7).toNat

end

end A232474.P2119650272736831808

/-!
# A232475: Number of preferential arrangements of n labeled elements when at least k=4 elements per rank are required.

The programs for A232475, there is no canonical definition to state claims against.
-/

/-! ## A232475.P8056723842584685749

`A004525(A339017(n))`
-/

namespace A232475.P8056723842584685749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A339017 n).toNat

end

end A232475.P8056723842584685749

/-! ## A232475.P3952747451445200490

`A004526(A339017(n)+1)`
-/

namespace A232475.P3952747451445200490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A339017 n + 1).toNat

end

end A232475.P3952747451445200490

/-! ## A232475.P2969711775048334768

`A057979(A339017(n)+1)`
-/

namespace A232475.P2969711775048334768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (A339017 n + 1).toNat

end

end A232475.P2969711775048334768

/-! ## A232475.P15772512634826976280

`A123108(A339017(n)+1)`
-/

namespace A232475.P15772512634826976280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A339017 n + 1).toNat

end

end A232475.P15772512634826976280

/-! ## A232475.P2933876126042843999

`A140106(A339017(n)+3)`
-/

namespace A232475.P2933876126042843999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140106 (A339017 n + 3).toNat

end

end A232475.P2933876126042843999

/-!
# A232476: Number of h-vectors of length n; equivalently, number of M-sequences of length n.

The programs for A232476, there is no canonical definition to state claims against.
-/

/-! ## A232476.P14426042814106772693

`A257639(2*A007835(n+1))`
-/

namespace A232476.P14426042814106772693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257639 (2 * A007835 (n + 1)).toNat

end

end A232476.P14426042814106772693

/-! ## A232476.P6724288185410217521

`A003056(or(A025835(n), A219355(n)))`
-/

namespace A232476.P6724288185410217521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (Int.lor (A025835 n) (A219355 n)).toNat

end

end A232476.P6724288185410217521

/-! ## A232476.P14889106311738686309

`A003056(or(A161739(n), A219355(n)))`
-/

namespace A232476.P14889106311738686309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (Int.lor (A161739 n) (A219355 n)).toNat

end

end A232476.P14889106311738686309

/-! ## A232476.P5735075790024898398

`A003056(or(A219355(n), A344245(n)))`
-/

namespace A232476.P5735075790024898398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (Int.lor (A219355 n) (A344245 (n + 20))).toNat

end

end A232476.P5735075790024898398

/-! ## A232476.P10310287469092055547

`A003056(xor(A025835(n), A219355(n)))`
-/

namespace A232476.P10310287469092055547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (Int.xor (A025835 n) (A219355 n)).toNat

end

end A232476.P10310287469092055547

/-!
# A232477: Number of h-vectors of length n satisfying the weak Lefschetz property.

The programs for A232477, there is no canonical definition to state claims against.
-/

/-! ## A232477.P14927286917800783019

`A336836(A336801(2*n+1))+A232478(n+1)`
-/

namespace A232477.P14927286917800783019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336836 (A336801 (2 * n + 1)).toNat + A232478 (n + 1)

end

end A232477.P14927286917800783019

/-! ## A232477.P13354829335752389729

`A336358(A001524(n+1))`
-/

namespace A232477.P13354829335752389729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336358 (A001524 (n + 1)).toNat

end

end A232477.P13354829335752389729

/-!
# A232478: Number of unimodal h-vectors of length n.

The programs for A232478, there is no canonical definition to state claims against.
-/

/-! ## A232478.P110321676484418884

`A232477(n+1)+A010051(A022177(n))`
-/

namespace A232478.P110321676484418884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232477 (n + 1) + A010051 (A022177 n).toNat

end

end A232478.P110321676484418884

/-! ## A232478.P10147887922015428626

`A232477(n+1)+A044941(A000079(n))`
-/

namespace A232478.P10147887922015428626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232477 (n + 1) + A044941 (A000079 n).toNat

end

end A232478.P10147887922015428626

/-! ## A232478.P13240808095574053948

`A232477(n+1)+A044941(A219676(n))`
-/

namespace A232478.P13240808095574053948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232477 (n + 1) + A044941 (A219676 n).toNat

end

end A232478.P13240808095574053948

/-! ## A232478.P16119609953764729796

`A232477(n+1)+A044941(A220051(n))`
-/

namespace A232478.P16119609953764729796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232477 (n + 1) + A044941 (A220051 n).toNat

end

end A232478.P16119609953764729796

/-! ## A232478.P8669915520944808682

`A324824(A157641(n))+A232477(n+1)`
-/

namespace A232478.P8669915520944808682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324824 (A157641 n).toNat + A232477 (n + 1)

end

end A232478.P8669915520944808682

/-!
# A232479: Number of symmetric h-vectors of length n.

The programs for A232479, there is no canonical definition to state claims against.
-/

/-! ## A232479.P11274094882109396127

`A008619(A035376(n+1)+floor(n/2))`
-/

namespace A232479.P11274094882109396127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A035376 (n + 1) + ⌊(n : ℚ) / 2⌋).toNat

end

end A232479.P11274094882109396127

/-! ## A232479.P13420918090037680919

`ceil((A035376(n+1)+A008619(n))/2)`
-/

namespace A232479.P13420918090037680919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A035376 (n + 1) + A008619 n : ℚ) / 2⌉

end

end A232479.P13420918090037680919

/-! ## A232479.P7290838429311708291

`floor((A035376(n+1)+A004524(n))/2)+1`
-/

namespace A232479.P7290838429311708291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A035376 (n + 1) + A004524 n : ℚ) / 2⌋ + 1

end

end A232479.P7290838429311708291

/-! ## A232479.P362466971175369725

`A123108(A035376(n+1)+floor(n/2)+2)`
-/

namespace A232479.P362466971175369725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A035376 (n + 1) + (⌊(n : ℚ) / 2⌋ + 2)).toNat

end

end A232479.P362466971175369725

/-! ## A232479.P11331392218185138287

`A110654(A035376(n+1)+A008619(n))`
-/

namespace A232479.P11331392218185138287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A035376 (n + 1) + A008619 n).toNat

end

end A232479.P11331392218185138287

/-!
# A232481: The function l_4(n) arising in the enumeration of h-vectors.

The programs for A232481, there is no canonical definition to state claims against.
-/

/-! ## A232481.P12155027862020170416

`A002024(A008620(A214727(n)))-A008620(n)`
-/

namespace A232481.P12155027862020170416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A008620 (A214727 n).toNat).toNat - A008620 n

end

end A232481.P12155027862020170416

/-! ## A232481.P5367302238419489871

`floor(sqrt(A096581(n+1))/5)`
-/

namespace A232481.P5367302238419489871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (A096581 (n + 1) : ℝ) / 5⌋

end

end A232481.P5367302238419489871

/-! ## A232481.P8785801175261391273

`A232482(A005496(n)+1)`
-/

namespace A232481.P8785801175261391273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232482 (A005496 n + 1).toNat

end

end A232481.P8785801175261391273

/-! ## A232481.P4669917952611671611

`A232482(A043320(n+1)+1)`
-/

namespace A232481.P4669917952611671611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232482 (A043320 (n + 1) + 1).toNat

end

end A232481.P4669917952611671611

/-! ## A232481.P2722972065829644503

`A232482(A187829(n+1)+1)`
-/

namespace A232481.P2722972065829644503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232482 (A187829 (n + 1) + 1).toNat

end

end A232481.P2722972065829644503

/-!
# A232482: The function l_5(n) arising in the enumeration of h-vectors.

The programs for A232482, there is no canonical definition to state claims against.
-/

/-! ## A232482.P17871965164034634524

`∑[A070098(∑[A185328(2*n+1)]+1)]`
-/

namespace A232482.P17871965164034634524
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185328 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070098 (∑ j ∈ Finset.range (n + 1), f2 j + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A232482.P17871965164034634524

/-! ## A232482.P491210495167536950

`round(A332579(3*n+1)/A184397(n+1))`
-/

namespace A232482.P491210495167536950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A332579 (3 * n + 1) : ℚ) / (A184397 (n + 1) : ℚ))

end

end A232482.P491210495167536950

/-! ## A232482.P4367959165879401732

`floor(A361858(3*n+1)/A250120(2*(n+2)))`
-/

namespace A232482.P4367959165879401732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A361858 (3 * n + 1) : ℚ) / (A250120 (2 * (n + 2)) : ℚ)⌋

end

end A232482.P4367959165879401732

/-! ## A232482.P6125542030882560535

`floor(A101268(n+1)/A160755(3*n+4))`
-/

namespace A232482.P6125542030882560535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A101268 (n + 1) : ℚ) / (A160755 (3 * n + 4) : ℚ)⌋

end

end A232482.P6125542030882560535

/-! ## A232482.P16184434475352066669

`floor(A379720(3*n+4)/A000217(2*n+3))`
-/

namespace A232482.P16184434475352066669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A379720 (3 * n + 4) : ℚ) / (A000217 (2 * n + 3) : ℚ)⌋

end

end A232482.P16184434475352066669

/-!
# A232485: a(1) = 3; thereafter a(n+1) = a(n) + product of digits of a(n).

The programs for A232485, the canonical program `A232485.P5428179291815119424` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A232485 has offset 1).

The definition of A232485 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A232485.P5428179291815119424

`A230099(a(n-1))` with `a(0)=3`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A232485

/-- `A230099(a(n-1))` -/
def P5428179291815119424.Spec : Prop :=
  ∀ n, P5428179291815119424.a n = A232485 (n + 1)

theorem P5428179291815119424.correct : P5428179291815119424.Spec := by
  intro n
  simp only [A232485, Nat.add_sub_cancel]

end A232485

/-!
# A232486: a(1) = 3; thereafter a(n+1) = a(n) + product of nonzero digits of a(n).

The programs for A232486, there is no canonical definition to state claims against.
-/

/-! ## A232486.P3900121098958527675

`A232485(n+1)+A063108(n+2)-A230102(n+1)`
-/

namespace A232486.P3900121098958527675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232485 (n + 1) + (A063108 (n + 2) - A230102 (n + 1))

end

end A232486.P3900121098958527675

/-! ## A232486.P7592983331255934797

`A063114(a(n-1))` with `a(0)=3`
-/

namespace A232486.P7592983331255934797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A063114 (a (n - 1)).toNat

end

end A232486.P7592983331255934797

/-! ## A232486.P10150604019327039458

`A051801(a(n-1))+a(n-1)` with `a(0)=3`
-/

namespace A232486.P10150604019327039458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A051801 (a (n - 1)).toNat + a (n - 1)

end

end A232486.P10150604019327039458

/-! ## A232486.P9838394552155244052

`a(n-1)+sqrt(A352598(a(n-1)))` with `a(0)=3`
-/

namespace A232486.P9838394552155244052
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [3] fun n a =>
  a (n - 1) + Real.sqrt (A352598 (SequenceMachineLib.roundAway (a (n - 1))).toNat : ℝ)

end

end A232486.P9838394552155244052

/-! ## A232486.P17201012925052726754

`A007954(A004719(a(n-1)))+a(n-1)` with `a(0)=3`
-/

namespace A232486.P17201012925052726754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A007954 (A004719 (a (n - 1)).toNat).toNat + a (n - 1)

end

end A232486.P17201012925052726754

/-!
# A232487: a(1) = 5; a(n+1) = a(n) + product of nonzero digits of a(n).

The programs for A232487, there is no canonical definition to state claims against.
-/

/-! ## A232487.P6440284744576841110

`A063114(a(n-1))` with `a(0)=5`
-/

namespace A232487.P6440284744576841110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  A063114 (a (n - 1)).toNat

end

end A232487.P6440284744576841110

/-! ## A232487.P16067436716909581361

`A051801(a(n-1))+a(n-1)` with `a(0)=5`
-/

namespace A232487.P16067436716909581361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  A051801 (a (n - 1)).toNat + a (n - 1)

end

end A232487.P16067436716909581361

/-! ## A232487.P13918900767868523495

`a(n-1)+sqrt(A352598(a(n-1)))` with `a(0)=5`
-/

namespace A232487.P13918900767868523495
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [5] fun n a =>
  a (n - 1) + Real.sqrt (A352598 (SequenceMachineLib.roundAway (a (n - 1))).toNat : ℝ)

end

end A232487.P13918900767868523495

/-! ## A232487.P17302471717935267425

`A007954(A004719(a(n-1)))+a(n-1)` with `a(0)=5`
-/

namespace A232487.P17302471717935267425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  A007954 (A004719 (a (n - 1)).toNat).toNat + a (n - 1)

end

end A232487.P17302471717935267425

/-! ## A232487.P7125359230082795624

`record[A063114(a(A175126(n)))]` with `a(0)=5`
-/

namespace A232487.P7125359230082795624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [5] fun n f1 =>
  A063114 (f1 (A175126 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A232487.P7125359230082795624

/-!
# A232488: a(1) = 7; a(n+1) = a(n) + product of nonzero digits of a(n).

The programs for A232488, there is no canonical definition to state claims against.
-/

/-! ## A232488.P18289912144675790325

`A232486(n+2)+Δ[A232487(n+3)]`
-/

namespace A232488.P18289912144675790325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232487 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232486 (n + 2) + (f1 (n + 1) - f1 n)

end

end A232488.P18289912144675790325

/-! ## A232488.P17939537233047621784

`A063114(a(n-1))` with `a(0)=7`
-/

namespace A232488.P17939537233047621784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [7] fun n a =>
  A063114 (a (n - 1)).toNat

end

end A232488.P17939537233047621784

/-! ## A232488.P17269106104315900467

`A051801(a(n-1))+a(n-1)` with `a(0)=7`
-/

namespace A232488.P17269106104315900467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [7] fun n a =>
  A051801 (a (n - 1)).toNat + a (n - 1)

end

end A232488.P17269106104315900467

/-! ## A232488.P513063497685428142

`a(n-1)+sqrt(A352598(a(n-1)))` with `a(0)=7`
-/

namespace A232488.P513063497685428142
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [7] fun n a =>
  a (n - 1) + Real.sqrt (A352598 (SequenceMachineLib.roundAway (a (n - 1))).toNat : ℝ)

end

end A232488.P513063497685428142

/-! ## A232488.P12205908288594322983

`A007954(A004719(a(n-1)))+a(n-1)` with `a(0)=7`
-/

namespace A232488.P12205908288594322983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [7] fun n a =>
  A007954 (A004719 (a (n - 1)).toNat).toNat + a (n - 1)

end

end A232488.P12205908288594322983

/-!
# A232489: Numbers k such that k + (sum of digits of k) is a power of 10.

The programs for A232489, there is no canonical definition to state claims against.
-/

/-! ## A232489.P16134983828908735399

`record[A243075(A221671(n+1))]`
-/

namespace A232489.P16134983828908735399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243075 (A221671 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A232489.P16134983828908735399

/-! ## A232489.P13127558161716143855

`record[A243075(A243020(n+1))]`
-/

namespace A232489.P13127558161716143855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243075 (A243020 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A232489.P13127558161716143855

/-! ## A232489.P15090841142839864657

`A243075(∑[A243046(n+1)!])`
-/

namespace A232489.P15090841142839864657
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A243046 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243075 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A232489.P15090841142839864657

/-! ## A232489.P18289919012809551407

`record[gcd(A185226(n), A243075(n+1))]`
-/

namespace A232489.P18289919012809551407
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A185226 n) (A243075 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A232489.P18289919012809551407

/-! ## A232489.P5241839466654244147

`record[A243075(A001222(2*n+1)+1)]`
-/

namespace A232489.P5241839466654244147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243075 (A001222 (2 * n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A232489.P5241839466654244147

/-!
# A232490: Numbers k such that 10^k is of the form m + sum of digits of m.

The programs for A232490, there is no canonical definition to state claims against.
-/

/-! ## A232490.P8924902087780865806

`comp[A232491(n+1)-1]+1`
-/

namespace A232490.P8924902087780865806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232491 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A232490.P8924902087780865806

/-! ## A232490.P3689445338837754880

`record[A102675(A051022(n))+1+n]`
-/

namespace A232490.P3689445338837754880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102675 (A051022 n).toNat + 1 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A232490.P3689445338837754880

/-! ## A232490.P15993145956169146694

`floor((A017317(n)+record[A073731(n)])/10)`
-/

namespace A232490.P15993145956169146694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073731 (n + 10)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A017317 n + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / 10⌋

end

end A232490.P15993145956169146694

/-! ## A232490.P11086020076859053619

`A059995(A017317(n)+record[A073731(n)])`
-/

namespace A232490.P11086020076859053619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073731 (n + 10)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059995 (A017317 n + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A232490.P11086020076859053619

/-! ## A232490.P9244972098738327551

`lt[1, A376446(n+5)]+1`
-/

namespace A232490.P9244972098738327551
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376446 (n + 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A232490.P9244972098738327551

/-! ## A232490.P13933453619574605465

`lt[A109707(2*n), A004181(n)]`
-/

namespace A232490.P13933453619574605465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109707 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004181 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A232490.P13933453619574605465

/-! ## A232490.P16059597142157444157

`lt[2, A061816(A265525(3*n+2))]`
-/

namespace A232490.P16059597142157444157
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061816 (A265525 (3 * n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A232490.P16059597142157444157

/-! ## A232490.P3135321699452525665

`A052414(n+2)%A292690(A051682(n+1))`
-/

namespace A232490.P3135321699452525665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A052414 (n + 2)) (A292690 (A051682 (n + 1)).toNat)

end

end A232490.P3135321699452525665

/-!
# A232491: Numbers k such that 10^k is not of the form m + sum of digits of m.

The programs for A232491, there is no canonical definition to state claims against.
-/

/-! ## A232491.P17118646702658808758

`A246146(A308845(n))+A017341(n)`
-/

namespace A232491.P17118646702658808758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246146 (A308845 n).toNat + A017341 n

end

end A232491.P17118646702658808758

/-! ## A232491.P18204524193435050526

`A017353(n)-A010060(A036617(n))`
-/

namespace A232491.P18204524193435050526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017353 n - A010060 (A036617 n).toNat

end

end A232491.P18204524193435050526

/-! ## A232491.P11102885099973316920

`A017353(n)-A266848(A102120(n))`
-/

namespace A232491.P11102885099973316920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017353 n - A266848 (A102120 n).toNat

end

end A232491.P11102885099973316920

/-! ## A232491.P3216028041190774339

`A017365(n)-A000034(A005783(n+1))`
-/

namespace A232491.P3216028041190774339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017365 n - A000034 (A005783 (n + 1)).toNat

end

end A232491.P3216028041190774339

/-! ## A232491.P12409493455859264512

`A330067(A004767(n))-A029101(A029101(n))`
-/

namespace A232491.P12409493455859264512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330067 (A004767 n).toNat - A029101 (A029101 n).toNat

end

end A232491.P12409493455859264512

/-!
# A232492: Number of symmetry classes of 3-eared triangulations of an n-gon.

The programs for A232492, there is no canonical definition to state claims against.
-/

/-! ## A232492.P4305274856906455561

`A065712(∑[A126366(n)])`
-/

namespace A232492.P4305274856906455561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126366 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065712 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A232492.P4305274856906455561

/-! ## A232492.P7748980726261823299

`A027376(n)-A124767(A001287(n))`
-/

namespace A232492.P7748980726261823299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027376 n - A124767 (A001287 (n + 10)).toNat

end

end A232492.P7748980726261823299

/-! ## A232492.P16220241412093128274

`A309296(n+1)+A085405(A323598(2*(n+2)))`
-/

namespace A232492.P16220241412093128274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309296 (n + 1) + A085405 (A323598 (2 * (n + 2))).toNat

end

end A232492.P16220241412093128274

/-!
# A232493: If n mod 2 = 0 then 2^n*3^(n-1)+2^(n+1)*3^(n/2-1) otherwise 2^n*3^(n-1)+2^n*3^((n-1)/2).

The programs for A232493, the canonical program `A232493.P17536983822345669617` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A232493 has offset 0).

The definition of A232493 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 130 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A232493.P17536983822345669617

`(A254006(n)+A122007(n+1))*A000079(n)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A232493

/-- `(A254006(n)+A122007(n+1))*A000079(n)` -/
def P17536983822345669617.Spec : Prop :=
  ∀ n, P17536983822345669617.a n = A232493 n

theorem P17536983822345669617.correct : P17536983822345669617.Spec := by
  intro n
  simp only [A232493]

end A232493

/-! ## A232493.P17263420225178890865

`(A254006(n)+A122007(n+1))*∑[A011782(n)]`
-/

namespace A232493.P17263420225178890865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A254006 n + A122007 (n + 1)) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A232493.P17263420225178890865

namespace A232493

/-- `(A254006(n)+A122007(n+1))*∑[A011782(n)]` -/
def P17263420225178890865.Spec : Prop :=
  ∀ n, P17263420225178890865.a n = A232493 n

end A232493

/-! ## A232493.P17596617388395555421

`(A254006(n)+A122007(n+1))*Δ[A000051(n)]`
-/

namespace A232493.P17596617388395555421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A254006 n + A122007 (n + 1)) * (f1 (n + 1) - f1 n)

end

end A232493.P17596617388395555421

namespace A232493

/-- `(A254006(n)+A122007(n+1))*Δ[A000051(n)]` -/
def P17596617388395555421.Spec : Prop :=
  ∀ n, P17596617388395555421.a n = A232493 n

theorem P17596617388395555421.correct : P17596617388395555421.Spec := by
  intro n
  simp only [A232493, Nat.add_sub_cancel, A232493.P17596617388395555421.f1, A232493.P17596617388395555421.a, A232493.P17536983822345669617.a, A000051, A000051.P14067217022188782580.a, A000079, A000079.P10855139691139572931.a, A122007, A122007.P7515375071099048773.a, A254006, A254006.P8582869198979241148.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A232493

/-! ## A232493.P13366155168253594332

`(A254006(n)+A122007(n+1))*Δ[A000225(n)]`
-/

namespace A232493.P13366155168253594332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A254006 n + A122007 (n + 1)) * (f1 (n + 1) - f1 n)

end

end A232493.P13366155168253594332

namespace A232493

/-- `(A254006(n)+A122007(n+1))*Δ[A000225(n)]` -/
def P13366155168253594332.Spec : Prop :=
  ∀ n, P13366155168253594332.a n = A232493 n

theorem P13366155168253594332.correct : P13366155168253594332.Spec := by
  intro n
  simp only [A232493, Nat.add_sub_cancel, A232493.P13366155168253594332.f1, A232493.P13366155168253594332.a, A232493.P17536983822345669617.a, A000079, A000079.P10855139691139572931.a, A000225, A000225.P6535533121115206393.a, A122007, A122007.P7515375071099048773.a, A254006, A254006.P8582869198979241148.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A232493

/-! ## A232493.P7350540605378004887

`(A254006(n)+A122007(n+1))*record[A130321(n)]`
-/

namespace A232493.P7350540605378004887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130321 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A254006 n + A122007 (n + 1)) * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A232493.P7350540605378004887

namespace A232493

/-- `(A254006(n)+A122007(n+1))*record[A130321(n)]` -/
def P7350540605378004887.Spec : Prop :=
  ∀ n, P7350540605378004887.a n = A232493 n

end A232493

/-! ## A232493.P5959970499644745956

`(A254006(n)+A122007(n+1))*A011782(n+1)`
-/

namespace A232493.P5959970499644745956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A254006 n + A122007 (n + 1)) * A011782 (n + 1)

end

end A232493.P5959970499644745956

namespace A232493

/-- `(A254006(n)+A122007(n+1))*A011782(n+1)` -/
def P5959970499644745956.Spec : Prop :=
  ∀ n, P5959970499644745956.a n = A232493 n

end A232493

/-! ## A232493.P9215695361691641844

`(A254006(n)+A122007(n+1))*A017910(2*n)`
-/

namespace A232493.P9215695361691641844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A254006 n + A122007 (n + 1)) * A017910 (2 * n)

end

end A232493.P9215695361691641844

namespace A232493

/-- `(A254006(n)+A122007(n+1))*A017910(2*n)` -/
def P9215695361691641844.Spec : Prop :=
  ∀ n, P9215695361691641844.a n = A232493 n

end A232493

/-! ## A232493.P352142407397606729

`(A254006(n)+A122007(n+1))*A060546(2*n)`
-/

namespace A232493.P352142407397606729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A254006 n + A122007 (n + 1)) * A060546 (2 * n)

end

end A232493.P352142407397606729

namespace A232493

/-- `(A254006(n)+A122007(n+1))*A060546(2*n)` -/
def P352142407397606729.Spec : Prop :=
  ∀ n, P352142407397606729.a n = A232493 n

end A232493

/-!
# A232494: If n mod 2 = 0 then 2^(n-1)*(3^n+3*3^(n/2)-2) otherwise 2^(n-1)*(3^n+5*3^((n-1)/2)-2).

The programs for A232494, the canonical program `A232494.P6247191816924031342` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A232494 has offset 0).

The definition of A232494 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 129 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A232494.P6247191816924031342

`A232493(n)+2*a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A232494

/-- `A232493(n)+2*a(n-1)` -/
def P6247191816924031342.Spec : Prop :=
  ∀ n, P6247191816924031342.a n = A232494 n

theorem P6247191816924031342.correct : P6247191816924031342.Spec := by
  intro n
  simp only [A232494]

end A232494

/-! ## A232494.P14019715902286043067

`∑[A254006(n)+A122007(n+1)]*A000079(n)`
-/

namespace A232494.P14019715902286043067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254006 n + A122007 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A000079 n

end

end A232494.P14019715902286043067

namespace A232494

/-- `∑[A254006(n)+A122007(n+1)]*A000079(n)` -/
def P14019715902286043067.Spec : Prop :=
  ∀ n, P14019715902286043067.a n = A232494 n

end A232494

/-! ## A232494.P16486377708230216934

`∑[A254006(n)+A122007(n+1)]*A011782(n+1)`
-/

namespace A232494.P16486377708230216934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254006 n + A122007 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A011782 (n + 1)

end

end A232494.P16486377708230216934

namespace A232494

/-- `∑[A254006(n)+A122007(n+1)]*A011782(n+1)` -/
def P16486377708230216934.Spec : Prop :=
  ∀ n, P16486377708230216934.a n = A232494 n

end A232494

/-! ## A232494.P2719306151132469123

`∑[A254006(n)+A122007(n+1)]*A034008(n+2)`
-/

namespace A232494.P2719306151132469123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254006 n + A122007 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A034008 (n + 2)

end

end A232494.P2719306151132469123

namespace A232494

/-- `∑[A254006(n)+A122007(n+1)]*A034008(n+2)` -/
def P2719306151132469123.Spec : Prop :=
  ∀ n, P2719306151132469123.a n = A232494 n

end A232494

/-!
# A232495: a(n) = 9*n^3/2 - 21*n^2/2 + 8*n - 4.

The programs for A232495, the canonical program `A232495.P6182302967584083734` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A232495 has offset 2).

The definition of A232495 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A232495.P6182302967584083734

`9*(n+2)^3/2-21*(n+2)²/2+8*(n+2)-4`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A232495

/-- `9*(n+2)^3/2-21*(n+2)²/2+8*(n+2)-4` -/
def P6182302967584083734.Spec : Prop :=
  ∀ n, P6182302967584083734.a n = (A232495 (n + 2) : ℚ)

end A232495

/-! ## A232495.P14851968947229468144

`(A006002(3*(n+1))-6)/3`
-/

namespace A232495.P14851968947229468144
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006002 (3 * (n + 1)) - 6 : ℚ) / 3

end

end A232495.P14851968947229468144

namespace A232495

/-- `(A006002(3*(n+1))-6)/3` -/
def P14851968947229468144.Spec : Prop :=
  ∀ n, P14851968947229468144.a n = (A232495 (n + 2) : ℚ)

end A232495

/-! ## A232495.P14163334995413759200

`∑[A005449(3*n+2)-A153881(n+1)]`
-/

namespace A232495.P14163334995413759200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005449 (3 * n + 2) - A153881 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A232495.P14163334995413759200

namespace A232495

/-- `∑[A005449(3*n+2)-A153881(n+1)]` -/
def P14163334995413759200.Spec : Prop :=
  ∀ n, P14163334995413759200.a n = A232495 (n + 2)

end A232495

/-! ## A232495.P9357522642719099197

`A223718(3*(n+1))%A104249(A104249(n+1))`
-/

namespace A232495.P9357522642719099197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A223718 (3 * (n + 1))) (A104249 (A104249 (n + 1)).toNat)

end

end A232495.P9357522642719099197

namespace A232495

/-- `A223718(3*(n+1))%A104249(A104249(n+1))` -/
def P9357522642719099197.Spec : Prop :=
  ∀ n, P9357522642719099197.a n = A232495 (n + 2)

end A232495

/-! ## A232495.P5108799704918750606

`A023444(∑[A104249(3*n+2)])`
-/

namespace A232495.P5108799704918750606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104249 (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A232495.P5108799704918750606

namespace A232495

/-- `A023444(∑[A104249(3*n+2)])` -/
def P5108799704918750606.Spec : Prop :=
  ∀ n, P5108799704918750606.a n = A232495 (n + 2)

end A232495

/-!
# A232496: Triangle read by rows: T(n,k) (n >= 2, 1 <= k <= n-1) = Euclidean distance degree of variety of n X n matrices of rank <= k.

The programs for A232496, there is no canonical definition to state claims against.
-/

/-! ## A232496.P14758518704139134931

`A065361(A184294(n+1)+1)`
-/

namespace A232496.P14758518704139134931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065361 (A184294 (n + 1) + 1).toNat

end

end A232496.P14758518704139134931

/-!
# A232497: Number of tilings of a 4 X n rectangle using L and Z tetrominoes.

The programs for A232497, there is no canonical definition to state claims against.
-/

/-! ## A232497.P18266607669477105108

`A005843(A354453(a(n-1)+n))` with `a(0)=1, a(1)=0`
-/

namespace A232497.P18266607669477105108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A005843 (A354453 (a (n - 1) + (n : ℤ)).toNat).toNat

end

end A232497.P18266607669477105108

/-! ## A232497.P9301435502101051460

`A048264(A018825(a(n-1)+1)+1)` with `a(0)=1, a(1)=0`
-/

namespace A232497.P9301435502101051460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A048264 (A018825 (a (n - 1) + 1).toNat + 1).toNat

end

end A232497.P9301435502101051460

/-! ## A232497.P4483803847309827386

`A374633(A188920(n)+A144959(n))`
-/

namespace A232497.P4483803847309827386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374633 (A188920 n + A144959 n).toNat

end

end A232497.P4483803847309827386

/-!
# A232498: Primes in the tribonacci-like sequence, A020992.

The programs for A232498, there is no canonical definition to state claims against.
-/

/-! ## A232498.P13815174862241216983

`A020992(A233554(n+1))`
-/

namespace A232498.P13815174862241216983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020992 (A233554 (n + 1)).toNat

end

end A232498.P13815174862241216983

/-! ## A232498.P11942123190778791719

`p?[a(n-1)+a(n-2)+a(n-3)]` with `a(0)=1, a(1)=0, a(2)=2, a(3)=1`
-/

namespace A232498.P11942123190778791719
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 2, 1] fun n f1 =>
  f1 (n - 1) + (f1 (n - 2) + f1 (n - 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A232498.P11942123190778791719

/-!
# A232499: Number of unit squares, aligned with a Cartesian grid, completely within the first quadrant of a circle centered at the origin ordered by increasing radius.

The programs for A232499, the canonical program `A232499.P12591052901024712855` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A232499 has offset 1).

The definition of A232499 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2691 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A232499.P12591052901024712855

`record[A237526(abs(2-n))]`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A232499

/-- `record[A237526(abs(2-n))]` -/
def P12591052901024712855.Spec : Prop :=
  ∀ n, P12591052901024712855.a n = A232499 (n + 1)

theorem P12591052901024712855.correct : P12591052901024712855.Spec := by
  intro n
  simp only [A232499, Nat.add_sub_cancel]

end A232499

/-! ## A232499.P15870382494740792910

`lt[0, char[A237526(n+2)]]`
-/

namespace A232499.P15870382494740792910
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237526 (n + 2)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A232499.P15870382494740792910

namespace A232499

/-- `lt[0, char[A237526(n+2)]]` -/
def P15870382494740792910.Spec : Prop :=
  ∀ n, (P15870382494740792910.a n : ℤ) = A232499 (n + 1)

end A232499

/-! ## A232499.P11141097374248514297

`A237526(A000404(n+1))`
-/

namespace A232499.P11141097374248514297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237526 (A000404 (n + 1)).toNat

end

end A232499.P11141097374248514297

namespace A232499

/-- `A237526(A000404(n+1))` -/
def P11141097374248514297.Spec : Prop :=
  ∀ n, P11141097374248514297.a n = A232499 (n + 1)

end A232499

/-! ## A232499.P11940533453474702738

`∑[A063725(sqrt(A135784(n+1)))]`
-/

namespace A232499.P11940533453474702738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063725 (SequenceMachineLib.roundAway (Real.sqrt (A135784 (n + 1) : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A232499.P11940533453474702738

namespace A232499

/-- `∑[A063725(sqrt(A135784(n+1)))]` -/
def P11940533453474702738.Spec : Prop :=
  ∀ n, P11940533453474702738.a n = A232499 (n + 1)

end A232499

/-! ## A232499.P15579136622612388603

`record[A237526(n+4)%A237520(n+1)]`
-/

namespace A232499.P15579136622612388603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A237526 (n + 4)) (A237520 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A232499.P15579136622612388603

namespace A232499

/-- `record[A237526(n+4)%A237520(n+1)]` -/
def P15579136622612388603.Spec : Prop :=
  ∀ n, P15579136622612388603.a n = A232499 (n + 1)

end A232499

/-! ## A232499.P18154459140089265690

`∑[A063725(A135787(n+1)/A135786(n+1))]`
-/

namespace A232499.P18154459140089265690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063725 (SequenceMachineLib.roundAway ((A135787 (n + 1) : ℚ) / (A135786 (n + 1) : ℚ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A232499.P18154459140089265690

namespace A232499

/-- `∑[A063725(A135787(n+1)/A135786(n+1))]` -/
def P18154459140089265690.Spec : Prop :=
  ∀ n, P18154459140089265690.a n = A232499 (n + 1)

end A232499

/-! ## A232499.P4925344106843651261

`∑[A229904(n+1)]`
-/

namespace A232499.P4925344106843651261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229904 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A232499.P4925344106843651261

namespace A232499

/-- `∑[A229904(n+1)]` -/
def P4925344106843651261.Spec : Prop :=
  ∀ n, P4925344106843651261.a n = A232499 (n + 1)

end A232499

/-! ## A232499.P15205360959594060409

`record[a(n-2)-A235141(n+1)]` with `a(0)=1, a(1)=0`
-/

namespace A232499.P15205360959594060409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n f1 =>
  f1 (n - 2) - A235141 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A232499.P15205360959594060409

namespace A232499

/-- `record[a(n-2)-A235141(n+1)]` -/
def P15205360959594060409.Spec : Prop :=
  ∀ n, P15205360959594060409.a n = A232499 (n + 1)

end A232499

/-! ## A232499.P7936001912145066095

`∑[A063725(A339273(n+1))]`
-/

namespace A232499.P7936001912145066095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063725 (A339273 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A232499.P7936001912145066095

namespace A232499

/-- `∑[A063725(A339273(n+1))]` -/
def P7936001912145066095.Spec : Prop :=
  ∀ n, P7936001912145066095.a n = A232499 (n + 1)

end A232499

/-! ## A232499.P3206562081131709924

`∑[A063725(A336725(∑[n+2]))]`
-/

namespace A232499.P3206562081131709924
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063725 (A336725 (∑ j ∈ Finset.range (n + 1), f2 j)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A232499.P3206562081131709924

namespace A232499

/-- `∑[A063725(A336725(∑[n+2]))]` -/
def P3206562081131709924.Spec : Prop :=
  ∀ n, P3206562081131709924.a n = A232499 (n + 1)

end A232499

