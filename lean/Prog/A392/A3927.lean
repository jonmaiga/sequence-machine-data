import SequenceMachineLib.Basic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C004
import Seq.B000.C007
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C017
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C032
import Seq.B000.C034
import Seq.B001.C000
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C010
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C001
import Seq.B007.C000
import Seq.B008.C001
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B012.C000
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
import Seq.Opaque.C026

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

/-! ## A392700.P14388236470984891205

`filter[A392371(n+1), A385055(#)]`
-/

namespace A392700.P14388236470984891205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392371 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A385055 (f1 j).toNat = 1) n)

end

end A392700.P14388236470984891205

/-! ## A392700.P11984892794343318943

`∩[A350848(n+1), A392371(n+1)]`
-/

namespace A392700.P11984892794343318943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350848 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392371 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A392700.P11984892794343318943

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

/-! ## A392705.P13049792026670697308

`A394092(A090996(n+1)*A246095(n+1))`
-/

namespace A392705.P13049792026670697308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394092 (A090996 (n + 1) * A246095 (n + 1)).toNat

end

end A392705.P13049792026670697308

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

/-! ## A392705.P137301983370236828

`A394092(A328617(n+1))`
-/

namespace A392705.P137301983370236828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394092 (A328617 (n + 1)).toNat

end

end A392705.P137301983370236828

/-!
# A392706: Least even-indexed part in row n of A391983 (the 0-based partial alternating sums of the n-th composition in standard order).

The programs for A392706, there is no canonical definition to state claims against.
-/

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

/-! ## A392706.P13079702050724848956

`A065120(2*n+3)-A103451(A342192(3*n+4))`
-/

namespace A392706.P13079702050724848956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065120 (2 * n + 3) - A103451 (A342192 (3 * n + 4)).toNat

end

end A392706.P13079702050724848956

/-!
# A392707: Numbers whose prime indices have strictly increasing 0-based partial alternating sums.

The programs for A392707, there is no canonical definition to state claims against.
-/

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

/-!
# A392708: Numbers k such that the 0-based partial alternating sums of the k-th composition in standard order are all distinct.

The programs for A392708, there is no canonical definition to state claims against.
-/

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
# A392709: Numbers k such that the trimmed 0-based partial alternating sums of the k-th composition in standard order are all distinct.

The programs for A392709, there is no canonical definition to state claims against.
-/

/-! ## A392709.P8413279459272587348

`A260113(A254621(n+1))`
-/

namespace A392709.P8413279459272587348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260113 (A254621 (n + 1)).toNat

end

end A392709.P8413279459272587348

/-! ## A392709.P3344074883298284897

`A260113(A227510(n+1))`
-/

namespace A392709.P3344074883298284897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260113 (A227510 (n + 1)).toNat

end

end A392709.P3344074883298284897

/-! ## A392709.P2018237891344532899

`A260113(A383246(n+1))`
-/

namespace A392709.P2018237891344532899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260113 (A383246 (n + 1)).toNat

end

end A392709.P2018237891344532899

/-!
# A392710: Numbers whose prime indices are the first sums of some finite weakly increasing sequence of integers > 1.

The programs for A392710, there is no canonical definition to state claims against.
-/

/-! ## A392710.P1328087382919017758

`filter[A003601(n+1), A162289(#)]`
-/

namespace A392710.P1328087382919017758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003601 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A162289 (f1 j).toNat = 1) n)

end

end A392710.P1328087382919017758

/-! ## A392710.P332660322376895431

`filter[A020491(n+1), A162289(#)]`
-/

namespace A392710.P332660322376895431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020491 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A162289 (f1 j).toNat = 1) n)

end

end A392710.P332660322376895431

/-! ## A392710.P7002265176131923686

`filter[A046839(n+1), A162289(#)]`
-/

namespace A392710.P7002265176131923686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046839 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A162289 (f1 j).toNat = 1) n)

end

end A392710.P7002265176131923686

/-! ## A392710.P6545815010721889375

`filter[A007775(n+1), A245656(#)]`
-/

namespace A392710.P6545815010721889375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007775 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A245656 (f1 j).toNat = 1) n)

end

end A392710.P6545815010721889375

/-! ## A392710.P1666801344022180299

`filter[A152212(n+1), A162289(#)]`
-/

namespace A392710.P1666801344022180299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152212 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A162289 (f1 j).toNat = 1) n)

