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
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C035
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C042
import Seq.B000.C044
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C011
import Seq.B001.C012
import Seq.B001.C013
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A342500: T(n,k) is the number of connected unlabeled posets with n elements and rank k: triangle read by rows.

The programs for A342500, there is no canonical definition to state claims against.
-/

/-! ## A342500.P16776726841038524558

`A361954(n+1)+A102683(A005179(n+1))`
-/

namespace A342500.P16776726841038524558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361954 (n + 1) + A102683 (A005179 (n + 1)).toNat

end

end A342500.P16776726841038524558

/-! ## A342500.P1058216075098997005

`A008277(n+1)-A057918(A035469(n+1))`
-/

namespace A342500.P1058216075098997005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008277 (n + 1) - A057918 (A035469 (n + 1)).toNat

end

end A342500.P1058216075098997005

/-! ## A342500.P4271132080870163714

`A361954(n+1)+A086015(A000051(n))`
-/

namespace A342500.P4271132080870163714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361954 (n + 1) + A086015 (A000051 n).toNat

end

end A342500.P4271132080870163714

/-! ## A342500.P3017991950707054010

`A361954(n+1)+A102683(A000225(n))`
-/

namespace A342500.P3017991950707054010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361954 (n + 1) + A102683 (A000225 n).toNat

end

end A342500.P3017991950707054010

/-! ## A342500.P17775804375458939714

`A361954(n+1)+A285255(A245980(n))`
-/

namespace A342500.P17775804375458939714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361954 (n + 1) + A285255 (A245980 n).toNat

end

end A342500.P17775804375458939714

/-!
# A342502: Gaps between first elements of prime quintuples of the form (p, p+2, p+6, p+12, p+14). The quintuples are abutting: twin/cousin/sexy/twin pairs.

The programs for A342502, there is no canonical definition to state claims against.
-/

/-! ## A342502.P6533734872170858488

`Δ[∩[A079292(n+1), A172454(n+1)]]`
-/

namespace A342502.P6533734872170858488
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079292 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172454 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∧ ∃ j, f3 j = (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A342502.P6533734872170858488

/-! ## A342502.P12082891875681139426

`Δ[p?[A079292(n+1)+6]]`
-/

namespace A342502.P12082891875681139426
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079292 (n + 1) + 6

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A342502.P12082891875681139426

/-! ## A342502.P1968133906690272278

`Δ[p?[A172454(n+1)+14]]`
-/

namespace A342502.P1968133906690272278
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172454 (n + 1) + 14

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A342502.P1968133906690272278

/-! ## A342502.P7216527246977751538

`Δ[∩[A153417(n+1), A172454(n+1)]]`
-/

namespace A342502.P7216527246977751538
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153417 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172454 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∧ ∃ j, f3 j = (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A342502.P7216527246977751538

/-! ## A342502.P7986335820225367248

`Δ[record[A020639(A079292(n+1)+6)]]`
-/

namespace A342502.P7986335820225367248
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A079292 (n + 1) + 6).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A342502.P7986335820225367248

/-!
# A342503: Numbers k such that k divides A340740(k).

The programs for A342503, there is no canonical definition to state claims against.
-/

/-! ## A342503.P17829869590525116862

`A379594(A069860(n+1))`
-/

namespace A342503.P17829869590525116862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379594 (A069860 (n + 1)).toNat

end

end A342503.P17829869590525116862

/-! ## A342503.P18127947677795195441

`A344838(A175413(n+1)+A001764(n))`
-/

namespace A342503.P18127947677795195441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344838 (A175413 (n + 1) + A001764 n).toNat

end

end A342503.P18127947677795195441

/-!
# A342504: Primes p such that (p*r+q*s)/2 is prime, where p,q,r,s are consecutive primes.

The programs for A342504, there is no canonical definition to state claims against.
-/

/-! ## A342504.P7382903701261116094

`A042966(5*(n+1)-A105681(3*n+5))`
-/

namespace A342504.P7382903701261116094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042966 ((5 * (n + 1) : ℤ) - A105681 (3 * n + 5)).toNat

end

end A342504.P7382903701261116094

/-!
# A342505: Primes p such that (q*s-p*r)/2 is prime, where p,q,r,s are consecutive primes.

The programs for A342505, there is no canonical definition to state claims against.
-/

/-! ## A342505.P14813442520833773751

`A167806(A276156(3*n+2)^A056924(n+1))`
-/

namespace A342505.P14813442520833773751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167806 (SequenceMachineLib.roundAway ((A276156 (3 * n + 2) : ℚ) ^ (A056924 (n + 1) : ℤ))).toNat

end

end A342505.P14813442520833773751

/-!
# A342506: Primes p such that (p*s+q*r)/2 is prime, where p,q,r,s are consecutive primes.

The programs for A342506, there is no canonical definition to state claims against.
-/

/-! ## A342506.P2854913305636294333

`A132170(a(n-3)+5)` with `a(0)=5, a(1)=7, a(2)=13`
-/

namespace A342506.P2854913305636294333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5, 7, 13] fun n a =>
  A132170 (a (n - 3) + 5).toNat

end

end A342506.P2854913305636294333

/-! ## A342506.P7584244307295556491

`A163385(∑[A025581(n)!^n])`
-/

namespace A342506.P7584244307295556491
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A025581 n).toNat ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163385 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A342506.P7584244307295556491

/-!
# A342507: Number of internal nodes in rooted tree with Matula-Goebel number n.

The programs for A342507, there is no canonical definition to state claims against.
-/

/-! ## A342507.P13151817534406327688

`A366388(A230628(n+1))`
-/

namespace A342507.P13151817534406327688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366388 (A230628 (n + 1)).toNat

end

end A342507.P13151817534406327688

/-! ## A342507.P14741767084808491905

`A366388(n+1)+A057427(n)`
-/

namespace A342507.P14741767084808491905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366388 (n + 1) + A057427 n

end

end A342507.P14741767084808491905

/-! ## A342507.P2932869893789235674

`A366388(n+1)-A057428(n)`
-/

namespace A342507.P2932869893789235674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366388 (n + 1) - A057428 n

end

end A342507.P2932869893789235674

/-! ## A342507.P14704283735538468654

`A061775(A198328(n+1))%(n+1)`
-/

namespace A342507.P14704283735538468654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A061775 (A198328 (n + 1)).toNat) (n + 1 : ℤ)

end

end A342507.P14704283735538468654

/-! ## A342507.P17762716799995778432

`(A061775(n+1)-A109129(n+1))%A061775(n+1)`
-/

namespace A342507.P17762716799995778432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A061775 (n + 1) - A109129 (n + 1)) (A061775 (n + 1))

end

end A342507.P17762716799995778432

/-! ## A342507.P5808392828034106208

`(A109129(n+1)*A196050(n+1))%A061775(n+1)`
-/

namespace A342507.P5808392828034106208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A109129 (n + 1) * A196050 (n + 1)) (A061775 (n + 1))

end

end A342507.P5808392828034106208

/-! ## A342507.P5240980193067016951

`A366388(A000040(n+1))`
-/

namespace A342507.P5240980193067016951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366388 (A000040 (n + 1)).toNat

end

end A342507.P5240980193067016951

/-! ## A342507.P8153739215926310233

`A366388(A006005(n+1))`
-/

namespace A342507.P8153739215926310233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366388 (A006005 (n + 1)).toNat

end

end A342507.P8153739215926310233

/-! ## A342507.P6804669166850065984

`A366388(A008578(n+2))`
-/

namespace A342507.P6804669166850065984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366388 (A008578 (n + 2)).toNat

end

end A342507.P6804669166850065984

/-! ## A342507.P9445832421237625513

`A366388(A006093(n+1)+1)`
-/

namespace A342507.P9445832421237625513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366388 (A006093 (n + 1) + 1).toNat

end

end A342507.P9445832421237625513

/-! ## A342507.P15408925471375445725

`A366388(A040976(n+1)+2)`
-/

namespace A342507.P15408925471375445725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366388 (A040976 (n + 1) + 2).toNat

end

end A342507.P15408925471375445725

/-! ## A342507.P8650287564964094783

`A366388(A100484(n+1)/2)`
-/

namespace A342507.P8650287564964094783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366388 (SequenceMachineLib.roundAway ((A100484 (n + 1) : ℚ) / 2)).toNat

end

end A342507.P8650287564964094783

/-! ## A342507.P8341983225622229784

`A366388(A001747(n+2)/2)`
-/

namespace A342507.P8341983225622229784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366388 (SequenceMachineLib.roundAway ((A001747 (n + 2) : ℚ) / 2)).toNat

end

end A342507.P8341983225622229784

/-! ## A342507.P3443171645955801927

`A366388(A014692(n+1)+n)`
-/

namespace A342507.P3443171645955801927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366388 (A014692 (n + 1) + (n : ℤ)).toNat

end

end A342507.P3443171645955801927

/-! ## A342507.P14713030360092801855

`A196050(A103517(n))-A109129(n+1)`
-/

namespace A342507.P14713030360092801855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196050 (A103517 n).toNat - A109129 (n + 1)

end

end A342507.P14713030360092801855

/-! ## A342507.P17804203939094823227

`A366388(A075643(n+2))`
-/

namespace A342507.P17804203939094823227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366388 (A075643 (n + 2)).toNat

end

end A342507.P17804203939094823227

/-! ## A342507.P3018007175611528727

`A366388(A100484(n+1))`
-/

namespace A342507.P3018007175611528727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366388 (A100484 (n + 1)).toNat

end

end A342507.P3018007175611528727

/-! ## A342507.P3998095565483655094

`A366388(A001747(n+2))`
-/

namespace A342507.P3998095565483655094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366388 (A001747 (n + 2)).toNat

end

end A342507.P3998095565483655094

/-! ## A342507.P10417979913370760388

`A366388(A001749(n+1)/2)`
-/

namespace A342507.P10417979913370760388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366388 (SequenceMachineLib.roundAway ((A001749 (n + 1) : ℚ) / 2)).toNat

end

end A342507.P10417979913370760388

/-! ## A342507.P6944095254786590893

`A366388(A062876(n+1)/2)`
-/

namespace A342507.P6944095254786590893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366388 (SequenceMachineLib.roundAway ((A062876 (n + 1) : ℚ) / 2)).toNat

end

end A342507.P6944095254786590893

/-!
# A342510: a(n) = k where Z_k is the largest Zimin word that n (read as a binary word) does not avoid.

The programs for A342510, there is no canonical definition to state claims against.
-/

/-! ## A342510.P14147724836570381127

`A110591(A020986(n)-A322389(n+1))`
-/

namespace A342510.P14147724836570381127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110591 (A020986 n - A322389 (n + 1)).toNat

end

end A342510.P14147724836570381127

/-! ## A342510.P14459414794760731226

`round(root(A083253(3*(n+1)), 11))`
-/

namespace A342510.P14459414794760731226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A083253 (3 * (n + 1)) : ℝ) ^ (1 / (11 : ℝ)))

end

end A342510.P14459414794760731226

/-! ## A342510.P3090490624569502711

`A300403(A051724(n)+4)`
-/

namespace A342510.P3090490624569502711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300403 (A051724 n + 4).toNat

end

end A342510.P3090490624569502711

/-! ## A342510.P12406148213708355500

`gcd(2, A173557(A027591(n)))`
-/

namespace A342510.P12406148213708355500
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A173557 (A027591 n).toNat)

end

end A342510.P12406148213708355500

/-! ## A342510.P8136705836757155942

`A275437(∑[A319402(2*n)])`
-/

namespace A342510.P8136705836757155942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319402 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275437 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A342510.P8136705836757155942

/-! ## A342510.P10018775500087473632

`A036453(A051724(A151933(n)+n))`
-/

namespace A342510.P10018775500087473632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036453 (A051724 (A151933 n + (n : ℤ)).toNat).toNat

end

end A342510.P10018775500087473632

/-! ## A342510.P439389966147297351

`A036453((A051724(n)-A151933(n))²)`
-/

namespace A342510.P439389966147297351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036453 ((A051724 n - A151933 n) ^ 2).toNat

end

end A342510.P439389966147297351

/-! ## A342510.P3342008432304285488

`A237684(A329906(n))`
-/

namespace A342510.P3342008432304285488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237684 (A329906 n).toNat

end

end A342510.P3342008432304285488

/-! ## A342510.P14273341721060285321

`A055666(A078661(n+1))`
-/

namespace A342510.P14273341721060285321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055666 (A078661 (n + 1)).toNat

end

end A342510.P14273341721060285321

/-! ## A342510.P10746928378623126723

`A055642(A307629(A138953((2*n+1)²)))`
-/

namespace A342510.P10746928378623126723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (A307629 (A138953 ((2 * n + 1) ^ 2)).toNat).toNat

end

end A342510.P10746928378623126723

/-!
# A342512: a(n) is the number of substrings of the binary representation of n that are instances of the Zimin word Z_k, where k = A342510(n).

The programs for A342512, there is no canonical definition to state claims against.
-/

/-! ## A342512.P11086694706123506967

`A342511(∑[A342510(n)]-1)`
-/

namespace A342512.P11086694706123506967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342510 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342511 (∑ j ∈ Finset.range (n + 1), f1 j - 1).toNat

end

end A342512.P11086694706123506967

/-! ## A342512.P17351658344860040615

`A342511(A057428(n)+∑[A342510(n)])`
-/

namespace A342512.P17351658344860040615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342510 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342511 (A057428 n + ∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A342512.P17351658344860040615

/-! ## A342512.P14619254497669677686

`A342511(∑[A057428(n)²*A342510(n)])`
-/

namespace A342512.P14619254497669677686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n ^ 2 * A342510 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342511 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A342512.P14619254497669677686

/-!
# A342514: Number of integer partitions of n with distinct first quotients.

The programs for A342514, there is no canonical definition to state claims against.
-/

/-! ## A342514.P11473053368866555676

`A036027(n+1)-A025457(A246143(n+1))`
-/

namespace A342514.P11473053368866555676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036027 (n + 1) - A025457 (A246143 (n + 1)).toNat

end

end A342514.P11473053368866555676

/-! ## A342514.P10750471421833089326

`A080197(A062436(n+2)%A252494(3*(n+1)))`
-/

namespace A342514.P10750471421833089326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080197 (Int.tmod (A062436 (n + 2)) (A252494 (3 * (n + 1)))).toNat

end

end A342514.P10750471421833089326

/-!
# A342515: Number of strict partitions of n with constant (equal) first-quotients.

The programs for A342515, there is no canonical definition to state claims against.
-/

/-! ## A342515.P11780366875098035010

`ceil((A342495(n)-A032741(n))/2)`
-/

namespace A342515.P11780366875098035010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A342495 n - A032741 n : ℚ) / 2⌉

