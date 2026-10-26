import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C004
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C037
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C006
import Seq.B001.C011
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C003
import Seq.B002.C005
import Seq.B002.C006
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
import Seq.Opaque.C024
import Seq.Opaque.C025

/-!
# A046400: Numbers with exactly 2 distinct palindromic prime factors.

The programs for A046400, there is no canonical definition to state claims against.
-/

/-! ## A046400.P12787395502416155707

`record[∏{p}[A046368(n+2), #]]`
-/

namespace A046400.P12787395502416155707
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046368 (n + 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A046400.P12787395502416155707

/-! ## A046400.P4503317874470775180

`∩[A046368(n+1), A073328(n+1)]`
-/

namespace A046400.P4503317874470775180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046368 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073328 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046400.P4503317874470775180

/-! ## A046400.P10200905597799202967

`record[A007913(A046368(n+2))]`
-/

namespace A046400.P10200905597799202967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A046368 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A046400.P10200905597799202967

/-! ## A046400.P926844205851151375

`filter[A046368(n+1), A008966(#)]`
-/

namespace A046400.P926844205851151375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046368 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A046400.P926844205851151375

/-! ## A046400.P176886844132751034

`∩[A005117(n+1), A046368(n+1)]`
-/

namespace A046400.P176886844132751034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046368 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046400.P176886844132751034

/-! ## A046400.P16748326726486099996

`filter[A046368(n+1), A049240(#)]`
-/

namespace A046400.P16748326726486099996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046368 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A049240 (f1 j).toNat = 1) n)

end

end A046400.P16748326726486099996

/-! ## A046400.P2541063928241523139

`filter[A071278(n+1), A064911(#)]`
-/

namespace A046400.P2541063928241523139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071278 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A046400.P2541063928241523139

/-! ## A046400.P15184699724022617301

`filter[A071278(n+1), A101040(#)]`
-/

namespace A046400.P15184699724022617301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071278 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A101040 (f1 j).toNat = 1) n)

end

end A046400.P15184699724022617301

/-! ## A046400.P8272537188415110658

`filter[A046368(n+1), A181183(#)]`
-/

namespace A046400.P8272537188415110658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046368 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A181183 (f1 j).toNat = 1) n)

end

end A046400.P8272537188415110658

/-! ## A046400.P5706269370160598982

`filter[A046368(n+1), A262684(#)]`
-/

namespace A046400.P5706269370160598982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046368 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A262684 (f1 j).toNat = 1) n)

end

end A046400.P5706269370160598982

/-! ## A046400.P5293797875805961858

`filter[A033620(n+1), A280710(#)]`
-/

namespace A046400.P5293797875805961858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033620 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A280710 (f1 j).toNat = 1) n)

end

end A046400.P5293797875805961858

/-! ## A046400.P11026695847657812876

`filter[A046349(n+1), A280710(#)]`
-/

namespace A046400.P11026695847657812876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046349 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A280710 (f1 j).toNat = 1) n)

end

end A046400.P11026695847657812876

/-! ## A046400.P10595819476832450071

`filter[A046368(n+1), A280710(#)]`
-/

namespace A046400.P10595819476832450071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046368 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A280710 (f1 j).toNat = 1) n)

end

end A046400.P10595819476832450071

/-! ## A046400.P15408733043907519353

`filter[A046368(n+1), A295316(#)]`
-/

namespace A046400.P15408733043907519353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046368 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A295316 (f1 j).toNat = 1) n)

end

end A046400.P15408733043907519353

/-! ## A046400.P12877972594429141285

`filter[A071278(n+1), A280710(#)]`
-/

namespace A046400.P12877972594429141285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071278 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A280710 (f1 j).toNat = 1) n)

end

end A046400.P12877972594429141285

/-! ## A046400.P12881715069029406969

`filter[A084981(n+1), A280710(#)]`
-/

namespace A046400.P12881715069029406969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084981 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A280710 (f1 j).toNat = 1) n)

end

end A046400.P12881715069029406969

/-! ## A046400.P847763717135159750

`filter[A046368(n+1), A323154(#)]`
-/

namespace A046400.P847763717135159750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046368 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323154 (f1 j).toNat = 1) n)

end

end A046400.P847763717135159750

/-! ## A046400.P16498180351715963005

`filter[A046368(n+1), A343219(#)]`
-/

namespace A046400.P16498180351715963005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046368 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A343219 (f1 j).toNat = 1) n)

end

end A046400.P16498180351715963005

/-! ## A046400.P15588869430118778535

`filter[A115683(n+1), A280710(#)]`
-/

namespace A046400.P15588869430118778535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115683 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A280710 (f1 j).toNat = 1) n)

end

end A046400.P15588869430118778535

/-! ## A046400.P9683600331754691542

`filter[A046349(n+1), A353471(#)]`
-/

namespace A046400.P9683600331754691542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046349 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353471 (f1 j).toNat = 1) n)

end

end A046400.P9683600331754691542

/-!
# A046401: Numbers with exactly 3 distinct palindromic prime factors.

The programs for A046401, there is no canonical definition to state claims against.
-/

/-! ## A046401.P5445575459474189781

`filter[A046369(n+1), A008966(#)]`
-/

namespace A046401.P5445575459474189781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046369 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A046401.P5445575459474189781

/-! ## A046401.P2428958310123190394

`filter[A046369(n+1), A354353(#)]`
-/

namespace A046401.P2428958310123190394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046369 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354353 (f1 j).toNat = 1) n)

end

end A046401.P2428958310123190394

/-! ## A046401.P14408167793172090358

`filter[A046369(n+1), A354819(#)]`
-/

namespace A046401.P14408167793172090358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046369 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354819 (f1 j).toNat = 1) n)

end

end A046401.P14408167793172090358

/-! ## A046401.P1594399491685916917

`filter[A046369(n+1), A354926(#)]`
-/

namespace A046401.P1594399491685916917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046369 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354926 (f1 j).toNat = 1) n)

end

end A046401.P1594399491685916917

/-! ## A046401.P17388801531433959833

`filter[A046369(n+1), A374130(#)]`
-/

namespace A046401.P17388801531433959833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046369 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374130 (f1 j).toNat = 1) n)

end

end A046401.P17388801531433959833

/-! ## A046401.P12000674027470548684

`filter[A046369(n+1), A374466(#)]`
-/

namespace A046401.P12000674027470548684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046369 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374466 (f1 j).toNat = 1) n)

end

end A046401.P12000674027470548684

/-! ## A046401.P15801867420460945746

`∩[A005117(n+1), A046369(n+1)]`
-/

namespace A046401.P15801867420460945746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046369 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046401.P15801867420460945746

/-! ## A046401.P1234699937934168059

`filter[A046369(n+1), A252233(#)]`
-/

namespace A046401.P1234699937934168059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046369 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A252233 (f1 j).toNat = 1) n)

end

end A046401.P1234699937934168059

/-! ## A046401.P17084088550361743491

`filter[A046369(n+1), A323154(#)]`
-/

namespace A046401.P17084088550361743491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046369 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323154 (f1 j).toNat = 1) n)

end

end A046401.P17084088550361743491

/-! ## A046401.P5716672261218806403

`filter[A046369(n+1), A353519(#)]`
-/

namespace A046401.P5716672261218806403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046369 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353519 (f1 j).toNat = 1) n)

end

end A046401.P5716672261218806403

/-! ## A046401.P11735621407940917473

`filter[A046369(n+1), A353559(#)]`
-/

namespace A046401.P11735621407940917473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046369 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353559 (f1 j).toNat = 1) n)

end

end A046401.P11735621407940917473

/-! ## A046401.P770007848253006814

`∩[A007304(n+1), A033620(n+1)]`
-/

namespace A046401.P770007848253006814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007304 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033620 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046401.P770007848253006814

/-! ## A046401.P17026506149437073030

`∩[A007304(n+1), A046349(n+1)]`
-/

namespace A046401.P17026506149437073030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007304 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046349 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046401.P17026506149437073030

/-! ## A046401.P14544011163123385679

`∩[A007304(n+1), A046369(n+1)]`
-/

namespace A046401.P14544011163123385679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007304 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046369 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046401.P14544011163123385679

/-! ## A046401.P18286524817771347617

`∩[A046369(n+1), A345382(n+1)]`
-/

namespace A046401.P18286524817771347617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046369 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345382 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046401.P18286524817771347617

/-! ## A046401.P4521561356639460128

`∩[A046369(n+1), A225228(n+1)]`
-/

namespace A046401.P4521561356639460128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046369 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225228 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046401.P4521561356639460128

/-! ## A046401.P5470749250227883127

`∩[A030626(n+1), A046369(n+1)]`
-/

namespace A046401.P5470749250227883127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030626 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046369 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046401.P5470749250227883127

/-! ## A046401.P13929699576774668382

`∩[A046369(n+1), A111398(n+1)]`
-/

namespace A046401.P13929699576774668382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046369 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111398 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046401.P13929699576774668382

/-! ## A046401.P11650529179679065540

`∩[A046369(n+1), A350352(n+1)]`
-/

namespace A046401.P11650529179679065540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046369 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350352 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046401.P11650529179679065540

/-!
# A046402: Numbers with exactly 4 distinct palindromic prime factors.

The programs for A046402, there is no canonical definition to state claims against.
-/

/-! ## A046402.P17248269144015083627

`∩[A046349(n+1), A046386(n+1)]`
-/

namespace A046402.P17248269144015083627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046349 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046386 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046402.P17248269144015083627

/-! ## A046402.P8613221211187965748

`∩[A046370(n+1), A046386(n+1)]`
-/

namespace A046402.P8613221211187965748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046370 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046386 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046402.P8613221211187965748

/-! ## A046402.P17353721435140999243

`∩[A046370(n+1), A350373(n+1)]`
-/

namespace A046402.P17353721435140999243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046370 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350373 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046402.P17353721435140999243

/-! ## A046402.P1365203835053441022

`∩[A030634(n+1), A046370(n+1)]`
-/

namespace A046402.P1365203835053441022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030634 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046370 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046402.P1365203835053441022

/-! ## A046402.P2868820768809085496

`∩[A033993(n+1), A046370(n+1)]`
-/

namespace A046402.P2868820768809085496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033993 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046370 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046402.P2868820768809085496

/-!
# A046403: Numbers with exactly 5 distinct prime factors each of which is a palindrome.

The programs for A046403, there is no canonical definition to state claims against.
-/

/-! ## A046403.P1352300728616624068

`A000034(A002148(n))*A046406(n+1)`
-/

namespace A046403.P1352300728616624068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A002148 n).toNat * A046406 (n + 1)

end

end A046403.P1352300728616624068

/-! ## A046403.P3603015062824882341

`A046406(n+1)*A348717(A263241(n+1))`
-/

namespace A046403.P3603015062824882341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046406 (n + 1) * A348717 (A263241 (n + 1)).toNat

end

end A046403.P3603015062824882341

/-! ## A046403.P16930580557115262967

`A001055(A046376(n+1))*A046406(n+1)`
-/

namespace A046403.P16930580557115262967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001055 (A046376 (n + 1)).toNat * A046406 (n + 1)

end

end A046403.P16930580557115262967

/-! ## A046403.P6732893535145572252

`A046406(n+1)*A053669(A166101(n+1))`
-/

namespace A046403.P6732893535145572252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046406 (n + 1) * A053669 (A166101 (n + 1)).toNat

end

end A046403.P6732893535145572252

/-!
# A046404: Odd numbers with exactly 2 distinct palindromic prime factors.

The programs for A046404, there is no canonical definition to state claims against.
-/

/-! ## A046404.P11929437563734987813

`∩[A046372(n+1), A046400(n+1)]`
-/

namespace A046404.P11929437563734987813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046372 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046400 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046404.P11929437563734987813

/-! ## A046404.P14999148311762380083

`∩[A046350(n+1), A046400(n+1)]`
-/

namespace A046404.P14999148311762380083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046350 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046400 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046404.P14999148311762380083

/-! ## A046404.P8336541910587414060

`∩[A046372(n+1), A073328(n+1)]`
-/

namespace A046404.P8336541910587414060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046372 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073328 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046404.P8336541910587414060

/-! ## A046404.P11354044042039449898

`filter[A046372(n+1), A008966(#)]`
-/

namespace A046404.P11354044042039449898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046372 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A046404.P11354044042039449898

/-! ## A046404.P15107714550983946576

`filter[A046400(n+1), A322980(#)]`
-/

namespace A046404.P15107714550983946576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046400 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A322980 (f1 j).toNat = 1) n)

end

end A046404.P15107714550983946576

/-! ## A046404.P9032217102551217755

`filter[A046372(n+1), A324903(#)]`
-/

namespace A046404.P9032217102551217755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046372 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A324903 (f1 j).toNat = 1) n)

end

end A046404.P9032217102551217755

/-! ## A046404.P16791510612099468368

