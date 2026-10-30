import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C005
import Seq.B000.C007
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C042
import Seq.B000.C045
import Seq.B000.C046
import Seq.B000.C047
import Seq.B000.C049
import Seq.B000.C050
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C011
import Seq.B001.C013
import Seq.B001.C014
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C003
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
import Seq.Opaque.C023
import Seq.Opaque.C024
import SequenceMachineLib.Triangle

/-!
# A392700: Nonprime numbers k such that if the least prime index of k is x, then all subsequent prime indices are 2x.

The programs for A392700, there is no canonical definition to state claims against.
-/

/-! ## A392700.P5644634563744005853

`filter[A392371(n+1), A005171(#)]`
-/

namespace A392700.P5644634563744005853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392371 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A392700.P5644634563744005853

/-! ## A392700.P18393015531874568876

`∩[A267114(n+1), A392371(n+1)]`
-/

namespace A392700.P18393015531874568876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267114 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392371 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A392700.P18393015531874568876

/-! ## A392700.P14398530790472166491

`∩[A018252(n+1), A392371(n+1)]`
-/

namespace A392700.P14398530790472166491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392371 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A392700.P14398530790472166491

/-! ## A392700.P15815225402242846999

`∩[A030231(n+1), A392371(n+1)]`
-/

namespace A392700.P15815225402242846999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030231 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392371 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A392700.P15815225402242846999

/-! ## A392700.P4869817904392793889

`∩[A141468(n+1), A392371(n+1)]`
-/

namespace A392700.P4869817904392793889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392371 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A392700.P4869817904392793889

/-!
# A392702: Number of integer compositions of n that are the 0-prepended first sums of some finite sequence of distinct integers.

The programs for A392702, there is no canonical definition to state claims against.
-/

/-! ## A392702.P18287174461113251044

`A334236(A331717(n)+A293235(3*n+1))`
-/

namespace A392702.P18287174461113251044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334236 (A331717 n + A293235 (3 * n + 1)).toNat

end

end A392702.P18287174461113251044

/-!
# A392705: Negated least odd-indexed part in row n of A391983 (the 0-based partial alternating sums of the n-th composition in standard order).

The programs for A392705, there is no canonical definition to state claims against.
-/

/-! ## A392705.P14694479150671188896

`1-A392706(A004755(n+1))`
-/

namespace A392705.P14694479150671188896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A392706 (A004755 (n + 1)).toNat

end

end A392705.P14694479150671188896

/-! ## A392705.P11903687988079039012

`A394092(A135381(n+1))`
-/

namespace A392705.P11903687988079039012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394092 (A135381 (n + 1)).toNat

end

end A392705.P11903687988079039012

/-! ## A392705.P4068240578346206694

`A394092(A135382(n+2))`
-/

namespace A392705.P4068240578346206694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394092 (A135382 (n + 2)).toNat

end

end A392705.P4068240578346206694

/-! ## A392705.P2171213895454725279

`A002260(A193868(3*n+4))*A394092(n+1)`
-/

namespace A392705.P2171213895454725279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A193868 (3 * n + 4)).toNat * A394092 (n + 1)

end

end A392705.P2171213895454725279

/-! ## A392705.P13199494436774617742

`A062157(A001567(n+1))*A394092(n+1)`
-/

namespace A392705.P13199494436774617742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 (A001567 (n + 1)).toNat * A394092 (n + 1)

end

end A392705.P13199494436774617742

/-!
# A392706: Least even-indexed part in row n of A391983 (the 0-based partial alternating sums of the n-th composition in standard order).

The programs for A392706, there is no canonical definition to state claims against.
-/

/-! ## A392706.P6939248213651696445

`A065120(n+1)-A010054(A354473(n+1))`
-/

namespace A392706.P6939248213651696445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065120 (n + 1) - A010054 (A354473 (n + 1)).toNat

end

end A392706.P6939248213651696445

/-! ## A392706.P1311653816829457083

`C(A065120(n+1), A206487(A088865(n+1)))`
-/

namespace A392706.P1311653816829457083
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A065120 (n + 1)).toNat (A206487 (A088865 (n + 1)).toNat).toNat

end

end A392706.P1311653816829457083

/-! ## A392706.P9942473376206981985

`A065120(n+1)%A343516(A375295(3*n+2))`
-/

namespace A392706.P9942473376206981985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A065120 (n + 1)) (A343516 (A375295 (3 * n + 2)).toNat)

end

end A392706.P9942473376206981985

/-! ## A392706.P4240949270071854829

`A358194(A308995(n+1))+A290255(n+1)`
-/

namespace A392706.P4240949270071854829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358194 (A308995 (n + 1)).toNat + A290255 (n + 1)

end

end A392706.P4240949270071854829

/-! ## A392706.P11604358926071674284

`A290255(n+1)+A249351(A238550(n+2))`
-/

namespace A392706.P11604358926071674284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290255 (n + 1) + A249351 (A238550 (n + 2)).toNat

end

end A392706.P11604358926071674284

/-!
# A392707: Numbers whose prime indices have strictly increasing 0-based partial alternating sums.

The programs for A392707, there is no canonical definition to state claims against.
-/

/-! ## A392707.P9492669668109009234

`∩[A392694(n+1), A392695(n+1)]`
-/

namespace A392707.P9492669668109009234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392694 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392695 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A392707.P9492669668109009234

/-! ## A392707.P12696865891467505334

`∪[A358601(n)+1, A325460(n+1)]`
-/

namespace A392707.P12696865891467505334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358601 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325460 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A392707.P12696865891467505334

/-! ## A392707.P14981450450833238992

`∪[∑[A007582(n)²], A325460(n+1)]`
-/

namespace A392707.P14981450450833238992
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007582 n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325460 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

end

end A392707.P14981450450833238992

/-! ## A392707.P17292992662621107708

`∪[A007088(A182835(3*(n+1))), A325460(n+1)]`
-/

namespace A392707.P17292992662621107708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A182835 (3 * (n + 1))).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325460 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A392707.P17292992662621107708

/-! ## A392707.P13080243467976641368

`∪[A007088(A377982(3*n+4)), A325460(n+1)]`
-/

namespace A392707.P13080243467976641368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A377982 (3 * n + 4)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325460 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A392707.P13080243467976641368

/-! ## A392707.P14438610055884033084

`∪[A279424(n+1)+A007633(n+1), A325460(n+1)]`
-/

namespace A392707.P14438610055884033084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279424 (n + 1) + A007633 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325460 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A392707.P14438610055884033084

/-! ## A392707.P3727200240756187193

`∪[A346295(n)+A002313(2*n+1), A325460(n+1)]`
-/

namespace A392707.P3727200240756187193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346295 n + A002313 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325460 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A392707.P3727200240756187193

/-! ## A392707.P9564982834660181770

`∩[A320340(n+1), A325362(n+1)]`
-/

namespace A392707.P9564982834660181770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320340 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325362 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A392707.P9564982834660181770

/-! ## A392707.P10973564925074692307

`∩[A325362(n+1), A392695(n+1)]`
-/

namespace A392707.P10973564925074692307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325362 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392695 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A392707.P10973564925074692307

/-! ## A392707.P6481052391598631181

`∩[A325362(n+1), A392697(n+1)]`
-/

namespace A392707.P6481052391598631181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325362 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392697 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A392707.P6481052391598631181

/-!
# A392708: Numbers k such that the 0-based partial alternating sums of the k-th composition in standard order are all distinct.

The programs for A392708, there is no canonical definition to state claims against.
-/

/-! ## A392708.P4170515877894286219

`eq[A104106(A103324(n+1)), A333381(n)]`
-/

namespace A392708.P4170515877894286219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104106 (A103324 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333381 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A392708.P4170515877894286219

/-! ## A392708.P1118483181044531900

`lt[A124764(n), A124766(A054429(2*n+1))]`
-/

namespace A392708.P1118483181044531900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124764 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124766 (A054429 (2 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A392708.P1118483181044531900

/-! ## A392708.P17869778848174753981

`lt[A013632(A331570(n)), A104248(2*n+1)]`
-/

namespace A392708.P17869778848174753981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013632 (A331570 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104248 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A392708.P17869778848174753981

/-!
# A392710: Numbers whose prime indices are the first sums of some finite weakly increasing sequence of integers > 1.

The programs for A392710, there is no canonical definition to state claims against.
-/

/-! ## A392710.P16879005763842108449

`filter[A342144(n+1), A162289(#)]`
-/

namespace A392710.P16879005763842108449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342144 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A162289 (f1 j).toNat = 1) n)

end

end A392710.P16879005763842108449

/-! ## A392710.P2554862769874335664

`filter[A342144(n+1), A373139(#)]`
-/

namespace A392710.P2554862769874335664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342144 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373139 (f1 j).toNat = 1) n)

