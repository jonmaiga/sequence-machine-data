import SequenceMachineLib.Basic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C003
import Seq.B000.C005
import Seq.B000.C010
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C025
import Seq.B000.C028
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C037
import Seq.B000.C040
import Seq.B001.C000
import Seq.B001.C005
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C006
import Seq.B003.C001
import Seq.B004.C000
import Seq.B005.C001
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
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
import Seq.Opaque.C025

/-!
# A388710: Triangle read by rows where T(n,k) is the number of integer partitions of n into k parts, none of which is less than its own multiplicity.

The programs for A388710, there is no canonical definition to state claims against.
-/

/-! ## A388710.P5948177704857823929

`A388711(n)+A276653(A331204(2*(n+1)))`
-/

namespace A388710.P5948177704857823929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388711 n + A276653 (A331204 (2 * (n + 1))).toNat

end

end A388710.P5948177704857823929

/-! ## A388710.P15054966852936399192

`A174204(A218757(n))`
-/

namespace A388710.P15054966852936399192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174204 (A218757 n).toNat

end

end A388710.P15054966852936399192

/-! ## A388710.P5897424620401654528

`A352513(A325188(n)+A208183(n))`
-/

namespace A388710.P5897424620401654528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352513 (A325188 n + A208183 n).toNat

end

end A388710.P5897424620401654528

/-! ## A388710.P8160538197560348465

`gcd(A070109(A326495(n)), A388711(n))`
-/

namespace A388710.P8160538197560348465
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A070109 (A326495 n).toNat) (A388711 n)

end

end A388710.P8160538197560348465

/-! ## A388710.P9760796121113060602

`A362370(n)+A226464(A229685(n+1))`
-/

namespace A388710.P9760796121113060602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362370 n + A226464 (A229685 (n + 1)).toNat

end

end A388710.P9760796121113060602

/-!
# A388711: Triangle read by rows where T(n,k) is the number of integer partitions of n into k parts with choosable initial intervals.

The programs for A388711, there is no canonical definition to state claims against.
-/

/-! ## A388711.P15834414468612707942

`A072233(n)-A388712(n)`
-/

namespace A388711.P15834414468612707942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072233 n - A388712 n

end

end A388711.P15834414468612707942

/-! ## A388711.P3113028776560147202

`A388710(n)%A363342(n+2)`
-/

namespace A388711.P3113028776560147202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A388710 n) (A363342 (n + 2))

end

end A388711.P3113028776560147202

/-! ## A388711.P10291407461341318462

`and(A113031(n+1), A388710(n))`
-/

namespace A388711.P10291407461341318462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A113031 (n + 1)) (A388710 n)

end

end A388711.P10291407461341318462

/-! ## A388711.P17241208341761022026

`A351014(A247469(n)*A330462(n))`
-/

namespace A388711.P17241208341761022026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351014 (A247469 n * A330462 n).toNat

end

end A388711.P17241208341761022026

/-! ## A388711.P17276624094911902064

`and(A078840(n), A087284(A384121(n)))`
-/

namespace A388711.P17276624094911902064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A078840 n) (A087284 (A384121 n).toNat)

end

end A388711.P17276624094911902064

/-!
# A388712: Triangle read by rows where T(n,k) is the number of integer partitions of n into k parts without choosable initial intervals.

The programs for A388712, there is no canonical definition to state claims against.
-/

/-! ## A388712.P9132477680331372835

`A072233(n)-A388711(n)`
-/

namespace A388712.P9132477680331372835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072233 n - A388711 n

end

end A388712.P9132477680331372835

/-! ## A388712.P1345761876969495111

`A178691(A263905(n+1))`
-/

namespace A388712.P1345761876969495111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178691 (A263905 (n + 1)).toNat

end

end A388712.P1345761876969495111

/-! ## A388712.P9655280036335849750

`A326223(A262124(n))%3`
-/

namespace A388712.P9655280036335849750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A326223 (A262124 n).toNat) 3