end

end A392710.P1666801344022180299

/-! ## A392710.P10395275384682123566

`filter[A334420(n+1), A162289(#)]`
-/

namespace A392710.P10395275384682123566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334420 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A162289 (f1 j).toNat = 1) n)

end

end A392710.P10395275384682123566

/-! ## A392710.P4155322015551199765

`∩[A003601(n+1), A007775(n+1)]`
-/

namespace A392710.P4155322015551199765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003601 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007775 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A392710.P4155322015551199765

/-! ## A392710.P8610019451323973204

`∩[A007775(n+1), A020491(n+1)]`
-/

namespace A392710.P8610019451323973204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007775 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020491 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A392710.P8610019451323973204

/-! ## A392710.P10886351513049497252

`∩[A007775(n+1), A046839(n+1)]`
-/

namespace A392710.P10886351513049497252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007775 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046839 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A392710.P10886351513049497252

/-! ## A392710.P13135961669210564571

`∩[A007775(n+1), A152212(n+1)]`
-/

namespace A392710.P13135961669210564571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007775 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152212 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A392710.P13135961669210564571

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

/-! ## A392711.P14639987651911916736

`A000217(n)%A000030(A383495(n))`
-/

namespace A392711.P14639987651911916736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000217 n) (A000030 (A383495 n).toNat)

end

end A392711.P14639987651911916736

/-! ## A392711.P14299317744621210596

`A066099(A026635(n))*A392374(n+1)`
-/

namespace A392711.P14299317744621210596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066099 (A026635 n).toNat * A392374 (n + 1)

end

end A392711.P14299317744621210596

/-! ## A392711.P2055185713839069635

`A211992(A001333(n))*A392374(n+1)`
-/

namespace A392711.P2055185713839069635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211992 (A001333 n).toNat * A392374 (n + 1)

end

end A392711.P2055185713839069635

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

/-! ## A392722.P11194655729705117768

`gcd(A080224(A000312(n)), A392718(n+1))`
-/

namespace A392722.P11194655729705117768
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A080224 (A000312 n).toNat) (A392718 (n + 1))

end

end A392722.P11194655729705117768

/-! ## A392722.P11015252305783142200

`lcm(A010879(A006125(n)), A392718(n+1))`
-/

namespace A392722.P11015252305783142200
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A010879 (A006125 n).toNat) (A392718 (n + 1))

end

end A392722.P11015252305783142200

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

/-! ## A392724.P10546158620194523764

`A008683(A001019(n))+A000919(n+1)`
-/

namespace A392724.P10546158620194523764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A001019 n).toNat + A000919 (n + 1)

end

end A392724.P10546158620194523764

/-! ## A392724.P16542557842305429596

`A010054(A005649(n))+A000919(n+1)`
-/

namespace A392724.P16542557842305429596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (A005649 n).toNat + A000919 (n + 1)

end

end A392724.P16542557842305429596

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

/-! ## A392725.P136475075540249771

`A000035(A046006(2*n+5))-A309216(n)`
-/

namespace A392725.P136475075540249771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A046006 (2 * n + 5)).toNat - A309216 n

end

end A392725.P136475075540249771

/-! ## A392725.P1389287928383000820

`A285384(A000079(n))-A309216(n)`
-/

namespace A392725.P1389287928383000820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285384 (A000079 n).toNat - A309216 n

end

end A392725.P1389287928383000820

/-! ## A392725.P16921310412762992586

`A295931(A088172(n+1))-A309216(n)`
-/

namespace A392725.P16921310412762992586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295931 (A088172 (n + 1)).toNat - A309216 n

end

end A392725.P16921310412762992586

/-! ## A392725.P7707841052498174613

`A040001(A325067(3*(n+1)))-A309216(n)`
-/

namespace A392725.P7707841052498174613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (A325067 (3 * (n + 1))).toNat - A309216 n

end

end A392725.P7707841052498174613

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

/-! ## A392727.P12835565938385919672

`A358638(A150399(n))`
-/

namespace A392727.P12835565938385919672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358638 (A150399 n).toNat

end

end A392727.P12835565938385919672

/-! ## A392727.P16009976985402839639

`A003056(A137341(n)-n)`
-/

namespace A392727.P16009976985402839639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A137341 n - (n : ℤ)).toNat

end

end A392727.P16009976985402839639

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

/-! ## A392730.P4440490262930141682