end

end A392710.P2554862769874335664

/-! ## A392710.P5756616094235945228

`∩[A007775(n+1), A342144(n+1)]`
-/

namespace A392710.P5756616094235945228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007775 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342144 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A392710.P5756616094235945228

/-! ## A392710.P10242863970085154562

`∩[A229829(n+1), A342144(n+1)]`
-/

namespace A392710.P10242863970085154562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229829 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342144 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A392710.P10242863970085154562

/-! ## A392710.P15850004892501335664

`∩[A342144(n+1), A373140(n+1)]`
-/

namespace A392710.P15850004892501335664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373140 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A392710.P15850004892501335664

/-!
# A392711: Irregular triangle read by rows where row n lists the 0-based partial alternating sums of the reversed prime indices of n.

The programs for A392711, there is no canonical definition to state claims against.
-/

/-! ## A392711.P11624941880720036980

`A193510(A258371(n+1))`
-/

namespace A392711.P11624941880720036980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193510 (A258371 (n + 1)).toNat

end

end A392711.P11624941880720036980

/-! ## A392711.P14771647187369137598

`A196563(A221351(2*n+1)+15)`
-/

namespace A392711.P14771647187369137598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196563 (A221351 (2 * n + 1) + 15).toNat

end

end A392711.P14771647187369137598

/-! ## A392711.P6512056437197662045

`A304045(n+1)%Δ[A209727(2*n+1)]`
-/

namespace A392711.P6512056437197662045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209727 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A304045 (n + 1)) (f1 (n + 1) - f1 n)

end

end A392711.P6512056437197662045

/-! ## A392711.P4672100981438445642

`A002234(3*n+1)%row(A323460(n+3))`
-/

namespace A392711.P4672100981438445642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002234 (3 * n + 1)) (SequenceMachineLib.triRow (A323460 (n + 3)).toNat : ℤ)

end

end A392711.P4672100981438445642

/-! ## A392711.P14639987651911916736

`A000217(n)%A000030(A383495(n))`
-/

namespace A392711.P14639987651911916736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000217 n) (A000030 (A383495 n).toNat)

end

end A392711.P14639987651911916736

/-!
# A392712: Numbers k such that the trimmed partial alternating sums of the k-th composition in standard order are all equal.

The programs for A392712, there is no canonical definition to state claims against.
-/

/-! ## A392712.P9701380131956063999

`record[and(A103149(n+1), A172309(n))]`
-/

namespace A392712.P9701380131956063999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A103149 (n + 1)) (A172309 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A392712.P9701380131956063999

/-! ## A392712.P5399930549878035914

`lt[A221381(A002151(n+1)), A387381(n)]`
-/

namespace A392712.P5399930549878035914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221381 (A002151 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387381 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A392712.P5399930549878035914

/-! ## A392712.P4525150221576187206

`A224980(A393314(n))`
-/

namespace A392712.P4525150221576187206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224980 (A393314 n).toNat

end

end A392712.P4525150221576187206

/-! ## A392712.P14704298240778567131

`eq[n, A265329(A182839(n))]`
-/

namespace A392712.P14704298240778567131
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265329 (A182839 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A392712.P14704298240778567131

/-! ## A392712.P15794398154271942974

`eq[A257696(n), A380891(n)]`
-/

namespace A392712.P15794398154271942974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257696 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380891 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A392712.P15794398154271942974

/-!
# A392716: Expansion of e.g.f. Series_Reversion(x - (exp(x) - 1)^3).

The programs for A392716, there is no canonical definition to state claims against.
-/

/-! ## A392716.P2521352112641432411

`A000720(xor(3, A053549(n+1)))`
-/

namespace A392716.P2521352112641432411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (Int.xor 3 (A053549 (n + 1))).toNat

end

end A392716.P2521352112641432411

/-!
# A392717: Expansion of e.g.f. Series_Reversion(exp(x) - 1 - x^4).

The programs for A392717, there is no canonical definition to state claims against.
-/

/-! ## A392717.P14364285863150958020

`A289358(A082732(n+1))*A318360(n+1)`
-/

namespace A392717.P14364285863150958020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289358 (A082732 (n + 1)).toNat * A318360 (n + 1)

end

end A392717.P14364285863150958020

/-!
# A392718: Expansion of e.g.f. Series_Reversion(x - log(1+x)^4).

The programs for A392718, there is no canonical definition to state claims against.
-/

/-! ## A392718.P11714109015074944244

`A001205(n)*A114327(A002030(n))`
-/

namespace A392718.P11714109015074944244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001205 n * A114327 (A002030 n).toNat

end

end A392718.P11714109015074944244

/-!
# A392719: Expansion of e.g.f. Series_Reversion(1 - exp(-x) - x^3).

The programs for A392719, there is no canonical definition to state claims against.
-/

/-! ## A392719.P17150021701336165404

`A262046(n)+A065033(A001813(n))`
-/

namespace A392719.P17150021701336165404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262046 n + A065033 (A001813 n).toNat

end

end A392719.P17150021701336165404

/-!
# A392720: Expansion of e.g.f. Series_Reversion(x + log(1-x)^3).

The programs for A392720, there is no canonical definition to state claims against.
-/

/-! ## A392720.P9182332919381931415

`A264756((n+1)*A307249(n))`
-/

namespace A392720.P9182332919381931415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264756 ((n + 1 : ℤ) * A307249 n).toNat

end

end A392720.P9182332919381931415

/-!
# A392721: Expansion of e.g.f. Series_Reversion(1 - exp(-x) - x^4).

The programs for A392721, there is no canonical definition to state claims against.
-/

/-! ## A392721.P47112352949661932

`A119918(A027741(n))`
-/

namespace A392721.P47112352949661932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119918 (A027741 n).toNat

end

end A392721.P47112352949661932

/-!
# A392722: Expansion of e.g.f. Series_Reversion(x - log(1-x)^4).

The programs for A392722, there is no canonical definition to state claims against.
-/

/-! ## A392722.P3042673576078983775

`A353119(n+1)^(1+a(floor(n/2)))` with `a(0)=1`
-/

namespace A392722.P3042673576078983775
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [1] fun n a =>
  (A353119 (n + 1) : ℝ) ^ (1 + a ⌊(n : ℚ) / 2⌋.toNat)

end

end A392722.P3042673576078983775

/-! ## A392722.P9503177956363179721

`abs(A392718(n+1)^A117816(2*n+1))`
-/

namespace A392722.P9503177956363179721
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A392718 (n + 1) : ℚ) ^ (A117816 (2 * n + 1) : ℤ)|

end

end A392722.P9503177956363179721

/-!
# A392723: Expansion of e.g.f. Series_Reversion(log(1+x) - x^4).

The programs for A392723, there is no canonical definition to state claims against.
-/

/-! ## A392723.P7280790534998480397

`filter[A274783(n), A022924(#)]`
-/

namespace A392723.P7280790534998480397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274783 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A022924 (f1 j).toNat = 1) n)

end

end A392723.P7280790534998480397

/-! ## A392723.P17403939039644052063

`A306083((n+1)*a(A335472(n)))` with `a(0)=1`
-/

namespace A392723.P17403939039644052063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A306083 ((n + 1 : ℤ) * a (A335472 n).toNat).toNat

end

end A392723.P17403939039644052063

/-!
# A392724: Expansion of e.g.f. Series_Reversion(x - (exp(x) - 1)^4).

The programs for A392724, there is no canonical definition to state claims against.
-/

/-! ## A392724.P6048060079354602109

`C(A000919(n+1), A399882(n+1))`
-/

namespace A392724.P6048060079354602109
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A000919 (n + 1)).toNat (A399882 (n + 1)).toNat

end

end A392724.P6048060079354602109

/-! ## A392724.P10546158620194523764

`A008683(A001019(n))+A000919(n+1)`
-/

namespace A392724.P10546158620194523764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A001019 n).toNat + A000919 (n + 1)

end