end

end A388712.P9655280036335849750

/-! ## A388712.P30098270341512933

`A362921(n)%A261960(n)`
-/

namespace A388712.P30098270341512933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A362921 n) (A261960 n)

end

end A388712.P30098270341512933

/-! ## A388712.P16039167154944073624

`A119042(A261960(n+2))%A261960(n)`
-/

namespace A388712.P16039167154944073624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A119042 (A261960 (n + 2)).toNat) (A261960 n)

end

end A388712.P16039167154944073624

/-!
# A388713: Triangle read by rows where T(n,k) is the number of superdiagonal multisets summing to n (reversed partitions of n) with maximum k.

The programs for A388713, there is no canonical definition to state claims against.
-/

/-! ## A388713.P6187450757497766181

`A026836(n+1)%A329369(A048794(n))`
-/

namespace A388713.P6187450757497766181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A026836 (n + 1)) (A329369 (A048794 n).toNat)

end

end A388713.P6187450757497766181

/-! ## A388713.P8007515753992522901

`A113129(A080159(n))`
-/

namespace A388713.P8007515753992522901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113129 (A080159 n).toNat

end

end A388713.P8007515753992522901

/-! ## A388713.P16648949309859630298

`C(A139352(A143395(n+1)), A201701(n))`
-/

namespace A388713.P16648949309859630298
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A139352 (A143395 (n + 1)).toNat).toNat (A201701 n).toNat

end

end A388713.P16648949309859630298

/-! ## A388713.P12998998146765813904

`A392703(A106356(n+1))%A117502(n+1)`
-/

namespace A388713.P12998998146765813904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A392703 (A106356 (n + 1)).toNat) (A117502 (n + 1))

end

end A388713.P12998998146765813904

/-! ## A388713.P6045451373206204649

`C(A044933(A339658(2*n+3)+1), A202064(n))`
-/

namespace A388713.P6045451373206204649
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A044933 (A339658 (2 * n + 3) + 1).toNat).toNat (A202064 n).toNat

end

end A388713.P6045451373206204649

/-!
# A388715: Numbers with superdiagonal prime signature.

The programs for A388715, there is no canonical definition to state claims against.
-/

/-! ## A388715.P11641312887438774659

`∪[A026565(n), A392696(n+1)]`
-/

namespace A388715.P11641312887438774659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026565 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392696 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A388715.P11641312887438774659

/-! ## A388715.P8837301047069925032

`∪[A101652(n), A392696(n+1)]`
-/

namespace A388715.P8837301047069925032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101652 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392696 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A388715.P8837301047069925032

/-! ## A388715.P14017884838122765774

`∪[A175806(n), A392696(n+1)]`
-/

namespace A388715.P14017884838122765774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175806 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392696 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A388715.P14017884838122765774

/-! ## A388715.P13621320186610425623

`A392696(n+1)+A008683(A017510(n))`
-/

namespace A388715.P13621320186610425623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392696 (n + 1) + A008683 (A017510 n).toNat

end

end A388715.P13621320186610425623

/-!
# A388716: Number of integer partitions of n with strictly superdiagonal run-lengths.

The programs for A388716, there is no canonical definition to state claims against.
-/

/-! ## A388716.P17388369913974909741

`A257564(A051530(n))`
-/

namespace A388716.P17388369913974909741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257564 (A051530 n).toNat

end

end A388716.P17388369913974909741

/-! ## A388716.P12172267847589733776

`A117144(n)-A327861(A109298(n+1))`
-/

namespace A388716.P12172267847589733776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117144 n - A327861 (A109298 (n + 1)).toNat

end

end A388716.P12172267847589733776

/-! ## A388716.P7144985976731713666

`gcd(A002266(3*n), A188449(A328069(n)))`
-/

namespace A388716.P7144985976731713666
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002266 (3 * n)) (A188449 (A328069 n).toNat)

end

end A388716.P7144985976731713666

/-! ## A388716.P5884724126874942781