end

end A342515.P11780366875098035010

/-! ## A342515.P9590474051450847149

`(A342495(floor((3*n+1)/3))-A032741(n)+1)/2`
-/

namespace A342515.P9590474051450847149
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A342495 ⌊(3 * n + 1 : ℚ) / 3⌋.toNat - A032741 n + 1 : ℚ) / 2

end

end A342515.P9590474051450847149

/-! ## A342515.P15094226454035360105

`A000463(A342495(n)-A032741(n))`
-/

namespace A342515.P15094226454035360105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (A342495 n - A032741 n).toNat

end

end A342515.P15094226454035360105

/-! ## A342515.P13105429497156003504

`A001057(A342495(n)-A032741(n))`
-/

namespace A342515.P13105429497156003504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A342495 n - A032741 n).toNat

end

end A342515.P13105429497156003504

/-! ## A342515.P16903665731463753977

`A008619(A342495(n)-A032741(n))`
-/

namespace A342515.P16903665731463753977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A342495 n - A032741 n).toNat

end

end A342515.P16903665731463753977

/-! ## A342515.P11166561065278385451

`A065033(A342495(n)-A032741(n))`
-/

namespace A342515.P11166561065278385451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A342495 n - A032741 n).toNat

end

end A342515.P11166561065278385451

/-! ## A342515.P13185063504478899062

`A001281(A342495(n)+1-A032741(n))`
-/

namespace A342515.P13185063504478899062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A342495 n + (1 - A032741 n)).toNat

end

end A342515.P13185063504478899062

/-! ## A342515.P11720839550631001027

`A004525(A342495(n)+1-A032741(n))`
-/

namespace A342515.P11720839550631001027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A342495 n + (1 - A032741 n)).toNat

end

end A342515.P11720839550631001027

/-! ## A342515.P9201457165781516826

`A342496(n)-A032741(n)`
-/

namespace A342515.P9201457165781516826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342496 n - A032741 n

end

end A342515.P9201457165781516826

/-!
# A342516: Number of strict integer partitions of n with weakly increasing first quotients.

The programs for A342516, there is no canonical definition to state claims against.
-/

/-! ## A342516.P7206229802017521302

`A000700(lt[A056141(n+3), A249772(3*(n+1))])`
-/

namespace A342516.P7206229802017521302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056141 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249772 (3 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000700 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A342516.P7206229802017521302

/-! ## A342516.P4834228324288087916

`A178786(A096076(A237037(n+1))-A178786(n))`
-/

namespace A342516.P4834228324288087916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178786 (A096076 (A237037 (n + 1)).toNat - A178786 n).toNat

end

end A342516.P4834228324288087916

/-!
# A342517: Number of strict integer partitions of n with strictly increasing first quotients.

The programs for A342517, there is no canonical definition to state claims against.
-/

/-! ## A342517.P7531637431642811444

`ceil(A102352(∑[A032742(n+1)])/4)`
-/

namespace A342517.P7531637431642811444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A102352 (∑ j ∈ Finset.range (n + 1), f1 j).toNat : ℚ) / 4⌉

end

end A342517.P7531637431642811444

/-! ## A342517.P18294656112857742924

`A110655(A006075(n+3)-A123317(n+1))`
-/

namespace A342517.P18294656112857742924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110655 (A006075 (n + 3) - A123317 (n + 1)).toNat

end

end A342517.P18294656112857742924

/-! ## A342517.P5642793675465186277

`∑[A379669(n)]+A117277(n+2)-A001221(2^n)`
-/

namespace A342517.P5642793675465186277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379669 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (A117277 (n + 2) - A001221 (2 ^ n))

end

end A342517.P5642793675465186277

/-! ## A342517.P17490559272107434328

`A330665(A318848(n+1))+A309683(n)`
-/

namespace A342517.P17490559272107434328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330665 (A318848 (n + 1)).toNat + A309683 n

end

end A342517.P17490559272107434328

/-! ## A342517.P10643003308189305644

`A346693(lt[A091523(n+1), A372799(n+1)])`
-/

namespace A342517.P10643003308189305644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091523 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372799 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346693 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A342517.P10643003308189305644

/-!
# A342518: Number of strict integer partitions of n with strictly decreasing first quotients.

The programs for A342518, there is no canonical definition to state claims against.
-/

/-! ## A342518.P7667033124805524811

`A000005(2^∑[A133009(n)])`
-/

namespace A342518.P7667033124805524811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133009 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (∑ j ∈ Finset.range (n + 1), f1 j : ℤ))).toNat

end

end A342518.P7667033124805524811

/-! ## A342518.P15243466526851965646

`A000005(A000079(∑[A133009(n)]))`
-/

namespace A342518.P15243466526851965646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133009 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A000079 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A342518.P15243466526851965646

/-! ## A342518.P11903593952842073939

`A000005(∏[A016116(A108804(n))])`
-/

namespace A342518.P11903593952842073939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 (A108804 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A342518.P11903593952842073939

/-! ## A342518.P17857127725234958105

`A000005(∏[A000079(A133009(n))])`
-/

namespace A342518.P17857127725234958105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A133009 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A342518.P17857127725234958105

/-! ## A342518.P6008736392357260086

`A000005(∏[A016116(A247303(n))])`
-/

namespace A342518.P6008736392357260086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 (A247303 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A342518.P6008736392357260086

/-!
# A342519: Number of strict integer partitions of n with weakly decreasing first quotients.

The programs for A342519, there is no canonical definition to state claims against.
-/

/-! ## A342519.P14635162755935927030

`ceil(A269499(n+1)/70)`
-/

namespace A342519.P14635162755935927030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A269499 (n + 1) : ℚ) / 70⌉

end

end A342519.P14635162755935927030

/-! ## A342519.P8970908812765796157

`floor(A269499(n+1)/70)+A007318(∑[n])`
-/

namespace A342519.P8970908812765796157
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A269499 (n + 1) : ℚ) / 70⌋ + A007318 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A342519.P8970908812765796157

/-! ## A342519.P18269123646367856638

`floor(A007318(C(2, n))+A269499(n+1)/70)`
-/

namespace A342519.P18269123646367856638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A007318 (Nat.choose 2 n) : ℚ) + (A269499 (n + 1) : ℚ) / 70⌋

end

end A342519.P18269123646367856638

/-! ## A342519.P3156585582252358108

`floor(A014963(10*(n+1))+A269499(n+1)/70)`
-/

namespace A342519.P3156585582252358108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A014963 (10 * (n + 1)) : ℚ) + (A269499 (n + 1) : ℚ) / 70⌋

end

end A342519.P3156585582252358108

/-! ## A342519.P8285052532351499704

`floor(A001222(A007918(n))+A269499(n+1)/70)`
-/

namespace A342519.P8285052532351499704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A001222 (A007918 n).toNat : ℚ) + (A269499 (n + 1) : ℚ) / 70⌋

end

end A342519.P8285052532351499704

/-!
# A342520: Number of strict integer partitions of n with distinct first quotients.

The programs for A342520, there is no canonical definition to state claims against.
-/

/-! ## A342520.P9167146665640567993

`A325854(n)+A025466(A325868(n+1))`
-/

namespace A342520.P9167146665640567993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325854 n + A025466 (A325868 (n + 1)).toNat

end

end A342520.P9167146665640567993

/-! ## A342520.P13005214853876695355

`A330954(A306805(n+1)%A181141(n+1))+A325854(n)`
-/

namespace A342520.P13005214853876695355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330954 (Int.tmod (A306805 (n + 1)) (A181141 (n + 1))).toNat + A325854 n

end

end A342520.P13005214853876695355

/-! ## A342520.P12783431122823069557

`A330954(A306806(n+1)%A181141(n+1))+A325854(n)`
-/

namespace A342520.P12783431122823069557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330954 (Int.tmod (A306806 (n + 1)) (A181141 (n + 1))).toNat + A325854 n

end

end A342520.P12783431122823069557

/-!
# A342521: Heinz numbers of integer partitions with distinct first quotients.

The programs for A342521, there is no canonical definition to state claims against.
-/

/-! ## A342521.P8986124810991662724

`A048107(comp[Δ[A038623(n+1)]])`
-/

namespace A342521.P8986124810991662724
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038623 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048107 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A342521.P8986124810991662724

/-! ## A342521.P1898423368275597260

`A048107(comp[A048066(2*n+5)])`
-/

namespace A342521.P1898423368275597260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048066 (2 * n + 5)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048107 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A342521.P1898423368275597260

/-! ## A342521.P13473204933902113392

`A004709(lt[A193073(n+4), A379795(n+1)])`
-/