end A392724.P10546158620194523764

/-!
# A392725: a(1) = 1; if the digit sum of |a(n)| is odd, then a(n+1) = a(n)-n, otherwise a(n+1) = a(n)+n.

The programs for A392725, there is no canonical definition to state claims against.
-/

/-! ## A392725.P877967845332452079

`A295931(A229096(n+1))-A309216(n)`
-/

namespace A392725.P877967845332452079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295931 (A229096 (n + 1)).toNat - A309216 n

end

end A392725.P877967845332452079

/-! ## A392725.P15893501258117937225

`A088529(A000230(n+4))-A309216(n)`
-/

namespace A392725.P15893501258117937225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088529 (A000230 (n + 4)).toNat - A309216 n

end

end A392725.P15893501258117937225

/-! ## A392725.P4103275823423062097

`A062157(A299282(n+4))-A309216(n)`
-/

namespace A392725.P4103275823423062097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 (A299282 (n + 4)).toNat - A309216 n

end

end A392725.P4103275823423062097

/-! ## A392725.P4174976025986671768

`A331039(A331039(2*n))-A309216(n)`
-/

namespace A392725.P4174976025986671768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331039 (A331039 (2 * n)).toNat - A309216 n

end

end A392725.P4174976025986671768

/-! ## A392725.P5007720644256975179

`A340653(A029974(3*(n+1)))-A309216(n)`
-/

namespace A392725.P5007720644256975179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340653 (A029974 (3 * (n + 1))).toNat - A309216 n

end

end A392725.P5007720644256975179

/-!
# A392726: Expansion of Sum_{k>=0} x^k / Product_{j=1..3*k} (1 - j * x).

The programs for A392726, there is no canonical definition to state claims against.
-/

/-! ## A392726.P3343221826524123161

`A357925(3*n)`
-/

namespace A392726.P3343221826524123161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357925 (3 * n)

end

end A392726.P3343221826524123161

/-!
# A392727: Expansion of Sum_{k>=0} x^(2*k) / Product_{j=1..3*k} (1 - j * x).

The programs for A392727, there is no canonical definition to state claims against.
-/

/-! ## A392727.P5941366754023449957

`A000142(a(n-1))` with `a(0)=1, a(1)=0, a(2)=1, a(3)=6, a(4)=26, a(5)=111`
-/

namespace A392727.P5941366754023449957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1, 6, 26, 111] fun n a =>
  A000142 (a (n - 1)).toNat

end

end A392727.P5941366754023449957

/-! ## A392727.P8427559464109343394

`A003953(a(n-1))` with `a(0)=1, a(1)=0, a(2)=1, a(3)=6, a(4)=26, a(5)=111`
-/

namespace A392727.P8427559464109343394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1, 6, 26, 111] fun n a =>
  A003953 (a (n - 1)).toNat

end

end A392727.P8427559464109343394

/-!
# A392728: Numbers k whose smallest prime factor is equal to the number of distinct prime factors of k and whose largest prime factor is equal to the number of prime factors of k counted with multiplicity.

The programs for A392728, there is no canonical definition to state claims against.
-/

/-! ## A392728.P18177757592806449611

`A324570(n+4)*A329362(A000110(n))`
-/

namespace A392728.P18177757592806449611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324570 (n + 4) * A329362 (A000110 n).toNat

end

end A392728.P18177757592806449611

/-!
# A392730: Odd squares k such that k has an odd number of digits and the sum of digits of k is an odd number.

The programs for A392730, there is no canonical definition to state claims against.
-/

/-! ## A392730.P9694364365614842116

`∑[A009195(A221592(n+1)+1)]²`
-/

namespace A392730.P9694364365614842116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009195 (A221592 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A392730.P9694364365614842116

/-! ## A392730.P10970782277717769433

`A000290(lt[A094850(n+2), A055881(n+1)])`
-/

namespace A392730.P10970782277717769433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094850 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055881 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A392730.P10970782277717769433

/-!
# A392731: Start at first leftmost digit of n. Move clockwise d steps, where d is the value of the active digit. Erase the digit landed upon. The new "active" digit is the one immediately following the one just erased. Repeat until only one digit remains. a(n) is the last remaining digit.

The programs for A392731, there is no canonical definition to state claims against.
-/

/-! ## A392731.P18340568661398061701

`A000030(A327886(n))`
-/

namespace A392731.P18340568661398061701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 (A327886 n).toNat

end

end A392731.P18340568661398061701

/-!
# A392734: a(n) = Sum_{k=0..n} Stirling2(n+k,k).

The programs for A392734, there is no canonical definition to state claims against.
-/

/-! ## A392734.P3514094877735732656

`A395122(n)+A238655(A000110(n))`
-/

namespace A392734.P3514094877735732656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395122 n + A238655 (A000110 n).toNat

end

end A392734.P3514094877735732656

/-!
# A392736: A 4-automatic binary sequence with irreducible nested recurrence.

The programs for A392736, there is no canonical definition to state claims against.
-/

/-! ## A392736.P9820489105534575081

`char[A392737(n+1)]`
-/

namespace A392736.P9820489105534575081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392737 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A392736.P9820489105534575081

/-! ## A392736.P4171820681389423569

`char[comp[A392738(n+1)]]`
-/

namespace A392736.P4171820681389423569
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392738 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A392736.P4171820681389423569

/-! ## A392736.P13549453919495457032

`A392743(xor(3, 2*n))`
-/

namespace A392736.P13549453919495457032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392743 (Nat.xor 3 (2 * n))

end

end A392736.P13549453919495457032

/-! ## A392736.P12041224061605258981

`1-A392743(Δ[n²])`
-/

namespace A392736.P12041224061605258981
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A392743 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A392736.P12041224061605258981

/-! ## A392736.P8689095392401375927

`A392738(2*n+1)%2`
-/

namespace A392736.P8689095392401375927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A392738 (2 * n + 1)) 2

end

end A392736.P8689095392401375927

/-! ## A392736.P6809405879057332467

`A392743(A166519(n))`
-/

namespace A392736.P6809405879057332467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392743 (A166519 n).toNat

end

end A392736.P6809405879057332467

/-! ## A392736.P7303118123878070035

`A392743(A017101(n))`
-/

namespace A392736.P7303118123878070035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392743 (A017101 n).toNat

end

end A392736.P7303118123878070035

/-! ## A392736.P17824809756361204289

`A392743(A392738(2*(2*n+1)))`
-/

namespace A392736.P17824809756361204289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392743 (A392738 (2 * (2 * n + 1))).toNat

end

end A392736.P17824809756361204289

/-! ## A392736.P9881068224330407835

`A392743(A082285(n))`
-/

namespace A392736.P9881068224330407835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392743 (A082285 n).toNat

end

end A392736.P9881068224330407835

/-! ## A392736.P7997609385916469883

`A392743(A239123(n+1))`
-/

namespace A392736.P7997609385916469883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392743 (A239123 (n + 1)).toNat

end

end A392736.P7997609385916469883

/-!
# A392737: Positions of 1's in A392736.

The programs for A392737, there is no canonical definition to state claims against.
-/

/-! ## A392737.P829323953845514387

`comp[A392738(n+1)]`
-/

namespace A392737.P829323953845514387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392738 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A392737.P829323953845514387

/-! ## A392737.P8898680759289353380

`A016813(n)-A392738(n+1)`
-/

namespace A392737.P8898680759289353380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 n - A392738 (n + 1)

end

end A392737.P8898680759289353380

/-! ## A392737.P9140842399624686050

`A000069(n+1)+A001969(n+1)-A392738(n+1)`
-/

namespace A392737.P9140842399624686050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000069 (n + 1) + (A001969 (n + 1) - A392738 (n + 1))

end

end A392737.P9140842399624686050

/-! ## A392737.P10349627405976150532

`eq[1, A392736(n)]`
-/

namespace A392737.P10349627405976150532
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392736 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A392737.P10349627405976150532

/-! ## A392737.P14108859095351122414

`A392736(2*n+1)+2*n`
-/

namespace A392737.P14108859095351122414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392736 (2 * n + 1) + (2 * n : ℤ)

end

end A392737.P14108859095351122414

/-! ## A392737.P14362522724183382948

`filter[A004442(n), A392736(#)]`
-/

namespace A392737.P14362522724183382948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A392736 (f1 j).toNat = 1) n)

end

end A392737.P14362522724183382948