`or(A010054(A269214(n+1)), A239948(n))`
-/

namespace A388716.P5884724126874942781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A010054 (A269214 (n + 1)).toNat) (A239948 n)

end

end A388716.P5884724126874942781

/-!
# A388718: Triangle read by rows: T(n,k) is the number of binary strings of length n which are not all zero and whose shortest run of 1's is of length k.

The programs for A388718, there is no canonical definition to state claims against.
-/

/-! ## A388718.P15612948586734528498

`A168134(A089606(n+1))`
-/

namespace A388718.P15612948586734528498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168134 (A089606 (n + 1)).toNat

end

end A388718.P15612948586734528498

/-!
# A388719: Numbers with strictly superdiagonal prime signature.

The programs for A388719, there is no canonical definition to state claims against.
-/

/-! ## A388719.P7998715113870979840

`filter[A334965(n+1), A112526(#)]`
-/

namespace A388719.P7998715113870979840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334965 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A112526 (f1 j).toNat = 1) n)

end

end A388719.P7998715113870979840

/-! ## A388719.P11356406790893647351

`∩[A001694(n+1), A334965(n+1)]`
-/

namespace A388719.P11356406790893647351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001694 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334965 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A388719.P11356406790893647351

/-! ## A388719.P8965897079964649251

`∩[A317102(n+1), A334965(n+1)]`
-/

namespace A388719.P8965897079964649251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317102 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334965 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A388719.P8965897079964649251

/-! ## A388719.P2033022800073148040

`∩[A326692(n+1), A334965(n+1)]`
-/

namespace A388719.P2033022800073148040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326692 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334965 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A388719.P2033022800073148040

/-! ## A388719.P17116609594903096002

`∩[A334965(n+1), A377819(n+1)]`
-/

namespace A388719.P17116609594903096002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334965 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377819 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A388719.P17116609594903096002

/-!
# A388721: Number of multisets summing to n (or reversed partitions of n) with strictly superdiagonal run-lengths.

The programs for A388721, there is no canonical definition to state claims against.
-/

/-! ## A388721.P6718280658066952671

`A099075(A100373(n+2))`
-/

namespace A388721.P6718280658066952671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099075 (A100373 (n + 2)).toNat

end

end A388721.P6718280658066952671

/-! ## A388721.P16634034933880939230

`A131341(A183557(n+2))`
-/

namespace A388721.P16634034933880939230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131341 (A183557 (n + 2)).toNat

end

end A388721.P16634034933880939230

/-! ## A388721.P6963715469876935913

`A266755(n)/A333381(A006723(n))`
-/

namespace A388721.P6963715469876935913
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A266755 n : ℚ) / (A333381 (A006723 n).toNat : ℚ)

end

end A388721.P6963715469876935913

/-! ## A388721.P2590231745267574106

`A266755(n)-A089801(A128458(n+2))`
-/

namespace A388721.P2590231745267574106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266755 n - A089801 (A128458 (n + 2)).toNat

end

end A388721.P2590231745267574106

/-! ## A388721.P13205556026303969463

`A266755(n)-A249094(A200744(n+2))`
-/

namespace A388721.P13205556026303969463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266755 n - A249094 (A200744 (n + 2)).toNat

end

end A388721.P13205556026303969463

/-!
# A388722: a(n) is the number of steps to reach 0 or the start of a cycle using the iteration x -> |sigma(x)-2*x| starting from x=n.

The programs for A388722, there is no canonical definition to state claims against.
-/

/-! ## A388722.P12444848542187797219

`A305831(A104772(n+1))`
-/

namespace A388722.P12444848542187797219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305831 (A104772 (n + 1)).toNat

end

end A388722.P12444848542187797219

/-! ## A388722.P112042480036963080

`A001221(or(A083416(n+1), A247443(n)))`
-/

namespace A388722.P112042480036963080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Int.lor (A083416 (n + 1)) (A247443 n)).toNat

end

end A388722.P112042480036963080