`filter[A046368(n+1), A359465(#)]`
-/

namespace A046404.P16791510612099468368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046368 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359465 (f1 j).toNat = 1) n)

end

end A046404.P16791510612099468368

/-! ## A046404.P2299138530766851154

`filter[A046350(n+1), A374128(#)]`
-/

namespace A046404.P2299138530766851154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046350 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374128 (f1 j).toNat = 1) n)

end

end A046404.P2299138530766851154

/-! ## A046404.P14162769896559569170

`filter[A046368(n+1), A374474(#)]`
-/

namespace A046404.P14162769896559569170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046368 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374474 (f1 j).toNat = 1) n)

end

end A046404.P14162769896559569170

/-! ## A046404.P4509641382623237725

`filter[A046368(n+2), A354108(#)]`
-/

namespace A046404.P4509641382623237725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046368 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354108 (f1 j).toNat = 1) n)

end

end A046404.P4509641382623237725

/-! ## A046404.P7108048463304814072

`filter[A046368(n+2), A359590(#)]`
-/

namespace A046404.P7108048463304814072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046368 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359590 (f1 j).toNat = 1) n)

end

end A046404.P7108048463304814072

/-! ## A046404.P14502840613624211288

`filter[A046368(n+2), A359592(#)]`
-/

namespace A046404.P14502840613624211288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046368 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359592 (f1 j).toNat = 1) n)

end

end A046404.P14502840613624211288

/-! ## A046404.P6326109955058322530

`∩[A005117(n+1), A046372(n+1)]`
-/

namespace A046404.P6326109955058322530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046372 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046404.P6326109955058322530

/-! ## A046404.P14933075564906187584

`filter[A046400(n+1), A035263(#)]`
-/

namespace A046404.P14933075564906187584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046400 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A035263 (f1 j).toNat = 1) n)

end

end A046404.P14933075564906187584

/-! ## A046404.P8437915794831223928

`filter[A046372(n+1), A049240(#)]`
-/

namespace A046404.P8437915794831223928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046372 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A049240 (f1 j).toNat = 1) n)

end

end A046404.P8437915794831223928

/-! ## A046404.P1734992740440696832

`filter[A046400(n+1), A105234(#)]`
-/

namespace A046404.P1734992740440696832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046400 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A105234 (f1 j).toNat = 1) n)

end

end A046404.P1734992740440696832

/-! ## A046404.P14993867792629398849

`filter[A046400(n+1), A152822(#)]`
-/

namespace A046404.P14993867792629398849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046400 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A152822 (f1 j).toNat = 1) n)

end

end A046404.P14993867792629398849

/-! ## A046404.P11287024915436348513

`filter[A046372(n+1), A181183(#)]`
-/

namespace A046404.P11287024915436348513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046372 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A181183 (f1 j).toNat = 1) n)

end

end A046404.P11287024915436348513

/-! ## A046404.P14746515824077061048

`filter[A046372(n+1), A262684(#)]`
-/

namespace A046404.P14746515824077061048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046372 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A262684 (f1 j).toNat = 1) n)

end

end A046404.P14746515824077061048

/-! ## A046404.P16086988881652538916

`filter[A046350(n+1), A280710(#)]`
-/

namespace A046404.P16086988881652538916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046350 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A280710 (f1 j).toNat = 1) n)

end

end A046404.P16086988881652538916

/-!
# A046405: Numbers of the form p*q*r where p,q,r are distinct odd palindromic primes (odd terms from A002385).

The programs for A046405, there is no canonical definition to state claims against.
-/

/-! ## A046405.P3836088143279825685

`∩[A046373(n+1), A046401(n+1)]`
-/

namespace A046405.P3836088143279825685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046373 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046401 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046405.P3836088143279825685

/-! ## A046405.P4471102706608099041

`∩[A046401(n+2), or(1, A046401(n+2))]`
-/

namespace A046405.P4471102706608099041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046401 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A046401 (n + 2))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046405.P4471102706608099041

/-! ## A046405.P10039233868142730788

`∩[A046350(n+1), A046401(n+1)]`
-/

namespace A046405.P10039233868142730788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046350 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046401 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046405.P10039233868142730788

/-! ## A046405.P3547688685564531775

`filter[A046373(n+1), A008966(#)]`
-/

namespace A046405.P3547688685564531775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046373 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A046405.P3547688685564531775

/-! ## A046405.P792678530504586636

`filter[A046373(n+1), A354353(#)]`
-/

namespace A046405.P792678530504586636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046373 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354353 (f1 j).toNat = 1) n)

end

end A046405.P792678530504586636

/-! ## A046405.P10864740323590969170

`filter[A046373(n+1), A354819(#)]`
-/

namespace A046405.P10864740323590969170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046373 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354819 (f1 j).toNat = 1) n)

end

end A046405.P10864740323590969170

/-! ## A046405.P12666458610185749574

`filter[A046373(n+1), A354926(#)]`
-/

namespace A046405.P12666458610185749574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046373 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354926 (f1 j).toNat = 1) n)

end

end A046405.P12666458610185749574

/-! ## A046405.P10605939905782871829

`filter[A046373(n+1), A359158(#)]`
-/

namespace A046405.P10605939905782871829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046373 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359158 (f1 j).toNat = 1) n)

end

end A046405.P10605939905782871829

/-! ## A046405.P10430705737352388259

`filter[A046373(n+1), A359590(#)]`
-/

namespace A046405.P10430705737352388259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046373 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359590 (f1 j).toNat = 1) n)

end

end A046405.P10430705737352388259

/-! ## A046405.P6224313702777555422

`filter[A046373(n+1), A359592(#)]`
-/

namespace A046405.P6224313702777555422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046373 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359592 (f1 j).toNat = 1) n)

end

end A046405.P6224313702777555422

/-! ## A046405.P12445182733158646786

`filter[A046373(n+1), A359834(#)]`
-/

namespace A046405.P12445182733158646786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046373 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359834 (f1 j).toNat = 1) n)

end

end A046405.P12445182733158646786

/-! ## A046405.P2038102900638734676

`filter[A046373(n+1), A374130(#)]`
-/

namespace A046405.P2038102900638734676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046373 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374130 (f1 j).toNat = 1) n)

end

end A046405.P2038102900638734676

/-! ## A046405.P5217524019214272402

`filter[A046373(n+1), A374466(#)]`
-/

namespace A046405.P5217524019214272402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046373 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374466 (f1 j).toNat = 1) n)

end

end A046405.P5217524019214272402

/-! ## A046405.P2276503731134712226

`∩[A046350(n+1), A046389(n+1)]`
-/

namespace A046405.P2276503731134712226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046350 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046389 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046405.P2276503731134712226

/-! ## A046405.P2171824492286599198

`∩[A046369(n+1), A046389(n+1)]`
-/

namespace A046405.P2171824492286599198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046369 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046389 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046405.P2171824492286599198

/-! ## A046405.P11658386376475836229

`∩[A046373(n+1), A046389(n+1)]`
-/

namespace A046405.P11658386376475836229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046373 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046389 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046405.P11658386376475836229

/-! ## A046405.P12887478180059440639

`∩[A046389(n+1), A046401(n+1)]`
-/

namespace A046405.P12887478180059440639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046389 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046401 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046405.P12887478180059440639

/-! ## A046405.P4059491566061154788

`∩[A046369(n+1), A392008(n+1)]`
-/

namespace A046405.P4059491566061154788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046369 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392008 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046405.P4059491566061154788

/-! ## A046405.P13498205002739147491

`∩[A046373(n+1), A392008(n+1)]`
-/

namespace A046405.P13498205002739147491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046373 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392008 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046405.P13498205002739147491

/-! ## A046405.P12888702837670725886

`∩[A046401(n+1), A392008(n+1)]`
-/

namespace A046405.P12888702837670725886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046401 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392008 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046405.P12888702837670725886

/-!
# A046406: Odd numbers with exactly 4 distinct palindromic prime factors.

The programs for A046406, there is no canonical definition to state claims against.
-/

/-! ## A046406.P14846480575176013778

`∩[A046374(n+1), A046402(n+1)]`
-/

namespace A046406.P14846480575176013778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046374 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046402 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046406.P14846480575176013778

/-! ## A046406.P17925122726795746439

`∩[A046370(n+1), A046390(n+1)]`
-/

namespace A046406.P17925122726795746439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046370 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046390 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046406.P17925122726795746439

/-! ## A046406.P15998191558973275338

`∩[A046374(n+1), A046390(n+1)]`
-/

namespace A046406.P15998191558973275338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046374 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046390 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046406.P15998191558973275338

/-! ## A046406.P5409531427838288804

`∩[A046390(n+1), A046402(n+1)]`
-/

namespace A046406.P5409531427838288804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046390 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046402 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046406.P5409531427838288804

/-! ## A046406.P1369677716360776437

`filter[A046402(n+1), A322980(#)]`
-/

namespace A046406.P1369677716360776437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046402 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A322980 (f1 j).toNat = 1) n)

end

end A046406.P1369677716360776437

/-!
# A046407: Odd numbers with exactly 5 distinct palindromic prime factors.

The programs for A046407, there is no canonical definition to state claims against.
-/

/-! ## A046407.P16139027794728953572

`∩[A046375(n+1), A046403(n+1)]`
-/

namespace A046407.P16139027794728953572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046375 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046403 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046407.P16139027794728953572

/-! ## A046407.P10889482939675238816

`∩[A046391(n+1), A046403(n+1)]`
-/

namespace A046407.P10889482939675238816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046391 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046403 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046407.P10889482939675238816

/-! ## A046407.P3508241193091597966

`∩[A006038(n+1), A046403(n+1)]`
-/

namespace A046407.P3508241193091597966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006038 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046403 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046407.P3508241193091597966

/-! ## A046407.P11763711871819642857

`∩[A046403(n+1), A112643(n+1)]`
-/

namespace A046407.P11763711871819642857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046403 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112643 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046407.P11763711871819642857

/-! ## A046407.P10083629987090286449

`∩[A046403(n+1), A127666(n+1)]`
-/

namespace A046407.P10083629987090286449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046403 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127666 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046407.P10083629987090286449

/-!
# A046408: Palindromes with exactly 2 distinct palindromic prime factors.

The programs for A046408, there is no canonical definition to state claims against.
-/

/-! ## A046408.P3681270891026257750

`∩[A046328(n+1), A046400(n+1)]`
-/

namespace A046408.P3681270891026257750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046328 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046400 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046408.P3681270891026257750

/-! ## A046408.P9416849230350681238

`∩[A046351(n+1), A046392(n+1)]`
-/

namespace A046408.P9416849230350681238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046351 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046392 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046408.P9416849230350681238

/-! ## A046408.P12030463735277022415

`∩[A046351(n+1), A046400(n+1)]`
-/

namespace A046408.P12030463735277022415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046351 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046400 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046408.P12030463735277022415

/-! ## A046408.P10514098015400273178

`∩[A046368(n+1), A046392(n+1)]`
-/

namespace A046408.P10514098015400273178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046368 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046392 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046408.P10514098015400273178

/-! ## A046408.P12450659103040897302

`∩[A046376(n+1), A046392(n+1)]`
-/

namespace A046408.P12450659103040897302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046376 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046392 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046408.P12450659103040897302

/-! ## A046408.P10545654722450331969

`∩[A046376(n+1), A046400(n+1)]`
-/

namespace A046408.P10545654722450331969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046376 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046400 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046408.P10545654722450331969

/-! ## A046408.P8645324419656603092

`∩[A046392(n+1), A046400(n+1)]`
-/

namespace A046408.P8645324419656603092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046392 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046400 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046408.P8645324419656603092

/-! ## A046408.P18339349984682273112

`∩[A046392(n+1), A062687(n+1)]`
-/

namespace A046408.P18339349984682273112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046392 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062687 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046408.P18339349984682273112

/-! ## A046408.P16121521513877233628

`∩[A046400(n+1), A062687(n+1)]`
-/

namespace A046408.P16121521513877233628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046400 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062687 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046408.P16121521513877233628

/-! ## A046408.P18292386352812917972

`∩[A046392(n+1), A078337(n+1)]`
-/

namespace A046408.P18292386352812917972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046392 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078337 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046408.P18292386352812917972

/-! ## A046408.P16584474386604164371

`∩[A046400(n+1), A078337(n+1)]`
-/

namespace A046408.P16584474386604164371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046400 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078337 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046408.P16584474386604164371

/-! ## A046408.P11218228958059814098

`∩[A046400(n+1), A080716(n+1)]`
-/

namespace A046408.P11218228958059814098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046400 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080716 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046408.P11218228958059814098

/-! ## A046408.P11395746396835081841

`∩[A046338(n+1), A046400(n+1)]`
-/

namespace A046408.P11395746396835081841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046338 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046400 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046408.P11395746396835081841