/-! ## A392737.P6379160531977868272

`filter[A116966(n), A392736(#)]`
-/

namespace A392737.P6379160531977868272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116966 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A392736 (f1 j).toNat = 1) n)

end

end A392737.P6379160531977868272

/-! ## A392737.P13695701455637099156

`filter[A143579(n), A392736(#)]`
-/

namespace A392737.P13695701455637099156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143579 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A392736 (f1 j).toNat = 1) n)

end

end A392737.P13695701455637099156

/-! ## A392737.P13237914770226693268

`filter[A160017(n), A392736(#)]`
-/

namespace A392737.P13237914770226693268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160017 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A392736 (f1 j).toNat = 1) n)

end

end A392737.P13237914770226693268

/-! ## A392737.P1639087974036046525

`filter[A173517(n), A392736(#)]`
-/

namespace A392737.P1639087974036046525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173517 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A392736 (f1 j).toNat = 1) n)

end

end A392737.P1639087974036046525

/-! ## A392737.P18410261230180398232

`filter[A271439(n), A392736(#)]`
-/

namespace A392737.P18410261230180398232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271439 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A392736 (f1 j).toNat = 1) n)

end

end A392737.P18410261230180398232

/-! ## A392737.P11327048218196770273

`filter[A261094(n), A392736(#)]`
-/

namespace A392737.P11327048218196770273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261094 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A392736 (f1 j).toNat = 1) n)

end

end A392737.P11327048218196770273

/-! ## A392737.P10673533365732642898

`filter[A117909(n), A392736(#)]`
-/

namespace A392737.P10673533365732642898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117909 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A392736 (f1 j).toNat = 1) n)

end

end A392737.P10673533365732642898

/-! ## A392737.P14008137691868448990

`filter[A083926(n), A392736(#)]`
-/

namespace A392737.P14008137691868448990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083926 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A392736 (f1 j).toNat = 1) n)

end

end A392737.P14008137691868448990

/-! ## A392737.P14671354635924818608

`filter[A230414(n), A392736(#)]`
-/

namespace A392737.P14671354635924818608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230414 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A392736 (f1 j).toNat = 1) n)

end

end A392737.P14671354635924818608

/-! ## A392737.P3494281650217068007

`filter[A027656(n), A392736(#)]`
-/

namespace A392737.P3494281650217068007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027656 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A392736 (f1 j).toNat = 1) n)

end

end A392737.P3494281650217068007

/-! ## A392737.P6939397279424040612

`filter[A102389(n), A392736(#)]`
-/

namespace A392737.P6939397279424040612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102389 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A392736 (f1 j).toNat = 1) n)

end

end A392737.P6939397279424040612

/-! ## A392737.P13319784977697550142

`filter[A102390(n), A392736(#)]`
-/

namespace A392737.P13319784977697550142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102390 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A392736 (f1 j).toNat = 1) n)

end

end A392737.P13319784977697550142

/-! ## A392737.P5096956447002888151

`eq[0, A392743(2*n+1)]`
-/

namespace A392737.P5096956447002888151
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392743 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A392737.P5096956447002888151

/-! ## A392737.P17560402476194143962

`filter[A131360(n), A392736(#)]`
-/

namespace A392737.P17560402476194143962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131360 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A392736 (f1 j).toNat = 1) n)

end

end A392737.P17560402476194143962

/-!
# A392738: Positions of 0's in A392736.

The programs for A392738, there is no canonical definition to state claims against.
-/

/-! ## A392738.P12365399267942397851

`xor(1, A392737(n+1))`
-/

namespace A392738.P12365399267942397851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A392737 (n + 1))

end

end A392738.P12365399267942397851

/-! ## A392738.P8292352032358854046

`A016813(n)-A392737(n+1)`
-/

namespace A392738.P8292352032358854046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 n - A392737 (n + 1)

end

end A392738.P8292352032358854046

/-! ## A392738.P13064225561668305954

`A002943(n)/A392737(n+1)`
-/

namespace A392738.P13064225561668305954
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002943 n : ℚ) / (A392737 (n + 1) : ℚ)

end

end A392738.P13064225561668305954

/-! ## A392738.P11225770304250087098

`A000069(n+1)+A001969(n+1)-A392737(n+1)`
-/

namespace A392738.P11225770304250087098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000069 (n + 1) + (A001969 (n + 1) - A392737 (n + 1))

end

end A392738.P11225770304250087098

/-! ## A392738.P12230101873415852742

`comp[A392737(n+1)]`
-/

namespace A392738.P12230101873415852742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392737 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A392738.P12230101873415852742

/-! ## A392738.P6232948399939428299

`eq[0, A392736(n)]`
-/

namespace A392738.P6232948399939428299
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392736 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A392738.P6232948399939428299

/-! ## A392738.P2387074462348791038

`A392736(2*n)+2*n`
-/

namespace A392738.P2387074462348791038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392736 (2 * n) + (2 * n : ℤ)

end

end A392738.P2387074462348791038

/-! ## A392738.P1886064992860900473

`eq[1, A392743(2*n+1)]`
-/

namespace A392738.P1886064992860900473
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392743 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A392738.P1886064992860900473

/-!
# A392739: 3-smooth numbers k = s(i) such that s(i)/s(i+1) sets a record high, where s = A003586.

The programs for A392739, there is no canonical definition to state claims against.
-/

/-! ## A392739.P14360562766972638757

`A372824(A389062(n+1))`
-/

namespace A392739.P14360562766972638757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372824 (A389062 (n + 1)).toNat

end

end A392739.P14360562766972638757

/-!
# A392741: Powers k^m, m > 1, squarefree k with more than 2 distinct prime factors.

The programs for A392741, there is no canonical definition to state claims against.
-/

/-! ## A392741.P7917292675315359752

`∩[A072777(n+1), A390950(n+1)]`
-/

namespace A392741.P7917292675315359752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072777 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390950 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A392741.P7917292675315359752

/-! ## A392741.P240306803476914266

`∩[A076292(n+1), A390950(n+1)]`
-/

namespace A392741.P240306803476914266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076292 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390950 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A392741.P240306803476914266

/-! ## A392741.P14028740405473720167

`∩[A303606(n+1), A390950(n+1)]`
-/

namespace A392741.P14028740405473720167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303606 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390950 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A392741.P14028740405473720167

/-! ## A392741.P8122265240109088296

`∩[A072777(n+1), A318720(n+1)]`
-/

namespace A392741.P8122265240109088296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072777 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318720 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A392741.P8122265240109088296

/-! ## A392741.P14249753637035571975

`∩[A076292(n+1), A318720(n+1)]`
-/

namespace A392741.P14249753637035571975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076292 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318720 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A392741.P14249753637035571975

/-! ## A392741.P6705150687521819707

`∩[A303606(n+1), A318720(n+1)]`
-/

namespace A392741.P6705150687521819707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303606 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318720 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A392741.P6705150687521819707

/-! ## A392741.P13472714088431736241

`∩[A072777(n+1), A400773(n+1)]`
-/

namespace A392741.P13472714088431736241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072777 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A400773 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A392741.P13472714088431736241

/-! ## A392741.P13970889560030131053

`∩[A076292(n+1), A400773(n+1)]`
-/

namespace A392741.P13970889560030131053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076292 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A400773 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A392741.P13970889560030131053

/-! ## A392741.P13555702515674537528

`∩[A303606(n+1), A400773(n+1)]`
-/

namespace A392741.P13555702515674537528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303606 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A400773 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A392741.P13555702515674537528

/-!
# A392742: A 4-automatic binary sequence with irreducible nested recurrence (see Comments).

The programs for A392742, there is no canonical definition to state claims against.
-/

/-! ## A392742.P9716870029868559304

`A392743(A080565(n+1))`
-/

namespace A392742.P9716870029868559304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392743 (A080565 (n + 1)).toNat

end

end A392742.P9716870029868559304

/-! ## A392742.P17245194141003951377

`A392743(A346304(n+1))`
-/

namespace A392742.P17245194141003951377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392743 (A346304 (n + 1)).toNat

end

end A392742.P17245194141003951377

/-! ## A392742.P14267744772995040244

`A011655((n+1)*A048675(n+1))`
-/

namespace A392742.P14267744772995040244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011655 ((n + 1 : ℤ) * A048675 (n + 1)).toNat

end

end A392742.P14267744772995040244