/-! ## A388722.P713517265070014110

`A001221(A350976(n+1)-A228351(n+1))`
-/

namespace A388722.P713517265070014110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A350976 (n + 1) - A228351 (n + 1)).toNat

end

end A388722.P713517265070014110

/-! ## A388722.P9095687718953728798

`A001222(∑[a(n-2)/(1/3)²])` with `a(0)=1, a(1)=4, a(2)=1, a(3)=1, a(4)=3`
-/

namespace A388722.P9095687718953728798
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 4, 1, 1, 3] fun n f1 =>
  f1 (n - 2) / ((1 : ℚ) / 3) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A388722.P9095687718953728798

/-! ## A388722.P7495061344027100591

`A190593(A215410(n))`
-/

namespace A388722.P7495061344027100591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190593 (A215410 n).toNat

end

end A388722.P7495061344027100591

/-!
# A388723: Manhattan distance of prime(n) on the Ulam spiral from origin.

The programs for A388723, there is no canonical definition to state claims against.
-/

/-! ## A388723.P16590368102593630622

`abs(A214664(n+1))+abs(A214665(n+1))`
-/

namespace A388723.P16590368102593630622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A214664 (n + 1)| + |A214665 (n + 1)|

end

end A388723.P16590368102593630622

/-! ## A388723.P13062201995298114591

`A214526(A000040(n+1))`
-/

namespace A388723.P13062201995298114591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214526 (A000040 (n + 1)).toNat

end

end A388723.P13062201995298114591

/-! ## A388723.P16906211597449132862

`A214526(A008578(n+2))`
-/

namespace A388723.P16906211597449132862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214526 (A008578 (n + 2)).toNat

end

end A388723.P16906211597449132862

/-! ## A388723.P4471496903804757466

`A214526(A182986(n+2))`
-/

namespace A388723.P4471496903804757466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214526 (A182986 (n + 2)).toNat

end

end A388723.P4471496903804757466

/-! ## A388723.P8917516169872153269

`A214526(∑[A054541(n+1)])`
-/

namespace A388723.P8917516169872153269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214526 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A388723.P8917516169872153269

/-! ## A388723.P14382936828505490240

`A214526(A006093(n+1)+1)`
-/

namespace A388723.P14382936828505490240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214526 (A006093 (n + 1) + 1).toNat

end

end A388723.P14382936828505490240

/-! ## A388723.P8048421738264786799

`A214526(record[A000010(n+1)+1])`
-/

namespace A388723.P8048421738264786799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214526 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A388723.P8048421738264786799

/-!
# A388724: Triangle read by rows where T(n,k) is the number of strictly superdiagonal reversed integer partitions of n with maximum k.

The programs for A388724, there is no canonical definition to state claims against.
-/

/-! ## A388724.P9922429760532938753

`A135302(n+2)%A299201(A203647(n+1))`
-/

namespace A388724.P9922429760532938753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A135302 (n + 2)) (A299201 (A203647 (n + 1)).toNat)

end

end A388724.P9922429760532938753

/-! ## A388724.P17356514553756594820

`A267423(A255009(n))`
-/

namespace A388724.P17356514553756594820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267423 (A255009 n).toNat

end

end A388724.P17356514553756594820

/-! ## A388724.P9046415040418461555

`and(A023775(n+1), A059607(n))`
-/

namespace A388724.P9046415040418461555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A023775 (n + 1)) (A059607 n)

end

end A388724.P9046415040418461555

/-! ## A388724.P439128704770425935

`and(A023775(n+1), A089198(n))`
-/

namespace A388724.P439128704770425935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A023775 (n + 1)) (A089198 n)

end

end A388724.P439128704770425935

/-! ## A388724.P14501998046606739027

`and(A023775(n+1), A124752(n))`
-/

namespace A388724.P14501998046606739027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A023775 (n + 1)) (A124752 n)

end

end A388724.P14501998046606739027