/-! ## A046408.P8743336795830675307

`∩[A046400(n+1), A394545(n+1)]`
-/

namespace A046408.P8743336795830675307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046400 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394545 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046408.P8743336795830675307

/-! ## A046408.P12017319949330212284

`∩[A046400(n+1), A324988(n+1)]`
-/

namespace A046408.P12017319949330212284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046400 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324988 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046408.P12017319949330212284

/-! ## A046408.P164323433587154632

`∩[A002113(n+1), A046400(n+1)]`
-/

namespace A046408.P164323433587154632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046400 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046408.P164323433587154632

/-! ## A046408.P10943404874215370886

`∩[A035134(n+1), A046368(n+1)]`
-/

namespace A046408.P10943404874215370886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035134 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046368 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046408.P10943404874215370886

/-! ## A046408.P13774677034667168354

`∩[A035134(n+1), A046376(n+1)]`
-/

namespace A046408.P13774677034667168354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035134 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046376 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046408.P13774677034667168354

/-! ## A046408.P11938547099731033835

`∩[A035134(n+1), A046400(n+1)]`
-/

namespace A046408.P11938547099731033835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035134 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046400 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046408.P11938547099731033835

/-! ## A046408.P4335769481873106670

`∩[A046368(n+1), A071251(n+1)]`
-/

namespace A046408.P4335769481873106670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046368 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071251 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046408.P4335769481873106670

/-!
# A046409: Palindromes with exactly 3 distinct palindromic prime factors.

The programs for A046409, there is no canonical definition to state claims against.
-/

/-! ## A046409.P12482676149848929887

`∩[A046351(n+1), A242726(n+1)]`
-/

namespace A046409.P12482676149848929887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046351 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242726 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046409.P12482676149848929887

/-! ## A046409.P16543806009518697038

`∩[A046377(n+1), A242726(n+1)]`
-/

namespace A046409.P16543806009518697038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046377 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242726 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046409.P16543806009518697038

/-! ## A046409.P4797588767372010981

`∩[A062687(n+1), A242726(n+1)]`
-/

namespace A046409.P4797588767372010981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062687 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242726 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046409.P4797588767372010981

/-! ## A046409.P16287060390113351341

`∩[A078895(n+1), A242726(n+1)]`
-/

namespace A046409.P16287060390113351341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078895 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242726 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046409.P16287060390113351341

/-! ## A046409.P18301498861150303252

`∩[A046351(n+1), A046393(n+1)]`
-/

namespace A046409.P18301498861150303252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046351 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046393 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046409.P18301498861150303252

/-! ## A046409.P17176072194852845284

`∩[A046377(n+1), A046393(n+1)]`
-/

namespace A046409.P17176072194852845284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046377 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046393 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046409.P17176072194852845284

/-! ## A046409.P7143324538504236531

`∩[A046393(n+1), A062687(n+1)]`
-/

namespace A046409.P7143324538504236531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046393 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062687 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046409.P7143324538504236531

/-! ## A046409.P8950213616206236279

`∩[A046393(n+1), A078895(n+1)]`
-/

namespace A046409.P8950213616206236279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046393 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078895 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046409.P8950213616206236279

/-! ## A046409.P13138341239575606197

`∩[A242726(n+1), A394545(n+1)]`
-/

namespace A046409.P13138341239575606197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242726 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394545 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046409.P13138341239575606197

/-! ## A046409.P3805574651682678731

`∩[A046351(n+1), A075800(n+1)]`
-/

namespace A046409.P3805574651682678731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046351 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075800 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046409.P3805574651682678731

/-!
# A046411: Composite numbers the concatenation of whose prime factors is a prime.

The programs for A046411, there is no canonical definition to state claims against.
-/

/-! ## A046411.P14815426508249490652

`filter[A343027(n+1), A005171(#)]`
-/

namespace A046411.P14815426508249490652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343027 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A046411.P14815426508249490652

/-! ## A046411.P14940922598269946851

`filter[A343027(n+1), A066247(#)]`
-/

namespace A046411.P14940922598269946851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343027 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A046411.P14940922598269946851

/-! ## A046411.P15100671741932168027

`filter[A343027(n+1), A202238(#)]`
-/

namespace A046411.P15100671741932168027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343027 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A202238 (f1 j).toNat = 1) n)

end

end A046411.P15100671741932168027

/-! ## A046411.P12277013661290357187

`∩[A002808(n+1), A343027(n+1)]`
-/

namespace A046411.P12277013661290357187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343027 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046411.P12277013661290357187

/-! ## A046411.P4930208408813746958

`∩[A018252(n+1), A343027(n+1)]`
-/

namespace A046411.P4930208408813746958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343027 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046411.P4930208408813746958

/-! ## A046411.P15596029608031887878

`∩[A141468(n+1), A343027(n+1)]`
-/

namespace A046411.P15596029608031887878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343027 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046411.P15596029608031887878

/-! ## A046411.P16766388580647516683

`∩[A024619(n+1), A343027(n+1)]`
-/

namespace A046411.P16766388580647516683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024619 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343027 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046411.P16766388580647516683

/-! ## A046411.P3115293244025833882

`∩[A343027(n+1), A361102(n+1)]`
-/

namespace A046411.P3115293244025833882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343027 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361102 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046411.P3115293244025833882

/-! ## A046411.P13053313429374666105

`∩[A139118(n+1), A343027(n+1)]`
-/

namespace A046411.P13053313429374666105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139118 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343027 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046411.P13053313429374666105

/-! ## A046411.P7683507754039970764

`∩[A268388(n+1), A343027(n+1)]`
-/

namespace A046411.P7683507754039970764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268388 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343027 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046411.P7683507754039970764

/-! ## A046411.P1348932339325735719

`∩[A080257(n+1), A343027(n+1)]`
-/

namespace A046411.P1348932339325735719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080257 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343027 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046411.P1348932339325735719

/-! ## A046411.P16496538363102312901

`∩[A056653(n+1), A343027(n+1)]`
-/

namespace A046411.P16496538363102312901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056653 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343027 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046411.P16496538363102312901

/-! ## A046411.P3015150260394126087

`∩[A062973(n+1), A343027(n+1)]`
-/

namespace A046411.P3015150260394126087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062973 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343027 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046411.P3015150260394126087

/-! ## A046411.P6297729905325948005

`∩[A343027(n+1), A343311(n+1)]`
-/

namespace A046411.P6297729905325948005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343027 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343311 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046411.P6297729905325948005

/-! ## A046411.P6489136220402318508

`∩[A343027(n+1), A387319(n+1)]`
-/

namespace A046411.P6489136220402318508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343027 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387319 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046411.P6489136220402318508

/-! ## A046411.P2308139178829102591

`filter[A343027(n+1), A143731(#)]`
-/

namespace A046411.P2308139178829102591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343027 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A143731 (f1 j).toNat = 1) n)

end

end A046411.P2308139178829102591

/-! ## A046411.P329993093518106590

`∩[A343027(n+1), A348718(n+1)]`
-/

namespace A046411.P329993093518106590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343027 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348718 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046411.P329993093518106590

/-! ## A046411.P1784364634138470086

`∩[A111774(n+1), A343027(n+1)]`
-/

namespace A046411.P1784364634138470086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111774 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343027 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046411.P1784364634138470086

/-!
# A046412: Lengths of nonsquarefree repunits.

The programs for A046412, there is no canonical definition to state claims against.
-/

/-! ## A046412.P13379011147947627549

`lt[A095370(n+1), A046053(n+1)]+1`
-/

namespace A046412.P13379011147947627549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095370 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046053 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A046412.P13379011147947627549

/-!
# A046413: Numbers k such that the repunit of length k (11...11, with k 1's) has exactly 2 prime factors.

The programs for A046413, there is no canonical definition to state claims against.
-/

/-! ## A046413.P18199524045642865655

`eq[2, A046053(n+1)]+1`
-/

namespace A046413.P18199524045642865655
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046053 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A046413.P18199524045642865655

/-! ## A046413.P3157103418145157857

`eq[4, A057951(n+1)]+1`
-/

namespace A046413.P3157103418145157857
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057951 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A046413.P3157103418145157857

/-! ## A046413.P9480123236634077093

`eq[4, A070529(n+1)]+1`
-/

namespace A046413.P9480123236634077093
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070529 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A046413.P9480123236634077093

/-! ## A046413.P7565953303537387590

`eq[2, A046053(A028310(n))]`
-/

namespace A046413.P7565953303537387590
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046053 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A046413.P7565953303537387590

/-! ## A046413.P11398668757892972703

`A020725(eq[2, A046053(n+1)])`
-/

namespace A046413.P11398668757892972703
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046053 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A046413.P11398668757892972703

/-!
# A046414: Repunit of length a(n) has exactly 3 prime factors (counted with multiplicity).

The programs for A046414, there is no canonical definition to state claims against.
-/

/-! ## A046414.P5005264514502623191

`eq[3, A046053(A028310(n))]`
-/

namespace A046414.P5005264514502623191
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046053 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A046414.P5005264514502623191

/-! ## A046414.P8948220699134217210

`A020725(eq[3, A046053(n+1)])`
-/

namespace A046414.P8948220699134217210
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046053 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A046414.P8948220699134217210

/-! ## A046414.P10637367606438366031

`A065475(eq[3, A046053(n+1)])`
-/

namespace A046414.P10637367606438366031
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046053 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A046414.P10637367606438366031

/-! ## A046414.P2862893717574094579

`eq[3, A046053(A066182(n+1))]`
-/

namespace A046414.P2862893717574094579
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046053 (A066182 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A046414.P2862893717574094579

/-! ## A046414.P9289851205442152874

`A153152(eq[3, A046053(n+1)])`
-/

namespace A046414.P9289851205442152874
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046053 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A046414.P9289851205442152874

/-!
# A046415: Repunit of length a(n) has exactly 4 prime factors (counted with multiplicity).

The programs for A046415, there is no canonical definition to state claims against.
-/

/-! ## A046415.P15047728757845664819

`eq[4, A046053(n+1)]+1`
-/

namespace A046415.P15047728757845664819
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046053 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A046415.P15047728757845664819

/-! ## A046415.P6491220576524937929

`eq[6, A057951(n+1)]+1`
-/

namespace A046415.P6491220576524937929
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057951 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A046415.P6491220576524937929

/-! ## A046415.P11474788567257813003

`eq[4, A046053(A028310(n))]`
-/

namespace A046415.P11474788567257813003
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046053 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A046415.P11474788567257813003

/-! ## A046415.P7801568315608051010

`A020725(eq[4, A046053(n+1)])`
-/

namespace A046415.P7801568315608051010
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046053 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A046415.P7801568315608051010

/-! ## A046415.P11479852555383584851

`A065475(eq[4, A046053(n+1)])`
-/

namespace A046415.P11479852555383584851
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046053 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A046415.P11479852555383584851

/-!
# A046416: Repunit of length a(n) has exactly 5 prime factors (counted with multiplicity).

The programs for A046416, there is no canonical definition to state claims against.
-/

/-! ## A046416.P13059013514711235607

`eq[5, A046053(n+1)]+1`
-/

namespace A046416.P13059013514711235607
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046053 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A046416.P13059013514711235607

/-! ## A046416.P6391669414771861147

`eq[5, A046053(A028310(n))]`
-/

namespace A046416.P6391669414771861147
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046053 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A046416.P6391669414771861147

/-! ## A046416.P15660929626575317509

`A020725(eq[5, A046053(n+1)])`
-/

namespace A046416.P15660929626575317509
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046053 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A046416.P15660929626575317509

/-! ## A046416.P3608752619982410319

`A065475(eq[5, A046053(n+1)])`
-/

namespace A046416.P3608752619982410319
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046053 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A046416.P3608752619982410319

/-! ## A046416.P3648351340030649102

`A153152(eq[5, A046053(n+1)])`
-/

namespace A046416.P3648351340030649102
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046053 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A046416.P3648351340030649102

/-!
# A046417: Repunit of length a(n) has exactly 6 prime factors (counted with multiplicity).

The programs for A046417, there is no canonical definition to state claims against.
-/

/-! ## A046417.P3555803103975455927

`eq[6, A046053(n+1)]+1`
-/

namespace A046417.P3555803103975455927
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046053 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A046417.P3555803103975455927

/-! ## A046417.P17441201817005262442

`eq[8, A057951(n+1)]+1`
-/

namespace A046417.P17441201817005262442
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057951 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A046417.P17441201817005262442

/-! ## A046417.P3062041899752338683

`eq[6, A046053(A028310(n))]`
-/

namespace A046417.P3062041899752338683
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046053 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A046417.P3062041899752338683

/-! ## A046417.P5098836575108171407

`A020725(eq[6, A046053(n+1)])`
-/

namespace A046417.P5098836575108171407
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046053 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A046417.P5098836575108171407

/-! ## A046417.P4225215143165330951

`A065475(eq[6, A046053(n+1)])`
-/

namespace A046417.P4225215143165330951
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046053 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A046417.P4225215143165330951

/-!
# A046418: Repunit of length a(n) has exactly 7 prime factors (counted with multiplicity).

The programs for A046418, there is no canonical definition to state claims against.
-/

/-! ## A046418.P13245618462980084194

`eq[9, A057951(n+1)]+1`
-/

namespace A046418.P13245618462980084194
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057951 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A046418.P13245618462980084194

/-! ## A046418.P15987609165707998699

`eq[7, A046053(A028310(n))]`
-/

namespace A046418.P15987609165707998699
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046053 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A046418.P15987609165707998699

/-! ## A046418.P12428227314316646087

`A020725(eq[7, A046053(n+1)])`
-/

namespace A046418.P12428227314316646087
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046053 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A046418.P12428227314316646087

/-! ## A046418.P8416423102884508847

`A065475(eq[7, A046053(n+1)])`
-/

namespace A046418.P8416423102884508847
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046053 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A046418.P8416423102884508847

/-! ## A046418.P13825127978380524013

`A153152(eq[7, A046053(n+1)])`
-/

namespace A046418.P13825127978380524013
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046053 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A046418.P13825127978380524013

/-!
# A046419: Repunit of length a(n) has exactly 8 prime factors (counted with multiplicity).

The programs for A046419, there is no canonical definition to state claims against.
-/

/-! ## A046419.P15234835999814755781

`eq[8, A046053(n+1)]+1`
-/

namespace A046419.P15234835999814755781
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046053 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A046419.P15234835999814755781

/-! ## A046419.P12191996048260339109

`1+eq[10, A057951(n+1)]`
-/

namespace A046419.P12191996048260339109
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057951 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A046419.P12191996048260339109

/-! ## A046419.P8655702770663489023

`eq[8, A046053(A028310(n))]`
-/

namespace A046419.P8655702770663489023
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046053 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A046419.P8655702770663489023

/-! ## A046419.P4343556057064222353

`A020725(eq[8, A046053(n+1)])`
-/

namespace A046419.P4343556057064222353
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046053 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A046419.P4343556057064222353

/-! ## A046419.P6624406894239911317

`A065475(eq[8, A046053(n+1)])`
-/

namespace A046419.P6624406894239911317
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046053 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A046419.P6624406894239911317

/-!
# A046420: Prime factors of repunit of length a(n) are all of different lengths.

The programs for A046420, there is no canonical definition to state claims against.
-/

/-! ## A046420.P14255401272678442486

`lt[gcd(n, ∑[n]), A283183(29*n+18)]+1`
-/

namespace A046420.P14255401272678442486
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd n (∑ j ∈ Finset.range (n + 1), f2 j)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283183 (29 * n + 18)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f3 j) n + 1