/-! ## A392742.P14885661036016485913

`A011655(lcm(n+1, A048675(n+1)))`
-/

namespace A392742.P14885661036016485913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011655 (Int.lcm (n + 1 : ℤ) (A048675 (n + 1)))

end

end A392742.P14885661036016485913

/-! ## A392742.P4829411362666512000

`A333627(A257687(n+4))^A281683(3*n+2)`
-/

namespace A392742.P4829411362666512000
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A333627 (A257687 (n + 4)).toNat : ℚ) ^ (A281683 (3 * n + 2) : ℤ)

end

end A392742.P4829411362666512000

/-!
# A392743: a(n) = A392736(2*n + 1 - A392736(n)).

The programs for A392743, there is no canonical definition to state claims against.
-/

/-! ## A392743.P14241666156807992499

`A392736(2*n+1-A392736(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A392743.P14241666156807992499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392736 ((2 * n + 1 : ℤ) - A392736 n).toNat

end

end A392743.P14241666156807992499

/-! ## A392743.P3596797922598951000

`A392736(2*A392737(n+1))`
-/

namespace A392743.P3596797922598951000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392736 (2 * A392737 (n + 1)).toNat

end

end A392743.P3596797922598951000

/-! ## A392743.P12945561989515294566

`A392736(A392737(n+1)+A392737(n+1))`
-/

namespace A392743.P12945561989515294566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392736 (A392737 (n + 1) + A392737 (n + 1)).toNat

end

end A392743.P12945561989515294566

/-! ## A392743.P11692553748730217023

`A392736(4*n+2)`
-/

namespace A392743.P11692553748730217023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392736 (4 * n + 2)

end

end A392743.P11692553748730217023

/-! ## A392743.P13522819345943824304

`abs(A392736(A166519(2*n))-1)`
-/

namespace A392743.P13522819345943824304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A392736 (A166519 (2 * n)).toNat - 1|

end

end A392743.P13522819345943824304

/-! ## A392743.P2326980215027875919

`1-A392736(A017101(n))`
-/

namespace A392743.P2326980215027875919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A392736 (A017101 n).toNat

end

end A392743.P2326980215027875919

/-!
# A392744: a(n) = Sum_{k=0..n} |Stirling1(n+k,2*k)|.

The programs for A392744, there is no canonical definition to state claims against.
-/

/-! ## A392744.P15922055987805752785

`A124380(comp[2*(n+1)])`
-/

namespace A392744.P15922055987805752785
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124380 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A392744.P15922055987805752785

/-! ## A392744.P2825401673233565188

`filter[A124380(n), A284369(#)]`
-/

namespace A392744.P2825401673233565188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124380 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A284369 (f1 j).toNat = 1) n)

end

end A392744.P2825401673233565188

/-!
# A392745: The number of partitions of n into parts, so that there exists a part i with multiplicity i.

The programs for A392745, there is no canonical definition to state claims against.
-/

/-! ## A392745.P16833512520560902161

`A000041(n)-A276429(n)`
-/

namespace A392745.P16833512520560902161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A276429 n

end

end A392745.P16833512520560902161

/-! ## A392745.P4795104390551057024

`∑[A002865(n)]-A276429(n)`
-/

namespace A392745.P4795104390551057024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A276429 n

end

end A392745.P4795104390551057024

/-! ## A392745.P8644658701471229791

`A276428(n+1)+A277101(n+1)-A276429(n)`
-/

namespace A392745.P8644658701471229791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276428 (n + 1) + (A277101 (n + 1) - A276429 n)

end

end A392745.P8644658701471229791

/-! ## A392745.P16702722192520798945

`A008284(A001844(n))-A276429(n)`
-/

namespace A392745.P16702722192520798945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008284 (A001844 n).toNat - A276429 n

end

end A392745.P16702722192520798945

/-! ## A392745.P13567788755444344837

`A001055(2^n)-A276429(n)`
-/

namespace A392745.P13567788755444344837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001055 (2 ^ n) - A276429 n

end

end A392745.P13567788755444344837

/-!
# A392750: Positive integers that appear in A381466.

The programs for A392750, there is no canonical definition to state claims against.
-/

/-! ## A392750.P4893441281942074951

`comp[A381501(n+1)-1]+1`
-/

namespace A392750.P4893441281942074951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381501 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A392750.P4893441281942074951

/-!
# A392751: Number of perihamiltonian graphs on n vertices.

The programs for A392751, there is no canonical definition to state claims against.
-/

/-! ## A392751.P11051788010883639848

`A070201(A000111(n+1))+A003849(n)`
-/

namespace A392751.P11051788010883639848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070201 (A000111 (n + 1)).toNat + A003849 n

end

end A392751.P11051788010883639848

/-! ## A392751.P14190427845841732740

`A237258(A027187(n)^A134109(3*n+1))`
-/

namespace A392751.P14190427845841732740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237258 (SequenceMachineLib.roundAway ((A027187 n : ℚ) ^ (A134109 (3 * n + 1) : ℤ))).toNat

end

end A392751.P14190427845841732740

/-!
# A392756: Number of equivalence classes of trees with n unlabeled nodes under the adjacency monomial E.

The programs for A392756, there is no canonical definition to state claims against.
-/

/-! ## A392756.P98121739674935287

`A048263(A030032(n))`
-/

namespace A392756.P98121739674935287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048263 (A030032 n).toNat

end

end A392756.P98121739674935287

/-! ## A392756.P11052488442116227158

`A101888(A000602(n))`
-/

namespace A392756.P11052488442116227158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101888 (A000602 n).toNat

end

end A392756.P11052488442116227158

/-! ## A392756.P15626280298684340354

`A105363(A036650(n))`
-/

namespace A392756.P15626280298684340354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105363 (A036650 n).toNat

end

end A392756.P15626280298684340354

/-! ## A392756.P7828305211248367965

`A199426(A000055(n))`
-/

namespace A392756.P7828305211248367965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199426 (A000055 n).toNat

end

end A392756.P7828305211248367965

/-! ## A392756.P11024332325151773051

`A102800(A124973(n))`
-/

namespace A392756.P11024332325151773051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102800 (A124973 n).toNat

end

end A392756.P11024332325151773051

/-!
# A392757: Primes of the form k!*m! + 1, with k <= m.

The programs for A392757, there is no canonical definition to state claims against.
-/

/-! ## A392757.P4367932573667033770

`∩[A002200(n+1), A062684(n+1)]`
-/

namespace A392757.P4367932573667033770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002200 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062684 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A392757.P4367932573667033770

/-! ## A392757.P2929994411658456621

`∩[A062684(n+1), A337119(n+1)]`
-/

namespace A392757.P2929994411658456621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062684 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337119 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A392757.P2929994411658456621

/-! ## A392757.P3394361312786489821

`A072821(a(n-1))` with `a(0)=2, a(1)=3, a(2)=5`
-/

namespace A392757.P3394361312786489821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 3, 5] fun n a =>
  A072821 (a (n - 1)).toNat

end

end A392757.P3394361312786489821

/-!
# A392758: Number of divisors of n which are not primorials.

The programs for A392758, there is no canonical definition to state claims against.
-/

/-! ## A392758.P7232150328249216539

`A000005(n+1)-A257993(n+1)`
-/

namespace A392758.P7232150328249216539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - A257993 (n + 1)

end

end A392758.P7232150328249216539

/-! ## A392758.P11126072182222174828

`∏{e}[n+1, #+1]-A257993(n+1)`
-/

namespace A392758.P11126072182222174828
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℤ) - A257993 (n + 1)

end

end A392758.P11126072182222174828

/-! ## A392758.P7012715027851684238

`Δ[A006218(n)]-A257993(n+1)`
-/

namespace A392758.P7012715027851684238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A257993 (n + 1)

end

end A392758.P7012715027851684238

/-! ## A392758.P2569664964902318432

`A000005(n+1)-(A276084(n+1)+1)`
-/

namespace A392758.P2569664964902318432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - (A276084 (n + 1) + 1)

end

end A392758.P2569664964902318432

/-! ## A392758.P3078757740039453124

`A062011(n+1)/2-A257993(n+1)`
-/

namespace A392758.P3078757740039453124
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062011 (n + 1) : ℚ) / 2 - (A257993 (n + 1) : ℚ)

end

end A392758.P3078757740039453124