/-!
# A388733: Triangle read by rows: T(n,k) = numerators of "across the board" style tournament payouts.

The programs for A388733, the canonical program `A388733.P5259449716993633823` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A388733 has offset 1).

The definition of A388733 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2415 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A388733.P5259449716993633823

`(row(n)+1)*T(n-1,k)+row(n)!` with `a(0)=1`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A388733

/-- `(row(n)+1)*T(n-1,k)+row(n)!` -/
def P5259449716993633823.Spec : Prop :=
  ∀ n, (P5259449716993633823.a n : ℤ) = A388733 (n + 1)

theorem P5259449716993633823.correct : P5259449716993633823.Spec := by
  intro n
  simp only [A388733, Nat.add_sub_cancel]

end A388733

/-! ## A388733.P10616225981727260239

`A165674(n+1)*A233543(n)`
-/

namespace A388733.P10616225981727260239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165674 (n + 1) * A233543 n

end

end A388733.P10616225981727260239

namespace A388733

/-- `A165674(n+1)*A233543(n)` -/
def P10616225981727260239.Spec : Prop :=
  ∀ n, P10616225981727260239.a n = A388733 (n + 1)

end A388733

/-! ## A388733.P15828934951459437713

`A138771(A080036(n+1))`
-/

namespace A388733.P15828934951459437713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138771 (A080036 (n + 1)).toNat

end

end A388733.P15828934951459437713

namespace A388733

/-- `A138771(A080036(n+1))` -/
def P15828934951459437713.Spec : Prop :=
  ∀ n, P15828934951459437713.a n = A388733 (n + 1)

end A388733

/-! ## A388733.P10642080165421624268

`A138771(A004526(2*(n+2))+A002024(n+1))`
-/

namespace A388733.P10642080165421624268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138771 (A004526 (2 * (n + 2)) + A002024 (n + 1)).toNat

end

end A388733.P10642080165421624268

namespace A388733

/-- `A138771(A004526(2*(n+2))+A002024(n+1))` -/
def P10642080165421624268.Spec : Prop :=
  ∀ n, P10642080165421624268.a n = A388733 (n + 1)

end A388733

/-!
# A388734: G.f. satisfies A(x) = 1 + x*A(x)^2 + x^2*(1-x)*A(x)^3.

The programs for A388734, there is no canonical definition to state claims against.
-/

/-! ## A388734.P15897929911404409957

`A004151(A049162(n))`
-/

namespace A388734.P15897929911404409957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004151 (A049162 n).toNat

end

end A388734.P15897929911404409957

/-! ## A388734.P14101925911767125257

`A049162(A073790(n))`
-/

namespace A388734.P14101925911767125257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049162 (A073790 n).toNat

end

end A388734.P14101925911767125257

/-! ## A388734.P11807196039933976868

`A049162(A004881(n+1))`
-/

namespace A388734.P11807196039933976868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049162 (A004881 (n + 1)).toNat

end

end A388734.P11807196039933976868

/-! ## A388734.P15301381827242807490

`A049162(A004892(n+1))`
-/

namespace A388734.P15301381827242807490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049162 (A004892 (n + 1)).toNat

end

end A388734.P15301381827242807490

/-! ## A388734.P1171059032022395594

`A049162(A004903(n+1))`
-/

namespace A388734.P1171059032022395594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049162 (A004903 (n + 1)).toNat

end

end A388734.P1171059032022395594

/-!
# A388737: a(1) = 0, a(n) = abs(x) + abs(y), with x and y the next coordinates by using A028334 as a rectangular spiral.

The programs for A388737, there is no canonical definition to state claims against.
-/

/-! ## A388737.P106157202165582295

`A126304(A333068(n+2))`
-/

namespace A388737.P106157202165582295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126304 (A333068 (n + 2)).toNat

end

end A388737.P106157202165582295

/-! ## A388737.P5931416510694884607

`A333381(A184642(n)-A054354(n+1))`
-/