namespace A342521.P13473204933902113392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193073 (n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379795 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004709 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A342521.P13473204933902113392

/-! ## A342521.P15751456947494563912

`∩[A273058(n+1), A004709(A273058(n+1))]`
-/

namespace A342521.P15751456947494563912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273058 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004709 (A273058 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A342521.P15751456947494563912

/-! ## A342521.P10244295838298460223

`record[A050985(A043537(n+1)+A002264(n+1))]`
-/

namespace A342521.P10244295838298460223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050985 (A043537 (n + 1) + A002264 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A342521.P10244295838298460223

/-! ## A342521.P3047718631208241802

`A048107(comp[A147986(n+1)-A278063(n+2)])`
-/

namespace A342521.P3047718631208241802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147986 (n + 1) - A278063 (n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048107 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A342521.P3047718631208241802

/-! ## A342521.P1149675024351848543

`A048107(comp[A000079(n)-A000959(3*n+1)])`
-/

namespace A342521.P1149675024351848543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n - A000959 (3 * n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048107 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A342521.P1149675024351848543

/-!
# A342522: Heinz numbers of integer partitions with constant (equal) first quotients.

The programs for A342522, there is no canonical definition to state claims against.
-/

/-! ## A342522.P3302331003698702950

`record[gcd(n, A035322(n+1))+1]`
-/

namespace A342522.P3302331003698702950
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A035322 (n + 1)) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A342522.P3302331003698702950

/-! ## A342522.P4709326125920747369

`∪[A102466(n+1), A000125(n)]`
-/

namespace A342522.P4709326125920747369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102466 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000125 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A342522.P4709326125920747369

/-! ## A342522.P5404598993364099369

`∪[A006930(n), A102466(n+1)]`
-/

namespace A342522.P5404598993364099369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006930 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102466 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A342522.P5404598993364099369

/-! ## A342522.P7285354070159777167

`∪[A102466(n+1), A008249(n)]`
-/

namespace A342522.P7285354070159777167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102466 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008249 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A342522.P7285354070159777167

/-! ## A342522.P18046852928664837068

`∪[A102466(n+1), A008387(n)]`
-/

namespace A342522.P18046852928664837068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102466 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008387 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A342522.P18046852928664837068

/-! ## A342522.P13407959568543980910

`∪[A102466(n+1), A009860(n)]`
-/

namespace A342522.P13407959568543980910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102466 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009860 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A342522.P13407959568543980910

/-! ## A342522.P7491680243858788720

`∪[A102466(n+1), A010022(n)]`
-/

namespace A342522.P7491680243858788720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102466 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010022 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A342522.P7491680243858788720

/-! ## A342522.P12876388580623554650

`∪[A102466(n+1), A019574(n)]`
-/

namespace A342522.P12876388580623554650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102466 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019574 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A342522.P12876388580623554650

/-! ## A342522.P4874396649130878558

`∪[A022731(n), A102466(n+1)]`
-/

namespace A342522.P4874396649130878558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022731 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102466 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A342522.P4874396649130878558

/-! ## A342522.P7352149377746131703

`∪[A102466(n+1), A025708(n)]`
-/

namespace A342522.P7352149377746131703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102466 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025708 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A342522.P7352149377746131703

/-!
# A342523: Heinz numbers of integer partitions with weakly increasing first quotients.

The programs for A342523, there is no canonical definition to state claims against.
-/

/-! ## A342523.P6436140730367314022

`A325400(comp[n*A115279(n+1)])`
-/

namespace A342523.P6436140730367314022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A115279 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325400 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A342523.P6436140730367314022

/-! ## A342523.P4331023053659775908

`A325400(comp[n*A339113(n+2)])`
-/

namespace A342523.P4331023053659775908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A339113 (n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325400 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A342523.P4331023053659775908

/-! ## A342523.P16884235811338171289

`A325400(comp[n*A031215(n+4)])`
-/

namespace A342523.P16884235811338171289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A031215 (n + 4)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325400 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A342523.P16884235811338171289

/-! ## A342523.P3046366156607100494

`A325400(comp[lcm(n, A339113(n+2))])`
-/

namespace A342523.P3046366156607100494
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) (A339113 (n + 2))

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325400 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A342523.P3046366156607100494

/-! ## A342523.P12650256939903583680

`A325400(comp[(n+1)*A047752(n+1)])`
-/

namespace A342523.P12650256939903583680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A047752 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325400 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A342523.P12650256939903583680

/-! ## A342523.P18033744608770600826

`A325400(∪[comp[29*n], A049989(n+1)])`
-/

namespace A342523.P18033744608770600826
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  29 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049989 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325400 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f3 j = (x : ℤ)) n)

end

end A342523.P18033744608770600826

/-!
# A342524: Heinz numbers of integer partitions with strictly increasing first quotients.

The programs for A342524, there is no canonical definition to state claims against.
-/

/-! ## A342524.P14690662970011887416

`∪[A392697(n+1), A075371(n)]`
-/

namespace A342524.P14690662970011887416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392697 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075371 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A342524.P14690662970011887416

/-! ## A342524.P1838247493371565022

`∩[A325456(n+1), A342521(n+1)]`
-/

namespace A342524.P1838247493371565022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325456 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342521 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A342524.P1838247493371565022

/-! ## A342524.P4860251567364537749

`∩[A342521(n+1), A342523(n+1)]`
-/

namespace A342524.P4860251567364537749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342521 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342523 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A342524.P4860251567364537749

/-! ## A342524.P2848115298977754832

`lt[A000571(A323436(2*n)), n+1]`
-/

namespace A342524.P2848115298977754832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000571 (A323436 (2 * n)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A342524.P2848115298977754832

/-! ## A342524.P9965888673822092685

`lt[A006772(A323436(2*n)), A000217(n)]`
-/

namespace A342524.P9965888673822092685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006772 (A323436 (2 * n)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A342524.P9965888673822092685

/-!
# A342525: Heinz numbers of integer partitions with strictly decreasing first quotients.

The programs for A342525, there is no canonical definition to state claims against.
-/

/-! ## A342525.P13548266469005526614

`∪[A000649(n), A325457(n+1)]`
-/

namespace A342525.P13548266469005526614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000649 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325457 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A342525.P13548266469005526614

/-! ## A342525.P15688296539372750697

`∪[A001334(n), A325457(n+1)]`
-/

namespace A342525.P15688296539372750697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001334 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325457 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A342525.P15688296539372750697

/-! ## A342525.P12561950714252287065

`∪[A001551(n), A325457(n+1)]`
-/

namespace A342525.P12561950714252287065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001551 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325457 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A342525.P12561950714252287065

/-! ## A342525.P17056394661879178756

`∪[A001800(n), A325457(n+1)]`
-/

namespace A342525.P17056394661879178756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001800 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325457 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A342525.P17056394661879178756

/-! ## A342525.P18214742977718580025

`∪[A002457(n), A325457(n+1)]`
-/

namespace A342525.P18214742977718580025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002457 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325457 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A342525.P18214742977718580025

/-! ## A342525.P3336350713588433996

`∪[A325457(n+1), A002755(n)]`
-/

namespace A342525.P3336350713588433996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325457 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002755 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A342525.P3336350713588433996

/-! ## A342525.P17369567372495538049

`∪[A325457(n+1), A002758(n)]`
-/

namespace A342525.P17369567372495538049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325457 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002758 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A342525.P17369567372495538049

/-! ## A342525.P13944954305069431936

`∪[A002768(n), A325457(n+1)]`
-/

namespace A342525.P13944954305069431936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002768 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325457 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A342525.P13944954305069431936

/-! ## A342525.P3575638537221798962

`∪[A002920(n), A325457(n+1)]`
-/

namespace A342525.P3575638537221798962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002920 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325457 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A342525.P3575638537221798962

/-! ## A342525.P4614607029933468538

`∪[A004663(n), A325457(n+1)]`
-/

namespace A342525.P4614607029933468538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004663 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325457 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A342525.P4614607029933468538

/-!
# A342526: Heinz numbers of integer partitions with weakly decreasing first quotients.

The programs for A342526, there is no canonical definition to state claims against.
-/

/-! ## A342526.P14690978544405675428

`∪[A325361(n+1), n*(n+2)+7]`
-/

namespace A342526.P14690978544405675428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325361 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (n + 2) + 7

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = x) n

end

end A342526.P14690978544405675428

/-! ## A342526.P1455655878573784096

`∪[A000125(n), A325361(n+1)]`
-/

namespace A342526.P1455655878573784096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000125 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325361 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A342526.P1455655878573784096

/-! ## A342526.P10149119173944303386

`∪[A002759(n), A325361(n+1)]`
-/

namespace A342526.P10149119173944303386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002759 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325361 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A342526.P10149119173944303386

/-! ## A342526.P17359872640269581715

`∪[A005557(n), A325361(n+1)]`
-/

namespace A342526.P17359872640269581715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005557 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325361 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A342526.P17359872640269581715

/-! ## A342526.P1920132709312614281

`∪[A006930(n), A325361(n+1)]`
-/

namespace A342526.P1920132709312614281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006930 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325361 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A342526.P1920132709312614281

/-! ## A342526.P7964016474017406666

`∪[A007825(n), A325361(n+1)]`
-/

namespace A342526.P7964016474017406666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007825 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325361 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A342526.P7964016474017406666

/-! ## A342526.P12074105328699661843

`∪[A008249(n), A325361(n+1)]`
-/

namespace A342526.P12074105328699661843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008249 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325361 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A342526.P12074105328699661843

/-! ## A342526.P15068760861067351960

`∪[A008387(n), A325361(n+1)]`
-/

namespace A342526.P15068760861067351960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008387 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325361 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A342526.P15068760861067351960

/-! ## A342526.P8473931824630103286

`∪[A009860(n), A325361(n+1)]`
-/

namespace A342526.P8473931824630103286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009860 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325361 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A342526.P8473931824630103286

/-! ## A342526.P4480964766176284316

`∪[A009945(n), A325361(n+1)]`
-/

namespace A342526.P4480964766176284316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009945 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325361 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A342526.P4480964766176284316

/-!
# A342527: Number of compositions of n with alternating parts equal.

The programs for A342527, the canonical program `A342527.P5913771022623438797` is in `Seq.B000.C044`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A342527 has offset 0).

The definition of A342527 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A342527.P5913771022623438797

`∑{d}[n, #-2]+1+n`

The canonical program, it is in `Seq.B000.C044`.
-/

namespace A342527

/-- `∑{d}[n, #-2]+1+n` -/
def P5913771022623438797.Spec : Prop :=
  ∀ n, P5913771022623438797.a n = A342527 n

theorem P5913771022623438797.correct : P5913771022623438797.Spec := by
  intro n
  simp only [A342527]

end A342527

/-! ## A342527.P8790238700739911631

`1-(∑{d}[n, 2-#]-n)`
-/

namespace A342527.P8790238700739911631
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (∑ d ∈ Nat.divisors (f1 n), (2 - (d : ℤ)) - (n : ℤ))

end

end A342527.P8790238700739911631

namespace A342527

/-- `1-(∑{d}[n, 2-#]-n)` -/
def P8790238700739911631.Spec : Prop :=
  ∀ n, P8790238700739911631.a n = A342527 n

theorem P8790238700739911631.correct : P8790238700739911631.Spec := by
  intro n
  simp only [A342527, Nat.add_sub_cancel, A342527.P8790238700739911631.f1, A342527.P8790238700739911631.a, A342527.P5913771022623438797.f1, A342527.P5913771022623438797.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A342527

/-! ## A342527.P5241467226525836793

`∑{d}[n, A121048(#)-2]+1`
-/

namespace A342527.P5241467226525836793
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (A121048 d - 2) + 1

end

end A342527.P5241467226525836793

namespace A342527

/-- `∑{d}[n, A121048(#)-2]+1` -/
def P5241467226525836793.Spec : Prop :=
  ∀ n, P5241467226525836793.a n = A342527 n

end A342527

/-! ## A342527.P145283250821239677

`A152771(round(sqrt(n²+1)))+A028310(n)`
-/

namespace A342527.P145283250821239677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152771 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat + A028310 n

end

end A342527.P145283250821239677

namespace A342527

/-- `A152771(round(sqrt(n²+1)))+A028310(n)` -/
def P145283250821239677.Spec : Prop :=
  ∀ n, P145283250821239677.a n = A342527 n

end A342527

/-! ## A342527.P6067297741143374632

`A137319(A028310(n))-A032741(n)`
-/

namespace A342527.P6067297741143374632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137319 (A028310 n).toNat - A032741 n

end

end A342527.P6067297741143374632

namespace A342527

/-- `A137319(A028310(n))-A032741(n)` -/
def P6067297741143374632.Spec : Prop :=
  ∀ n, P6067297741143374632.a n = A342527 n

end A342527

/-! ## A342527.P7261578340584524892

`A152771(A000007(n)+n)+A000007(n)+n`
-/

namespace A342527.P7261578340584524892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152771 (A000007 n + (n : ℤ)).toNat + (A000007 n + (n : ℤ))

end

end A342527.P7261578340584524892

namespace A342527

/-- `A152771(A000007(n)+n)+A000007(n)+n` -/
def P7261578340584524892.Spec : Prop :=
  ∀ n, P7261578340584524892.a n = A342527 n

end A342527

/-! ## A342527.P4736313855933642885

`A137319(A065033(2*n))-A032741(n)`
-/

namespace A342527.P4736313855933642885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137319 (A065033 (2 * n)).toNat - A032741 n

end

end A342527.P4736313855933642885

namespace A342527

/-- `A137319(A065033(2*n))-A032741(n)` -/
def P4736313855933642885.Spec : Prop :=
  ∀ n, P4736313855933642885.a n = A342527 n

end A342527

/-! ## A342527.P17599763505909408915

`A028310(A152771(A028310(n))+n)`
-/

namespace A342527.P17599763505909408915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A152771 (A028310 n).toNat + (n : ℤ)).toNat

end

end A342527.P17599763505909408915

namespace A342527

/-- `A028310(A152771(A028310(n))+n)` -/
def P17599763505909408915.Spec : Prop :=
  ∀ n, P17599763505909408915.a n = A342527 n

end A342527

/-!
# A342528: Number of compositions with alternating parts weakly decreasing (or weakly increasing).

The programs for A342528, there is no canonical definition to state claims against.
-/

/-! ## A342528.P12089119641898432552

`A000007(n)+Δ[A001523(n)]`
-/

namespace A342528.P12089119641898432552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001523 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (f1 (n + 1) - f1 n)

end

end A342528.P12089119641898432552

/-! ## A342528.P633887920351024052

`Δ[A000712(n)-A006330(n)]`
-/

namespace A342528.P633887920351024052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000712 n - A006330 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A342528.P633887920351024052

/-! ## A342528.P17777858204558623580

`(A380108(n)+A114921(n))/2`
-/

namespace A342528.P17777858204558623580
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A380108 n + A114921 n : ℚ) / 2

end

end A342528.P17777858204558623580

/-! ## A342528.P6477577200845657107

`Δ[A001523(n)%A001523(n+1)]`
-/

namespace A342528.P6477577200845657107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001523 n) (A001523 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A342528.P6477577200845657107

/-! ## A342528.P8638055166615309907

`A001523(A028310(n)+1)-A001523(n)`
-/

namespace A342528.P8638055166615309907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001523 (A028310 n + 1).toNat - A001523 n

end

end A342528.P8638055166615309907

/-! ## A342528.P5818344030319200615

`A001523(n+1)+A006330(n)-A000712(n)`
-/

namespace A342528.P5818344030319200615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001523 (n + 1) + (A006330 n - A000712 n)

end

end A342528.P5818344030319200615

/-! ## A342528.P2725355213185328881

`A001523(n+1)+A114921(n)-A006330(n)`
-/

namespace A342528.P2725355213185328881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001523 (n + 1) + (A114921 n - A006330 n)

end

end A342528.P2725355213185328881

/-! ## A342528.P13846684777979353322

`A001523(n+1)-A001523(n)*A057427(n)`
-/

namespace A342528.P13846684777979353322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001523 (n + 1) - A001523 n * A057427 n

end

end A342528.P13846684777979353322

/-! ## A342528.P5900878628614862455

`A011782(n)+Δ[A001523(n)-A011782(n)]`
-/

namespace A342528.P5900878628614862455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001523 n - A011782 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n + (f1 (n + 1) - f1 n)

end

end A342528.P5900878628614862455

/-! ## A342528.P3346481785649003792

`Δ[A131577(n)+A001523(n)]-A131577(n)`
-/

namespace A342528.P3346481785649003792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 n + A001523 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A131577 n

end

end A342528.P3346481785649003792

/-! ## A342528.P8165720956396744253

`A011782(n)+A115981(n)-A115981(n+1)`
-/

namespace A342528.P8165720956396744253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n + (A115981 n - A115981 (n + 1))

end

end A342528.P8165720956396744253

/-! ## A342528.P15548529497308918832

`Δ[A001523(n)%A099325(n)]`
-/

namespace A342528.P15548529497308918832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001523 n) (A099325 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A342528.P15548529497308918832

/-!
# A342529: Number of compositions of n with distinct first quotients.

The programs for A342529, there is no canonical definition to state claims against.
-/

/-! ## A342529.P8055556776201600206

`xor(A001222(A151301(n)), A034008(n))`
-/

namespace A342529.P8055556776201600206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A001222 (A151301 n).toNat) (A034008 n)

end

end A342529.P8055556776201600206

/-! ## A342529.P1275599654278771323

`A000196(A005773(n)*A120246(n+1))`
-/

namespace A342529.P1275599654278771323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A005773 n * A120246 (n + 1)).toNat

end

end A342529.P1275599654278771323

/-! ## A342529.P14102828115006001041

`A000196(A288766(2*n+1)*A343304(n))`
-/

namespace A342529.P14102828115006001041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A288766 (2 * n + 1) * A343304 n).toNat

end

end A342529.P14102828115006001041

/-!
# A342530: Number of strict chains of divisors ending with n and having distinct first quotients.

The programs for A342530, the canonical program `A342530.P17095963351911615906` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A342530 has offset 1).

The definition of A342530 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A254578, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A342530.P17095963351911615906

`∑{d}[n+1, A254578(#)]`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A342530

/-- `∑{d}[n+1, A254578(#)]` -/
def P17095963351911615906.Spec : Prop :=
  ∀ n, P17095963351911615906.a n = A342530 (n + 1)

theorem P17095963351911615906.correct : P17095963351911615906.Spec := by
  intro n
  simp only [A342530, Nat.add_sub_cancel]

end A342530

/-! ## A342530.P3986355973537085728

`or(A307409(A294787(3*n+1)), A328706(n+1))`
-/

namespace A342530.P3986355973537085728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A307409 (A294787 (3 * n + 1)).toNat) (A328706 (n + 1))

end

end A342530.P3986355973537085728

namespace A342530

/-- `or(A307409(A294787(3*n+1)), A328706(n+1))` -/
def P3986355973537085728.Spec : Prop :=
  ∀ n, P3986355973537085728.a n = A342530 (n + 1)

end A342530

/-! ## A342530.P12506181831163464984

`A328706(n+1)+A058348(A028326(n))`
-/

namespace A342530.P12506181831163464984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328706 (n + 1) + A058348 (A028326 n).toNat

end

end A342530.P12506181831163464984

namespace A342530

/-- `A328706(n+1)+A058348(A028326(n))` -/
def P12506181831163464984.Spec : Prop :=
  ∀ n, P12506181831163464984.a n = A342530 (n + 1)

end A342530

/-!
# A342531: Triangle read by rows where T(n,k) is the number of strict integer partitions of n with maximal descent k, n >= 0, 0 <= k <= n.

The programs for A342531, there is no canonical definition to state claims against.
-/

/-! ## A342531.P16972935710429206434

`abs(A016353(A200370(n+1)²))`
-/

namespace A342531.P16972935710429206434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A016353 (A200370 (n + 1) ^ 2).toNat|

end

end A342531.P16972935710429206434