end

end A046420.P14255401272678442486

/-! ## A046420.P3927967963237670521

`char[7]+record[A249821(A218544(n))]`
-/

namespace A046420.P3927967963237670521
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249821 (A218544 n).toNat

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

end

end A046420.P3927967963237670521

/-! ## A046420.P4248292175423008307

`char[7]+∑[A000005(A146629(n+1))]`
-/

namespace A046420.P4248292175423008307
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A146629 (n + 1)).toNat

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + ∑ j ∈ Finset.range (n + 1), f2 j

end

end A046420.P4248292175423008307

/-! ## A046420.P1865190568887954694

`A345951(A285928(n))+A345899(n+1)`
-/

namespace A046420.P1865190568887954694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345951 (A285928 n).toNat + A345899 (n + 1)

end

end A046420.P1865190568887954694

/-!
# A046433: Numbers such that 3 steps are needed to reach a prime under "Sum of digits raised to its digits' powers" procedure.

The programs for A046433, there is no canonical definition to state claims against.
-/

/-! ## A046433.P132431508797755823

`or(A106685(2*n+1), A277537(A027642(2*(n+1))))`
-/

namespace A046433.P132431508797755823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A106685 (2 * n + 1)) (A277537 (A027642 (2 * (n + 1))).toNat)

end

end A046433.P132431508797755823

/-!
# A046440: Sum of digits of prime(n) raised to its digits' powers is prime.

The programs for A046440, there is no canonical definition to state claims against.
-/

/-! ## A046440.P10815727481511473033

`p?[A046431(n)]`
-/

namespace A046440.P10815727481511473033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046431 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A046440.P10815727481511473033

/-! ## A046440.P14191407475471171934

`∩[A054723(n+1), A046431(n)]`
-/

namespace A046440.P14191407475471171934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054723 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046431 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046440.P14191407475471171934

/-! ## A046440.P12909172730503587796

`∩[A122259(n+1), A046431(n)]`
-/

namespace A046440.P12909172730503587796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122259 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046431 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046440.P12909172730503587796

/-! ## A046440.P15879438448324857919

`∩[A000040(n+1), A046431(n)]`
-/

namespace A046440.P15879438448324857919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046431 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046440.P15879438448324857919

/-! ## A046440.P3351587956669558712

`∩[A004139(n+1), A046431(n)]`
-/

namespace A046440.P3351587956669558712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046431 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046440.P3351587956669558712

/-! ## A046440.P15055779757966001762

`∩[A006005(n+1), A046431(n)]`
-/

namespace A046440.P15055779757966001762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046431 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046440.P15055779757966001762

/-! ## A046440.P5158989479579153934

`∩[A008578(n+1), A046431(n)]`
-/

namespace A046440.P5158989479579153934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046431 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046440.P5158989479579153934

/-! ## A046440.P15345839071660895836

`∩[A033946(n+1), A046431(n)]`
-/

namespace A046440.P15345839071660895836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033946 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046431 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046440.P15345839071660895836

/-! ## A046440.P12592861696726126201

`∩[A045319(n+1), A046431(n)]`
-/

namespace A046440.P12592861696726126201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046431 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046440.P12592861696726126201

/-! ## A046440.P13170011778682893164

`∩[A045344(n+1), A046431(n)]`
-/

namespace A046440.P13170011778682893164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046431 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046440.P13170011778682893164

/-! ## A046440.P3362631653980166524

`∩[A046022(n+1), A046431(n)]`
-/

namespace A046440.P3362631653980166524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046431 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046440.P3362631653980166524

/-! ## A046440.P12869196766115848350

`∩[A051948(n+1), A046431(n)]`
-/

namespace A046440.P12869196766115848350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051948 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046431 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046440.P12869196766115848350

/-! ## A046440.P9389596377243250906

`∩[A053813(n+1), A046431(n)]`
-/

namespace A046440.P9389596377243250906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046431 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046440.P9389596377243250906

/-! ## A046440.P8128263622043073360

`∩[A062972(n+1), A046431(n)]`
-/

namespace A046440.P8128263622043073360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062972 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046431 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046440.P8128263622043073360

/-! ## A046440.P2920325456936476046

`∩[A065091(n+1), A046431(n)]`
-/

namespace A046440.P2920325456936476046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046431 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046440.P2920325456936476046

/-! ## A046440.P411217407373436395

`∩[A065396(n+1), A046431(n)]`
-/

namespace A046440.P411217407373436395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065396 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046431 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046440.P411217407373436395

/-! ## A046440.P7239611675964365590

`∩[A067126(n+1), A046431(n)]`
-/

namespace A046440.P7239611675964365590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067126 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046431 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046440.P7239611675964365590

/-! ## A046440.P1282863544247427876

`∩[A083249(n+1), A046431(n)]`
-/

namespace A046440.P1282863544247427876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083249 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046431 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046440.P1282863544247427876

/-! ## A046440.P13745976661727997530

`∩[A116974(n+1), A046431(n)]`
-/

namespace A046440.P13745976661727997530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116974 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046431 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046440.P13745976661727997530

/-! ## A046440.P12053869480860964247

`∩[A138837(n+1), A046431(n)]`
-/

namespace A046440.P12053869480860964247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138837 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046431 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046440.P12053869480860964247

/-!
# A046443: Composite numbers whose 3 prime factors are distinct in length.

The programs for A046443, there is no canonical definition to state claims against.
-/

/-! ## A046443.P15575991227165691615

`record[gcd(A046444(n+1), A046444(n+3))]`
-/

namespace A046443.P15575991227165691615
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A046444 (n + 1)) (A046444 (n + 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A046443.P15575991227165691615

/-!
# A046445: Smallest composite with n prime factors that are distinct in length.

The programs for A046445, there is no canonical definition to state claims against.
-/

/-! ## A046445.P11549531772544561222

`∏[A003617(n+1)]-A000007(n)`
-/

namespace A046445.P11549531772544561222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003617 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j - A000007 n

end

end A046445.P11549531772544561222

/-! ## A046445.P6968663176483643456

`∏[A003617(n+1)]-A151721(n)`
-/

namespace A046445.P6968663176483643456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003617 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j - A151721 n

end

end A046445.P6968663176483643456

/-! ## A046445.P6069645989293194623

`∏[A003617(n+1)]^A178334(n)`
-/

namespace A046445.P6069645989293194623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003617 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) ^ (A178334 n : ℤ)

end

end A046445.P6069645989293194623

/-! ## A046445.P11162736450608018880

`∏[A101592(Δ[n²])]-A000007(n)`
-/

namespace A046445.P11162736450608018880
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101592 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j - A000007 n

end

end A046445.P11162736450608018880

/-! ## A046445.P12815732382852501144

`∏[A139052(Δ[n²])]-A000007(n)`
-/

namespace A046445.P12815732382852501144
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139052 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j - A000007 n

end

end A046445.P12815732382852501144

/-!
# A046446: Nonprimes whose prime factors contain only odd digits.

The programs for A046446, there is no canonical definition to state claims against.
-/

/-! ## A046446.P5647578349539249253

`A014076(lt[A330728(n+1), A330728(n+5)])`
-/

namespace A046446.P5647578349539249253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330728 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330728 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014076 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A046446.P5647578349539249253

/-! ## A046446.P11338420499716340275

`record[gcd(A014076(n+1), A172542(n))]`
-/

namespace A046446.P11338420499716340275
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A014076 (n + 1)) (A172542 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A046446.P11338420499716340275

/-! ## A046446.P590633791917554693

`∏{e}[2^n, A100819(#)]`
-/

namespace A046446.P590633791917554693
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A100819 (Nat.factorization (f1 n) p)

end

end A046446.P590633791917554693

/-! ## A046446.P5529295799531847820

`filter[A062505(n+1), A174889(#)]`
-/

namespace A046446.P5529295799531847820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062505 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A174889 (f1 j).toNat = 1) n)

end

end A046446.P5529295799531847820

/-! ## A046446.P17666852681646424320

`filter[A130696(2*(n+1)), A174889(#)]`
-/

namespace A046446.P17666852681646424320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130696 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A174889 (f1 j).toNat = 1) n)

end

end A046446.P17666852681646424320

/-!
# A046447: Apart from initial term, composite numbers with the property that the concatenation of their prime factors is a palindrome.

The programs for A046447, there is no canonical definition to state claims against.
-/

/-! ## A046447.P6979085868598780911

`filter[A381159(n+1), A174889(#)]`
-/

namespace A046447.P6979085868598780911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381159 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A174889 (f1 j).toNat = 1) n)

end

end A046447.P6979085868598780911

/-! ## A046447.P9471424298833696040

`A332671(A260163(n))+A001597(n+1)`
-/

namespace A046447.P9471424298833696040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332671 (A260163 n).toNat + A001597 (n + 1)

end

end A046447.P9471424298833696040

/-! ## A046447.P3016202287714516002

`A154725(A061954(n+1))+A001694(n+1)`
-/

namespace A046447.P3016202287714516002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154725 (A061954 (n + 1)).toNat + A001694 (n + 1)

end

end A046447.P3016202287714516002

/-! ## A046447.P17548994979579865804

`∩[A051234(n+1), A381159(n+1)]`
-/

namespace A046447.P17548994979579865804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051234 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381159 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046447.P17548994979579865804

/-! ## A046447.P13365330370885388408

`A050452(A331312(n+1))+A001597(n+1)`
-/

namespace A046447.P13365330370885388408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050452 (A331312 (n + 1)).toNat + A001597 (n + 1)

end

end A046447.P13365330370885388408

/-!
# A046448: Squarefree nonprimes with property that the concatenation of the prime factors is a palindrome.

The programs for A046448, there is no canonical definition to state claims against.
-/

/-! ## A046448.P16223609612084503408

`filter[A046447(n+1), A008966(#)]`
-/

namespace A046448.P16223609612084503408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046447 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A046448.P16223609612084503408

/-! ## A046448.P9698555093099597779

`filter[A046447(n+1), A354819(#)]`
-/

namespace A046448.P9698555093099597779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046447 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354819 (f1 j).toNat = 1) n)

end