/-!
# A392759: Expansion of e.g.f. (1/x) * Series_Reversion( x * (1 - log(1-x)^2) ).

The programs for A392759, there is no canonical definition to state claims against.
-/

/-! ## A392759.P1138487745344101174

`A004526(A357090(n)+A357028(n))`
-/

namespace A392759.P1138487745344101174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A357090 n + A357028 n).toNat

end

end A392759.P1138487745344101174

/-! ## A392759.P8027221006143013183

`A006370(A357090(n)+A357028(n))`
-/

namespace A392759.P8027221006143013183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006370 (A357090 n + A357028 n).toNat

end

end A392759.P8027221006143013183

/-!
# A392762: E.g.f. A(x) satisfies A(x) = 1/(1 - log(1-x*A(x)^2)^2).

The programs for A392762, there is no canonical definition to state claims against.
-/

/-! ## A392762.P5115122430810179519

`A243193(a(n-1)²)` with `a(0)=1, a(1)=0, a(2)=2`
-/

namespace A392762.P5115122430810179519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 2] fun n a =>
  A243193 (a (n - 1) ^ 2).toNat

end

end A392762.P5115122430810179519

/-!
# A392766: Expansion of e.g.f. (1/x) * Series_Reversion( x * (1 - x*(exp(x)-1)^2) ).

The programs for A392766, there is no canonical definition to state claims against.
-/

/-! ## A392766.P15252424864737953575

`or(A257687(A005867(n)), A392825(n))`
-/

namespace A392766.P15252424864737953575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A257687 (A005867 n).toNat) (A392825 n)

end

end A392766.P15252424864737953575

/-!
# A392768: E.g.f. A(x) satisfies A(x) = 1/(1 - (exp(x*A(x)^2)-1)^2).

The programs for A392768, there is no canonical definition to state claims against.
-/

/-! ## A392768.P770842444190107008

`2*(a(n-2)^a(n-1)+3)` with `a(0)=1, a(1)=0, a(2)=2`
-/

namespace A392768.P770842444190107008
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 2] fun n a =>
  2 * (a (n - 2) ^ a (n - 1) + 3)

end

end A392768.P770842444190107008

/-!
# A392772: a(n) = Sum_{k=0..n} Stirling2(3*n,k).

The programs for A392772, there is no canonical definition to state claims against.
-/

/-! ## A392772.P7463888513816126295

`A203647(A077591(n)+n+1)`
-/

namespace A392772.P7463888513816126295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203647 (A077591 n + (n + 1 : ℤ)).toNat

end

end A392772.P7463888513816126295

/-! ## A392772.P1700273039411344070

`A278984(A383464(n))`
-/

namespace A392772.P1700273039411344070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278984 (A383464 n).toNat

end

end A392772.P1700273039411344070

/-!
# A392773: The smallest x for which x^2 == 2 (mod F(n)), where F(n) is the n-th Fermat number.

The programs for A392773, there is no canonical definition to state claims against.
-/

/-! ## A392773.P5472809435869234103

`record[Δ[a(n-2)²]]` with `a(0)=2, a(1)=8`
-/

namespace A392773.P5472809435869234103
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [2, 8] fun n f2 =>
  f2 (n - 2) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A392773.P5472809435869234103

/-! ## A392773.P17687571092484509541

`A248217(2^n)`
-/

namespace A392773.P17687571092484509541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248217 (2 ^ n)

end

end A392773.P17687571092484509541

/-! ## A392773.P11315032366271454516

`A045663(3*2^n)`
-/

namespace A392773.P11315032366271454516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045663 (3 * 2 ^ n)

end

end A392773.P11315032366271454516

/-!
# A392776: a(n) is the number of solutions of (x^2+y^2+z^2)/(x*y + x*z + y*z) = A331605(n), such that 0 < |x| <= |y| <= z <= A331605(n), gcd(|x|,|y|,z) = 1.

The programs for A392776, there is no canonical definition to state claims against.
-/

/-! ## A392776.P15459844888798246058

`A352513(A352507(n+1)+A156256(2*(n+1)))`
-/

namespace A392776.P15459844888798246058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352513 (A352507 (n + 1) + A156256 (2 * (n + 1))).toNat

end

end A392776.P15459844888798246058

/-!
# A392779: Number of distinct coefficients in the expansion of x_1(x_1 + x_2)...(x_1 + x_2 + ... + x_n).

The programs for A392779, there is no canonical definition to state claims against.
-/

/-! ## A392779.P14889891645281679593

`A122154(A023431(n))`
-/

namespace A392779.P14889891645281679593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122154 (A023431 n).toNat

end

end A392779.P14889891645281679593

/-! ## A392779.P15459050210923656499

`A118003(A091865(n))`
-/

namespace A392779.P15459050210923656499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118003 (A091865 n).toNat

end

end A392779.P15459050210923656499

/-! ## A392779.P9282859084365699913

`A112995(A154327(n))`
-/

namespace A392779.P9282859084365699913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112995 (A154327 n).toNat

end

end A392779.P9282859084365699913

/-! ## A392779.P13621118532610843954

`A178786(A148425(n))`
-/

namespace A392779.P13621118532610843954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178786 (A148425 n).toNat

end

end A392779.P13621118532610843954

/-! ## A392779.P13507389094061907612

`A246786(A191526(n))`
-/

namespace A392779.P13507389094061907612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246786 (A191526 n).toNat

end

end A392779.P13507389094061907612

/-!
# A392781: Length of the longest reduced word in the cyclic group C_n.

The programs for A392781, the canonical program `A392781.P4887849297626016326` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A392781 has offset 1).

The definition of A392781 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A392781.P3787258759945484383

`ceil((∑{p}[n+1, #*val(n+1, #)]-∑{e}[n+1, #])/2)`
-/

namespace A392781.P3787258759945484383
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(((∑ p ∈ Nat.primeFactors (f1 n), p * SequenceMachineLib.valuation (n + 1) p : ℕ) : ℤ) - ((∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p : ℕ) : ℤ) : ℚ) / 2⌉

end

end A392781.P3787258759945484383

namespace A392781

/-- `ceil((∑{p}[n+1, #*val(n+1, #)]-∑{e}[n+1, #])/2)` -/
def P3787258759945484383.Spec : Prop :=
  ∀ n, P3787258759945484383.a n = A392781 (n + 1)

end A392781

/-! ## A392781.P8351837821005974288

`round((∑{p}[n+1, #*val(n+1, #)]-∑{e}[n+1, #])/2)`
-/

namespace A392781.P8351837821005974288
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((((∑ p ∈ Nat.primeFactors (f1 n), p * SequenceMachineLib.valuation (n + 1) p : ℕ) : ℤ) - ((∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p : ℕ) : ℤ) : ℚ) / 2)

end

end A392781.P8351837821005974288

namespace A392781

/-- `round((∑{p}[n+1, #*val(n+1, #)]-∑{e}[n+1, #])/2)` -/
def P8351837821005974288.Spec : Prop :=
  ∀ n, P8351837821005974288.a n = A392781 (n + 1)

end A392781

/-! ## A392781.P533983927016864262

`floor((∑{p}[n+1, #*val(n+1, #)]+1-∑{e}[n+1, #])/2)`
-/

namespace A392781.P533983927016864262
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(((∑ p ∈ Nat.primeFactors (f1 n), p * SequenceMachineLib.valuation (n + 1) p + 1 : ℕ) : ℤ) - ((∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p : ℕ) : ℤ) : ℚ) / 2⌋

end

end A392781.P533983927016864262

namespace A392781

/-- `floor((∑{p}[n+1, #*val(n+1, #)]+1-∑{e}[n+1, #])/2)` -/
def P533983927016864262.Spec : Prop :=
  ∀ n, P533983927016864262.a n = A392781 (n + 1)

end A392781

/-! ## A392781.P15559119799259991730

`floor(A275314(n+1)/2)`
-/

namespace A392781.P15559119799259991730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A275314 (n + 1) : ℚ) / 2⌋

end

end A392781.P15559119799259991730

namespace A392781

/-- `floor(A275314(n+1)/2)` -/
def P15559119799259991730.Spec : Prop :=
  ∀ n, P15559119799259991730.a n = A392781 (n + 1)

end A392781

/-! ## A392781.P12463742280981900038

`ceil(A059975(n+1)/2)`
-/

namespace A392781.P12463742280981900038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A059975 (n + 1) : ℚ) / 2⌉