/-! ## A342531.P3728402332210432666

`abs(A016398(A200370(n+1)²))`
-/

namespace A342531.P3728402332210432666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A016398 (A200370 (n + 1) ^ 2).toNat|

end

end A342531.P3728402332210432666

/-! ## A342531.P2362567056505966477

`A059841(A181196(n+1)+A010054(n))`
-/

namespace A342531.P2362567056505966477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (A181196 (n + 1) + A010054 n).toNat

end

end A342531.P2362567056505966477

/-! ## A342531.P13743021015491734455

`A059841(A181196(n+1)%A326797(n))`
-/

namespace A342531.P13743021015491734455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (Int.tmod (A181196 (n + 1)) (A326797 n)).toNat

end

end A342531.P13743021015491734455

/-! ## A342531.P16602669974088260064

`A103583(A166065(n))`
-/

namespace A342531.P16602669974088260064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103583 (A166065 n).toNat

end

end A342531.P16602669974088260064

/-!
# A342532: Number of even-length compositions of n with alternating parts distinct.

The programs for A342532, there is no canonical definition to state claims against.
-/

/-! ## A342532.P17374927851435416078

`A014607(A014637(3*(n+1)))+A014596(n)`
-/

namespace A342532.P17374927851435416078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014607 (A014637 (3 * (n + 1))).toNat + A014596 n

end

end A342532.P17374927851435416078

/-! ## A342532.P10151937834811474830

`A338331(A089408(n+2))-A152822(n+3)`
-/

namespace A342532.P10151937834811474830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338331 (A089408 (n + 2)).toNat - A152822 (n + 3)

end

end A342532.P10151937834811474830

/-! ## A342532.P14590919027411264854

`A319413(A007436(n+1)+5)+A046660(A057701(n+1))`
-/

namespace A342532.P14590919027411264854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319413 (A007436 (n + 1) + 5).toNat + A046660 (A057701 (n + 1)).toNat

end

end A342532.P14590919027411264854

/-!
# A342533: a(n) is the number of n-gons in A000940 that display symmetry (reflection / rotation).

The programs for A342533, there is no canonical definition to state claims against.
-/

/-! ## A342533.P6809225449403611112

`A000940(n+3)-A357602(n+3)`
-/

namespace A342533.P6809225449403611112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000940 (n + 3) - A357602 (n + 3)

end

end A342533.P6809225449403611112

/-! ## A342533.P6766078452696389841

`∪[A094156(n+1), A094157(n+2)]-A357602(n+3)`
-/

namespace A342533.P6766078452696389841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094156 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094157 (n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n : ℤ) - A357602 (n + 3)

end

end A342533.P6766078452696389841

/-! ## A342533.P15443144610151667394

`A014137(n)-A256791(A002740(n))`
-/

namespace A342533.P15443144610151667394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014137 n - A256791 (A002740 n).toNat

end

end A342533.P15443144610151667394

/-!
# A342534: a(n) = Sum_{k=1..n} phi(gcd(k, n))^2.

The programs for A342534, the canonical program `A342534.P7077622708332288672` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A342534 has offset 1).

The definition of A342534 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, A000010(gcd(#+1, n+1))²]` (program `A342534.P7077622708332288672`, by `A342534.P7077622708332288672.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A342534.P14977343384539830503

`∑{d}[n+1, A000010((n+1)/#)*A000010(#)²]`
-/

namespace A342534.P14977343384539830503
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat * A000010 d ^ 2

end

end A342534.P14977343384539830503

namespace A342534

/-- `∑{d}[n+1, A000010((n+1)/#)*A000010(#)²]` -/
def P14977343384539830503.Spec : Prop :=
  ∀ n, P14977343384539830503.a n = A342534 (n + 1)

end A342534

/-! ## A342534.P7077622708332288672

`∑{#}[n, A000010(gcd(#+1, n+1))²]`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A342534

/-- `∑{#}[n, A000010(gcd(#+1, n+1))²]` -/
def P7077622708332288672.Spec : Prop :=
  ∀ n, P7077622708332288672.a n = A342534 (n + 1)

theorem P7077622708332288672.correct : P7077622708332288672.Spec := by
  intro n
  simp only [A342534, Nat.add_sub_cancel]

end A342534

/-! ## A342534.P15358775689638602389

`∑{d}[n+1, A007431(#)*A029939((n+1)/#)]`
-/

namespace A342534.P15358775689638602389
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007431 d * A029939 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A342534.P15358775689638602389

namespace A342534

/-- `∑{d}[n+1, A007431(#)*A029939((n+1)/#)]` -/
def P15358775689638602389.Spec : Prop :=
  ∀ n, P15358775689638602389.a n = A342534 (n + 1)

end A342534

/-! ## A342534.P10109839004320101576

`∑{d}[n+1, A000010(#)*A127473((n+1)/#)]`
-/

namespace A342534.P10109839004320101576
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 d * A127473 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A342534.P10109839004320101576

namespace A342534

/-- `∑{d}[n+1, A000010(#)*A127473((n+1)/#)]` -/
def P10109839004320101576.Spec : Prop :=
  ∀ n, P10109839004320101576.a n = A342534 (n + 1)

end A342534

/-! ## A342534.P5076346477210085767

`∑{d}[n+1, A008683(#)*A279912((n+1)/#)]`
-/

namespace A342534.P5076346477210085767
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A279912 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A342534.P5076346477210085767

namespace A342534

/-- `∑{d}[n+1, A008683(#)*A279912((n+1)/#)]` -/
def P5076346477210085767.Spec : Prop :=
  ∀ n, P5076346477210085767.a n = A342534 (n + 1)

end A342534

/-!
# A342535: a(n) = Sum_{k=1..n} phi(gcd(k, n))^3.

The programs for A342535, the canonical program `A342535.P9974210141311666557` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A342535 has offset 1).

The definition of A342535 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, A000010(gcd(#+1, n+1))^3]` (program `A342535.P9974210141311666557`, by `A342535.P9974210141311666557.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A342535.P13268357458306932432

`∑{d}[n+1, A000010((n+1)/#)*A000010(#)^3]`
-/

namespace A342535.P13268357458306932432
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat * A000010 d ^ 3

end

end A342535.P13268357458306932432

namespace A342535

/-- `∑{d}[n+1, A000010((n+1)/#)*A000010(#)^3]` -/
def P13268357458306932432.Spec : Prop :=
  ∀ n, P13268357458306932432.a n = A342535 (n + 1)

end A342535

/-! ## A342535.P9974210141311666557

`∑{#}[n, A000010(gcd(#+1, n+1))^3]`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A342535

/-- `∑{#}[n, A000010(gcd(#+1, n+1))^3]` -/
def P9974210141311666557.Spec : Prop :=
  ∀ n, P9974210141311666557.a n = A342535 (n + 1)

theorem P9974210141311666557.correct : P9974210141311666557.Spec := by
  intro n
  simp only [A342535, Nat.add_sub_cancel]

end A342535

/-! ## A342535.P1287221588278345036

`∑{d}[n+1, A007431(#)*A338997((n+1)/#)]`
-/

namespace A342535.P1287221588278345036
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007431 d * A338997 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A342535.P1287221588278345036

namespace A342535

/-- `∑{d}[n+1, A007431(#)*A338997((n+1)/#)]` -/
def P1287221588278345036.Spec : Prop :=
  ∀ n, P1287221588278345036.a n = A342535 (n + 1)

end A342535

/-! ## A342535.P15118564022477276319

`∑{d}[n+1, A000010(#)*A358714((n+1)/#)]`
-/

namespace A342535.P15118564022477276319
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 d * A358714 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A342535.P15118564022477276319

namespace A342535

/-- `∑{d}[n+1, A000010(#)*A358714((n+1)/#)]` -/
def P15118564022477276319.Spec : Prop :=
  ∀ n, P15118564022477276319.a n = A342535 (n + 1)

end A342535

/-!
# A342536: Number of self-avoiding polygons on the square lattice, of perimeter 2n, with the property that all the right-angles of the same orientation are contiguous.

The programs for A342536, there is no canonical definition to state claims against.
-/

/-! ## A342536.P8886751392872713382

`A116939(xor(A062113(n), A192431(n)))`
-/

namespace A342536.P8886751392872713382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116939 (Int.xor (A062113 n) (A192431 n)).toNat

end

end A342536.P8886751392872713382

/-!
# A342537: Number of free polyominoes with n cells having simply-connected interiors.

The programs for A342537, there is no canonical definition to state claims against.
-/

/-! ## A342537.P9027993832457977386

`Δ[A173271(n)]-A359519(n+1)`
-/

namespace A342537.P9027993832457977386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173271 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A359519 (n + 1)

end

end A342537.P9027993832457977386

/-! ## A342537.P11665161315219986555

`A359520(n+1)+A000104(n+1)`
-/

namespace A342537.P11665161315219986555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359520 (n + 1) + A000104 (n + 1)

end

end A342537.P11665161315219986555

/-! ## A342537.P17062558330674125227

`A000105(n+1)-A359519(n+1)`
-/

namespace A342537.P17062558330674125227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000105 (n + 1) - A359519 (n + 1)

end

end A342537.P17062558330674125227

/-! ## A342537.P14259408325195538710

`A000104(n+1)+A001419(n+1)-A359519(n+1)`
-/

namespace A342537.P14259408325195538710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000104 (n + 1) + (A001419 (n + 1) - A359519 (n + 1))

end

end A342537.P14259408325195538710

/-! ## A342537.P7554904099793024621

`A006749(n+1)+A259090(n+1)-A359519(n+1)`
-/

namespace A342537.P7554904099793024621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006749 (n + 1) + (A259090 (n + 1) - A359519 (n + 1))

end

end A342537.P7554904099793024621

/-!
# A342538: Number of free polyominoes with n cells having simply-connected interiors such that no smaller polyomino has the same bracelet.

The programs for A342538, there is no canonical definition to state claims against.
-/

/-! ## A342538.P10122957237628651871

`A126257(A268172(n))+A036656(n)`
-/

namespace A342538.P10122957237628651871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126257 (A268172 n).toNat + A036656 n

end

end A342538.P10122957237628651871

/-! ## A342538.P1477343748010045484

`A257639(A137557(n+1))-A300763(n)`
-/

namespace A342538.P1477343748010045484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257639 (A137557 (n + 1)).toNat - A300763 n

end

end A342538.P1477343748010045484

/-!
# A342539: a(n) = Sum_{k=1..n} phi(gcd(k, n))^n.

The programs for A342539, the canonical program `A342539.P6916695968266773603` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A342539 has offset 1).

The definition of A342539 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, A000010(gcd(#+1, n+1))^(n+1)]` (program `A342539.P6916695968266773603`, by `A342539.P6916695968266773603.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A342539.P6916695968266773603

`∑{#}[n, A000010(gcd(#+1, n+1))^(n+1)]`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A342539

/-- `∑{#}[n, A000010(gcd(#+1, n+1))^(n+1)]` -/
def P6916695968266773603.Spec : Prop :=
  ∀ n, P6916695968266773603.a n = A342539 (n + 1)

theorem P6916695968266773603.correct : P6916695968266773603.Spec := by
  intro n
  simp only [A342539, Nat.add_sub_cancel]

end A342539

/-! ## A342539.P15134519083303666003

`∑{d}[n+1, A000010((n+1)/#)*A000010(#)^(n+1)]`
-/

namespace A342539.P15134519083303666003
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat * A000010 d ^ (n + 1)

end

end A342539.P15134519083303666003

namespace A342539

/-- `∑{d}[n+1, A000010((n+1)/#)*A000010(#)^(n+1)]` -/
def P15134519083303666003.Spec : Prop :=
  ∀ n, P15134519083303666003.a n = A342539 (n + 1)

end A342539

/-! ## A342539.P681178461802544157

`A049820(n+1)+A000027(A342471(n+1))`
-/

namespace A342539.P681178461802544157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049820 (n + 1) + A000027 (A342471 (n + 1)).toNat

end

end A342539.P681178461802544157

namespace A342539

/-- `A049820(n+1)+A000027(A342471(n+1))` -/
def P681178461802544157.Spec : Prop :=
  ∀ n, P681178461802544157.a n = A342539 (n + 1)

end A342539

/-! ## A342539.P5416350026822106683

`A000027(A049820(n+1)+∑{d}[n+1, A000010(#)^(n+1)])`
-/

namespace A342539.P5416350026822106683
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A049820 (n + 1) + ∑ d ∈ Nat.divisors (f1 n), A000010 d ^ (n + 1)).toNat

end

end A342539.P5416350026822106683

namespace A342539

/-- `A000027(A049820(n+1)+∑{d}[n+1, A000010(#)^(n+1)])` -/
def P5416350026822106683.Spec : Prop :=
  ∀ n, P5416350026822106683.a n = A342539 (n + 1)

end A342539

/-!
# A342540: a(n) = Sum_{k=1..n} phi(gcd(k, n))^(n-1).

The programs for A342540, the canonical program `A342540.P7602076911102904628` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A342540 has offset 1).

The definition of A342540 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, A000010(gcd(#+1, n+1))^n]` (program `A342540.P7602076911102904628`, by `A342540.P7602076911102904628.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A342540.P7602076911102904628

`∑{#}[n, A000010(gcd(#+1, n+1))^n]`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A342540

/-- `∑{#}[n, A000010(gcd(#+1, n+1))^n]` -/
def P7602076911102904628.Spec : Prop :=
  ∀ n, P7602076911102904628.a n = A342540 (n + 1)

theorem P7602076911102904628.correct : P7602076911102904628.Spec := by
  intro n
  simp only [A342540, Nat.add_sub_cancel]

end A342540

/-! ## A342540.P5508283151527662987

`∑{d}[n+1, A000010((n+1)/#)*A000010(#)^n]`
-/

namespace A342540.P5508283151527662987
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat * A000010 d ^ n

end

end A342540.P5508283151527662987

namespace A342540

/-- `∑{d}[n+1, A000010((n+1)/#)*A000010(#)^n]` -/
def P5508283151527662987.Spec : Prop :=
  ∀ n, P5508283151527662987.a n = A342540 (n + 1)

end A342540

/-!
# A342541: a(n) = Sum_{k=1..n} phi(gcd(k, n))^(n/gcd(k, n)).

The programs for A342541, the canonical program `A342541.P5724264600942304568` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A342541 has offset 1).

The definition of A342541 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A342541.P13932316232878119045

`∑{#}[n, A000010(gcd(#+1, n+1))^((n+1)/gcd(#+1, n+1))]`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A342541.P13932316232878119045
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (A000010 (Nat.gcd (k + 1) (n + 1)) : ℝ) ^ ((n + 1 : ℚ) / (Nat.gcd (k + 1) (n + 1) : ℚ) : ℝ)

end

end A342541.P13932316232878119045

namespace A342541

/-- `∑{#}[n, A000010(gcd(#+1, n+1))^((n+1)/gcd(#+1, n+1))]` -/
def P13932316232878119045.Spec : Prop :=
  ∀ n, P13932316232878119045.a n = (A342541 (n + 1) : ℝ)

end A342541

/-! ## A342541.P5724264600942304568

`∑{d}[n+1, A000010((n+1)/#)*A000010(#)^((n+1)/#)]`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A342541

/-- `∑{d}[n+1, A000010((n+1)/#)*A000010(#)^((n+1)/#)]` -/
def P5724264600942304568.Spec : Prop :=
  ∀ n, P5724264600942304568.a n = (A342541 (n + 1) : ℝ)

end A342541

/-!
# A342542: a(n) = Sum_{k=1..n} phi(gcd(k, n))^(n/gcd(k, n) - 1).

The programs for A342542, the canonical program `A342542.P12561197941591774611` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A342542 has offset 1).

The definition of A342542 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A342542.P10688805458140806855

`∑{#}[n, A000010(gcd(#+1, n+1))^((n+1)/gcd(#+1, n+1)-1)]`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A342542.P10688805458140806855
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (A000010 (Nat.gcd (k + 1) (n + 1)) : ℝ) ^ ((n + 1 : ℚ) / (Nat.gcd (k + 1) (n + 1) : ℚ) - 1 : ℝ)

end

end A342542.P10688805458140806855

namespace A342542

/-- `∑{#}[n, A000010(gcd(#+1, n+1))^((n+1)/gcd(#+1, n+1)-1)]` -/
def P10688805458140806855.Spec : Prop :=
  ∀ n, P10688805458140806855.a n = (A342542 (n + 1) : ℝ)

end A342542

/-! ## A342542.P12561197941591774611

`∑{d}[n+1, A000010((n+1)/#)*A000010(#)^((n+1)/#-1)]`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A342542

/-- `∑{d}[n+1, A000010((n+1)/#)*A000010(#)^((n+1)/#-1)]` -/
def P12561197941591774611.Spec : Prop :=
  ∀ n, P12561197941591774611.a n = (A342542 (n + 1) : ℝ)

end A342542

/-!
# A342543: a(n) = Sum_{k=1..n} phi(gcd(k, n))^gcd(k, n).

The programs for A342543, the canonical program `A342543.P938359411798834154` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A342543 has offset 1).

The definition of A342543 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A342543.P662194139067246558

`∑{#}[n, A000010(gcd(#+1, n+1))^gcd(#+1, n+1)]`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A342543.P662194139067246558
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A000010 (Nat.gcd (k + 1) (n + 1)) ^ Nat.gcd (k + 1) (n + 1)

end

end A342543.P662194139067246558

namespace A342543

/-- `∑{#}[n, A000010(gcd(#+1, n+1))^gcd(#+1, n+1)]` -/
def P662194139067246558.Spec : Prop :=
  ∀ n, P662194139067246558.a n = A342543 (n + 1)

end A342543

/-! ## A342543.P938359411798834154

`∑{d}[n+1, A000010((n+1)/#)*A000010(#)^#]`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A342543

/-- `∑{d}[n+1, A000010((n+1)/#)*A000010(#)^#]` -/
def P938359411798834154.Spec : Prop :=
  ∀ n, P938359411798834154.a n = A342543 (n + 1)

theorem P938359411798834154.correct : P938359411798834154.Spec := by
  intro n
  simp only [A342543, Nat.add_sub_cancel]

end A342543

/-! ## A342543.P16101677487019128897

`A049820(n+1)+A000027(A342473(n+1))`
-/

namespace A342543.P16101677487019128897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049820 (n + 1) + A000027 (A342473 (n + 1)).toNat

end

end A342543.P16101677487019128897

namespace A342543

/-- `A049820(n+1)+A000027(A342473(n+1))` -/
def P16101677487019128897.Spec : Prop :=
  ∀ n, P16101677487019128897.a n = A342543 (n + 1)

end A342543

/-! ## A342543.P5648245485771756853

`A000027(A049820(n+1)+∑{d}[n+1, A284438(#)])`
-/

namespace A342543.P5648245485771756853
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A049820 (n + 1) + ∑ d ∈ Nat.divisors (f1 n), A284438 d).toNat