namespace A388737.P5931416510694884607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333381 (A184642 n - A054354 (n + 1)).toNat

end

end A388737.P5931416510694884607

/-! ## A388737.P3143485447515785227

`A057515(A000787(n+1)*A004159(n))`
-/

namespace A388737.P3143485447515785227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057515 (A000787 (n + 1) * A004159 n).toNat

end

end A388737.P3143485447515785227

/-! ## A388737.P7175619650752750646

`A062756(A271901(n+1)-A080094(n+1))`
-/

namespace A388737.P7175619650752750646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062756 (A271901 (n + 1) - A080094 (n + 1)).toNat

end

end A388737.P7175619650752750646

/-! ## A388737.P5274320624314026185

`A001221(A004200(n)+A000332(3*n+4))`
-/

namespace A388737.P5274320624314026185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A004200 n + A000332 (3 * n + 4)).toNat

end

end A388737.P5274320624314026185

/-!
# A388788: Array read by downward antidiagonals: T(n,k) is the number of partitions of [n], n >= 1, k >= 1, into cycles labeled with positive integers, such that the labels sum to k.

The programs for A388788, the canonical program `A388788.P16535735740673254510` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A388788 has offset 1).

The definition of A388788 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2555 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A388788.P16535735740673254510

`col(n)*T(n-1,k-1)+T(n-1,k)-(col(n)-1)*T(n-2,k-1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A388788

/-- `col(n)*T(n-1,k-1)+T(n-1,k)-(col(n)-1)*T(n-2,k-1)` -/
def P16535735740673254510.Spec : Prop :=
  ∀ n, P16535735740673254510.a n = A388788 (n + 1)

theorem P16535735740673254510.correct : P16535735740673254510.Spec := by
  intro n
  simp only [A388788, Nat.add_sub_cancel]

end A388788

/-! ## A388788.P2567844752718077790

`A020753(A071944(n))`
-/

namespace A388788.P2567844752718077790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020753 (A071944 n).toNat

end

end A388788.P2567844752718077790

namespace A388788

/-- `A020753(A071944(n))` -/
def P2567844752718077790.Spec : Prop :=
  ∀ n, P2567844752718077790.a n = A388788 (n + 1)

end A388788

/-! ## A388788.P17953331623352682466

`A309495(A077168(n))`
-/

namespace A388788.P17953331623352682466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309495 (A077168 n).toNat

end

end A388788.P17953331623352682466

namespace A388788

/-- `A309495(A077168(n))` -/
def P17953331623352682466.Spec : Prop :=
  ∀ n, P17953331623352682466.a n = A388788 (n + 1)

end A388788

/-! ## A388788.P18251437875355952402

`A053620(2*A187005(n+1))`
-/

namespace A388788.P18251437875355952402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053620 (2 * A187005 (n + 1)).toNat

end

end A388788.P18251437875355952402

namespace A388788

/-- `A053620(2*A187005(n+1))` -/
def P18251437875355952402.Spec : Prop :=
  ∀ n, P18251437875355952402.a n = A388788 (n + 1)

end A388788

/-! ## A388788.P14950971380756303650

`A111432(A067310(n))+A009766(n)`
-/

namespace A388788.P14950971380756303650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111432 (A067310 n).toNat + A009766 n

end

end A388788.P14950971380756303650

namespace A388788

/-- `A111432(A067310(n))+A009766(n)` -/
def P14950971380756303650.Spec : Prop :=
  ∀ n, P14950971380756303650.a n = A388788 (n + 1)

end A388788

/-!
# A388789: a(n) is the least number ending in at least n identical digits that has exactly n prime divisors, counted with multiplicity.

The programs for A388789, there is no canonical definition to state claims against.
-/

/-! ## A388789.P11601472325132829221

`lcm(A002275(n+1), A105681(A100181(n+1)))`
-/

namespace A388789.P11601472325132829221
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A002275 (n + 1)) (A105681 (A100181 (n + 1)).toNat)

end

end A388789.P11601472325132829221