end A046448.P9698555093099597779

/-! ## A046448.P9683691396974992166

`∩[A005117(n+1), A046447(n+1)]`
-/

namespace A046448.P9683691396974992166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046447 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046448.P9683691396974992166

/-! ## A046448.P13350419209242846362

`filter[A046447(n+1), A323154(#)]`
-/

namespace A046448.P13350419209242846362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046447 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323154 (f1 j).toNat = 1) n)

end

end A046448.P13350419209242846362

/-! ## A046448.P11143560204359844381

`filter[A046447(n+1), A323239(#)]`
-/

namespace A046448.P11143560204359844381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046447 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323239 (f1 j).toNat = 1) n)

end

end A046448.P11143560204359844381

/-! ## A046448.P12075137049116605886

`filter[A046447(n+1), A353559(#)]`
-/

namespace A046448.P12075137049116605886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046447 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353559 (f1 j).toNat = 1) n)

end

end A046448.P12075137049116605886

/-! ## A046448.P8020640612395928249

`∩[A046447(n+1), A348506(n+1)]`
-/

namespace A046448.P8020640612395928249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046447 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348506 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046448.P8020640612395928249

/-! ## A046448.P10526704208574179497

`∩[A046447(n+1), A348499(n+1)]`
-/

namespace A046448.P10526704208574179497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046447 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348499 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046448.P10526704208574179497

/-! ## A046448.P5002827012282816833

`∩[A046447(n+1), A056911(n+1)]`
-/

namespace A046448.P5002827012282816833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046447 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056911 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046448.P5002827012282816833

/-! ## A046448.P3654941721814183236

`∩[A046447(n+1), A087247(n+1)]`
-/

namespace A046448.P3654941721814183236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046447 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087247 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046448.P3654941721814183236

/-!
# A046450: Concatenation of prime factors of palindromic composite is a palindrome.

The programs for A046450, there is no canonical definition to state claims against.
-/

/-! ## A046450.P12770264106987990844

`∩[A002113(n+1), A046447(n+2)]`
-/

namespace A046450.P12770264106987990844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046447 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046450.P12770264106987990844

/-! ## A046450.P166496256602028748

`∩[A046447(n+1), Δ[A046489(n)]]`
-/

namespace A046450.P166496256602028748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046447 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046489 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046450.P166496256602028748

/-! ## A046450.P2985428898257582291

`∩[A046447(n+1), A083158(n+1)]`
-/

namespace A046450.P2985428898257582291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046447 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083158 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046450.P2985428898257582291

/-! ## A046450.P2322740158860987999

`filter[A192140(n+1), A373481(#)]`
-/

namespace A046450.P2322740158860987999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192140 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373481 (f1 j).toNat = 1) n)

end

end A046450.P2322740158860987999

/-! ## A046450.P5381840582918723833

`∩[A046447(n+1), A192140(n+1)]`
-/

namespace A046450.P5381840582918723833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046447 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192140 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046450.P5381840582918723833

/-!
# A046451: Semiprimes whose prime factors, when concatenated, yield a palindrome.

The programs for A046451, there is no canonical definition to state claims against.
-/

/-! ## A046451.P17946357842518125681

`∩[A001358(n+1), A046447(n+1)]`
-/

namespace A046451.P17946357842518125681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046447 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046451.P17946357842518125681

/-! ## A046451.P14112741755333030916

`∩[A001358(n+1), A192137(n+1)]`
-/

namespace A046451.P14112741755333030916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192137 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046451.P14112741755333030916

/-! ## A046451.P17110770563924609255

`filter[A046447(n+1), A064911(#)]`
-/

namespace A046451.P17110770563924609255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046447 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A046451.P17110770563924609255

/-! ## A046451.P12348279370289781926

`filter[A046447(n+1), A101040(#)]`
-/

namespace A046451.P12348279370289781926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046447 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A101040 (f1 j).toNat = 1) n)

end

end A046451.P12348279370289781926

/-! ## A046451.P4869548179682278511

`filter[A192137(n+1), A064911(#)]`
-/

namespace A046451.P4869548179682278511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192137 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A046451.P4869548179682278511

/-! ## A046451.P17283575932709075408

`∩[A176540(n+1), A192137(n+1)]`
-/

namespace A046451.P17283575932709075408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176540 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192137 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046451.P17283575932709075408

/-! ## A046451.P16238432418215865098

`∩[A046447(n+1), A339424(n+1)]`
-/

namespace A046451.P16238432418215865098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046447 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339424 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046451.P16238432418215865098

/-! ## A046451.P7432621334282198147

`∩[A046447(n+1), A186621(n+1)+1]`
-/

namespace A046451.P7432621334282198147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046447 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186621 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046451.P7432621334282198147

/-!
# A046452: Numbers that are the product of 3 prime factors whose concatenation is a palindrome.

The programs for A046452, there is no canonical definition to state claims against.
-/

/-! ## A046452.P6860220609099212122

`∩[A014612(n+1), A046447(n+1)]`
-/

namespace A046452.P6860220609099212122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014612 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046447 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046452.P6860220609099212122

/-! ## A046452.P9435988347198289533

`∩[A046447(n+1), A298207(n+2)]`
-/

namespace A046452.P9435988347198289533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046447 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298207 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046452.P9435988347198289533

/-! ## A046452.P14345544212167366519

`filter[A046447(n+1), A101605(#)]`
-/

namespace A046452.P14345544212167366519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046447 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A101605 (f1 j).toNat = 1) n)

end

end A046452.P14345544212167366519

/-! ## A046452.P319064425667592810

`∩[A165712(a(n-1)), A046447(n+1)]` with `a(0)=0, a(1)=8`
-/

namespace A046452.P319064425667592810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 8] fun n f1 =>
  A165712 (f1 (n - 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046447 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046452.P319064425667592810

/-!
# A046453: Composite numbers with four prime factors (not necessarily distinct) whose concatenation yields a palindrome.

The programs for A046453, there is no canonical definition to state claims against.
-/

/-! ## A046453.P17417843735614389515

`A348513(A046454(n))`
-/

namespace A046453.P17417843735614389515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348513 (A046454 n).toNat

end

end A046453.P17417843735614389515

/-!
# A046460: Number of prime factors of concatenation of numbers from 1 up to n, with multiplicity.

The programs for A046460, there is no canonical definition to state claims against.
-/

/-! ## A046460.P17768513820291471411

`A376274(A033061(n+1))`
-/

namespace A046460.P17768513820291471411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376274 (A033061 (n + 1)).toNat

end

end A046460.P17768513820291471411

/-! ## A046460.P10931974710535617027

`A376274(A058183(n+1))`
-/

namespace A046460.P10931974710535617027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376274 (A058183 (n + 1)).toNat

end

end A046460.P10931974710535617027

/-! ## A046460.P4262497356218737490

`A376274(A080676(n+1))`
-/

namespace A046460.P4262497356218737490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376274 (A080676 (n + 1)).toNat

end

end A046460.P4262497356218737490

/-! ## A046460.P1433878047062713243

`A376274(A322341(n+1))`
-/

namespace A046460.P1433878047062713243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376274 (A322341 (n + 1)).toNat

end

end A046460.P1433878047062713243

/-! ## A046460.P10602820793124643362

`A376274(lt[A038063(n+1), n²])`
-/

namespace A046460.P10602820793124643362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038063 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376274 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A046460.P10602820793124643362

/-!
# A046462: Numbers k such that the concatenation of numbers from 1 to k is the product of 3 primes (not necessarily distinct).

The programs for A046462, there is no canonical definition to state claims against.
-/

/-! ## A046462.P7792947131038518638

`eq[3, A046460(n+1)]+1`
-/

namespace A046462.P7792947131038518638
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046460 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A046462.P7792947131038518638

/-! ## A046462.P15725989962235921339

`eq[3, A046460(A028310(n))]`
-/

namespace A046462.P15725989962235921339
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046460 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A046462.P15725989962235921339

/-! ## A046462.P16405171436440885100

`A020725(eq[3, A046460(n+1)])`
-/

namespace A046462.P16405171436440885100
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046460 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A046462.P16405171436440885100

/-! ## A046462.P17114755022576964349

`eq[3, A046460(A137734(n²))]`
-/

namespace A046462.P17114755022576964349
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046460 (A137734 (n ^ 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A046462.P17114755022576964349

/-!
# A046463: Numbers k such that the concatenation of numbers from 1 to k is the product of 4 primes (not necessarily distinct).

The programs for A046463, there is no canonical definition to state claims against.
-/

/-! ## A046463.P15474063266761465610

`eq[4, A046460(n+1)]+1`
-/

namespace A046463.P15474063266761465610
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046460 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A046463.P15474063266761465610

/-! ## A046463.P5291638596171551751

`eq[4, A046460(A028310(n))]`
-/

namespace A046463.P5291638596171551751
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046460 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A046463.P5291638596171551751

/-! ## A046463.P1444608549534097468

`eq[4, A046460(A137734(n²))]`
-/

namespace A046463.P1444608549534097468
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046460 (A137734 (n ^ 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A046463.P1444608549534097468

/-! ## A046463.P13980466157867086471

`A020725(eq[4, A046460(n+1)])`
-/

namespace A046463.P13980466157867086471
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046460 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A046463.P13980466157867086471

/-! ## A046463.P5351899381985066483

`A065475(eq[4, A046460(n+1)])`
-/

namespace A046463.P5351899381985066483
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046460 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A046463.P5351899381985066483

/-!
# A046464: Numbers k such that the concatenation of numbers from 1 to k is the product of 5 primes (not necessarily distinct).

The programs for A046464, there is no canonical definition to state claims against.
-/

/-! ## A046464.P5139580585884198262

`eq[5, A046460(n+1)]+1`
-/

namespace A046464.P5139580585884198262
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046460 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A046464.P5139580585884198262

/-! ## A046464.P1752352391927227935

`lt[4, A046460(gcd(n, C(2, n)))%6]`
-/

namespace A046464.P1752352391927227935
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A046460 (Nat.gcd n (Nat.choose 2 n))) 6

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A046464.P1752352391927227935

/-! ## A046464.P8162639611237640206

`eq[5, A046460(A028310(n))]`
-/

namespace A046464.P8162639611237640206
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046460 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A046464.P8162639611237640206

/-! ## A046464.P4247152351867044322

`A020725(eq[5, A046460(n+1)])`
-/

namespace A046464.P4247152351867044322
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046460 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A046464.P4247152351867044322

/-! ## A046464.P15020577018580387569

`A065475(eq[5, A046460(n+1)])`
-/

namespace A046464.P15020577018580387569
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046460 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A046464.P15020577018580387569

/-!
# A046465: Numbers k such that the concatenation of numbers from 1 to k is the product of 6 primes (not necessarily distinct).

The programs for A046465, there is no canonical definition to state claims against.
-/

/-! ## A046465.P16658195346826636091

`eq[6, A046460(n+1)]+1`
-/

namespace A046465.P16658195346826636091
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046460 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A046465.P16658195346826636091

/-! ## A046465.P7375083120114632051

`eq[6, A046460(A028310(n))]`
-/

namespace A046465.P7375083120114632051
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046460 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A046465.P7375083120114632051

/-! ## A046465.P12840616707657322895

`A020725(eq[6, A046460(n+1)])`
-/

namespace A046465.P12840616707657322895
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046460 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A046465.P12840616707657322895

/-! ## A046465.P2975250912334510479

`A065475(eq[6, A046460(n+1)])`
-/

namespace A046465.P2975250912334510479
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046460 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A046465.P2975250912334510479

/-! ## A046465.P1828458238196330963

`A114637(eq[6, A046460(n+1)])`
-/

namespace A046465.P1828458238196330963
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046460 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114637 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A046465.P1828458238196330963

/-!
# A046466: Numbers k such that the concatenation of numbers from 1 to k is the product of 7 primes (not necessarily distinct).

The programs for A046466, there is no canonical definition to state claims against.
-/

/-! ## A046466.P12476059906552841432

`eq[7, A046460(n+1)]+1`
-/

namespace A046466.P12476059906552841432
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046460 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A046466.P12476059906552841432

/-! ## A046466.P6723261509591599074

`eq[7, A046460(A028310(n))]`
-/

namespace A046466.P6723261509591599074
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046460 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A046466.P6723261509591599074

/-! ## A046466.P10592958612512737672

`A020725(eq[7, A046460(n+1)])`
-/

namespace A046466.P10592958612512737672
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046460 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A046466.P10592958612512737672

/-! ## A046466.P7779831999808372985

`A065475(eq[7, A046460(n+1)])`
-/

namespace A046466.P7779831999808372985
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046460 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A046466.P7779831999808372985

/-! ## A046466.P17285106128217174239

`A114637(eq[7, A046460(n+1)])`
-/

namespace A046466.P17285106128217174239
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046460 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114637 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A046466.P17285106128217174239

/-!
# A046467: Numbers k such that the concatenation of numbers from 1 to k is the product of 8 primes (not necessarily distinct).

The programs for A046467, there is no canonical definition to state claims against.
-/

/-! ## A046467.P3243235366149555037

`eq[8, A046460(n+1)]+1`
-/

namespace A046467.P3243235366149555037
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046460 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A046467.P3243235366149555037

/-! ## A046467.P4521795326000911265

`eq[8, A046460(A028310(n))]`
-/

namespace A046467.P4521795326000911265
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046460 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A046467.P4521795326000911265

/-! ## A046467.P2421149099524774653

`A020725(eq[8, A046460(n+1)])`
-/

namespace A046467.P2421149099524774653
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046460 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A046467.P2421149099524774653

/-! ## A046467.P3512772292792676796

`A065475(eq[8, A046460(n+1)])`
-/

namespace A046467.P3512772292792676796
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046460 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A046467.P3512772292792676796

/-! ## A046467.P13475814298751832810

`A114637(eq[8, A046460(n+1)])`
-/

namespace A046467.P13475814298751832810
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046460 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114637 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A046467.P13475814298751832810

/-!
# A046468: Numbers k such that the concatenation of numbers from 1 to k is the product of 9 primes (not necessarily distinct).

The programs for A046468, there is no canonical definition to state claims against.
-/

/-! ## A046468.P3178571916835504227

`eq[9, A046460(n+1)]+1`
-/

namespace A046468.P3178571916835504227
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046460 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A046468.P3178571916835504227

/-! ## A046468.P6850183661428856352

`eq[9, A046460(A028310(n))]`
-/

namespace A046468.P6850183661428856352
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046460 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A046468.P6850183661428856352

/-! ## A046468.P14973053048070846250

`A020725(eq[9, A046460(n+1)])`
-/

namespace A046468.P14973053048070846250
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046460 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A046468.P14973053048070846250

/-! ## A046468.P4466438742907648213

`A065475(eq[9, A046460(n+1)])`
-/

namespace A046468.P4466438742907648213
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046460 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A046468.P4466438742907648213

/-! ## A046468.P15595727875648815565

`A114637(eq[9, A046460(n+1)])`
-/

namespace A046468.P15595727875648815565
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046460 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114637 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A046468.P15595727875648815565

/-!
# A046469: Obtainable by applying +, * and exponentiation to its own digits.

The programs for A046469, there is no canonical definition to state claims against.
-/

/-! ## A046469.P18355760890113668335

`∏{digits}[A145461(n+1), #]`
-/

namespace A046469.P18355760890113668335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145461 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).prod

end

end A046469.P18355760890113668335

/-! ## A046469.P8102633328024518147

`record[A031298(n)^3^C(n, 64)²]`
-/

namespace A046469.P8102633328024518147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031298 n ^ 3 ^ Nat.choose n 64 ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A046469.P8102633328024518147

/-! ## A046469.P11548904561497340500

`A249517(n+1)%record[(n+1)*∑{d}[n+1, #]]`
-/

namespace A046469.P11548904561497340500
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (∑ d ∈ Nat.divisors (f2 n), d)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A249517 (n + 1)) (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℤ)

end

end A046469.P11548904561497340500

/-! ## A046469.P15780190304293895580

`(n-3*floor(n/10))^A045531(2^∑{digits}[n, #%C(n, #)])`
-/

namespace A046469.P15780190304293895580
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 3 * ⌊(n : ℚ) / 10⌋ : ℚ) ^ (A045531 (2 ^ ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x % Nat.choose n x).sum) : ℤ)

end

end A046469.P15780190304293895580

/-! ## A046469.P3070749274311962696

`A029966(record[A099384(n)])`
-/

namespace A046469.P3070749274311962696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099384 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029966 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A046469.P3070749274311962696

/-!
# A046470: Even numbers with an odd number of prime factors (counted with multiplicity).

The programs for A046470, the canonical program `A046470.P11553915186870651729` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A046470 has offset 1).