`(lt[n+1, A027746(2*(n+1))]+1)²`
-/

namespace A392730.P4440490262930141682
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027746 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1) ^ 2

end

end A392730.P4440490262930141682

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

/-! ## A392737.P9001670233602805092

`filter[n+1, A392736(#)]`
-/

namespace A392737.P9001670233602805092
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A392736 (f1 j) = 1) n)

end

end A392737.P9001670233602805092

/-! ## A392737.P14108859095351122414

`A392736(2*n+1)+2*n`
-/

namespace A392737.P14108859095351122414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392736 (2 * n + 1) + (2 * n : ℤ)

end

end A392737.P14108859095351122414

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

/-! ## A392737.P8508588451784243033

`A392743(A392738(2*n+1))+2*n`
-/

namespace A392737.P8508588451784243033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392743 (A392738 (2 * n + 1)).toNat + (2 * n : ℤ)

end

end A392737.P8508588451784243033

/-!
# A392738: Positions of 0's in A392736.

The programs for A392738, there is no canonical definition to state claims against.
-/

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

/-! ## A392743.P18317568657545467399

`A392736(2*n+1-A392736(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A392743.P18317568657545467399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392736 ((2 * n : ℤ) + (1 - A392736 n)).toNat

end

end A392743.P18317568657545467399

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

/-! ## A392745.P8644658701471229791

`A276428(n+1)+A277101(n+1)-A276429(n)`
-/

namespace A392745.P8644658701471229791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276428 (n + 1) + (A277101 (n + 1) - A276429 n)

end

end A392745.P8644658701471229791

/-! ## A392745.P12150051242723397681

`A001055(A000079(n))-A276429(n)`
-/

namespace A392745.P12150051242723397681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001055 (A000079 n).toNat - A276429 n

end

end A392745.P12150051242723397681

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

/-! ## A392758.P13107831066564948174

`∏{e}[n+1, #+1]-A257993(A000027(n+1))`
-/

namespace A392758.P13107831066564948174
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℤ) - A257993 (A000027 (n + 1)).toNat

end

end A392758.P13107831066564948174

/-!
# A392762: E.g.f. A(x) satisfies A(x) = 1/(1 - log(1-x*A(x)^2)^2).

The programs for A392762, there is no canonical definition to state claims against.
-/

/-! ## A392762.P11998199669906167165

`A038373(a(n-1))-floor(sqrt(n))²` with `a(0)=1, a(1)=0, a(2)=2, a(3)=6`
-/

namespace A392762.P11998199669906167165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 2, 6] fun n a =>
  A038373 (a (n - 1)).toNat - (Nat.sqrt n ^ 2 : ℤ)

end

end A392762.P11998199669906167165

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

The programs for A392781, the canonical program `A392781.P4887849297626016326` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A392781 has offset 1).

The definition of A392781 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A392781.P4887849297626016326

`A004526(∑{p}[n+1, #*val(n+1, #)]+1-∑{e}[n+1, #])`

The canonical program, it is in `Seq.B001.C010`.
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

The programs for A392782, the canonical program `A392782.P7874202101078099020` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A392782 has offset 1).

The definition of A392782 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A392782.P7874202101078099020

`comp[3*a(n-3)]` with `a(0)=0, a(1)=1, a(2)=2, a(3)=4`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A392782

/-- `comp[3*a(n-3)]` -/
def P7874202101078099020.Spec : Prop :=
  ∀ n, (P7874202101078099020.a n : ℤ) = A392782 (n + 1)

theorem P7874202101078099020.correct : P7874202101078099020.Spec := by
  intro n
  simp only [A392782, Nat.add_sub_cancel]

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

/-!
# A392787: Expansion of e.g.f. (1/x) * Series_Reversion( x - log(1+x^4)/x^2 ).

The programs for A392787, there is no canonical definition to state claims against.
-/

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

/-!
# A392789: Expansion of e.g.f. (1/x) * Series_Reversion( x + (1 - exp(x^3))/x ).

The programs for A392789, there is no canonical definition to state claims against.
-/

/-! ## A392789.P4865975341569530608

`A392784(n)+A079979(A163869(n))`
-/

namespace A392789.P4865975341569530608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392784 n + A079979 (A163869 n).toNat

end

end A392789.P4865975341569530608

/-! ## A392789.P14378897462264440182

`A392784(n)+A113129(A376662(n))`
-/