end

end A342543.P5648245485771756853

namespace A342543

/-- `A000027(A049820(n+1)+∑{d}[n+1, A284438(#)])` -/
def P5648245485771756853.Spec : Prop :=
  ∀ n, P5648245485771756853.a n = A342543 (n + 1)

end A342543

/-!
# A342544: a(n) = Sum_{k=1..n} phi(gcd(k, n))^(gcd(k, n) - 1).

The programs for A342544, the canonical program `A342544.P4850078711706310498` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A342544 has offset 1).

The definition of A342544 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A342544.P12363511927436599455

`∑{#}[n, A000010(gcd(#+1, n+1))^(gcd(#+1, n+1)-1)]`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A342544.P12363511927436599455
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (A000010 (Nat.gcd (k + 1) (n + 1)) : ℚ) ^ ((Nat.gcd (k + 1) (n + 1) : ℤ) - 1 : ℤ)

end

end A342544.P12363511927436599455

namespace A342544

/-- `∑{#}[n, A000010(gcd(#+1, n+1))^(gcd(#+1, n+1)-1)]` -/
def P12363511927436599455.Spec : Prop :=
  ∀ n, P12363511927436599455.a n = (A342544 (n + 1) : ℚ)

end A342544

/-! ## A342544.P4850078711706310498

`∑{d}[n+1, A000010((n+1)/#)*A000010(#)^(#-1)]`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A342544

/-- `∑{d}[n+1, A000010((n+1)/#)*A000010(#)^(#-1)]` -/
def P4850078711706310498.Spec : Prop :=
  ∀ n, P4850078711706310498.a n = (A342544 (n + 1) : ℚ)

end A342544

/-! ## A342544.P8526937167694549232

`A049820(n+1)+A000027(A342489(n+1))`
-/

namespace A342544.P8526937167694549232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049820 (n + 1) + A000027 (A342489 (n + 1)).toNat

end

end A342544.P8526937167694549232

namespace A342544

/-- `A049820(n+1)+A000027(A342489(n+1))` -/
def P8526937167694549232.Spec : Prop :=
  ∀ n, P8526937167694549232.a n = A342544 (n + 1)

end A342544

/-!
# A342547: Addends k > 0 such that the polynomial x^3 + k produces a record of its Hardy-Littlewood constant.

The programs for A342547, there is no canonical definition to state claims against.
-/

/-! ## A342547.P9750664359184586676

`A329161(A051897(n+2))`
-/

namespace A342547.P9750664359184586676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329161 (A051897 (n + 2)).toNat

end

end A342547.P9750664359184586676

/-!
# A342550: For n>=3, a(n) is the sum of the indices of n seen as an m-gonal number.

The programs for A342550, there is no canonical definition to state claims against.
-/

/-! ## A342550.P15482615875759398965

`A007674(A176775(n+3)%A122529(n+1))`
-/

namespace A342550.P15482615875759398965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007674 (Int.tmod (A176775 (n + 3)) (A122529 (n + 1))).toNat

end

end A342550.P15482615875759398965

/-! ## A342550.P12901971888367464067

`A336137(n)+A046072(∏{d}[(p?[2*n+1]-3)/2, #])²`
-/

namespace A342550.P12901971888367464067
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n) : ℤ) - 3 : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336137 n + A046072 (∏ d ∈ Nat.divisors (SequenceMachineLib.roundAway (f1 n)).natAbs, d) ^ 2

end

end A342550.P12901971888367464067

/-!
# A342551: a(n) is the smallest m such that A008477(m) is the n-th powerful number (A001694).

The programs for A342551, there is no canonical definition to state claims against.
-/

/-! ## A342551.P690741247273665687

`A304481(A001694(n+1))%A056781(3*n+5)`
-/

namespace A342551.P690741247273665687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A304481 (A001694 (n + 1)).toNat) (A056781 (3 * n + 5))

end

end A342551.P690741247273665687

/-! ## A342551.P17188365761452594609

`A304481(record[(n+1)*A075802(n+1)]%A267491(n+1))`
-/

namespace A342551.P17188365761452594609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A075802 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304481 (Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A267491 (n + 1))).toNat

end

end A342551.P17188365761452594609

/-! ## A342551.P1508249278321533718

`A304481(record[(n+1)/A274459(n+1)]%A267491(n+1))`
-/

namespace A342551.P1508249278321533718
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A274459 (n + 1) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304481 (Int.tmod (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))) (A267491 (n + 1))).toNat

end

end A342551.P1508249278321533718

/-! ## A342551.P18030059550166277922

`A304481((A075146(n+1)+A000040(n+1))%A267491(n+1))`
-/

namespace A342551.P18030059550166277922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304481 (Int.tmod (A075146 (n + 1) + A000040 (n + 1)) (A267491 (n + 1))).toNat

end

end A342551.P18030059550166277922

/-!
# A342553: Least integer m > 2*n such that m-2*n and m+2*n are both squares, for n>1.

The programs for A342553, there is no canonical definition to state claims against.
-/

/-! ## A342553.P10119118194386356243

`A060775(n+2)²+A140271(n+2)²`
-/

namespace A342553.P10119118194386356243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060775 (n + 2) ^ 2 + A140271 (n + 2) ^ 2

end

end A342553.P10119118194386356243

/-! ## A342553.P165380746490357643

`A082119(n+2)²+2*(n+2)`
-/

namespace A342553.P165380746490357643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082119 (n + 2) ^ 2 + (2 * (n + 2) : ℤ)

end

end A342553.P165380746490357643

/-! ## A342553.P13414425313024733264

`A061409(∑[floor(∏{e}[n+1, #+1]/2)])`
-/

namespace A342553.P13414425313024733264
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1) : ℕ) : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061409 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A342553.P13414425313024733264

/-! ## A342553.P5267256556122862498

`A061409(A211264(n+1))`
-/

namespace A342553.P5267256556122862498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061409 (A211264 (n + 1)).toNat

end

end A342553.P5267256556122862498

/-! ## A342553.P13748118821021493036

`A061409(∑[A056924(n+1)])`
-/

namespace A342553.P13748118821021493036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056924 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061409 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A342553.P13748118821021493036

/-! ## A342553.P4555029570636133783

`A061409(∑[val(A338506(n+1), 4)])`
-/

namespace A342553.P4555029570636133783
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A338506 (n + 1)).toNat 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061409 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A342553.P4555029570636133783

/-! ## A342553.P18314119804703657922

`A061409(∑[floor(A000005(n+1)/2)])`
-/

namespace A342553.P18314119804703657922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000005 (n + 1) : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061409 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A342553.P18314119804703657922

/-! ## A342553.P10434017206062379023

`A061409(∑[∑{d}[n+1, A001222(#)%2]])`
-/

namespace A342553.P10434017206062379023
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), Int.tmod (A001222 d) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061409 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A342553.P10434017206062379023

/-! ## A342553.P12511527020825244258

`A061409(∑[val(2^A000005(2*n+1-n), 4)])`
-/

namespace A342553.P12511527020825244258
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A000005 (2 * n + 1 - n) : ℤ))).toNat 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061409 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A342553.P12511527020825244258

/-! ## A342553.P7808199214238877742

`A061409(∑[A004526(A000005(n+1))])`
-/

namespace A342553.P7808199214238877742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A000005 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061409 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A342553.P7808199214238877742

/-! ## A342553.P4381371569718135861

`A061409(∑[A123108(A000005(n+1))])`
-/

namespace A342553.P4381371569718135861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A000005 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061409 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A342553.P4381371569718135861

/-!
# A342554: Number of catafusenes with 2n hexagons and C symmetry.

The programs for A342554, there is no canonical definition to state claims against.
-/

/-! ## A342554.P3668886581703467611

`A230196(A279014(n))`
-/

namespace A342554.P3668886581703467611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230196 (A279014 n).toNat

end

end A342554.P3668886581703467611

/-! ## A342554.P15050838658211401300

`A235043(A217666(n+1))`
-/

namespace A342554.P15050838658211401300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235043 (A217666 (n + 1)).toNat

end

end A342554.P15050838658211401300

/-! ## A342554.P13785735206972633292

`A008618(A092440(n)-A024023(n))`
-/

namespace A342554.P13785735206972633292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008618 (A092440 n - A024023 n).toNat

end

end A342554.P13785735206972633292

/-!
# A342555: 2*a(n) is the start of 3 consecutive numbers (even-odd-even) that are sums of divisors, i.e., terms of A000203.

The programs for A342555, there is no canonical definition to state claims against.
-/

/-! ## A342555.P12282554286243064771

`A205878(A245308(n)+A205837(n+3))`
-/

namespace A342555.P12282554286243064771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205878 (A245308 n + A205837 (n + 3)).toNat

end

end A342555.P12282554286243064771

/-! ## A342555.P12872470808595891036

`xor(A002840(n+10), A327041(A093542(n)))`
-/

namespace A342555.P12872470808595891036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A002840 (n + 10)) (A327041 (A093542 n).toNat)

end

end A342555.P12872470808595891036

/-!
# A342557: T(n,m) is the number of unlabeled connected graphs without endpoints on m nodes with n edges, where T(n,m), m <= n, is a triangle read by rows.

The programs for A342557, there is no canonical definition to state claims against.
-/

/-! ## A342557.P17513204135394984178

`A351014(A369932(n+1)²²)`
-/

namespace A342557.P17513204135394984178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351014 ((A369932 (n + 1) ^ 2) ^ 2).toNat

end

end A342557.P17513204135394984178

/-! ## A342557.P9794512740346357485

`A321936(A027750(n+1)*A262124(n))`
-/

namespace A342557.P9794512740346357485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321936 (A027750 (n + 1) * A262124 n).toNat

end

end A342557.P9794512740346357485

/-! ## A342557.P7866297444844162309

`A379669(A081503(2*n+1)*A171871(n))`
-/

namespace A342557.P7866297444844162309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379669 (A081503 (2 * n + 1) * A171871 n).toNat

end

end A342557.P7866297444844162309