The definition of A046470 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A046470.P11553915186870651729

`2*A028260(n+1)`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A046470

/-- `2*A028260(n+1)` -/
def P11553915186870651729.Spec : Prop :=
  ∀ n, P11553915186870651729.a n = A046470 (n + 1)

theorem P11553915186870651729.correct : P11553915186870651729.Spec := by
  intro n
  simp only [A046470, Nat.add_sub_cancel]

end A046470

/-! ## A046470.P5969758163512937944

`eq[1, A353556(n+1)]+1`
-/

namespace A046470.P5969758163512937944
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353556 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A046470.P5969758163512937944

namespace A046470

/-- `eq[1, A353556(n+1)]+1` -/
def P5969758163512937944.Spec : Prop :=
  ∀ n, (P5969758163512937944.a n : ℤ) = A046470 (n + 1)

end A046470

/-! ## A046470.P10206276928529942754

`2*(eq[2, gcd(2, A001222(n+1))]+1)`
-/

namespace A046470.P10206276928529942754
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A001222 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A046470.P10206276928529942754

namespace A046470

/-- `2*(eq[2, gcd(2, A001222(n+1))]+1)` -/
def P10206276928529942754.Spec : Prop :=
  ∀ n, (P10206276928529942754.a n : ℤ) = A046470 (n + 1)

end A046470

/-! ## A046470.P16209807945294190891

`eq[1, (a(A001222(n))+1)*and(1, n+1)]` with `a(0)=4`
-/

namespace A046470.P16209807945294190891
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.rec [4] fun n f2 =>
  (f2 (A001222 n).toNat + 1) * Nat.land 1 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A046470.P16209807945294190891

namespace A046470

/-- `eq[1, (a(A001222(n))+1)*and(1, n+1)]` -/
def P16209807945294190891.Spec : Prop :=
  ∀ n, (P16209807945294190891.a n : ℤ) = A046470 (n + 1)

end A046470

/-! ## A046470.P11066042883801789098

`record[2*A028260(A328399(n))]`
-/

namespace A046470.P11066042883801789098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028260 (A328399 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A046470.P11066042883801789098

namespace A046470

/-- `record[2*A028260(A328399(n))]` -/
def P11066042883801789098.Spec : Prop :=
  ∀ n, P11066042883801789098.a n = A046470 (n + 1)

end A046470

/-! ## A046470.P12440347320029999339

`2*∪[A046337(n+1), A063745(n+1)]`
-/

namespace A046470.P12440347320029999339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046337 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063745 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A046470.P12440347320029999339

namespace A046470

/-- `2*∪[A046337(n+1), A063745(n+1)]` -/
def P12440347320029999339.Spec : Prop :=
  ∀ n, (P12440347320029999339.a n : ℤ) = A046470 (n + 1)

end A046470

/-! ## A046470.P9594813696682628636

`2*∪[A063745(n+1), A345452(n+1)]`
-/

namespace A046470.P9594813696682628636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063745 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345452 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A046470.P9594813696682628636

namespace A046470

/-- `2*∪[A063745(n+1), A345452(n+1)]` -/
def P9594813696682628636.Spec : Prop :=
  ∀ n, (P9594813696682628636.a n : ℤ) = A046470 (n + 1)

end A046470

/-! ## A046470.P678219723007439462

`2*∪[A279456(n+1), A279458(n+1)]`
-/

namespace A046470.P678219723007439462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279456 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279458 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A046470.P678219723007439462

namespace A046470

/-- `2*∪[A279456(n+1), A279458(n+1)]` -/
def P678219723007439462.Spec : Prop :=
  ∀ n, (P678219723007439462.a n : ℤ) = A046470 (n + 1)

end A046470

/-! ## A046470.P10273428490923942444

`2*∪[A320891(n+1), A320911(n+1)]`
-/

namespace A046470.P10273428490923942444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320891 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320911 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A046470.P10273428490923942444

namespace A046470

/-- `2*∪[A320891(n+1), A320911(n+1)]` -/
def P10273428490923942444.Spec : Prop :=
  ∀ n, (P10273428490923942444.a n : ℤ) = A046470 (n + 1)

end A046470

/-! ## A046470.P2255358552133416825

`2*(lt[1, A319308(A001222(n+1)+2)]+1)`
-/

namespace A046470.P2255358552133416825
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319308 (A001222 (n + 1) + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A046470.P2255358552133416825

namespace A046470

/-- `2*(lt[1, A319308(A001222(n+1)+2)]+1)` -/
def P2255358552133416825.Spec : Prop :=
  ∀ n, (P2255358552133416825.a n : ℤ) = A046470 (n + 1)

end A046470

/-! ## A046470.P12807144044633711109

`A028260(n+1)+record[A028260(A328399(n))]`
-/

namespace A046470.P12807144044633711109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028260 (A328399 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028260 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A046470.P12807144044633711109

namespace A046470

/-- `A028260(n+1)+record[A028260(A328399(n))]` -/
def P12807144044633711109.Spec : Prop :=
  ∀ n, P12807144044633711109.a n = A046470 (n + 1)

end A046470

/-! ## A046470.P8301678020254007831

`A028260(A000027(n+1))+A028260(n+1)`
-/

namespace A046470.P8301678020254007831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028260 (A000027 (n + 1)).toNat + A028260 (n + 1)

end

end A046470.P8301678020254007831

namespace A046470

/-- `A028260(A000027(n+1))+A028260(n+1)` -/
def P8301678020254007831.Spec : Prop :=
  ∀ n, P8301678020254007831.a n = A046470 (n + 1)

end A046470

/-! ## A046470.P15528343360868264803

`record[2*A061019(n+1)]`
-/

namespace A046470.P15528343360868264803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A061019 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A046470.P15528343360868264803

namespace A046470

/-- `record[2*A061019(n+1)]` -/
def P15528343360868264803.Spec : Prop :=
  ∀ n, P15528343360868264803.a n = A046470 (n + 1)

end A046470

/-! ## A046470.P15908037144583805547

`2*∩[A233182(n+1), A347450(n+1)]`
-/

namespace A046470.P15908037144583805547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233182 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347450 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046470.P15908037144583805547

namespace A046470

/-- `2*∩[A233182(n+1), A347450(n+1)]` -/
def P15908037144583805547.Spec : Prop :=
  ∀ n, (P15908037144583805547.a n : ℤ) = A046470 (n + 1)

end A046470

/-! ## A046470.P7461837982835802014

`filter[A139270(n+1), A066829(#)]`
-/

namespace A046470.P7461837982835802014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139270 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066829 (f1 j).toNat = 1) n)

end

end A046470.P7461837982835802014

namespace A046470

/-- `filter[A139270(n+1), A066829(#)]` -/
def P7461837982835802014.Spec : Prop :=
  ∀ n, P7461837982835802014.a n = A046470 (n + 1)

end A046470

/-! ## A046470.P11675184744063207921

`filter[A139270(n+1), A353556(#)]`
-/

namespace A046470.P11675184744063207921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139270 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353556 (f1 j).toNat = 1) n)

end

end A046470.P11675184744063207921

namespace A046470

/-- `filter[A139270(n+1), A353556(#)]` -/
def P11675184744063207921.Spec : Prop :=
  ∀ n, P11675184744063207921.a n = A046470 (n + 1)

end A046470

/-! ## A046470.P6395076284439243933

`filter[A139270(n+1), A359770(#)]`
-/

namespace A046470.P6395076284439243933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139270 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359770 (f1 j).toNat = 1) n)

end

end A046470.P6395076284439243933

namespace A046470

/-- `filter[A139270(n+1), A359770(#)]` -/
def P6395076284439243933.Spec : Prop :=
  ∀ n, P6395076284439243933.a n = A046470 (n + 1)

end A046470

/-! ## A046470.P12916663459897650045

`filter[A176100(n+2), A066829(#)]`
-/

namespace A046470.P12916663459897650045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176100 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066829 (f1 j).toNat = 1) n)

end

end A046470.P12916663459897650045

namespace A046470

/-- `filter[A176100(n+2), A066829(#)]` -/
def P12916663459897650045.Spec : Prop :=
  ∀ n, P12916663459897650045.a n = A046470 (n + 1)

end A046470

/-! ## A046470.P7344866559656472418

`filter[A176100(n+2), A353556(#)]`
-/

namespace A046470.P7344866559656472418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176100 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353556 (f1 j).toNat = 1) n)

end

end A046470.P7344866559656472418

namespace A046470

/-- `filter[A176100(n+2), A353556(#)]` -/
def P7344866559656472418.Spec : Prop :=
  ∀ n, P7344866559656472418.a n = A046470 (n + 1)

end A046470

/-! ## A046470.P13632059332288445597

`filter[A176100(n+2), A359770(#)]`
-/

namespace A046470.P13632059332288445597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176100 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359770 (f1 j).toNat = 1) n)

end

end A046470.P13632059332288445597

namespace A046470