namespace A392789.P14378897462264440182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392784 n + A113129 (A376662 n).toNat

end

end A392789.P14378897462264440182

/-! ## A392789.P1611483106247494733

`A392784(n)/A329291(A041467(n))`
-/

namespace A392789.P1611483106247494733
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A392784 n : ℚ) / (A329291 (A041467 n).toNat : ℚ)

end

end A392789.P1611483106247494733

/-!
# A392790: Expansion of e.g.f. (1/x) * Series_Reversion( x + (1 - exp(x^4))/x^2 ).

The programs for A392790, there is no canonical definition to state claims against.
-/

/-! ## A392790.P16710207237991313881

`A392785(n)+A333146(A073918(n))`
-/

namespace A392790.P16710207237991313881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392785 n + A333146 (A073918 n).toNat

end

end A392790.P16710207237991313881

/-!
# A392794: Expansion of e.g.f. (1/x) * Series_Reversion( x - (exp(x^2) - 1)^2 ).

The programs for A392794, there is no canonical definition to state claims against.
-/

/-! ## A392794.P1396040752396474758

`filter[A392791(n), A071026(#)]`
-/

namespace A392794.P1396040752396474758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392791 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A071026 (f1 j).toNat = 1) n)

end

end A392794.P1396040752396474758

/-! ## A392794.P114337015950892039

`filter[A392791(n), A104338(#)]`
-/

namespace A392794.P114337015950892039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392791 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A104338 (f1 j).toNat = 1) n)

end

end A392794.P114337015950892039

/-! ## A392794.P12201051368203504468

`filter[A392791(n), A105597(#)]`
-/

namespace A392794.P12201051368203504468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392791 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A105597 (f1 j).toNat = 1) n)

end

end A392794.P12201051368203504468

/-!
# A392795: Expansion of e.g.f. (1/x) * Series_Reversion( x - (exp(x^3) - 1)^2/x ).

The programs for A392795, there is no canonical definition to state claims against.
-/

/-! ## A392795.P8975852865198933465

`A054350(A018041(n))*A392792(n)`
-/

namespace A392795.P8975852865198933465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054350 (A018041 n).toNat * A392792 n

end

end A392795.P8975852865198933465

/-! ## A392795.P10255472887505861813

`A054350(A297204(n))*A376347(n)`
-/

namespace A392795.P10255472887505861813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054350 (A297204 n).toNat * A376347 n

end

end A392795.P10255472887505861813

/-! ## A392795.P5286314228620036715

`A283464(A084161(n))*A392792(n)`
-/

namespace A392795.P5286314228620036715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283464 (A084161 n).toNat * A392792 n

end

end A392795.P5286314228620036715

/-! ## A392795.P17451897462932050355

`lcm(A348929(A000142(n)), A376347(n))`
-/

namespace A392795.P17451897462932050355
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A348929 (A000142 n).toNat) (A376347 n)

end

end A392795.P17451897462932050355

/-! ## A392795.P13309743966569957588

`A000142(n)*A033461(A244742(n+1))`
-/

namespace A392795.P13309743966569957588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A033461 (A244742 (n + 1)).toNat

end

end A392795.P13309743966569957588

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

/-! ## A392796.P2201539486862692872

`A392793(n)+A000007(A251055(n+1))`
-/

namespace A392796.P2201539486862692872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392793 n + A000007 (A251055 (n + 1)).toNat

end

end A392796.P2201539486862692872

/-! ## A392796.P12114873010425583907

`A011558(A000108(n+1))*A392793(n)`
-/

namespace A392796.P12114873010425583907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011558 (A000108 (n + 1)).toNat * A392793 n

end

end A392796.P12114873010425583907

/-! ## A392796.P18216239284455438443

`A051903(A006034(n+1))*A392793(n)`
-/

namespace A392796.P18216239284455438443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A006034 (n + 1)).toNat * A392793 n

end

end A392796.P18216239284455438443

/-! ## A392796.P9675469662846135927

`A392793(n)+A000007(A135231(n+3))`
-/

namespace A392796.P9675469662846135927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392793 n + A000007 (A135231 (n + 3)).toNat

end

end A392796.P9675469662846135927

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

/-! ## A392799.P12905427228953707210

`∏[A333627(A277591(2*n+1))]`
-/

namespace A392799.P12905427228953707210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333627 (A277591 (2 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A392799.P12905427228953707210