/-! ## A342557.P16928744849856356541

`A333627(A369932(n+1)^A001227(n+1))`
-/

namespace A342557.P16928744849856356541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333627 (SequenceMachineLib.roundAway ((A369932 (n + 1) : ℚ) ^ (A001227 (n + 1) : ℤ))).toNat

end

end A342557.P16928744849856356541

/-! ## A342557.P12037048380318334071

`A334006(n+2)%A035093(A210563(n+1))`
-/

namespace A342557.P12037048380318334071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A334006 (n + 2)) (A035093 (A210563 (n + 1)).toNat)

end

end A342557.P12037048380318334071

/-!
# A342558: a(n) is the maximum number of distinct currents > 0 in a network of n one-ohm resistors with a total resistance of 1 ohm.

The programs for A342558, the canonical program `A342558.P14055970906683193895` is in `Seq.B000.C044`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A342558 has offset 1).

The definition of A342558 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A342558.P14055970906683193895

`ogf((1-x+x^5-x^6+x^7+x^12-x^13+x^14+x^15-2x^16+x^17-x^18)/(1-2x+x^2))`

The canonical program, it is in `Seq.B000.C044`.
-/

namespace A342558

/-- `ogf((1-x+x^5-x^6+x^7+x^12-x^13+x^14+x^15-2x^16+x^17-x^18)/(1-2x+x^2))` -/
def P14055970906683193895.Spec : Prop :=
  ∀ n, P14055970906683193895.a n = A342558 (n + 1)

theorem P14055970906683193895.correct : P14055970906683193895.Spec := by
  intro n
  simp only [A342558, Nat.add_sub_cancel]

end A342558

/-!
# A342561: List points (x,y,z) having integer coordinates, sorted first by R^2 = x^2 + y^2 + z^2 and in case of ties, then by z and last by polar angle 0 <= phi < 2*Pi in a polar coordinate system. Sequence gives x-coordinates.

The programs for A342561, there is no canonical definition to state claims against.
-/

/-! ## A342561.P13464543356081512752

`A343631(n)+A326813(A141631(n+4))`
-/

namespace A342561.P13464543356081512752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343631 n + A326813 (A141631 (n + 4)).toNat

end

end A342561.P13464543356081512752

/-! ## A342561.P12659055301264884351

`A343631(or(n, A264668(2*n)))`
-/

namespace A342561.P12659055301264884351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343631 (Int.lor (n : ℤ) (A264668 (2 * n))).toNat

end

end A342561.P12659055301264884351

/-! ## A342561.P18025774495893279275

`A343631(n)+C(2, A124786(n+1))`
-/

namespace A342561.P18025774495893279275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343631 n + (Nat.choose 2 (A124786 (n + 1)).toNat : ℤ)

end

end A342561.P18025774495893279275

/-! ## A342561.P13668101523661582432

`A343631(n)%(A343633(2*n+1)+6)`
-/

namespace A342561.P13668101523661582432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A343631 n) (A343633 (2 * n + 1) + 6)

end

end A342561.P13668101523661582432

/-! ## A342561.P5016244079412376604

`A343631(n)+A000007(A347462(n))`
-/

namespace A342561.P5016244079412376604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343631 n + A000007 (A347462 n).toNat

end

end A342561.P5016244079412376604

/-! ## A342561.P8110064790889116086

`A343631(n)+A000038(A322551(n+1))`
-/

namespace A342561.P8110064790889116086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343631 n + A000038 (A322551 (n + 1)).toNat

end

end A342561.P8110064790889116086

/-! ## A342561.P7270570287172792307

`A381096(A142344(n+1))+A343631(n)`
-/

namespace A342561.P7270570287172792307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381096 (A142344 (n + 1)).toNat + A343631 n

end

end A342561.P7270570287172792307

/-! ## A342561.P13310632277991887373

`A072401(A375744(n+1))*A343631(n)`
-/

namespace A342561.P13310632277991887373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072401 (A375744 (n + 1)).toNat * A343631 n

end

end A342561.P13310632277991887373

/-! ## A342561.P14725171758988950651

`A343631(n+1-A072401(A375744(n+1)))`
-/

namespace A342561.P14725171758988950651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343631 ((n + 1 : ℤ) - A072401 (A375744 (n + 1)).toNat).toNat

end

end A342561.P14725171758988950651

/-! ## A342561.P16412313040309105238

`A343631(A174344((2*n+1)²))`
-/

namespace A342561.P16412313040309105238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343631 (A174344 ((2 * n + 1) ^ 2)).toNat

end

end A342561.P16412313040309105238

/-!
# A342562: List points (x,y,z) having integer coordinates, sorted first by R=x^2+y^2+z^2 and in case of ties, then by z and last by polar angle 0 <= phi < 2*Pi in a polar coordinate system. Sequence gives y-coordinates.

The programs for A342562, there is no canonical definition to state claims against.
-/

/-! ## A342562.P10736860526332879013

`A343632(or(n, A264668(2*n)))`
-/

namespace A342562.P10736860526332879013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343632 (Int.lor (n : ℤ) (A264668 (2 * n))).toNat

end

end A342562.P10736860526332879013

/-! ## A342562.P3906933751820982343

`A343632(n)%(A343633(2*n+1)+6)`
-/

namespace A342562.P3906933751820982343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A343632 n) (A343633 (2 * n + 1) + 6)

end

end A342562.P3906933751820982343

/-! ## A342562.P17271060179474375512

`A343632(n)+A158801(A010014(n))`
-/

namespace A342562.P17271060179474375512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343632 n + A158801 (A010014 n).toNat

end

end A342562.P17271060179474375512

/-! ## A342562.P9964547043581531030

`A343632(n)+A000007(A271200(n))`
-/

namespace A342562.P9964547043581531030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343632 n + A000007 (A271200 n).toNat

end

end A342562.P9964547043581531030

/-! ## A342562.P16257123900378584898

`A033999(A145460(n))²*A343632(n)`
-/

namespace A342562.P16257123900378584898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A145460 n).toNat ^ 2 * A343632 n

end

end A342562.P16257123900378584898

/-! ## A342562.P14427849708898747846

`A343632(n)+A000007(A322551(n+1))`
-/

namespace A342562.P14427849708898747846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343632 n + A000007 (A322551 (n + 1)).toNat

end

end A342562.P14427849708898747846

/-! ## A342562.P14893000000603519368

`A000035(A125772(n+1))*A343632(n)`
-/

namespace A342562.P14893000000603519368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A125772 (n + 1)).toNat * A343632 n

end

end A342562.P14893000000603519368

/-! ## A342562.P7319816788559191364

`A343632(A174344((2*n+1)²))`
-/

namespace A342562.P7319816788559191364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343632 (A174344 ((2 * n + 1) ^ 2)).toNat

end

end A342562.P7319816788559191364

/-! ## A342562.P5304007126970156115

`A343632(A268038((2*n+1)²))`
-/

namespace A342562.P5304007126970156115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343632 (A268038 ((2 * n + 1) ^ 2)).toNat

end

end A342562.P5304007126970156115

/-!
# A342564: Numbers k such that 6*k + 1 is a prime that can be written as p*q + 2, with p and q being consecutive primes.

The programs for A342564, there is no canonical definition to state claims against.
-/

/-! ## A342564.P15769640027256685117

`(A048880(n+2)-1)/6`
-/

namespace A342564.P15769640027256685117
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048880 (n + 2) - 1 : ℚ) / 6

end

end A342564.P15769640027256685117

/-! ## A342564.P11910596459446245089

`floor(A048880(n+2)/6)`
-/

namespace A342564.P11910596459446245089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A048880 (n + 2) : ℚ) / 6⌋

end

end A342564.P11910596459446245089

/-! ## A342564.P1240084957003884423

`round(A048880(C(n+2, n+1))/6)`
-/

namespace A342564.P1240084957003884423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A048880 (Nat.choose (n + 2) (n + 1)) : ℚ) / 6)

end

end A342564.P1240084957003884423

/-! ## A342564.P17535630185250063656

`round(A048880(n+2)/6)%A000583(n+3)`
-/

namespace A342564.P17535630185250063656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A048880 (n + 2) : ℚ) / 6)) (A000583 (n + 3))

end

end A342564.P17535630185250063656

/-! ## A342564.P7314176232120467080

`round(A048880(n*A165476(n²)+2)/6)`
-/

namespace A342564.P7314176232120467080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A048880 ((n : ℤ) * A165476 (n ^ 2) + 2).toNat : ℚ) / 6)

end

end A342564.P7314176232120467080

/-! ## A342564.P11057990911342299577

`A007318(∑[n])*round(A048880(n+2)/6)`
-/

namespace A342564.P11057990911342299577
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * SequenceMachineLib.roundAway ((A048880 (n + 2) : ℚ) / 6)

end

end A342564.P11057990911342299577

/-! ## A342564.P2072511934244368474

`round(A013636(A051507(n+2))/6)`
-/

namespace A342564.P2072511934244368474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A013636 (A051507 (n + 2)).toNat : ℚ) / 6)

end

end A342564.P2072511934244368474

/-!
# A342565: Numbers k such that 6*k - 1 is a prime that can be written as p*q - 2, with p and q being consecutive primes.

The programs for A342565, there is no canonical definition to state claims against.
-/

/-! ## A342565.P17848736255335355965

`(A123921(n+2)+1)/6`
-/

namespace A342565.P17848736255335355965
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A123921 (n + 2) + 1 : ℚ) / 6

end

end A342565.P17848736255335355965

/-! ## A342565.P10813835175944273661

`ceil(A123921(n+2)/6)`
-/

namespace A342565.P10813835175944273661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A123921 (n + 2) : ℚ) / 6⌉

end

end A342565.P10813835175944273661

/-! ## A342565.P11962016665776812236

`(A013636(A048797(n+2))-1)/6`
-/

namespace A342565.P11962016665776812236
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013636 (A048797 (n + 2)).toNat - 1 : ℚ) / 6

end

end A342565.P11962016665776812236

/-!
# A342566: Noncube factors k > 0 such that k*x^3 + 1 produces a new minimum of its Hardy-Littlewood constant.

The programs for A342566, there is no canonical definition to state claims against.
-/

/-! ## A342566.P14061687461714943798

`A347337(A019997(n))`
-/

namespace A342566.P14061687461714943798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347337 (A019997 n).toNat

end

end A342566.P14061687461714943798

/-! ## A342566.P13717816533461076045

`A000040(∑[∑[A037839(n+1)^n]²])`
-/

namespace A342566.P13717816533461076045
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037839 (n + 1) ^ n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A342566.P13717816533461076045

/-!
# A342567: a(n) = (prime(n)^2 - prime(n-1)*prime(n+1))/2, n >= 3.

The programs for A342567, the canonical program `A342567.P15885445761304597193` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A342567 has offset 3).

The definition of A342567 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A342567.P15885445761304597193

`A056221(n+2)/2`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A342567

/-- `A056221(n+2)/2` -/
def P15885445761304597193.Spec : Prop :=
  ∀ n, P15885445761304597193.a n = (A342567 (n + 3) : ℚ)

end A342567

/-! ## A342567.P17095475766051155427