/-- `filter[A176100(n+2), A359770(#)]` -/
def P13632059332288445597.Spec : Prop :=
  ∀ n, P13632059332288445597.a n = A046470 (n + 1)

end A046470

/-!
# A046471: Number of numbers k>1 such that k equals the sum of digits in k^n.

The programs for A046471, there is no canonical definition to state claims against.
-/

/-! ## A046471.P6888622134776220740

`A046019(n+1)-1`
-/

namespace A046471.P6888622134776220740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046019 (n + 1) - 1

end

end A046471.P6888622134776220740

/-! ## A046471.P11729389671359376876

`Δ[∑[A046019(n)]-n]`
-/

namespace A046471.P11729389671359376876
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046019 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A046471.P11729389671359376876

/-! ## A046471.P17428038632063944513

`A023443(A046019(n+1))`
-/

namespace A046471.P17428038632063944513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A046019 (n + 1)).toNat

end

end A046471.P17428038632063944513

/-! ## A046471.P4554743319480395697

`A057918(A046019(n+1)²)`
-/

namespace A046471.P4554743319480395697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057918 (A046019 (n + 1) ^ 2).toNat

end

end A046471.P4554743319480395697

/-! ## A046471.P8781216580543161414

`A057918(A046019(n+1)^2)`
-/

namespace A046471.P8781216580543161414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057918 (A046019 (n + 1) ^ 2).toNat

end

end A046471.P8781216580543161414

/-! ## A046471.P6994671251059681725

`A062157(A054785(n+1))+A046019(n+1)`
-/

namespace A046471.P6994671251059681725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 (A054785 (n + 1)).toNat + A046019 (n + 1)

end

end A046471.P6994671251059681725

/-! ## A046471.P13668321936871157341

`A166698(A066065(n+1))+A046019(n+1)`
-/

namespace A046471.P13668321936871157341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166698 (A066065 (n + 1)).toNat + A046019 (n + 1)

end

end A046471.P13668321936871157341

/-! ## A046471.P2309415636272940867

`A166698(A066074(n+1))+A046019(n+1)`
-/

namespace A046471.P2309415636272940867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166698 (A066074 (n + 1)).toNat + A046019 (n + 1)

end

end A046471.P2309415636272940867

/-! ## A046471.P16700606458147631070

`A114006(A114009(n+1))+A046019(n+1)`
-/

namespace A046471.P16700606458147631070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114006 (A114009 (n + 1)).toNat + A046019 (n + 1)

end

end A046471.P16700606458147631070

/-!
# A046472: Primes that are palindromic in bases 2 and 10.

The programs for A046472, there is no canonical definition to state claims against.
-/

/-! ## A046472.P17391740625719116763

`A007632(A349893(n)+2)`
-/

namespace A046472.P17391740625719116763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007632 (A349893 n + 2).toNat

end

end A046472.P17391740625719116763

/-!
# A046473: Primes that are palindromic in bases 3 and 10.

The programs for A046473, there is no canonical definition to state claims against.
-/

/-! ## A046473.P16800711769675393332

`∩[A002385(n+1), A029971(n+1)]`
-/

namespace A046473.P16800711769675393332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002385 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029971 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046473.P16800711769675393332

/-!
# A046474: Primes that are palindromic in bases 4 and 10.

The programs for A046474, there is no canonical definition to state claims against.
-/

/-! ## A046474.P13558784965355387008

`∩[A002385(n+1), A014192(n+1)]`
-/

namespace A046474.P13558784965355387008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002385 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014192 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046474.P13558784965355387008

/-! ## A046474.P8984459180094710209

`∩[A002113(n+1), A029972(n+1)]`
-/

namespace A046474.P8984459180094710209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029972 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046474.P8984459180094710209

/-!
# A046475: Primes that are palindromic in bases 6 and 10.

The programs for A046475, there is no canonical definition to state claims against.
-/

/-! ## A046475.P9576459257688606226

`∩[A002385(n+1), A029974(n+1)]`
-/

namespace A046475.P9576459257688606226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002385 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029974 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046475.P9576459257688606226

/-! ## A046475.P4201426836732299699

`∩[A029963(n+1), A050784(A056143(n+1))]`
-/