end

end A392781.P12463742280981900038

namespace A392781

/-- `ceil(A059975(n+1)/2)` -/
def P12463742280981900038.Spec : Prop :=
  ∀ n, P12463742280981900038.a n = A392781 (n + 1)

end A392781

/-! ## A392781.P4887849297626016326

`A004526(∑{p}[n+1, #*val(n+1, #)]+1-∑{e}[n+1, #])`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A392781

/-- `A004526(∑{p}[n+1, #*val(n+1, #)]+1-∑{e}[n+1, #])` -/
def P4887849297626016326.Spec : Prop :=
  ∀ n, P4887849297626016326.a n = A392781 (n + 1)

theorem P4887849297626016326.correct : P4887849297626016326.Spec := by
  intro n
  simp only [A392781, Nat.add_sub_cancel]

end A392781

/-! ## A392781.P4949545621869351050

`A110654(A059975(n+1))`
-/

namespace A392781.P4949545621869351050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A059975 (n + 1)).toNat

end

end A392781.P4949545621869351050

namespace A392781

/-- `A110654(A059975(n+1))` -/
def P4949545621869351050.Spec : Prop :=
  ∀ n, P4949545621869351050.a n = A392781 (n + 1)

end A392781

/-! ## A392781.P1493697323882829754

`A004526(A275314(n+1))`
-/

namespace A392781.P1493697323882829754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A275314 (n + 1)).toNat

end

end A392781.P1493697323882829754

namespace A392781

/-- `A004526(A275314(n+1))` -/
def P1493697323882829754.Spec : Prop :=
  ∀ n, P1493697323882829754.a n = A392781 (n + 1)

end A392781

/-! ## A392781.P8371774358817465901

`A004526(A059975(n+1)+1)`
-/

namespace A392781.P8371774358817465901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A059975 (n + 1) + 1).toNat

end

end A392781.P8371774358817465901

namespace A392781

/-- `A004526(A059975(n+1)+1)` -/
def P8371774358817465901.Spec : Prop :=
  ∀ n, P8371774358817465901.a n = A392781 (n + 1)

end A392781

/-! ## A392781.P4875547863364746204

`A123108(A059975(n+1)+1)`
-/

namespace A392781.P4875547863364746204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A059975 (n + 1) + 1).toNat

end

end A392781.P4875547863364746204

namespace A392781

/-- `A123108(A059975(n+1)+1)` -/
def P4875547863364746204.Spec : Prop :=
  ∀ n, P4875547863364746204.a n = A392781 (n + 1)

end A392781

/-! ## A392781.P6809531800698138719

`A004526(∑{p}[n+1, #*val(n+1, #)]+1-A001222(n+1))`
-/

namespace A392781.P6809531800698138719
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (((∑ p ∈ Nat.primeFactors (f1 n), p * SequenceMachineLib.valuation (n + 1) p + 1 : ℕ) : ℤ) - A001222 (n + 1)).toNat

end

end A392781.P6809531800698138719

namespace A392781

/-- `A004526(∑{p}[n+1, #*val(n+1, #)]+1-A001222(n+1))` -/
def P6809531800698138719.Spec : Prop :=
  ∀ n, P6809531800698138719.a n = A392781 (n + 1)

end A392781

/-! ## A392781.P17423900057904108791

`A004526(A001414(2*(n+1))-A001222(3*(n+1)))`
-/

namespace A392781.P17423900057904108791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A001414 (2 * (n + 1)) - A001222 (3 * (n + 1))).toNat

end

end A392781.P17423900057904108791

namespace A392781

/-- `A004526(A001414(2*(n+1))-A001222(3*(n+1)))` -/
def P17423900057904108791.Spec : Prop :=
  ∀ n, P17423900057904108791.a n = A392781 (n + 1)

end A392781

/-!
# A392782: Complement of A000792.

The programs for A392782, the canonical program `A392782.P7874202101078099020` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A392782 has offset 1).

The definition of A392782 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A392782.P7874202101078099020

`comp[3*a(n-3)]` with `a(0)=0, a(1)=1, a(2)=2, a(3)=4`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A392782

/-- `comp[3*a(n-3)]` -/
def P7874202101078099020.Spec : Prop :=
  ∀ n, (P7874202101078099020.a n : ℤ) = A392782 (n + 1)

theorem P7874202101078099020.correct : P7874202101078099020.Spec := by
  intro n
  simp only [A392782, Nat.add_sub_cancel]

end A392782

/-! ## A392782.P12603733411808767991

`comp[a(n-3)+a(n-3)+a(n-3)]` with `a(0)=0, a(1)=1, a(2)=1, a(3)=2, a(4)=3, a(5)=4`
-/

namespace A392782.P12603733411808767991
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 1, 2, 3, 4] fun n f1 =>
  f1 (n - 3) + f1 (n - 3) + f1 (n - 3)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A392782.P12603733411808767991

namespace A392782

/-- `comp[a(n-3)+a(n-3)+a(n-3)]` -/
def P12603733411808767991.Spec : Prop :=
  ∀ n, (P12603733411808767991.a n : ℤ) = A392782 (n + 1)

end A392782

/-! ## A392782.P2743751958347884037

`comp[A122164(n)]`
-/

namespace A392782.P2743751958347884037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122164 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A392782.P2743751958347884037

namespace A392782

/-- `comp[A122164(n)]` -/
def P2743751958347884037.Spec : Prop :=
  ∀ n, (P2743751958347884037.a n : ℤ) = A392782 (n + 1)

end A392782

/-! ## A392782.P6431034126370053806

`comp[A163495(n)]`
-/

namespace A392782.P6431034126370053806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163495 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A392782.P6431034126370053806

namespace A392782

/-- `comp[A163495(n)]` -/
def P6431034126370053806.Spec : Prop :=
  ∀ n, (P6431034126370053806.a n : ℤ) = A392782 (n + 1)

end A392782

/-! ## A392782.P13978756565042868376

`lt[4, A290094(n)]`
-/

namespace A392782.P13978756565042868376
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290094 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A392782.P13978756565042868376

namespace A392782

/-- `lt[4, A290094(n)]` -/
def P13978756565042868376.Spec : Prop :=
  ∀ n, (P13978756565042868376.a n : ℤ) = A392782 (n + 1)

end A392782

/-! ## A392782.P17699727979181977600

`comp[A000792(n)%A000984(n)]`
-/