`(A000040(n+3)²-A000040(n+2)*A000040(n+4))/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A342567.P17095475766051155427
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000040 (n + 3) ^ 2 - A000040 (n + 2) * A000040 (n + 4) : ℚ) / 2

end

end A342567.P17095475766051155427

namespace A342567

/-- `(A000040(n+3)²-A000040(n+2)*A000040(n+4))/2` -/
def P17095475766051155427.Spec : Prop :=
  ∀ n, P17095475766051155427.a n = (A342567 (n + 3) : ℚ)

end A342567

/-! ## A342567.P10318598455977732390

`a(n-1)*ratio[A056221(n+1)]` with `a(0)=2`
-/

namespace A342567.P10318598455977732390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056221 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) * ((f1 (n + 1) : ℚ) / (f1 n : ℚ))

end

end A342567.P10318598455977732390

namespace A342567

/-- `a(n-1)*ratio[A056221(n+1)]` -/
def P10318598455977732390.Spec : Prop :=
  ∀ n, P10318598455977732390.a n = (A342567 (n + 3) : ℚ)

end A342567

/-! ## A342567.P310374950714350332

`(A090076(n+2)-A324795(n+2))/2`
-/

namespace A342567.P310374950714350332
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A090076 (n + 2) - A324795 (n + 2) : ℚ) / 2

end

end A342567.P310374950714350332

namespace A342567

/-- `(A090076(n+2)-A324795(n+2))/2` -/
def P310374950714350332.Spec : Prop :=
  ∀ n, P310374950714350332.a n = (A342567 (n + 3) : ℚ)

end A342567

/-! ## A342567.P13289361857216335931

`A056140(A065091(n+2))/2`
-/

namespace A342567.P13289361857216335931
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056140 (A065091 (n + 2)).toNat : ℚ) / 2

end

end A342567.P13289361857216335931

namespace A342567

/-- `A056140(A065091(n+2))/2` -/
def P13289361857216335931.Spec : Prop :=
  ∀ n, P13289361857216335931.a n = (A342567 (n + 3) : ℚ)

end A342567

/-! ## A342567.P12484091614342284034

`A056140(A000040(n+3))/2`
-/

namespace A342567.P12484091614342284034
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056140 (A000040 (n + 3)).toNat : ℚ) / 2

end

end A342567.P12484091614342284034

namespace A342567

/-- `A056140(A000040(n+3))/2` -/
def P12484091614342284034.Spec : Prop :=
  ∀ n, P12484091614342284034.a n = (A342567 (n + 3) : ℚ)

end A342567

/-!
# A342568: 1/a(n) is the current through the resistor at the central rung of an electrical ladder network made of 6*n+1 one-ohm resistors, fed by 1 volt at diametrically opposite ends of the ladder.

The programs for A342568, the canonical program `A342568.P14792481575847093587` is in `Seq.B000.C044`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A342568 has offset 0).

The definition of A342568 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A342568.P14792481575847093587

`8*a(n-1)-18*a(n-2)+8*a(n-3)-a(n-4)` with `a(0)=1, a(1)=7, a(2)=45, a(3)=239`

The canonical program, it is in `Seq.B000.C044`.
-/

namespace A342568

/-- `8*a(n-1)-18*a(n-2)+8*a(n-3)-a(n-4)` -/
def P14792481575847093587.Spec : Prop :=
  ∀ n, P14792481575847093587.a n = A342568 n

theorem P14792481575847093587.correct : P14792481575847093587.Spec := by
  intro n
  simp only [A342568]

end A342568

/-! ## A342568.P4401851600712659037

`A093652(Δ[n²])`
-/

namespace A342568.P4401851600712659037
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093652 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A342568.P4401851600712659037

namespace A342568

/-- `A093652(Δ[n²])` -/
def P4401851600712659037.Spec : Prop :=
  ∀ n, P4401851600712659037.a n = A342568 n

end A342568

/-! ## A342568.P2426396909142481881

`Δ[(n-1)*A001075(n)]`
-/

namespace A342568.P2426396909142481881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * A001075 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A342568.P2426396909142481881

namespace A342568

/-- `Δ[(n-1)*A001075(n)]` -/
def P2426396909142481881.Spec : Prop :=
  ∀ n, P2426396909142481881.a n = A342568 n

end A342568

/-! ## A342568.P1133519658733559751

`or(1, A093652(2*n+1))`
-/

namespace A342568.P1133519658733559751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A093652 (2 * n + 1))

end

end A342568.P1133519658733559751

namespace A342568

/-- `or(1, A093652(2*n+1))` -/
def P1133519658733559751.Spec : Prop :=
  ∀ n, P1133519658733559751.a n = A342568 n

end A342568

/-! ## A342568.P2956712346445429701

`Δ[(A092184(n)+1)*(n-1)]`
-/

namespace A342568.P2956712346445429701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A092184 n + 1) * ((n : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A342568.P2956712346445429701

namespace A342568

/-- `Δ[(A092184(n)+1)*(n-1)]` -/
def P2956712346445429701.Spec : Prop :=
  ∀ n, P2956712346445429701.a n = A342568 n

end A342568

/-! ## A342568.P8960064140462156584

`Δ[(n-1)*(A121401(n)-1)]`
-/

namespace A342568.P8960064140462156584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * (A121401 n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A342568.P8960064140462156584

namespace A342568

/-- `Δ[(n-1)*(A121401(n)-1)]` -/
def P8960064140462156584.Spec : Prop :=
  ∀ n, P8960064140462156584.a n = A342568 n

end A342568

/-! ## A342568.P4061825292164759055

`A001075(n)+n*A001834(n)`
-/

namespace A342568.P4061825292164759055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001075 n + (n : ℤ) * A001834 n

end

end A342568.P4061825292164759055

namespace A342568

/-- `A001075(n)+n*A001834(n)` -/
def P4061825292164759055.Spec : Prop :=
  ∀ n, P4061825292164759055.a n = A342568 n

end A342568

/-! ## A342568.P13325206050294258892

`A002531(2*n)+n*A108412(2*n)`
-/

namespace A342568.P13325206050294258892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002531 (2 * n) + (n : ℤ) * A108412 (2 * n)

end

end A342568.P13325206050294258892

namespace A342568

/-- `A002531(2*n)+n*A108412(2*n)` -/
def P13325206050294258892.Spec : Prop :=
  ∀ n, P13325206050294258892.a n = A342568 n

end A342568

/-! ## A342568.P12715977949357283776

`A002531(2*n)+n*A002531(2*n+1)`
-/

namespace A342568.P12715977949357283776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002531 (2 * n) + (n : ℤ) * A002531 (2 * n + 1)

end

end A342568.P12715977949357283776

namespace A342568

/-- `A002531(2*n)+n*A002531(2*n+1)` -/
def P12715977949357283776.Spec : Prop :=
  ∀ n, P12715977949357283776.a n = A342568 n

end A342568

/-! ## A342568.P15554187098668202840

`A005246(2*n+1)+n*A108412(2*n)`
-/

namespace A342568.P15554187098668202840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005246 (2 * n + 1) + (n : ℤ) * A108412 (2 * n)

end

end A342568.P15554187098668202840

namespace A342568

/-- `A005246(2*n+1)+n*A108412(2*n)` -/
def P15554187098668202840.Spec : Prop :=
  ∀ n, P15554187098668202840.a n = A342568 n

end A342568

/-! ## A342568.P16762028065842665817

`A005246(2*n+1)+n*A143643(2*n+1)`
-/

namespace A342568.P16762028065842665817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005246 (2 * n + 1) + (n : ℤ) * A143643 (2 * n + 1)

end

end A342568.P16762028065842665817

namespace A342568

/-- `A005246(2*n+1)+n*A143643(2*n+1)` -/
def P16762028065842665817.Spec : Prop :=
  ∀ n, P16762028065842665817.a n = A342568 n

end A342568

/-!
# A342570: Number of catafusenes with 2n hexagons and D_{2h}(a) symmetry.

The programs for A342570, there is no canonical definition to state claims against.
-/

/-! ## A342570.P1631577813180679474

`A181578(C(n, ceil(xor(1, n)/2)))`
-/

namespace A342570.P1631577813180679474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181578 (Nat.choose n ⌈(Nat.xor 1 n : ℚ) / 2⌉.toNat)

end

end A342570.P1631577813180679474

/-! ## A342570.P5684690259341039439

`A181578(A037952(n))`
-/

namespace A342570.P5684690259341039439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181578 (A037952 n).toNat

end

end A342570.P5684690259341039439

/-! ## A342570.P11403344144861638890

`A181578(Δ[A001405(n)])`
-/

namespace A342570.P11403344144861638890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181578 (f1 (n + 1) - f1 n).toNat

end

end A342570.P11403344144861638890

/-! ## A342570.P11563068159143321151

`A181578(Δ[A051920(n)])`
-/

namespace A342570.P11563068159143321151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051920 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181578 (f1 (n + 1) - f1 n).toNat

end

end A342570.P11563068159143321151

/-! ## A342570.P9442784036662638694

`A181578(Δ[A336675(n)])`
-/

namespace A342570.P9442784036662638694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336675 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181578 (f1 (n + 1) - f1 n).toNat

end

end A342570.P9442784036662638694

/-!
# A342572: Positive numbers all of whose prime factors are binary palindromes.

The programs for A342572, there is no canonical definition to state claims against.
-/

/-! ## A342572.P1309322753275550403

`record[gcd(n+1, A162742((n+1)²))]`
-/

namespace A342572.P1309322753275550403
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A162742 ((n + 1) ^ 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A342572.P1309322753275550403

/-! ## A342572.P3728747857822703109

`A376857(n+1)%A356064(2*n+3)`
-/

namespace A342572.P3728747857822703109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A376857 (n + 1)) (A356064 (2 * n + 3))

end

end A342572.P3728747857822703109

/-! ## A342572.P8767985616152463060

`eq[n, A235027(A003986(A000124(n)))]`
-/

namespace A342572.P8767985616152463060
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235027 (A003986 (A000124 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A342572.P8767985616152463060

/-! ## A342572.P18288094277509621750

`eq[A003987(A000124(n)), A235027(n)]`
-/

namespace A342572.P18288094277509621750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003987 (A000124 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235027 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A342572.P18288094277509621750

/-! ## A342572.P16484550663778610819

`A376857(n+1)%A329603(A017984(n))`
-/

namespace A342572.P16484550663778610819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A376857 (n + 1)) (A329603 (A017984 n).toNat)

end

end A342572.P16484550663778610819

/-!
# A342573: The number of ordered n-tuples consisting of n permutations (not necessarily distinct) such that the first element of each of them is the same.

The programs for A342573, the canonical program `A342573.P11895055850012896166` is in `Seq.B000.C044`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A342573 has offset 1).

The definition of A342573 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A342573.P11895055850012896166

`(n+1)*n!^(n+1)`

The canonical program, it is in `Seq.B000.C044`.
-/

namespace A342573

/-- `(n+1)*n!^(n+1)` -/
def P11895055850012896166.Spec : Prop :=
  ∀ n, (P11895055850012896166.a n : ℤ) = A342573 (n + 1)

theorem P11895055850012896166.correct : P11895055850012896166.Spec := by
  intro n
  simp only [A342573, Nat.add_sub_cancel]

end A342573

/-! ## A342573.P18108597228096682203

`n!^n*(n+1)!`
-/

namespace A342573.P18108597228096682203
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n ^ n * Nat.factorial (n + 1)

end

end A342573.P18108597228096682203

namespace A342573

/-- `n!^n*(n+1)!` -/
def P18108597228096682203.Spec : Prop :=
  ∀ n, (P18108597228096682203.a n : ℤ) = A342573 (n + 1)

theorem P18108597228096682203.correct : P18108597228096682203.Spec := by
  intro n
  simp only [A342573, Nat.add_sub_cancel, A342573.P18108597228096682203.a, A342573.P11895055850012896166.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A342573

/-! ## A342573.P6488186771550158053

`(n+1)*root(n!, 1/(n+1))`
-/

namespace A342573.P6488186771550158053
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℝ) * (Nat.factorial n : ℝ) ^ (1 / (1 / (n + 1 : ℚ) : ℝ))

end

end A342573.P6488186771550158053

namespace A342573

/-- `(n+1)*root(n!, 1/(n+1))` -/
def P6488186771550158053.Spec : Prop :=
  ∀ n, P6488186771550158053.a n = (A342573 (n + 1) : ℝ)

end A342573

/-! ## A342573.P3840387573407414393

`(n+1)*A091868(n)`
-/

namespace A342573.P3840387573407414393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A091868 n

end

end A342573.P3840387573407414393

namespace A342573

/-- `(n+1)*A091868(n)` -/
def P3840387573407414393.Spec : Prop :=
  ∀ n, P3840387573407414393.a n = A342573 (n + 1)

theorem P3840387573407414393.correct : P3840387573407414393.Spec := by
  intro n
  simp only [A342573, Nat.add_sub_cancel, A342573.P3840387573407414393.a, A342573.P11895055850012896166.a, A091868, A091868.P5525084501402041512.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A342573

/-! ## A342573.P449984906822871171

`A000142(n+1)*A036740(n)`
-/

namespace A342573.P449984906822871171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 (n + 1) * A036740 n

end

end A342573.P449984906822871171

namespace A342573

/-- `A000142(n+1)*A036740(n)` -/
def P449984906822871171.Spec : Prop :=
  ∀ n, P449984906822871171.a n = A342573 (n + 1)

end A342573

/-!
# A342575: a(n) is the exponent of the least power of 2 such that the concatenated digits of the decimal expansion of 2^n are a proper substring of the concatenated digits of the decimal expansion of 2^a(n).

The programs for A342575, there is no canonical definition to state claims against.
-/

/-! ## A342575.P9104807220769844004

`A046300(lt[A046276(n+1), A046289(n+1)])`
-/

namespace A342575.P9104807220769844004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046276 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046289 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046300 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A342575.P9104807220769844004

/-! ## A342575.P997237187727767464

`A046300(A073789(n)%(∑[n+2]-1))`
-/

namespace A342575.P997237187727767464
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046300 (Int.tmod (A073789 n) (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1)).toNat

end

end A342575.P997237187727767464

/-! ## A342575.P6628480284279877898

`A046300(A004880(n+1)%A031273(n+1))`
-/

namespace A342575.P6628480284279877898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046300 (Int.tmod (A004880 (n + 1)) (A031273 (n + 1))).toNat

end

end A342575.P6628480284279877898

/-!
# A342578: a(n) = n! * [x^n] (Sum_{j>=0} n^(j*(j+1)/2) * x^j/j!)^(1/n) for n > 0, a(0) = 1.

The programs for A342578, there is no canonical definition to state claims against.
-/

/-! ## A342578.P6793479971042857395

`A346061(∑[4*n])`
-/

namespace A342578.P6793479971042857395
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346061 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A342578.P6793479971042857395

/-! ## A342578.P6114134396097539321

`or(1, A346061(A046092(n)))`
-/

namespace A342578.P6114134396097539321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A346061 (A046092 n).toNat)

end

end A342578.P6114134396097539321

/-! ## A342578.P15384895365336640272

`or(1, A346061(A106232(n+1)))`
-/

namespace A342578.P15384895365336640272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A346061 (A106232 (n + 1)).toNat)

end

end A342578.P15384895365336640272

/-! ## A342578.P6637106710042552248

`A346061(A046092(n))+A281155(n)`
-/

namespace A342578.P6637106710042552248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346061 (A046092 n).toNat + A281155 n

end

end A342578.P6637106710042552248

/-! ## A342578.P208301631356966775

`A006530(C(n, n²)!)*A346061(A046092(n))`
-/

namespace A342578.P208301631356966775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (Nat.factorial (Nat.choose n (n ^ 2))) * A346061 (A046092 n).toNat

end

end A342578.P208301631356966775

/-!
# A342582: a(n) is the least multiple of n that is a "binary antipalindrome" (i.e., an element of A035928).

The programs for A342582, there is no canonical definition to state claims against.
-/

/-! ## A342582.P2789493533738072000

`(n+1)*A318569(n+1)`
-/

namespace A342582.P2789493533738072000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A318569 (n + 1)

end

end A342582.P2789493533738072000

/-!
# A342583: Numbers k such that prime(k) is the hypotenuse of a Pythagorean triple where one leg is also prime.

The programs for A342583, there is no canonical definition to state claims against.
-/

/-! ## A342583.P17177504542376548952

`record[A010051(A002731(n+1))*A091277(n+1)]`
-/

namespace A342583.P17177504542376548952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A002731 (n + 1)).toNat * A091277 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A342583.P17177504542376548952

/-! ## A342583.P9282623023987048403

`A000720(A067756(n+1))`
-/

namespace A342583.P9282623023987048403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A067756 (n + 1)).toNat

end

end A342583.P9282623023987048403

/-! ## A342583.P16684893420032842108

`record[A061395(A066885(n+2))]`
-/

namespace A342583.P16684893420032842108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A066885 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A342583.P16684893420032842108

/-! ## A342583.P7898789245475067219

`record[A061395(A055526(n+3))]`
-/

namespace A342583.P7898789245475067219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A055526 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A342583.P7898789245475067219

/-! ## A342583.P11567978514057165248

`A061395(A259979(n+1))`
-/

namespace A342583.P11567978514057165248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A259979 (n + 1)).toNat

end

end A342583.P11567978514057165248

/-!
# A342585: Inventory sequence: record the number of zeros thus far in the sequence, then the number of ones thus far, then the number of twos thus far and so on, until a zero is recorded; the inventory then starts again, recording the number of zeros.

The programs for A342585, there is no canonical definition to state claims against.
-/

/-! ## A342585.P9549814495049869274

`Δ[A348781(A004277(n)-n)]`
-/

namespace A342585.P9549814495049869274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348781 (A004277 n - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A342585.P9549814495049869274

/-! ## A342585.P5874066961084439883

`Δ[A348781(gcd(n, A008706(n)))]`
-/

namespace A342585.P5874066961084439883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348781 (Int.gcd (n : ℤ) (A008706 n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A342585.P5874066961084439883

/-! ## A342585.P2545151112614629649

`A348781(n+1)-A348781(A028310(n))`
-/

namespace A342585.P2545151112614629649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348781 (n + 1) - A348781 (A028310 n).toNat

end

end A342585.P2545151112614629649

/-! ## A342585.P4290685163432721121

`A348781(n+1)-A348781(A004277(n)-n)`
-/

namespace A342585.P4290685163432721121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348781 (n + 1) - A348781 (A004277 n - (n : ℤ)).toNat

end

end A342585.P4290685163432721121

/-! ## A342585.P8709353161563197548

`A348781(n+1)-A348781(A004525(A004277(n)))`
-/

namespace A342585.P8709353161563197548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348781 (n + 1) - A348781 (A004525 (A004277 n).toNat).toNat

end

end A342585.P8709353161563197548

/-! ## A342585.P3473064785610631117

`Δ[A348781(A004525(A004277(n)))]`
-/

namespace A342585.P3473064785610631117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348781 (A004525 (A004277 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A342585.P3473064785610631117

/-! ## A342585.P5836906143054498873

`A348781(n+1)-A348781(A123108(A005843(n)))`
-/

namespace A342585.P5836906143054498873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348781 (n + 1) - A348781 (A123108 (A005843 n).toNat).toNat

end

end A342585.P5836906143054498873

/-! ## A342585.P16716268837944666772

`Δ[A348781(A123108(2*n))]`
-/

namespace A342585.P16716268837944666772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348781 (A123108 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A342585.P16716268837944666772

/-! ## A342585.P10848353487878340268

`Δ[A348781(A054576(A008574(n)))]`
-/

namespace A342585.P10848353487878340268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348781 (A054576 (A008574 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A342585.P10848353487878340268

/-! ## A342585.P1640494104596310228

`Δ[A348781(A003963(A008578(n+1)))]`
-/

namespace A342585.P1640494104596310228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348781 (A003963 (A008578 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A342585.P1640494104596310228

/-! ## A342585.P3434376891594812565

`Δ[A348781(A003056(A000124(n)))]`
-/

namespace A342585.P3434376891594812565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348781 (A003056 (A000124 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A342585.P3434376891594812565

/-!
# A342586: a(n) is the number of pairs (x,y) with 1 <= x, y <= 10^n and gcd(x,y)=1.

The programs for A342586, there is no canonical definition to state claims against.
-/

/-! ## A342586.P9369509854911300539

`2*A064018(n)-1`
-/

namespace A342586.P9369509854911300539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A064018 n - 1

end

end A342586.P9369509854911300539

/-! ## A342586.P11141099131436487303

`A108086(A062513(n+1))+2*A064018(n)`
-/

namespace A342586.P11141099131436487303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108086 (A062513 (n + 1)).toNat + 2 * A064018 n

end

end A342586.P11141099131436487303

/-! ## A342586.P15731065402669938187

`2*(A088404(A001105(n)+1)-A064016(n))-1`
-/

namespace A342586.P15731065402669938187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A088404 (A001105 n + 1).toNat - A064016 n) - 1

end

end A342586.P15731065402669938187

/-! ## A342586.P1446373552240674892

`A064018(n)+A064018(n)-A000041(C(2, n+2))`
-/

namespace A342586.P1446373552240674892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064018 n + (A064018 n - A000041 (Nat.choose 2 (n + 2)))

end

end A342586.P1446373552240674892

/-! ## A342586.P703134804719012739

`A037156(n)-A064016(n)-1+A037156(n)-A064016(n)`
-/

namespace A342586.P703134804719012739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037156 n - A064016 n - 1 + (A037156 n - A064016 n)

end

end A342586.P703134804719012739

/-!
# A342587: Triangle, read by rows: T(n,k) is the number of labeled order relations on n nodes in which the longest chain has k nodes (n>=1, 1<=k<=n).

The programs for A342587, there is no canonical definition to state claims against.
-/

/-! ## A342587.P16066169570459363112

`A321797(A016098(n))+A048743(n+1)`
-/

namespace A342587.P16066169570459363112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321797 (A016098 n).toNat + A048743 (n + 1)

end

end A342587.P16066169570459363112

/-!
# A342588: T(n,k) is the number of labeled connected posets of n labeled elements with k covering relations (n>=1, k>=0). Triangle read by rows.

The programs for A342588, there is no canonical definition to state claims against.
-/

/-! ## A342588.P16626785361256076698

`filter[A350732(n+1), A303340(#)]`
-/

namespace A342588.P16626785361256076698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350732 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A303340 (f1 j).toNat = 1) n)