namespace A046475.P4201426836732299699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029963 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050784 (A056143 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046475.P4201426836732299699

/-!
# A046476: Primes that are palindromic in bases 7 and 10.

The programs for A046476, there is no canonical definition to state claims against.
-/

/-! ## A046476.P16004714461784709437

`∩[A029964(n+1), A030150(n+1)]`
-/

namespace A046476.P16004714461784709437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029964 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030150 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046476.P16004714461784709437

/-!
# A046477: Primes that are palindromic in bases 8 and 10.

The programs for A046477, there is no canonical definition to state claims against.
-/

/-! ## A046477.P3496618662713420682

`∩[A002113(n+1), A029976(n+1)]`
-/

namespace A046477.P3496618662713420682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029976 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046477.P3496618662713420682

/-! ## A046477.P9226779935519202317

`∩[A002385(n+1), A029804(n+1)]`
-/

namespace A046477.P9226779935519202317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002385 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029804 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046477.P9226779935519202317

/-! ## A046477.P3507008028789722918

`∩[A002385(n+1), A029976(n+1)]`
-/

namespace A046477.P3507008028789722918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002385 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029976 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046477.P3507008028789722918

/-! ## A046477.P1060523005480557688

`∩[A029804(n+1), A029976(n+1)]`
-/

namespace A046477.P1060523005480557688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029804 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029976 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046477.P1060523005480557688

/-! ## A046477.P15443496868380345628

`∩[A029976(n+1), A062687(n+1)]`
-/

namespace A046477.P15443496868380345628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029976 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062687 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046477.P15443496868380345628

/-!
# A046478: Primes that are palindromic in bases 9 and 10.

The programs for A046478, there is no canonical definition to state claims against.
-/

/-! ## A046478.P7456274418167415803

`∩[A002113(n+1), A029977(n+1)]`
-/

namespace A046478.P7456274418167415803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029977 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046478.P7456274418167415803

/-! ## A046478.P4878939271889617108

`∩[A002385(n+1), A029955(n+1)]`
-/

namespace A046478.P4878939271889617108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002385 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029955 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046478.P4878939271889617108

/-! ## A046478.P8216162600265366007

`∩[A002385(n+1), A029977(n+1)]`
-/

namespace A046478.P8216162600265366007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002385 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029977 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046478.P8216162600265366007

/-!
# A046479: Primes that are palindromic in bases 10 and 11.

The programs for A046479, there is no canonical definition to state claims against.
-/

/-! ## A046479.P6310530248784217507

`∩[A002385(n+1), A029966(n+1)]`
-/

namespace A046479.P6310530248784217507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002385 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029966 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046479.P6310530248784217507

/-! ## A046479.P6153032536678275939

`∩[A002385(n+1), A029978(n+1)]`
-/

namespace A046479.P6153032536678275939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002385 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029978 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046479.P6153032536678275939

/-! ## A046479.P6623223294273111862

`∩[A029966(n+1), A029978(n+1)]`
-/

namespace A046479.P6623223294273111862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029966 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029978 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046479.P6623223294273111862

/-!
# A046480: Primes that are palindromic in bases 10 and 12.

The programs for A046480, there is no canonical definition to state claims against.
-/

/-! ## A046480.P11598849675184471633

`∩[A002385(n+1), A029967(n+1)]`
-/

namespace A046480.P11598849675184471633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002385 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029967 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046480.P11598849675184471633

/-! ## A046480.P4662472862209625007

`p?[A029967(n+1)]`
-/

namespace A046480.P4662472862209625007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029967 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A046480.P4662472862209625007

/-! ## A046480.P6105302517412916263

`p?[record[A029967(∑[2-n%4]-1)]]`
-/

namespace A046480.P6105302517412916263
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ((n % 4 : ℕ) : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029967 (∑ j ∈ Finset.range (n + 1), f3 j - 1).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A046480.P6105302517412916263

/-!
# A046481: Primes that are palindromic in bases 10 and 13.

The programs for A046481, there is no canonical definition to state claims against.
-/

/-! ## A046481.P10751121239406944588

`p?[A029968(n+1)]`
-/

namespace A046481.P10751121239406944588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029968 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A046481.P10751121239406944588

/-! ## A046481.P8903320370021800660

`p?[record[A029968(∑[2-n%4]-1)]]`
-/

namespace A046481.P8903320370021800660
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ((n % 4 : ℕ) : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029968 (∑ j ∈ Finset.range (n + 1), f3 j - 1).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A046481.P8903320370021800660

/-! ## A046481.P15666203189354609737

`A192138(A293189(n+1))`
-/

namespace A046481.P15666203189354609737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192138 (A293189 (n + 1)).toNat

end

end A046481.P15666203189354609737

/-! ## A046481.P10706604492545870442

`filter[A029980(n+1), A136522(#)]`
-/

namespace A046481.P10706604492545870442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029980 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A136522 (f1 j).toNat = 1) n)

end

end A046481.P10706604492545870442

/-!
# A046482: Primes that are palindromic in bases 10 and 14.

The programs for A046482, there is no canonical definition to state claims against.
-/

/-! ## A046482.P13106354508136164416

`∩[A002385(n+1), A029981(n+1)]`
-/

namespace A046482.P13106354508136164416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002385 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029981 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046482.P13106354508136164416

/-! ## A046482.P8987948596301320450

`∩[A029969(n+1), A029981(A029956(n+2))]`
-/

namespace A046482.P8987948596301320450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029969 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029981 (A029956 (n + 2)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046482.P8987948596301320450

/-!
# A046483: Primes that are palindromic in bases 10 and 15.

The programs for A046483, there is no canonical definition to state claims against.
-/

/-! ## A046483.P8965234716244694067

`p?[A029970(n+1)]`
-/

namespace A046483.P8965234716244694067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029970 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A046483.P8965234716244694067

/-! ## A046483.P10504431793342376855

`A114835(A100793(n))`
-/

namespace A046483.P10504431793342376855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114835 (A100793 n).toNat

end

end A046483.P10504431793342376855

/-!
# A046484: Primes that are palindromic in bases 10 and 16.

The programs for A046484, there is no canonical definition to state claims against.
-/

/-! ## A046484.P4672433556818937948

`∩[A002385(n+1), A029731(n+1)]`
-/

namespace A046484.P4672433556818937948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002385 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029731 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046484.P4672433556818937948

/-! ## A046484.P17012250978009073249

`∩[A002385(n+1), A029732(n+1)]`
-/

namespace A046484.P17012250978009073249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002385 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029732 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046484.P17012250978009073249

/-! ## A046484.P16173209897292420507

`∩[A029731(n+1), A029732(n+1)]`
-/

namespace A046484.P16173209897292420507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029731 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029732 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046484.P16173209897292420507

/-! ## A046484.P7645016821997904764

`∩[A029732(n+1), A062687(n+1)]`
-/

namespace A046484.P7645016821997904764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029732 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062687 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046484.P7645016821997904764

/-! ## A046484.P13983965794424897090

`∩[A029731(n+1), A072299(n+1)]`
-/

namespace A046484.P13983965794424897090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029731 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072299 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046484.P13983965794424897090

/-!
# A046485: Sum of first n palindromic primes A002385.

The programs for A046485, there is no canonical definition to state claims against.
-/

/-! ## A046485.P8892356547077239721

`∑[A002385(n+1)]`
-/

namespace A046485.P8892356547077239721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002385 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A046485.P8892356547077239721

/-! ## A046485.P10585271077823013836

`∑[A037010(n)+a(n-1)]` with `a(0)=2`
-/

namespace A046485.P10585271077823013836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  A037010 n + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A046485.P10585271077823013836

/-! ## A046485.P11292288607311814476

`∑[record[A002385(A305298(n))]]`
-/

namespace A046485.P11292288607311814476
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002385 (A305298 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A046485.P11292288607311814476

/-! ## A046485.P16822551770223377682

`∑[record[A002385(A344180(n))]]`
-/

namespace A046485.P16822551770223377682
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002385 (A344180 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A046485.P16822551770223377682

/-! ## A046485.P15239262081340502362

`∑[∑[A037010(n+1)]+2-A037010(n+1)]`
-/

namespace A046485.P15239262081340502362
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037010 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (2 - A037010 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A046485.P15239262081340502362

/-! ## A046485.P11052869250838556917

`∑[record[A002385(A152271(n))]]`
-/

namespace A046485.P11052869250838556917
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002385 (A152271 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A046485.P11052869250838556917

/-! ## A046485.P6415429004731931943

`∑[record[A002385(1-(A053644(n)-n))]]`
-/

namespace A046485.P6415429004731931943
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002385 (1 - (A053644 n - (n : ℤ))).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A046485.P6415429004731931943

/-! ## A046485.P7984942600464718771

`∑[record[A002385(A126759(n))]]`
-/

namespace A046485.P7984942600464718771
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002385 (A126759 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A046485.P7984942600464718771

/-! ## A046485.P7636287467273606687

`∑[record[A002385(A154958(n))]]`
-/

namespace A046485.P7636287467273606687
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002385 (A154958 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A046485.P7636287467273606687

/-! ## A046485.P10921219908311348077

`∑[record[A002385(A141256(n))]]`
-/

namespace A046485.P10921219908311348077
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002385 (A141256 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A046485.P10921219908311348077

/-! ## A046485.P16012153028308277482

`∑[record[A002385(A065648(n))]]`
-/

namespace A046485.P16012153028308277482
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002385 (A065648 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A046485.P16012153028308277482

/-! ## A046485.P14335002526875254113

`∑[A069217(n+2)]`
-/

namespace A046485.P14335002526875254113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069217 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A046485.P14335002526875254113

/-! ## A046485.P7390429491550088716

`∑[p?[A002113(n+1)]]`
-/

namespace A046485.P7390429491550088716
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A046485.P7390429491550088716

/-! ## A046485.P13198045099630351739

`∑[p?[A033620(n+1)]]`
-/

namespace A046485.P13198045099630351739
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033620 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A046485.P13198045099630351739

/-! ## A046485.P11915827728189353772

`∑[p?[A061917(n+1)]]`
-/

namespace A046485.P11915827728189353772
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061917 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A046485.P11915827728189353772

/-! ## A046485.P9709546197147463458

`∑[p?[A062687(n+1)]]`
-/

namespace A046485.P9709546197147463458
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062687 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A046485.P9709546197147463458

/-! ## A046485.P16340569240892598820

`∑[p?[A071251(n+1)]]`
-/

namespace A046485.P16340569240892598820
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071251 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A046485.P16340569240892598820

/-! ## A046485.P13176392369823625800

`∑[p?[A072299(n+1)]]`
-/

namespace A046485.P13176392369823625800
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072299 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A046485.P13176392369823625800

/-!
# A046486: Numbers k such that the sum of the first k palindromes is a palindrome.

The programs for A046486, there is no canonical definition to state claims against.
-/

/-! ## A046486.P490880138968009974

`∑[A251725(3*n+5)+A126746(n+1)]`
-/

namespace A046486.P490880138968009974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251725 (3 * n + 5) + A126746 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A046486.P490880138968009974

/-! ## A046486.P4486950423740781522

`A291564(A342139(n))+A155810(n)`
-/

namespace A046486.P4486950423740781522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291564 (A342139 n).toNat + A155810 n

end

end A046486.P4486950423740781522

/-!
# A046487: Palindromes k such that the sum of the first palindromes up to k is a palindrome.

The programs for A046487, there is no canonical definition to state claims against.
-/

/-! ## A046487.P9566025664832471422

`A002113(1+A046486(n+1))`
-/

namespace A046487.P9566025664832471422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (1 + A046486 (n + 1)).toNat

end

end A046487.P9566025664832471422

/-! ## A046487.P6601049744893153210

`A002113(∑[A251725(3*n+5)+A126746(n+1)]+1)`
-/

namespace A046487.P6601049744893153210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251725 (3 * n + 5) + A126746 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A046487.P6601049744893153210

/-!
# A046488: Palindromes that are the sum of the first n palindromes for some n.

The programs for A046488, there is no canonical definition to state claims against.
-/

/-! ## A046488.P16867120516903985444

`A046489(A046486(n+1)-1)`
-/

namespace A046488.P16867120516903985444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046489 (A046486 (n + 1) - 1).toNat

end

end A046488.P16867120516903985444

/-! ## A046488.P4869964434179191220

`∩[A002113(n+1), A046489(n)]`
-/

namespace A046488.P4869964434179191220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046489 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046488.P4869964434179191220

/-! ## A046488.P6601098843152554928

`∩[A002113(n+1), ∑[A002113(n+2)]]`
-/

namespace A046488.P6601098843152554928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046488.P6601098843152554928

/-!
# A046489: Sum of the first n palindromes (A002113).

The programs for A046489, there is no canonical definition to state claims against.
-/

/-! ## A046489.P11903562558595790671

`∑[A002113(n+2)]`
-/

namespace A046489.P11903562558595790671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A046489.P11903562558595790671

/-! ## A046489.P16529938419597094863

`∑[∑[A086862(n+1)]]`
-/

namespace A046489.P16529938419597094863
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086862 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A046489.P16529938419597094863

/-! ## A046489.P1487121799837267731

`∑[A076887(n+1)-A076889(n+1)]`
-/

namespace A046489.P1487121799837267731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076887 (n + 1) - A076889 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A046489.P1487121799837267731

/-! ## A046489.P13633648908943413368

`∑[∪[A056524(n+1), A056525(n+1)]]`
-/

namespace A046489.P13633648908943413368
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056524 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056525 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A046489.P13633648908943413368

/-! ## A046489.P4456666076980610932

`∑[sqrt(A014186(n+2))]`
-/

namespace A046489.P4456666076980610932
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A014186 (n + 2) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A046489.P4456666076980610932

/-! ## A046489.P8991767127520473886

`∑[record[A004086(A169824(n+1))]]`
-/

namespace A046489.P8991767127520473886
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (A169824 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A046489.P8991767127520473886

/-! ## A046489.P14769669931954757958

`∑[eq[1, A050782(n)]]`
-/

namespace A046489.P14769669931954757958
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050782 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A046489.P14769669931954757958

/-! ## A046489.P750549385344420118

`∑[record[A047813(n+1)]]`
-/

namespace A046489.P750549385344420118
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047813 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A046489.P750549385344420118

/-! ## A046489.P12063882644677016322

`∑[record[A093030(n+1)]]`
-/

namespace A046489.P12063882644677016322
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093030 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A046489.P12063882644677016322

/-! ## A046489.P17564016298146559300

`∑[record[A262087(n+1)]]`
-/

namespace A046489.P17564016298146559300
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262087 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A046489.P17564016298146559300

/-! ## A046489.P541444843083383262

`∑[record[A262188(n+1)]]`
-/

namespace A046489.P541444843083383262
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262188 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A046489.P541444843083383262

/-! ## A046489.P11133733803889280345

`∑[record[A265525(n+1)]]`
-/

namespace A046489.P11133733803889280345
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265525 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A046489.P11133733803889280345

/-! ## A046489.P9401482222307091646

`∑[record[A331472(n+1)]]`
-/

namespace A046489.P9401482222307091646
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331472 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A046489.P9401482222307091646

/-! ## A046489.P11243453518860973250

`∑[lt[A338827(n)², n]]`
-/

namespace A046489.P11243453518860973250
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338827 n ^ 2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A046489.P11243453518860973250

/-! ## A046489.P16191476925064035367

`∑[lt[n*A241173(n), n]]`
-/

namespace A046489.P16191476925064035367
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A241173 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A046489.P16191476925064035367

/-! ## A046489.P1390154984328405819

`∑[lt[n*A262257(n), n]]`
-/

namespace A046489.P1390154984328405819
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A262257 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A046489.P1390154984328405819

/-!
# A046490: Palindromes expressible as the sum of 2 consecutive palindromic primes.

The programs for A046490, there is no canonical definition to state claims against.
-/

/-! ## A046490.P15045518698558314471

`∩[A002113(n+1), A002385(n+1)+A002385(n+2)]`
-/

namespace A046490.P15045518698558314471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002385 (n + 1) + A002385 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046490.P15045518698558314471

/-!
# A046492: Palindromic primes expressible as the sum of 3 consecutive palindromic primes.

The programs for A046492, there is no canonical definition to state claims against.
-/

/-! ## A046492.P7851060368500941285

`∩[A046491(n+1), A046493(n+1)]`
-/

namespace A046492.P7851060368500941285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046491 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046493 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046492.P7851060368500941285

/-! ## A046492.P17786960408049200891

`A046491(A271917(n+1)+A083137(n+1))`
-/

namespace A046492.P17786960408049200891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046491 (A271917 (n + 1) + A083137 (n + 1)).toNat

end

end A046492.P17786960408049200891

/-!
# A046493: Primes expressible as the sum of 3 consecutive palindromic primes.

The programs for A046493, there is no canonical definition to state claims against.
-/

/-! ## A046493.P1006939091582371645

`p?[A046485(n+4)-A046485(n+1)]`
-/

namespace A046493.P1006939091582371645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046485 (n + 4) - A046485 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A046493.P1006939091582371645

/-!
# A046494: Primes expressible as the sum of 2 consecutive palindromes.

The programs for A046494, there is no canonical definition to state claims against.
-/

/-! ## A046494.P2844452274011724724

`p?[A309325(n+1)]`
-/

namespace A046494.P2844452274011724724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309325 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A046494.P2844452274011724724

/-! ## A046494.P7151670276696231149

`∩[A007500(n+1), A309325(n+1)]`
-/

namespace A046494.P7151670276696231149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007500 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309325 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046494.P7151670276696231149

/-! ## A046494.P9145615016251449687

`p?[A002113(n+1)+A002113(n+2)]`
-/

namespace A046494.P9145615016251449687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1) + A002113 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A046494.P9145615016251449687

/-! ## A046494.P1796055101136262305

`record[A020639(A309325(n+2))]`
-/

namespace A046494.P1796055101136262305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A309325 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A046494.P1796055101136262305

/-! ## A046494.P15555664266538319245

`filter[A309325(n+1), A010051(#)]`
-/

namespace A046494.P15555664266538319245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309325 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A046494.P15555664266538319245

/-!
# A046495: Primes expressible as the sum of 3 consecutive palindromes.

The programs for A046495, there is no canonical definition to state claims against.
-/

/-! ## A046495.P14792664373661566293

`p?[A046489(n+3)-A046489(n)]`
-/

namespace A046495.P14792664373661566293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046489 (n + 3) - A046489 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A046495.P14792664373661566293

/-!
# A046496: Primes expressible as the sum of 4 consecutive palindromes.

The programs for A046496, there is no canonical definition to state claims against.
-/

/-! ## A046496.P15830312367537540576

`p?[A046489(n+4)-A046489(n)]`
-/

namespace A046496.P15830312367537540576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046489 (n + 4) - A046489 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A046496.P15830312367537540576

/-!
# A046497: Palindromes expressible as sum of 2 consecutive palindromes.

The programs for A046497, there is no canonical definition to state claims against.
-/

/-! ## A046497.P3181374348809012989

`∩[A002113(n+1), A002113(n+1)+A002113(n+2)]`
-/

namespace A046497.P3181374348809012989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1) + A002113 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046497.P3181374348809012989

/-! ## A046497.P639684374521679785

`∩[A002113(n+1), A309325(n+1)]`
-/

namespace A046497.P639684374521679785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309325 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046497.P639684374521679785

/-! ## A046497.P9920334432524638738

`∩[A092361(n+1), A309325(n+1)]`
-/

namespace A046497.P9920334432524638738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092361 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309325 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046497.P9920334432524638738

/-! ## A046497.P17398027078971366127

`∩[A110751(n+1), A309325(n+1)]`
-/

namespace A046497.P17398027078971366127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110751 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309325 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046497.P17398027078971366127

/-! ## A046497.P6327688313304022907

`filter[A309325(n+1), A136522(#)]`
-/

namespace A046497.P6327688313304022907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309325 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A136522 (f1 j).toNat = 1) n)

end

end A046497.P6327688313304022907

/-! ## A046497.P1227782465008014747

`record[A047813(A261423(n)+A093030(n+1))]`
-/

namespace A046497.P1227782465008014747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047813 (A261423 n + A093030 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A046497.P1227782465008014747

/-! ## A046497.P536679878151405585

`record[A093030(A261423(n)+A093030(n+1))]`
-/

namespace A046497.P536679878151405585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093030 (A261423 n + A093030 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A046497.P536679878151405585

/-! ## A046497.P147329090872537549

`record[A047813(A002113(n+1)+A002113(n+2))]`
-/

namespace A046497.P147329090872537549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047813 (A002113 (n + 1) + A002113 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A046497.P147329090872537549

/-! ## A046497.P7869025329805371987

`record[A093030(A002113(n+1)+A002113(n+2))]`
-/

namespace A046497.P7869025329805371987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093030 (A002113 (n + 1) + A002113 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A046497.P7869025329805371987

/-! ## A046497.P7781621709095940097

`record[A331472(A002113(n+1)+A002113(n+2))]`
-/

namespace A046497.P7781621709095940097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331472 (A002113 (n + 1) + A002113 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A046497.P7781621709095940097

/-!
# A046498: Palindromes expressible as the sum of 3 consecutive palindromes.

The programs for A046498, there is no canonical definition to state claims against.
-/

/-! ## A046498.P4698981473997445983

`3*A265569(A064497(n+1))`
-/

namespace A046498.P4698981473997445983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A265569 (A064497 (n + 1)).toNat

end

end A046498.P4698981473997445983