namespace A392782.P17699727979181977600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000792 n) (A000984 n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A392782.P17699727979181977600

namespace A392782

/-- `comp[A000792(n)%A000984(n)]` -/
def P17699727979181977600.Spec : Prop :=
  ∀ n, (P17699727979181977600.a n : ℤ) = A392782 (n + 1)

end A392782

/-! ## A392782.P3489891403544874069

`∪[A059485(n+1), A085131(n+1)]`
-/

namespace A392782.P3489891403544874069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059485 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085131 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A392782.P3489891403544874069

namespace A392782

/-- `∪[A059485(n+1), A085131(n+1)]` -/
def P3489891403544874069.Spec : Prop :=
  ∀ n, (P3489891403544874069.a n : ℤ) = A392782 (n + 1)

end A392782

/-! ## A392782.P1424474272976787943

`lt[4, A030102(n)]`
-/

namespace A392782.P1424474272976787943
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030102 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A392782.P1424474272976787943

namespace A392782

/-- `lt[4, A030102(n)]` -/
def P1424474272976787943.Spec : Prop :=
  ∀ n, (P1424474272976787943.a n : ℤ) = A392782 (n + 1)

end A392782

/-!
# A392786: Expansion of e.g.f. (1/x) * Series_Reversion( x - log(1+x^3)/x ).

The programs for A392786, there is no canonical definition to state claims against.
-/

/-! ## A392786.P1484218907291578310

`A140067(A149030(n))`
-/

namespace A392786.P1484218907291578310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140067 (A149030 n).toNat

end

end A392786.P1484218907291578310

/-! ## A392786.P2514185788881629940

`A053496(n)*A127286(A053496(n))`
-/

namespace A392786.P2514185788881629940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053496 n * A127286 (A053496 n).toNat

end

end A392786.P2514185788881629940

/-!
# A392787: Expansion of e.g.f. (1/x) * Series_Reversion( x - log(1+x^4)/x^2 ).

The programs for A392787, there is no canonical definition to state claims against.
-/

/-! ## A392787.P18227251791920008118

`A364104(A107268(n)*A189255(n))`
-/

namespace A392787.P18227251791920008118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364104 (A107268 n * A189255 n).toNat

end

end A392787.P18227251791920008118

/-! ## A392787.P11960099639485334477

`A328435(n)*A356939(A099363(2*n))`
-/

namespace A392787.P11960099639485334477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328435 n * A356939 (A099363 (2 * n)).toNat

end

end A392787.P11960099639485334477

/-!
# A392788: Expansion of e.g.f. (1/x) * Series_Reversion( x + 1 - exp(x^2) ).

The programs for A392788, there is no canonical definition to state claims against.
-/

/-! ## A392788.P15207359807126484410

`A200319(n+1)/(n+1)`
-/

namespace A392788.P15207359807126484410
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A200319 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A392788.P15207359807126484410

/-! ## A392788.P17568099558134032823

`A370930(n)+A104488(A004290(3*n+1))`
-/

namespace A392788.P17568099558134032823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370930 n + A104488 (A004290 (3 * n + 1)).toNat

end

end A392788.P17568099558134032823

/-!
# A392789: Expansion of e.g.f. (1/x) * Series_Reversion( x + (1 - exp(x^3))/x ).

The programs for A392789, there is no canonical definition to state claims against.
-/

/-! ## A392789.P8426467476088239905

`A392784(n)+A079979(A002720(n))`
-/

namespace A392789.P8426467476088239905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392784 n + A079979 (A002720 n).toNat

end

end A392789.P8426467476088239905

/-! ## A392789.P4566989357186860097

`A392784(n)+A079979(A085295(n))`
-/

namespace A392789.P4566989357186860097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392784 n + A079979 (A085295 n).toNat

end

end A392789.P4566989357186860097

/-! ## A392789.P4865975341569530608

`A392784(n)+A079979(A163869(n))`
-/

namespace A392789.P4865975341569530608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392784 n + A079979 (A163869 n).toNat

end

end A392789.P4865975341569530608

/-!
# A392790: Expansion of e.g.f. (1/x) * Series_Reversion( x + (1 - exp(x^4))/x^2 ).

The programs for A392790, there is no canonical definition to state claims against.
-/

/-! ## A392790.P11003788896360306630

`A392785(n)^A033999(A397281(n))`
-/

namespace A392790.P11003788896360306630
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A392785 n : ℚ) ^ (A033999 (A397281 n).toNat : ℤ)

end

end A392790.P11003788896360306630

/-! ## A392790.P17387861727148613323

`A392785(n)^A033999(A397283(n))`
-/

namespace A392790.P17387861727148613323
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A392785 n : ℚ) ^ (A033999 (A397283 n).toNat : ℤ)

end

end A392790.P17387861727148613323

/-! ## A392790.P2120059610412778749

`A392785(n)%A324257(A052980(n))`
-/

namespace A392790.P2120059610412778749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A392785 n) (A324257 (A052980 n).toNat)

end

end A392790.P2120059610412778749

/-! ## A392790.P7150108432997187707

`A392785(n)+A000007(A376193(n+4))`
-/

namespace A392790.P7150108432997187707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392785 n + A000007 (A376193 (n + 4)).toNat

end

end A392790.P7150108432997187707

/-!
# A392794: Expansion of e.g.f. (1/x) * Series_Reversion( x - (exp(x^2) - 1)^2 ).

The programs for A392794, there is no canonical definition to state claims against.
-/

/-! ## A392794.P8402140579983615034

`A392791(lcm(n, A000383(n)))`
-/

namespace A392794.P8402140579983615034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392791 (Int.lcm (n : ℤ) (A000383 n))

end

end A392794.P8402140579983615034

/-! ## A392794.P12120403544559353004

`A392791(n)+A365957(A022172(n))`
-/

namespace A392794.P12120403544559353004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392791 n + A365957 (A022172 n).toNat

end

end A392794.P12120403544559353004

/-! ## A392794.P18189430738181048179

`A323023(A008000(n))*A376345(n)`
-/

namespace A392794.P18189430738181048179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323023 (A008000 n).toNat * A376345 n

end

end A392794.P18189430738181048179

/-!
# A392795: Expansion of e.g.f. (1/x) * Series_Reversion( x - (exp(x^3) - 1)^2/x ).

The programs for A392795, there is no canonical definition to state claims against.
-/

/-! ## A392795.P12807374064281919021

`A392792(n)%Δ[A322648(n+1)]`
-/

namespace A392795.P12807374064281919021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322648 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A392792 n) (f1 (n + 1) - f1 n)

end

end A392795.P12807374064281919021

/-! ## A392795.P12167696981737847474

`A392792(n)+A000007(A007689(n))`
-/

namespace A392795.P12167696981737847474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392792 n + A000007 (A007689 n).toNat

end

end A392795.P12167696981737847474

/-! ## A392795.P3245813497766659178

`A392792(n)+A079998(A000088(n))`
-/

namespace A392795.P3245813497766659178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392792 n + A079998 (A000088 n).toNat

end

end A392795.P3245813497766659178

/-! ## A392795.P3200092121879649069

`A006928(A022572(n))*A376347(n)`
-/

namespace A392795.P3200092121879649069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006928 (A022572 n).toNat * A376347 n

end

end A392795.P3200092121879649069

/-! ## A392795.P8975852865198933465

`A054350(A018041(n))*A392792(n)`
-/

namespace A392795.P8975852865198933465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054350 (A018041 n).toNat * A392792 n

end

end A392795.P8975852865198933465

/-!
# A392796: Expansion of e.g.f. (1/x) * Series_Reversion( x - (exp(x^4) - 1)^2/x^2 ).

The programs for A392796, there is no canonical definition to state claims against.
-/

/-! ## A392796.P14674463637699137398

`A392793(n)+A000007(A001792(n))`
-/

namespace A392796.P14674463637699137398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392793 n + A000007 (A001792 n).toNat

end

end A392796.P14674463637699137398

/-! ## A392796.P13797162083674268012

`A392793(n)+A051344(A072850(n))`
-/

namespace A392796.P13797162083674268012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392793 n + A051344 (A072850 n).toNat

end

end A392796.P13797162083674268012

/-! ## A392796.P12478032710043542880

`A392743(A369806(n))*A392793(n)`
-/

namespace A392796.P12478032710043542880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392743 (A369806 n).toNat * A392793 n

end

end A392796.P12478032710043542880

/-! ## A392796.P14011258690150325838

`A392793(n)%A065405(A273334(n))`
-/

namespace A392796.P14011258690150325838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A392793 n) (A065405 (A273334 n).toNat)

end

end A392796.P14011258690150325838

/-! ## A392796.P2201539486862692872

`A392793(n)+A000007(A251055(n+1))`
-/

namespace A392796.P2201539486862692872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392793 n + A000007 (A251055 (n + 1)).toNat

end

end A392796.P2201539486862692872

/-!
# A392797: Number of alpha-labelings of trees on n vertices.

The programs for A392797, there is no canonical definition to state claims against.
-/

/-! ## A392797.P7924982029347559413

`A227979(a(n-1))` with `a(0)=1, a(1)=1`
-/

namespace A392797.P7924982029347559413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A227979 (a (n - 1)).toNat

end

end A392797.P7924982029347559413

/-! ## A392797.P1049147576160427416

`A093110(A094057(n+1))`
-/

namespace A392797.P1049147576160427416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093110 (A094057 (n + 1)).toNat

end

end A392797.P1049147576160427416

/-! ## A392797.P15077021040433283120

`A093110(A155099(n+1))`
-/

namespace A392797.P15077021040433283120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093110 (A155099 (n + 1)).toNat

end

end A392797.P15077021040433283120

/-! ## A392797.P13186837065527057289

`A162002(A144978(n+1))`
-/

namespace A392797.P13186837065527057289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162002 (A144978 (n + 1)).toNat

end

end A392797.P13186837065527057289

/-!
# A392799: Denominators in the expansion of g.f. x^2/(x - log(1 + x)).

The programs for A392799, there is no canonical definition to state claims against.
-/

/-! ## A392799.P6795036763404665868

`runs[A103297(3*(n+1))]*A368092(n)`
-/

namespace A392799.P6795036763404665868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103297 (3 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) n : ℕ) : ℤ) * A368092 n

end

end A392799.P6795036763404665868