end

end A342588.P16626785361256076698

/-! ## A342588.P5017574353212441235

`A048766(A000108(n))*A130123(n)`
-/

namespace A342588.P5017574353212441235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (A000108 n).toNat * A130123 n

end

end A342588.P5017574353212441235

/-! ## A342588.P3747868451567588393

`A073103(A000108(n))*A127648(n)`
-/

namespace A342588.P3747868451567588393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073103 (A000108 n).toNat * A127648 n

end

end A342588.P3747868451567588393

/-! ## A342588.P17789995321382228933

`A023533(A027467(n))*A332836(n)`
-/

namespace A342588.P17789995321382228933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023533 (A027467 n).toNat * A332836 n

end

end A342588.P17789995321382228933

/-! ## A342588.P17115470259883434621

`A088517(A113101(n))*A332836(n)`
-/

namespace A342588.P17115470259883434621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088517 (A113101 n).toNat * A332836 n

end

end A342588.P17115470259883434621

/-!
# A342589: T(n,k) is the number of posets of n labeled elements with k covering relations (n>=1, k>=0). Triangle read by rows.

The programs for A342589, there is no canonical definition to state claims against.
-/

/-! ## A342589.P16534092840885870553

`A137579(A051033(n))+A113025(n)`
-/

namespace A342589.P16534092840885870553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137579 (A051033 n).toNat + A113025 n

end

end A342589.P16534092840885870553

/-!
# A342591: Numbers k such that A340740(k) <= k.

The programs for A342591, there is no canonical definition to state claims against.
-/

/-! ## A342591.P16604024014811451294

`lt[A340740(n+1), n+2]+1`
-/

namespace A342591.P16604024014811451294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340740 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A342591.P16604024014811451294

/-! ## A342591.P9284831345026707531

`lt[A033833(n+2), A032444(n+1)]`
-/

namespace A342591.P9284831345026707531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033833 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032444 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A342591.P9284831345026707531

/-! ## A342591.P14999245078776562010

`lt[A003050(A173824(n+1)), A022144(n)]`
-/

namespace A342591.P14999245078776562010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003050 (A173824 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022144 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A342591.P14999245078776562010

/-! ## A342591.P5542826634063297704

`lt[A000124(A065608(n+1)), A350199(n+1)]`
-/

namespace A342591.P5542826634063297704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 (A065608 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350199 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A342591.P5542826634063297704

/-! ## A342591.P1928248209390985691

`lt[A161062(A000203(n+1)+n), n]`
-/

namespace A342591.P1928248209390985691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161062 (A000203 (n + 1) + (n : ℤ)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A342591.P1928248209390985691

/-!
# A342592: Irregular triangle read by rows in which row n lists the next width pattern not yet encountered as n increases in the symmetric representation of sigma(n), where each contiguous sequence of identical widths w in A249223 is replaced by a single entry of w (see A341969).

The programs for A342592, there is no canonical definition to state claims against.
-/

/-! ## A342592.P17399505813924187509

`A000161(A016742(n)*A057213(n+1))`
-/

namespace A342592.P17399505813924187509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000161 (A016742 n * A057213 (n + 1)).toNat

end

end A342592.P17399505813924187509

/-! ## A342592.P3194862760501076554

`A014455(A185249(3*n+1))%3`
-/

namespace A342592.P3194862760501076554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A014455 (A185249 (3 * n + 1)).toNat) 3

end

end A342592.P3194862760501076554

/-! ## A342592.P7604049109571197673

`A000122(A193796(n)*A292835(3*n+1))`
-/

namespace A342592.P7604049109571197673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (A193796 n * A292835 (3 * n + 1)).toNat

end

end A342592.P7604049109571197673

/-! ## A342592.P2453430595479616513

`A276790(lt[A128157(n+1), A122607(n+1)])`
-/

namespace A342592.P2453430595479616513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128157 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122607 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276790 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A342592.P2453430595479616513

/-! ## A342592.P15884309981603911778

`A035169(n^a(n-1)²)` with `a(0)=1`
-/

namespace A342592.P15884309981603911778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A035169 (SequenceMachineLib.roundAway ((n : ℚ) ^ (a (n - 1) ^ 2 : ℤ))).toNat

end

end A342592.P15884309981603911778

/-!
# A342593: Numbers m that are not the quotient of a Zuckerman number divided by the product of its digits.

The programs for A342593, there is no canonical definition to state claims against.
-/

/-! ## A342593.P12943702515480936739

`eq[0, A056770(n+1)]+1`
-/

namespace A342593.P12943702515480936739
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056770 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A342593.P12943702515480936739

/-! ## A342593.P4129260923430127474

`lt[A056770(n+2), 1]+2`
-/

namespace A342593.P4129260923430127474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056770 (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 2

end

end A342593.P4129260923430127474

/-! ## A342593.P1749509827580298617

`eq[0, A056770(A028310(n))]`
-/

namespace A342593.P1749509827580298617
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056770 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A342593.P1749509827580298617

/-! ## A342593.P5643638643098534169

`A020725(eq[0, A056770(n+1)])`
-/

namespace A342593.P5643638643098534169
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056770 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A342593.P5643638643098534169

/-! ## A342593.P10362423732894458472

`A065475(eq[0, A056770(n+1)])`
-/

namespace A342593.P10362423732894458472
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056770 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A342593.P10362423732894458472

/-! ## A342593.P10922150827427257007

`A114637(eq[0, A056770(n+1)])`
-/

namespace A342593.P10922150827427257007
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056770 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114637 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A342593.P10922150827427257007

/-! ## A342593.P2051412692950529234

`∪[A096092(n+1), A342941(n+1)]`
-/

namespace A342593.P2051412692950529234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096092 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342941 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A342593.P2051412692950529234

/-!
# A342594: Earliest occurrence of the next distinct width pattern (as listed in A342592) in the symmetric representation of sigma(n) not yet encountered as n increases.

The programs for A342594, there is no canonical definition to state claims against.
-/

/-! ## A342594.P1028217112704315158

`A008486(record[Δ[A273866(n+1)]])`
-/

namespace A342594.P1028217112704315158
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273866 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A342594.P1028217112704315158

/-! ## A342594.P579321578260988878

`record[A209323(3*n+1)*A209354(n+1)]`
-/

namespace A342594.P579321578260988878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209323 (3 * n + 1) * A209354 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A342594.P579321578260988878

/-! ## A342594.P8441715120578201270

`A194040(A111271(n+1))`
-/

namespace A342594.P8441715120578201270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194040 (A111271 (n + 1)).toNat

end

end A342594.P8441715120578201270

/-! ## A342594.P10048044364926276411

`record[A324644(A057957(n+1))]`
-/

namespace A342594.P10048044364926276411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324644 (A057957 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A342594.P10048044364926276411

/-!
# A342595: Irregular triangle of A342592 read by rows arranged first by length of the width pattern and then lexicographically within blocks of patterns of equal length.

The programs for A342595, there is no canonical definition to state claims against.
-/

/-! ## A342595.P16914530182134199612

`A277822(A056792(A059905(n))^A000720(n+1))`
-/

namespace A342595.P16914530182134199612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277822 (SequenceMachineLib.roundAway ((A056792 (A059905 n).toNat : ℚ) ^ (A000720 (n + 1) : ℤ))).toNat

end

end A342595.P16914530182134199612

/-! ## A342595.P1268558229480829736

`A342592(A326298(n+1))`
-/

namespace A342595.P1268558229480829736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342592 (A326298 (n + 1)).toNat

end

end A342595.P1268558229480829736

/-! ## A342595.P15952620356522374295

`val(A310398(A292324(n)), 2)`
-/

namespace A342595.P15952620356522374295
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A310398 (A292324 n).toNat).toNat 2

end

end A342595.P15952620356522374295

/-!
# A342597: a(n) is the number of nodes of degree 3 or 4 that are at distance n from the origin in the graph of the Hofstetter-4fold tiling; a(0) = 1.

The programs for A342597, there is no canonical definition to state claims against.
-/

/-! ## A342597.P5994104155494901935

`A049846(A282307(n)+A049867(n))`
-/

namespace A342597.P5994104155494901935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049846 (A282307 n + A049867 n).toNat

end

end A342597.P5994104155494901935

/-! ## A342597.P1868794491112752285

`∑[and(A175357(n+1), A175385(2*(n+2)))]`
-/

namespace A342597.P1868794491112752285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A175357 (n + 1)) (A175385 (2 * (n + 2)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A342597.P1868794491112752285

/-! ## A342597.P13120211620928131089

`A011750(A350441(n+1))+A007494(n)`
-/

namespace A342597.P13120211620928131089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011750 (A350441 (n + 1)).toNat + A007494 n

end

end A342597.P13120211620928131089

/-! ## A342597.P13941813272150153373

`A288997(A202554(n+1))+A007494(n)`
-/

namespace A342597.P13941813272150153373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288997 (A202554 (n + 1)).toNat + A007494 n

end

end A342597.P13941813272150153373

/-! ## A342597.P5235518818743882846

`A216345(n+1)-A080679(A101308(n))`
-/

namespace A342597.P5235518818743882846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216345 (n + 1) - A080679 (A101308 n).toNat

end

end A342597.P5235518818743882846

/-!
# A342599: Number of n X n 01-matrices with permanent 0 from which it is possible to obtain a 01-matrix with permanent 1 by increasing a single element by 1, up to permutation of rows and columns.

The programs for A342599, there is no canonical definition to state claims against.
-/

/-! ## A342599.P764097917673963210

`A187494(A135541(n))`
-/

namespace A342599.P764097917673963210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187494 ((A135541 n).toNat + 43)

end

end A342599.P764097917673963210

